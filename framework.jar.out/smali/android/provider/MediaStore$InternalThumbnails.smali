.class Landroid/provider/MediaStore$InternalThumbnails;
.super Ljava/lang/Object;
.source "MediaStore.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalThumbnails"
.end annotation


# static fields
.field static final DEFAULT_GROUP_ID:I = 0x0

.field private static final FULL_SCREEN_KIND:I = 0x2

.field private static final MICRO_KIND:I = 0x3

.field private static final MINI_KIND:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String;

.field private static sThumbBuf:[B

.field private static final sThumbBufLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 444
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    .line 446
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 440
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cancelThumbnailRequest(Landroid/content/ContentResolver;JLandroid/net/Uri;J)V
    .locals 7
    .parameter "cr"
    .parameter "origId"
    .parameter "baseUri"
    .parameter "groupId"

    .prologue
    .line 483
    invoke-virtual {p3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "cancel"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "orig_id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "group_id"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 486
    .local v1, cancelUri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 488
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 491
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 493
    :cond_0
    return-void

    .line 491
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method private static getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "c"
    .parameter "baseUri"
    .parameter "cr"
    .parameter "options"

    .prologue
    .line 450
    const/4 v0, 0x0

    .line 451
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .line 453
    .local v6, thumbUri:Landroid/net/Uri;
    const/4 v7, 0x0

    :try_start_0
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 454
    .local v4, thumbId:J
    const/4 v7, 0x1

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 455
    .local v2, filePath:Ljava/lang/String;
    invoke-static {p1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 456
    const-string v7, "r"

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 457
    .local v3, pfdInput:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8, p3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 459
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    .line 468
    .end local v2           #filePath:Ljava/lang/String;
    .end local v3           #pfdInput:Landroid/os/ParcelFileDescriptor;
    .end local v4           #thumbId:J
    :goto_0
    return-object v0

    .line 460
    :catch_0
    move-exception v1

    .line 461
    .local v1, ex:Ljava/io/FileNotFoundException;
    const-string v7, "MediaStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "couldn\'t open thumbnail "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 462
    .end local v1           #ex:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 463
    .local v1, ex:Ljava/io/IOException;
    const-string v7, "MediaStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "couldn\'t open thumbnail "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 464
    .end local v1           #ex:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 465
    .local v1, ex:Ljava/lang/OutOfMemoryError;
    const-string v7, "MediaStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to allocate memory for thumbnail "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static getThumbnail(Landroid/content/ContentResolver;JJILandroid/graphics/BitmapFactory$Options;Landroid/net/Uri;Z)Landroid/graphics/Bitmap;
    .locals 21
    .parameter "cr"
    .parameter "origId"
    .parameter "groupId"
    .parameter "kind"
    .parameter "options"
    .parameter "baseUri"
    .parameter "isVideo"

    .prologue
    .line 511
    const/4 v11, 0x0

    .line 512
    .local v11, bitmap:Landroid/graphics/Bitmap;
    const/4 v15, 0x0

    .line 516
    .local v15, filePath:Ljava/lang/String;
    new-instance v20, Landroid/media/MiniThumbFile;

    if-eqz p8, :cond_5

    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_0
    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Landroid/media/MiniThumbFile;-><init>(Landroid/net/Uri;)V

    .line 518
    .local v20, thumbFile:Landroid/media/MiniThumbFile;
    const/4 v12, 0x0

    .line 520
    .local v12, c:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, v20

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/media/MiniThumbFile;->getMagic(J)J

    move-result-wide v16

    .line 521
    .local v16, magic:J
    const-wide/16 v7, 0x0

    cmp-long v3, v16, v7

    if-eqz v3, :cond_b

    .line 522
    const/4 v3, 0x3

    move/from16 v0, p5

    if-ne v0, v3, :cond_8

    .line 525
    const/4 v3, 0x1

    move/from16 v0, p8

    if-ne v0, v3, :cond_6

    sget-object v19, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 526
    .local v19, requestUri:Landroid/net/Uri;
    :goto_1
    const/16 v18, 0x0

    .line 528
    .local v18, magicMatch:Z
    move-object/from16 v0, v19

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v3

    const/4 v3, 0x1

    const-string v7, "mini_thumb_magic"

    aput-object v7, v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 530
    if-eqz v12, :cond_1

    .line 531
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    cmp-long v3, v7, v16

    if-nez v3, :cond_0

    .line 532
    const/16 v18, 0x1

    .line 533
    :cond_0
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 534
    const/4 v12, 0x0

    .line 536
    :cond_1
    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_b

    .line 538
    sget-object v5, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 539
    :try_start_1
    sget-object v3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    if-nez v3, :cond_2

    .line 540
    const/16 v3, 0x2710

    new-array v3, v3, [B

    sput-object v3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    .line 542
    :cond_2
    sget-object v3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    move-object/from16 v0, v20

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MiniThumbFile;->getMiniThumbFromFile(J[B)[B

    move-result-object v3

    if-eqz v3, :cond_3

    .line 543
    sget-object v3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    const/4 v7, 0x0

    sget-object v8, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    array-length v8, v8

    invoke-static {v3, v7, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 544
    if-nez v11, :cond_3

    .line 545
    const-string v3, "MediaStore"

    const-string v7, "couldn\'t decode byte array."

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_3
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 620
    if-eqz v12, :cond_4

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 622
    :cond_4
    invoke-virtual/range {v20 .. v20}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 623
    const/16 v20, 0x0

    move-object v3, v11

    .line 625
    .end local v16           #magic:J
    .end local v18           #magicMatch:Z
    .end local v19           #requestUri:Landroid/net/Uri;
    :goto_2
    return-object v3

    .line 516
    .end local v12           #c:Landroid/database/Cursor;
    .end local v20           #thumbFile:Landroid/media/MiniThumbFile;
    :cond_5
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_0

    .line 525
    .restart local v12       #c:Landroid/database/Cursor;
    .restart local v16       #magic:J
    .restart local v20       #thumbFile:Landroid/media/MiniThumbFile;
    :cond_6
    :try_start_2
    sget-object v19, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 548
    .restart local v18       #magicMatch:Z
    .restart local v19       #requestUri:Landroid/net/Uri;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1

    .line 613
    .end local v16           #magic:J
    .end local v18           #magicMatch:Z
    .end local v19           #requestUri:Landroid/net/Uri;
    :catch_0
    move-exception v14

    .line 614
    .local v14, ex:Landroid/database/sqlite/SQLiteException;
    :try_start_5
    const-string v3, "MediaStore"

    invoke-static {v3, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 620
    if-eqz v12, :cond_7

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 622
    :cond_7
    invoke-virtual/range {v20 .. v20}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 623
    const/16 v20, 0x0

    .end local v14           #ex:Landroid/database/sqlite/SQLiteException;
    :goto_3
    move-object v3, v11

    .line 625
    goto :goto_2

    .line 551
    .restart local v16       #magic:J
    :cond_8
    const/4 v3, 0x1

    move/from16 v0, p5

    if-ne v0, v3, :cond_b

    .line 552
    if-eqz p8, :cond_a

    :try_start_6
    const-string/jumbo v13, "video_id="

    .line 553
    .local v13, column:Ljava/lang/String;
    :goto_4
    sget-object v5, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p7

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 554
    if-eqz v12, :cond_b

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 555
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    invoke-static {v12, v0, v1, v2}, Landroid/provider/MediaStore$InternalThumbnails;->getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v11

    .line 556
    if-eqz v11, :cond_b

    .line 620
    if-eqz v12, :cond_9

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 622
    :cond_9
    invoke-virtual/range {v20 .. v20}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 623
    const/16 v20, 0x0

    move-object v3, v11

    goto :goto_2

    .line 552
    .end local v13           #column:Ljava/lang/String;
    :cond_a
    :try_start_7
    const-string v13, "image_id="

    goto :goto_4

    .line 563
    :cond_b
    invoke-virtual/range {p7 .. p7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v5, "blocking"

    const-string v7, "1"

    invoke-virtual {v3, v5, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v5, "orig_id"

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v5, "group_id"

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 566
    .local v4, blockingUri:Landroid/net/Uri;
    if-eqz v12, :cond_c

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 567
    :cond_c
    sget-object v5, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_1

    move-result-object v12

    .line 569
    if-nez v12, :cond_e

    const/4 v3, 0x0

    .line 620
    if-eqz v12, :cond_d

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 622
    :cond_d
    invoke-virtual/range {v20 .. v20}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 623
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 572
    :cond_e
    const/4 v3, 0x3

    move/from16 v0, p5

    if-ne v0, v3, :cond_16

    .line 573
    :try_start_8
    sget-object v5, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_1

    .line 574
    :try_start_9
    sget-object v3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    if-nez v3, :cond_f

    .line 575
    const/16 v3, 0x2710

    new-array v3, v3, [B

    sput-object v3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    .line 577
    :cond_f
    sget-object v3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    move-object/from16 v0, v20

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MiniThumbFile;->getMiniThumbFromFile(J[B)[B

    move-result-object v3

    if-eqz v3, :cond_10

    .line 578
    sget-object v3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    const/4 v7, 0x0

    sget-object v8, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    array-length v8, v8

    invoke-static {v3, v7, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 579
    if-nez v11, :cond_10

    .line 580
    const-string v3, "MediaStore"

    const-string v7, "couldn\'t decode byte array."

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :cond_10
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 593
    :cond_11
    :goto_5
    if-nez v11, :cond_1b

    .line 594
    :try_start_a
    const-string v3, "MediaStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Create the thumbnail in memory: origId="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", kind="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", isVideo="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p8

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    invoke-virtual/range {p7 .. p7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "thumbnails"

    const-string v7, "media"

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 599
    .local v6, uri:Landroid/net/Uri;
    if-nez v15, :cond_1a

    .line 600
    if-eqz v12, :cond_12

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 601
    :cond_12
    sget-object v7, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 602
    if-eqz v12, :cond_13

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_1

    move-result v3

    if-nez v3, :cond_19

    .line 603
    :cond_13
    const/4 v3, 0x0

    .line 620
    if-eqz v12, :cond_14

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 622
    :cond_14
    invoke-virtual/range {v20 .. v20}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 623
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 583
    .end local v6           #uri:Landroid/net/Uri;
    :catchall_1
    move-exception v3

    :try_start_b
    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_1

    .line 616
    .end local v4           #blockingUri:Landroid/net/Uri;
    .end local v16           #magic:J
    :catch_1
    move-exception v14

    .line 617
    .local v14, ex:Ljava/lang/IllegalStateException;
    const/4 v3, 0x0

    .line 620
    if-eqz v12, :cond_15

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 622
    :cond_15
    invoke-virtual/range {v20 .. v20}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 623
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 584
    .end local v14           #ex:Ljava/lang/IllegalStateException;
    .restart local v4       #blockingUri:Landroid/net/Uri;
    .restart local v16       #magic:J
    :cond_16
    const/4 v3, 0x1

    move/from16 v0, p5

    if-ne v0, v3, :cond_17

    .line 585
    :try_start_d
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 586
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    invoke-static {v12, v0, v1, v2}, Landroid/provider/MediaStore$InternalThumbnails;->getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v11

    goto/16 :goto_5

    .line 589
    :cond_17
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported kind: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_1

    .line 620
    .end local v4           #blockingUri:Landroid/net/Uri;
    .end local v16           #magic:J
    :catchall_2
    move-exception v3

    if-eqz v12, :cond_18

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 622
    :cond_18
    invoke-virtual/range {v20 .. v20}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 623
    const/16 v20, 0x0

    throw v3

    .line 605
    .restart local v4       #blockingUri:Landroid/net/Uri;
    .restart local v6       #uri:Landroid/net/Uri;
    .restart local v16       #magic:J
    :cond_19
    const/4 v3, 0x1

    :try_start_e
    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 607
    :cond_1a
    if-eqz p8, :cond_1d

    .line 608
    move/from16 v0, p5

    invoke-static {v15, v0}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_1

    move-result-object v11

    .line 620
    .end local v6           #uri:Landroid/net/Uri;
    :cond_1b
    :goto_6
    if-eqz v12, :cond_1c

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 622
    :cond_1c
    invoke-virtual/range {v20 .. v20}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 623
    const/16 v20, 0x0

    .line 624
    goto/16 :goto_3

    .line 610
    .restart local v6       #uri:Landroid/net/Uri;
    :cond_1d
    :try_start_f
    move/from16 v0, p5

    invoke-static {v15, v0}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_f} :catch_1

    move-result-object v11

    goto :goto_6
.end method
