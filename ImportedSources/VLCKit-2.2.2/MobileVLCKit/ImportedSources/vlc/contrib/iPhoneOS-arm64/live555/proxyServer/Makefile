INCLUDES = -I../UsageEnvironment/include -I../groupsock/include -I../liveMedia/include -I../BasicUsageEnvironment/include
# Default library filename suffixes for each library that we link with.  The "config.*" file might redefine these later.
libliveMedia_LIB_SUFFIX = $(LIB_SUFFIX)
libBasicUsageEnvironment_LIB_SUFFIX = $(LIB_SUFFIX)
libUsageEnvironment_LIB_SUFFIX = $(LIB_SUFFIX)
libgroupsock_LIB_SUFFIX = $(LIB_SUFFIX)
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

PROXY_SERVER = live555ProxyServer$(EXE)

PREFIX = /usr/local
ALL = $(PROXY_SERVER)
all: $(ALL)

.$(C).$(OBJ):
	$(C_COMPILER) -c $(C_FLAGS) $<
.$(CPP).$(OBJ):
	$(CPLUSPLUS_COMPILER) -c $(CPLUSPLUS_FLAGS) $<

PROXY_SERVER_OBJS = live555ProxyServer.$(OBJ)

USAGE_ENVIRONMENT_DIR = ../UsageEnvironment
USAGE_ENVIRONMENT_LIB = $(USAGE_ENVIRONMENT_DIR)/libUsageEnvironment.$(libUsageEnvironment_LIB_SUFFIX)
BASIC_USAGE_ENVIRONMENT_DIR = ../BasicUsageEnvironment
BASIC_USAGE_ENVIRONMENT_LIB = $(BASIC_USAGE_ENVIRONMENT_DIR)/libBasicUsageEnvironment.$(libBasicUsageEnvironment_LIB_SUFFIX)
LIVEMEDIA_DIR = ../liveMedia
LIVEMEDIA_LIB = $(LIVEMEDIA_DIR)/libliveMedia.$(libliveMedia_LIB_SUFFIX)
GROUPSOCK_DIR = ../groupsock
GROUPSOCK_LIB = $(GROUPSOCK_DIR)/libgroupsock.$(libgroupsock_LIB_SUFFIX)
LOCAL_LIBS =	$(LIVEMEDIA_LIB) $(GROUPSOCK_LIB) \
		$(BASIC_USAGE_ENVIRONMENT_LIB) $(USAGE_ENVIRONMENT_LIB)
LIBS =			$(LOCAL_LIBS) $(LIBS_FOR_CONSOLE_APPLICATION)

live555ProxyServer$(EXE):	$(PROXY_SERVER_OBJS) $(LOCAL_LIBS)
	$(LINK)$@ $(CONSOLE_LINK_OPTS) $(PROXY_SERVER_OBJS) $(LIBS)

clean:
	-rm -rf *.$(OBJ) $(ALL) core *.core *~ include/*~

install: $(PROXY_SERVER)
	  install -d $(DESTDIR)$(PREFIX)/bin
	  install -m 755 $(PROXY_SERVER) $(DESTDIR)$(PREFIX)/bin

##### Any additional, platform-specific rules come here:
