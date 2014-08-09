
TARGET=MCUIKitHook

VERSION ?= outside
DEBUG ?= yes

CC=clang

CFLAGS=-DVERSION=2

ifeq ($(DEBUG), no)
	CFLAGS += -O3
endif

ifeq ($(DEBUG), yes)
	CFLAGS += -O0
endif

LFLAGS=-fno-objc-arc -F/System/Library/PrivateFrameworks -framework UIKit -framework CoreGraphics -framework QuartzCore -framework Foundation -framework GraphicsServices -dynamiclib -install_name /Library/Frameworks/$(TARGET).framework/$(TARGET)

ISDK=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS7.1.sdk

ARMFLAGS=--sysroot=$(ISDK)

ODIR=objects
RDIR=release

HEADERS=$(wildcard *.h)
INP=$(patsubst %,../../%,$(wildcard *.m))

ARMARCHS=armv7 armv7s arm64

all: directories framework headers dpkg

dpkg:
	@cp control $(RDIR)/dpkg-root/DEBIAN
	@cp -r $(RDIR)/$(TARGET).framework $(RDIR)/dpkg-root/Library/Frameworks
	/usr/local/bin/dpkg-deb -Zgzip -b $(RDIR)/dpkg-root $(RDIR)

directories:
	echo $(ARMARCHS) | xargs -n 1 -I {} mkdir -p $(ODIR)/{}
	@mkdir -p $(RDIR)/$(TARGET).framework/Headers
	@mkdir -p $(RDIR)/dpkg-root/DEBIAN
	@mkdir -p $(RDIR)/dpkg-root/Library/Frameworks

framework: $(ARMARCHS)
	lipo -create $(patsubst %,$(ODIR)/%/$(TARGET).dylib,$^) -o $(RDIR)/$(TARGET).framework/$(TARGET)

headers:
	find . -name "*.h" -maxdepth 1 -exec cp {} $(RDIR)/$(TARGET).framework/Headers \;

$(ARMARCHS):
	cd $(ODIR)/$@ ; $(CC) $(CFLAGS) -arch $@ $(ARMFLAGS) -c $(INP)
	cd $(ODIR)/$@ ; $(CC) $(CFLAGS) -arch $@ $(ARMFLAGS) $(patsubst ../../%.m,%.o,$(INP)) $(LFLAGS) -o $(TARGET).dylib

clean: directories
	@rm -r $(RDIR) $(ODIR)

simulator: all
	sudo cp -a $(RDIR)/$(TARGET).framework "/Library/Frameworks"
