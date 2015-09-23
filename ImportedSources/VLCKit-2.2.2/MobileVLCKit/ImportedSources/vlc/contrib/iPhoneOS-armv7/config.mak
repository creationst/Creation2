# This file was automatically generated.
# Any change will be overwritten if ../bootstrap is run again.
BUILD := x86_64-apple-darwin11
HOST := arm-apple-darwin11
PKGS_DISABLE :=  sdl SDL_image iconv kate caca gettext mpcdec upnp gme tremor sidplay2 samplerate goom vncserver orc schroedinger libmpeg2 chromaprint mad fontconfig gpg-error lua
PKGS_ENABLE :=  zvbi vorbis fribidi libxml2 freetype2 ass vpx taglib
PREFIX := /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/contrib/arm-apple-darwin11-armv7
BUILD_NETWORK := 1
ARCH := armv7
IOS_SDK=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS8.4.sdk
HAVE_IOS := 1
HAVE_DARWIN_OS := 1
HAVE_BSD := 1
HAVE_NEON := 1
HAVE_ARMV7A := 1
EXTRA_CFLAGS += -arch armv7 -mcpu=cortex-a8 -miphoneos-version-min=6.1
EXTRA_LDFLAGS += -arch armv7 -Wl,-ios_version_min,6.1
