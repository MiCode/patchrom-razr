.class public Lcom/motorola/server/batterytemp/BatteryTempPolicy;
.super Ljava/lang/Object;
.source "BatteryTempPolicy.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BatteryTempPolicy"

.field private static mBatteryTempPolicy:Lcom/motorola/server/batterytemp/BatteryTempPolicy;


# instance fields
.field private mBattTempThresholds:[I

.field private mBatteryPlugged:Z

.field private mBatteryTemp:I

.field private mBatteryTempThreshold:I

.field private mContext:Landroid/content/Context;

.field private mDisplayPendingThreshold:I

.field private mDisplayPendingThresholdDecrease:Z

.field private mDisplayPendingThresholdIncrease:Z

.field private mDisplayProtectionCapValues:[I

.field private mDisplayProtectionSupported:Z

.field private mDisplayTemp:I

.field private mDisplayTempDebounceDelay:J

.field private mDisplayTempHystereses:[I

.field private mDisplayTempThreshold:I

.field private mDisplayTempThresholds:[I

.field private mHandler:Landroid/os/Handler;

.field private mPluggedInStatus:I

.field private mService:Lcom/motorola/server/batterytemp/BatteryTempService;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBattTempThresholds:[I

    .line 38
    iput v5, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBatteryTempThreshold:I

    .line 44
    iput-boolean v4, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayPendingThresholdIncrease:Z

    .line 45
    iput-boolean v4, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayPendingThresholdDecrease:Z

    .line 46
    iput-boolean v4, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayProtectionSupported:Z

    .line 99
    new-instance v1, Lcom/motorola/server/batterytemp/BatteryTempPolicy$1;

    invoke-direct {v1, p0}, Lcom/motorola/server/batterytemp/BatteryTempPolicy$1;-><init>(Lcom/motorola/server/batterytemp/BatteryTempPolicy;)V

    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mHandler:Landroid/os/Handler;

    .line 62
    iput-object p1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mContext:Landroid/content/Context;

    .line 63
    new-instance v1, Lcom/motorola/server/batterytemp/BatteryTempService;

    invoke-direct {v1, p1}, Lcom/motorola/server/batterytemp/BatteryTempService;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mService:Lcom/motorola/server/batterytemp/BatteryTempService;

    .line 65
    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBattTempThresholds:[I

    iget-object v2, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e003c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v4

    .line 67
    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBattTempThresholds:[I

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e003b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aput v3, v1, v2

    .line 69
    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBattTempThresholds:[I

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e003a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    aput v3, v1, v2

    .line 71
    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBattTempThresholds:[I

    const/4 v2, -0x1

    aput v2, v1, v5

    .line 74
    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110075

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayProtectionSupported:Z

    .line 76
    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 78
    .local v0, delaySeconds:I
    mul-int/lit16 v1, v0, 0x3e8

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayTempDebounceDelay:J

    .line 79
    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayTempThresholds:[I

    .line 81
    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayTempHystereses:[I

    .line 83
    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayProtectionCapValues:[I

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/server/batterytemp/BatteryTempPolicy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->handleBatteryTempNormal(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/motorola/server/batterytemp/BatteryTempPolicy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->handleBatteryTempAlertCharging(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/server/batterytemp/BatteryTempPolicy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->handleBatteryTempAlertNoCharging(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/motorola/server/batterytemp/BatteryTempPolicy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->handleBatteryCooldownMode(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/motorola/server/batterytemp/BatteryTempPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->handleDispThermalProtectionMode()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/motorola/server/batterytemp/BatteryTempPolicy;
    .locals 1
    .parameter "context"

    .prologue
    .line 53
    sget-object v0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBatteryTempPolicy:Lcom/motorola/server/batterytemp/BatteryTempPolicy;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;

    invoke-direct {v0, p0}, Lcom/motorola/server/batterytemp/BatteryTempPolicy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBatteryTempPolicy:Lcom/motorola/server/batterytemp/BatteryTempPolicy;

    .line 57
    :cond_0
    sget-object v0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBatteryTempPolicy:Lcom/motorola/server/batterytemp/BatteryTempPolicy;

    return-object v0
.end method

.method private handleBatteryCooldownMode(I)V
    .locals 1
    .parameter "batteryTemp"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mService:Lcom/motorola/server/batterytemp/BatteryTempService;

    invoke-virtual {v0, p1}, Lcom/motorola/server/batterytemp/BatteryTempService;->onBatteryCooldownMode(I)V

    .line 280
    return-void
.end method

.method private handleBatteryTempAlertCharging(I)V
    .locals 1
    .parameter "batteryTemp"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mService:Lcom/motorola/server/batterytemp/BatteryTempService;

    invoke-virtual {v0, p1}, Lcom/motorola/server/batterytemp/BatteryTempService;->onBatteryTempAlertCharging(I)V

    .line 272
    return-void
.end method

.method private handleBatteryTempAlertNoCharging(I)V
    .locals 1
    .parameter "batteryTemp"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mService:Lcom/motorola/server/batterytemp/BatteryTempService;

    invoke-virtual {v0, p1}, Lcom/motorola/server/batterytemp/BatteryTempService;->onBatteryTempAlertNoCharging(I)V

    .line 276
    return-void
.end method

.method private handleBatteryTempNormal(I)V
    .locals 1
    .parameter "batteryTemp"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mService:Lcom/motorola/server/batterytemp/BatteryTempService;

    invoke-virtual {v0, p1}, Lcom/motorola/server/batterytemp/BatteryTempService;->onBatteryTempNormal(I)V

    .line 268
    return-void
.end method

.method private handleDispThermalProtectionMode()V
    .locals 6

    .prologue
    .line 285
    iget-object v4, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mHandler:Landroid/os/Handler;

    monitor-enter v4

    .line 286
    :try_start_0
    iget v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayTemp:I

    .line 287
    .local v1, displayTemp:I
    iget v3, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayPendingThreshold:I

    iput v3, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayTempThreshold:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    :try_start_1
    iget-object v3, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayProtectionCapValues:[I

    iget v5, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayTempThreshold:I

    aget v0, v3, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 294
    .local v0, capPercentage:I
    :goto_0
    const/4 v3, 0x0

    :try_start_2
    iput-boolean v3, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayPendingThresholdDecrease:Z

    .line 295
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayPendingThresholdIncrease:Z

    .line 296
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 297
    iget-object v3, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mService:Lcom/motorola/server/batterytemp/BatteryTempService;

    invoke-virtual {v3, v1, v0}, Lcom/motorola/server/batterytemp/BatteryTempService;->onDispThermalProtectionMode(II)V

    .line 298
    return-void

    .line 290
    .end local v0           #capPercentage:I
    :catch_0
    move-exception v2

    .line 291
    .local v2, e:Ljava/lang/Exception;
    :try_start_3
    const-string v3, "BatteryTempPolicy"

    const-string v5, "Exception reading the cap value"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    const/4 v0, 0x0

    .restart local v0       #capPercentage:I
    goto :goto_0

    .line 296
    .end local v0           #capPercentage:I
    .end local v1           #displayTemp:I
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method private notifyBatteryTemp(IIZ)V
    .locals 4
    .parameter "batteryThreshold"
    .parameter "batteryTemp"
    .parameter "charging"

    .prologue
    const/4 v3, 0x0

    .line 157
    packed-switch p1, :pswitch_data_0

    .line 189
    :goto_0
    :pswitch_0
    return-void

    .line 159
    :pswitch_1
    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 160
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 167
    .end local v0           #msg:Landroid/os/Message;
    :pswitch_2
    if-eqz p3, :cond_0

    .line 168
    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 174
    .restart local v0       #msg:Landroid/os/Message;
    :goto_1
    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 171
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .restart local v0       #msg:Landroid/os/Message;
    goto :goto_1

    .line 179
    .end local v0           #msg:Landroid/os/Message;
    :pswitch_3
    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 181
    .restart local v0       #msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private pickNextBatteryTempThreshold(I)V
    .locals 3
    .parameter "temperature"

    .prologue
    .line 301
    iget-object v2, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBattTempThresholds:[I

    array-length v0, v2

    .line 302
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 303
    iget-object v2, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBattTempThresholds:[I

    aget v2, v2, v1

    if-le p1, v2, :cond_2

    .line 304
    iput v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBatteryTempThreshold:I

    .line 308
    :cond_0
    iget v2, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBatteryTempThreshold:I

    if-lt v2, v0, :cond_1

    .line 309
    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBatteryTempThreshold:I

    .line 311
    :cond_1
    return-void

    .line 302
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private final updateBatteryTemp(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 130
    const-string v6, "plugged"

    invoke-virtual {p1, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_2

    move v2, v4

    .line 131
    .local v2, plugged:Z
    :goto_0
    iget v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBatteryTempThreshold:I

    .line 132
    .local v1, oldThreshold:I
    const-string v6, "temperature"

    const/4 v7, -0x1

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 133
    .local v0, batteryTemp:I
    const-string v6, "status"

    invoke-virtual {p1, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mPluggedInStatus:I

    .line 135
    iput-boolean v2, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBatteryPlugged:Z

    .line 137
    invoke-direct {p0, v0}, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->pickNextBatteryTempThreshold(I)V

    .line 139
    const-string v4, "BatteryTempPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateBatteryTemp temperature = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Threshhold = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBatteryTempThreshold:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iput v0, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBatteryTemp:I

    .line 143
    iget v4, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBatteryTemp:I

    iget-object v6, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBattTempThresholds:[I

    aget v5, v6, v5

    add-int/lit8 v5, v5, 0x32

    if-lt v4, v5, :cond_0

    .line 144
    iget-object v4, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 145
    .local v3, pmc:Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 148
    .end local v3           #pmc:Landroid/os/PowerManager;
    :cond_0
    iget v4, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBatteryTempThreshold:I

    if-eq v4, v1, :cond_1

    .line 149
    iget v4, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBatteryTempThreshold:I

    iget v5, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBatteryTemp:I

    invoke-direct {p0, v4, v5, v2}, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->notifyBatteryTemp(IIZ)V

    .line 152
    :cond_1
    return-void

    .end local v0           #batteryTemp:I
    .end local v1           #oldThreshold:I
    .end local v2           #plugged:Z
    :cond_2
    move v2, v5

    .line 130
    goto :goto_0
.end method

.method private final updateDisplayTemp(Landroid/content/Intent;)V
    .locals 11
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 192
    iget-boolean v8, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayProtectionSupported:Z

    if-nez v8, :cond_0

    .line 264
    :goto_0
    return-void

    .line 197
    :cond_0
    const-string v8, "temperature"

    const/4 v9, -0x1

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 198
    .local v1, displayTemp:I
    iput v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayTemp:I

    .line 201
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v8, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayTempThresholds:[I

    array-length v8, v8

    if-ge v3, v8, :cond_1

    .line 202
    iget-object v8, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayTempThresholds:[I

    aget v8, v8, v3

    if-ge v1, v8, :cond_6

    .line 206
    :cond_1
    move v5, v3

    .line 207
    .local v5, threshold:I
    iget-object v9, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mHandler:Landroid/os/Handler;

    monitor-enter v9

    .line 216
    :try_start_0
    iget v8, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayTempThreshold:I

    if-le v5, v8, :cond_2

    iget-boolean v8, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayPendingThresholdDecrease:Z

    if-nez v8, :cond_4

    :cond_2
    iget v8, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayTempThreshold:I

    if-ge v5, v8, :cond_3

    iget-boolean v8, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayPendingThresholdDecrease:Z

    if-nez v8, :cond_4

    iget-boolean v8, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayPendingThresholdIncrease:Z

    if-nez v8, :cond_4

    :cond_3
    iget v8, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayTempThreshold:I

    if-eq v5, v8, :cond_4

    iget-boolean v8, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayPendingThresholdDecrease:Z

    if-nez v8, :cond_a

    iget-boolean v8, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayPendingThresholdIncrease:Z

    if-nez v8, :cond_a

    .line 225
    :cond_4
    iget-object v8, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x5

    invoke-virtual {v8, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 226
    iget v8, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayTempThreshold:I

    if-ge v5, v8, :cond_7

    move v8, v6

    :goto_2
    iput-boolean v8, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayPendingThresholdDecrease:Z

    .line 227
    iget v8, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayTempThreshold:I

    if-le v5, v8, :cond_8

    :goto_3
    iput-boolean v6, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayPendingThresholdIncrease:Z

    .line 228
    iget-boolean v6, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayPendingThresholdIncrease:Z

    if-eqz v6, :cond_9

    .line 233
    iput v5, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayPendingThreshold:I

    .line 234
    iget-object v6, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 236
    .local v4, msg:Landroid/os/Message;
    iget-object v6, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mHandler:Landroid/os/Handler;

    iget-wide v7, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayTempDebounceDelay:J

    invoke-virtual {v6, v4, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 263
    .end local v4           #msg:Landroid/os/Message;
    :cond_5
    :goto_4
    monitor-exit v9

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 201
    .end local v5           #threshold:I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .restart local v5       #threshold:I
    :cond_7
    move v8, v7

    .line 226
    goto :goto_2

    :cond_8
    move v6, v7

    .line 227
    goto :goto_3

    .line 237
    :cond_9
    :try_start_1
    iget-boolean v6, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayPendingThresholdDecrease:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_5

    .line 243
    :try_start_2
    iget-object v6, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayTempHystereses:[I

    iget v7, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayTempThreshold:I

    aget v0, v6, v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 249
    .local v0, displayHysteresisTemp:I
    :goto_5
    if-gt v1, v0, :cond_5

    .line 254
    :try_start_3
    iput v5, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayPendingThreshold:I

    .line 255
    iget-object v6, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 257
    .restart local v4       #msg:Landroid/os/Message;
    iget-object v6, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4

    .line 244
    .end local v0           #displayHysteresisTemp:I
    .end local v4           #msg:Landroid/os/Message;
    :catch_0
    move-exception v2

    .line 245
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "BatteryTempPolicy"

    const-string v7, "Exception reading the hysteresis value"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    const/4 v0, 0x0

    .line 247
    .restart local v0       #displayHysteresisTemp:I
    const/4 v1, -0x1

    goto :goto_5

    .line 261
    .end local v0           #displayHysteresisTemp:I
    .end local v2           #e:Ljava/lang/Exception;
    :cond_a
    iput v5, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayPendingThreshold:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4
.end method


# virtual methods
.method public onReceiveIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 88
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    const-string v2, "status"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 94
    .local v1, pluggedInStatus:I
    invoke-direct {p0, p1}, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->updateBatteryTemp(Landroid/content/Intent;)V

    .line 95
    invoke-direct {p0, p1}, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->updateDisplayTemp(Landroid/content/Intent;)V

    .line 97
    .end local v1           #pluggedInStatus:I
    :cond_0
    return-void
.end method
