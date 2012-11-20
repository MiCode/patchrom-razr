.class public Lcom/motorola/server/location/MotGpsLocationProvider;
.super Ljava/lang/Object;
.source "MotGpsLocationProvider.java"

# interfaces
.implements Lcom/android/server/location/GpsLocationProviderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;,
        Lcom/motorola/server/location/MotGpsLocationProvider$GpsLocationProviderThread;,
        Lcom/motorola/server/location/MotGpsLocationProvider$ProviderHandler;,
        Lcom/motorola/server/location/MotGpsLocationProvider$Listener;,
        Lcom/motorola/server/location/MotGpsLocationProvider$SettingsObserver;
    }
.end annotation


# static fields
.field private static final ADD_LISTENER:I = 0x8

.field private static final AGPS_DATA_CONNECTION_CLOSED:I = 0x0

.field private static final AGPS_DATA_CONNECTION_OPEN:I = 0x2

.field private static final AGPS_DATA_CONNECTION_OPENING:I = 0x1

.field private static final AGPS_REF_LOCATION_TYPE_GSM_CELLID:I = 0x1

.field private static final AGPS_REF_LOCATION_TYPE_UMTS_CELLID:I = 0x2

.field private static final AGPS_REG_LOCATION_TYPE_MAC:I = 0x3

.field private static final AGPS_RIL_REQUEST_REFLOC_CELLID:I = 0x1

.field private static final AGPS_RIL_REQUEST_REFLOC_MAC:I = 0x2

.field private static final AGPS_RIL_REQUEST_SETID_IMSI:I = 0x1

.field private static final AGPS_RIL_REQUEST_SETID_MSISDN:I = 0x2

.field private static final AGPS_SETID_TYPE_IMSI:I = 0x1

.field private static final AGPS_SETID_TYPE_MSISDN:I = 0x2

.field private static final AGPS_SETID_TYPE_NONE:I = 0x0

.field private static final AGPS_TYPE_C2K:I = 0x2

.field private static final AGPS_TYPE_SUPL:I = 0x1

.field private static final ALARM_MVMT_MON:Ljava/lang/String; = "com.android.internal.location.ALARM_MVMT_MON"

.field private static final ALARM_TIMEOUT:Ljava/lang/String; = "com.android.internal.location.ALARM_TIMEOUT"

.field private static final ALARM_WAKEUP:Ljava/lang/String; = "com.android.internal.location.ALARM_WAKEUP"

.field private static final ALMANAC_MASK:I = 0x1

.field private static final CHECK_LOCATION:I = 0x1

.field private static final DEBUG:Z = true

.field private static final DOWNLOAD_XTRA_DATA:I = 0x6

.field private static final ENABLE:I = 0x2

.field private static final ENABLE_TRACKING:I = 0x3

.field private static final EPHEMERIS_MASK:I = 0x0

.field private static final FIX:Z = true

.field private static final GPS_AGPS_DATA_CONNECTED:I = 0x3

.field private static final GPS_AGPS_DATA_CONN_DONE:I = 0x4

.field private static final GPS_AGPS_DATA_CONN_FAILED:I = 0x5

.field private static final GPS_CAPABILITY_MSA:I = 0x4

.field private static final GPS_CAPABILITY_MSB:I = 0x2

.field private static final GPS_CAPABILITY_ON_DEMAND_TIME:I = 0x10

.field private static final GPS_CAPABILITY_SCHEDULING:I = 0x1

.field private static final GPS_CAPABILITY_SINGLE_SHOT:I = 0x8

.field private static final GPS_DELETE_ALL:I = 0xffff

.field private static final GPS_DELETE_ALMANAC:I = 0x2

.field private static final GPS_DELETE_CELLDB_INFO:I = 0x8000

.field private static final GPS_DELETE_EPHEMERIS:I = 0x1

.field private static final GPS_DELETE_HEALTH:I = 0x40

.field private static final GPS_DELETE_IONO:I = 0x10

.field private static final GPS_DELETE_POSITION:I = 0x4

.field private static final GPS_DELETE_RTI:I = 0x400

.field private static final GPS_DELETE_SADATA:I = 0x200

.field private static final GPS_DELETE_SVDIR:I = 0x80

.field private static final GPS_DELETE_SVSTEER:I = 0x100

.field private static final GPS_DELETE_TIME:I = 0x8

.field private static final GPS_DELETE_UTC:I = 0x20

.field private static final GPS_POSITION_MODE_MS_ASSISTED:I = 0x2

.field private static final GPS_POSITION_MODE_MS_BASED:I = 0x1

.field private static final GPS_POSITION_MODE_STANDALONE:I = 0x0

.field private static final GPS_POSITION_RECURRENCE_PERIODIC:I = 0x0

.field private static final GPS_POSITION_RECURRENCE_SINGLE:I = 0x1

.field private static final GPS_RELEASE_AGPS_DATA_CONN:I = 0x2

.field private static final GPS_REQUEST_AGPS_DATA_CONN:I = 0x1

.field private static final GPS_STATUS_ENGINE_OFF:I = 0x4

.field private static final GPS_STATUS_ENGINE_ON:I = 0x3

.field private static final GPS_STATUS_NONE:I = 0x0

.field private static final GPS_STATUS_SESSION_BEGIN:I = 0x1

.field private static final GPS_STATUS_SESSION_BEGIN_GPS_NOP:I = 0x64

.field private static final GPS_STATUS_SESSION_END:I = 0x2

.field private static final GPS_STATUS_SESSION_END_GPS_NOP:I = 0x65

.field private static final INJECT_NTP_TIME:I = 0x5

.field private static final LOCATION_HAS_ACCURACY:I = 0x10

.field private static final LOCATION_HAS_ALTITUDE:I = 0x2

.field private static final LOCATION_HAS_BEARING:I = 0x8

.field private static final LOCATION_HAS_LAT_LONG:I = 0x1

.field private static final LOCATION_HAS_SPEED:I = 0x4

.field private static final LOCATION_INVALID:I = 0x0

.field private static final MAX_CHECK_APN_COUNT:I = 0x9

.field private static final MAX_SVS:I = 0x20

.field private static final NO_FIX:Z = false

.field private static final NO_FIX_MVMT_MON_TIMEOUT:I = 0xea60

.field private static final NO_FIX_TIMEOUT:I = 0xea60

.field private static final NTP_INTERVAL:J = 0x5265c00L

.field static final PREFERAPN_URI:Landroid/net/Uri; = null

.field private static final PROPERTIES_FILE:Ljava/lang/String; = "/etc/gps.conf"

.field private static final RECENT_FIX_TIMEOUT:J = 0x2710L

.field private static final REMOVE_LISTENER:I = 0x9

.field private static final REQUEST_SINGLE_SHOT:I = 0xa

.field private static final RETRY_INTERVAL:J = 0x493e0L

.field private static final TAG:Ljava/lang/String; = "MotGpsLocationProvider"

.field private static final UPDATE_LOCATION:I = 0x7

.field private static final UPDATE_NETWORK_STATE:I = 0x4

.field private static final USED_FOR_FIX_MASK:I = 0x2

.field private static final VERBOSE:Z = false

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "GpsLocationProvider"

.field private static final WAKELOCK_TIMEOUT:I = 0x1d4c0


# instance fields
.field private isServiceReady:Z

.field private mAGpsApn:Ljava/lang/String;

.field private mAGpsDataConnectionIpAddr:I

.field private mAGpsDataConnectionState:I

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mApnList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReciever:Landroid/content/BroadcastReceiver;

.field private mC2KServerHost:Ljava/lang/String;

.field private mC2KServerPort:I

.field private final mClientUids:Landroid/util/SparseIntArray;

.field private final mConnMgr:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDownloadXtraDataPending:Z

.field private volatile mEnabled:Z

.field private mEngineCapabilities:I

.field private mEngineOn:Z

.field private mFixInterval:I

.field private mFixRequestTime:J

.field private final mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

.field private mHandler:Landroid/os/Handler;

.field private final mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

.field private mInjectNtpTimePending:Z

.field private mIsAirplaneSensitive:Z

.field private mLastFixTime:J

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/server/location/MotGpsLocationProvider$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocation:Landroid/location/Location;

.field private mLocationExtras:Landroid/os/Bundle;

.field private mLocationFlags:I

.field private final mLocationManager:Landroid/location/ILocationManager;

.field private final mLock:Ljava/lang/Object;

.field private final mMvmtMon:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

.field private final mMvmtMonIntent:Landroid/app/PendingIntent;

.field private final mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

.field private mNTPRetryInterval:J

.field private mNavigating:Z

.field private final mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field private mNetworkAvailable:Z

.field private mNmeaBuffer:[B

.field private final mNtpTime:Landroid/util/NtpTrustedTime;

.field private mPendingListenerMessages:I

.field private mPendingMessageBits:I

.field private mPeriodicTimeInjection:Z

.field private mPositionMode:I

.field private mProperties:Ljava/util/Properties;

.field private mSaving:Z

.field private mSettings:Landroid/content/ContentQueryMap;

.field private mSilentCnt:I

.field private mSingleShot:Z

.field private mSnrs:[F

.field private mStarted:Z

.field private mStatus:I

.field private mStatusUpdateTime:J

.field private mSuplServerHost:Ljava/lang/String;

.field private mSuplServerPort:I

.field private mSupportsXtra:Z

.field private mSvAzimuths:[F

.field private mSvCount:I

.field private mSvElevations:[F

.field private mSvMasks:[I

.field private mSvs:[I

.field private mTTFF:I

.field private final mThread:Ljava/lang/Thread;

.field private final mTimeoutIntent:Landroid/app/PendingIntent;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWakeupIntent:Landroid/app/PendingIntent;

.field private settingsObserver:Lcom/motorola/server/location/MotGpsLocationProvider$SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 353
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/server/location/MotGpsLocationProvider;->PREFERAPN_URI:Landroid/net/Uri;

    .line 2385
    invoke-static {}, Lcom/motorola/server/location/MotGpsLocationProvider;->class_init_native()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/ILocationManager;)V
    .locals 21
    .parameter "context"
    .parameter "locationManager"

    .prologue
    .line 572
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 214
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mLocationFlags:I

    .line 217
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mStatus:I

    .line 220
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mStatusUpdateTime:J

    .line 245
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mInjectNtpTimePending:Z

    .line 247
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mDownloadXtraDataPending:Z

    .line 261
    const/16 v2, 0x3e8

    move-object/from16 v0, p0

    iput v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mFixInterval:I

    .line 270
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSilentCnt:I

    .line 282
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mFixRequestTime:J

    .line 284
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mTTFF:I

    .line 300
    new-instance v2, Landroid/location/Location;

    const-string v3, "gps"

    invoke-direct {v2, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mLocation:Landroid/location/Location;

    .line 301
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    .line 302
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    .line 309
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 338
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    .line 355
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mApnList:Ljava/util/ArrayList;

    .line 357
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->isServiceReady:Z

    .line 358
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSettings:Landroid/content/ContentQueryMap;

    .line 359
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->settingsObserver:Lcom/motorola/server/location/MotGpsLocationProvider$SettingsObserver;

    .line 360
    new-instance v2, Ljava/lang/Object;

    invoke-direct/range {v2 .. v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mLock:Ljava/lang/Object;

    .line 395
    new-instance v2, Lcom/motorola/server/location/MotGpsLocationProvider$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/motorola/server/location/MotGpsLocationProvider$1;-><init>(Lcom/motorola/server/location/MotGpsLocationProvider;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    .line 489
    new-instance v2, Lcom/motorola/server/location/MotGpsLocationProvider$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/motorola/server/location/MotGpsLocationProvider$2;-><init>(Lcom/motorola/server/location/MotGpsLocationProvider;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    .line 1795
    new-instance v2, Lcom/motorola/server/location/MotGpsLocationProvider$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/motorola/server/location/MotGpsLocationProvider$3;-><init>(Lcom/motorola/server/location/MotGpsLocationProvider;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    .line 2376
    const/16 v2, 0x20

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSvs:[I

    .line 2377
    const/16 v2, 0x20

    new-array v2, v2, [F

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSnrs:[F

    .line 2378
    const/16 v2, 0x20

    new-array v2, v2, [F

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSvElevations:[F

    .line 2379
    const/16 v2, 0x20

    new-array v2, v2, [F

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSvAzimuths:[F

    .line 2380
    const/4 v2, 0x3

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSvMasks:[I

    .line 2383
    const/16 v2, 0x78

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mNmeaBuffer:[B

    .line 573
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/server/location/MotGpsLocationProvider;->mContext:Landroid/content/Context;

    .line 574
    invoke-static/range {p1 .. p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    .line 575
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/server/location/MotGpsLocationProvider;->mLocationManager:Landroid/location/ILocationManager;

    .line 577
    new-instance v2, Lcom/android/internal/location/GpsNetInitiatedHandler;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/android/internal/location/GpsNetInitiatedHandler;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 579
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mLocation:Landroid/location/Location;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 582
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e003f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mNTPRetryInterval:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/PowerManager;

    .line 590
    .local v15, powerManager:Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "GpsLocationProvider"

    invoke-virtual {v15, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 591
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 593
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 594
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.internal.location.ALARM_WAKEUP"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    .line 595
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 596
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.internal.location.ALARM_MVMT_MON"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mMvmtMonIntent:Landroid/app/PendingIntent;

    .line 598
    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    .line 599
    .local v12, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 600
    const-string v2, "sms"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 601
    const-string v2, "localhost"

    const-string v3, "7275"

    invoke-virtual {v12, v2, v3}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 604
    new-instance v12, Landroid/content/IntentFilter;

    .end local v12           #intentFilter:Landroid/content/IntentFilter;
    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    .line 605
    .restart local v12       #intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 607
    :try_start_1
    const-string v2, "application/vnd.omaloc-supl-init"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 611
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 613
    const-string v2, "connectivity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 616
    const-string v2, "batteryinfo"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 618
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mProperties:Ljava/util/Properties;

    .line 622
    const/16 v18, 0x0

    .line 624
    .local v18, stream:Ljava/io/FileInputStream;
    :try_start_2
    new-instance v10, Ljava/io/File;

    const-string v2, "/etc/gps.conf"

    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 625
    .local v10, file:Ljava/io/File;
    new-instance v19, Ljava/io/FileInputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9

    .line 626
    .end local v18           #stream:Ljava/io/FileInputStream;
    .local v19, stream:Ljava/io/FileInputStream;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mProperties:Ljava/util/Properties;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 628
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v3, "SUPL_HOST"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    .line 629
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v3, "SUPL_PORT"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 630
    .local v14, portString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSuplServerHost:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz v2, :cond_0

    if-eqz v14, :cond_0

    .line 632
    :try_start_4
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSuplServerPort:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 638
    :cond_0
    :goto_2
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v3, "C2K_HOST"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    .line 639
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v3, "C2K_PORT"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 640
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mC2KServerHost:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    if-eqz v2, :cond_1

    if-eqz v14, :cond_1

    .line 642
    :try_start_6
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mC2KServerPort:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 649
    :cond_1
    :goto_3
    const/4 v2, 0x1

    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "agps_gpsone_user_plane"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 651
    const/4 v8, 0x0

    .line 652
    .local v8, PppId:Ljava/lang/String;
    const/4 v11, 0x1

    .local v11, i:I
    :goto_4
    const/16 v2, 0x9

    if-ge v11, v2, :cond_2

    .line 653
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mProperties:Ljava/util/Properties;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PPP"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_ID"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 654
    const-string v2, "MotGpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CheckAPN UserId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 655
    if-nez v8, :cond_8

    .line 665
    .end local v8           #PppId:Ljava/lang/String;
    .end local v11           #i:I
    :cond_2
    if-eqz v19, :cond_3

    .line 667
    :try_start_8
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    :cond_3
    :goto_5
    move-object/from16 v18, v19

    .line 675
    .end local v10           #file:Ljava/io/File;
    .end local v14           #portString:Ljava/lang/String;
    .end local v19           #stream:Ljava/io/FileInputStream;
    .restart local v18       #stream:Ljava/io/FileInputStream;
    :cond_4
    :goto_6
    const-string v2, "persist.mot.gps.smart_battery"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 676
    const-string v2, "MotGpsLocationProvider"

    const-string v3, "MovementMonitor disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mMvmtMon:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    .line 690
    :goto_7
    new-instance v2, Lcom/motorola/server/location/MotGpsLocationProvider$GpsLocationProviderThread;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/motorola/server/location/MotGpsLocationProvider$GpsLocationProviderThread;-><init>(Lcom/motorola/server/location/MotGpsLocationProvider;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mThread:Ljava/lang/Thread;

    .line 691
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 694
    :goto_8
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_6

    .line 702
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "agps_gpsone_user_plane"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v2, v3, :cond_6

    .line 704
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "(name=?)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v20, "location_providers_allowed"

    aput-object v20, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 708
    .local v16, settingsCursor:Landroid/database/Cursor;
    new-instance v2, Landroid/content/ContentQueryMap;

    const-string v3, "name"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-direct {v2, v0, v3, v4, v5}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSettings:Landroid/content/ContentQueryMap;

    .line 709
    new-instance v2, Lcom/motorola/server/location/MotGpsLocationProvider$SettingsObserver;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/motorola/server/location/MotGpsLocationProvider$SettingsObserver;-><init>(Lcom/motorola/server/location/MotGpsLocationProvider;Lcom/motorola/server/location/MotGpsLocationProvider$1;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->settingsObserver:Lcom/motorola/server/location/MotGpsLocationProvider$SettingsObserver;

    .line 711
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "CurrentGPSSetting"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 712
    .local v13, isEnabled:Ljava/lang/String;
    if-nez v13, :cond_5

    .line 713
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "CurrentGPSSetting"

    const-string v4, "true"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 715
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSettings:Landroid/content/ContentQueryMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->settingsObserver:Lcom/motorola/server/location/MotGpsLocationProvider$SettingsObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 716
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    const/4 v2, 0x0

    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/motorola/server/location/MotGpsLocationProvider;->PutGPSReady(Z)V

    .line 720
    .end local v13           #isEnabled:Ljava/lang/String;
    .end local v16           #settingsCursor:Landroid/database/Cursor;
    :cond_6
    return-void

    .line 583
    .end local v12           #intentFilter:Landroid/content/IntentFilter;
    .end local v15           #powerManager:Landroid/os/PowerManager;
    .end local v18           #stream:Ljava/io/FileInputStream;
    :catch_0
    move-exception v9

    .line 584
    .local v9, e:Ljava/lang/Exception;
    const-wide/32 v2, 0x493e0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mNTPRetryInterval:J

    goto/16 :goto_0

    .line 608
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v12       #intentFilter:Landroid/content/IntentFilter;
    .restart local v15       #powerManager:Landroid/os/PowerManager;
    :catch_1
    move-exception v9

    .line 609
    .local v9, e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v2, "MotGpsLocationProvider"

    const-string v3, "Malformed SUPL init mime type"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 633
    .end local v9           #e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    .restart local v10       #file:Ljava/io/File;
    .restart local v14       #portString:Ljava/lang/String;
    .restart local v19       #stream:Ljava/io/FileInputStream;
    :catch_2
    move-exception v9

    .line 634
    .local v9, e:Ljava/lang/NumberFormatException;
    :try_start_a
    const-string v2, "MotGpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to parse SUPL_PORT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_2

    .line 662
    .end local v9           #e:Ljava/lang/NumberFormatException;
    .end local v14           #portString:Ljava/lang/String;
    :catch_3
    move-exception v9

    move-object/from16 v18, v19

    .line 663
    .end local v10           #file:Ljava/io/File;
    .end local v19           #stream:Ljava/io/FileInputStream;
    .local v9, e:Ljava/io/IOException;
    .restart local v18       #stream:Ljava/io/FileInputStream;
    :goto_a
    :try_start_b
    const-string v2, "MotGpsLocationProvider"

    const-string v3, "Could not open GPS configuration file /etc/gps.conf"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 665
    if-eqz v18, :cond_4

    .line 667
    :try_start_c
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    goto/16 :goto_6

    .line 668
    :catch_4
    move-exception v2

    goto/16 :goto_6

    .line 643
    .end local v9           #e:Ljava/io/IOException;
    .end local v18           #stream:Ljava/io/FileInputStream;
    .restart local v10       #file:Ljava/io/File;
    .restart local v14       #portString:Ljava/lang/String;
    .restart local v19       #stream:Ljava/io/FileInputStream;
    :catch_5
    move-exception v9

    .line 644
    .local v9, e:Ljava/lang/NumberFormatException;
    :try_start_d
    const-string v2, "MotGpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to parse C2K_PORT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    goto/16 :goto_3

    .line 665
    .end local v9           #e:Ljava/lang/NumberFormatException;
    .end local v14           #portString:Ljava/lang/String;
    :catchall_0
    move-exception v2

    move-object/from16 v18, v19

    .end local v10           #file:Ljava/io/File;
    .end local v19           #stream:Ljava/io/FileInputStream;
    .restart local v18       #stream:Ljava/io/FileInputStream;
    :goto_b
    if-eqz v18, :cond_7

    .line 667
    :try_start_e
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    .line 665
    :cond_7
    :goto_c
    throw v2

    .line 658
    .end local v18           #stream:Ljava/io/FileInputStream;
    .restart local v8       #PppId:Ljava/lang/String;
    .restart local v10       #file:Ljava/io/File;
    .restart local v11       #i:I
    .restart local v14       #portString:Ljava/lang/String;
    .restart local v19       #stream:Ljava/io/FileInputStream;
    :cond_8
    :try_start_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mApnList:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3

    .line 652
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    .line 679
    .end local v8           #PppId:Ljava/lang/String;
    .end local v10           #file:Ljava/io/File;
    .end local v11           #i:I
    .end local v14           #portString:Ljava/lang/String;
    .end local v19           #stream:Ljava/io/FileInputStream;
    .restart local v18       #stream:Ljava/io/FileInputStream;
    :cond_9
    const-string v2, "sensorhub"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/motorola/sensorhub/SensorHub;

    .line 680
    .local v17, sh:Lcom/motorola/sensorhub/SensorHub;
    if-nez v17, :cond_a

    .line 681
    const-string v2, "MotGpsLocationProvider"

    const-string v3, "Sensor hub service not found"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mMvmtMon:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    goto/16 :goto_7

    .line 684
    :cond_a
    new-instance v2, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v2, v0, v1}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;-><init>(Lcom/motorola/server/location/MotGpsLocationProvider;Lcom/motorola/sensorhub/SensorHub;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mMvmtMon:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    .line 685
    const-string v2, "MotGpsLocationProvider"

    const-string v3, "MovementMonitor created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 696
    .end local v17           #sh:Lcom/motorola/sensorhub/SensorHub;
    :catch_6
    move-exception v9

    .line 697
    .local v9, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_8

    .line 716
    .end local v9           #e:Ljava/lang/InterruptedException;
    .restart local v13       #isEnabled:Ljava/lang/String;
    .restart local v16       #settingsCursor:Landroid/database/Cursor;
    :cond_b
    const/4 v2, 0x1

    goto/16 :goto_9

    .line 668
    .end local v13           #isEnabled:Ljava/lang/String;
    .end local v16           #settingsCursor:Landroid/database/Cursor;
    :catch_7
    move-exception v3

    goto :goto_c

    .end local v18           #stream:Ljava/io/FileInputStream;
    .restart local v10       #file:Ljava/io/File;
    .restart local v14       #portString:Ljava/lang/String;
    .restart local v19       #stream:Ljava/io/FileInputStream;
    :catch_8
    move-exception v2

    goto/16 :goto_5

    .line 665
    .end local v10           #file:Ljava/io/File;
    .end local v14           #portString:Ljava/lang/String;
    .end local v19           #stream:Ljava/io/FileInputStream;
    .restart local v18       #stream:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v2

    goto :goto_b

    .line 662
    :catch_9
    move-exception v9

    goto/16 :goto_a
.end method

.method private PutGPSReady(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 471
    if-eqz p1, :cond_1

    .line 472
    iput-boolean v5, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->isServiceReady:Z

    .line 473
    iget-object v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "CurrentGPSSetting"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, isEnabled:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 475
    .local v1, isGPSEnabledbysetting:Ljava/lang/Boolean;
    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 476
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 479
    :goto_0
    iget-object v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gps"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 486
    .end local v0           #isEnabled:Ljava/lang/String;
    .end local v1           #isGPSEnabledbysetting:Ljava/lang/Boolean;
    :goto_1
    return-void

    .line 478
    .restart local v0       #isEnabled:Ljava/lang/String;
    .restart local v1       #isGPSEnabledbysetting:Ljava/lang/Boolean;
    :cond_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 482
    .end local v0           #isEnabled:Ljava/lang/String;
    .end local v1           #isGPSEnabledbysetting:Ljava/lang/Boolean;
    :cond_1
    iput-boolean v4, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->isServiceReady:Z

    .line 483
    iget-object v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gps"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/motorola/server/location/MotGpsLocationProvider;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/server/location/MotGpsLocationProvider;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/motorola/server/location/MotGpsLocationProvider;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/motorola/server/location/MotGpsLocationProvider;->checkSmsSuplInit(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/motorola/server/location/MotGpsLocationProvider;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/motorola/server/location/MotGpsLocationProvider;->checkWapSuplInit(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/motorola/server/location/MotGpsLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/motorola/server/location/MotGpsLocationProvider;->checkAPNforAGPS()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/motorola/server/location/MotGpsLocationProvider;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/motorola/server/location/MotGpsLocationProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/motorola/server/location/MotGpsLocationProvider;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/motorola/server/location/MotGpsLocationProvider;->native_agps_data_conn_open(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1502(Lcom/motorola/server/location/MotGpsLocationProvider;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput p1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mAGpsDataConnectionState:I

    return p1
.end method

.method static synthetic access$1600(Lcom/motorola/server/location/MotGpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/motorola/server/location/MotGpsLocationProvider;->native_agps_data_conn_failed()V

    return-void
.end method

.method static synthetic access$1700(Lcom/motorola/server/location/MotGpsLocationProvider;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/motorola/server/location/MotGpsLocationProvider;->PutGPSReady(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/motorola/server/location/MotGpsLocationProvider;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/motorola/server/location/MotGpsLocationProvider;->native_send_ni_response(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/server/location/MotGpsLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->isServiceReady:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/motorola/server/location/MotGpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/motorola/server/location/MotGpsLocationProvider;->handleEnable()V

    return-void
.end method

.method static synthetic access$2100(Lcom/motorola/server/location/MotGpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/motorola/server/location/MotGpsLocationProvider;->handleDisable()V

    return-void
.end method

.method static synthetic access$2200(Lcom/motorola/server/location/MotGpsLocationProvider;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/motorola/server/location/MotGpsLocationProvider;->handleEnableLocationTracking(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/motorola/server/location/MotGpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/motorola/server/location/MotGpsLocationProvider;->handleRequestSingleShot()V

    return-void
.end method

.method static synthetic access$2400(Lcom/motorola/server/location/MotGpsLocationProvider;ILandroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/motorola/server/location/MotGpsLocationProvider;->handleUpdateNetworkState(ILandroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/motorola/server/location/MotGpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/motorola/server/location/MotGpsLocationProvider;->handleInjectNtpTime()V

    return-void
.end method

.method static synthetic access$2600(Lcom/motorola/server/location/MotGpsLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSupportsXtra:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/motorola/server/location/MotGpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/motorola/server/location/MotGpsLocationProvider;->handleDownloadXtraData()V

    return-void
.end method

.method static synthetic access$2800(Lcom/motorola/server/location/MotGpsLocationProvider;Landroid/location/Location;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/motorola/server/location/MotGpsLocationProvider;->handleUpdateLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/motorola/server/location/MotGpsLocationProvider;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/motorola/server/location/MotGpsLocationProvider;->handleAddListener(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/motorola/server/location/MotGpsLocationProvider;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/motorola/server/location/MotGpsLocationProvider;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/motorola/server/location/MotGpsLocationProvider;->handleRemoveListener(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/motorola/server/location/MotGpsLocationProvider;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/motorola/server/location/MotGpsLocationProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mPendingMessageBits:I

    return v0
.end method

.method static synthetic access$3272(Lcom/motorola/server/location/MotGpsLocationProvider;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iget v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mPendingMessageBits:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mPendingMessageBits:I

    return v0
.end method

.method static synthetic access$3300(Lcom/motorola/server/location/MotGpsLocationProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mPendingListenerMessages:I

    return v0
.end method

.method static synthetic access$3310(Lcom/motorola/server/location/MotGpsLocationProvider;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mPendingListenerMessages:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mPendingListenerMessages:I

    return v0
.end method

.method static synthetic access$3400(Lcom/motorola/server/location/MotGpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/motorola/server/location/MotGpsLocationProvider;->initialize()V

    return-void
.end method

.method static synthetic access$3500(Lcom/motorola/server/location/MotGpsLocationProvider;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/motorola/server/location/MotGpsLocationProvider;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/motorola/server/location/MotGpsLocationProvider;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/motorola/server/location/MotGpsLocationProvider;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mMvmtMonIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/motorola/server/location/MotGpsLocationProvider;)Landroid/app/AlarmManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/motorola/server/location/MotGpsLocationProvider;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/motorola/server/location/MotGpsLocationProvider;->startNavigating(ZZ)V

    return-void
.end method

.method static synthetic access$4000(Lcom/motorola/server/location/MotGpsLocationProvider;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/motorola/server/location/MotGpsLocationProvider;->startNavigating_Locked(ZZ)V

    return-void
.end method

.method static synthetic access$4100(Lcom/motorola/server/location/MotGpsLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mStarted:Z

    return v0
.end method

.method static synthetic access$4200(Lcom/motorola/server/location/MotGpsLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSaving:Z

    return v0
.end method

.method static synthetic access$4202(Lcom/motorola/server/location/MotGpsLocationProvider;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSaving:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/motorola/server/location/MotGpsLocationProvider;)Landroid/location/Location;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/motorola/server/location/MotGpsLocationProvider;)Landroid/location/ILocationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mLocationManager:Landroid/location/ILocationManager;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/motorola/server/location/MotGpsLocationProvider;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mLastFixTime:J

    return-wide v0
.end method

.method static synthetic access$4502(Lcom/motorola/server/location/MotGpsLocationProvider;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-wide p1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mLastFixTime:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/motorola/server/location/MotGpsLocationProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mFixInterval:I

    return v0
.end method

.method static synthetic access$5300(Lcom/motorola/server/location/MotGpsLocationProvider;ILandroid/app/PendingIntent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/motorola/server/location/MotGpsLocationProvider;->hibernate_Locked(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/motorola/server/location/MotGpsLocationProvider;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$700(Lcom/motorola/server/location/MotGpsLocationProvider;ILandroid/app/PendingIntent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/motorola/server/location/MotGpsLocationProvider;->hibernate(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method static synthetic access$800(Lcom/motorola/server/location/MotGpsLocationProvider;)Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mMvmtMon:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    return-object v0
.end method

.method private checkAPNforAGPS()Z
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 448
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/motorola/server/location/MotGpsLocationProvider;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v11

    const-string v4, "user"

    aput-object v4, v2, v10

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 451
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 452
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 453
    const-string v0, "user"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 455
    .local v9, user:Ljava/lang/String;
    const-string v0, "MotGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Telephony.Carriers.USER: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    if-eqz v7, :cond_0

    .line 457
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 459
    :cond_0
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mApnList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_2

    .line 460
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mApnList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 461
    .local v6, PppId:Ljava/lang/String;
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 462
    const-string v0, "MotGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APN user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " supports AGPS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 467
    .end local v6           #PppId:Ljava/lang/String;
    .end local v8           #i:I
    .end local v9           #user:Ljava/lang/String;
    :goto_1
    return v0

    .line 459
    .restart local v6       #PppId:Ljava/lang/String;
    .restart local v8       #i:I
    .restart local v9       #user:Ljava/lang/String;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .end local v6           #PppId:Ljava/lang/String;
    .end local v8           #i:I
    .end local v9           #user:Ljava/lang/String;
    :cond_2
    move v0, v11

    .line 467
    goto :goto_1
.end method

.method private checkSmsSuplInit(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 552
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v1

    .line 553
    .local v1, messages:[Landroid/telephony/SmsMessage;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 554
    aget-object v3, v1, v0

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v2

    .line 555
    .local v2, supl_init:[B
    array-length v3, v2

    invoke-direct {p0, v2, v3}, Lcom/motorola/server/location/MotGpsLocationProvider;->native_agps_ni_message([BI)V

    .line 553
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 557
    .end local v2           #supl_init:[B
    :cond_0
    return-void
.end method

.method private checkWapSuplInit(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 560
    const-string v1, "data"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 561
    .local v0, supl_init:[B
    array-length v1, v0

    invoke-direct {p0, v0, v1}, Lcom/motorola/server/location/MotGpsLocationProvider;->native_agps_ni_message([BI)V

    .line 562
    return-void
.end method

.method private static native class_init_native()V
.end method

.method public static createInstance(Landroid/content/Context;Landroid/location/ILocationManager;)Lcom/motorola/server/location/MotGpsLocationProvider;
    .locals 1
    .parameter "context"
    .parameter "locationManager"

    .prologue
    .line 569
    new-instance v0, Lcom/motorola/server/location/MotGpsLocationProvider;

    invoke-direct {v0, p0, p1}, Lcom/motorola/server/location/MotGpsLocationProvider;-><init>(Landroid/content/Context;Landroid/location/ILocationManager;)V

    return-object v0
.end method

.method private deleteAidingData(Landroid/os/Bundle;)Z
    .locals 2
    .parameter "extras"

    .prologue
    .line 1239
    if-nez p1, :cond_1

    .line 1240
    const v0, 0xffff

    .line 1258
    .local v0, flags:I
    :cond_0
    :goto_0
    if-eqz v0, :cond_e

    .line 1259
    invoke-direct {p0, v0}, Lcom/motorola/server/location/MotGpsLocationProvider;->native_delete_aiding_data(I)V

    .line 1260
    const/4 v1, 0x1

    .line 1263
    :goto_1
    return v1

    .line 1242
    .end local v0           #flags:I
    :cond_1
    const/4 v0, 0x0

    .line 1243
    .restart local v0       #flags:I
    const-string v1, "ephemeris"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x1

    .line 1244
    :cond_2
    const-string v1, "almanac"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x2

    .line 1245
    :cond_3
    const-string v1, "position"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x4

    .line 1246
    :cond_4
    const-string v1, "time"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x8

    .line 1247
    :cond_5
    const-string v1, "iono"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    or-int/lit8 v0, v0, 0x10

    .line 1248
    :cond_6
    const-string v1, "utc"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    or-int/lit8 v0, v0, 0x20

    .line 1249
    :cond_7
    const-string v1, "health"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    or-int/lit8 v0, v0, 0x40

    .line 1250
    :cond_8
    const-string v1, "svdir"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    or-int/lit16 v0, v0, 0x80

    .line 1251
    :cond_9
    const-string v1, "svsteer"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    or-int/lit16 v0, v0, 0x100

    .line 1252
    :cond_a
    const-string v1, "sadata"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    or-int/lit16 v0, v0, 0x200

    .line 1253
    :cond_b
    const-string v1, "rti"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    or-int/lit16 v0, v0, 0x400

    .line 1254
    :cond_c
    const-string v1, "celldb-info"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const v1, 0x8000

    or-int/2addr v0, v1

    .line 1255
    :cond_d
    const-string v1, "all"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0xffff

    or-int/2addr v0, v1

    goto/16 :goto_0

    .line 1263
    :cond_e
    const/4 v1, 0x0

    goto/16 :goto_1
.end method

.method private getSelectedApn()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 2041
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2042
    .local v1, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 2044
    .local v6, apn:Ljava/lang/String;
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "apn"

    aput-object v4, v2, v5

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2047
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 2049
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2050
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 2053
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2056
    :cond_1
    return-object v6

    .line 2053
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private handleAddListener(I)V
    .locals 5
    .parameter "uid"

    .prologue
    .line 1168
    iget-object v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1169
    :try_start_0
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 1171
    const-string v1, "MotGpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Duplicate add listener for uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    monitor-exit v2

    .line 1183
    :goto_0
    return-void

    .line 1174
    :cond_0
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1175
    iget-boolean v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mNavigating:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 1177
    :try_start_1
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, p1}, Lcom/android/internal/app/IBatteryStats;->noteStartGps(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1182
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1178
    :catch_0
    move-exception v0

    .line 1179
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v1, "MotGpsLocationProvider"

    const-string v3, "RemoteException in addListener"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private handleDisable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1023
    const-string v0, "MotGpsLocationProvider"

    const-string v1, "handleDisable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    iget-boolean v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mEnabled:Z

    if-nez v0, :cond_0

    .line 1041
    :goto_0
    return-void

    .line 1026
    :cond_0
    iput-boolean v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mEnabled:Z

    .line 1029
    iput-boolean v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSupportsXtra:Z

    .line 1032
    invoke-direct {p0, v2}, Lcom/motorola/server/location/MotGpsLocationProvider;->stopNavigating(Z)V

    .line 1035
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1036
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1037
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mMvmtMonIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1040
    invoke-direct {p0}, Lcom/motorola/server/location/MotGpsLocationProvider;->native_cleanup()V

    goto :goto_0
.end method

.method private handleDownloadXtraData()V
    .locals 6

    .prologue
    const/4 v4, 0x6

    .line 859
    iget-boolean v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mNetworkAvailable:Z

    if-nez v2, :cond_0

    .line 861
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mDownloadXtraDataPending:Z

    .line 880
    :goto_0
    return-void

    .line 864
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mDownloadXtraDataPending:Z

    .line 867
    new-instance v1, Lcom/android/server/location/GpsXtraDownloader;

    iget-object v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mProperties:Ljava/util/Properties;

    invoke-direct {v1, v2, v3}, Lcom/android/server/location/GpsXtraDownloader;-><init>(Landroid/content/Context;Ljava/util/Properties;)V

    .line 868
    .local v1, xtraDownloader:Lcom/android/server/location/GpsXtraDownloader;
    invoke-virtual {v1}, Lcom/android/server/location/GpsXtraDownloader;->downloadXtraData()[B

    move-result-object v0

    .line 869
    .local v0, data:[B
    if-eqz v0, :cond_1

    .line 871
    const-string v2, "MotGpsLocationProvider"

    const-string v3, "calling native_inject_xtra_data"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    array-length v2, v0

    invoke-direct {p0, v0, v2}, Lcom/motorola/server/location/MotGpsLocationProvider;->native_inject_xtra_data([BI)V

    goto :goto_0

    .line 877
    :cond_1
    iget-object v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 878
    iget-object v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    const-wide/32 v4, 0x493e0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private handleEnable()V
    .locals 3

    .prologue
    .line 994
    const-string v0, "MotGpsLocationProvider"

    const-string v1, "handleEnable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    iget-boolean v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mEnabled:Z

    if-eqz v0, :cond_1

    .line 1009
    :cond_0
    :goto_0
    return-void

    .line 996
    :cond_1
    invoke-direct {p0}, Lcom/motorola/server/location/MotGpsLocationProvider;->native_init()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mEnabled:Z

    .line 998
    iget-boolean v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mEnabled:Z

    if-eqz v0, :cond_3

    .line 999
    invoke-direct {p0}, Lcom/motorola/server/location/MotGpsLocationProvider;->native_supports_xtra()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSupportsXtra:Z

    .line 1000
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1001
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    iget v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSuplServerPort:I

    invoke-direct {p0, v0, v1, v2}, Lcom/motorola/server/location/MotGpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 1003
    :cond_2
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1004
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    iget v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mC2KServerPort:I

    invoke-direct {p0, v0, v1, v2}, Lcom/motorola/server/location/MotGpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    goto :goto_0

    .line 1007
    :cond_3
    const-string v0, "MotGpsLocationProvider"

    const-string v1, "Failed to enable location provider"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleEnableLocationTracking(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    const/4 v3, 0x0

    .line 1075
    const-string v0, "MotGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEnableLocationTracking, enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    if-eqz p1, :cond_1

    .line 1077
    invoke-direct {p0, v3, v3}, Lcom/motorola/server/location/MotGpsLocationProvider;->startNavigating(ZZ)V

    .line 1094
    :cond_0
    :goto_0
    return-void

    .line 1081
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/motorola/server/location/MotGpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1082
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1083
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1087
    :cond_2
    invoke-direct {p0, v3}, Lcom/motorola/server/location/MotGpsLocationProvider;->stopNavigating(Z)V

    .line 1089
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mMvmtMonIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1090
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mMvmtMon:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    if-eqz v0, :cond_0

    .line 1091
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mMvmtMon:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    invoke-virtual {v0}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->stop()V

    goto :goto_0
.end method

.method private handleInjectNtpTime()V
    .locals 15

    .prologue
    const/4 v14, 0x5

    .line 819
    iget-boolean v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mNetworkAvailable:Z

    if-nez v0, :cond_1

    .line 821
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mInjectNtpTimePending:Z

    .line 856
    :cond_0
    :goto_0
    return-void

    .line 824
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mInjectNtpTimePending:Z

    .line 829
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->forceRefresh()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 830
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->getCachedNtpTime()J

    move-result-wide v1

    .line 831
    .local v1, time:J
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->getCachedNtpTimeReference()J

    move-result-wide v3

    .line 832
    .local v3, timeReference:J
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->getCacheCertainty()J

    move-result-wide v6

    .line 833
    .local v6, certainty:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 835
    .local v10, now:J
    const-string v0, "MotGpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NTP server returned: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " ("

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, ") reference: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " certainty: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " system time offset: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v12, v1, v10

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    long-to-int v5, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/server/location/MotGpsLocationProvider;->native_inject_time(JJI)V

    .line 842
    const-wide/32 v8, 0x5265c00

    .line 850
    .end local v1           #time:J
    .end local v3           #timeReference:J
    .end local v6           #certainty:J
    .end local v10           #now:J
    .local v8, delay:J
    :goto_1
    iget-boolean v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mPeriodicTimeInjection:Z

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 854
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-static {v5, v14}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v0, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 844
    .end local v8           #delay:J
    :cond_2
    const-string v0, "MotGpsLocationProvider"

    const-string v5, "requestTime failed"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    iget-wide v8, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mNTPRetryInterval:J

    .restart local v8       #delay:J
    goto :goto_1
.end method

.method private handleRemoveListener(I)V
    .locals 5
    .parameter "uid"

    .prologue
    .line 1196
    iget-object v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1197
    :try_start_0
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 1199
    const-string v1, "MotGpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unneeded remove listener for uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    monitor-exit v2

    .line 1211
    :goto_0
    return-void

    .line 1202
    :cond_0
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1203
    iget-boolean v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mNavigating:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 1205
    :try_start_1
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, p1}, Lcom/android/internal/app/IBatteryStats;->noteStopGps(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1210
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1206
    :catch_0
    move-exception v0

    .line 1207
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v1, "MotGpsLocationProvider"

    const-string v3, "RemoteException in removeListener"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private handleRequestSingleShot()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1110
    iput v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mTTFF:I

    .line 1111
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mLastFixTime:J

    .line 1112
    const/4 v0, 0x1

    invoke-direct {p0, v0, v2}, Lcom/motorola/server/location/MotGpsLocationProvider;->startNavigating(ZZ)V

    .line 1113
    return-void
.end method

.method private handleUpdateLocation(Landroid/location/Location;)V
    .locals 6
    .parameter "location"

    .prologue
    .line 891
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 892
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/server/location/MotGpsLocationProvider;->native_inject_location(DDF)V

    .line 895
    :cond_0
    return-void
.end method

.method private handleUpdateNetworkState(ILandroid/net/NetworkInfo;)V
    .locals 10
    .parameter "state"
    .parameter "info"

    .prologue
    .line 758
    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mNetworkAvailable:Z

    .line 761
    const-string v1, "MotGpsLocationProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNetworkState "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v0, :cond_8

    const-string v0, "available"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " info: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    if-eqz p2, :cond_1

    .line 766
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    const/4 v8, 0x1

    .line 768
    .local v8, dataEnabled:Z
    :goto_2
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz v8, :cond_a

    const/4 v4, 0x1

    .line 769
    .local v4, networkAvailable:Z
    :goto_3
    invoke-direct {p0}, Lcom/motorola/server/location/MotGpsLocationProvider;->getSelectedApn()Ljava/lang/String;

    move-result-object v6

    .line 770
    .local v6, defaultApn:Ljava/lang/String;
    if-nez v6, :cond_0

    .line 771
    const-string v6, "dummy-apn"

    .line 774
    :cond_0
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v3

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/motorola/server/location/MotGpsLocationProvider;->native_update_network_state(ZIZZLjava/lang/String;Ljava/lang/String;)V

    .line 779
    .end local v4           #networkAvailable:Z
    .end local v6           #defaultApn:Ljava/lang/String;
    .end local v8           #dataEnabled:Z
    :cond_1
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mAGpsDataConnectionState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 781
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v7

    .line 782
    .local v7, apnName:Ljava/lang/String;
    iget-boolean v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v0, :cond_b

    .line 783
    if-nez v7, :cond_2

    .line 786
    const-string v7, "dummy-apn"

    .line 788
    :cond_2
    iput-object v7, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    .line 789
    const-string v0, "MotGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAGpsDataConnectionIpAddr "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mAGpsDataConnectionIpAddr:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    iget v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mAGpsDataConnectionIpAddr:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 792
    const-string v0, "MotGpsLocationProvider"

    const-string v1, "call requestRouteToHost"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v1, 0x3

    iget v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mAGpsDataConnectionIpAddr:I

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v9

    .line 795
    .local v9, route_result:Z
    if-nez v9, :cond_3

    const-string v0, "MotGpsLocationProvider"

    const-string v1, "call requestRouteToHost failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    .end local v9           #route_result:Z
    :cond_3
    const-string v0, "MotGpsLocationProvider"

    const-string v1, "call native_agps_data_conn_open"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    invoke-direct {p0, v7}, Lcom/motorola/server/location/MotGpsLocationProvider;->native_agps_data_conn_open(Ljava/lang/String;)V

    .line 799
    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mAGpsDataConnectionState:I

    .line 808
    .end local v7           #apnName:Ljava/lang/String;
    :cond_4
    :goto_4
    iget-boolean v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v0, :cond_6

    .line 809
    iget-boolean v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mInjectNtpTimePending:Z

    if-eqz v0, :cond_5

    .line 810
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/motorola/server/location/MotGpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 812
    :cond_5
    iget-boolean v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mDownloadXtraDataPending:Z

    if-eqz v0, :cond_6

    .line 813
    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/motorola/server/location/MotGpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 816
    :cond_6
    return-void

    .line 758
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 761
    :cond_8
    const-string v0, "unavailable"

    goto/16 :goto_1

    .line 766
    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 768
    .restart local v8       #dataEnabled:Z
    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 801
    .end local v8           #dataEnabled:Z
    .restart local v7       #apnName:Ljava/lang/String;
    :cond_b
    const-string v0, "MotGpsLocationProvider"

    const-string v1, "call native_agps_data_conn_failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    .line 803
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mAGpsDataConnectionState:I

    .line 804
    invoke-direct {p0}, Lcom/motorola/server/location/MotGpsLocationProvider;->native_agps_data_conn_failed()V

    goto :goto_4
.end method

.method private hasCapability(I)Z
    .locals 1
    .parameter "capability"

    .prologue
    .line 1399
    iget v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mEngineCapabilities:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized hibernate(ILandroid/app/PendingIntent;)V
    .locals 1
    .parameter "alarmOffset"
    .parameter "alarmIntent"

    .prologue
    .line 1375
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/motorola/server/location/MotGpsLocationProvider;->hibernate_Locked(ILandroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1376
    monitor-exit p0

    return-void

    .line 1375
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private hibernate_Locked(ILandroid/app/PendingIntent;)V
    .locals 7
    .parameter "alarmOffset"
    .parameter "alarmIntent"

    .prologue
    .line 1379
    const-string v1, "MotGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hibernate alarmOffset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mMvmtMonIntent:Landroid/app/PendingIntent;

    if-ne p2, v1, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 1382
    .local v0, silent:Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/motorola/server/location/MotGpsLocationProvider;->stopNavigating_Locked(Z)V

    .line 1384
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1385
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1386
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mMvmtMonIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1388
    if-eqz p2, :cond_1

    .line 1389
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    int-to-long v5, p1

    add-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4, p2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1393
    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mMvmtMon:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    if-eqz v1, :cond_2

    .line 1394
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mMvmtMon:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    invoke-virtual {v1}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->updateHibernate()V

    .line 1396
    :cond_2
    return-void

    .line 1381
    .end local v0           #silent:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initialize()V
    .locals 5

    .prologue
    .line 724
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 725
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.android.internal.location.ALARM_WAKEUP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 726
    const-string v1, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 727
    const-string v1, "com.android.internal.location.ALARM_MVMT_MON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 728
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 730
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "agps_gpsone_user_plane"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 731
    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 733
    :cond_0
    invoke-direct {p0, v0}, Lcom/motorola/server/location/MotGpsLocationProvider;->registerForAirplaneMode(Landroid/content/IntentFilter;)V

    .line 735
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 736
    return-void
.end method

.method public static isSupported()Z
    .locals 1

    .prologue
    .line 565
    invoke-static {}, Lcom/motorola/server/location/MotGpsLocationProvider;->native_is_supported()Z

    move-result v0

    return v0
.end method

.method private native native_agps_data_conn_closed()V
.end method

.method private native native_agps_data_conn_failed()V
.end method

.method private native native_agps_data_conn_open(Ljava/lang/String;)V
.end method

.method private native native_agps_ni_message([BI)V
.end method

.method private native native_agps_set_id(ILjava/lang/String;)V
.end method

.method private native native_agps_set_ref_location_cellid(IIIII)V
.end method

.method private native native_cleanup()V
.end method

.method private native native_delete_aiding_data(I)V
.end method

.method private native native_get_internal_state()Ljava/lang/String;
.end method

.method private native native_init()Z
.end method

.method private native native_inject_location(DDF)V
.end method

.method private native native_inject_time(JJI)V
.end method

.method private native native_inject_xtra_data([BI)V
.end method

.method private static native native_is_supported()Z
.end method

.method private native native_read_nmea([BI)I
.end method

.method private native native_read_sv_status([I[F[F[F[I)I
.end method

.method private native native_send_ni_response(II)V
.end method

.method private native native_set_agps_server(ILjava/lang/String;I)V
.end method

.method private native native_set_position_mode(IIIII)Z
.end method

.method private native native_start()Z
.end method

.method private native native_stop()Z
.end method

.method private native native_supports_xtra()Z
.end method

.method private native native_update_network_state(ZIZZLjava/lang/String;Ljava/lang/String;)V
.end method

.method private provideStatus(ZZ)V
    .locals 8
    .parameter "navigating"
    .parameter "skipIntent"

    .prologue
    .line 1595
    iget-object v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v6

    .line 1596
    :try_start_0
    iget-object v5, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1597
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 1598
    iget-object v5, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/server/location/MotGpsLocationProvider$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1600
    .local v3, listener:Lcom/motorola/server/location/MotGpsLocationProvider$Listener;
    if-eqz p1, :cond_0

    .line 1601
    :try_start_1
    iget-object v5, v3, Lcom/motorola/server/location/MotGpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v5}, Landroid/location/IGpsStatusListener;->onGpsStarted()V

    .line 1597
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1603
    :cond_0
    iget-object v5, v3, Lcom/motorola/server/location/MotGpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v5}, Landroid/location/IGpsStatusListener;->onGpsStopped()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1605
    :catch_0
    move-exception v0

    .line 1606
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "MotGpsLocationProvider"

    const-string v7, "RemoteException in reportStatus"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    iget-object v5, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1609
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 1612
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v3           #listener:Lcom/motorola/server/location/MotGpsLocationProvider$Listener;
    :cond_1
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1614
    if-nez p2, :cond_2

    .line 1616
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1617
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "enabled"

    invoke-virtual {v2, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1618
    iget-object v5, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1620
    .end local v2           #intent:Landroid/content/Intent;
    :cond_2
    return-void

    .line 1612
    .end local v1           #i:I
    .end local v4           #size:I
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5
.end method

.method private registerForAirplaneMode(Landroid/content/IntentFilter;)V
    .locals 3
    .parameter "filter"

    .prologue
    .line 364
    iget-object v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 365
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v2, "airplane_mode_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, airplaneModeRadios:Ljava/lang/String;
    if-nez v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mIsAirplaneSensitive:Z

    .line 371
    iget-boolean v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mIsAirplaneSensitive:Z

    if-eqz v2, :cond_0

    .line 372
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 374
    :cond_0
    return-void

    .line 368
    :cond_1
    const-string v2, "gps"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_0
.end method

.method private reportAGpsStatus(III)V
    .locals 6
    .parameter "type"
    .parameter "status"
    .parameter "ipaddr"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1688
    packed-switch p2, :pswitch_data_0

    .line 1744
    :cond_0
    :goto_0
    return-void

    .line 1690
    :pswitch_0
    const-string v2, "MotGpsLocationProvider"

    const-string v3, "GPS_REQUEST_AGPS_DATA_CONN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    iput v5, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mAGpsDataConnectionState:I

    .line 1694
    iget-object v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    const-string v3, "enableSUPL"

    invoke-virtual {v2, v4, v3}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    .line 1696
    .local v0, result:I
    iput p3, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mAGpsDataConnectionIpAddr:I

    .line 1697
    if-nez v0, :cond_3

    .line 1698
    const-string v2, "MotGpsLocationProvider"

    const-string v3, "Phone.APN_ALREADY_ACTIVE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    iget-object v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1700
    const-string v2, "MotGpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAGpsDataConnectionIpAddr "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mAGpsDataConnectionIpAddr:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    iget v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mAGpsDataConnectionIpAddr:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 1703
    const-string v2, "MotGpsLocationProvider"

    const-string v3, "call requestRouteToHost"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    iget-object v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v3, 0x3

    iget v4, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mAGpsDataConnectionIpAddr:I

    invoke-virtual {v2, v3, v4}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v1

    .line 1707
    .local v1, route_result:Z
    if-nez v1, :cond_1

    const-string v2, "MotGpsLocationProvider"

    const-string v3, "call requestRouteToHost failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    .end local v1           #route_result:Z
    :cond_1
    iget-object v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/motorola/server/location/MotGpsLocationProvider;->native_agps_data_conn_open(Ljava/lang/String;)V

    .line 1710
    const/4 v2, 0x2

    iput v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mAGpsDataConnectionState:I

    goto :goto_0

    .line 1712
    :cond_2
    const-string v2, "MotGpsLocationProvider"

    const-string v3, "mAGpsApn not set when receiving Phone.APN_ALREADY_ACTIVE"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    iput v4, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mAGpsDataConnectionState:I

    .line 1714
    invoke-direct {p0}, Lcom/motorola/server/location/MotGpsLocationProvider;->native_agps_data_conn_failed()V

    goto :goto_0

    .line 1716
    :cond_3
    if-ne v0, v5, :cond_4

    .line 1717
    const-string v2, "MotGpsLocationProvider"

    const-string v3, "Phone.APN_REQUEST_STARTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1720
    :cond_4
    const-string v2, "MotGpsLocationProvider"

    const-string v3, "startUsingNetworkFeature failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    iput v4, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mAGpsDataConnectionState:I

    .line 1722
    invoke-direct {p0}, Lcom/motorola/server/location/MotGpsLocationProvider;->native_agps_data_conn_failed()V

    goto/16 :goto_0

    .line 1726
    .end local v0           #result:I
    :pswitch_1
    const-string v2, "MotGpsLocationProvider"

    const-string v3, "GPS_RELEASE_AGPS_DATA_CONN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    iget v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mAGpsDataConnectionState:I

    if-eqz v2, :cond_0

    .line 1728
    iget-object v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    const-string v3, "enableSUPL"

    invoke-virtual {v2, v4, v3}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 1730
    invoke-direct {p0}, Lcom/motorola/server/location/MotGpsLocationProvider;->native_agps_data_conn_closed()V

    .line 1731
    iput v4, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mAGpsDataConnectionState:I

    goto/16 :goto_0

    .line 1735
    :pswitch_2
    const-string v2, "MotGpsLocationProvider"

    const-string v3, "GPS_AGPS_DATA_CONNECTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1738
    :pswitch_3
    const-string v2, "MotGpsLocationProvider"

    const-string v3, "GPS_AGPS_DATA_CONN_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1741
    :pswitch_4
    const-string v2, "MotGpsLocationProvider"

    const-string v3, "GPS_AGPS_DATA_CONN_FAILED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1688
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private reportLocation(IDDDFFFJ)V
    .locals 11
    .parameter "flags"
    .parameter "latitude"
    .parameter "longitude"
    .parameter "altitude"
    .parameter "speed"
    .parameter "bearing"
    .parameter "accuracy"
    .parameter "timestamp"

    .prologue
    .line 1410
    iget-object v8, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mLocation:Landroid/location/Location;

    monitor-enter v8

    .line 1411
    :try_start_0
    iput p1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mLocationFlags:I

    .line 1412
    and-int/lit8 v7, p1, 0x1

    const/4 v9, 0x1

    if-ne v7, v9, :cond_0

    .line 1413
    iget-object v7, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v7, p2, p3}, Landroid/location/Location;->setLatitude(D)V

    .line 1414
    iget-object v7, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mLocation:Landroid/location/Location;

    move-wide v0, p4

    invoke-virtual {v7, v0, v1}, Landroid/location/Location;->setLongitude(D)V

    .line 1415
    iget-object v7, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mLocation:Landroid/location/Location;

    move-wide/from16 v0, p11

    invoke-virtual {v7, v0, v1}, Landroid/location/Location;->setTime(J)V

    .line 1417
    :cond_0
    and-int/lit8 v7, p1, 0x2

    const/4 v9, 0x2

    if-ne v7, v9, :cond_1

    .line 1418
    iget-object v7, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mLocation:Landroid/location/Location;

    move-wide/from16 v0, p6

    invoke-virtual {v7, v0, v1}, Landroid/location/Location;->setAltitude(D)V

    .line 1422
    :goto_0
    and-int/lit8 v7, p1, 0x4

    const/4 v9, 0x4

    if-ne v7, v9, :cond_2

    .line 1423
    iget-object v7, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mLocation:Landroid/location/Location;

    move/from16 v0, p8

    invoke-virtual {v7, v0}, Landroid/location/Location;->setSpeed(F)V

    .line 1427
    :goto_1
    and-int/lit8 v7, p1, 0x8

    const/16 v9, 0x8

    if-ne v7, v9, :cond_3

    .line 1428
    iget-object v7, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mLocation:Landroid/location/Location;

    move/from16 v0, p9

    invoke-virtual {v7, v0}, Landroid/location/Location;->setBearing(F)V

    .line 1432
    :goto_2
    and-int/lit8 v7, p1, 0x10

    const/16 v9, 0x10

    if-ne v7, v9, :cond_4

    .line 1433
    iget-object v7, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mLocation:Landroid/location/Location;

    move/from16 v0, p10

    invoke-virtual {v7, v0}, Landroid/location/Location;->setAccuracy(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1439
    :goto_3
    :try_start_1
    iget-object v7, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mLocationManager:Landroid/location/ILocationManager;

    iget-object v9, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mLocation:Landroid/location/Location;

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Landroid/location/ILocationManager;->reportLocation(Landroid/location/Location;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1443
    :goto_4
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1445
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mLastFixTime:J

    .line 1447
    iget v7, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mTTFF:I

    if-nez v7, :cond_6

    and-int/lit8 v7, p1, 0x1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_6

    .line 1448
    iget-wide v7, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mLastFixTime:J

    iget-wide v9, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mFixRequestTime:J

    sub-long/2addr v7, v9

    long-to-int v7, v7

    iput v7, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mTTFF:I

    .line 1449
    const-string v7, "MotGpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TTFF: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mTTFF:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    iget-object v8, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v8

    .line 1453
    :try_start_3
    iget-object v7, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1454
    .local v6, size:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_5
    if-ge v3, v6, :cond_5

    .line 1455
    iget-object v7, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/server/location/MotGpsLocationProvider$Listener;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1457
    .local v5, listener:Lcom/motorola/server/location/MotGpsLocationProvider$Listener;
    :try_start_4
    iget-object v7, v5, Lcom/motorola/server/location/MotGpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    iget v9, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mTTFF:I

    invoke-interface {v7, v9}, Landroid/location/IGpsStatusListener;->onFirstFix(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1454
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1420
    .end local v3           #i:I
    .end local v5           #listener:Lcom/motorola/server/location/MotGpsLocationProvider$Listener;
    .end local v6           #size:I
    :cond_1
    :try_start_5
    iget-object v7, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v7}, Landroid/location/Location;->removeAltitude()V

    goto/16 :goto_0

    .line 1443
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v7

    .line 1425
    :cond_2
    :try_start_6
    iget-object v7, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v7}, Landroid/location/Location;->removeSpeed()V

    goto/16 :goto_1

    .line 1430
    :cond_3
    iget-object v7, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v7}, Landroid/location/Location;->removeBearing()V

    goto :goto_2

    .line 1435
    :cond_4
    iget-object v7, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v7}, Landroid/location/Location;->removeAccuracy()V

    goto :goto_3

    .line 1440
    :catch_0
    move-exception v2

    .line 1441
    .local v2, e:Landroid/os/RemoteException;
    const-string v7, "MotGpsLocationProvider"

    const-string v9, "RemoteException calling reportLocation"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 1458
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v3       #i:I
    .restart local v5       #listener:Lcom/motorola/server/location/MotGpsLocationProvider$Listener;
    .restart local v6       #size:I
    :catch_1
    move-exception v2

    .line 1459
    .restart local v2       #e:Landroid/os/RemoteException;
    :try_start_7
    const-string v7, "MotGpsLocationProvider"

    const-string v9, "RemoteException in stopNavigating"

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    iget-object v7, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1462
    add-int/lit8 v6, v6, -0x1

    goto :goto_6

    .line 1465
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v5           #listener:Lcom/motorola/server/location/MotGpsLocationProvider$Listener;
    :cond_5
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1468
    .end local v3           #i:I
    .end local v6           #size:I
    :cond_6
    iget-boolean v7, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSingleShot:Z

    if-eqz v7, :cond_b

    .line 1469
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/motorola/server/location/MotGpsLocationProvider;->stopNavigating(Z)V

    .line 1476
    :cond_7
    :goto_7
    iget-boolean v7, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mStarted:Z

    if-eqz v7, :cond_9

    iget v7, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mStatus:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_9

    .line 1479
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/motorola/server/location/MotGpsLocationProvider;->hasCapability(I)Z

    move-result v7

    if-nez v7, :cond_8

    iget v7, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mFixInterval:I

    const v8, 0xea60

    if-ge v7, v8, :cond_8

    .line 1480
    iget-object v7, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v8, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v7, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1484
    :cond_8
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1485
    .local v4, intent:Landroid/content/Intent;
    const-string v7, "enabled"

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1486
    iget-object v7, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1487
    const/4 v7, 0x2

    iget v8, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSvCount:I

    invoke-direct {p0, v7, v8}, Lcom/motorola/server/location/MotGpsLocationProvider;->updateStatus(II)V

    .line 1490
    .end local v4           #intent:Landroid/content/Intent;
    :cond_9
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/motorola/server/location/MotGpsLocationProvider;->hasCapability(I)Z

    move-result v7

    if-nez v7, :cond_a

    iget-boolean v7, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mStarted:Z

    if-eqz v7, :cond_a

    iget v7, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mFixInterval:I

    const/16 v8, 0x3e8

    if-le v7, v8, :cond_a

    .line 1491
    const-string v7, "MotGpsLocationProvider"

    const-string v8, "got fix, hibernating"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    iget v7, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mFixInterval:I

    iget-object v8, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-direct {p0, v7, v8}, Lcom/motorola/server/location/MotGpsLocationProvider;->hibernate(ILandroid/app/PendingIntent;)V

    .line 1494
    :cond_a
    return-void

    .line 1465
    :catchall_1
    move-exception v7

    :try_start_8
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v7

    .line 1471
    :cond_b
    iget-boolean v7, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mStarted:Z

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mMvmtMon:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    if-eqz v7, :cond_7

    .line 1473
    iget-object v7, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mMvmtMon:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->monitor(Z)V

    goto :goto_7
.end method

.method private reportNmea(J)V
    .locals 9
    .parameter "timestamp"

    .prologue
    .line 1750
    iget-object v7, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 1751
    :try_start_0
    iget-object v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1752
    .local v5, size:I
    if-lez v5, :cond_0

    .line 1754
    iget-object v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mNmeaBuffer:[B

    iget-object v8, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mNmeaBuffer:[B

    array-length v8, v8

    invoke-direct {p0, v6, v8}, Lcom/motorola/server/location/MotGpsLocationProvider;->native_read_nmea([BI)I

    move-result v2

    .line 1755
    .local v2, length:I
    new-instance v4, Ljava/lang/String;

    iget-object v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mNmeaBuffer:[B

    const/4 v8, 0x0

    invoke-direct {v4, v6, v8, v2}, Ljava/lang/String;-><init>([BII)V

    .line 1757
    .local v4, nmea:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 1758
    iget-object v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/server/location/MotGpsLocationProvider$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1760
    .local v3, listener:Lcom/motorola/server/location/MotGpsLocationProvider$Listener;
    :try_start_1
    iget-object v6, v3, Lcom/motorola/server/location/MotGpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v6, p1, p2, v4}, Landroid/location/IGpsStatusListener;->onNmeaReceived(JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1757
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1761
    :catch_0
    move-exception v0

    .line 1762
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v6, "MotGpsLocationProvider"

    const-string v8, "RemoteException in reportNmea"

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    iget-object v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1765
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 1769
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #listener:Lcom/motorola/server/location/MotGpsLocationProvider$Listener;
    .end local v4           #nmea:Ljava/lang/String;
    :cond_0
    monitor-exit v7

    .line 1770
    return-void

    .line 1769
    .end local v5           #size:I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6
.end method

.method private reportStatus(I)V
    .locals 10
    .parameter "status"

    .prologue
    .line 1500
    const-string v6, "MotGpsLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reportStatus status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    iget-object v7, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 1503
    :try_start_0
    iget-boolean v5, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mNavigating:Z

    .line 1506
    .local v5, wasNavigating:Z
    const/4 v2, 0x0

    .line 1509
    .local v2, skipIntent:Z
    const/4 v3, 0x0

    .line 1511
    .local v3, skipStatus:Z
    sparse-switch p1, :sswitch_data_0

    .line 1569
    :cond_0
    :goto_0
    iget-boolean v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mNavigating:Z

    if-eq v5, v6, :cond_3

    .line 1570
    if-nez v3, :cond_1

    .line 1571
    iget-boolean v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mNavigating:Z

    invoke-direct {p0, v6, v2}, Lcom/motorola/server/location/MotGpsLocationProvider;->provideStatus(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1576
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_3

    .line 1577
    iget-object v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 1578
    .local v4, uid:I
    iget-boolean v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mNavigating:Z

    if-eqz v6, :cond_2

    .line 1579
    iget-object v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v6, v4}, Lcom/android/internal/app/IBatteryStats;->noteStartGps(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1576
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1513
    .end local v1           #i:I
    .end local v4           #uid:I
    :sswitch_0
    :try_start_2
    const-string v6, "MotGpsLocationProvider"

    const-string v8, "GPS_STATUS_SESSION_BEGIN"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mNavigating:Z

    .line 1515
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mEngineOn:Z

    .line 1516
    const-string v6, "MotGpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mSilentCnt: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSilentCnt:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    iget v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSilentCnt:I

    if-lez v6, :cond_0

    .line 1518
    const/4 v3, 0x1

    .line 1519
    iget v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSilentCnt:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSilentCnt:I

    goto :goto_0

    .line 1591
    .end local v2           #skipIntent:Z
    .end local v3           #skipStatus:Z
    .end local v5           #wasNavigating:Z
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 1523
    .restart local v2       #skipIntent:Z
    .restart local v3       #skipStatus:Z
    .restart local v5       #wasNavigating:Z
    :sswitch_1
    :try_start_3
    const-string v6, "MotGpsLocationProvider"

    const-string v8, "GPS_STATUS_SESSION_END"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mNavigating:Z

    .line 1525
    const-string v6, "MotGpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mSilentCnt: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSilentCnt:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    iget v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSilentCnt:I

    if-lez v6, :cond_0

    .line 1527
    const/4 v3, 0x1

    .line 1528
    iget v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSilentCnt:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSilentCnt:I

    goto/16 :goto_0

    .line 1532
    :sswitch_2
    const-string v6, "MotGpsLocationProvider"

    const-string v8, "GPS_STATUS_ENGINE_ON"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mEngineOn:Z

    goto/16 :goto_0

    .line 1536
    :sswitch_3
    const-string v6, "MotGpsLocationProvider"

    const-string v8, "GPS_STATUS_ENGINE_OFF"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mEngineOn:Z

    .line 1538
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mNavigating:Z

    goto/16 :goto_0

    .line 1544
    :sswitch_4
    const-string v6, "MotGpsLocationProvider"

    const-string v8, "GPS_STATUS_SESSION_BEGIN_GPS_NOP"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mNavigating:Z

    .line 1546
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mEngineOn:Z

    .line 1547
    const/4 v2, 0x1

    .line 1548
    const-string v6, "MotGpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mSilentCnt: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSilentCnt:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    iget v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSilentCnt:I

    if-lez v6, :cond_0

    .line 1550
    const/4 v3, 0x1

    .line 1551
    iget v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSilentCnt:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSilentCnt:I

    goto/16 :goto_0

    .line 1555
    :sswitch_5
    const-string v6, "MotGpsLocationProvider"

    const-string v8, "GPS_STATUS_SESSION_END_GPS_NOP"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mNavigating:Z

    .line 1557
    const/4 v2, 0x1

    .line 1558
    const-string v6, "MotGpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mSilentCnt: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSilentCnt:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    iget v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSilentCnt:I

    if-lez v6, :cond_0

    .line 1560
    const/4 v3, 0x1

    .line 1561
    iget v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSilentCnt:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSilentCnt:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 1581
    .restart local v1       #i:I
    .restart local v4       #uid:I
    :cond_2
    :try_start_4
    iget-object v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v6, v4}, Lcom/android/internal/app/IBatteryStats;->noteStopGps(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    .line 1584
    .end local v1           #i:I
    .end local v4           #uid:I
    :catch_0
    move-exception v0

    .line 1585
    .local v0, e:Landroid/os/RemoteException;
    :try_start_5
    const-string v6, "MotGpsLocationProvider"

    const-string v8, "RemoteException in reportStatus"

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1592
    return-void

    .line 1511
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x64 -> :sswitch_4
        0x65 -> :sswitch_5
    .end sparse-switch
.end method

.method private reportSvStatus()V
    .locals 17

    .prologue
    .line 1626
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSaving:Z

    if-eqz v1, :cond_1

    .line 1627
    const-string v1, "MotGpsLocationProvider"

    const-string v3, "ignoring reportSvStatus in saving mode"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    :cond_0
    :goto_0
    return-void

    .line 1631
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSvs:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSnrs:[F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSvElevations:[F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSvAzimuths:[F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSvMasks:[I

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/motorola/server/location/MotGpsLocationProvider;->native_read_sv_status([I[F[F[F[I)I

    move-result v2

    .line 1633
    .local v2, svCount:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v15

    .line 1634
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 1635
    .local v14, size:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    if-ge v11, v14, :cond_2

    .line 1636
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/motorola/server/location/MotGpsLocationProvider$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1638
    .local v13, listener:Lcom/motorola/server/location/MotGpsLocationProvider$Listener;
    :try_start_1
    iget-object v1, v13, Lcom/motorola/server/location/MotGpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSvs:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSnrs:[F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSvElevations:[F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSvAzimuths:[F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSvMasks:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSvMasks:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSvMasks:[I

    const/16 v16, 0x2

    aget v9, v9, v16

    invoke-interface/range {v1 .. v9}, Landroid/location/IGpsStatusListener;->onSvStatusChanged(I[I[F[F[FIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1635
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1641
    :catch_0
    move-exception v10

    .line 1642
    .local v10, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v1, "MotGpsLocationProvider"

    const-string v3, "RemoteException in reportSvInfo"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1645
    add-int/lit8 v14, v14, -0x1

    goto :goto_2

    .line 1648
    .end local v10           #e:Landroid/os/RemoteException;
    .end local v13           #listener:Lcom/motorola/server/location/MotGpsLocationProvider$Listener;
    :cond_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1666
    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mStatus:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSvMasks:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/motorola/server/location/MotGpsLocationProvider;->updateStatus(II)V

    .line 1668
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mNavigating:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mStatus:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mLastFixTime:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mLastFixTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x2710

    cmp-long v1, v3, v5

    if-lez v1, :cond_0

    .line 1671
    new-instance v12, Landroid/content/Intent;

    const-string v1, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v12, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1672
    .local v12, intent:Landroid/content/Intent;
    const-string v1, "enabled"

    const/4 v3, 0x0

    invoke-virtual {v12, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1673
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1674
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSvCount:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/motorola/server/location/MotGpsLocationProvider;->updateStatus(II)V

    .line 1676
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mMvmtMon:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mMvmtMon:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    invoke-virtual {v1}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->isMonitoring()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1677
    const-string v1, "MotGpsLocationProvider"

    const-string v3, "reportSvStatus(), calling updateNoFix()"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mMvmtMon:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    invoke-virtual {v1}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->stop()V

    .line 1679
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/server/location/MotGpsLocationProvider;->mMvmtMon:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    invoke-virtual {v1}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->updateNoFix()V

    goto/16 :goto_0

    .line 1648
    .end local v11           #i:I
    .end local v12           #intent:Landroid/content/Intent;
    .end local v14           #size:I
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private requestRefLocation(I)V
    .locals 10
    .parameter "flags"

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x3

    .line 1927
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 1929
    .local v8, phone:Landroid/telephony/TelephonyManager;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-ne v0, v9, :cond_3

    .line 1930
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v6

    check-cast v6, Landroid/telephony/gsm/GsmCellLocation;

    .line 1931
    .local v6, gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v6, :cond_2

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-ne v0, v9, :cond_2

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_2

    .line 1935
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1936
    .local v2, mcc:I
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1937
    .local v3, mnc:I
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v7

    .line 1938
    .local v7, networkType:I
    if-eq v7, v5, :cond_0

    const/16 v0, 0x8

    if-eq v7, v0, :cond_0

    const/16 v0, 0x9

    if-eq v7, v0, :cond_0

    const/16 v0, 0xa

    if-ne v7, v0, :cond_1

    .line 1942
    :cond_0
    const/4 v1, 0x2

    .line 1946
    .local v1, type:I
    :goto_0
    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v4

    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/server/location/MotGpsLocationProvider;->native_agps_set_ref_location_cellid(IIIII)V

    .line 1955
    .end local v1           #type:I
    .end local v2           #mcc:I
    .end local v3           #mnc:I
    .end local v6           #gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    .end local v7           #networkType:I
    :goto_1
    return-void

    .line 1944
    .restart local v2       #mcc:I
    .restart local v3       #mnc:I
    .restart local v6       #gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    .restart local v7       #networkType:I
    :cond_1
    const/4 v1, 0x1

    .restart local v1       #type:I
    goto :goto_0

    .line 1949
    .end local v1           #type:I
    .end local v2           #mcc:I
    .end local v3           #mnc:I
    .end local v7           #networkType:I
    :cond_2
    const-string v0, "MotGpsLocationProvider"

    const-string v4, "Error getting cell location info."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1953
    .end local v6           #gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    :cond_3
    const-string v0, "MotGpsLocationProvider"

    const-string v4, "CDMA not supported."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private requestSetID(I)V
    .locals 6
    .parameter "flags"

    .prologue
    .line 1886
    iget-object v4, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1888
    .local v2, phone:Landroid/telephony/TelephonyManager;
    const/4 v3, 0x0

    .line 1889
    .local v3, type:I
    const-string v0, ""

    .line 1891
    .local v0, data:Ljava/lang/String;
    and-int/lit8 v4, p1, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 1892
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 1893
    .local v1, data_temp:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 1911
    .end local v1           #data_temp:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-direct {p0, v3, v0}, Lcom/motorola/server/location/MotGpsLocationProvider;->native_agps_set_id(ILjava/lang/String;)V

    .line 1912
    return-void

    .line 1897
    .restart local v1       #data_temp:Ljava/lang/String;
    :cond_1
    move-object v0, v1

    .line 1898
    const/4 v3, 0x1

    goto :goto_0

    .line 1901
    .end local v1           #data_temp:Ljava/lang/String;
    :cond_2
    and-int/lit8 v4, p1, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 1902
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 1903
    .restart local v1       #data_temp:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1907
    move-object v0, v1

    .line 1908
    const/4 v3, 0x2

    goto :goto_0
.end method

.method private requestUtcTime()V
    .locals 3

    .prologue
    .line 1919
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/motorola/server/location/MotGpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1920
    return-void
.end method

.method private sendMessage(IILjava/lang/Object;)V
    .locals 5
    .parameter "message"
    .parameter "arg"
    .parameter "obj"

    .prologue
    .line 1959
    iget-object v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 1960
    :try_start_0
    iget v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mPendingMessageBits:I

    const/4 v3, 0x1

    shl-int/2addr v3, p1

    or-int/2addr v1, v3

    iput v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mPendingMessageBits:I

    .line 1961
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v3, 0x1d4c0

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1962
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1963
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1964
    .local v0, m:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1965
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1966
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1967
    monitor-exit v2

    .line 1968
    return-void

    .line 1967
    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setEngineCapabilities(I)V
    .locals 1
    .parameter "capabilities"

    .prologue
    .line 1776
    iput p1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mEngineCapabilities:I

    .line 1778
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/motorola/server/location/MotGpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mPeriodicTimeInjection:Z

    if-nez v0, :cond_0

    .line 1779
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mPeriodicTimeInjection:Z

    .line 1780
    invoke-direct {p0}, Lcom/motorola/server/location/MotGpsLocationProvider;->requestUtcTime()V

    .line 1782
    :cond_0
    return-void
.end method

.method private declared-synchronized startNavigating(ZZ)V
    .locals 1
    .parameter "singleShot"
    .parameter "silent"

    .prologue
    .line 1267
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/motorola/server/location/MotGpsLocationProvider;->startNavigating_Locked(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1268
    monitor-exit p0

    return-void

    .line 1267
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startNavigating_Locked(ZZ)V
    .locals 9
    .parameter "singleShot"
    .parameter "silent"

    .prologue
    const v8, 0xea60

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 1271
    const-string v0, "MotGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startNavigating s: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    iget-boolean v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mStarted:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSaving:Z

    if-nez v0, :cond_1

    .line 1273
    iput-boolean v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mStarted:Z

    .line 1274
    iput-boolean p1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSingleShot:Z

    .line 1275
    iput v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mPositionMode:I

    .line 1277
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assisted_gps_enabled"

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    #if-eqz v0, :cond_0

    .line 1279
    if-eqz p1, :cond_2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/motorola/server/location/MotGpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1280
    iput v7, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mPositionMode:I

    .line 1286
    :cond_0
    :goto_0
    invoke-direct {p0, v6}, Lcom/motorola/server/location/MotGpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v3, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mFixInterval:I

    .line 1287
    .local v3, interval:I
    :goto_1
    iget v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mPositionMode:I

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/motorola/server/location/MotGpsLocationProvider;->native_set_position_mode(IIIII)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1289
    iput-boolean v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mStarted:Z

    .line 1290
    const-string v0, "MotGpsLocationProvider"

    const-string v1, "set_position_mode failed in startNavigating()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    .end local v3           #interval:I
    :cond_1
    :goto_2
    return-void

    .line 1281
    :cond_2
    invoke-direct {p0, v7}, Lcom/motorola/server/location/MotGpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1282
    iput v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mPositionMode:I

    goto :goto_0

    .line 1286
    :cond_3
    const/16 v3, 0x3e8

    goto :goto_1

    .line 1295
    .restart local v3       #interval:I
    :cond_4
    if-eqz p2, :cond_5

    .line 1296
    iget v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSilentCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSilentCnt:I

    .line 1297
    const-string v0, "MotGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startNavigating scount: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSilentCnt:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    :cond_5
    invoke-direct {p0}, Lcom/motorola/server/location/MotGpsLocationProvider;->native_start()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1301
    iput-boolean v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mStarted:Z

    .line 1302
    const-string v0, "MotGpsLocationProvider"

    const-string v1, "native_start failed in startNavigating()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1306
    :cond_6
    if-nez p2, :cond_1

    .line 1310
    iput v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mTTFF:I

    .line 1311
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mLastFixTime:J

    .line 1314
    invoke-direct {p0, v6, v2}, Lcom/motorola/server/location/MotGpsLocationProvider;->updateStatus(II)V

    .line 1315
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mFixRequestTime:J

    .line 1316
    invoke-direct {p0, v6}, Lcom/motorola/server/location/MotGpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1319
    iget v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mFixInterval:I

    if-lt v0, v8, :cond_7

    .line 1320
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/32 v4, 0xea60

    add-long/2addr v1, v4

    iget-object v4, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v7, v1, v2, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1326
    :cond_7
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mMvmtMon:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mMvmtMon:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    invoke-virtual {v0}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->isMonitoring()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1327
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mMvmtMon:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    invoke-virtual {v0, v8}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->setNoFixAlarm(I)V

    goto :goto_2
.end method

.method private declared-synchronized stopNavigating(Z)V
    .locals 1
    .parameter "silent"

    .prologue
    .line 1333
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/motorola/server/location/MotGpsLocationProvider;->stopNavigating_Locked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1334
    monitor-exit p0

    return-void

    .line 1333
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private stopNavigating_Locked(Z)V
    .locals 7
    .parameter "silent"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1337
    const-string v0, "MotGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopNavigating s: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    iget-boolean v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mStarted:Z

    if-eqz v0, :cond_3

    .line 1339
    iput-boolean v3, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mStarted:Z

    .line 1340
    iput-boolean v3, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSingleShot:Z

    .line 1343
    if-eqz p1, :cond_0

    .line 1344
    iget v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSilentCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSilentCnt:I

    .line 1345
    const-string v0, "MotGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopNavigating scount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSilentCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    :cond_0
    invoke-direct {p0}, Lcom/motorola/server/location/MotGpsLocationProvider;->native_stop()Z

    .line 1350
    if-eqz p1, :cond_2

    .line 1372
    :cond_1
    :goto_0
    return-void

    .line 1354
    :cond_2
    iput v3, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mTTFF:I

    .line 1355
    iput-wide v5, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mLastFixTime:J

    .line 1356
    iput v3, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mLocationFlags:I

    .line 1359
    invoke-direct {p0, v4, v3}, Lcom/motorola/server/location/MotGpsLocationProvider;->updateStatus(II)V

    goto :goto_0

    .line 1360
    :cond_3
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSaving:Z

    if-eqz v0, :cond_1

    .line 1361
    iput v3, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mTTFF:I

    .line 1362
    iput-wide v5, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mLastFixTime:J

    .line 1363
    iput v3, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mLocationFlags:I

    .line 1365
    invoke-direct {p0, v3, v3}, Lcom/motorola/server/location/MotGpsLocationProvider;->provideStatus(ZZ)V

    .line 1368
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mMvmtMon:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    if-eqz v0, :cond_1

    .line 1369
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mMvmtMon:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    invoke-virtual {v0, v3, v4}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->updateSavings(ZZ)Z

    goto :goto_0
.end method

.method private updateStatus(II)V
    .locals 2
    .parameter "status"
    .parameter "svCount"

    .prologue
    .line 1055
    iget v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mStatus:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSvCount:I

    if-eq p2, v0, :cond_1

    .line 1056
    :cond_0
    iput p1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mStatus:I

    .line 1057
    iput p2, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSvCount:I

    .line 1058
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v1, "satellites"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1059
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mStatusUpdateTime:J

    .line 1061
    :cond_1
    return-void
.end method

.method private xtraDownloadRequest()V
    .locals 3

    .prologue
    .line 1788
    const-string v0, "MotGpsLocationProvider"

    const-string v1, "xtraDownloadRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/motorola/server/location/MotGpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1790
    return-void
.end method


# virtual methods
.method public addListener(I)V
    .locals 5
    .parameter "uid"

    .prologue
    .line 1158
    iget-object v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 1159
    :try_start_0
    iget v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mPendingListenerMessages:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mPendingListenerMessages:I

    .line 1160
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v3, 0x1d4c0

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1161
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1162
    .local v0, m:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1163
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1164
    monitor-exit v2

    .line 1165
    return-void

    .line 1164
    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public disable()V
    .locals 4

    .prologue
    .line 1017
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mHandler:Landroid/os/Handler;

    monitor-enter v1

    .line 1018
    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v0, v2, v3}, Lcom/motorola/server/location/MotGpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1019
    monitor-exit v1

    .line 1020
    return-void

    .line 1019
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enable()V
    .locals 4

    .prologue
    .line 988
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mHandler:Landroid/os/Handler;

    monitor-enter v1

    .line 989
    const/4 v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v0, v2, v3}, Lcom/motorola/server/location/MotGpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 990
    monitor-exit v1

    .line 991
    return-void

    .line 990
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableLocationTracking(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 1069
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mHandler:Landroid/os/Handler;

    monitor-enter v1

    .line 1070
    const/4 v2, 0x3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v2, v0, v3}, Lcom/motorola/server/location/MotGpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1071
    monitor-exit v1

    .line 1072
    return-void

    .line 1070
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1071
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAccuracy()I
    .locals 1

    .prologue
    .line 979
    const/4 v0, 0x1

    return v0
.end method

.method public getGpsStatusProvider()Landroid/location/IGpsStatusProvider;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    return-object v0
.end method

.method public getInternalState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1135
    invoke-direct {p0}, Lcom/motorola/server/location/MotGpsLocationProvider;->native_get_internal_state()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 742
    const-string v0, "gps"

    return-object v0
.end method

.method public getNetInitiatedListener()Landroid/location/INetInitiatedListener;
    .locals 1

    .prologue
    .line 1811
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    return-object v0
.end method

.method public getPowerRequirement()I
    .locals 1

    .prologue
    .line 961
    const/4 v0, 0x3

    return v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .locals 2
    .parameter "extras"

    .prologue
    .line 1048
    if-eqz p1, :cond_0

    .line 1049
    const-string v0, "satellites"

    iget v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSvCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1051
    :cond_0
    iget v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mStatus:I

    return v0
.end method

.method public getStatusUpdateTime()J
    .locals 2

    .prologue
    .line 1064
    iget-wide v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mStatusUpdateTime:J

    return-wide v0
.end method

.method public hasMonetaryCost()Z
    .locals 1

    .prologue
    .line 921
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1044
    iget-boolean v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mEnabled:Z

    return v0
.end method

.method public meetsCriteria(Landroid/location/Criteria;)Z
    .locals 2
    .parameter "criteria"

    .prologue
    const/4 v0, 0x1

    .line 969
    invoke-virtual {p1}, Landroid/location/Criteria;->getPowerRequirement()I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeListener(I)V
    .locals 5
    .parameter "uid"

    .prologue
    .line 1186
    iget-object v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 1187
    :try_start_0
    iget v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mPendingListenerMessages:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mPendingListenerMessages:I

    .line 1188
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v3, 0x1d4c0

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1189
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1190
    .local v0, m:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1191
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1192
    monitor-exit v2

    .line 1193
    return-void

    .line 1192
    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reportNiNotification(IIIIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 10
    .parameter "notificationId"
    .parameter "niType"
    .parameter "notifyFlags"
    .parameter "timeout"
    .parameter "defaultResponse"
    .parameter "requestorId"
    .parameter "text"
    .parameter "requestorIdEncoding"
    .parameter "textEncoding"
    .parameter "extras"

    .prologue
    .line 1828
    const-string v7, "MotGpsLocationProvider"

    const-string v8, "reportNiNotification: entered"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    const-string v7, "MotGpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notificationId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", niType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", notifyFlags: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", timeout: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", defaultResponse: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    const-string v7, "MotGpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "requestorId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", text: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", requestorIdEncoding: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", textEncoding: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p9

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    new-instance v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    invoke-direct {v6}, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;-><init>()V

    .line 1842
    .local v6, notification:Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    iput p1, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    .line 1843
    iput p2, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    .line 1844
    and-int/lit8 v7, p3, 0x1

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    :goto_0
    iput-boolean v7, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    .line 1845
    and-int/lit8 v7, p3, 0x2

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    :goto_1
    iput-boolean v7, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    .line 1846
    and-int/lit8 v7, p3, 0x4

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    :goto_2
    iput-boolean v7, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    .line 1847
    iput p4, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    .line 1848
    iput p5, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->defaultResponse:I

    .line 1849
    move-object/from16 v0, p6

    iput-object v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    .line 1850
    move-object/from16 v0, p7

    iput-object v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    .line 1851
    move/from16 v0, p8

    iput v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    .line 1852
    move/from16 v0, p9

    iput v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    .line 1856
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1858
    .local v1, bundle:Landroid/os/Bundle;
    if-nez p10, :cond_0

    const-string p10, ""

    .line 1859
    :cond_0
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 1862
    .local v4, extraProp:Ljava/util/Properties;
    :try_start_0
    new-instance v7, Ljava/io/StringReader;

    move-object/from16 v0, p10

    invoke-direct {v7, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1869
    :goto_3
    invoke-virtual {v4}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1871
    .local v3, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1844
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v3           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v4           #extraProp:Ljava/util/Properties;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 1845
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 1846
    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 1864
    .restart local v1       #bundle:Landroid/os/Bundle;
    .restart local v4       #extraProp:Ljava/util/Properties;
    :catch_0
    move-exception v2

    .line 1866
    .local v2, e:Ljava/io/IOException;
    const-string v7, "MotGpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "reportNiNotification cannot parse extras data: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p10

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1874
    .end local v2           #e:Ljava/io/IOException;
    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_4
    iput-object v1, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->extras:Landroid/os/Bundle;

    .line 1876
    iget-object v7, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v7, v6}, Lcom/android/internal/location/GpsNetInitiatedHandler;->handleNiNotification(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    .line 1877
    return-void
.end method

.method public requestSingleShotFix()Z
    .locals 4

    .prologue
    .line 1097
    iget-boolean v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mStarted:Z

    if-eqz v1, :cond_0

    .line 1099
    const/4 v1, 0x0

    .line 1106
    :goto_0
    return v1

    .line 1101
    :cond_0
    iget-object v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mHandler:Landroid/os/Handler;

    monitor-enter v2

    .line 1102
    :try_start_0
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1103
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1104
    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1105
    monitor-exit v2

    .line 1106
    const/4 v1, 0x1

    goto :goto_0

    .line 1105
    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requiresCell()Z
    .locals 1

    .prologue
    .line 912
    const/4 v0, 0x0

    return v0
.end method

.method public requiresNetwork()Z
    .locals 1

    .prologue
    .line 750
    const/4 v0, 0x1

    return v0
.end method

.method public requiresSatellite()Z
    .locals 1

    .prologue
    .line 903
    const/4 v0, 0x1

    return v0
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 6
    .parameter "command"
    .parameter "extras"

    .prologue
    .line 1215
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1216
    .local v0, identity:J
    const/4 v2, 0x0

    .line 1218
    .local v2, result:Z
    const-string v3, "delete_aiding_data"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1219
    invoke-direct {p0, p2}, Lcom/motorola/server/location/MotGpsLocationProvider;->deleteAidingData(Landroid/os/Bundle;)Z

    move-result v2

    .line 1232
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1233
    return v2

    .line 1220
    :cond_1
    const-string v3, "force_time_injection"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1221
    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Lcom/motorola/server/location/MotGpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1222
    const/4 v2, 0x1

    goto :goto_0

    .line 1223
    :cond_2
    const-string v3, "force_xtra_injection"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1224
    iget-boolean v3, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mSupportsXtra:Z

    if-eqz v3, :cond_0

    .line 1225
    invoke-direct {p0}, Lcom/motorola/server/location/MotGpsLocationProvider;->xtraDownloadRequest()V

    .line 1226
    const/4 v2, 0x1

    goto :goto_0

    .line 1229
    :cond_3
    const-string v3, "MotGpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendExtraCommand: unknown command "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMinTime(JLandroid/os/WorkSource;)V
    .locals 6
    .parameter "minTime"
    .parameter "ws"

    .prologue
    const/4 v2, 0x0

    .line 1116
    const-string v0, "MotGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMinTime "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 1119
    long-to-int v0, p1

    iput v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mFixInterval:I

    .line 1121
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mMvmtMon:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    if-eqz v0, :cond_0

    .line 1122
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mMvmtMon:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    invoke-virtual {v0}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->updateFixInterval()V

    .line 1125
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mStarted:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/motorola/server/location/MotGpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1126
    iget v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mPositionMode:I

    iget v3, p0, Lcom/motorola/server/location/MotGpsLocationProvider;->mFixInterval:I

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/motorola/server/location/MotGpsLocationProvider;->native_set_position_mode(IIIII)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1128
    const-string v0, "MotGpsLocationProvider"

    const-string v1, "set_position_mode failed in setMinTime()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    :cond_1
    return-void
.end method

.method public supportsAltitude()Z
    .locals 1

    .prologue
    .line 931
    const/4 v0, 0x1

    return v0
.end method

.method public supportsBearing()Z
    .locals 1

    .prologue
    .line 951
    const/4 v0, 0x1

    return v0
.end method

.method public supportsSpeed()Z
    .locals 1

    .prologue
    .line 941
    const/4 v0, 0x1

    return v0
.end method

.method public updateLocation(Landroid/location/Location;)V
    .locals 2
    .parameter "location"

    .prologue
    .line 887
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/motorola/server/location/MotGpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 888
    return-void
.end method

.method public updateNetworkState(ILandroid/net/NetworkInfo;)V
    .locals 1
    .parameter "state"
    .parameter "info"

    .prologue
    .line 754
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Lcom/motorola/server/location/MotGpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 755
    return-void
.end method
