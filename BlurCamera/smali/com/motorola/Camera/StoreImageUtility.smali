.class public Lcom/motorola/Camera/StoreImageUtility;
.super Ljava/lang/Object;
.source "StoreImageUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/Camera/StoreImageUtility$1;,
        Lcom/motorola/Camera/StoreImageUtility$NotifierScannerTask;,
        Lcom/motorola/Camera/StoreImageUtility$StoreXmpDataInFiles;,
        Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;,
        Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "StoreImageUtility"

.field private static final THREAD_POOL_SHUTDOWN_NOW_TIME_RESPONSE:I = 0x2

.field private static final THREAD_POOL_SHUTDOWN_TIME_TASK_COMPLETE:I = 0x7

.field private static final THREAD_POOL_SIZE:I = 0x4

.field public static mPool:Ljava/util/concurrent/ExecutorService;

.field private static mSinglePool:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field private final mAStoreImageMemberInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mAUriList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mApplicationContext:Landroid/content/Context;

.field private mCameraActivity:Lcom/motorola/Camera/Camera;

.field private mContext:Landroid/content/Context;

.field private mDataCleared:Z

.field private mImageSavedCount:I

.field private mMainPictureData:[B

.field private mMainPictureUri:Landroid/net/Uri;

.field private mSiuLastPictureInfo:Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;

.field private mStoreImageUtility:Lcom/motorola/Camera/StoreImageUtility;

.field private mXud:Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/Camera/StoreImageUtility;->mSinglePool:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/motorola/Camera/Camera;Landroid/content/Context;)V
    .locals 3
    .parameter "context"
    .parameter "camera"
    .parameter "applicationcontext"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object v1, p0, Lcom/motorola/Camera/StoreImageUtility;->mApplicationContext:Landroid/content/Context;

    .line 156
    iput-object v1, p0, Lcom/motorola/Camera/StoreImageUtility;->mContext:Landroid/content/Context;

    .line 157
    iput-object v1, p0, Lcom/motorola/Camera/StoreImageUtility;->mCameraActivity:Lcom/motorola/Camera/Camera;

    .line 164
    iput v2, p0, Lcom/motorola/Camera/StoreImageUtility;->mImageSavedCount:I

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/Camera/StoreImageUtility;->mDataCleared:Z

    .line 166
    iput-object v1, p0, Lcom/motorola/Camera/StoreImageUtility;->mStoreImageUtility:Lcom/motorola/Camera/StoreImageUtility;

    .line 206
    iput-object p1, p0, Lcom/motorola/Camera/StoreImageUtility;->mContext:Landroid/content/Context;

    .line 208
    iput-object p2, p0, Lcom/motorola/Camera/StoreImageUtility;->mCameraActivity:Lcom/motorola/Camera/Camera;

    .line 209
    iput-object p3, p0, Lcom/motorola/Camera/StoreImageUtility;->mApplicationContext:Landroid/content/Context;

    .line 217
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/motorola/Camera/StoreImageUtility;->mPool:Ljava/util/concurrent/ExecutorService;

    .line 218
    invoke-static {}, Lcom/motorola/blur/util/concurrent/ServiceThreadPool;->newSingleThreadExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Lcom/motorola/Camera/StoreImageUtility;->mSinglePool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/Camera/StoreImageUtility;->mAStoreImageMemberInfo:Ljava/util/ArrayList;

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/Camera/StoreImageUtility;->mAUriList:Ljava/util/ArrayList;

    .line 227
    iput-object v1, p0, Lcom/motorola/Camera/StoreImageUtility;->mMainPictureUri:Landroid/net/Uri;

    .line 228
    iput-object v1, p0, Lcom/motorola/Camera/StoreImageUtility;->mSiuLastPictureInfo:Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;

    .line 231
    invoke-static {}, Lcom/motorola/Camera/CameraXmpUtility/CamXmpUtility;->registerNameSpace()Z

    .line 234
    new-instance v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData;

    invoke-direct {v0}, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData;-><init>()V

    iput-object v0, p0, Lcom/motorola/Camera/StoreImageUtility;->mXud:Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData;

    .line 235
    iput v2, p0, Lcom/motorola/Camera/StoreImageUtility;->mImageSavedCount:I

    .line 236
    return-void
.end method

.method static synthetic access$1400(Lcom/motorola/Camera/StoreImageUtility;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/motorola/Camera/StoreImageUtility;->mAStoreImageMemberInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/motorola/Camera/StoreImageUtility;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/motorola/Camera/StoreImageUtility;->mImageSavedCount:I

    return v0
.end method

.method static synthetic access$1508(Lcom/motorola/Camera/StoreImageUtility;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/motorola/Camera/StoreImageUtility;->mImageSavedCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/motorola/Camera/StoreImageUtility;->mImageSavedCount:I

    return v0
.end method

.method static synthetic access$1700(Lcom/motorola/Camera/StoreImageUtility;)Lcom/motorola/Camera/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/motorola/Camera/StoreImageUtility;->mCameraActivity:Lcom/motorola/Camera/Camera;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/motorola/Camera/StoreImageUtility;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/motorola/Camera/StoreImageUtility;->mMainPictureData:[B

    return-object v0
.end method

.method static synthetic access$1802(Lcom/motorola/Camera/StoreImageUtility;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/motorola/Camera/StoreImageUtility;->mMainPictureData:[B

    return-object p1
.end method

.method static synthetic access$1900(Lcom/motorola/Camera/StoreImageUtility;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/motorola/Camera/StoreImageUtility;->mMainPictureUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/motorola/Camera/StoreImageUtility;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/motorola/Camera/StoreImageUtility;->mMainPictureUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/motorola/Camera/StoreImageUtility;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/motorola/Camera/StoreImageUtility;->mAUriList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/motorola/Camera/StoreImageUtility;)Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/motorola/Camera/StoreImageUtility;->mSiuLastPictureInfo:Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/motorola/Camera/StoreImageUtility;Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/motorola/Camera/StoreImageUtility;->mSiuLastPictureInfo:Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/motorola/Camera/StoreImageUtility;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/motorola/Camera/StoreImageUtility;->mDataCleared:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/motorola/Camera/StoreImageUtility;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/motorola/Camera/StoreImageUtility;->mDataCleared:Z

    return p1
.end method

.method static synthetic access$2300()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/motorola/Camera/StoreImageUtility;->mSinglePool:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/motorola/Camera/StoreImageUtility;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/motorola/Camera/StoreImageUtility;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/motorola/Camera/StoreImageUtility;)Lcom/motorola/Camera/StoreImageUtility;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/motorola/Camera/StoreImageUtility;->mStoreImageUtility:Lcom/motorola/Camera/StoreImageUtility;

    return-object v0
.end method

.method private getXmpShootingmode(II)I
    .locals 3
    .parameter "camerashootingmode"
    .parameter "sequencenumber"

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 465
    if-nez p1, :cond_1

    .line 476
    :cond_0
    :goto_0
    return v0

    .line 467
    :cond_1
    if-ne p1, v1, :cond_3

    .line 468
    if-nez p2, :cond_2

    move v0, v1

    .line 469
    goto :goto_0

    :cond_2
    move v0, v2

    .line 471
    goto :goto_0

    .line 473
    :cond_3
    if-ne p1, v2, :cond_0

    .line 474
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private shutdown(Ljava/util/concurrent/ExecutorService;)V
    .locals 4
    .parameter "pool"

    .prologue
    .line 323
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 324
    const-string v1, "StoreImageUtility"

    const-string v2, "pool shutdown initiated"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_0
    if-eqz p1, :cond_2

    .line 327
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 328
    invoke-virtual {p0}, Lcom/motorola/Camera/StoreImageUtility;->clearReferences()V

    .line 331
    const-wide/16 v1, 0x7

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v1, v2, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 333
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 335
    const-wide/16 v1, 0x2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v1, v2, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 337
    const-string v1, "StoreImageUtility"

    const-string v2, "shutdown: Pool did not terminate"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 346
    :cond_2
    return-void

    .line 340
    :catch_0
    move-exception v0

    .line 342
    .local v0, ie:Ljava/lang/Exception;
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public clearReferences()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 270
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 271
    const-string v0, "StoreImageUtility"

    const-string v1, "KPI: StoreImageUtility.clearReferences"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_0
    iput-object v2, p0, Lcom/motorola/Camera/StoreImageUtility;->mContext:Landroid/content/Context;

    .line 274
    iput-object v2, p0, Lcom/motorola/Camera/StoreImageUtility;->mCameraActivity:Lcom/motorola/Camera/Camera;

    .line 275
    return-void
.end method

.method public clearStoreImageData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/Camera/StoreImageUtility;->mDataCleared:Z

    .line 280
    iget-object v0, p0, Lcom/motorola/Camera/StoreImageUtility;->mAStoreImageMemberInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/StoreImageUtility;->mAStoreImageMemberInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/motorola/Camera/StoreImageUtility;->mAStoreImageMemberInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 282
    iget-object v0, p0, Lcom/motorola/Camera/StoreImageUtility;->mAStoreImageMemberInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/StoreImageUtility;->mAUriList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/Camera/StoreImageUtility;->mAUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/motorola/Camera/StoreImageUtility;->mAUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 287
    iget-object v0, p0, Lcom/motorola/Camera/StoreImageUtility;->mAUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 290
    :cond_1
    iput-object v1, p0, Lcom/motorola/Camera/StoreImageUtility;->mMainPictureUri:Landroid/net/Uri;

    .line 291
    iput-object v1, p0, Lcom/motorola/Camera/StoreImageUtility;->mMainPictureData:[B

    .line 292
    iput-object v1, p0, Lcom/motorola/Camera/StoreImageUtility;->mSiuLastPictureInfo:Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;

    .line 293
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/Camera/StoreImageUtility;->mImageSavedCount:I

    .line 294
    return-void
.end method

.method public executeTask(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "job"

    .prologue
    .line 357
    if-eqz p1, :cond_0

    .line 358
    sget-object v0, Lcom/motorola/Camera/StoreImageUtility;->mPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 360
    :cond_0
    return-void
.end method

.method public load(IILjava/lang/String;[BLandroid/location/Location;IZLjava/lang/String;ZLandroid/os/Handler;ILandroid/hardware/Camera;I)V
    .locals 13
    .parameter "shootingmode"
    .parameter "sequencenumber"
    .parameter "groupId"
    .parameter "data"
    .parameter "loc"
    .parameter "lastOrientation"
    .parameter "isRotatorClosed"
    .parameter "currentStorageDirectory"
    .parameter "isxmpMetadataxtorageenable"
    .parameter "handler"
    .parameter "multiburstsequencefrequency"
    .parameter "camera"
    .parameter "multishotmaxcount"

    .prologue
    .line 389
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 391
    .local v10, time:J
    iput-object p0, p0, Lcom/motorola/Camera/StoreImageUtility;->mStoreImageUtility:Lcom/motorola/Camera/StoreImageUtility;

    .line 393
    if-nez p2, :cond_0

    iget-boolean v1, p0, Lcom/motorola/Camera/StoreImageUtility;->mDataCleared:Z

    if-nez v1, :cond_0

    .line 394
    invoke-virtual {p0}, Lcom/motorola/Camera/StoreImageUtility;->clearStoreImageData()V

    .line 398
    :cond_0
    new-instance v9, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;

    const/4 v1, 0x0

    invoke-direct {v9, p0, v1}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;-><init>(Lcom/motorola/Camera/StoreImageUtility;Lcom/motorola/Camera/StoreImageUtility$1;)V

    .line 401
    .local v9, xmpImage:Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;
    #setter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mSequenceNumber:I
    invoke-static {v9, p2}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$102(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;I)I

    .line 402
    move/from16 v0, p11

    #setter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mMultiBurstSequenceFrequency:I
    invoke-static {v9, v0}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$202(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;I)I

    .line 403
    move-object/from16 v0, p3

    #setter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mMultiBurstGroupIdentifier:Ljava/lang/String;
    invoke-static {v9, v0}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$302(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 404
    #setter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mShootingMode:I
    invoke-static {v9, p1}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$402(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;I)I

    .line 405
    move/from16 v0, p13

    #setter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mMultiShotMaxCount:I
    invoke-static {v9, v0}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$502(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;I)I

    .line 408
    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mShootingMode:I
    invoke-static {v9}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$400(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)I

    move-result v1

    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mSequenceNumber:I
    invoke-static {v9}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$100(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/motorola/Camera/StoreImageUtility;->getXmpShootingmode(II)I

    move-result v1

    #setter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mXmpShootingMode:I
    invoke-static {v9, v1}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$602(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;I)I

    .line 410
    move/from16 v0, p9

    #setter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mIsXmpMetaDataStorageEnable:Z
    invoke-static {v9, v0}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$702(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;Z)Z

    .line 411
    move-object/from16 v0, p10

    #setter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mHandler:Landroid/os/Handler;
    invoke-static {v9, v0}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$802(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;Landroid/os/Handler;)Landroid/os/Handler;

    .line 414
    iget-object v1, p0, Lcom/motorola/Camera/StoreImageUtility;->mContext:Landroid/content/Context;

    #setter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mContext:Landroid/content/Context;
    invoke-static {v9, v1}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$902(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;Landroid/content/Context;)Landroid/content/Context;

    .line 419
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mXmpArray:Ljava/util/ArrayList;
    invoke-static {v9, v1}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$1002(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 420
    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mXmpArray:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$1000(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/Camera/StoreImageUtility;->mXud:Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData;

    const-string v3, "ShootingMode"

    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mXmpShootingMode:I
    invoke-static {v9}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$600(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData;->createXmpData(Ljava/lang/String;I)Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpData;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mXmpShootingMode:I
    invoke-static {v9}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$600(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mXmpShootingMode:I
    invoke-static {v9}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$600(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 427
    :cond_1
    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mXmpArray:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$1000(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/Camera/StoreImageUtility;->mXud:Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData;

    const-string v3, "SequenceNumber"

    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mSequenceNumber:I
    invoke-static {v9}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$100(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData;->createXmpData(Ljava/lang/String;I)Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpData;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mXmpArray:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$1000(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/Camera/StoreImageUtility;->mXud:Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData;

    const-string v3, "MultiBurstGroupIdentifier"

    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mMultiBurstGroupIdentifier:Ljava/lang/String;
    invoke-static {v9}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$300(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData;->createXmpData(Ljava/lang/String;Ljava/lang/String;)Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpData;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mXmpArray:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$1000(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/Camera/StoreImageUtility;->mXud:Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData;

    const-string v3, "MultiBurstSequenceFrequency"

    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mMultiBurstSequenceFrequency:I
    invoke-static {v9}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$200(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData;->createXmpData(Ljava/lang/String;I)Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpData;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    :cond_2
    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mSequenceNumber:I
    invoke-static {v9}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$100(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)I

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    :goto_0
    #setter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->isMainPicture:Z
    invoke-static {v9, v1}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$1102(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;Z)Z

    .line 439
    sget-object v12, Lcom/motorola/Camera/StoreImageUtility;->mPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;

    move-object v2, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p12

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v9}, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;-><init>(Lcom/motorola/Camera/StoreImageUtility;[BLandroid/hardware/Camera;Landroid/location/Location;IZLjava/lang/String;Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)V

    invoke-interface {v12, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 441
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_3

    .line 442
    const-string v1, "MotoCameraKPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load() - seq no # "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const-string v1, "MotoCameraKPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Time stat, load() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v10

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_3
    return-void

    .line 435
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public shutdown()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 306
    sget-object v0, Lcom/motorola/Camera/StoreImageUtility;->mPool:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0, v0}, Lcom/motorola/Camera/StoreImageUtility;->shutdown(Ljava/util/concurrent/ExecutorService;)V

    .line 307
    sput-object v1, Lcom/motorola/Camera/StoreImageUtility;->mPool:Ljava/util/concurrent/ExecutorService;

    .line 308
    sget-object v0, Lcom/motorola/Camera/StoreImageUtility;->mSinglePool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {p0, v0}, Lcom/motorola/Camera/StoreImageUtility;->shutdown(Ljava/util/concurrent/ExecutorService;)V

    .line 309
    sput-object v1, Lcom/motorola/Camera/StoreImageUtility;->mSinglePool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 310
    return-void
.end method

.method public updateReferences(Landroid/content/Context;Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "newcontext"
    .parameter "newcamera"

    .prologue
    .line 254
    if-eqz p1, :cond_0

    .line 255
    iput-object p1, p0, Lcom/motorola/Camera/StoreImageUtility;->mContext:Landroid/content/Context;

    .line 257
    :cond_0
    if-eqz p2, :cond_1

    .line 258
    iput-object p2, p0, Lcom/motorola/Camera/StoreImageUtility;->mCameraActivity:Lcom/motorola/Camera/Camera;

    .line 260
    :cond_1
    return-void
.end method
