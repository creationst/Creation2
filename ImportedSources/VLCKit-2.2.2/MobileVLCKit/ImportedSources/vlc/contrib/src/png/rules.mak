# PNG
PNG_VERSION := 1.6.16
PNG_URL := $(SF)/libpng/libpng16/$(PNG_VERSION)/libpng-$(PNG_VERSION).tar.xz

PKGS += png
ifeq ($(call need_pkg,"libpng"),)
PKGS_FOUND += png
endif

PNGCONF =
ifdef HAVE_IOS
ifdef HAVE_ARMV7A
PNGCONF = --enable-arm-neon=yes
else
PNGCONF = --enable-arm-neon=no
endif
endif

$(TARBALLS)/libpng-$(PNG_VERSION).tar.xz:
	$(call download,$(PNG_URL))

.sum-png: libpng-$(PNG_VERSION).tar.xz

png: libpng-$(PNG_VERSION).tar.xz .sum-png
	$(UNPACK)
	$(APPLY) $(SRC)/png/winrt.patch
	$(APPLY) $(SRC)/png/bins.patch
	$(APPLY) $(SRC)/png/automake.patch
ifdef HAVE_IOS
	$(APPLY) $(SRC)/png/ios.patch
endif
	$(MOVE)

DEPS_png = zlib $(DEPS_zlib)

.png: png
	$(RECONF)
	cd $< && $(HOSTVARS) ./configure $(HOSTCONF) $(PNGCONF)
	cd $< && $(MAKE) install
	touch $@
