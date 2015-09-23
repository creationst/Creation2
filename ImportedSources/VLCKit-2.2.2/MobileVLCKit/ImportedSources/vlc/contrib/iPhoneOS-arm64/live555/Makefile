##### Change the following for your environment:
COMPILE_OPTS =		$(INCLUDES) -I. $(EXTRA_LDFLAGS) -DBSD=1 -O -DSOCKLEN_T=socklen_t -DHAVE_SOCKADDR_LEN=1 -DTIME_BASE=int -arch arm64 -miphoneos-version-min=7.0 -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS8.4.sdk -arch arm64 -O3 -g -miphoneos-version-min=7.0 -arch arm64 -miphoneos-version-min=7.0 -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS8.4.sdk -arch arm64 -O3 -g -miphoneos-version-min=7.0 -I/Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/contrib/arm-apple-darwin11-arm64/include -g -I/Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/contrib/arm-apple-darwin11-arm64/include -fexceptions
C =			c
C_COMPILER =		xcrun clang
C_FLAGS =		$(COMPILE_OPTS)
CPP =			cpp
CPLUSPLUS_COMPILER =	xcrun clang++ -arch arm64 -Wl,-ios_version_min,7.0 -L/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS8.4.sdk/usr/lib -arch arm64 -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS8.4.sdk -Wl,-ios_version_min,7.0 -arch arm64 -Wl,-ios_version_min,7.0 -L/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS8.4.sdk/usr/lib -arch arm64 -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS8.4.sdk -Wl,-ios_version_min,7.0 -L/Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/contrib/arm-apple-darwin11-arm64/lib -L/Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/contrib/arm-apple-darwin11-arm64/lib
CPLUSPLUS_FLAGS =	$(COMPILE_OPTS) -Wall
OBJ =			o
LINK =			xcrun clang++ -arch arm64 -Wl,-ios_version_min,7.0 -L/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS8.4.sdk/usr/lib -arch arm64 -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS8.4.sdk -Wl,-ios_version_min,7.0 -arch arm64 -Wl,-ios_version_min,7.0 -L/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS8.4.sdk/usr/lib -arch arm64 -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS8.4.sdk -Wl,-ios_version_min,7.0 -L/Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/contrib/arm-apple-darwin11-arm64/lib -L/Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/contrib/arm-apple-darwin11-arm64/lib -o 
LINK_OPTS =		-L.
CONSOLE_LINK_OPTS =	$(LINK_OPTS)
LIBRARY_LINK =		ar cr 
LIBRARY_LINK_OPTS =	
LIB_SUFFIX =			a
LIBS_FOR_CONSOLE_APPLICATION =
LIBS_FOR_GUI_APPLICATION =
EXE =
##### End of variables to change

LIVEMEDIA_DIR = liveMedia
GROUPSOCK_DIR = groupsock
USAGE_ENVIRONMENT_DIR = UsageEnvironment
BASIC_USAGE_ENVIRONMENT_DIR = BasicUsageEnvironment

TESTPROGS_DIR = testProgs

MEDIA_SERVER_DIR = mediaServer

PROXY_SERVER_DIR = proxyServer

all:
	cd $(LIVEMEDIA_DIR) ; $(MAKE)
	cd $(GROUPSOCK_DIR) ; $(MAKE)
	cd $(USAGE_ENVIRONMENT_DIR) ; $(MAKE)
	cd $(BASIC_USAGE_ENVIRONMENT_DIR) ; $(MAKE)
	cd $(TESTPROGS_DIR) ; $(MAKE)
	cd $(MEDIA_SERVER_DIR) ; $(MAKE)
	cd $(PROXY_SERVER_DIR) ; $(MAKE)

install:
	cd $(LIVEMEDIA_DIR) ; $(MAKE) install
	cd $(GROUPSOCK_DIR) ; $(MAKE) install
	cd $(USAGE_ENVIRONMENT_DIR) ; $(MAKE) install
	cd $(BASIC_USAGE_ENVIRONMENT_DIR) ; $(MAKE) install
	cd $(TESTPROGS_DIR) ; $(MAKE) install
	cd $(MEDIA_SERVER_DIR) ; $(MAKE) install
	cd $(PROXY_SERVER_DIR) ; $(MAKE) install

clean:
	cd $(LIVEMEDIA_DIR) ; $(MAKE) clean
	cd $(GROUPSOCK_DIR) ; $(MAKE) clean
	cd $(USAGE_ENVIRONMENT_DIR) ; $(MAKE) clean
	cd $(BASIC_USAGE_ENVIRONMENT_DIR) ; $(MAKE) clean
	cd $(TESTPROGS_DIR) ; $(MAKE) clean
	cd $(MEDIA_SERVER_DIR) ; $(MAKE) clean
	cd $(PROXY_SERVER_DIR) ; $(MAKE) clean

distclean: clean
	-rm -f $(LIVEMEDIA_DIR)/Makefile $(GROUPSOCK_DIR)/Makefile \
	  $(USAGE_ENVIRONMENT_DIR)/Makefile $(BASIC_USAGE_ENVIRONMENT_DIR)/Makefile \
	  $(TESTPROGS_DIR)/Makefile $(MEDIA_SERVER_DIR)/Makefile \
	  $(PROXY_SERVER_DIR)/Makefile Makefile
