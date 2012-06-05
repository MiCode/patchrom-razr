.class public Lcom/motorola/android/os/DeepSleepManager;
.super Ljava/lang/Object;
.source "DeepSleepManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/os/DeepSleepManager$1;,
        Lcom/motorola/android/os/DeepSleepManager$DeepSleepConnection;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DISABLED:I = 0x4

.field public static final DISABLE_CONS:I = 0x3

.field public static final DISABLE_MEDIA_ALERT:I = 0x2

.field public static final DISABLE_MEDIA_CMD:I = 0x1

.field public static final DISABLE_MEDIA_INTENT:I = 0x0

.field public static final ENABLED:I = 0x5

.field public static final ENABLE_EVENT_DISPATCH:I = 0x6

.field private static final TAG:Ljava/lang/String; = "DeepSleepManager"

.field private static mDeepSleepConnection:Lcom/motorola/android/os/DeepSleepManager$DeepSleepConnection;

.field private static mIntent:Landroid/content/Intent;

.field private static mService:Lcom/motorola/android/os/IDeepSleepService;


# instance fields
.field private final isDeepSleepSupported:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    sput-object v0, Lcom/motorola/android/os/DeepSleepManager;->mService:Lcom/motorola/android/os/IDeepSleepService;

    .line 71
    sput-object v0, Lcom/motorola/android/os/DeepSleepManager;->mIntent:Landroid/content/Intent;

    .line 72
    sput-object v0, Lcom/motorola/android/os/DeepSleepManager;->mDeepSleepConnection:Lcom/motorola/android/os/DeepSleepManager$DeepSleepConnection;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v2, p0, Lcom/motorola/android/os/DeepSleepManager;->mContext:Landroid/content/Context;

    .line 67
    const-string v0, "ro.mot.deep.sleep.supported"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/android/os/DeepSleepManager;->isDeepSleepSupported:Z

    .line 79
    iput-object p1, p0, Lcom/motorola/android/os/DeepSleepManager;->mContext:Landroid/content/Context;

    .line 81
    new-instance v0, Lcom/motorola/android/os/DeepSleepManager$DeepSleepConnection;

    invoke-direct {v0, p0, v2}, Lcom/motorola/android/os/DeepSleepManager$DeepSleepConnection;-><init>(Lcom/motorola/android/os/DeepSleepManager;Lcom/motorola/android/os/DeepSleepManager$1;)V

    sput-object v0, Lcom/motorola/android/os/DeepSleepManager;->mDeepSleepConnection:Lcom/motorola/android/os/DeepSleepManager$DeepSleepConnection;

    .line 83
    return-void
.end method

.method static synthetic access$102(Lcom/motorola/android/os/IDeepSleepService;)Lcom/motorola/android/os/IDeepSleepService;
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    sput-object p0, Lcom/motorola/android/os/DeepSleepManager;->mService:Lcom/motorola/android/os/IDeepSleepService;

    return-object p0
.end method

.method private connectService()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 148
    sget-object v1, Lcom/motorola/android/os/DeepSleepManager;->mService:Lcom/motorola/android/os/IDeepSleepService;

    if-eqz v1, :cond_1

    .line 156
    :cond_0
    :goto_0
    return v0

    .line 152
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/motorola/android/os/IDeepSleepService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/motorola/android/os/DeepSleepManager;->mIntent:Landroid/content/Intent;

    .line 156
    iget-object v1, p0, Lcom/motorola/android/os/DeepSleepManager;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/motorola/android/os/DeepSleepManager;->mIntent:Landroid/content/Intent;

    sget-object v3, Lcom/motorola/android/os/DeepSleepManager;->mDeepSleepConnection:Lcom/motorola/android/os/DeepSleepManager$DeepSleepConnection;

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/motorola/android/os/DeepSleepManager;->mService:Lcom/motorola/android/os/IDeepSleepService;

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getService()Lcom/motorola/android/os/IDeepSleepService;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/motorola/android/os/DeepSleepManager;->mService:Lcom/motorola/android/os/IDeepSleepService;

    return-object v0
.end method


# virtual methods
.method public enableDeepSleepMode(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 90
    iget-boolean v1, p0, Lcom/motorola/android/os/DeepSleepManager;->isDeepSleepSupported:Z

    if-eqz v1, :cond_1

    .line 92
    :try_start_0
    invoke-direct {p0}, Lcom/motorola/android/os/DeepSleepManager;->connectService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    sget-object v1, Lcom/motorola/android/os/DeepSleepManager;->mService:Lcom/motorola/android/os/IDeepSleepService;

    invoke-interface {v1, p1}, Lcom/motorola/android/os/IDeepSleepService;->enableDeepSleepMode(Z)V

    .line 103
    :goto_0
    return-void

    .line 95
    :cond_0
    const-string v1, "DeepSleepManager"

    const-string v2, "failed to connect to the deep sleep service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DeepSleepManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableDeepSleepMode caught exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 101
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const-string v1, "DeepSleepManager"

    const-string v2, "DeepSleepService is not supported and enableDeepSleepMode is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isChargeOnlyMode()Z
    .locals 4

    .prologue
    .line 129
    iget-boolean v1, p0, Lcom/motorola/android/os/DeepSleepManager;->isDeepSleepSupported:Z

    if-eqz v1, :cond_1

    .line 131
    :try_start_0
    invoke-direct {p0}, Lcom/motorola/android/os/DeepSleepManager;->connectService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    sget-object v1, Lcom/motorola/android/os/DeepSleepManager;->mService:Lcom/motorola/android/os/IDeepSleepService;

    invoke-interface {v1}, Lcom/motorola/android/os/IDeepSleepService;->isChargeOnlyMode()Z

    move-result v1

    .line 140
    :goto_0
    return v1

    .line 134
    :cond_0
    const-string v1, "DeepSleepManager"

    const-string v2, "failed to connect to the deep sleep service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :cond_1
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DeepSleepManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDeepSleep caught exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isDeepSleep()Z
    .locals 4

    .prologue
    .line 109
    iget-boolean v1, p0, Lcom/motorola/android/os/DeepSleepManager;->isDeepSleepSupported:Z

    if-eqz v1, :cond_1

    .line 111
    :try_start_0
    invoke-direct {p0}, Lcom/motorola/android/os/DeepSleepManager;->connectService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    sget-object v1, Lcom/motorola/android/os/DeepSleepManager;->mService:Lcom/motorola/android/os/IDeepSleepService;

    invoke-interface {v1}, Lcom/motorola/android/os/IDeepSleepService;->isDeepSleep()Z

    move-result v1

    .line 122
    :goto_0
    return v1

    .line 114
    :cond_0
    const-string v1, "DeepSleepManager"

    const-string v2, "failed to connect to the deep sleep service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DeepSleepManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDeepSleep caught exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 120
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const-string v1, "DeepSleepManager"

    const-string v2, "Deep sleep mode is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
