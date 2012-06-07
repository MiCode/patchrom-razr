.class public Lcom/motorola/Camera/CameraGlobalType;
.super Ljava/lang/Object;
.source "CameraGlobalType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/Camera/CameraGlobalType$CamSize;,
        Lcom/motorola/Camera/CameraGlobalType$CAF_STATUS;
    }
.end annotation


# static fields
.field public static final ACQUIRE_CAM_LOCK:I = 0x79

.field public static final ALLTIMES:I = 0x0

.field public static final ANIMATION_PROTECT_DONE:I = 0xe

.field public static AUDIO_ZOOM:Z = false

.field public static final AUTOTIMER_CAPTURE_10SECS:I = 0xa

.field public static final AUTOTIMER_CAPTURE_3SECS:I = 0x3

.field public static final AUTOTIMER_CAPTURE_5SECS:I = 0x5

.field public static final AUTOTIMER_COUNT:I = 0x50

.field public static final AUTOTIMER_COUNTDOWN_IN_PROGRESS:I = 0x8

.field public static final AUTO_FOCUS_CALLBACK_TIMEOUT:I = 0x15

.field public static final AUTO_FOCUS_CALLBACK_TIMEOUT_THRESHOLD:I = 0xfa0

.field public static AUTO_ORIENTATION_ON:Z = false

.field public static final A_ENCODER_AAC:I = 0x2

.field public static final A_ENCODER_AMR_NB:I = 0x1

.field public static final BATTERY_MAXLEVEL:I = 0x64

.field public static final BATTERY_MINLEVEL:I = 0x5

.field public static final BURST_JPEG_ALL_METADATA_STORED_TO_FILE:I = 0x7e

.field public static final BURST_JPEG_ALL_PICTURES_SAVED:I = 0x7d

.field public static final BURST_JPEG_CALLBACK_TIMEOUT_THRESHOLD:I = 0x2710

.field public static final BURST_JPEG_PICTURE_CALLBACK_TIMEOUT:I = 0x6a

.field public static final BURST_TEST_COMPLETED:I = 0x7f

.field public static CAMCORDER_MUTE:Z = false

.field public static final CAMERA_FINISH:I = 0x37

.field public static final CAMERA_GLOBAL:I = 0x1

.field public static final CAMERA_MODE_NUM:I = 0x7

.field public static final CAMERA_PARAMETER_CHANGE:I = 0x33

.field public static final CAM_MODE_AUTOTIMER:I = 0x5

.field public static final CAM_MODE_FACE_TRACK:I = 0x7

.field public static final CAM_MODE_FAST_MOTION:I = 0xb

.field public static final CAM_MODE_HDR:I = 0x4

.field public static final CAM_MODE_MAX:I = 0xe

.field public static final CAM_MODE_MIN:I = 0x0

.field public static final CAM_MODE_MMS:I = 0x9

.field public static final CAM_MODE_MULTI_SHOT:I = 0x2

.field public static final CAM_MODE_NORMAL_VIDEO_MODE:I = 0x8

.field public static final CAM_MODE_PANORAMA:I = 0x1

.field public static final CAM_MODE_SELF_SHOT:I = 0x3

.field public static final CAM_MODE_SINGLE_SHOT:I = 0x0

.field public static final CAM_MODE_SLOW_MOTION:I = 0xc

.field public static final CAM_MODE_TIME_LAPSE:I = 0xd

.field public static final CAM_MODE_VIDEO_WDR:I = 0xa

.field public static final CAM_MODE_WDR:I = 0x6

.field public static final CANNOT_MODIFYBRIGHTNESS:I = 0x83

.field public static final CANNOT_MODIFYMODES:I = 0x77

.field public static final CANNOT_MODIFYSETTINGS:I = 0x76

.field public static final CAPTURE:I = 0x17

.field public static final CAPTURED_FILE_SEARCH:Ljava/lang/String; = null

.field public static final CAPTURED_FILE_SEARCH_EXT:Ljava/lang/String; = null

.field public static CAPTUREKEY_ONSCREEN:Z = false

.field public static final CHANGE_BRIGHTNESS:I = 0x78

.field public static final CIRCLE_ANIM:I = 0x1

.field public static final CLEAR_SCREEN_DELAY:I = 0x3

.field public static final CROP_MSG:I = 0x0

.field public static final CamViewFinderRate:I = 0xf

.field public static final DELETE:I = 0x8

.field public static final DISABLE_SCENES_SET_ROTATION:I = 0x2d

.field public static final DISMISS_BLACKOUT:I = 0x5

.field public static final DISMISS_TOAST:I = 0x8a

.field public static final DISPLAY_VIDEO_POSTVIEW:I = 0x16

.field public static final DLSR_ANIM:I = 0x2

.field public static final DYNAMIC_FOCUS_BRACKET_DOUBLE_TAP_THRESHOLD:I = 0x384

.field public static final DefaultZoomValue:I = 0x0

.field public static final EFFECTS_CANNOT_ADJUST:I = 0x80

.field public static final EFFECT_BLACK_WHITE:I = 0x1

.field public static final EFFECT_MAX:I = 0x4

.field public static final EFFECT_MIN:I = 0x0

.field public static final EFFECT_NEGATIVE:I = 0x2

.field public static final EFFECT_NORMAL:I = 0x0

.field public static final EFFECT_NUM:I = 0x8

.field public static final EFFECT_SEPIA:I = 0x3

.field public static final EFFECT_SOLARIZE:I = 0x4

.field public static final ENABLE_BACK_CAMERA:I = 0x73

.field public static final ENABLE_FAST_MOTION:I = 0x3c

.field public static final ENABLE_FRONT_CAMERA:I = 0x72

.field public static final ENABLE_MMS_MODE:I = 0x3b

.field public static final ENABLE_MULTISHOT:I = 0x28

.field public static final ENABLE_PANORAMA:I = 0x21

.field public static final ENABLE_SCENES_SET_ROTATION:I = 0x2e

.field public static final ENABLE_SINGLE_SHOT:I = 0x23

.field public static final ENABLE_SLOW_MOTION:I = 0x3d

.field public static final ENABLE_SMILE_SHOT:I = 0x22

.field public static final ENGAGE_CONTINUOUS_FOCUS:I = 0x4c

.field public static final ENTER_PANORAMA_MODE:I = 0x24

.field public static final EXIT_CAMERA:I = 0x6

.field public static final FADE_OUT:I = 0x8

.field public static final FADE_OUT_TIMEOUT:I = 0x7d0

.field public static FASTMOTION_REC:Z = false

.field public static final FIRST_TIME_INIT:I = 0x32

.field public static FLASH:Z = false

.field public static final FLASH_AUTO:I = 0x2

.field public static final FLASH_CANNOT_ADJUST_SCENE:I = 0xc

.field public static final FLASH_CANNOT_ADJUST_VIDEO:I = 0x35

.field public static final FLASH_MAX:I = 0x3

.field public static final FLASH_MIN:I = 0x0

.field public static final FLASH_MODE_NUM:I = 0x3

.field public static FLASH_MODE_REDEYE:Z = false

.field public static final FLASH_OFF:I = 0x0

.field public static final FLASH_ON:I = 0x1

.field public static final FLASH_REDEYE:I = 0x3

.field public static final FOCUS:I = 0x41

.field public static final FOCUS_AUTO:I = 0x0

.field public static final FOCUS_INFINITY:I = 0x2

.field public static final FOCUS_MACRO:I = 0x1

.field public static final FOCUS_MODE_AUTO:Ljava/lang/String; = "auto"

.field public static final FOCUS_MODE_CONTINUOUS:Ljava/lang/String; = "continuous"

.field public static final FOCUS_OFF:I = 0x3

.field public static final GALLERY:I = 0x3

.field public static final GEO_TAG_AGREEMENT:I = 0x86

.field public static final HDMI_OWNER_ANDROID:Ljava/lang/String; = "3"

.field public static final HDMI_OWNER_X:Ljava/lang/String; = "1"

.field public static final HIDE_STATUSSET:I = 0xa

.field public static final IDLE:I = 0x1

.field public static IMAGE_STABILIZATION:Z = false

.field public static final INACTIVITY_TIMEOUT:I = 0x30

.field public static INACTIVITY_TIMEOUT_THRESHOLD:I = 0x0

.field public static final INIT_RECORDER:I = 0x34

.field public static final INTENT_MIRROR_MODE_CHANGED:Ljava/lang/String; = "android.mot.intent.action.MIRROR_MODE_CHANGED"

.field public static final INTENT_WEBTOP_CHANGED:Ljava/lang/String; = "android.mot.intent.action.WEBTOP_MODE_CHANGED"

.field public static INTERNAL_STORAGE:I = 0x0

.field public static final JPEG_PICTURE_CALLBACK_TIMEOUT:I = 0x14

.field public static final JPEG_PICTURE_CALLBACK_TIMEOUT_THRESHOLD:I = 0x4e20

.field public static final KEEP:I = 0x1

.field public static final KEYWORD_EFFECT_C:Ljava/lang/String; = "effectindex_c"

.field public static final KEYWORD_EFFECT_V:Ljava/lang/String; = "effectindex_v"

.field public static final KEYWORD_EMPTY:Ljava/lang/String; = "empty"

.field public static final KEYWORD_SCENE_C:Ljava/lang/String; = "sceneindex_c"

.field public static final KEYWORD_SCENE_V:Ljava/lang/String; = "sceneindex_v"

.field public static final KEY_SHUTTER_ANIM:Ljava/lang/String; = "Shutter Animation"

.field public static final KODAK_PERFECT_TOUCH:I = 0x5

.field public static final LAUNCH_SETTINGS:I = 0x75

.field public static LED:Z = false

.field public static final LIGHTMODE_AUTO:I = 0x2

.field public static final LIGHTMODE_MAX:I = 0x2

.field public static final LIGHTMODE_MIN:I = 0x0

.field public static final LIGHTMODE_OFF:I = 0x0

.field public static final LIGHTMODE_ON:I = 0x1

.field public static final LIGHT_MODE_NUM:I = 0x2

.field public static final LOC_FOUND:I = 0x2

.field public static final LOC_FOUND_GETADDRESS:I = 0x4

.field public static final LOC_OUTSERVICE:I = 0x3

.field public static final LOC_PROVIDER_DISABLED:I = 0x0

.field public static final LOC_SEARCHING:I = 0x1

.field public static final MAXVIDEO_DURATION_30:I = 0x1b7740

.field public static final MAXVIDEO_DURATION_60:I = 0x36ee80

.field public static MAX_AES_RES:Ljava/lang/String; = null

.field public static final MAX_SCENE_EFFECT_NUM:I = 0x8

.field public static final MENU_SETTING:I = 0x3

.field public static final MENU_TAGS:I = 0x2

.field public static final MMS_RESOLUTION:Ljava/lang/String; = "MMS"

.field public static MMS_SUPPORT_FLEX:Z = false

.field public static final MMS_VIDEO_CAPTURE_AUDIO_BITRATE:Ljava/lang/Integer; = null

.field public static final MMS_VIDEO_CAPTURE_AUDIO_SAMPLINGRATE:Ljava/lang/Integer; = null

.field public static final MMS_VIDEO_CAPTURE_BITRATE:Ljava/lang/Integer; = null

.field public static MMS_VIDEO_CAPTURE_DURATION:Ljava/lang/Integer; = null

.field public static final MMS_VIDEO_CAPTURE_FRAMERATE:Ljava/lang/Integer; = null

.field public static MMS_VIDEO_CAPTURE_RESOLUTION_HEIGHT:Ljava/lang/Integer; = null

.field public static MMS_VIDEO_CAPTURE_RESOLUTION_WIDTH:Ljava/lang/Integer; = null

.field public static MMS_VIDEO_PAUSE_RESUME:Z = false

.field public static final MSG_DEBUG:I = 0x3e8

.field public static final MSG_SHUTTER_Begin:I = 0x47

.field public static final MSG_SHUTTER_CLOSED:I = 0x46

.field public static MULTISHOT:Z = false

.field public static final MULTISHOT_METADATA_STORAGE_IN_PROGRESS:I = 0x7

.field public static MUTE_AUDIO:Z = false

.field public static final MUTE_AUDIO_MESSAGE:I = 0x87

.field public static final NEEDADDCONTENTVIEW:I = 0x10

.field public static final NO_ANIM:I = 0x0

.field public static NUM_PIC_RES:Ljava/lang/Integer; = null

.field public static final ONLINE_ALBUM_UPLOAD:I = 0x4

.field public static final ON_SCREEN_CAPTURE_DOWN:I = 0x42

.field public static final ON_SCREEN_CAPTURE_UP:I = 0x43

.field public static OPENGL_ON:Z = false

.field public static final ORIENTATION_LANDSCAPE:I = 0x1

.field public static final ORIENTATION_PORTRAIT:I = 0x0

.field public static PANORAMA:Z = false

.field public static final PANORAMA_ANIMATION_END:I = 0x64

.field public static final PANORAMA_DEFAULT_RESOLUTION:Ljava/lang/String; = "2048x1536"

.field public static final PANORAMA_DEFAULT_VF_FRAME_SIZE:Ljava/lang/String; = "640x480"

.field public static final PANORAMA_DIRECTION_DOWN_UP:I = 0x3

.field public static final PANORAMA_DIRECTION_LEFT_RIGHT:I = 0x0

.field public static final PANORAMA_DIRECTION_RIGHT_LEFT:I = 0x1

.field public static final PANORAMA_DIRECTION_UP_DOWN:I = 0x2

.field public static final PANORAMA_ERROR:I = 0x65

.field public static final PANORAMA_NON_SWEEP:Ljava/lang/String; = "non-sweep"

.field public static final PANORAMA_PICTURE_CALLBACK_TIMEOUT_THRESHOLD:I = 0xea60

.field public static final PANORAMA_RESOLUTION_SERVICE_MODE:Ljava/lang/String; = "1280x960"

.field public static final PANORAMA_SWEEP:Ljava/lang/String; = "sweep"

.field public static PANORAMA_TYPE_SWEEP:Z = false

.field public static final PANORAMA_VF_MATCH_TIMEOUT:I = 0x2c

.field public static final PANORAMA_VF_MATCH_TIMEOUT_THRESHOLD:I = 0x493e0

.field public static final PICRES_MULTISHOT:Ljava/lang/String; = "2048x1536"

.field public static final PICRES_SERVS:Ljava/lang/String; = "1280x960"

.field public static final PICRES_SERVS_DATA:Ljava/lang/String; = "QVGA"

.field public static final PICTURE_SCENE_NUM:I = 0x8

.field public static final POST_VIEW_DECODE:I = 0x4a

.field public static final PREVIEW_YUV422I_UYVY:I = 0x2

.field public static final PREVIEW_YUV422I_YUYV:I = 0x1

.field public static final PREVIEW_YUV422SP:I = 0x0

.field public static final PRF_FLEX:Ljava/lang/String; = "com.motorola.Camera_pref_flex"

.field public static final PRF_LOADSETTING_BACK:Ljava/lang/String; = "com.motorola.Camera_pref_loadsetting_back"

.field public static final PRF_SAVE_BACK:Ljava/lang/String; = "com.motorola.Camera_preferences_back"

.field public static final PRF_SAVE_COMMON:Ljava/lang/String; = "com.motorola.Camera_preferences"

.field public static final PRF_SAVE_FRONT:Ljava/lang/String; = "com.motorola.Camera_preferences_front"

.field protected static final QUICK_UPLOAD_INTENT:Ljava/lang/String; = "com.motorola.blur.socialshare.QUICK_UPLOAD"

.field public static final QUIT_PANORAMA_MODE:I = 0x25

.field public static final RECORD_START:I = 0x1a

.field public static final RECORD_STOP:I = 0x1b

.field public static final RELEASE_CAM_LOCK:I = 0x7a

.field public static final RELEASE_RECORDER:I = 0x39

.field public static REMAINING_REC_TIME:Z = false

.field public static final REQUEST_RIGHTSET_LAYOUT:I = 0x2f

.field public static final RESET:I = 0x0

.field public static final RESTART_AFTER_CAPTURE:I = 0x85

.field public static final RESTART_PREVIEW:I = 0x2

.field public static final RESTART_VIDEO_PREVIEW:I = 0x7b

.field public static REVIEW_TIME_NUM_VALUES:Ljava/lang/Integer; = null

.field public static final SCENEMODE_ACTION:I = 0x3

.field public static final SCENEMODE_AUTO:I = 0x0

.field public static final SCENEMODE_AUTO_V:I = 0x0

.field public static final SCENEMODE_CONCERT_VAS:I = 0x2

.field public static final SCENEMODE_EVERYDAY_VAS:I = 0x0

.field public static final SCENEMODE_LANDSCAPE:I = 0x2

.field public static final SCENEMODE_LOWLIGHT:I = 0x7

.field public static final SCENEMODE_MACRO:I = 0x6

.field public static final SCENEMODE_MAX:I = 0x7

.field public static final SCENEMODE_MAX_V:I = 0x1

.field public static final SCENEMODE_MAX_VAS:I = 0x4

.field public static final SCENEMODE_MIN:I = 0x0

.field public static final SCENEMODE_MIN_V:I = 0x0

.field public static final SCENEMODE_MIN_VAS:I = 0x0

.field public static final SCENEMODE_NARRATIVE_VAS:I = 0x3

.field public static final SCENEMODE_NIGHT_PORTRAIT:I = 0x4

.field public static final SCENEMODE_NIGHT_V:I = 0x1

.field public static final SCENEMODE_OUTDOORS_VAS:I = 0x1

.field public static final SCENEMODE_PORTRAIT:I = 0x1

.field public static final SCENEMODE_SUBJECT_VAS:I = 0x4

.field public static final SCENEMODE_SUNSET:I = 0x5

.field public static final SCENE_CANNOT_ADJUST:I = 0x2b

.field public static SCREEN_DELAY:Ljava/lang/Integer; = null

.field public static final SDM_DISABLE_CAMERA:I = 0x3e

.field public static final SECURELY_LOCKED_GALLERY_ACCESS_ERROR:I = 0x45

.field public static final SETTINGS:I = 0x2

.field public static SETTING_FACE_DETECTION:I = 0x0

.field public static SETTING_GEO_TAG:I = 0x0

.field public static SETTING_SHUTTER_ANIMATION:I = 0x0

.field public static SETTING_SHUTTER_TONE:I = 0x0

.field public static SETTING_STORAGE_LOCATION:I = 0x0

.field public static SETTING_VIDEO_RESOLUTION:I = 0x0

.field public static SETTING_VIDEO_STABILIZATION:I = 0x0

.field public static SETTING_WIDE_SCREEN:I = 0x0

.field public static final SET_AS:I = 0x7

.field public static final SET_SHOW:I = 0x9

.field public static final SHARE:I = 0x6

.field public static SHOW_AUDIO_ZOOM_SETTING:Z = false

.field public static final SHOW_CAMERA_FLASH_DIALOG:I = 0x1e

.field public static final SHOW_CAMERA_LIGHT_DIALOG:I = 0x1d

.field public static final SHOW_CAMERA_MODE_DIALOG:I = 0x1c

.field public static SHOW_FACE_TRACK_SETTING:Z = false

.field public static SHOW_ISO_SETTING:Z = false

.field public static SHOW_MUTE_AUDIO_SETTING:Z = false

.field public static final SHOW_PANORAMA_MODE_DIALOG:I = 0x2a

.field public static final SHOW_PROCESSING:I = 0x7c

.field public static final SHOW_PROGRESS:I = 0x81

.field public static final SHOW_TOAST_AND_EXIT_CAMERA:I = 0x38

.field public static final SHOW_VIDEO_ERROR_TOAST:I = 0x70

.field public static final SHOW_VIDEO_MODE_DIALOG:I = 0x1c

.field public static SHUTTER_ANIM_MENU_ENABLED:Z = false

.field public static SHUTTER_TONE_ENABLED:Z = false

.field public static SHUTTER_TONE_MENU_ENABLED:Z = false

.field public static final SINGLE_CAMERA:Ljava/lang/String; = "0"

.field public static SLOWMOTION_REC:Z = false

.field public static final SNAPSHOT_COMPLETED:I = 0x3

.field public static final SNAPSHOT_IN_PROGRESS:I = 0x2

.field public static final STABILIZATION_OFF:I = 0x0

.field public static final STABILIZATION_ON:I = 0x1

.field public static final STATE_SWITCH_PROTECT_TIME:I = 0x3e8

.field public static final STILL_MODE:I = 0x0

.field public static final STITCH_MODE_AUTO_DETECT:Ljava/lang/String; = "auto-detection"

.field public static final STITCH_MODE_DU:Ljava/lang/String; = "down-up"

.field public static final STITCH_MODE_LR:Ljava/lang/String; = "left-right"

.field public static final STITCH_MODE_RL:Ljava/lang/String; = "right-left"

.field public static final STITCH_MODE_UD:Ljava/lang/String; = "up-down"

.field public static final STOP_SMOOTH_ZOOM:I = 0x6e

.field public static final SWITCH_MODE:I = 0x74

.field public static final TAG:I = 0x1

.field public static final THUMBNAIL_ANIMATION_FINISH:I = 0x4b

.field public static final THUMB_WIDTH:I = 0xa0

.field public static final TO_CAMCORDER:I = 0x1f

.field public static final TO_CAMERA:I = 0x49

.field public static final TO_GALLERY:I = 0x4

.field public static final TO_TAGSETTING:I = 0x7

.field public static final TRAY_ICON_PAD_BOTTOM:I = 0x8

.field public static final TRAY_ICON_PAD_HEIGHT:I = 0x3

.field public static final TRAY_ICON_PAD_LEFT:I = 0x7

.field public static final TRAY_ICON_PAD_RIGHT:I = 0x7

.field public static final TRAY_ICON_PAD_TOP:I = 0x6

.field public static final TRAY_ICON_PAD_WIDTH:I = 0x3

.field public static final UNMUTE_AUDIO_MESSAGE:I = 0x88

.field public static final UPDATE_EFFECTS:I = 0x71

.field public static final UPDATE_FLASH:I = 0x6d

.field public static final UPDATE_FOCUSVIEW:I = 0xd

.field public static final UPDATE_LOCATION:I = 0xf

.field public static final UPDATE_LOCATION_SETTING:I = 0x44

.field public static final UPDATE_PANORAMA_SHOTS_INDICATOR:I = 0x26

.field public static final UPDATE_RECORD_TIME:I = 0x29

.field public static final UPDATE_REMAIN_TIME:I = 0x36

.field public static final UPDATE_REMAIN_VALUE:I = 0x82

.field public static final UPDATE_SCENES_EFFECTS:I = 0x3a

.field public static final UPDATE_THUMBNAIL:I = 0x48

.field public static final UPDATE_ZOOM_SETTING:I = 0x12

.field public static final VIDEO_AUDIOSCENE_NUM:I = 0x5

.field public static VIDEO_CAM_DELTA:Z = false

.field public static VIDEO_CAPTURE_FRAMERATE:Ljava/lang/Integer; = null

.field public static final VIDEO_CAPTURE_SLOW_MOTION_FRAMERATE:Ljava/lang/Integer; = null

.field public static final VIDEO_FOCUS_FADE_OUT:I = 0x84

.field public static final VIDEO_FOCUS_FADE_OUT_TIMER:I = 0x3e8

.field public static final VIDEO_IN_CAPTURE:I = 0x4

.field public static final VIDEO_MODE:I = 0x1

.field public static final VIDEO_POST_CAPTURE:I = 0x6

.field public static final VIDEO_SCENE_NUM:I = 0x2

.field public static final VIDEO_SNAPSHOT:I = 0x89

.field public static final VIDEO_STOPPING_CAPTURE:I = 0x5

.field public static final VIDRES_MMS:Ljava/lang/String; = "320x240"

.field public static final VIDRES_MMS_VAL:Ljava/lang/String; = "QVGA"

.field public static final VIDRES_SLOW:Ljava/lang/String; = "320x240"

.field public static final VOLUME_KEY_CAPTURE:I = 0x1

.field public static final VOLUME_KEY_ZOOM:I = 0x0

.field public static final V_ENCODER_H263:I = 0x1

.field public static final V_ENCODER_H264:I = 0x2

.field public static final V_ENCODER_MPEG4_SP:I = 0x3

.field public static final WIND_ICON_TIMER:I = 0x3f

.field public static ZOOMKEY_ONSCREEN:Z = false

.field public static final ZOOM_CHANGED:I = 0xb

.field public static final ZOOM_CONTINUOUS:Ljava/lang/String; = "zoom-continuous"

.field public static final ZOOM_IMMEDIATE:Ljava/lang/String; = "zoom-immediate"

.field public static final ZOOM_IN:I = 0x18

.field public static ZOOM_MAX_VALUE:I = 0x0

.field public static final ZOOM_MIN_VALUE:I = 0x0

.field public static final ZOOM_OUT:I = 0x19

.field public static final ZOOM_PROGRESS_BAR_MAX_VALUE:I = 0x64

.field public static final ZOOM_PROGRESS_BAR_MIN_VALUE:I = 0x0

.field public static final ZOOM_SPEED:Ljava/lang/String; = "99"

.field public static ZOOM_STEP:I = 0x0

.field public static final ZOOM_STOP:Ljava/lang/String; = "stop"

.field public static final ZOOM_TO:I = 0x40

.field public static camHardKeyPresent:Z

.field public static camPremium:Z

.field public static cameraDebug:Z

.field public static correctVolumeKeyPlacement:Z

.field public static count:I

.field public static effectListC:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static eightMPWp:Z

.field public static eightMPp:Z

.field public static exposureValues:[Ljava/lang/CharSequence;

.field public static fiveMPWp:Z

.field public static fiveMPp:Z

.field public static flashSetting:[Ljava/lang/String;

.field public static focusSetting:[Ljava/lang/String;

.field public static fourMPp:Z

.field public static isoValues:[Ljava/lang/CharSequence;

.field private static mAudioEncoder:I

.field public static mLastIsService:Z

.field public static mReturnToPostView:Z

.field public static mShouldReadBackParams:Z

.field public static mShouldReadFrontParams:Z

.field public static mUrgentExit:Z

.field private static mVideoEncoder:I

.field public static modeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static nineMPp:Z

.field public static reviewTimeEntries:[Ljava/lang/CharSequence;

.field public static reviewTimeValues:[Ljava/lang/CharSequence;

.field public static sceneListC:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static sceneListV:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static sceneSetting:[Ljava/lang/String;

.field public static sceneSettingV:[Ljava/lang/String;

.field public static sevenMPp:Z

.field public static sixMPp:Z

.field public static smoothZoomSupported:Z

.field public static tenMPWp:Z

.field public static tenMPp:Z

.field public static threeMPp:Z

.field public static torchOn:Z

.field public static videoModeSetting:[Ljava/lang/String;

.field public static windDetected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 37
    const-string v0, "user"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    .line 38
    sput-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->OPENGL_ON:Z

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " LIKE \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/dcim/Camera/%\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/Camera/CameraGlobalType;->CAPTURED_FILE_SEARCH:Ljava/lang/String;

    .line 45
    invoke-static {}, Lcom/motorola/Camera/CameraGlobalType;->getCapturedFileSerachExt()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/Camera/CameraGlobalType;->CAPTURED_FILE_SEARCH_EXT:Ljava/lang/String;

    .line 48
    sput-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->mShouldReadFrontParams:Z

    .line 49
    sput-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->mShouldReadBackParams:Z

    .line 67
    sput-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->mReturnToPostView:Z

    .line 68
    sput-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->mLastIsService:Z

    .line 69
    sput-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->camPremium:Z

    .line 70
    sput-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->correctVolumeKeyPlacement:Z

    .line 71
    sput-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->camHardKeyPresent:Z

    .line 74
    sput-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->threeMPp:Z

    .line 75
    sput-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->fourMPp:Z

    .line 76
    sput-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->fiveMPp:Z

    .line 77
    sput-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->fiveMPWp:Z

    .line 78
    sput-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->sixMPp:Z

    .line 79
    sput-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->sevenMPp:Z

    .line 80
    sput-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->eightMPp:Z

    .line 81
    sput-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->eightMPWp:Z

    .line 82
    sput-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->nineMPp:Z

    .line 83
    sput-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->tenMPp:Z

    .line 84
    sput-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->tenMPWp:Z

    .line 271
    sput-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->REMAINING_REC_TIME:Z

    .line 272
    sput-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->AUTO_ORIENTATION_ON:Z

    .line 289
    const v0, 0x493e0

    sput v0, Lcom/motorola/Camera/CameraGlobalType;->INACTIVITY_TIMEOUT_THRESHOLD:I

    .line 308
    sput v2, Lcom/motorola/Camera/CameraGlobalType;->count:I

    .line 311
    sput-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->mUrgentExit:Z

    .line 330
    sput v7, Lcom/motorola/Camera/CameraGlobalType;->ZOOM_MAX_VALUE:I

    .line 331
    sput v1, Lcom/motorola/Camera/CameraGlobalType;->ZOOM_STEP:I

    .line 336
    sput-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->smoothZoomSupported:Z

    .line 345
    sput-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->torchOn:Z

    .line 448
    sput-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->PANORAMA_TYPE_SWEEP:Z

    .line 466
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/motorola/Camera/CameraGlobalType;->sceneListC:Ljava/util/List;

    .line 467
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/motorola/Camera/CameraGlobalType;->sceneListV:Ljava/util/List;

    .line 468
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/motorola/Camera/CameraGlobalType;->effectListC:Ljava/util/List;

    .line 469
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/motorola/Camera/CameraGlobalType;->modeList:Ljava/util/List;

    .line 488
    sput v6, Lcom/motorola/Camera/CameraGlobalType;->mVideoEncoder:I

    .line 489
    sput v5, Lcom/motorola/Camera/CameraGlobalType;->mAudioEncoder:I

    .line 513
    const-string v0, "720x480"

    sput-object v0, Lcom/motorola/Camera/CameraGlobalType;->MAX_AES_RES:Ljava/lang/String;

    .line 517
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "auto"

    aput-object v3, v0, v2

    const-string v3, "portrait"

    aput-object v3, v0, v1

    const-string v3, "landscape"

    aput-object v3, v0, v5

    const-string v3, "action"

    aput-object v3, v0, v6

    const-string v3, "night-portrait"

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const-string v4, "sunset"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "macro"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "audio-everyday"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "audio-outdoors"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string v4, "audio-concert"

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const-string v4, "audio-narrative"

    aput-object v4, v0, v3

    const/16 v3, 0xb

    const-string v4, "audio-subject"

    aput-object v4, v0, v3

    sput-object v0, Lcom/motorola/Camera/CameraGlobalType;->sceneSetting:[Ljava/lang/String;

    .line 532
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "auto"

    aput-object v3, v0, v2

    const-string v3, "night-portrait"

    aput-object v3, v0, v1

    sput-object v0, Lcom/motorola/Camera/CameraGlobalType;->sceneSettingV:[Ljava/lang/String;

    .line 536
    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "off"

    aput-object v3, v0, v2

    const-string v3, "on"

    aput-object v3, v0, v1

    const-string v3, "auto"

    aput-object v3, v0, v5

    sput-object v0, Lcom/motorola/Camera/CameraGlobalType;->flashSetting:[Ljava/lang/String;

    .line 540
    new-array v0, v7, [Ljava/lang/String;

    const-string v3, "auto"

    aput-object v3, v0, v2

    const-string v3, "macro"

    aput-object v3, v0, v1

    const-string v3, "infinity"

    aput-object v3, v0, v5

    const-string v3, "off"

    aput-object v3, v0, v6

    sput-object v0, Lcom/motorola/Camera/CameraGlobalType;->focusSetting:[Ljava/lang/String;

    .line 547
    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "auto"

    aput-object v3, v0, v2

    const-string v3, "fast"

    aput-object v3, v0, v1

    const-string v3, "slow"

    aput-object v3, v0, v5

    sput-object v0, Lcom/motorola/Camera/CameraGlobalType;->videoModeSetting:[Ljava/lang/String;

    .line 553
    const/16 v0, 0x14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/motorola/Camera/CameraGlobalType;->VIDEO_CAPTURE_FRAMERATE:Ljava/lang/Integer;

    .line 555
    const/16 v0, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/motorola/Camera/CameraGlobalType;->VIDEO_CAPTURE_SLOW_MOTION_FRAMERATE:Ljava/lang/Integer;

    .line 556
    const/16 v0, 0xf

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/motorola/Camera/CameraGlobalType;->MMS_VIDEO_CAPTURE_FRAMERATE:Ljava/lang/Integer;

    .line 557
    const v0, 0x1f400

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/motorola/Camera/CameraGlobalType;->MMS_VIDEO_CAPTURE_BITRATE:Ljava/lang/Integer;

    .line 558
    const/16 v0, 0x140

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/motorola/Camera/CameraGlobalType;->MMS_VIDEO_CAPTURE_RESOLUTION_WIDTH:Ljava/lang/Integer;

    .line 559
    const/16 v0, 0xf0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/motorola/Camera/CameraGlobalType;->MMS_VIDEO_CAPTURE_RESOLUTION_HEIGHT:Ljava/lang/Integer;

    .line 560
    const/16 v0, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/motorola/Camera/CameraGlobalType;->MMS_VIDEO_CAPTURE_DURATION:Ljava/lang/Integer;

    .line 561
    const/16 v0, 0x2fa8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/motorola/Camera/CameraGlobalType;->MMS_VIDEO_CAPTURE_AUDIO_BITRATE:Ljava/lang/Integer;

    .line 562
    const/16 v0, 0x1f40

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/motorola/Camera/CameraGlobalType;->MMS_VIDEO_CAPTURE_AUDIO_SAMPLINGRATE:Ljava/lang/Integer;

    .line 563
    sput-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->MMS_VIDEO_PAUSE_RESUME:Z

    .line 565
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/motorola/Camera/CameraGlobalType;->SCREEN_DELAY:Ljava/lang/Integer;

    .line 566
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/motorola/Camera/CameraGlobalType;->NUM_PIC_RES:Ljava/lang/Integer;

    .line 567
    sput-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->SHOW_AUDIO_ZOOM_SETTING:Z

    .line 568
    sput-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->AUDIO_ZOOM:Z

    .line 569
    sput-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->FLASH_MODE_REDEYE:Z

    .line 570
    sput-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->SHOW_MUTE_AUDIO_SETTING:Z

    .line 571
    sput-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->MULTISHOT:Z

    .line 572
    sput-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->PANORAMA:Z

    .line 573
    sput-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->FASTMOTION_REC:Z

    .line 574
    sput-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->SLOWMOTION_REC:Z

    .line 575
    sput-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->MMS_SUPPORT_FLEX:Z

    .line 576
    sput-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->VIDEO_CAM_DELTA:Z

    .line 578
    sput-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->ZOOMKEY_ONSCREEN:Z

    .line 579
    sput-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->CAPTUREKEY_ONSCREEN:Z

    .line 580
    sput-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->SHOW_FACE_TRACK_SETTING:Z

    .line 582
    sput-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->SHOW_ISO_SETTING:Z

    .line 583
    sput-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->FLASH:Z

    .line 584
    sput-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->LED:Z

    .line 585
    sput-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->IMAGE_STABILIZATION:Z

    .line 586
    sput-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->MUTE_AUDIO:Z

    .line 587
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/motorola/Camera/CameraGlobalType;->REVIEW_TIME_NUM_VALUES:Ljava/lang/Integer;

    .line 588
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/Camera/CameraGlobalType;->reviewTimeEntries:[Ljava/lang/CharSequence;

    .line 589
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/Camera/CameraGlobalType;->reviewTimeValues:[Ljava/lang/CharSequence;

    .line 591
    sput-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->SHUTTER_TONE_ENABLED:Z

    .line 592
    sput-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->SHUTTER_TONE_MENU_ENABLED:Z

    .line 596
    sput v1, Lcom/motorola/Camera/CameraGlobalType;->SETTING_WIDE_SCREEN:I

    .line 597
    sput v5, Lcom/motorola/Camera/CameraGlobalType;->SETTING_VIDEO_RESOLUTION:I

    .line 598
    sput v6, Lcom/motorola/Camera/CameraGlobalType;->SETTING_FACE_DETECTION:I

    .line 599
    sput v7, Lcom/motorola/Camera/CameraGlobalType;->SETTING_GEO_TAG:I

    .line 600
    const/4 v0, 0x5

    sput v0, Lcom/motorola/Camera/CameraGlobalType;->SETTING_SHUTTER_TONE:I

    .line 601
    const/4 v0, 0x6

    sput v0, Lcom/motorola/Camera/CameraGlobalType;->SETTING_SHUTTER_ANIMATION:I

    .line 602
    const/4 v0, 0x7

    sput v0, Lcom/motorola/Camera/CameraGlobalType;->SETTING_STORAGE_LOCATION:I

    .line 603
    const/16 v0, 0x8

    sput v0, Lcom/motorola/Camera/CameraGlobalType;->SETTING_VIDEO_STABILIZATION:I

    .line 605
    sput v2, Lcom/motorola/Camera/CameraGlobalType;->INTERNAL_STORAGE:I

    .line 610
    sput-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->SHUTTER_ANIM_MENU_ENABLED:Z

    .line 611
    sput-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->CAMCORDER_MUTE:Z

    return-void

    :cond_0
    move v0, v2

    .line 37
    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAudioEncoder()I
    .locals 1

    .prologue
    .line 628
    sget v0, Lcom/motorola/Camera/CameraGlobalType;->mAudioEncoder:I

    return v0
.end method

.method public static getCapturedFileSerachExt()Ljava/lang/String;
    .locals 3

    .prologue
    .line 615
    const/4 v0, 0x0

    .line 617
    .local v0, capturedFileSerachExt:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/android/storage/MotoEnvironment;->getExternalAltStorageDirectory()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 618
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " LIKE \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/motorola/android/storage/MotoEnvironment;->getExternalAltStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/dcim/Camera/%\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 621
    :cond_0
    return-object v0
.end method

.method public static getVideoEncoder()I
    .locals 1

    .prologue
    .line 625
    sget v0, Lcom/motorola/Camera/CameraGlobalType;->mVideoEncoder:I

    return v0
.end method

.method public static setAudioEncoder(I)V
    .locals 0
    .parameter "audioEncoder"

    .prologue
    .line 634
    sput p0, Lcom/motorola/Camera/CameraGlobalType;->mAudioEncoder:I

    .line 635
    return-void
.end method

.method public static setVideoEncoder(I)V
    .locals 0
    .parameter "videoEncoder"

    .prologue
    .line 631
    sput p0, Lcom/motorola/Camera/CameraGlobalType;->mVideoEncoder:I

    .line 632
    return-void
.end method
