.class public Lcom/motorola/webtop/WebtopMode;
.super Ljava/lang/Object;
.source "WebtopMode.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WebtopMode"

.field private static sWebtopMode:Lcom/motorola/webtop/WebtopMode;


# instance fields
.field private mIsActive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/webtop/WebtopMode;->sWebtopMode:Lcom/motorola/webtop/WebtopMode;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/webtop/WebtopMode;->mIsActive:Z

    .line 25
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/motorola/webtop/WebtopMode;
    .locals 2

    .prologue
    .line 70
    const-class v1, Lcom/motorola/webtop/WebtopMode;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/motorola/webtop/WebtopMode;->sWebtopMode:Lcom/motorola/webtop/WebtopMode;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/motorola/webtop/WebtopMode;

    invoke-direct {v0}, Lcom/motorola/webtop/WebtopMode;-><init>()V

    sput-object v0, Lcom/motorola/webtop/WebtopMode;->sWebtopMode:Lcom/motorola/webtop/WebtopMode;

    .line 73
    :cond_0
    sget-object v0, Lcom/motorola/webtop/WebtopMode;->sWebtopMode:Lcom/motorola/webtop/WebtopMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public isActive()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/motorola/webtop/WebtopMode;->mIsActive:Z

    return v0
.end method

.method public update(I)V
    .locals 3
    .parameter "screenLayout"

    .prologue
    const/4 v2, 0x0

    .line 31
    sget-boolean v1, Landroid/util/DisplayMetrics;->IS_WEBTOP_ENABLED:Z

    if-nez v1, :cond_0

    .line 32
    iput-boolean v2, p0, Lcom/motorola/webtop/WebtopMode;->mIsActive:Z

    .line 53
    :goto_0
    :pswitch_0
    return-void

    .line 36
    :cond_0
    and-int/lit8 v1, p1, 0xf

    packed-switch v1, :pswitch_data_0

    .line 48
    :pswitch_1
    iput-boolean v2, p0, Lcom/motorola/webtop/WebtopMode;->mIsActive:Z

    .line 51
    :goto_1
    iget-boolean v1, p0, Lcom/motorola/webtop/WebtopMode;->mIsActive:Z

    if-eqz v1, :cond_1

    const/16 v0, 0xa0

    .line 52
    .local v0, density:I
    :goto_2
    sput v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    goto :goto_0

    .line 44
    .end local v0           #density:I
    :pswitch_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/webtop/WebtopMode;->mIsActive:Z

    goto :goto_1

    .line 51
    :cond_1
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_ORIGINAL:I

    goto :goto_2

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
