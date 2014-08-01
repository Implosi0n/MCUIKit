
TARGET=MCUIKit

CC=clang
CFLAGS=
LFLAGS=-fno-objc-arc -framework UIKit -framework CoreGraphics -framework QuartzCore -framework Foundation -dynamiclib -install_name /Library/Frameworks/$(TARGET).framework/$(TARGET)

ISDK=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS7.1.sdk
SSDK=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator7.1.sdk

ARMFLAGS=--sysroot=$(ISDK)
SIMFLAGS=--sysroot=$(SSDK) -mios-simulator-version-min=5.1 -DSRCROOT=@\"$(PWD)\"

ODIR=objects
RDIR=release

HEADERS=$(wildcard *.h)
INP=$(patsubst %,../../%,$(wildcard *.m))

ARMARCHS=amrv7 armv7s arm64

all: directories framework headers dpkg

dpkg:
	@cp control $(RDIR)/dpkg-root/DEBIAN
	@cp -r $(RDIR)/$(TARGET).framework $(RDIR)/dpkg-root/Library/Frameworks
	/usr/local/bin/dpkg-deb -Zgzip -b $(RDIR)/dpkg-root $(RDIR)

directories:
	@mkdir -p $(ODIR)/armv7
	@mkdir -p $(ODIR)/armv7s
	@mkdir -p $(ODIR)/arm64
	@mkdir -p $(ODIR)/i386
	@mkdir -p $(ODIR)/x86_64
	@mkdir -p $(RDIR)/$(TARGET).framework/Headers
	@mkdir -p $(RDIR)/include/$(TARGET)
	@mkdir -p $(RDIR)/dpkg-root/DEBIAN
	@mkdir -p $(RDIR)/dpkg-root/Library/Frameworks

framework: armv7 armv7s arm64 i386 x86_64
	lipo -create $(patsubst %,$(ODIR)/%/$(TARGET).dylib,$^) -o $(RDIR)/$(TARGET).framework/$(TARGET)
	@cp $(RDIR)/$(TARGET).framework/$(TARGET) $(RDIR)/lib$(TARGET).dylib

headers:
	/usr/local/opt/coreutils/libexec/gnubin/cp -t $(RDIR)/$(TARGET).framework/Headers $(HEADERS)
	@cp -r $(RDIR)/$(TARGET).framework/Headers/. $(RDIR)/include/$(TARGET)

armv7 armv7s arm64:
	cd $(ODIR)/$@ ; $(CC) $(CFLAGS) -arch $@ $(ARMFLAGS) -c $(INP)
	cd $(ODIR)/$@ ; $(CC) $(CFLAGS) -arch $@ $(ARMFLAGS) $(patsubst ../../%.m,%.o,$(INP)) $(LFLAGS) -o $(TARGET).dylib

i386 x86_64:
	cd $(ODIR)/$@ ; $(CC) $(CFLAGS) -arch $@ $(SIMFLAGS) -c $(INP)
	cd $(ODIR)/$@ ; $(CC) $(CFLAGS) -arch $@ $(SIMFLAGS) $(patsubst ../../%.m,%.o,$(INP)) $(LFLAGS) -o $(TARGET).dylib

clean: directories
	@rm -r $(RDIR) $(ODIR)
