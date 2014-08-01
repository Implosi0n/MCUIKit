
CC=clang
CFLAGS=
LFLAGS=-fno-objc-arc -framework UIKit -framework CoreGraphics -framework QuartzCore -framework Foundation -dynamiclib

ISDK=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS7.1.sdk
SSDK=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator7.1.sdk

ARMFLAGS=--sysroot=$(ISDK)
SIMFLAGS=--sysroot=$(SSDK) -mios-simulator-version-min=5.1 -DSRCROOT=@\"$(PWD)\"

ODIR=objects
RDIR=release

HEADERS=MCUIButton.h MCUIKeyboardViewController.h MCUIKit.h MCUILabel.h MCUIPanorama.h MCUISegment.h MCUISegmentedControl.h MCUISlider.h MCUISliderThumbView.h MCUISwitch.h MCUITextField.h UIImage+MCUI.h
INP=$(patsubst %,../../%,$(wildcard *.m))

TARGET=MCUIKit

ARMARCHS=amrv7 armv7s arm64

all: directories framework headers

directories:
	@mkdir -p $(ODIR)/armv7
	@mkdir -p $(ODIR)/armv7s
	@mkdir -p $(ODIR)/arm64
	@mkdir -p $(ODIR)/i386
	@mkdir -p $(ODIR)/x86_64
	@mkdir -p $(RDIR)/$(TARGET).framework/Headers
	@mkdir -p $(RDIR)/include

framework: armv7 armv7s arm64 i386 x86_64
	lipo -create $(patsubst %,$(ODIR)/%/$(TARGET).dylib,$^) -o $(RDIR)/$(TARGET).framework/$(TARGET)
	cp $(RDIR)/$(TARGET).framework/$(TARGET) $(RDIR)/lib$(TARGET).dylib

headers:
	/usr/local/opt/coreutils/libexec/gnubin/cp -t $(RDIR)/$(TARGET).framework/Headers $(HEADERS)
	cp -r $(RDIR)/$(TARGET).framework/Headers/. $(RDIR)/include

armv7 armv7s arm64:
	cd $(ODIR)/$@ ; $(CC) $(CFLAGS) -arch $@ $(ARMFLAGS) -c $(INP)
	cd $(ODIR)/$@ ; $(CC) $(CFLAGS) -arch $@ $(ARMFLAGS) $(patsubst ../../%.m,%.o,$(INP)) $(LFLAGS) -o $(TARGET).dylib

i386 x86_64:
	cd $(ODIR)/$@ ; $(CC) $(CFLAGS) -arch $@ $(SIMFLAGS) -c $(INP)
	cd $(ODIR)/$@ ; $(CC) $(CFLAGS) -arch $@ $(SIMFLAGS) $(patsubst ../../%.m,%.o,$(INP)) $(LFLAGS) -o $(TARGET).dylib

clean: directories
	@rm -r $(RDIR) $(ODIR)
