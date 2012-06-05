.class public final Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;
.super Ljava/lang/Object;
.source "MotGpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/server/location/MotGpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MovementMonitor"
.end annotation


# static fields
.field public static final EXTRA_GPS_SAVINGS_ON:Ljava/lang/String; = "savings_on"

.field public static final GPS_SAVINGS_CHANGE_ACTION:Ljava/lang/String; = "com.motorola.location.GPS_SAVINGS_CHANGE_ACTION"

.field private static final MIN_PROPAGATION_INTERVAL:I = 0x1388

.field private static final NO_FIX_MVMT_MON_RESET_TIMEOUT:I = 0xea60

.field private static final NO_MVMT_FIX_TIMEOUT:I = 0x249f0

.field private static final NO_MVMT_NO_FIX_TIMEOUT:I = 0x1d4c0

.field private static final STATE_MON_FIX:I = 0x2

.field private static final STATE_MON_NO_FIX:I = 0x1

.field private static final STATE_PROPAGATE:I = 0x3

.field private static final STATE_SLEEP:I = 0x4

.field private static final STATE_STOP:I


# instance fields
.field private mCharging:Z

.field private mEndDuration:I

.field private mExpectEnd:Z

.field private mFirstCb:Z

.field private final mListener:Lcom/motorola/sensorhub/SensorHub$MovementListener;

.field private final mMvmtMgr:Lcom/motorola/sensorhub/SensorHub;

.field private mPropInterval:I

.field private mPropagateTime:J

.field private mState:I

.field final synthetic this$0:Lcom/motorola/server/location/MotGpsLocationProvider;


# direct methods
.method public constructor <init>(Lcom/motorola/server/location/MotGpsLocationProvider;Lcom/motorola/sensorhub/SensorHub;)V
    .locals 2
    .parameter
    .parameter "mvmtMgr"

    .prologue
    const/4 v1, 0x0

    .line 2094
    iput-object p1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2279
    new-instance v0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor$1;

    invoke-direct {v0, p0}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor$1;-><init>(Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;)V

    iput-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mListener:Lcom/motorola/sensorhub/SensorHub$MovementListener;

    .line 2095
    iput v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mState:I

    .line 2096
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mFirstCb:Z

    .line 2097
    iput-boolean v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mExpectEnd:Z

    .line 2098
    const v0, 0x1d4c0

    iput v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mEndDuration:I

    .line 2099
    const/16 v0, 0x1388

    iput v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mPropInterval:I

    .line 2100
    iput-object p2, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mMvmtMgr:Lcom/motorola/sensorhub/SensorHub;

    .line 2101
    return-void
.end method

.method static synthetic access$4600(Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2059
    iget-boolean v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mFirstCb:Z

    return v0
.end method

.method static synthetic access$4602(Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2059
    iput-boolean p1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mFirstCb:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2059
    iget-boolean v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mExpectEnd:Z

    return v0
.end method

.method static synthetic access$4702(Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2059
    iput-boolean p1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mExpectEnd:Z

    return p1
.end method

.method static synthetic access$4800(Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2059
    iget v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mState:I

    return v0
.end method

.method static synthetic access$4802(Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2059
    iput p1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mState:I

    return p1
.end method

.method static synthetic access$4900(Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2059
    invoke-direct {p0, p1}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->broadcastSavings(Z)V

    return-void
.end method

.method static synthetic access$5002(Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2059
    iput-wide p1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mPropagateTime:J

    return-wide p1
.end method

.method static synthetic access$5100(Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2059
    iget v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mEndDuration:I

    return v0
.end method

.method static synthetic access$5200(Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2059
    iget v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mPropInterval:I

    return v0
.end method

.method static synthetic access$900(Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2059
    invoke-direct {p0}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->propagate()V

    return-void
.end method

.method private broadcastSavings(Z)V
    .locals 2
    .parameter "savingsOn"

    .prologue
    .line 2185
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.location.GPS_SAVINGS_CHANGE_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2186
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "savings_on"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2187
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$100(Lcom/motorola/server/location/MotGpsLocationProvider;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2188
    return-void
.end method

.method private propagate()V
    .locals 8

    .prologue
    .line 2258
    const-string v5, "MotGpsLocationProvider"

    const-string v6, "MovementMonitor propagate"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2259
    iget v5, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mState:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    .line 2260
    const-string v5, "MotGpsLocationProvider"

    const-string v6, "propagate() called when not propagating!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2277
    :goto_0
    return-void

    .line 2266
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 2267
    .local v3, now:J
    iget-wide v5, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mPropagateTime:J

    sub-long v1, v3, v5

    .line 2268
    .local v1, elapsed:J
    iput-wide v3, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mPropagateTime:J

    .line 2269
    iget-object v5, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mLocation:Landroid/location/Location;
    invoke-static {v5}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$4300(Lcom/motorola/server/location/MotGpsLocationProvider;)Landroid/location/Location;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mLocation:Landroid/location/Location;
    invoke-static {v6}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$4300(Lcom/motorola/server/location/MotGpsLocationProvider;)Landroid/location/Location;

    move-result-object v6

    invoke-virtual {v6}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    add-long/2addr v6, v1

    invoke-virtual {v5, v6, v7}, Landroid/location/Location;->setTime(J)V

    .line 2270
    iget-object v5, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mLocationManager:Landroid/location/ILocationManager;
    invoke-static {v5}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$4400(Lcom/motorola/server/location/MotGpsLocationProvider;)Landroid/location/ILocationManager;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mLocation:Landroid/location/Location;
    invoke-static {v6}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$4300(Lcom/motorola/server/location/MotGpsLocationProvider;)Landroid/location/Location;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/location/ILocationManager;->reportLocation(Landroid/location/Location;Z)V

    .line 2271
    iget-object v5, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    #setter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mLastFixTime:J
    invoke-static {v5, v6, v7}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$4502(Lcom/motorola/server/location/MotGpsLocationProvider;J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2276
    .end local v1           #elapsed:J
    .end local v3           #now:J
    :goto_1
    iget-object v5, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    iget v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mPropInterval:I

    iget-object v7, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mMvmtMonIntent:Landroid/app/PendingIntent;
    invoke-static {v7}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$3800(Lcom/motorola/server/location/MotGpsLocationProvider;)Landroid/app/PendingIntent;

    move-result-object v7

    #calls: Lcom/motorola/server/location/MotGpsLocationProvider;->hibernate(ILandroid/app/PendingIntent;)V
    invoke-static {v5, v6, v7}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$700(Lcom/motorola/server/location/MotGpsLocationProvider;ILandroid/app/PendingIntent;)V

    goto :goto_0

    .line 2272
    :catch_0
    move-exception v0

    .line 2273
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "MotGpsLocationProvider"

    const-string v6, "RemoteException calling reportLocation"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private start(Z)V
    .locals 5
    .parameter "fix"

    .prologue
    const v4, 0x249f0

    const/16 v0, 0x1388

    const/4 v1, 0x1

    .line 2210
    invoke-virtual {p0}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->isMonitoring()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2211
    invoke-virtual {p0}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->stop()V

    .line 2216
    :cond_0
    iget-object v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mFixInterval:I
    invoke-static {v2}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$500(Lcom/motorola/server/location/MotGpsLocationProvider;)I

    move-result v2

    const v3, 0xea60

    if-lt v2, v3, :cond_1

    .line 2217
    const-string v0, "MotGpsLocationProvider"

    const-string v1, "MovementMonitor start, fix interval too long"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2244
    :goto_0
    return-void

    .line 2221
    :cond_1
    iget-object v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mFixInterval:I
    invoke-static {v2}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$500(Lcom/motorola/server/location/MotGpsLocationProvider;)I

    move-result v2

    if-le v2, v0, :cond_2

    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mFixInterval:I
    invoke-static {v0}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$500(Lcom/motorola/server/location/MotGpsLocationProvider;)I

    move-result v0

    :cond_2
    iput v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mPropInterval:I

    .line 2223
    iput-boolean v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mFirstCb:Z

    .line 2225
    if-eqz p1, :cond_4

    .line 2226
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mFixInterval:I
    invoke-static {v0}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$500(Lcom/motorola/server/location/MotGpsLocationProvider;)I

    move-result v0

    if-gt v0, v4, :cond_3

    .line 2227
    iput v4, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mEndDuration:I

    .line 2235
    :goto_1
    const-string v0, "MotGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MovementMonitor start, prop interval: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mPropInterval:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", end duration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mEndDuration:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2238
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mMvmtMgr:Lcom/motorola/sensorhub/SensorHub;

    iget-object v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mListener:Lcom/motorola/sensorhub/SensorHub$MovementListener;

    iget v3, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mEndDuration:I

    div-int/lit16 v3, v3, 0x3e8

    iget-object v4, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$3500(Lcom/motorola/server/location/MotGpsLocationProvider;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/motorola/sensorhub/SensorHub;->registerMovementListener(Lcom/motorola/sensorhub/SensorHub$MovementListener;IILandroid/os/Looper;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2239
    const-string v0, "MotGpsLocationProvider"

    const-string v1, "Failed to register movement listener"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2229
    :cond_3
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mFixInterval:I
    invoke-static {v0}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$500(Lcom/motorola/server/location/MotGpsLocationProvider;)I

    move-result v0

    add-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mEndDuration:I

    goto :goto_1

    .line 2232
    :cond_4
    const v0, 0x1d4c0

    iput v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mEndDuration:I

    goto :goto_1

    .line 2241
    :cond_5
    const-string v0, "MotGpsLocationProvider"

    const-string v2, "registered MovementListener"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2242
    if-eqz p1, :cond_6

    const/4 v0, 0x2

    :goto_2
    iput v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mState:I

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public isMonitoring()Z
    .locals 1

    .prologue
    .line 2110
    iget v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPropagating()Z
    .locals 2

    .prologue
    .line 2114
    iget v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public monitor(Z)V
    .locals 3
    .parameter "fix"

    .prologue
    .line 2191
    iget-boolean v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mCharging:Z

    if-eqz v0, :cond_0

    .line 2192
    const-string v0, "MotGpsLocationProvider"

    const-string v1, "monitor() ignoring monitor for charging"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2207
    :goto_0
    return-void

    .line 2196
    :cond_0
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2198
    const-string v0, "MotGpsLocationProvider"

    const-string v1, "MovementMonitor monitor, fix in mon fix state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2202
    :cond_1
    const-string v0, "MotGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MovementMonitor monitor, fix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fix interval: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mFixInterval:I
    invoke-static {v2}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$500(Lcom/motorola/server/location/MotGpsLocationProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$3900(Lcom/motorola/server/location/MotGpsLocationProvider;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mMvmtMonIntent:Landroid/app/PendingIntent;
    invoke-static {v1}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$3800(Lcom/motorola/server/location/MotGpsLocationProvider;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2206
    invoke-direct {p0, p1}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->start(Z)V

    goto :goto_0
.end method

.method public setNoFixAlarm(I)V
    .locals 6
    .parameter "triggerOffset"

    .prologue
    .line 2104
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$3900(Lcom/motorola/server/location/MotGpsLocationProvider;)Landroid/app/AlarmManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    int-to-long v4, p1

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mMvmtMonIntent:Landroid/app/PendingIntent;
    invoke-static {v4}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$3800(Lcom/motorola/server/location/MotGpsLocationProvider;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2107
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 2248
    invoke-virtual {p0}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->isMonitoring()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2255
    :goto_0
    return-void

    .line 2252
    :cond_0
    const-string v0, "MotGpsLocationProvider"

    const-string v1, "MovementMonitor stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mState:I

    .line 2254
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mMvmtMgr:Lcom/motorola/sensorhub/SensorHub;

    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mListener:Lcom/motorola/sensorhub/SensorHub$MovementListener;

    invoke-virtual {v0, v1}, Lcom/motorola/sensorhub/SensorHub;->unregisterMovementListener(Lcom/motorola/sensorhub/SensorHub$MovementListener;)V

    goto :goto_0
.end method

.method public updateCharging(Z)V
    .locals 6
    .parameter "charging"

    .prologue
    const/4 v5, 0x0

    .line 2141
    iget-boolean v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mCharging:Z

    if-eq v1, p1, :cond_2

    .line 2142
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->isMonitoring()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2143
    const-string v1, "MotGpsLocationProvider"

    const-string v2, "stopping for charging"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    invoke-virtual {p0}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->stop()V

    .line 2147
    iget-object v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    monitor-enter v2

    .line 2149
    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v3}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->updateSavings(ZZ)Z

    move-result v0

    .line 2152
    .local v0, changed:Z
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    const/4 v3, 0x0

    const/4 v4, 0x1

    #calls: Lcom/motorola/server/location/MotGpsLocationProvider;->startNavigating_Locked(ZZ)V
    invoke-static {v1, v3, v4}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$4000(Lcom/motorola/server/location/MotGpsLocationProvider;ZZ)V

    .line 2153
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2156
    if-eqz v0, :cond_0

    .line 2157
    invoke-direct {p0, v5}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->broadcastSavings(Z)V

    .line 2161
    .end local v0           #changed:Z
    :cond_0
    iget-object v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    monitor-enter v2

    .line 2162
    if-nez p1, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->isMonitoring()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mStarted:Z
    invoke-static {v1}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$4100(Lcom/motorola/server/location/MotGpsLocationProvider;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2164
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mMvmtMon:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;
    invoke-static {v1}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$800(Lcom/motorola/server/location/MotGpsLocationProvider;)Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    move-result-object v1

    const v3, 0xea60

    invoke-virtual {v1, v3}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->setNoFixAlarm(I)V

    .line 2166
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2168
    iput-boolean p1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mCharging:Z

    .line 2170
    :cond_2
    return-void

    .line 2153
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 2166
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public updateFixInterval()V
    .locals 2

    .prologue
    .line 2118
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mFixInterval:I
    invoke-static {v0}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$500(Lcom/motorola/server/location/MotGpsLocationProvider;)I

    move-result v0

    const v1, 0xea60

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->isMonitoring()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2119
    const-string v0, "MotGpsLocationProvider"

    const-string v1, "MovementMonitor stopping for long fix interval"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2120
    invoke-virtual {p0}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->stop()V

    .line 2122
    :cond_0
    return-void
.end method

.method public updateHibernate()V
    .locals 2

    .prologue
    .line 2125
    const-string v0, "MotGpsLocationProvider"

    const-string v1, "updateHibernate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2126
    invoke-virtual {p0}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->isMonitoring()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2127
    const-string v0, "MotGpsLocationProvider"

    const-string v1, "stopping for hibernate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2128
    invoke-virtual {p0}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->stop()V

    .line 2130
    :cond_0
    return-void
.end method

.method public updateNoFix()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2134
    iget v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mState:I

    if-eq v0, v1, :cond_0

    .line 2135
    const v0, 0xea60

    invoke-virtual {p0, v0}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->setNoFixAlarm(I)V

    .line 2136
    iput v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mState:I

    .line 2138
    :cond_0
    return-void
.end method

.method public updateSavings(ZZ)Z
    .locals 1
    .parameter "savingsOn"
    .parameter "broadcast"

    .prologue
    .line 2174
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mSaving:Z
    invoke-static {v0}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$4200(Lcom/motorola/server/location/MotGpsLocationProvider;)Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 2175
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #setter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mSaving:Z
    invoke-static {v0, p1}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$4202(Lcom/motorola/server/location/MotGpsLocationProvider;Z)Z

    .line 2176
    if-eqz p2, :cond_0

    .line 2177
    invoke-direct {p0, p1}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->broadcastSavings(Z)V

    .line 2179
    :cond_0
    const/4 v0, 0x1

    .line 2181
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
