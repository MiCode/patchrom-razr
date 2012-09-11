#
# Makefile for onex
#

# The original zip file, MUST be specified by each product
local-zip-file     := europe_4.0.4.zip

# The output zip file of MIUI rom, the default is update.zip if not specified
# local-out-zip-file :=

# All apps from original ZIP, but has smali files chanded
local-modified-apps := BlurCamera MediaProvider

local-modified-jars := 

local-miui-modified-apps := Mms MiuiHome Settings Phone ThemeManager
# All apks from MIUI
local-miui-removed-apps  := LatinIME MediaProvider

# All apps need to be reserved from original ZIP file
local-phone-apps := BlurCamera FaceLock LatinIME LatinImeDictionaryPack ApplicationsProvider \
	CertInstaller ChargeOnlyMode DeepSleepService DrmProvider KeyChain LiveWallpapers \
	LiveWallpapersPicker MotorolaSettingsProvider MusicFX oma1motService OMAPPowerMeter \
	OMAProvisioning OneTimeInitializer usbcamera UserDictionaryProvider VisualizationWallpapers \
	VoiceSearch DefaultContainerService ExtDispService MediaProvider SmartActions ContextEngine \
	DockComm DockService MotoDockHelperService SmartCarDock SmartDock SmartActionFW DLNA SetupProvider \
	blur-services DlnaSystemService

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-zip-misc
local-after-zip:= local-test

local-rewrite-skia-lib:= false

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

# To define any local-target
local-zip-misc:
	@echo Update build.prop
	cp other/build.prop $(ZIP_DIR)/system/build.prop
	cp other/default.prop $(ZIP_DIR)/system/default.prop

	@echo update bootanimation
	rm $(ZIP_DIR)/system/bin/bootanimation
	cp other/bootanimation $(ZIP_DIR)/system/bin/bootanimation

	@echo add system config
	cp other/system_etc/* $(ZIP_DIR)/system/etc/
	cp other/system_xbin/* $(ZIP_DIR)/system/xbin/
	#cp other/system_lib/* $(ZIP_DIR)/system/lib/

	@echo add system app
	cp other/system_app/* $(ZIP_DIR)/system/app/

	@echo delete redundance files
	rm -rf $(ZIP_DIR)/system/media/MotoDemo
	rm -rf $(ZIP_DIR)/system/multiconfig
	rm -rf $(ZIP_DIR)/system/tts
	rm -rf $(ZIP_DIR)/system/vendor/app
	rm -r $(ZIP_DIR)/system/bin/su

local-test:
#	rm -f $(local-out-zip-file)
#	cp .build/$(local-out-zip-file) 
	@echo push $(OUT_ZIP) to phone sdcard
	adb shell mount sdcard
	adb shell rm -f /sdcard/update.zip
	adb push out/update.zip /sdcard/update.zip

#enter recovery
#echo 1 > /data/.recovery_mode ; sync ; reboot ;

