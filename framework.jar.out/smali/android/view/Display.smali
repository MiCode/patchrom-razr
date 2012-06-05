.class public Landroid/view/Display;
.super Ljava/lang/Object;
.source "Display.java"


# static fields
.field static final DEBUG_DISPLAY_SIZE:Z = false

.field public static final DEFAULT_DISPLAY:I = 0x0

.field static final TAG:Ljava/lang/String; = "Display"

.field private static sInitialized:Z

.field private static final sStaticInit:Ljava/lang/Object;

.field private static sWindowManager:Landroid/view/IWindowManager;


# instance fields
.field private final mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

.field mDensity:F

.field private final mDisplay:I

.field mDpiX:F

.field mDpiY:F

.field private mLastGetTime:F

.field private mPixelFormat:I

.field private mRefreshRate:F

.field private final mTmpMetrics:Landroid/util/DisplayMetrics;

.field private final mTmpPoint:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 428
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/Display;->sStaticInit:Ljava/lang/Object;

    .line 429
    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/Display;->sInitialized:Z

    return-void
.end method

.method constructor <init>(ILandroid/view/CompatibilityInfoHolder;)V
    .locals 2
    .parameter "display"
    .parameter "compatInfo"

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 424
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    .line 425
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Landroid/view/Display;->mTmpMetrics:Landroid/util/DisplayMetrics;

    .line 49
    sget-object v1, Landroid/view/Display;->sStaticInit:Ljava/lang/Object;

    monitor-enter v1

    .line 50
    :try_start_0
    sget-boolean v0, Landroid/view/Display;->sInitialized:Z

    if-nez v0, :cond_0

    .line 51
    invoke-static {}, Landroid/view/Display;->nativeClassInit()V

    .line 52
    const/4 v0, 0x1

    sput-boolean v0, Landroid/view/Display;->sInitialized:Z

    .line 54
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    if-eqz p2, :cond_1

    .end local p2
    :goto_0
    iput-object p2, p0, Landroid/view/Display;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    .line 56
    iput p1, p0, Landroid/view/Display;->mDisplay:I

    .line 57
    invoke-direct {p0, p1}, Landroid/view/Display;->init(I)V

    .line 58
    return-void

    .line 54
    .restart local p2
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 55
    :cond_1
    new-instance p2, Landroid/view/CompatibilityInfoHolder;

    .end local p2
    invoke-direct {p2}, Landroid/view/CompatibilityInfoHolder;-><init>()V

    goto :goto_0
.end method

.method public static createCompatibleDisplay(ILandroid/view/CompatibilityInfoHolder;)Landroid/view/Display;
    .locals 1
    .parameter "displayId"
    .parameter "compat"

    .prologue
    .line 437
    new-instance v0, Landroid/view/Display;

    invoke-direct {v0, p0, p1}, Landroid/view/Display;-><init>(ILandroid/view/CompatibilityInfoHolder;)V

    return-object v0
.end method

.method static native getDisplayCount()I
.end method

.method private native getRawHeightNative()I
.end method

.method private native getRawWidthNative()I
.end method

.method private getSizeInternal(Landroid/graphics/Point;Z)V
    .locals 7
    .parameter "outSize"
    .parameter "doCompat"

    .prologue
    .line 100
    :try_start_0
    invoke-static {}, Landroid/view/Display;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v2

    .line 101
    .local v2, wm:Landroid/view/IWindowManager;
    if-eqz v2, :cond_2

    .line 102
    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->getDisplaySize(Landroid/graphics/Point;)V

    .line 104
    if-eqz p2, :cond_0

    iget-object v3, p0, Landroid/view/Display;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    invoke-virtual {v3}, Landroid/view/CompatibilityInfoHolder;->getIfNeeded()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    .local v0, ci:Landroid/content/res/CompatibilityInfo;
    if-eqz v0, :cond_0

    .line 105
    iget-object v4, p0, Landroid/view/Display;->mTmpMetrics:Landroid/util/DisplayMetrics;

    monitor-enter v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :try_start_1
    iget-object v3, p0, Landroid/view/Display;->mTmpMetrics:Landroid/util/DisplayMetrics;

    iget v5, p1, Landroid/graphics/Point;->x:I

    iput v5, v3, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 107
    iget-object v3, p0, Landroid/view/Display;->mTmpMetrics:Landroid/util/DisplayMetrics;

    iget v5, p1, Landroid/graphics/Point;->y:I

    iput v5, v3, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 109
    sget-boolean v3, Landroid/util/DisplayMetrics;->IS_WEBTOP_ENABLED:Z

    if-eqz v3, :cond_1

    .line 110
    iget-object v3, p0, Landroid/view/Display;->mTmpMetrics:Landroid/util/DisplayMetrics;

    sget v5, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v5, v5

    const/high16 v6, 0x4320

    div-float/2addr v5, v6

    iput v5, v3, Landroid/util/DisplayMetrics;->density:F

    .line 116
    :goto_0
    iget-object v3, p0, Landroid/view/Display;->mTmpMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v3}, Landroid/content/res/CompatibilityInfo;->applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V

    .line 117
    iget-object v3, p0, Landroid/view/Display;->mTmpMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p1, Landroid/graphics/Point;->x:I

    .line 118
    iget-object v3, p0, Landroid/view/Display;->mTmpMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p1, Landroid/graphics/Point;->y:I

    .line 119
    monitor-exit v4

    .line 137
    .end local v0           #ci:Landroid/content/res/CompatibilityInfo;
    .end local v2           #wm:Landroid/view/IWindowManager;
    :cond_0
    :goto_1
    return-void

    .line 113
    .restart local v0       #ci:Landroid/content/res/CompatibilityInfo;
    .restart local v2       #wm:Landroid/view/IWindowManager;
    :cond_1
    iget-object v3, p0, Landroid/view/Display;->mTmpMetrics:Landroid/util/DisplayMetrics;

    iget v5, p0, Landroid/view/Display;->mDensity:F

    iput v5, v3, Landroid/util/DisplayMetrics;->density:F

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 134
    .end local v0           #ci:Landroid/content/res/CompatibilityInfo;
    .end local v2           #wm:Landroid/view/IWindowManager;
    :catch_0
    move-exception v1

    .line 135
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "Display"

    const-string v4, "Unable to get display size"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 124
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v2       #wm:Landroid/view/IWindowManager;
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Landroid/view/Display;->getRawWidth()I

    move-result v3

    iput v3, p1, Landroid/graphics/Point;->x:I

    .line 125
    invoke-virtual {p0}, Landroid/view/Display;->getRawHeight()I

    move-result v3

    iput v3, p1, Landroid/graphics/Point;->y:I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method static getWindowManager()Landroid/view/IWindowManager;
    .locals 2

    .prologue
    .line 398
    sget-object v1, Landroid/view/Display;->sStaticInit:Ljava/lang/Object;

    monitor-enter v1

    .line 399
    :try_start_0
    sget-object v0, Landroid/view/Display;->sWindowManager:Landroid/view/IWindowManager;

    if-nez v0, :cond_0

    .line 400
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    sput-object v0, Landroid/view/Display;->sWindowManager:Landroid/view/IWindowManager;

    .line 403
    :cond_0
    sget-object v0, Landroid/view/Display;->sWindowManager:Landroid/view/IWindowManager;

    monitor-exit v1

    return-object v0

    .line 404
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private native init(I)V
.end method

.method private static native nativeClassInit()V
.end method


# virtual methods
.method public getDisplayId()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Landroid/view/Display;->mDisplay:I

    return v0
.end method

.method public getHeight()I
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 187
    iget-object v3, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    monitor-enter v3

    .line 188
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 189
    .local v0, now:J
    long-to-float v2, v0

    iget v4, p0, Landroid/view/Display;->mLastGetTime:F

    const/high16 v5, 0x41a0

    add-float/2addr v4, v5

    cmpl-float v2, v2, v4

    if-lez v2, :cond_0

    .line 190
    iget-object v2, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    const/4 v4, 0x1

    invoke-direct {p0, v2, v4}, Landroid/view/Display;->getSizeInternal(Landroid/graphics/Point;Z)V

    .line 191
    long-to-float v2, v0

    iput v2, p0, Landroid/view/Display;->mLastGetTime:F

    .line 193
    :cond_0
    iget-object v2, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    monitor-exit v3

    return v2

    .line 194
    .end local v0           #now:J
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getMaximumSizeDimension()I
    .locals 4

    .prologue
    .line 159
    :try_start_0
    invoke-static {}, Landroid/view/Display;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v1

    .line 160
    .local v1, wm:Landroid/view/IWindowManager;
    invoke-interface {v1}, Landroid/view/IWindowManager;->getMaximumSizeDimension()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 163
    .end local v1           #wm:Landroid/view/IWindowManager;
    :goto_0
    return v2

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "Display"

    const-string v3, "Unable to get display maximum size dimension"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getMetrics(Landroid/util/DisplayMetrics;)V
    .locals 4
    .parameter "outMetrics"

    .prologue
    .line 313
    iget-object v2, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    monitor-enter v2

    .line 314
    :try_start_0
    iget-object v1, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Landroid/view/Display;->getSizeInternal(Landroid/graphics/Point;Z)V

    .line 315
    iget-object v1, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p1, v1, v3}, Landroid/view/Display;->getMetricsWithSize(Landroid/util/DisplayMetrics;II)V

    .line 316
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    iget-object v1, p0, Landroid/view/Display;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    invoke-virtual {v1}, Landroid/view/CompatibilityInfoHolder;->getIfNeeded()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    .line 319
    .local v0, ci:Landroid/content/res/CompatibilityInfo;
    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {v0, p1}, Landroid/content/res/CompatibilityInfo;->applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V

    .line 326
    :cond_0
    return-void

    .line 316
    .end local v0           #ci:Landroid/content/res/CompatibilityInfo;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getMetricsWithSize(Landroid/util/DisplayMetrics;II)V
    .locals 1
    .parameter "outMetrics"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 364
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/Display;->getMetricsWithSizeAndDensity(Landroid/util/DisplayMetrics;III)V

    .line 365
    return-void
.end method

.method public getMetricsWithSizeAndDensity(Landroid/util/DisplayMetrics;III)V
    .locals 3
    .parameter "outMetrics"
    .parameter "width"
    .parameter "height"
    .parameter "density"

    .prologue
    const/high16 v2, 0x4320

    .line 373
    sget-boolean v0, Landroid/util/DisplayMetrics;->IS_WEBTOP_ENABLED:Z

    if-eqz v0, :cond_0

    .line 374
    iput p4, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 380
    :goto_0
    iput p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p2, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 381
    iput p3, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p3, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 384
    sget-boolean v0, Landroid/util/DisplayMetrics;->IS_WEBTOP_ENABLED:Z

    if-eqz v0, :cond_1

    .line 385
    int-to-float v0, p4

    div-float/2addr v0, v2

    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatDensity:F

    iput v0, p1, Landroid/util/DisplayMetrics;->density:F

    .line 392
    :goto_1
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    iput v0, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 393
    iget v0, p0, Landroid/view/Display;->mDpiX:F

    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    iput v0, p1, Landroid/util/DisplayMetrics;->xdpi:F

    .line 394
    iget v0, p0, Landroid/view/Display;->mDpiY:F

    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    iput v0, p1, Landroid/util/DisplayMetrics;->ydpi:F

    .line 395
    return-void

    .line 376
    :cond_0
    iget v0, p0, Landroid/view/Display;->mDensity:F

    mul-float/2addr v0, v2

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_0

    .line 388
    :cond_1
    iget v0, p0, Landroid/view/Display;->mDensity:F

    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatDensity:F

    iput v0, p1, Landroid/util/DisplayMetrics;->density:F

    goto :goto_1
.end method

.method public native getOrientation()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public getPixelFormat()I
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Landroid/view/Display;->mPixelFormat:I

    return v0
.end method

.method public getRawExternalHeight()I
    .locals 1

    .prologue
    .line 354
    const/16 v0, 0x2d0

    return v0
.end method

.method public getRawExternalWidth()I
    .locals 1

    .prologue
    .line 345
    const/16 v0, 0x500

    return v0
.end method

.method public getRawHeight()I
    .locals 1

    .prologue
    .line 249
    invoke-direct {p0}, Landroid/view/Display;->getRawHeightNative()I

    move-result v0

    .line 252
    .local v0, h:I
    return v0
.end method

.method public getRawWidth()I
    .locals 1

    .prologue
    .line 234
    invoke-direct {p0}, Landroid/view/Display;->getRawWidthNative()I

    move-result v0

    .line 237
    .local v0, w:I
    return v0
.end method

.method public getRealMetrics(Landroid/util/DisplayMetrics;)V
    .locals 3
    .parameter "outMetrics"

    .prologue
    .line 333
    iget-object v1, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    monitor-enter v1

    .line 334
    :try_start_0
    iget-object v0, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 335
    iget-object v0, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p1, v0, v2}, Landroid/view/Display;->getMetricsWithSize(Landroid/util/DisplayMetrics;II)V

    .line 336
    monitor-exit v1

    .line 337
    return-void

    .line 336
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRealSize(Landroid/graphics/Point;)V
    .locals 4
    .parameter "outSize"

    .prologue
    .line 210
    :try_start_0
    invoke-static {}, Landroid/view/Display;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v1

    .line 211
    .local v1, wm:Landroid/view/IWindowManager;
    if-eqz v1, :cond_0

    .line 212
    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->getRealDisplaySize(Landroid/graphics/Point;)V

    .line 224
    .end local v1           #wm:Landroid/view/IWindowManager;
    :goto_0
    return-void

    .line 216
    .restart local v1       #wm:Landroid/view/IWindowManager;
    :cond_0
    invoke-virtual {p0}, Landroid/view/Display;->getRawWidth()I

    move-result v2

    iput v2, p1, Landroid/graphics/Point;->x:I

    .line 217
    invoke-virtual {p0}, Landroid/view/Display;->getRawHeight()I

    move-result v2

    iput v2, p1, Landroid/graphics/Point;->y:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 221
    .end local v1           #wm:Landroid/view/IWindowManager;
    :catch_0
    move-exception v0

    .line 222
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "Display"

    const-string v3, "Unable to get real display size"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getRectSize(Landroid/graphics/Rect;)V
    .locals 5
    .parameter "outSize"

    .prologue
    .line 146
    iget-object v1, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    monitor-enter v1

    .line 147
    :try_start_0
    iget-object v0, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Landroid/view/Display;->getSizeInternal(Landroid/graphics/Point;Z)V

    .line 148
    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 149
    monitor-exit v1

    .line 150
    return-void

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRefreshRate()F
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Landroid/view/Display;->mRefreshRate:F

    return v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 274
    invoke-virtual {p0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    return v0
.end method

.method public getSize(Landroid/graphics/Point;)V
    .locals 1
    .parameter "outSize"

    .prologue
    .line 95
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/view/Display;->getSizeInternal(Landroid/graphics/Point;Z)V

    .line 96
    return-void
.end method

.method public getWidth()I
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 172
    iget-object v3, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    monitor-enter v3

    .line 173
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 174
    .local v0, now:J
    long-to-float v2, v0

    iget v4, p0, Landroid/view/Display;->mLastGetTime:F

    const/high16 v5, 0x41a0

    add-float/2addr v4, v5

    cmpl-float v2, v2, v4

    if-lez v2, :cond_0

    .line 175
    iget-object v2, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    const/4 v4, 0x1

    invoke-direct {p0, v2, v4}, Landroid/view/Display;->getSizeInternal(Landroid/graphics/Point;Z)V

    .line 176
    long-to-float v2, v0

    iput v2, p0, Landroid/view/Display;->mLastGetTime:F

    .line 178
    :cond_0
    iget-object v2, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    monitor-exit v3

    return v2

    .line 179
    .end local v0           #now:J
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
