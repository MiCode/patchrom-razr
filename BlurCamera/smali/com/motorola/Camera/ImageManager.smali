.class public Lcom/motorola/Camera/ImageManager;
.super Ljava/lang/Object;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/Camera/ImageManager$BaseCancelable;,
        Lcom/motorola/Camera/ImageManager$CanceledException;,
        Lcom/motorola/Camera/ImageManager$IAddImage_cancelable;,
        Lcom/motorola/Camera/ImageManager$IGetBoolean_cancelable;,
        Lcom/motorola/Camera/ImageManager$ICancelable;,
        Lcom/motorola/Camera/ImageManager$ThreadSafeOutputStream;
    }
.end annotation


# static fields
.field public static final CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String; = "/dcim/Camera"

.field private static final MINI_THUMB_DATA_FILE_VERSION:I = 0x3

.field private static final MINI_THUMB_TARGET_SIZE:I = 0x60

.field private static final TAG:Ljava/lang/String; = "ImageManager"

.field private static final THUMB_PROJECTION:[Ljava/lang/String; = null

.field private static mMiniThumbData:Ljava/io/RandomAccessFile; = null

.field private static final sBytesPerMiniThumb:I = 0x2710

.field private static sInstance:Lcom/motorola/Camera/ImageManager;

.field private static sStorageURI:Landroid/net/Uri;

.field private static sThumbURI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 54
    sput-object v3, Lcom/motorola/Camera/ImageManager;->sInstance:Lcom/motorola/Camera/ImageManager;

    .line 55
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "image_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "width"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "height"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/Camera/ImageManager;->THUMB_PROJECTION:[Ljava/lang/String;

    .line 59
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/motorola/Camera/ImageManager;->sStorageURI:Landroid/net/Uri;

    .line 60
    sget-object v0, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/motorola/Camera/ImageManager;->sThumbURI:Landroid/net/Uri;

    .line 62
    sput-object v3, Lcom/motorola/Camera/ImageManager;->mMiniThumbData:Ljava/io/RandomAccessFile;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 146
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/Camera/ImageManager;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/Camera/ImageManager;->saveThumbnail(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private closeMiniThumbFile()V
    .locals 3

    .prologue
    .line 618
    sget-object v1, Lcom/motorola/Camera/ImageManager;->mMiniThumbData:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_0

    .line 620
    :try_start_0
    sget-object v1, Lcom/motorola/Camera/ImageManager;->mMiniThumbData:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    :goto_0
    const/4 v1, 0x0

    sput-object v1, Lcom/motorola/Camera/ImageManager;->mMiniThumbData:Ljava/io/RandomAccessFile;

    .line 628
    :cond_0
    return-void

    .line 621
    :catch_0
    move-exception v0

    .line 623
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 624
    const-string v1, "ImageManager"

    const-string v2, "Failing to close mini thumb file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static convertRotationExifGoogle(I)I
    .locals 3
    .parameter "rotation"

    .prologue
    const/16 v2, 0x10e

    const/16 v1, 0xb4

    const/16 v0, 0x5a

    .line 267
    if-ne p0, v2, :cond_1

    .line 268
    const/4 v0, 0x0

    .line 274
    :cond_0
    :goto_0
    return v0

    .line 269
    :cond_1
    if-eq p0, v1, :cond_0

    .line 271
    if-ne p0, v0, :cond_2

    move v0, v1

    .line 272
    goto :goto_0

    :cond_2
    move v0, v2

    .line 274
    goto :goto_0
.end method

.method public static instance()Lcom/motorola/Camera/ImageManager;
    .locals 1

    .prologue
    .line 206
    sget-object v0, Lcom/motorola/Camera/ImageManager;->sInstance:Lcom/motorola/Camera/ImageManager;

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Lcom/motorola/Camera/ImageManager;

    invoke-direct {v0}, Lcom/motorola/Camera/ImageManager;-><init>()V

    sput-object v0, Lcom/motorola/Camera/ImageManager;->sInstance:Lcom/motorola/Camera/ImageManager;

    .line 209
    :cond_0
    sget-object v0, Lcom/motorola/Camera/ImageManager;->sInstance:Lcom/motorola/Camera/ImageManager;

    return-object v0
.end method

.method public static miniThumbData(Landroid/graphics/Bitmap;)[B
    .locals 10
    .parameter "source"

    .prologue
    const/4 v0, 0x0

    const/16 v9, 0x60

    const/high16 v8, 0x42c0

    .line 518
    if-nez p0, :cond_0

    .line 544
    :goto_0
    return-object v0

    .line 522
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 523
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v5, v8, v6

    .line 527
    .local v5, scale:F
    :goto_1
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 528
    .local v2, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v2, v5, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 529
    const/4 v6, 0x0

    invoke-static {v2, p0, v9, v9, v6}, Lcom/motorola/Camera/ImageManager;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 531
    .local v4, miniThumbnail:Landroid/graphics/Bitmap;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 532
    .local v3, miniOutStream:Ljava/io/ByteArrayOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x4b

    invoke-virtual {v4, v6, v7, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 533
    if-eq v4, p0, :cond_1

    .line 534
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 538
    :cond_1
    :try_start_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 539
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 540
    .local v0, data:[B
    goto :goto_0

    .line 525
    .end local v0           #data:[B
    .end local v2           #matrix:Landroid/graphics/Matrix;
    .end local v3           #miniOutStream:Ljava/io/ByteArrayOutputStream;
    .end local v4           #miniThumbnail:Landroid/graphics/Bitmap;
    .end local v5           #scale:F
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v5, v8, v6

    .restart local v5       #scale:F
    goto :goto_1

    .line 541
    .restart local v2       #matrix:Landroid/graphics/Matrix;
    .restart local v3       #miniOutStream:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #miniThumbnail:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 542
    .local v1, ex:Ljava/io/IOException;
    const-string v6, "ImageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "got exception ex "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static roundOrientation(I)I
    .locals 1
    .parameter "orientation"

    .prologue
    .line 213
    const/16 v0, 0x2d

    if-le p0, v0, :cond_0

    const/16 v0, 0x13b

    if-le p0, v0, :cond_1

    .line 214
    :cond_0
    const/4 v0, 0x0

    .line 219
    :goto_0
    return v0

    .line 215
    :cond_1
    const/16 v0, 0x87

    if-gt p0, v0, :cond_2

    .line 216
    const/16 v0, 0x5a

    goto :goto_0

    .line 217
    :cond_2
    const/16 v0, 0xe1

    if-gt p0, v0, :cond_3

    .line 218
    const/16 v0, 0xb4

    goto :goto_0

    .line 219
    :cond_3
    const/16 v0, 0x10e

    goto :goto_0
.end method

.method private saveThumbnail(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 14
    .parameter "cr"
    .parameter "uri"
    .parameter "thumbnail"

    .prologue
    .line 476
    invoke-static/range {p2 .. p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    .line 477
    .local v9, imageId:J
    const/4 v12, 0x0

    .line 479
    .local v12, thumbUri:Landroid/net/Uri;
    :try_start_0
    sget-object v2, Lcom/motorola/Camera/ImageManager;->sThumbURI:Landroid/net/Uri;

    sget-object v3, Lcom/motorola/Camera/ImageManager;->THUMB_PROJECTION:[Ljava/lang/String;

    const-string v4, "image_id=?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 482
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    sget-object v1, Lcom/motorola/Camera/ImageManager;->sThumbURI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 492
    :cond_0
    if-eqz v7, :cond_1

    .line 493
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 494
    :cond_1
    if-nez v12, :cond_2

    .line 495
    new-instance v13, Landroid/content/ContentValues;

    const/4 v1, 0x4

    invoke-direct {v13, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 496
    .local v13, values:Landroid/content/ContentValues;
    const-string v1, "kind"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 497
    const-string v1, "image_id"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 498
    const-string v1, "height"

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 499
    const-string v1, "width"

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 500
    sget-object v1, Lcom/motorola/Camera/ImageManager;->sThumbURI:Landroid/net/Uri;

    invoke-virtual {p1, v1, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v12

    .line 502
    .end local v13           #values:Landroid/content/ContentValues;
    :cond_2
    if-nez v12, :cond_3

    .line 503
    const-string v1, "ImageManager"

    const-string v2, "Failed to get thumb uri"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    .end local v7           #c:Landroid/database/Cursor;
    :goto_0
    return-void

    .line 506
    .restart local v7       #c:Landroid/database/Cursor;
    :cond_3
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_4

    const-string v1, "ImageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "thumbnail path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_4
    invoke-virtual {p1, v12}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v11

    .line 508
    .local v11, thumbOut:Ljava/io/OutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x3c

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 509
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 511
    .end local v7           #c:Landroid/database/Cursor;
    .end local v11           #thumbOut:Ljava/io/OutputStream;
    :catch_0
    move-exception v8

    .line 512
    .local v8, ex:Ljava/lang/Exception;
    const-string v1, "ImageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to store thumbnail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 28
    .parameter "scaler"
    .parameter "source"
    .parameter "targetWidth"
    .parameter "targetHeight"
    .parameter "scaleUp"

    .prologue
    .line 548
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int v16, v3, p2

    .line 549
    .local v16, deltaX:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int v18, v3, p3

    .line 550
    .local v18, deltaY:I
    if-nez p4, :cond_3

    if-ltz v16, :cond_0

    if-gez v18, :cond_3

    .line 557
    :cond_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 559
    .local v11, b2:Landroid/graphics/Bitmap;
    new-instance v15, Landroid/graphics/Canvas;

    invoke-direct {v15, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 561
    .local v15, c:Landroid/graphics/Canvas;
    const/4 v3, 0x0

    div-int/lit8 v4, v16, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 562
    .local v17, deltaXHalf:I
    const/4 v3, 0x0

    div-int/lit8 v4, v18, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 563
    .local v19, deltaYHalf:I
    new-instance v26, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move/from16 v0, p2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int v3, v3, v17

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move/from16 v0, p3

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v4, v4, v19

    move-object/from16 v0, v26

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 566
    .local v26, src:Landroid/graphics/Rect;
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int v3, p2, v3

    div-int/lit8 v21, v3, 0x2

    .line 567
    .local v21, dstX:I
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int v3, p3, v3

    div-int/lit8 v22, v3, 0x2

    .line 568
    .local v22, dstY:I
    new-instance v20, Landroid/graphics/Rect;

    sub-int v3, p2, v21

    sub-int v4, p3, v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 570
    .local v20, dst:Landroid/graphics/Rect;
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_1

    .line 571
    const-string v3, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "draw "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ==> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v20

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 615
    .end local v15           #c:Landroid/graphics/Canvas;
    .end local v17           #deltaXHalf:I
    .end local v19           #deltaYHalf:I
    .end local v20           #dst:Landroid/graphics/Rect;
    .end local v21           #dstX:I
    .end local v22           #dstY:I
    .end local v26           #src:Landroid/graphics/Rect;
    :cond_2
    :goto_0
    return-object v11

    .line 575
    .end local v11           #b2:Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v14, v3

    .line 576
    .local v14, bitmapWidthF:F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v13, v3

    .line 578
    .local v13, bitmapHeightF:F
    div-float v12, v14, v13

    .line 579
    .local v12, bitmapAspect:F
    move/from16 v0, p2

    int-to-float v3, v0

    move/from16 v0, p3

    int-to-float v4, v0

    div-float v27, v3, v4

    .line 581
    .local v27, viewAspect:F
    cmpl-float v3, v12, v27

    if-lez v3, :cond_6

    .line 582
    move/from16 v0, p3

    int-to-float v3, v0

    div-float v25, v3, v13

    .line 583
    .local v25, scale:F
    const v3, 0x3f666666

    cmpg-float v3, v25, v3

    if-ltz v3, :cond_4

    const/high16 v3, 0x3f80

    cmpl-float v3, v25, v3

    if-lez v3, :cond_5

    .line 584
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 598
    :goto_1
    if-eqz p0, :cond_9

    .line 600
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    move-object/from16 v3, p1

    move-object/from16 v8, p0

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 606
    .local v10, b1:Landroid/graphics/Bitmap;
    :goto_2
    const/4 v3, 0x0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int v4, v4, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 607
    .local v23, dx1:I
    const/4 v3, 0x0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int v4, v4, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 609
    .local v24, dy1:I
    div-int/lit8 v3, v23, 0x2

    div-int/lit8 v4, v24, 0x2

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v10, v3, v4, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 612
    .restart local v11       #b2:Landroid/graphics/Bitmap;
    move-object/from16 v0, p1

    if-eq v10, v0, :cond_2

    .line 613
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 586
    .end local v10           #b1:Landroid/graphics/Bitmap;
    .end local v11           #b2:Landroid/graphics/Bitmap;
    .end local v23           #dx1:I
    .end local v24           #dy1:I
    :cond_5
    const/16 p0, 0x0

    goto :goto_1

    .line 589
    .end local v25           #scale:F
    :cond_6
    move/from16 v0, p2

    int-to-float v3, v0

    div-float v25, v3, v14

    .line 590
    .restart local v25       #scale:F
    const v3, 0x3f666666

    cmpg-float v3, v25, v3

    if-ltz v3, :cond_7

    const/high16 v3, 0x3f80

    cmpl-float v3, v25, v3

    if-lez v3, :cond_8

    .line 591
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_1

    .line 593
    :cond_8
    const/16 p0, 0x0

    goto :goto_1

    .line 603
    :cond_9
    move-object/from16 v10, p1

    .restart local v10       #b1:Landroid/graphics/Bitmap;
    goto :goto_2
.end method


# virtual methods
.method public addImage(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;ILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 18
    .parameter "ctx"
    .parameter "cr"
    .parameter "imageName"
    .parameter "dateTaken"
    .parameter "location"
    .parameter "orientation"
    .parameter "directory"
    .parameter "filename"

    .prologue
    .line 283
    const/4 v3, 0x0

    .line 284
    .local v3, uri:Landroid/net/Uri;
    new-instance v16, Landroid/content/ContentValues;

    const/4 v2, 0x7

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 285
    .local v16, values:Landroid/content/ContentValues;
    const-string v2, "title"

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v2, "_display_name"

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v2, "datetaken"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 288
    const-string v2, "mime_type"

    const-string v4, "image/jpeg"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v2, "orientation"

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 291
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p8

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 292
    .local v12, parentFile:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    .line 293
    .local v13, path:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    .line 295
    .local v11, name:Ljava/lang/String;
    const-string v2, "bucket_id"

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 296
    const-string v2, "bucket_display_name"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    if-eqz p6, :cond_0

    .line 298
    const-string v2, "latitude"

    invoke-virtual/range {p6 .. p6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 299
    const-string v2, "longitude"

    invoke-virtual/range {p6 .. p6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 302
    :cond_0
    if-eqz p8, :cond_1

    if-eqz p9, :cond_1

    .line 303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 304
    .local v15, value:Ljava/lang/String;
    const-string v2, "_data"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    .end local v15           #value:Ljava/lang/String;
    :cond_1
    :try_start_0
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_2

    .line 309
    const-string v2, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addImage() - calling cr.insert() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/motorola/Camera/ImageManager;->sStorageURI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_2
    sget-object v2, Lcom/motorola/Camera/ImageManager;->sStorageURI:Landroid/net/Uri;

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 313
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_3

    .line 314
    const-string v2, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addImage() - cr.insert returned : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :cond_3
    if-nez v3, :cond_4

    .line 322
    const-string v2, "ImageManager"

    const-string v4, "addImage: uri item returned is not valid, insert failed"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/4 v2, 0x0

    .line 352
    :goto_0
    return-object v2

    .line 316
    :catch_0
    move-exception v9

    .line 317
    .local v9, e:Ljava/lang/Exception;
    const-string v2, "ImageManager"

    const-string v4, "addImage: insert failed"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/4 v2, 0x0

    goto :goto_0

    .line 331
    .end local v9           #e:Ljava/lang/Exception;
    :cond_4
    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "_display_name"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, "_data"

    aput-object v5, v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 333
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_6

    .line 334
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 335
    const/4 v2, 0x2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 336
    .local v10, filePath:Ljava/lang/String;
    if-eqz v10, :cond_5

    .line 337
    const-string v2, "/"

    invoke-virtual {v10, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    .line 338
    .local v14, pos:I
    if-ltz v14, :cond_5

    .line 339
    add-int/lit8 v2, v14, 0x1

    invoke-virtual {v10, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 343
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 344
    .local v17, values1:Landroid/content/ContentValues;
    const-string v2, "_display_name"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 349
    .end local v10           #filePath:Ljava/lang/String;
    .end local v14           #pos:I
    .end local v17           #values1:Landroid/content/ContentValues;
    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 350
    const/4 v8, 0x0

    :cond_6
    move-object v2, v3

    .line 352
    goto :goto_0
.end method

.method protected saveImageToFile([BLandroid/net/Uri;Landroid/content/ContentResolver;)Lcom/motorola/Camera/ImageManager$IGetBoolean_cancelable;
    .locals 1
    .parameter "jpegData"
    .parameter "uri"
    .parameter "cr"

    .prologue
    .line 405
    new-instance v0, Lcom/motorola/Camera/ImageManager$1CompressImageToFile;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/motorola/Camera/ImageManager$1CompressImageToFile;-><init>(Lcom/motorola/Camera/ImageManager;Landroid/content/ContentResolver;Landroid/net/Uri;[B)V

    return-object v0
.end method

.method public storeImage(Landroid/net/Uri;Landroid/content/ContentResolver;[BLandroid/graphics/Bitmap;)Lcom/motorola/Camera/ImageManager$IAddImage_cancelable;
    .locals 6
    .parameter "uri"
    .parameter "cr"
    .parameter "jpegData"
    .parameter "thumbnail"

    .prologue
    .line 472
    new-instance v0, Lcom/motorola/Camera/ImageManager$1AddImageCancelable;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/motorola/Camera/ImageManager$1AddImageCancelable;-><init>(Lcom/motorola/Camera/ImageManager;[BLandroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/Bitmap;)V

    .line 473
    .local v0, ret:Lcom/motorola/Camera/ImageManager$IAddImage_cancelable;
    return-object v0
.end method
