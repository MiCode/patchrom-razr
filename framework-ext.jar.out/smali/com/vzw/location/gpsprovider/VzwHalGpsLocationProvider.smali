.class public Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;
.super Ljava/lang/Object;
.source "VzwHalGpsLocationProvider.java"

# interfaces
.implements Lcom/vzw/location/gpsprovider/IVzwHalGpsLocationProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider$AgpsEventThread;
    }
.end annotation


# static fields
.field private static final AGPS_DATA_CONNECTION_CLOSED:I = 0x0

.field private static final AGPS_DATA_CONNECTION_OPEN:I = 0x2

.field private static final AGPS_DATA_CONNECTION_OPENING:I = 0x1

.field private static final AGPS_TYPE_C2K:I = 0x2

.field private static final AGPS_TYPE_SUPL:I = 0x1

.field private static final ALARM_TIMEOUT:Ljava/lang/String; = "com.motorola.internal.location.ALARM_TIMEOUT"

.field private static final ALARM_WAKEUP:Ljava/lang/String; = "com.motorola.internal.location.ALARM_WAKEUP"

.field private static final ALMANAC_MASK:I = 0x1

.field private static final DEBUG:Z = true

.field public static final ENGINE_STATUS_ENGINE_OFF:I = 0x4

.field public static final ENGINE_STATUS_ENGINE_ON:I = 0x3

.field public static final ENGINE_STATUS_NONE:I = 0x0

.field public static final ENGINE_STATUS_SESSION_BEGIN:I = 0x1

.field public static final ENGINE_STATUS_SESSION_BEGIN_GPS_NOP:I = 0x64

.field public static final ENGINE_STATUS_SESSION_END:I = 0x2

.field public static final ENGINE_STATUS_SESSION_END_GPS_NOP:I = 0x65

.field private static final EPHEMERIS_MASK:I = 0x0

.field public static final EXTRA_ENABLED:Ljava/lang/String; = "enabled"

.field private static final FORCE_INJECT_XTRA:I = 0x1

.field private static final GPS_AGPS_DATA_CONNECTED:I = 0x3

.field private static final GPS_AGPS_DATA_CONN_DONE:I = 0x4

.field private static final GPS_AGPS_DATA_CONN_FAILED:I = 0x5

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

.field public static final GPS_ENABLED_CHANGE_ACTION:Ljava/lang/String; = "android.location.GPS_ENABLED_CHANGE"

.field public static final GPS_FIX_CHANGE_ACTION:Ljava/lang/String; = "android.location.GPS_FIX_CHANGE"

.field private static final GPS_RELEASE_AGPS_DATA_CONN:I = 0x2

.field private static final GPS_REQUEST_AGPS_DATA_CONN:I = 0x1

.field private static final LOCATION_HAS_ACCURACY:I = 0x10

.field private static final LOCATION_HAS_ALTITUDE:I = 0x2

.field private static final LOCATION_HAS_BEARING:I = 0x8

.field private static final LOCATION_HAS_LAT_LONG:I = 0x1

.field private static final LOCATION_HAS_SPEED:I = 0x4

.field private static final LOCATION_INVALID:I = 0x0

.field private static final MAX_SVS:I = 0x20

.field private static final MIN_FIX_COUNT:I = 0xa

.field private static final NO_FIX_TIMEOUT:I = 0x3c

.field private static final RECENT_FIX_TIMEOUT:J = 0xaL

.field private static final TAG:Ljava/lang/String; = "VzwHalGpsLocationProvider"

.field private static final USED_FOR_FIX_MASK:I = 0x2

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "VzwHalGpsLocationProvider"


# instance fields
.field private mAGpsApn:Ljava/lang/String;

.field private mAGpsDataConnectionState:I

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReciever:Landroid/content/BroadcastReceiver;

.field private final mClientUids:Landroid/util/SparseIntArray;

.field private final mConnMgr:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mEngineOn:Z

.field private mEventThread:Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider$AgpsEventThread;

.field private mFixCount:I

.field private mFixInterval:I

.field private mFixRequestTime:J

.field private final mHandler:Landroid/os/Handler;

.field private mLastFixTime:J

.field private mLastPdeAddress:Ljava/net/InetSocketAddress;

.field mLastSvStatus:Lcom/vzw/location/gpsprovider/VzwHalSvInfo;

.field private mLocation:Lcom/vzw/location/gpsprovider/VzwHalLocation;

.field private mLocationExtras:Landroid/os/Bundle;

.field mLocationManagerCallbacks:Lcom/vzw/location/gpsprovider/IVzwHalGpsCallback;

.field private mNavigating:Z

.field private mNetworkAvailable:Z

.field private mPendingSkip:I

.field private mSetC2KServer:Z

.field private mSnrs:[F

.field private mStarted:Z

.field private mStatus:I

.field private mStatusUpdateTime:J

.field private mSupportsXtra:Z

.field private mSvAzimuths:[F

.field private mSvCount:I

.field private mSvElevations:[F

.field private mSvHasAlmanac:[I

.field private mSvHasEphemeris:[I

.field private mSvMasks:[I

.field private mSvUsedInFix:[I

.field private mSvs:[I

.field private mTTFF:I

.field private final mTimeoutIntent:Landroid/app/PendingIntent;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWakeupIntent:Landroid/app/PendingIntent;

.field svStatus:Lcom/vzw/location/gpsprovider/VzwHalSvInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1113
    invoke-static {}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->class_init_native()V

    .line 1114
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x20

    .line 274
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput v6, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mStatus:I

    .line 152
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mStatusUpdateTime:J

    .line 176
    iput v6, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mFixInterval:I

    .line 185
    iput v5, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mPendingSkip:I

    .line 188
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mFixRequestTime:J

    .line 190
    iput v5, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mTTFF:I

    .line 196
    new-instance v2, Lcom/vzw/location/gpsprovider/VzwHalLocation;

    invoke-direct {v2}, Lcom/vzw/location/gpsprovider/VzwHalLocation;-><init>()V

    iput-object v2, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mLocation:Lcom/vzw/location/gpsprovider/VzwHalLocation;

    .line 197
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    .line 220
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    .line 223
    new-instance v2, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider$1;

    invoke-direct {v2, p0}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider$1;-><init>(Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;)V

    iput-object v2, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mHandler:Landroid/os/Handler;

    .line 234
    new-instance v2, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider$2;

    invoke-direct {v2, p0}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider$2;-><init>(Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;)V

    iput-object v2, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    .line 1102
    new-array v2, v4, [I

    iput-object v2, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSvs:[I

    .line 1103
    new-array v2, v4, [F

    iput-object v2, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSnrs:[F

    .line 1104
    new-array v2, v4, [F

    iput-object v2, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSvElevations:[F

    .line 1105
    new-array v2, v4, [F

    iput-object v2, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSvAzimuths:[F

    .line 1106
    new-array v2, v4, [I

    iput-object v2, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSvUsedInFix:[I

    .line 1107
    new-array v2, v4, [I

    iput-object v2, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSvHasEphemeris:[I

    .line 1108
    new-array v2, v4, [I

    iput-object v2, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSvHasAlmanac:[I

    .line 1109
    const/4 v2, 0x3

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSvMasks:[I

    .line 275
    iput-object p1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mContext:Landroid/content/Context;

    .line 277
    iget-object v2, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 279
    .local v1, powerManager:Landroid/os/PowerManager;
    const-string v2, "VzwHalGpsLocationProvider"

    invoke-virtual {v1, v6, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 281
    iget-object v2, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 282
    iget-object v2, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.motorola.internal.location.ALARM_WAKEUP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v5, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    .line 283
    iget-object v2, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.motorola.internal.location.ALARM_TIMEOUT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v5, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 285
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 286
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "com.motorola.internal.location.ALARM_WAKEUP"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 287
    const-string v2, "com.motorola.internal.location.ALARM_TIMEOUT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 288
    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 289
    iget-object v2, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 291
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 294
    const-string v2, "batteryinfo"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 295
    new-instance v2, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;

    invoke-direct {v2}, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;-><init>()V

    iput-object v2, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->svStatus:Lcom/vzw/location/gpsprovider/VzwHalSvInfo;

    .line 296
    new-instance v2, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;

    invoke-direct {v2}, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;-><init>()V

    iput-object v2, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mLastSvStatus:Lcom/vzw/location/gpsprovider/VzwHalSvInfo;

    .line 297
    return-void
.end method

.method static synthetic access$000(Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->handleXtraDataInject(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$100(Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->hibernate()V

    return-void
.end method

.method static synthetic access$200(Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mAGpsDataConnectionState:I

    return v0
.end method

.method static synthetic access$302(Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mAGpsDataConnectionState:I

    return p1
.end method

.method static synthetic access$400(Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->native_agps_data_conn_open(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mEnabled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->native_wait_for_event()V

    return-void
.end method

.method private static native class_init_native()V
.end method

.method private clearSvArrays()V
    .locals 4

    .prologue
    const/high16 v3, -0x4080

    const/4 v2, -0x1

    .line 876
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 877
    iget-object v1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSvs:[I

    aput v2, v1, v0

    .line 878
    iget-object v1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSnrs:[F

    aput v3, v1, v0

    .line 879
    iget-object v1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSvElevations:[F

    aput v3, v1, v0

    .line 880
    iget-object v1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSvAzimuths:[F

    aput v3, v1, v0

    .line 881
    iget-object v1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSvUsedInFix:[I

    aput v2, v1, v0

    .line 882
    iget-object v1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSvHasEphemeris:[I

    aput v2, v1, v0

    .line 883
    iget-object v1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSvHasAlmanac:[I

    aput v2, v1, v0

    .line 876
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 885
    :cond_0
    return-void
.end method

.method private deleteAidingData(Landroid/os/Bundle;)Z
    .locals 2
    .parameter "extras"

    .prologue
    .line 533
    if-nez p1, :cond_1

    .line 534
    const v0, 0xffff

    .line 564
    .local v0, flags:I
    :cond_0
    :goto_0
    if-eqz v0, :cond_e

    .line 565
    invoke-direct {p0, v0}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->native_delete_aiding_data(I)V

    .line 566
    const/4 v1, 0x1

    .line 569
    :goto_1
    return v1

    .line 536
    .end local v0           #flags:I
    :cond_1
    const/4 v0, 0x0

    .line 537
    .restart local v0       #flags:I
    const-string v1, "ephemeris"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 538
    or-int/lit8 v0, v0, 0x1

    .line 539
    :cond_2
    const-string v1, "almanac"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 540
    or-int/lit8 v0, v0, 0x2

    .line 541
    :cond_3
    const-string v1, "position"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 542
    or-int/lit8 v0, v0, 0x4

    .line 543
    :cond_4
    const-string v1, "time"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 544
    or-int/lit8 v0, v0, 0x8

    .line 545
    :cond_5
    const-string v1, "iono"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 546
    or-int/lit8 v0, v0, 0x10

    .line 547
    :cond_6
    const-string v1, "utc"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 548
    or-int/lit8 v0, v0, 0x20

    .line 549
    :cond_7
    const-string v1, "health"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 550
    or-int/lit8 v0, v0, 0x40

    .line 551
    :cond_8
    const-string v1, "svdir"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 552
    or-int/lit16 v0, v0, 0x80

    .line 553
    :cond_9
    const-string v1, "svsteer"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 554
    or-int/lit16 v0, v0, 0x100

    .line 555
    :cond_a
    const-string v1, "sadata"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 556
    or-int/lit16 v0, v0, 0x200

    .line 557
    :cond_b
    const-string v1, "rti"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 558
    or-int/lit16 v0, v0, 0x400

    .line 559
    :cond_c
    const-string v1, "celldb-info"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 560
    const v1, 0x8000

    or-int/2addr v0, v1

    .line 561
    :cond_d
    const-string v1, "all"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 562
    const v1, 0xffff

    or-int/2addr v0, v1

    goto/16 :goto_0

    .line 569
    :cond_e
    const/4 v1, 0x0

    goto/16 :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/vzw/location/gpsprovider/IVzwHalGpsLocationProvider;
    .locals 1
    .parameter "context"

    .prologue
    .line 309
    new-instance v0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;

    invoke-direct {v0, p0}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private handleXtraDataInject(Landroid/os/Bundle;)V
    .locals 4
    .parameter "extras"

    .prologue
    .line 1034
    const-string v1, "xtraData"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 1035
    .local v0, data:[B
    if-eqz v0, :cond_0

    .line 1036
    const-string v1, "VzwHalGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling inject_xtra data length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    array-length v1, v0

    invoke-direct {p0, v0, v1}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->native_inject_xtra_data([BI)V

    .line 1040
    :cond_0
    return-void
.end method

.method private hibernate()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 629
    const-string v0, "VzwHalGpsLocationProvider"

    const-string v1, "hibernate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    invoke-virtual {p0, v2}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->stopNavigating(Z)V

    .line 631
    iput v2, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mFixCount:I

    .line 632
    iget-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 633
    iget-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 634
    iget-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget v4, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mFixInterval:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 637
    return-void
.end method

.method public static isSupported()Z
    .locals 1

    .prologue
    .line 271
    invoke-static {}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->native_is_supported()Z

    move-result v0

    return v0
.end method

.method private native native_agps_data_conn_closed()V
.end method

.method private native native_agps_data_conn_failed()V
.end method

.method private native native_agps_data_conn_open(Ljava/lang/String;)V
.end method

.method private native native_cleanup()V
.end method

.method private native native_delete_aiding_data(I)V
.end method

.method private native native_disable()V
.end method

.method private native native_init()Z
.end method

.method private native native_inject_time(JJI)V
.end method

.method private native native_inject_xtra_data([BI)V
.end method

.method private static native native_is_supported()Z
.end method

.method private native native_read_sv_status([I[F[F[F[I)I
.end method

.method private native native_set_agps_server(ILjava/lang/String;I)V
.end method

.method private native native_set_fix_frequency(I)V
.end method

.method private native native_set_gps_config(IJJJJ)V
.end method

.method private native native_start()Z
.end method

.method private native native_stop()Z
.end method

.method private native native_supports_xtra()Z
.end method

.method private native native_wait_for_event()V
.end method

.method private reportAGpsStatus(II)V
    .locals 5
    .parameter "type"
    .parameter "status"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 963
    packed-switch p2, :pswitch_data_0

    .line 995
    :cond_0
    :goto_0
    return-void

    .line 965
    :pswitch_0
    iget-object v1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    const-string v2, "enableSUPL"

    invoke-virtual {v1, v3, v2}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    .line 967
    .local v0, result:I
    if-nez v0, :cond_1

    .line 968
    iget-object v1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->native_agps_data_conn_open(Ljava/lang/String;)V

    .line 969
    const/4 v1, 0x2

    iput v1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mAGpsDataConnectionState:I

    goto :goto_0

    .line 970
    :cond_1
    if-ne v0, v4, :cond_2

    .line 971
    iput v4, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mAGpsDataConnectionState:I

    goto :goto_0

    .line 973
    :cond_2
    invoke-direct {p0}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->native_agps_data_conn_failed()V

    goto :goto_0

    .line 977
    .end local v0           #result:I
    :pswitch_1
    iget v1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mAGpsDataConnectionState:I

    if-eqz v1, :cond_0

    .line 978
    iget-object v1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    const-string v2, "enableSUPL"

    invoke-virtual {v1, v3, v2}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 981
    invoke-direct {p0}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->native_agps_data_conn_closed()V

    .line 982
    iput v3, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mAGpsDataConnectionState:I

    goto :goto_0

    .line 986
    :pswitch_2
    const-string v1, "VzwHalGpsLocationProvider"

    const-string v2, "GPS_AGPS_DATA_CONNECTED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 989
    :pswitch_3
    const-string v1, "VzwHalGpsLocationProvider"

    const-string v2, "GPS_AGPS_DATA_CONN_DONE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 992
    :pswitch_4
    const-string v1, "VzwHalGpsLocationProvider"

    const-string v2, "GPS_AGPS_DATA_CONN_FAILED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 963
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private reportLocation(IDDDFFFJIIFFFFFFFFFF)V
    .locals 7
    .parameter "flags"
    .parameter "latitude"
    .parameter "longitude"
    .parameter "altitude"
    .parameter "speed"
    .parameter "bearing"
    .parameter "accuracy"
    .parameter "timestamp"
    .parameter "xflags"
    .parameter "fixMode"
    .parameter "horConf"
    .parameter "majorAxis"
    .parameter "majorAxisAngle"
    .parameter "minorAxis"
    .parameter "altWrtEllipsoid"
    .parameter "altWrtSeaLevel"
    .parameter "hdop"
    .parameter "pdop"
    .parameter "vdop"
    .parameter "magVariation"

    .prologue
    .line 648
    const-string v3, "VzwHalGpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reportLocation() lat: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", long: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " timestamp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p11

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mLastFixTime:J

    .line 653
    iget v3, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mTTFF:I

    if-nez v3, :cond_0

    and-int/lit8 v3, p1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 655
    iget-wide v3, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mLastFixTime:J

    iget-wide v5, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mFixRequestTime:J

    sub-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mTTFF:I

    .line 656
    const-string v3, "VzwHalGpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TTFF: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mTTFF:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iget-object v4, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mLocationManagerCallbacks:Lcom/vzw/location/gpsprovider/IVzwHalGpsCallback;

    monitor-enter v4

    .line 659
    :try_start_0
    iget-object v3, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mLocationManagerCallbacks:Lcom/vzw/location/gpsprovider/IVzwHalGpsCallback;

    iget v5, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mTTFF:I

    invoke-interface {v3, v5}, Lcom/vzw/location/gpsprovider/IVzwHalGpsCallback;->ReportOnFirstFix(I)V

    .line 660
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 663
    :cond_0
    iget-object v4, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mLocation:Lcom/vzw/location/gpsprovider/VzwHalLocation;

    monitor-enter v4

    .line 664
    :try_start_1
    const-string v3, "VzwHalGpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "flags: 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", xflags: 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p13 .. p13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    iget-object v3, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mLocation:Lcom/vzw/location/gpsprovider/VzwHalLocation;

    invoke-virtual {v3}, Lcom/vzw/location/gpsprovider/VzwHalLocation;->reset()V

    .line 668
    iget-object v3, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mLocation:Lcom/vzw/location/gpsprovider/VzwHalLocation;

    const-string v5, "vzw_lbs"

    invoke-virtual {v3, v5}, Lcom/vzw/location/gpsprovider/VzwHalLocation;->setProvider(Ljava/lang/String;)V

    .line 670
    and-int/lit8 v3, p1, 0x1

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    .line 671
    iget-object v3, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mLocation:Lcom/vzw/location/gpsprovider/VzwHalLocation;

    invoke-virtual {v3, p2, p3}, Lcom/vzw/location/gpsprovider/VzwHalLocation;->setLatitude(D)V

    .line 672
    iget-object v3, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mLocation:Lcom/vzw/location/gpsprovider/VzwHalLocation;

    invoke-virtual {v3, p4, p5}, Lcom/vzw/location/gpsprovider/VzwHalLocation;->setLongitude(D)V

    .line 673
    iget-object v3, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mLocation:Lcom/vzw/location/gpsprovider/VzwHalLocation;

    move-wide/from16 v0, p11

    invoke-virtual {v3, v0, v1}, Lcom/vzw/location/gpsprovider/VzwHalLocation;->setTime(J)V

    .line 676
    :cond_1
    and-int/lit8 v3, p1, 0x2

    const/4 v5, 0x2

    if-ne v3, v5, :cond_5

    .line 677
    iget-object v3, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mLocation:Lcom/vzw/location/gpsprovider/VzwHalLocation;

    invoke-virtual {v3, p6, p7}, Lcom/vzw/location/gpsprovider/VzwHalLocation;->setAltitude(D)V

    .line 680
    :goto_0
    and-int/lit8 v3, p1, 0x4

    const/4 v5, 0x4

    if-ne v3, v5, :cond_6

    .line 681
    iget-object v3, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mLocation:Lcom/vzw/location/gpsprovider/VzwHalLocation;

    invoke-virtual {v3, p8}, Lcom/vzw/location/gpsprovider/VzwHalLocation;->setSpeed(F)V

    .line 684
    :goto_1
    and-int/lit8 v3, p1, 0x8

    const/16 v5, 0x8

    if-ne v3, v5, :cond_7

    .line 685
    iget-object v3, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mLocation:Lcom/vzw/location/gpsprovider/VzwHalLocation;

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Lcom/vzw/location/gpsprovider/VzwHalLocation;->setBearing(F)V

    .line 688
    :goto_2
    and-int/lit8 v3, p1, 0x10

    const/16 v5, 0x10

    if-ne v3, v5, :cond_8

    .line 689
    iget-object v3, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mLocation:Lcom/vzw/location/gpsprovider/VzwHalLocation;

    move/from16 v0, p10

    invoke-virtual {v3, v0}, Lcom/vzw/location/gpsprovider/VzwHalLocation;->setAccuracy(F)V

    .line 693
    :goto_3
    const/high16 v3, 0x8

    and-int v3, v3, p13

    const/high16 v5, 0x8

    if-ne v3, v5, :cond_9

    .line 695
    iget-object v3, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mLocation:Lcom/vzw/location/gpsprovider/VzwHalLocation;

    move/from16 v0, p14

    invoke-virtual {v3, v0}, Lcom/vzw/location/gpsprovider/VzwHalLocation;->setFixMode(I)V

    .line 698
    :goto_4
    const/high16 v3, 0x4

    and-int v3, v3, p13

    const/high16 v5, 0x4

    if-ne v3, v5, :cond_a

    .line 700
    iget-object v3, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mLocation:Lcom/vzw/location/gpsprovider/VzwHalLocation;

    move/from16 v0, p15

    invoke-virtual {v3, v0}, Lcom/vzw/location/gpsprovider/VzwHalLocation;->setHorizontalConfidence(F)V

    .line 701
    iget-object v3, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mLocation:Lcom/vzw/location/gpsprovider/VzwHalLocation;

    move/from16 v0, p16

    invoke-virtual {v3, v0}, Lcom/vzw/location/gpsprovider/VzwHalLocation;->setMajorAxis(F)V

    .line 702
    iget-object v3, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mLocation:Lcom/vzw/location/gpsprovider/VzwHalLocation;

    move/from16 v0, p17

    invoke-virtual {v3, v0}, Lcom/vzw/location/gpsprovider/VzwHalLocation;->setMajorAxisAngle(F)V

    .line 703
    iget-object v3, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mLocation:Lcom/vzw/location/gpsprovider/VzwHalLocation;

    move/from16 v0, p18

    invoke-virtual {v3, v0}, Lcom/vzw/location/gpsprovider/VzwHalLocation;->setMinorAxis(F)V

    .line 706
    :goto_5
    move/from16 v0, p13

    and-int/lit16 v3, v0, 0x80

    const/16 v5, 0x80

    if-ne v3, v5, :cond_b

    .line 708
    iget-object v3, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mLocation:Lcom/vzw/location/gpsprovider/VzwHalLocation;

    move/from16 v0, p19

    invoke-virtual {v3, v0}, Lcom/vzw/location/gpsprovider/VzwHalLocation;->setAltitudeWrtEllipsoid(F)V

    .line 711
    :goto_6
    and-int/lit8 v3, p13, 0x40

    const/16 v5, 0x40

    if-ne v3, v5, :cond_c

    .line 713
    iget-object v3, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mLocation:Lcom/vzw/location/gpsprovider/VzwHalLocation;

    move/from16 v0, p20

    invoke-virtual {v3, v0}, Lcom/vzw/location/gpsprovider/VzwHalLocation;->setAltitudeWrtSeaLevel(F)V

    .line 716
    :goto_7
    move/from16 v0, p13

    and-int/lit16 v3, v0, 0x200

    const/16 v5, 0x200

    if-ne v3, v5, :cond_d

    .line 718
    iget-object v3, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mLocation:Lcom/vzw/location/gpsprovider/VzwHalLocation;

    move/from16 v0, p21

    invoke-virtual {v3, v0}, Lcom/vzw/location/gpsprovider/VzwHalLocation;->setHorizontalDilutionOfPrecision(F)V

    .line 721
    :goto_8
    move/from16 v0, p13

    and-int/lit16 v3, v0, 0x100

    const/16 v5, 0x100

    if-ne v3, v5, :cond_e

    .line 723
    iget-object v3, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mLocation:Lcom/vzw/location/gpsprovider/VzwHalLocation;

    move/from16 v0, p22

    invoke-virtual {v3, v0}, Lcom/vzw/location/gpsprovider/VzwHalLocation;->setPositionDilutionOfPrecision(F)V

    .line 726
    :goto_9
    move/from16 v0, p13

    and-int/lit16 v3, v0, 0x400

    const/16 v5, 0x400

    if-ne v3, v5, :cond_f

    .line 728
    iget-object v3, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mLocation:Lcom/vzw/location/gpsprovider/VzwHalLocation;

    move/from16 v0, p23

    invoke-virtual {v3, v0}, Lcom/vzw/location/gpsprovider/VzwHalLocation;->setVerticalDilutionOfPrecision(F)V

    .line 731
    :goto_a
    and-int/lit8 v3, p13, 0x20

    const/16 v5, 0x20

    if-ne v3, v5, :cond_10

    .line 733
    iget-object v3, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mLocation:Lcom/vzw/location/gpsprovider/VzwHalLocation;

    move/from16 v0, p24

    invoke-virtual {v3, v0}, Lcom/vzw/location/gpsprovider/VzwHalLocation;->setMagneticVariation(F)V

    .line 736
    :goto_b
    iget-object v5, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mLocationManagerCallbacks:Lcom/vzw/location/gpsprovider/IVzwHalGpsCallback;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 737
    :try_start_2
    iget-object v3, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mLocation:Lcom/vzw/location/gpsprovider/VzwHalLocation;

    iget-object v6, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mLastSvStatus:Lcom/vzw/location/gpsprovider/VzwHalSvInfo;

    invoke-virtual {v3, v6}, Lcom/vzw/location/gpsprovider/VzwHalLocation;->setSvStatus(Lcom/vzw/location/gpsprovider/VzwHalSvInfo;)V

    .line 738
    iget-object v3, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mLocationManagerCallbacks:Lcom/vzw/location/gpsprovider/IVzwHalGpsCallback;

    iget-object v6, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mLocation:Lcom/vzw/location/gpsprovider/VzwHalLocation;

    invoke-interface {v3, v6}, Lcom/vzw/location/gpsprovider/IVzwHalGpsCallback;->ReportLocation(Lcom/vzw/location/gpsprovider/VzwHalLocation;)V

    .line 739
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 740
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 742
    iget-boolean v3, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mStarted:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mStatus:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    .line 743
    iget-object v3, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v4, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 745
    iget-boolean v3, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mNavigating:Z

    if-eqz v3, :cond_2

    .line 748
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 749
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "enabled"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 750
    iget-object v3, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 752
    .end local v2           #intent:Landroid/content/Intent;
    :cond_2
    const/4 v3, 0x2

    iget v4, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSvCount:I

    invoke-direct {p0, v3, v4}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->updateStatus(II)V

    .line 755
    :cond_3
    iget v3, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mFixCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mFixCount:I

    const/16 v4, 0xa

    if-lt v3, v4, :cond_4

    iget v3, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mFixInterval:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_4

    .line 756
    const-string v3, "VzwHalGpsLocationProvider"

    const-string v4, "exceeded MIN_FIX_COUNT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    invoke-direct {p0}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->hibernate()V

    .line 759
    :cond_4
    return-void

    .line 660
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 678
    :cond_5
    :try_start_5
    const-string v3, "VzwHalGpsLocationProvider"

    const-string v5, "fix has no altitude"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 740
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v3

    .line 682
    :cond_6
    :try_start_6
    const-string v3, "VzwHalGpsLocationProvider"

    const-string v5, "fix has no speed"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 686
    :cond_7
    const-string v3, "VzwHalGpsLocationProvider"

    const-string v5, "fix has no bearing"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 690
    :cond_8
    const-string v3, "VzwHalGpsLocationProvider"

    const-string v5, "fix has no accuracy"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 696
    :cond_9
    const-string v3, "VzwHalGpsLocationProvider"

    const-string v5, "fix has no fix mode"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 704
    :cond_a
    const-string v3, "VzwHalGpsLocationProvider"

    const-string v5, "fix has no position uncertainty error"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 709
    :cond_b
    const-string v3, "VzwHalGpsLocationProvider"

    const-string v5, "fix has no altitude wrt ellipsoid"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 714
    :cond_c
    const-string v3, "VzwHalGpsLocationProvider"

    const-string v5, "fix has no altitude wrt sea level"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 719
    :cond_d
    const-string v3, "VzwHalGpsLocationProvider"

    const-string v5, "fix has no hdop"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 724
    :cond_e
    const-string v3, "VzwHalGpsLocationProvider"

    const-string v5, "fix has no pdop"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 729
    :cond_f
    const-string v3, "VzwHalGpsLocationProvider"

    const-string v5, "fix has no vdop"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 734
    :cond_10
    const-string v3, "VzwHalGpsLocationProvider"

    const-string v5, "fix has no magnetic variation"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_b

    .line 739
    :catchall_2
    move-exception v3

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
.end method

.method private reportStatus(I)V
    .locals 16
    .parameter "status"

    .prologue
    .line 766
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mNavigating:Z

    .line 767
    .local v14, wasNavigating:Z
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mEngineOn:Z

    .line 768
    .local v13, wasEngineOn:Z
    const/4 v11, 0x0

    .line 770
    .local v11, skipIntent:Z
    sparse-switch p1, :sswitch_data_0

    .line 828
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mEngineOn:Z

    if-eq v13, v1, :cond_1

    .line 829
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mLocationManagerCallbacks:Lcom/vzw/location/gpsprovider/IVzwHalGpsCallback;

    monitor-enter v15

    .line 830
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mLocationManagerCallbacks:Lcom/vzw/location/gpsprovider/IVzwHalGpsCallback;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mEngineOn:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/vzw/location/gpsprovider/IVzwHalGpsCallback;->ReportOnDeviceStatusChanged(ZI[I[FII)V

    .line 831
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 834
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mNavigating:Z

    if-eq v14, v1, :cond_8

    .line 835
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mNavigating:Z

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_2

    .line 836
    const-string v1, "VzwHalGpsLocationProvider"

    const-string v2, "Acquiring wakelock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 840
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mLocationManagerCallbacks:Lcom/vzw/location/gpsprovider/IVzwHalGpsCallback;

    monitor-enter v2

    .line 841
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mLocationManagerCallbacks:Lcom/vzw/location/gpsprovider/IVzwHalGpsCallback;

    move/from16 v0, p1

    invoke-interface {v1, v0}, Lcom/vzw/location/gpsprovider/IVzwHalGpsCallback;->ReportEngineStatus(I)V

    .line 842
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 846
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    add-int/lit8 v9, v1, -0x1

    .local v9, i:I
    :goto_1
    if-ltz v9, :cond_6

    .line 847
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v9}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v12

    .line 848
    .local v12, uid:I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mNavigating:Z

    if-eqz v1, :cond_5

    .line 849
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, v12}, Lcom/android/internal/app/IBatteryStats;->noteStartGps(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 846
    :goto_2
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 772
    .end local v9           #i:I
    .end local v12           #uid:I
    :sswitch_0
    const-string v1, "VzwHalGpsLocationProvider"

    const-string v2, "ENGINE_STATUS_SESSION_BEGIN"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mNavigating:Z

    .line 774
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mEngineOn:Z

    .line 775
    const-string v1, "VzwHalGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPendingSkip: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mPendingSkip:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    move-object/from16 v0, p0

    iget v1, v0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mPendingSkip:I

    if-lez v1, :cond_0

    .line 777
    const/4 v11, 0x1

    .line 778
    move-object/from16 v0, p0

    iget v1, v0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mPendingSkip:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mPendingSkip:I

    goto/16 :goto_0

    .line 782
    :sswitch_1
    const-string v1, "VzwHalGpsLocationProvider"

    const-string v2, "ENGINE_STATUS_SESSION_END"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mNavigating:Z

    .line 784
    const-string v1, "VzwHalGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPendingSkip: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mPendingSkip:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    move-object/from16 v0, p0

    iget v1, v0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mPendingSkip:I

    if-lez v1, :cond_0

    .line 786
    const/4 v11, 0x1

    .line 787
    move-object/from16 v0, p0

    iget v1, v0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mPendingSkip:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mPendingSkip:I

    goto/16 :goto_0

    .line 791
    :sswitch_2
    const-string v1, "VzwHalGpsLocationProvider"

    const-string v2, "ENGINE_STATUS_ENGINE_ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mEngineOn:Z

    goto/16 :goto_0

    .line 795
    :sswitch_3
    const-string v1, "VzwHalGpsLocationProvider"

    const-string v2, "ENGINE_STATUS_ENGINE_OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mEngineOn:Z

    goto/16 :goto_0

    .line 802
    :sswitch_4
    const-string v1, "VzwHalGpsLocationProvider"

    const-string v2, "ENGINE_STATUS_SESSION_BEGIN_GPS_NOP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    const/4 v11, 0x1

    .line 807
    const-string v1, "VzwHalGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPendingSkip: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mPendingSkip:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    move-object/from16 v0, p0

    iget v1, v0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mPendingSkip:I

    if-lez v1, :cond_3

    .line 809
    move-object/from16 v0, p0

    iget v1, v0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mPendingSkip:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mPendingSkip:I

    .line 811
    :cond_3
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mNavigating:Z

    goto/16 :goto_0

    .line 814
    :sswitch_5
    const-string v1, "VzwHalGpsLocationProvider"

    const-string v2, "ENGINE_STATUS_SESSION_END_GPS_NOP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    const/4 v11, 0x1

    .line 819
    const-string v1, "VzwHalGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPendingSkip: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mPendingSkip:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    move-object/from16 v0, p0

    iget v1, v0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mPendingSkip:I

    if-lez v1, :cond_4

    .line 821
    move-object/from16 v0, p0

    iget v1, v0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mPendingSkip:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mPendingSkip:I

    .line 823
    :cond_4
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mNavigating:Z

    goto/16 :goto_0

    .line 831
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 842
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 851
    .restart local v9       #i:I
    .restart local v12       #uid:I
    :cond_5
    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, v12}, Lcom/android/internal/app/IBatteryStats;->noteStopGps(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2

    .line 854
    .end local v9           #i:I
    .end local v12           #uid:I
    :catch_0
    move-exception v8

    .line 855
    .local v8, e:Landroid/os/RemoteException;
    const-string v1, "VzwHalGpsLocationProvider"

    const-string v2, "RemoteException in reportStatus"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    .end local v8           #e:Landroid/os/RemoteException;
    :cond_6
    if-nez v11, :cond_7

    .line 860
    const-string v1, "VzwHalGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send gps flag intent n = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mNavigating:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    new-instance v10, Landroid/content/Intent;

    const-string v1, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v10, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 862
    .local v10, intent:Landroid/content/Intent;
    const-string v1, "enabled"

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mNavigating:Z

    invoke-virtual {v10, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 863
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 866
    .end local v10           #intent:Landroid/content/Intent;
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mNavigating:Z

    if-nez v1, :cond_8

    .line 867
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 868
    const-string v1, "VzwHalGpsLocationProvider"

    const-string v2, "Releasing wakelock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 873
    :cond_8
    return-void

    .line 770
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
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 909
    const/4 v2, 0x0

    .line 911
    .local v2, svCount:I
    invoke-direct {p0}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->clearSvArrays()V

    .line 912
    iget-object v1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSvs:[I

    iget-object v2, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSnrs:[F

    .end local v2           #svCount:I
    iget-object v3, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSvElevations:[F

    iget-object v4, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSvAzimuths:[F

    iget-object v5, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSvMasks:[I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->native_read_sv_status([I[F[F[F[I)I

    move-result v2

    .line 913
    .restart local v2       #svCount:I
    invoke-direct {p0, v2}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->setSvInfo(I)V

    .line 915
    iget-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->svStatus:Lcom/vzw/location/gpsprovider/VzwHalSvInfo;

    iget-object v1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSvs:[I

    invoke-virtual {v0, v1}, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->setSatellitesInViewPRNs([I)V

    .line 916
    iget-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->svStatus:Lcom/vzw/location/gpsprovider/VzwHalSvInfo;

    iget-object v1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSnrs:[F

    invoke-virtual {v0, v1}, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->setSatellitesInViewSignalToNoiseRatio([F)V

    .line 917
    iget-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->svStatus:Lcom/vzw/location/gpsprovider/VzwHalSvInfo;

    iget-object v1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSvElevations:[F

    invoke-virtual {v0, v1}, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->setSatellitesInViewElevation([F)V

    .line 918
    iget-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->svStatus:Lcom/vzw/location/gpsprovider/VzwHalSvInfo;

    iget-object v1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSvAzimuths:[F

    invoke-virtual {v0, v1}, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->setSatellitesInViewAzimuth([F)V

    .line 919
    iget-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->svStatus:Lcom/vzw/location/gpsprovider/VzwHalSvInfo;

    iget-object v1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSvUsedInFix:[I

    invoke-virtual {v0, v1}, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->setSatellitesUsedPRN([I)V

    .line 920
    iget-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->svStatus:Lcom/vzw/location/gpsprovider/VzwHalSvInfo;

    iget-object v1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSvHasEphemeris:[I

    invoke-virtual {v0, v1}, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->setSatellitesWithEphemeris([I)V

    .line 921
    iget-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->svStatus:Lcom/vzw/location/gpsprovider/VzwHalSvInfo;

    iget-object v1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSvHasAlmanac:[I

    invoke-virtual {v0, v1}, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->setSatellitesWithAlmanac([I)V

    .line 923
    iget-object v9, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mLocationManagerCallbacks:Lcom/vzw/location/gpsprovider/IVzwHalGpsCallback;

    monitor-enter v9

    .line 924
    :try_start_0
    iget-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mLastSvStatus:Lcom/vzw/location/gpsprovider/VzwHalSvInfo;

    iget-object v1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->svStatus:Lcom/vzw/location/gpsprovider/VzwHalSvInfo;

    invoke-virtual {v0, v1}, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->setStatus(Lcom/vzw/location/gpsprovider/VzwHalSvInfo;)V

    .line 925
    iget-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mLocationManagerCallbacks:Lcom/vzw/location/gpsprovider/IVzwHalGpsCallback;

    iget-object v1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->svStatus:Lcom/vzw/location/gpsprovider/VzwHalSvInfo;

    invoke-interface {v0, v1}, Lcom/vzw/location/gpsprovider/IVzwHalGpsCallback;->ReportSvStatus(Lcom/vzw/location/gpsprovider/VzwHalSvInfo;)V

    .line 926
    iget-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mLocationManagerCallbacks:Lcom/vzw/location/gpsprovider/IVzwHalGpsCallback;

    iget-boolean v1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mEngineOn:Z

    iget-object v3, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSvs:[I

    iget-object v4, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSnrs:[F

    iget-object v5, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSvMasks:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    iget-object v6, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSvMasks:[I

    const/4 v10, 0x1

    aget v6, v6, v10

    invoke-interface/range {v0 .. v6}, Lcom/vzw/location/gpsprovider/IVzwHalGpsCallback;->ReportOnDeviceStatusChanged(ZI[I[FII)V

    .line 928
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 931
    const-string v0, "VzwHalGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SV count: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ephemerisMask: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSvMasks:[I

    aget v3, v3, v12

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " almanacMask: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSvMasks:[I

    aget v3, v3, v11

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v2, :cond_3

    .line 936
    const-string v1, "VzwHalGpsLocationProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sv: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSvs:[I

    aget v3, v3, v7

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " snr: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSnrs:[F

    aget v3, v3, v7

    const/high16 v4, 0x4120

    div-float/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " elev: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSvElevations:[F

    aget v3, v3, v7

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " azimuth: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSvAzimuths:[F

    aget v3, v3, v7

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSvMasks:[I

    aget v0, v0, v12

    iget-object v4, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSvs:[I

    aget v4, v4, v7

    add-int/lit8 v4, v4, -0x1

    shl-int v4, v11, v4

    and-int/2addr v0, v4

    if-nez v0, :cond_0

    const-string v0, "  "

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSvMasks:[I

    aget v0, v0, v11

    iget-object v4, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSvs:[I

    aget v4, v4, v7

    add-int/lit8 v4, v4, -0x1

    shl-int v4, v11, v4

    and-int/2addr v0, v4

    if-nez v0, :cond_1

    const-string v0, "  "

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSvMasks:[I

    aget v0, v0, v13

    iget-object v4, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSvs:[I

    aget v4, v4, v7

    add-int/lit8 v4, v4, -0x1

    shl-int v4, v11, v4

    and-int/2addr v0, v4

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 928
    .end local v7           #i:I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 936
    .restart local v7       #i:I
    :cond_0
    const-string v0, " E"

    goto :goto_1

    :cond_1
    const-string v0, " A"

    goto :goto_2

    :cond_2
    const-string v0, "U"

    goto :goto_3

    .line 947
    :cond_3
    iget v0, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mStatus:I

    invoke-direct {p0, v0, v2}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->updateStatus(II)V

    .line 949
    iget-boolean v0, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mNavigating:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mStatus:I

    if-ne v0, v13, :cond_4

    iget-wide v0, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mLastFixTime:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-lez v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mLastFixTime:J

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x2710

    cmp-long v0, v0, v3

    if-lez v0, :cond_4

    .line 952
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 953
    .local v8, intent:Landroid/content/Intent;
    const-string v0, "enabled"

    invoke-virtual {v8, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 954
    iget-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 955
    iget v0, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSvCount:I

    invoke-direct {p0, v11, v0}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->updateStatus(II)V

    .line 957
    .end local v8           #intent:Landroid/content/Intent;
    :cond_4
    return-void
.end method

.method private setAGpsServer(ILjava/lang/String;I)Z
    .locals 7
    .parameter "type"
    .parameter "host"
    .parameter "port"

    .prologue
    const/4 v3, 0x0

    .line 1013
    :try_start_0
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 1014
    .local v2, inetAddress:Ljava/net/InetAddress;
    const-string v4, "VzwHalGpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setAGpsServer inetAddress= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    if-eqz v2, :cond_0

    .line 1017
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 1019
    .local v1, hostaddr:Ljava/lang/String;
    invoke-direct {p0, p1, v1, p3}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 1030
    const/4 v3, 0x1

    .end local v1           #hostaddr:Ljava/lang/String;
    .end local v2           #inetAddress:Ljava/net/InetAddress;
    :goto_0
    return v3

    .line 1021
    .restart local v2       #inetAddress:Ljava/net/InetAddress;
    :cond_0
    const-string v4, "VzwHalGpsLocationProvider"

    const-string v5, "setAGpsServer inetAddress is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1025
    .end local v2           #inetAddress:Ljava/net/InetAddress;
    :catch_0
    move-exception v0

    .line 1026
    .local v0, e:Ljava/net/UnknownHostException;
    const-string v4, "VzwHalGpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown host for server "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSvInfo(I)V
    .locals 12
    .parameter "svCount"

    .prologue
    const/4 v11, 0x1

    .line 888
    const/4 v7, 0x0

    .local v7, usedInFixCnt:I
    const/4 v2, 0x0

    .local v2, hasEphemerisCnt:I
    const/4 v0, 0x0

    .line 890
    .local v0, hasAlmanacCnt:I
    const/4 v4, 0x0

    .local v4, i:I
    move v1, v0

    .end local v0           #hasAlmanacCnt:I
    .local v1, hasAlmanacCnt:I
    move v3, v2

    .end local v2           #hasEphemerisCnt:I
    .local v3, hasEphemerisCnt:I
    move v8, v7

    .end local v7           #usedInFixCnt:I
    .local v8, usedInFixCnt:I
    :goto_0
    if-ge v4, p1, :cond_0

    .line 891
    iget-object v9, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSvs:[I

    aget v9, v9, v4

    add-int/lit8 v5, v9, -0x1

    .line 892
    .local v5, prn:I
    shl-int v6, v11, v5

    .line 894
    .local v6, prnShift:I
    iget-object v9, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSvMasks:[I

    const/4 v10, 0x2

    aget v9, v9, v10

    and-int/2addr v9, v6

    if-eqz v9, :cond_3

    .line 895
    iget-object v9, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSvUsedInFix:[I

    add-int/lit8 v7, v8, 0x1

    .end local v8           #usedInFixCnt:I
    .restart local v7       #usedInFixCnt:I
    aput v5, v9, v8

    .line 897
    :goto_1
    iget-object v9, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSvMasks:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    and-int/2addr v9, v6

    if-eqz v9, :cond_2

    .line 898
    iget-object v9, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSvHasEphemeris:[I

    add-int/lit8 v2, v3, 0x1

    .end local v3           #hasEphemerisCnt:I
    .restart local v2       #hasEphemerisCnt:I
    aput v5, v9, v3

    .line 900
    :goto_2
    iget-object v9, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSvMasks:[I

    aget v9, v9, v11

    and-int/2addr v9, v6

    if-eqz v9, :cond_1

    .line 901
    iget-object v9, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSvHasAlmanac:[I

    add-int/lit8 v0, v1, 0x1

    .end local v1           #hasAlmanacCnt:I
    .restart local v0       #hasAlmanacCnt:I
    aput v5, v9, v1

    .line 890
    :goto_3
    add-int/lit8 v4, v4, 0x1

    move v1, v0

    .end local v0           #hasAlmanacCnt:I
    .restart local v1       #hasAlmanacCnt:I
    move v3, v2

    .end local v2           #hasEphemerisCnt:I
    .restart local v3       #hasEphemerisCnt:I
    move v8, v7

    .end local v7           #usedInFixCnt:I
    .restart local v8       #usedInFixCnt:I
    goto :goto_0

    .line 903
    .end local v5           #prn:I
    .end local v6           #prnShift:I
    :cond_0
    return-void

    .end local v3           #hasEphemerisCnt:I
    .end local v8           #usedInFixCnt:I
    .restart local v2       #hasEphemerisCnt:I
    .restart local v5       #prn:I
    .restart local v6       #prnShift:I
    .restart local v7       #usedInFixCnt:I
    :cond_1
    move v0, v1

    .end local v1           #hasAlmanacCnt:I
    .restart local v0       #hasAlmanacCnt:I
    goto :goto_3

    .end local v0           #hasAlmanacCnt:I
    .end local v2           #hasEphemerisCnt:I
    .restart local v1       #hasAlmanacCnt:I
    .restart local v3       #hasEphemerisCnt:I
    :cond_2
    move v2, v3

    .end local v3           #hasEphemerisCnt:I
    .restart local v2       #hasEphemerisCnt:I
    goto :goto_2

    .end local v2           #hasEphemerisCnt:I
    .end local v7           #usedInFixCnt:I
    .restart local v3       #hasEphemerisCnt:I
    .restart local v8       #usedInFixCnt:I
    :cond_3
    move v7, v8

    .end local v8           #usedInFixCnt:I
    .restart local v7       #usedInFixCnt:I
    goto :goto_1
.end method

.method private stopNavigatingLocked(Z)V
    .locals 3
    .parameter "silent"

    .prologue
    const/4 v2, 0x0

    .line 613
    const-string v0, "VzwHalGpsLocationProvider"

    const-string v1, "stopNavigatingLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    iput-boolean v2, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mStarted:Z

    .line 617
    invoke-direct {p0}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->native_stop()Z

    .line 619
    if-eqz p1, :cond_0

    .line 620
    iget v0, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mPendingSkip:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mPendingSkip:I

    .line 625
    :goto_0
    return-void

    .line 623
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0, v2}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->updateStatus(II)V

    goto :goto_0
.end method

.method private updateStatus(II)V
    .locals 2
    .parameter "status"
    .parameter "svCount"

    .prologue
    .line 471
    iget v0, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mStatus:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSvCount:I

    if-eq p2, v0, :cond_1

    .line 472
    :cond_0
    iput p1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mStatus:I

    .line 473
    iput p2, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSvCount:I

    .line 474
    iget-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v1, "satellites"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 475
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mStatusUpdateTime:J

    .line 477
    :cond_1
    return-void
.end method


# virtual methods
.method public addListener(I)V
    .locals 3
    .parameter "uid"

    .prologue
    .line 509
    iget-object v1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 510
    iget-boolean v1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mNavigating:Z

    if-eqz v1, :cond_0

    .line 512
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, p1}, Lcom/android/internal/app/IBatteryStats;->noteStartGps(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 513
    :catch_0
    move-exception v0

    .line 514
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "VzwHalGpsLocationProvider"

    const-string v2, "RemoteException in addListener"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized disable()V
    .locals 4

    .prologue
    .line 426
    monitor-enter p0

    :try_start_0
    const-string v1, "VzwHalGpsLocationProvider"

    const-string v2, "disable()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-boolean v1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 457
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 430
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mEnabled:Z

    .line 431
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSupportsXtra:Z

    .line 432
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->stopNavigatingLocked(Z)V

    .line 433
    invoke-direct {p0}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->native_disable()V

    .line 436
    iget-object v1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mEventThread:Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider$AgpsEventThread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 438
    :try_start_2
    iget-object v1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mEventThread:Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider$AgpsEventThread;

    invoke-virtual {v1}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider$AgpsEventThread;->join()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 442
    :goto_1
    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mEventThread:Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider$AgpsEventThread;

    .line 445
    :cond_2
    const-string v1, "VzwHalGpsLocationProvider"

    const-string v2, "native cleanup"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-direct {p0}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->native_cleanup()V

    .line 450
    const-string v1, "VzwHalGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disable(): mNavigating: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mNavigating:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-boolean v1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mNavigating:Z

    if-eqz v1, :cond_3

    .line 452
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->reportStatus(I)V

    .line 454
    :cond_3
    iget-boolean v1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mEngineOn:Z

    if-eqz v1, :cond_0

    .line 455
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->reportStatus(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 426
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v1, "VzwHalGpsLocationProvider"

    const-string v2, "InterruptedException when joining mEventThread"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized enable()V
    .locals 2

    .prologue
    .line 406
    monitor-enter p0

    :try_start_0
    const-string v0, "VzwHalGpsLocationProvider"

    const-string v1, "enable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-boolean v0, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 419
    :goto_0
    monitor-exit p0

    return-void

    .line 409
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->native_init()Z

    move-result v0

    iput-boolean v0, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mEnabled:Z

    .line 411
    iget-boolean v0, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mEnabled:Z

    if-eqz v0, :cond_1

    .line 412
    invoke-direct {p0}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->native_supports_xtra()Z

    move-result v0

    iput-boolean v0, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSupportsXtra:Z

    .line 414
    new-instance v0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider$AgpsEventThread;

    invoke-direct {v0, p0}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider$AgpsEventThread;-><init>(Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;)V

    iput-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mEventThread:Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider$AgpsEventThread;

    .line 415
    iget-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mEventThread:Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider$AgpsEventThread;

    invoke-virtual {v0}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider$AgpsEventThread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 406
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 417
    :cond_1
    :try_start_2
    const-string v0, "VzwHalGpsLocationProvider"

    const-string v1, "Failed to enable location provider"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public getAccuracy()I
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x1

    return v0
.end method

.method public getPdeAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mLastPdeAddress:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public getPowerRequirement()I
    .locals 1

    .prologue
    .line 388
    const/4 v0, 0x3

    return v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .locals 2
    .parameter "extras"

    .prologue
    .line 464
    if-eqz p1, :cond_0

    .line 465
    const-string v0, "satellites"

    iget v1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSvCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 467
    :cond_0
    iget v0, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mStatus:I

    return v0
.end method

.method public getStatusUpdateTime()J
    .locals 2

    .prologue
    .line 480
    iget-wide v0, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mStatusUpdateTime:J

    return-wide v0
.end method

.method public hasMonetaryCost()Z
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x0

    return v0
.end method

.method public init(Lcom/vzw/location/gpsprovider/IVzwHalGpsCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 300
    iput-object p1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mLocationManagerCallbacks:Lcom/vzw/location/gpsprovider/IVzwHalGpsCallback;

    .line 301
    invoke-virtual {p0}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->enable()V

    .line 302
    return-void
.end method

.method public declared-synchronized isEnabled()Z
    .locals 1

    .prologue
    .line 460
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeListener(I)V
    .locals 3
    .parameter "uid"

    .prologue
    .line 520
    iget-object v1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 521
    iget-boolean v1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mNavigating:Z

    if-eqz v1, :cond_0

    .line 523
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, p1}, Lcom/android/internal/app/IBatteryStats;->noteStopGps(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 524
    :catch_0
    move-exception v0

    .line 525
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "VzwHalGpsLocationProvider"

    const-string v2, "RemoteException in removeListener"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requiresCell()Z
    .locals 1

    .prologue
    .line 342
    const/4 v0, 0x0

    return v0
.end method

.method public requiresNetwork()Z
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x1

    return v0
.end method

.method public requiresSatellite()Z
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x1

    return v0
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 8
    .parameter "command"
    .parameter "extras"

    .prologue
    .line 1044
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1045
    .local v1, identity:J
    const/4 v4, 0x0

    .line 1047
    .local v4, result:Z
    const-string v5, "delete_aiding_data"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1048
    invoke-direct {p0, p2}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->deleteAidingData(Landroid/os/Bundle;)Z

    move-result v4

    .line 1070
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1071
    return v4

    .line 1049
    :cond_0
    const-string v5, "force_inject_xtra"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1050
    iget-boolean v5, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mSupportsXtra:Z

    if-eqz v5, :cond_3

    .line 1051
    const/4 v0, 0x0

    .line 1052
    .local v0, data:[B
    if-eqz p2, :cond_1

    .line 1053
    const-string v5, "xtraData"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 1055
    :cond_1
    if-eqz v0, :cond_2

    .line 1056
    iget-object v5, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-static {v5, v6, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1057
    .local v3, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v4

    .line 1058
    goto :goto_0

    .line 1059
    .end local v3           #msg:Landroid/os/Message;
    :cond_2
    const-string v5, "VzwHalGpsLocationProvider"

    const-string v6, "XTRA Data is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    const/4 v4, 0x0

    goto :goto_0

    .line 1063
    .end local v0           #data:[B
    :cond_3
    const/4 v4, 0x0

    .line 1064
    const-string v5, "VzwHalGpsLocationProvider"

    const-string v6, "XTRA interface is not supported"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1067
    :cond_4
    const-string v5, "VzwHalGpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendExtraCommand: unknown command "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPdeAddress(Ljava/net/InetSocketAddress;)V
    .locals 3
    .parameter "address"

    .prologue
    .line 998
    if-eqz p1, :cond_0

    .line 999
    iput-object p1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mLastPdeAddress:Ljava/net/InetSocketAddress;

    .line 1000
    const/4 v0, 0x2

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->setAGpsServer(ILjava/lang/String;I)Z

    .line 1002
    :cond_0
    return-void
.end method

.method public shutdown()V
    .locals 0

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->disable()V

    .line 306
    return-void
.end method

.method public start(Lcom/vzw/location/gpsprovider/VzwHalCriteria;IZ)Z
    .locals 10
    .parameter "criteria"
    .parameter "sessionId"
    .parameter "silent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 488
    invoke-virtual {p1}, Lcom/vzw/location/gpsprovider/VzwHalCriteria;->getFixMode()I

    move-result v1

    const-wide/16 v2, -0x1

    invoke-virtual {p1}, Lcom/vzw/location/gpsprovider/VzwHalCriteria;->getHintNextFixArriveInSec()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {p1}, Lcom/vzw/location/gpsprovider/VzwHalCriteria;->getPreferredHorizontalAccuracy()I

    move-result v0

    int-to-long v6, v0

    invoke-virtual {p1}, Lcom/vzw/location/gpsprovider/VzwHalCriteria;->getMaximumResponseTime()I

    move-result v0

    int-to-long v8, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->native_set_gps_config(IJJJJ)V

    .line 494
    invoke-virtual {p0, p3}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->startNavigating(Z)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized startNavigating(Z)Z
    .locals 7
    .parameter "silent"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 573
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mStarted:Z

    if-eqz v2, :cond_1

    .line 574
    const-string v1, "VzwHalGpsLocationProvider"

    const-string v2, "Already started Navigating, Called startNavigating!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 605
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 577
    :cond_1
    :try_start_1
    const-string v2, "VzwHalGpsLocationProvider"

    const-string v3, "startNavigating"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mStarted:Z

    .line 581
    invoke-direct {p0}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->native_start()Z

    move-result v2

    if-nez v2, :cond_2

    .line 582
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mStarted:Z

    .line 583
    const-string v0, "VzwHalGpsLocationProvider"

    const-string v2, "native_start failed in startNavigating()"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 584
    goto :goto_0

    .line 587
    :cond_2
    if-eqz p1, :cond_3

    .line 588
    iget v1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mPendingSkip:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mPendingSkip:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 573
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 590
    :cond_3
    const/4 v1, 0x0

    :try_start_2
    iput v1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mTTFF:I

    .line 591
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mLastFixTime:J

    .line 592
    const/4 v1, 0x0

    iput v1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mFixCount:I

    .line 593
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mFixRequestTime:J

    .line 595
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->updateStatus(II)V

    .line 599
    iget v1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mFixInterval:I

    const/16 v2, 0x3c

    if-lt v1, v2, :cond_0

    .line 600
    iget-object v1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/32 v5, 0xea60

    add-long/2addr v3, v5

    iget-object v5, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public stop(Z)Z
    .locals 2
    .parameter "silent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 501
    iget-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 502
    iget-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 503
    invoke-virtual {p0, p1}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->stopNavigating(Z)V

    .line 505
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized stopNavigating(Z)V
    .locals 1
    .parameter "silent"

    .prologue
    .line 609
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->stopNavigatingLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    monitor-exit p0

    return-void

    .line 609
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public supportsAltitude()Z
    .locals 1

    .prologue
    .line 360
    const/4 v0, 0x1

    return v0
.end method

.method public supportsBearing()Z
    .locals 1

    .prologue
    .line 378
    const/4 v0, 0x1

    return v0
.end method

.method public supportsSpeed()Z
    .locals 1

    .prologue
    .line 369
    const/4 v0, 0x1

    return v0
.end method

.method public updateNetworkState(I)V
    .locals 3
    .parameter "nwState"

    .prologue
    .line 322
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mNetworkAvailable:Z

    .line 325
    const-string v1, "VzwHalGpsLocationProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNetworkState(): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v0, :cond_1

    const-string v0, "available"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    return-void

    .line 322
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 325
    :cond_1
    const-string v0, "unavailable"

    goto :goto_1
.end method
