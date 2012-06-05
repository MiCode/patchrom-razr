.class public final Lcom/motorola/android/provider/MotorolaSettings;
.super Ljava/lang/Object;
.source "MotorolaSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/provider/MotorolaSettings$NameValueCache;,
        Lcom/motorola/android/provider/MotorolaSettings$NameValueTable;,
        Lcom/motorola/android/provider/MotorolaSettings$SettingNotFoundException;
    }
.end annotation


# static fields
.field public static final AGPS_FEATURE_ENABLED:Ljava/lang/String; = "agps_feature_enabled"

.field public static final AGPS_GPSONE_USER_PLANE:Ljava/lang/String; = "agps_gpsone_user_plane"

.field public static final ASSISTED_DIALING_STATE:Ljava/lang/String; = "assisted_dialing_state"

.field public static final AUDIO_ROUTING:Ljava/lang/String; = "audio_routing"

.field public static final AUTHORITY:Ljava/lang/String; = "com.motorola.android.providers.settings"

.field public static final AUTO_DISABLE_TRACKPAD:Ljava/lang/String; = "lapdock_disable_trackpad"

.field public static final AUTO_SYSTEM_CHECK_ENABLED:Ljava/lang/String; = "auto_system_check"

.field public static final BACK_GROUND_DATA_BACKUP_BY_DATAMANAGER:Ljava/lang/String; = "back_ground_data_backup_by_datamanager"

.field public static final BT_MFB_ENABLED_WHEN_LOCKED:Ljava/lang/String; = "bluetooth_mfb_enabled_when_locked"

.field public static final CALLING_33860_ENABLED:Ljava/lang/String; = "calling_33860_enabled"

.field public static final CALLING_GLOBAL_CONTROLS_ENABLE:Ljava/lang/String; = "calling_global_controls_enable"

.field public static final CALLING_GSM_AD_ENABLED:Ljava/lang/String; = "calling_gsm_ad_enabled"

.field public static final CALL_CONNECT_TONE:Ljava/lang/String; = "call_connect_tone"

.field public static final CONFIG_FEMTO_ICON_DISPLAY:Ljava/lang/String; = "config_femto_icon_display"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CUR_COUNTRY_AREA_CODE:Ljava/lang/String; = "cur_country_area_code"

.field public static final CUR_COUNTRY_CODE:Ljava/lang/String; = "cur_country_code"

.field public static final CUR_COUNTRY_IDD:Ljava/lang/String; = "cur_country_idd"

.field public static final CUR_COUNTRY_MCC:Ljava/lang/String; = "cur_country_mcc"

.field public static final CUR_COUNTRY_MDN_LEN:Ljava/lang/String; = "cur_country_mdn_len"

.field public static final CUR_COUNTRY_NAME:Ljava/lang/String; = "cur_country_name"

.field public static final CUR_COUNTRY_NDD:Ljava/lang/String; = "cur_country_ndd"

.field public static final CUR_COUNTRY_UPDATED_BY_USER:Ljava/lang/String; = "cur_country_updated_by_user"

.field public static final DATASWITCH_FEATURE_ENABLED:Ljava/lang/String; = "dataswitch_feature_enabled"

.field public static final DATASWITCH_SYNC_CONNECT_VALUE:Ljava/lang/String; = "dataswitch_sync_connect_value"

.field public static final DATA_OFFLOAD_ENABLED:Ljava/lang/String; = "data_offload_enabled"

.field public static final DATA_ROAMING_ACCESS_FEATURE_ENABLED:Ljava/lang/String; = "data_roaming_access_feature_enabled"

.field private static final DEBUG:Z = false

.field public static final DEMO_MODE_ENABLED:Ljava/lang/String; = "demo_mode_enabled"

.field public static final DEMO_MODE_VIDEO_DOWNLOAD_URI:Ljava/lang/String; = "demo_video_download_uri"

.field public static final DEMO_MODE_VIDEO_PATH_IN_SDCARD:Ljava/lang/String; = "demo_video_path_in_sdcard"

.field public static final DEMO_MODE_VIDEO_PATH_IN_SYSTEM:Ljava/lang/String; = "demo_video_path_in_system"

.field public static final DIALUP_MODEM_RESTRICTION:Ljava/lang/String; = "dialup_modem_restriction"

.field public static final DOUBLE_TAP:Ljava/lang/String; = "double_tap"

.field public static final DOWNLOAD_WALLPAPER:Ljava/lang/String; = "enable_download_wallpaper"

.field public static final ENABLE_MMS_WHEN_DATA_DISABLED:Ljava/lang/String; = "enable_mms_when_data_disabled"

.field public static final ENABLE_TEXT_MSG_REPLY:Ljava/lang/String; = "qsms_enable_text_message_reply"

.field public static final ENTITLEMENT_CHECK:Ljava/lang/String; = "entitlement_check"

.field public static final ERI_ALERT_SOUNDS:Ljava/lang/String; = "eri_alert_sounds"

.field public static final ERI_TEXT_BANNER:Ljava/lang/String; = "eri_text_banner"

.field public static final ETHERNET_HTTP_PROXY:Ljava/lang/String; = "ethernet_http_proxy"

.field public static final ETHERNET_HTTP_PROXY_EXCEPTION:Ljava/lang/String; = "ethernet_http_proxy_exception"

.field public static final ETHERNET_HTTP_PROXY_PORT:Ljava/lang/String; = "ethernet_http_proxy_port"

.field public static final ETHERNET_HTTP_PROXY_TOGGLE:Ljava/lang/String; = "ethernet_http_proxy_toggle"

.field public static final ETHERNET_STATIC_DNS1:Ljava/lang/String; = "ethernet_static_dns1"

.field public static final ETHERNET_STATIC_DNS2:Ljava/lang/String; = "ethernet_static_dns2"

.field public static final ETHERNET_STATIC_GATEWAY:Ljava/lang/String; = "ethernet_static_gateway"

.field public static final ETHERNET_STATIC_IP:Ljava/lang/String; = "ethernet_static_ip"

.field public static final ETHERNET_STATIC_NETMASK:Ljava/lang/String; = "ethernet_static_netmask"

.field public static final ETHERNET_USE_STATIC_IP:Ljava/lang/String; = "ethernet_use_static_ip"

.field public static final FID_33463_ENABLED:Ljava/lang/String; = "fid_33463_enabled"

.field public static final FID_34387_MULTIMODE:Ljava/lang/String; = "fid_34387_multimode"

.field public static final FLAG_ALLOW_ACCESS_ONLY_FOR_THIS_TRIP:Ljava/lang/String; = "flag_allow_access_only_for_this_trip"

.field public static final FULL_CHARGE_NOTIFICATION_ENABLE:Ljava/lang/String; = "full_charge_notification_enable"

.field public static final GEO_TAGGING_FEATURE_ENABLED:Ljava/lang/String; = "geo_tagging_feature_enabled"

.field public static final GPSONE_XTRA_DOWNLOADABLE:Ljava/lang/String; = "gpsone_xtra_downloadable"

.field public static final HDMI_OVERSCAN:Ljava/lang/String; = "hdmi_overscan"

.field public static final HUXVMM_FILE_HANDLE_SETTING:Ljava/lang/String; = "huxvmm_file_handle"

.field public static final ICE_CONTACTS_ENABLED:Ljava/lang/String; = "ice_contacts_enabled"

.field public static final IS_TALKBACK_ON:Ljava/lang/String; = "is_talkback_on"

.field public static final KEYBOARD_BACKLIGHT_CONTROL_MODE:Ljava/lang/String; = "kbd_backlight_control_mode"

.field public static final KEYBOARD_BACKLIGHT_TIMEOUT:Ljava/lang/String; = "kbd_backlight_timeout"

.field public static final KEYBOARD_BRIGHTNESS:Ljava/lang/String; = "kbd_backlight_brightness"

.field public static final KEYBOARD_LAYOUT_EXTERNAL:Ljava/lang/String; = "keyboard_layout_external"

.field public static final LAPDOCK_CHARGING_MODE:Ljava/lang/String; = "lapdock_charging_mode"

.field public static final LOCK_FINGERPRINT:Ljava/lang/String; = "lock_fingerprint"

.field public static final LOCK_PIN_CURRENT_FAILED_ATTEMPTS:Ljava/lang/String; = "lock_pin_current_failed_attempts"

.field public static final LOCK_TIMER:Ljava/lang/String; = "lock_timer"

.field public static final LOCK_TYPE:Ljava/lang/String; = "lock_type"

.field public static final MCC_WHITE_LIST:Ljava/lang/String; = "roaming_mcc_table"

.field public static final MOBILE_DATA_DISABLE:Ljava/lang/String; = "mobile_data_disable"

.field public static final NAM_CDMA_SETTINGS_ENABLED:Ljava/lang/String; = "nam_cdma_settings_enabled"

.field public static final NETWORK_LOST_TONE:Ljava/lang/String; = "network_lost_tone"

.field public static final NETWORK_SETTING_ON_BOOT:Ljava/lang/String; = "network_setting_on_boot"

.field public static final NEXT_ALARM_UTC:Ljava/lang/String; = "next_alarm_utc"

.field public static final PLMN_BLACK_LIST:Ljava/lang/String; = "black_list_roaming_plmn_table"

.field public static final PLMN_FEATURE_ENABLE:Ljava/lang/String; = "roaming_plmn_between_carriers_enabled"

.field public static final POINTER_SPEED_LEVEL:Ljava/lang/String; = "pointer_speed_level"

.field public static final POWER_SAVER_ENABLED:Ljava/lang/String; = "power_saver_enabled"

.field public static final REF_COUNTRY_AREA_CODE:Ljava/lang/String; = "ref_country_area_code"

.field public static final REF_COUNTRY_CODE:Ljava/lang/String; = "ref_country_code"

.field public static final REF_COUNTRY_IDD:Ljava/lang/String; = "ref_country_idd"

.field public static final REF_COUNTRY_MCC:Ljava/lang/String; = "ref_country_mcc"

.field public static final REF_COUNTRY_MDN_LEN:Ljava/lang/String; = "ref_country_mdn_len"

.field public static final REF_COUNTRY_NAME:Ljava/lang/String; = "ref_country_name"

.field public static final REF_COUNTRY_NDD:Ljava/lang/String; = "ref_country_ndd"

.field public static final RESTRICTION_LOCK:Ljava/lang/String; = "restriction_lock"

.field public static final ROAMING_PLMN_TABLE:Ljava/lang/String; = "roaming_plmn_table"

.field public static final SCREEN_LOCK_ENABLED:Ljava/lang/String; = "screen_lock"

.field public static final SERVICE_RESET:Ljava/lang/String; = "service_reset"

.field public static final SETTING_CHECK_CFU_POWERON:Ljava/lang/String; = "check_cfu_poweron"

.field public static final SETTING_FTR_33859_ENABLED:Ljava/lang/String; = "sim_33859_isenabled"

.field public static final SETTING_FTR_BUA_ENABLED:Ljava/lang/String; = "bua_isenabled"

.field public static final SETTING_FTR_CALL_WAITING_VOLUME:Ljava/lang/String; = "call_waiting_volume"

.field public static final SETTING_FTR_DUN_NAT_ENABLED:Ljava/lang/String; = "dun_nat_enabled"

.field public static final SETTING_FTR_ETHERNET_ENABLED:Ljava/lang/String; = "ethernet_enabled"

.field public static final SETTING_FTR_ICE_ENABLED:Ljava/lang/String; = "ice_isenabled"

.field public static final SETTING_FTR_MULTIPLEPDP_ENABLED:Ljava/lang/String; = "multiple_pdp_isenabled"

.field public static final SETTING_FTR_RINGER_SWITCH_ENABLE:Ljava/lang/String; = "ftr_ringer_switch_enable"

.field public static final SETTING_FTR_SMARTDIALER_LANGUAGE_CODE:Ljava/lang/String; = "smartdialer_language_code"

.field public static final SETTING_FTR_TETHER_REVERSE_NAT:Ljava/lang/String; = "tether_reverse_nat_enabled"

.field public static final SHARE_PIC_LOC_ENABLED:Ljava/lang/String; = "share_pic_loc_enabled"

.field public static final SHOWN_GEO_TRANSIENT_MSG:Ljava/lang/String; = "shown_geo_transient_msg"

.field public static final SOFTWARE_UPDATE_ALERT_ENABLED:Ljava/lang/String; = "software_update_alert"

.field public static final SYS_PROP_SETTING_VERSION:Ljava/lang/String; = "sys.mot_settings_secure_version"

.field private static final TAG:Ljava/lang/String; = "MotrolaSettings"

.field public static final TAP_TO_SELECT:Ljava/lang/String; = "tap_to_select"

.field public static final TTS_CALLER_ID_READOUT:Ljava/lang/String; = "tts_caller_id_readout"

.field public static final USB_ENTITLEMENT_CHECK:Ljava/lang/String; = "usb_entitlement_check"

.field public static final USER_NEED_ACCEPT_MOTO_AGREEMENT:Ljava/lang/String; = "user_need_accept_moto_agreement"

.field public static final VIEWSERVER_IN_SECUREBUILD_ENABLED:Ljava/lang/String; = "viewserver_in_securebuild_enabled"

.field public static final VM_NUMBER_CDMA:Ljava/lang/String; = "vm_number_cdma"

.field public static final VM_VVM_ROAMING_SELECTION:Ljava/lang/String; = "vm_vvm_roaming_selection"

.field public static final VM_VVM_SELECTION:Ljava/lang/String; = "vm_vvm_selection"

.field public static final WIFI_ADHOC_CHANNEL_NUMBER:Ljava/lang/String; = "wifi_adhoc_channel_number"

.field public static final WIFI_AP_DHCP_END_ADDR:Ljava/lang/String; = "wifi_ap_dhcp_end_addr"

.field public static final WIFI_AP_DHCP_START_ADDR:Ljava/lang/String; = "wifi_ap_dhcp_start_addr"

.field public static final WIFI_AP_DNS1:Ljava/lang/String; = "wifi_ap_dns1"

.field public static final WIFI_AP_DNS2:Ljava/lang/String; = "wifi_ap_dns2"

.field public static final WIFI_AP_FREQUENCY:Ljava/lang/String; = "wifi_ap_frequency"

.field public static final WIFI_AP_GATEWAY:Ljava/lang/String; = "wifi_ap_gateway"

.field public static final WIFI_AP_HIDDEN:Ljava/lang/String; = "wifi_ap_hidden"

.field public static final WIFI_AP_MAX_SCB:Ljava/lang/String; = "wifi_ap_max_scb"

.field public static final WIFI_AP_NETMASK:Ljava/lang/String; = "wifi_ap_netmask"

.field public static final WIFI_DISABLED_BY_ECM:Ljava/lang/String; = "wifi_disabled_by_ecm"

.field public static final WIFI_HOTSPOT_AUTOCONNECT_ON:Ljava/lang/String; = "wifi_hotspot_autoconnect"

.field public static final WIFI_HOTSPOT_NOTIFY_ON:Ljava/lang/String; = "wifi_hotspot_notify"

.field public static final WIFI_NETWORKS_SECURE_AVAILABLE_NOTIFICATION_ON:Ljava/lang/String; = "wifi_networks_secure_available_notification_on"

.field public static final WIFI_OFFLOAD_FLAG:Ljava/lang/String; = "wifi_offload_flag"

.field public static final WIFI_PROXY:Ljava/lang/String; = "wifi_proxy"

.field public static final WIFI_PROXY_EXCEPTIONS:Ljava/lang/String; = "wifi_proxy_exceptions"

.field public static final WIFI_USE_AUTO_IP:Ljava/lang/String; = "wifi_use_auto_ip"

.field private static volatile mNameValueCache:Lcom/motorola/android/provider/MotorolaSettings$NameValueCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/android/provider/MotorolaSettings;->mNameValueCache:Lcom/motorola/android/provider/MotorolaSettings$NameValueCache;

    .line 390
    const-string v0, "content://com.motorola.android.providers.settings/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/provider/MotorolaSettings;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 94
    return-void
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F
    .locals 3
    .parameter "cr"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/provider/MotorolaSettings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 360
    invoke-static {p0, p1}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 362
    .local v1, v:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    return v2

    .line 363
    :catch_0
    move-exception v0

    .line 364
    .local v0, e:Ljava/lang/NullPointerException;
    new-instance v2, Lcom/motorola/android/provider/MotorolaSettings$SettingNotFoundException;

    invoke-direct {v2, p1}, Lcom/motorola/android/provider/MotorolaSettings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 365
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 366
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/motorola/android/provider/MotorolaSettings$SettingNotFoundException;

    invoke-direct {v2, p1}, Lcom/motorola/android/provider/MotorolaSettings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F
    .locals 2
    .parameter "cr"
    .parameter "name"
    .parameter "def"

    .prologue
    .line 332
    invoke-static {p0, p1}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, v:Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 336
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 335
    .restart local p2
    :catch_0
    move-exception v0

    .line 336
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 3
    .parameter "cr"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/provider/MotorolaSettings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 223
    invoke-static {p0, p1}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, v:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/motorola/android/provider/MotorolaSettings$SettingNotFoundException;

    invoke-direct {v2, p1}, Lcom/motorola/android/provider/MotorolaSettings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 2
    .parameter "cr"
    .parameter "name"
    .parameter "def"

    .prologue
    .line 195
    invoke-static {p0, p1}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, v:Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 199
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 198
    .restart local p2
    :catch_0
    move-exception v0

    .line 199
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .locals 4
    .parameter "cr"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/provider/MotorolaSettings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 292
    invoke-static {p0, p1}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, valString:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/motorola/android/provider/MotorolaSettings$SettingNotFoundException;

    invoke-direct {v2, p1}, Lcom/motorola/android/provider/MotorolaSettings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 4
    .parameter "cr"
    .parameter "name"
    .parameter "def"

    .prologue
    .line 263
    invoke-static {p0, p1}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, valString:Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 270
    .local v2, value:J
    :goto_0
    return-wide v2

    .end local v2           #value:J
    :cond_0
    move-wide v2, p2

    .line 266
    goto :goto_0

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, e:Ljava/lang/NumberFormatException;
    move-wide v2, p2

    .restart local v2       #value:J
    goto :goto_0
.end method

.method public static declared-synchronized getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "resolver"
    .parameter "name"

    .prologue
    .line 152
    const-class v1, Lcom/motorola/android/provider/MotorolaSettings;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/motorola/android/provider/MotorolaSettings;->mNameValueCache:Lcom/motorola/android/provider/MotorolaSettings$NameValueCache;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lcom/motorola/android/provider/MotorolaSettings$NameValueCache;

    const-string v2, "sys.mot_settings_secure_version"

    sget-object v3, Lcom/motorola/android/provider/MotorolaSettings;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings$NameValueCache;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sput-object v0, Lcom/motorola/android/provider/MotorolaSettings;->mNameValueCache:Lcom/motorola/android/provider/MotorolaSettings$NameValueCache;

    .line 155
    :cond_0
    sget-object v0, Lcom/motorola/android/provider/MotorolaSettings;->mNameValueCache:Lcom/motorola/android/provider/MotorolaSettings$NameValueCache;

    invoke-virtual {v0, p0, p1}, Lcom/motorola/android/provider/MotorolaSettings$NameValueCache;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "name"

    .prologue
    .line 177
    sget-object v0, Lcom/motorola/android/provider/MotorolaSettings;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Lcom/motorola/android/provider/MotorolaSettings$NameValueTable;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    .locals 1
    .parameter "cr"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 384
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 1
    .parameter "cr"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 245
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    .locals 1
    .parameter "cr"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 314
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "resolver"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 167
    sget-object v0, Lcom/motorola/android/provider/MotorolaSettings;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1, p2}, Lcom/motorola/android/provider/MotorolaSettings$NameValueTable;->putString(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
