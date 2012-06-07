.class public Lcom/motorola/Camera/CameraRoll;
.super Ljava/lang/Object;
.source "CameraRoll.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/Camera/CameraRoll$CameraRollUpdate;,
        Lcom/motorola/Camera/CameraRoll$CameraData;,
        Lcom/motorola/Camera/CameraRoll$CameraRollVideoDataObserver;,
        Lcom/motorola/Camera/CameraRoll$CameraRollImageDataObserver;,
        Lcom/motorola/Camera/CameraRoll$SortComparator;,
        Lcom/motorola/Camera/CameraRoll$UpdateCombinedTask;
    }
.end annotation


# static fields
.field private static final BUCKET_ID:Ljava/lang/String; = null

.field private static final DCIM:Ljava/lang/String; = null

.field private static final DIRECTORY:Ljava/lang/String; = null

.field private static final IMAGE_URI:Landroid/net/Uri; = null

.field private static final INDEX_DATA:I = 0x2

.field private static final INDEX_DATE:I = 0x1

.field private static final INDEX_ID:I = 0x0

.field private static final INDEX_ORIENTATION:I = 0x3

.field private static final TAG:Ljava/lang/String; = "CameraRoll"

.field public static final TYPE_IMAGE:I = 0x0

.field public static final TYPE_VIDEO:I = 0x1

.field private static final UPDATE_DATA_IMAGE:I = 0x1

.field private static final UPDATE_DATA_VIDEO:I = 0x0

.field private static final UPDATE_MESSAGE:I = 0x2

.field private static final VIDEO_URI:Landroid/net/Uri;


# instance fields
.field private mApplication:Landroid/app/Application;

.field private mCombinedData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/Camera/CameraRoll$CameraData;",
            ">;"
        }
    .end annotation
.end field

.field private mDataHandler:Landroid/os/Handler;

.field private mDataThread:Landroid/os/HandlerThread;

.field private mImageData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/Camera/CameraRoll$CameraData;",
            ">;"
        }
    .end annotation
.end field

.field private mImageObserver:Lcom/motorola/Camera/CameraRoll$CameraRollImageDataObserver;

.field private mListener:Lcom/motorola/Camera/CameraRoll$CameraRollUpdate;

.field private mMainHandler:Landroid/os/Handler;

.field private mRequestLimit:I

.field private mVideoData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/Camera/CameraRoll$CameraData;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoObserver:Lcom/motorola/Camera/CameraRoll$CameraRollVideoDataObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 75
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/motorola/Camera/CameraRoll;->IMAGE_URI:Landroid/net/Uri;

    .line 76
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/motorola/Camera/CameraRoll;->VIDEO_URI:Landroid/net/Uri;

    .line 84
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/Camera/CameraRoll;->DCIM:Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/motorola/Camera/CameraRoll;->DCIM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/Camera/CameraRoll;->DIRECTORY:Ljava/lang/String;

    .line 91
    sget-object v0, Lcom/motorola/Camera/CameraRoll;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/Camera/CameraRoll;->BUCKET_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 5
    .parameter "application"

    .prologue
    const/4 v4, 0x0

    .line 120
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/motorola/Camera/CameraRoll;->mCombinedData:Ljava/util/ArrayList;

    .line 79
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/motorola/Camera/CameraRoll;->mImageData:Ljava/util/ArrayList;

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/motorola/Camera/CameraRoll;->mVideoData:Ljava/util/ArrayList;

    .line 118
    const/4 v1, -0x1

    iput v1, p0, Lcom/motorola/Camera/CameraRoll;->mRequestLimit:I

    .line 121
    iput-object p1, p0, Lcom/motorola/Camera/CameraRoll;->mApplication:Landroid/app/Application;

    .line 122
    new-instance v1, Lcom/motorola/Camera/CameraRoll$1;

    invoke-virtual {p1}, Landroid/app/Application;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/motorola/Camera/CameraRoll$1;-><init>(Lcom/motorola/Camera/CameraRoll;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/motorola/Camera/CameraRoll;->mMainHandler:Landroid/os/Handler;

    .line 143
    new-instance v1, Lcom/motorola/Camera/CameraRoll$CameraRollImageDataObserver;

    iget-object v2, p0, Lcom/motorola/Camera/CameraRoll;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/motorola/Camera/CameraRoll$CameraRollImageDataObserver;-><init>(Lcom/motorola/Camera/CameraRoll;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/motorola/Camera/CameraRoll;->mImageObserver:Lcom/motorola/Camera/CameraRoll$CameraRollImageDataObserver;

    .line 144
    new-instance v1, Lcom/motorola/Camera/CameraRoll$CameraRollVideoDataObserver;

    iget-object v2, p0, Lcom/motorola/Camera/CameraRoll;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/motorola/Camera/CameraRoll$CameraRollVideoDataObserver;-><init>(Lcom/motorola/Camera/CameraRoll;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/motorola/Camera/CameraRoll;->mVideoObserver:Lcom/motorola/Camera/CameraRoll$CameraRollVideoDataObserver;

    .line 147
    iget-object v1, p0, Lcom/motorola/Camera/CameraRoll;->mApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/motorola/Camera/CameraRoll;->IMAGE_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/motorola/Camera/CameraRoll;->mImageObserver:Lcom/motorola/Camera/CameraRoll$CameraRollImageDataObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 148
    iget-object v1, p0, Lcom/motorola/Camera/CameraRoll;->mApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/motorola/Camera/CameraRoll;->VIDEO_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/motorola/Camera/CameraRoll;->mVideoObserver:Lcom/motorola/Camera/CameraRoll$CameraRollVideoDataObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 152
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "DataThread"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/motorola/Camera/CameraRoll;->mDataThread:Landroid/os/HandlerThread;

    .line 153
    iget-object v1, p0, Lcom/motorola/Camera/CameraRoll;->mDataThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 155
    iget-object v1, p0, Lcom/motorola/Camera/CameraRoll;->mDataThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 156
    .local v0, looper:Landroid/os/Looper;
    if-nez v0, :cond_0

    .line 194
    :goto_0
    return-void

    .line 160
    :cond_0
    new-instance v1, Lcom/motorola/Camera/CameraRoll$2;

    invoke-direct {v1, p0, v0}, Lcom/motorola/Camera/CameraRoll$2;-><init>(Lcom/motorola/Camera/CameraRoll;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/motorola/Camera/CameraRoll;->mDataHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Application;I)V
    .locals 0
    .parameter "application"
    .parameter "limit"

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcom/motorola/Camera/CameraRoll;-><init>(Landroid/app/Application;)V

    .line 205
    iput p2, p0, Lcom/motorola/Camera/CameraRoll;->mRequestLimit:I

    .line 206
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/Camera/CameraRoll;)Lcom/motorola/Camera/CameraRoll$CameraRollUpdate;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/motorola/Camera/CameraRoll;->mListener:Lcom/motorola/Camera/CameraRoll$CameraRollUpdate;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/Camera/CameraRoll;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/motorola/Camera/CameraRoll;->updateImageData()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/motorola/Camera/CameraRoll;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/motorola/Camera/CameraRoll;->getVideoData()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/motorola/Camera/CameraRoll;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/motorola/Camera/CameraRoll;->mDataHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/Camera/CameraRoll;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/motorola/Camera/CameraRoll;->mCombinedData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Lcom/motorola/Camera/CameraRoll;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/motorola/Camera/CameraRoll;->mCombinedData:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$300(Lcom/motorola/Camera/CameraRoll;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/motorola/Camera/CameraRoll;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/motorola/Camera/CameraRoll;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/motorola/Camera/CameraRoll;->updateVideoData()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/motorola/Camera/CameraRoll;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/motorola/Camera/CameraRoll;->mImageData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$702(Lcom/motorola/Camera/CameraRoll;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/motorola/Camera/CameraRoll;->mImageData:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$800(Lcom/motorola/Camera/CameraRoll;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/motorola/Camera/CameraRoll;->getImageData()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/motorola/Camera/CameraRoll;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/motorola/Camera/CameraRoll;->mVideoData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$902(Lcom/motorola/Camera/CameraRoll;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/motorola/Camera/CameraRoll;->mVideoData:Ljava/util/ArrayList;

    return-object p1
.end method

.method private getImageData()Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/Camera/CameraRoll$CameraData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 355
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .local v14, updateData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/Camera/CameraRoll$CameraData;>;"
    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v1

    const/4 v1, 0x1

    const-string v5, "datetaken"

    aput-object v5, v3, v1

    const/4 v1, 0x2

    const-string v5, "_data"

    aput-object v5, v3, v1

    const/4 v1, 0x3

    const-string v5, "orientation"

    aput-object v5, v3, v1

    .line 360
    .local v3, projection:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mime_type=\'image/jpeg\' AND bucket_id="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Lcom/motorola/Camera/CameraRoll;->BUCKET_ID:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 362
    .local v4, selection:Ljava/lang/String;
    const-string v6, "datetaken DESC,_id DESC"

    .line 364
    .local v6, order:Ljava/lang/String;
    sget-object v2, Lcom/motorola/Camera/CameraRoll;->IMAGE_URI:Landroid/net/Uri;

    .line 365
    .local v2, baseUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/Camera/CameraRoll;->mRequestLimit:I

    if-lez v1, :cond_0

    .line 366
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v5, "limit"

    move-object/from16 v0, p0

    iget v15, v0, Lcom/motorola/Camera/CameraRoll;->mRequestLimit:I

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v5, v15}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 369
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/CameraRoll;->mApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 372
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 374
    :cond_1
    new-instance v8, Lcom/motorola/Camera/CameraRoll$CameraData;

    invoke-direct {v8}, Lcom/motorola/Camera/CameraRoll$CameraData;-><init>()V

    .line 375
    .local v8, data:Lcom/motorola/Camera/CameraRoll$CameraData;
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 376
    .local v12, id:I
    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 377
    .local v9, dataName:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 378
    .local v10, dateTaken:J
    const/4 v1, 0x3

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 379
    .local v13, orientation:I
    int-to-long v15, v12

    iput-wide v15, v8, Lcom/motorola/Camera/CameraRoll$CameraData;->_id:J

    .line 380
    const/4 v1, 0x0

    iput v1, v8, Lcom/motorola/Camera/CameraRoll$CameraData;->dataType:I

    .line 381
    iput-object v9, v8, Lcom/motorola/Camera/CameraRoll$CameraData;->fileName:Ljava/lang/String;

    .line 382
    iput-wide v10, v8, Lcom/motorola/Camera/CameraRoll$CameraData;->dateTaken:J

    .line 383
    iput v13, v8, Lcom/motorola/Camera/CameraRoll$CameraData;->orientation:I

    .line 384
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 388
    .end local v8           #data:Lcom/motorola/Camera/CameraRoll$CameraData;
    .end local v9           #dataName:Ljava/lang/String;
    .end local v10           #dateTaken:J
    .end local v12           #id:I
    .end local v13           #orientation:I
    :cond_2
    if-eqz v7, :cond_3

    .line 389
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 392
    :cond_3
    return-object v14
.end method

.method private getVideoData()Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/Camera/CameraRoll$CameraData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 402
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 404
    .local v13, updateData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/Camera/CameraRoll$CameraData;>;"
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "datetaken"

    aput-object v4, v2, v0

    const/4 v0, 0x2

    const-string v4, "_data"

    aput-object v4, v2, v0

    .line 406
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bucket_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/motorola/Camera/CameraRoll;->BUCKET_ID:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 407
    .local v3, selection:Ljava/lang/String;
    const-string v5, "datetaken DESC,_id DESC"

    .line 410
    .local v5, order:Ljava/lang/String;
    sget-object v1, Lcom/motorola/Camera/CameraRoll;->VIDEO_URI:Landroid/net/Uri;

    .line 412
    .local v1, baseUri:Landroid/net/Uri;
    iget v0, p0, Lcom/motorola/Camera/CameraRoll;->mRequestLimit:I

    if-lez v0, :cond_0

    .line 413
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "limit"

    iget v14, p0, Lcom/motorola/Camera/CameraRoll;->mRequestLimit:I

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v4, v14}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/CameraRoll;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 419
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 421
    :cond_1
    new-instance v7, Lcom/motorola/Camera/CameraRoll$CameraData;

    invoke-direct {v7}, Lcom/motorola/Camera/CameraRoll$CameraData;-><init>()V

    .line 422
    .local v7, data:Lcom/motorola/Camera/CameraRoll$CameraData;
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v11, v0

    .line 423
    .local v11, id:J
    iput-wide v11, v7, Lcom/motorola/Camera/CameraRoll$CameraData;->_id:J

    .line 424
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 425
    .local v8, dataName:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 426
    .local v9, dateTaken:J
    const/4 v0, 0x1

    iput v0, v7, Lcom/motorola/Camera/CameraRoll$CameraData;->dataType:I

    .line 427
    iput-object v8, v7, Lcom/motorola/Camera/CameraRoll$CameraData;->fileName:Ljava/lang/String;

    .line 428
    iput-wide v9, v7, Lcom/motorola/Camera/CameraRoll$CameraData;->dateTaken:J

    .line 429
    const/4 v0, 0x0

    iput v0, v7, Lcom/motorola/Camera/CameraRoll$CameraData;->orientation:I

    .line 430
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 434
    .end local v7           #data:Lcom/motorola/Camera/CameraRoll$CameraData;
    .end local v8           #dataName:Ljava/lang/String;
    .end local v9           #dateTaken:J
    .end local v11           #id:J
    :cond_2
    if-eqz v6, :cond_3

    .line 435
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 438
    :cond_3
    return-object v13
.end method

.method private declared-synchronized updateImageData()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 238
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/motorola/Camera/CameraRoll;->getImageData()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 240
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/Camera/CameraRoll$CameraData;>;"
    if-nez v0, :cond_0

    .line 263
    :goto_0
    monitor-exit p0

    return v1

    .line 244
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/motorola/Camera/CameraRoll;->mImageData:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 247
    if-eqz v0, :cond_2

    :try_start_2
    iget-object v3, p0, Lcom/motorola/Camera/CameraRoll;->mImageData:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 248
    sget-boolean v3, Lcom/motorola/Camera/Util;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "CameraRoll"

    const-string v4, " no update"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_1
    monitor-exit v2

    goto :goto_0

    .line 253
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 238
    .end local v0           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/Camera/CameraRoll$CameraData;>;"
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 251
    .restart local v0       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/Camera/CameraRoll$CameraData;>;"
    :cond_2
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/motorola/Camera/CameraRoll;->mImageData:Ljava/util/ArrayList;

    .line 252
    iput-object v0, p0, Lcom/motorola/Camera/CameraRoll;->mImageData:Ljava/util/ArrayList;

    .line 253
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 255
    :try_start_5
    iget-object v2, p0, Lcom/motorola/Camera/CameraRoll;->mVideoData:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 256
    :try_start_6
    iget-object v1, p0, Lcom/motorola/Camera/CameraRoll;->mVideoData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 257
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 259
    :try_start_7
    iget-object v2, p0, Lcom/motorola/Camera/CameraRoll;->mCombinedData:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 260
    :try_start_8
    iput-object v0, p0, Lcom/motorola/Camera/CameraRoll;->mCombinedData:Ljava/util/ArrayList;

    .line 262
    iget-object v1, p0, Lcom/motorola/Camera/CameraRoll;->mCombinedData:Ljava/util/ArrayList;

    new-instance v3, Lcom/motorola/Camera/CameraRoll$SortComparator;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/motorola/Camera/CameraRoll$SortComparator;-><init>(Lcom/motorola/Camera/CameraRoll;Lcom/motorola/Camera/CameraRoll$1;)V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 263
    const/4 v1, 0x1

    monitor-exit v2

    goto :goto_0

    .line 264
    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 257
    :catchall_3
    move-exception v1

    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
.end method

.method private declared-synchronized updateVideoData()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 268
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/motorola/Camera/CameraRoll;->getVideoData()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 270
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/Camera/CameraRoll$CameraData;>;"
    if-nez v0, :cond_0

    .line 290
    :goto_0
    monitor-exit p0

    return v1

    .line 274
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/motorola/Camera/CameraRoll;->mVideoData:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 275
    if-eqz v0, :cond_1

    :try_start_2
    iget-object v3, p0, Lcom/motorola/Camera/CameraRoll;->mVideoData:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 276
    monitor-exit v2

    goto :goto_0

    .line 280
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 268
    .end local v0           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/Camera/CameraRoll$CameraData;>;"
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 278
    .restart local v0       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/Camera/CameraRoll$CameraData;>;"
    :cond_1
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/motorola/Camera/CameraRoll;->mVideoData:Ljava/util/ArrayList;

    .line 279
    iput-object v0, p0, Lcom/motorola/Camera/CameraRoll;->mVideoData:Ljava/util/ArrayList;

    .line 280
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 282
    :try_start_5
    iget-object v2, p0, Lcom/motorola/Camera/CameraRoll;->mImageData:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 283
    :try_start_6
    iget-object v1, p0, Lcom/motorola/Camera/CameraRoll;->mImageData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 284
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 286
    :try_start_7
    iget-object v2, p0, Lcom/motorola/Camera/CameraRoll;->mCombinedData:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 287
    :try_start_8
    iput-object v0, p0, Lcom/motorola/Camera/CameraRoll;->mCombinedData:Ljava/util/ArrayList;

    .line 288
    new-instance v1, Lcom/motorola/Camera/CameraRoll$SortComparator;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/motorola/Camera/CameraRoll$SortComparator;-><init>(Lcom/motorola/Camera/CameraRoll;Lcom/motorola/Camera/CameraRoll$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 289
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 290
    const/4 v1, 0x1

    goto :goto_0

    .line 284
    :catchall_2
    move-exception v1

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 289
    :catchall_3
    move-exception v1

    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 481
    iget-object v0, p0, Lcom/motorola/Camera/CameraRoll;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/Camera/CameraRoll;->mImageObserver:Lcom/motorola/Camera/CameraRoll$CameraRollImageDataObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 482
    iget-object v0, p0, Lcom/motorola/Camera/CameraRoll;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/Camera/CameraRoll;->mVideoObserver:Lcom/motorola/Camera/CameraRoll$CameraRollVideoDataObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 483
    iput-object v2, p0, Lcom/motorola/Camera/CameraRoll;->mListener:Lcom/motorola/Camera/CameraRoll$CameraRollUpdate;

    .line 484
    iput-object v2, p0, Lcom/motorola/Camera/CameraRoll;->mImageObserver:Lcom/motorola/Camera/CameraRoll$CameraRollImageDataObserver;

    .line 485
    iput-object v2, p0, Lcom/motorola/Camera/CameraRoll;->mVideoObserver:Lcom/motorola/Camera/CameraRoll$CameraRollVideoDataObserver;

    .line 486
    iput-object v2, p0, Lcom/motorola/Camera/CameraRoll;->mImageData:Ljava/util/ArrayList;

    .line 487
    iput-object v2, p0, Lcom/motorola/Camera/CameraRoll;->mVideoData:Ljava/util/ArrayList;

    .line 488
    iput-object v2, p0, Lcom/motorola/Camera/CameraRoll;->mCombinedData:Ljava/util/ArrayList;

    .line 490
    return-void
.end method

.method public reload()V
    .locals 2

    .prologue
    .line 226
    new-instance v0, Lcom/motorola/Camera/CameraRoll$UpdateCombinedTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/Camera/CameraRoll$UpdateCombinedTask;-><init>(Lcom/motorola/Camera/CameraRoll;Lcom/motorola/Camera/CameraRoll$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CameraRoll$UpdateCombinedTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 227
    return-void
.end method

.method public setUpdateListener(Lcom/motorola/Camera/CameraRoll$CameraRollUpdate;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 217
    iput-object p1, p0, Lcom/motorola/Camera/CameraRoll;->mListener:Lcom/motorola/Camera/CameraRoll$CameraRollUpdate;

    .line 218
    return-void
.end method
