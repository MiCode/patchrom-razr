.class public final Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;
.super Ljava/lang/Thread;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UpdateThumbnailRunnable"
.end annotation


# instance fields
.field private data:[B

.field options:Landroid/graphics/BitmapFactory$Options;

.field rotationMatrix:Landroid/graphics/Matrix;

.field final synthetic this$0:Lcom/motorola/Camera/Camera;


# direct methods
.method public constructor <init>(Lcom/motorola/Camera/Camera;[B)V
    .locals 1
    .parameter
    .parameter "data"

    .prologue
    .line 4411
    iput-object p1, p0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    .line 4412
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4405
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    .line 4408
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->rotationMatrix:Landroid/graphics/Matrix;

    .line 4413
    iput-object p2, p0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->data:[B

    .line 4414
    return-void
.end method

.method private readGroupIdfromMainPicture(Ljava/lang/String;)V
    .locals 11
    .parameter "thumbnailfilename"

    .prologue
    const/4 v10, 0x0

    const/4 v1, 0x1

    .line 4831
    const/4 v7, 0x0

    .line 4833
    .local v7, fullPictureCursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStatus:I
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$1400(Lcom/motorola/Camera/Camera;)I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 4835
    :try_start_0
    iget-object v0, p0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$8400(Lcom/motorola/Camera/Camera;)Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "limit"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "shooting_mode"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "multiburst_group_id"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "_display_name"

    aput-object v4, v2, v3

    const-string v3, "( _display_name = ? ) AND ( multiburst_group_id != \'\') AND (shooting_mode != 0)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 4870
    :cond_0
    :goto_0
    if-eqz v7, :cond_7

    .line 4871
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    .line 4872
    const-string v0, "MotoCamera"

    const-string v1, "UpdateThumbnailThread() - fullPictureCursor valid cursors"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4874
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4875
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_6

    .line 4876
    const-string v0, "multiburst_group_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 4878
    .local v8, groupidindex:I
    iget-object v0, p0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/motorola/Camera/Camera;->mMultishotGroupId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/Camera/Camera;->access$8902(Lcom/motorola/Camera/Camera;Ljava/lang/String;)Ljava/lang/String;

    .line 4879
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    .line 4880
    const-string v0, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpdateThumbnailThread() - GroupID retrieved "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mMultishotGroupId:Ljava/lang/String;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$8900(Lcom/motorola/Camera/Camera;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4888
    .end local v8           #groupidindex:I
    :cond_2
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 4889
    const/4 v7, 0x0

    .line 4896
    :cond_3
    :goto_2
    return-void

    .line 4848
    :catch_0
    move-exception v9

    .line 4850
    .local v9, ioex:Landroid/database/sqlite/SQLiteDiskIOException;
    if-eqz v7, :cond_4

    .line 4852
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 4853
    const/4 v7, 0x0

    .line 4855
    :cond_4
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 4856
    const-string v0, "MotoCamera"

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4859
    .end local v9           #ioex:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_1
    move-exception v6

    .line 4861
    .local v6, ex:Ljava/lang/Exception;
    if-eqz v7, :cond_5

    .line 4863
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 4864
    const/4 v7, 0x0

    .line 4866
    :cond_5
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 4867
    const-string v0, "MotoCamera"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4883
    .end local v6           #ex:Ljava/lang/Exception;
    :cond_6
    iget-object v0, p0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    #setter for: Lcom/motorola/Camera/Camera;->mMultishotGroupId:Ljava/lang/String;
    invoke-static {v0, v10}, Lcom/motorola/Camera/Camera;->access$8902(Lcom/motorola/Camera/Camera;Ljava/lang/String;)Ljava/lang/String;

    .line 4884
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    .line 4885
    const-string v0, "MotoCamera"

    const-string v1, "UpdateThumbnailThread() - GroupID set to null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4891
    :cond_7
    iget-object v0, p0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    #setter for: Lcom/motorola/Camera/Camera;->mMultishotGroupId:Ljava/lang/String;
    invoke-static {v0, v10}, Lcom/motorola/Camera/Camera;->access$8902(Lcom/motorola/Camera/Camera;Ljava/lang/String;)Ljava/lang/String;

    .line 4892
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_3

    .line 4893
    const-string v0, "MotoCamera"

    const-string v1, "UpdateThumbnailThread() - GroupID set to null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public run()V
    .locals 29

    .prologue
    .line 4418
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCameraKPI"

    const-string v2, "updateThumb enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4419
    :cond_0
    const/4 v7, 0x0

    .line 4420
    .local v7, bitmap:Landroid/graphics/Bitmap;
    const/16 v19, 0x0

    .line 4422
    .local v19, interrupted:Z
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    .line 4423
    const-string v1, "MotoCamera"

    const-string v2, "UpdateThumbnailThread - Running..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4427
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v2, 0x1

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 4429
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->data:[B

    if-nez v1, :cond_2b

    .line 4431
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    .line 4432
    const-string v1, "MotoCamera"

    const-string v2, "KPI: UpdateThumbnailThread - no data passed in, getting from DB"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4434
    :cond_2
    const/4 v15, 0x0

    .line 4435
    .local v15, imageCursor:Landroid/database/Cursor;
    const/16 v26, 0x0

    .line 4450
    .local v26, videoCursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/motorola/Camera/CameraGlobalType;->CAPTURED_FILE_SEARCH_EXT:Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 4451
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$8400(Lcom/motorola/Camera/Camera;)Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "limit"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "datetaken"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "orientation"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "mini_thumb_magic"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "_display_name"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(_data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/motorola/Camera/CameraGlobalType;->CAPTURED_FILE_SEARCH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OR "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/motorola/Camera/CameraGlobalType;->CAPTURED_FILE_SEARCH_EXT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") AND ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "shooting_mode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " != "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "datetaken DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 4477
    :goto_0
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_3

    const-string v1, "MotoCameraKPI"

    const-string v2, "updateThumb i cursor creation"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4479
    :cond_3
    sget-object v1, Lcom/motorola/Camera/CameraGlobalType;->CAPTURED_FILE_SEARCH_EXT:Ljava/lang/String;

    if-eqz v1, :cond_12

    .line 4480
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$8400(Lcom/motorola/Camera/Camera;)Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "limit"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "datetaken"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/motorola/Camera/CameraGlobalType;->CAPTURED_FILE_SEARCH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OR "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/motorola/Camera/CameraGlobalType;->CAPTURED_FILE_SEARCH_EXT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "datetaken DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v26

    .line 4528
    :cond_4
    :goto_1
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_5

    const-string v1, "MotoCameraKPI"

    const-string v2, "updateThumb v cursor creation"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4530
    :cond_5
    if-eqz v15, :cond_28

    if-eqz v26, :cond_28

    .line 4532
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_6

    .line 4533
    const-string v1, "MotoCamera"

    const-string v2, "UpdateThumbnailThread() - valid cursors"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4538
    :cond_6
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4539
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4542
    const-string v1, "datetaken"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 4543
    .local v8, dateTakenInd:I
    const-string v1, "_id"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 4544
    .local v10, displayNameIndex:I
    const-string v1, "orientation"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 4545
    .local v24, orientationInd:I
    const-string v1, "mini_thumb_magic"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 4548
    .local v22, miniThumbInd:I
    const-string v1, "_display_name"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 4550
    .local v14, fileNameIndex:I
    const/4 v13, 0x0

    .line 4551
    .local v13, fileName:Ljava/lang/String;
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_7

    .line 4552
    invoke-interface {v15, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 4553
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_7

    .line 4554
    const-string v1, "MotoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UpdateThumbnailThread() - thumbnail file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4559
    :cond_7
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_8

    const-string v1, "MotoCameraKPI"

    const-string v2, "updateThumb cursor extraction"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4561
    :cond_8
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_17

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_17

    .line 4563
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_9

    .line 4564
    const-string v1, "MotoCamera"

    const-string v2, "UpdateThumbnailThread() - both cursors empty"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4567
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4900(Lcom/motorola/Camera/Camera;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4900(Lcom/motorola/Camera/Camera;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_a

    .line 4568
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4900(Lcom/motorola/Camera/Camera;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 4570
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x0

    #setter for: Lcom/motorola/Camera/Camera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$4902(Lcom/motorola/Camera/Camera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 4572
    const/4 v7, 0x0

    .line 4710
    :cond_b
    :goto_2
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 4711
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 4754
    .end local v8           #dateTakenInd:I
    .end local v10           #displayNameIndex:I
    .end local v13           #fileName:Ljava/lang/String;
    .end local v14           #fileNameIndex:I
    .end local v15           #imageCursor:Landroid/database/Cursor;
    .end local v22           #miniThumbInd:I
    .end local v24           #orientationInd:I
    .end local v26           #videoCursor:Landroid/database/Cursor;
    :cond_c
    :goto_3
    monitor-enter p0

    .line 4755
    if-nez v19, :cond_d

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 4756
    :cond_d
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_e

    .line 4757
    const-string v1, "MotoCamera"

    const-string v2, "UpdateThumbnailThread interrupted"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4758
    :cond_e
    if-eqz v7, :cond_f

    .line 4759
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 4761
    :cond_f
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4803
    :cond_10
    :goto_4
    return-void

    .line 4465
    .restart local v15       #imageCursor:Landroid/database/Cursor;
    .restart local v26       #videoCursor:Landroid/database/Cursor;
    :cond_11
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$8400(Lcom/motorola/Camera/Camera;)Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "limit"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "datetaken"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "orientation"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "mini_thumb_magic"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "_display_name"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(_data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/motorola/Camera/CameraGlobalType;->CAPTURED_FILE_SEARCH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") AND ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "shooting_mode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " != "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "datetaken DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    goto/16 :goto_0

    .line 4485
    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$8400(Lcom/motorola/Camera/Camera;)Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "limit"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "datetaken"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/motorola/Camera/CameraGlobalType;->CAPTURED_FILE_SEARCH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "datetaken DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v26

    goto/16 :goto_1

    .line 4491
    :catch_0
    move-exception v20

    .line 4493
    .local v20, ioex:Landroid/database/sqlite/SQLiteDiskIOException;
    if-eqz v15, :cond_13

    .line 4495
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 4496
    const/4 v15, 0x0

    .line 4499
    :cond_13
    if-eqz v26, :cond_14

    .line 4501
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 4502
    const/16 v26, 0x0

    .line 4505
    :cond_14
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_4

    .line 4506
    const-string v1, "MotoCamera"

    invoke-virtual/range {v20 .. v20}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4509
    .end local v20           #ioex:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_1
    move-exception v12

    .line 4511
    .local v12, ex:Ljava/lang/Exception;
    if-eqz v15, :cond_15

    .line 4513
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 4514
    const/4 v15, 0x0

    .line 4517
    :cond_15
    if-eqz v26, :cond_16

    .line 4519
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 4520
    const/16 v26, 0x0

    .line 4523
    :cond_16
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_4

    .line 4524
    const-string v1, "MotoCamera"

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4575
    .end local v12           #ex:Ljava/lang/Exception;
    .restart local v8       #dateTakenInd:I
    .restart local v10       #displayNameIndex:I
    .restart local v13       #fileName:Ljava/lang/String;
    .restart local v14       #fileNameIndex:I
    .restart local v22       #miniThumbInd:I
    .restart local v24       #orientationInd:I
    :cond_17
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1b

    .line 4577
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_18

    .line 4578
    const-string v1, "MotoCamera"

    const-string v2, "UpdateThumbnailThread() - imageCursor has elements"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4581
    :cond_18
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->readGroupIdfromMainPicture(Ljava/lang/String;)V

    .line 4584
    invoke-interface {v15, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 4587
    .local v9, displayName:Ljava/lang/String;
    move/from16 v0, v22

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    .line 4589
    .local v23, miniThumbValue:Ljava/lang/Long;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1a

    .line 4591
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v2, 0x1

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 4592
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$8400(Lcom/motorola/Camera/Camera;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3, v4, v5}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 4617
    :cond_19
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    move/from16 v0, v24

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    #setter for: Lcom/motorola/Camera/Camera;->mThumbnailOrientation:I
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$5002(Lcom/motorola/Camera/Camera;I)I

    goto/16 :goto_2

    .line 4597
    :cond_1a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    const/16 v2, 0x10

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 4598
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v21

    .line 4600
    .local v21, mUri:Landroid/net/Uri;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$8400(Lcom/motorola/Camera/Camera;)Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v18

    .line 4601
    .local v18, inputStream:Ljava/io/InputStream;
    if-eqz v18, :cond_19

    .line 4602
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v0, v18

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v25

    .line 4603
    .local v25, tBitmap:Landroid/graphics/Bitmap;
    if-eqz v25, :cond_19

    .line 4604
    const/16 v1, 0x60

    const/16 v2, 0x60

    move-object/from16 v0, v25

    invoke-static {v0, v1, v2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 4607
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    .line 4610
    .end local v18           #inputStream:Ljava/io/InputStream;
    .end local v25           #tBitmap:Landroid/graphics/Bitmap;
    :catch_2
    move-exception v11

    .line 4611
    .local v11, e:Ljava/io/FileNotFoundException;
    const-string v1, "MotoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File not found exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 4619
    .end local v9           #displayName:Ljava/lang/String;
    .end local v11           #e:Ljava/io/FileNotFoundException;
    .end local v21           #mUri:Landroid/net/Uri;
    .end local v23           #miniThumbValue:Ljava/lang/Long;
    :cond_1b
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1d

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_1d

    .line 4621
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1c

    .line 4622
    const-string v1, "MotoCamera"

    const-string v2, "UpdateThumbnailThread() - videoCursor has elements"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4623
    :cond_1c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v2, 0x1

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 4625
    move-object/from16 v0, v26

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 4628
    .restart local v9       #displayName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$8400(Lcom/motorola/Camera/Camera;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3, v4, v5}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 4629
    goto/16 :goto_2

    .line 4632
    .end local v9           #displayName:Ljava/lang/String;
    :cond_1d
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1e

    .line 4633
    const-string v1, "MotoCamera"

    const-string v2, "UpdateThumbnailThread() - both cursors have elements"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4635
    :cond_1e
    invoke-interface {v15, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 4636
    .local v16, imageDateTaken:J
    move-object/from16 v0, v26

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    .line 4638
    .local v27, videoDateTaken:J
    cmp-long v1, v16, v27

    if-lez v1, :cond_26

    .line 4641
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1f

    .line 4642
    const-string v1, "MotoCamera"

    const-string v2, "UpdateThumbnailThread() - image was last taken"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4644
    :cond_1f
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->readGroupIdfromMainPicture(Ljava/lang/String;)V

    .line 4645
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_20

    const-string v1, "MotoCameraKPI"

    const-string v2, "updateThumb read group"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4649
    :cond_20
    invoke-interface {v15, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 4651
    .restart local v9       #displayName:Ljava/lang/String;
    move/from16 v0, v22

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    .line 4652
    .restart local v23       #miniThumbValue:Ljava/lang/Long;
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_21

    const-string v1, "MotoCameraKPI"

    const-string v2, "updateThumb mini thumb"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4654
    :cond_21
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_24

    .line 4656
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v2, 0x1

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 4657
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_22

    const-string v1, "MotoCameraKPI"

    const-string v2, "updateThumb thumb from db before"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4658
    :cond_22
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$8400(Lcom/motorola/Camera/Camera;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3, v4, v5}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 4660
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_23

    const-string v1, "MotoCameraKPI"

    const-string v2, "updateThumb thumb from db"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4687
    :cond_23
    :goto_6
    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    move/from16 v0, v24

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    #setter for: Lcom/motorola/Camera/Camera;->mThumbnailOrientation:I
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$5002(Lcom/motorola/Camera/Camera;I)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_2

    .line 4689
    :catch_3
    move-exception v12

    .line 4690
    .restart local v12       #ex:Ljava/lang/Exception;
    const-string v1, "MotoCamera"

    const-string v2, "UpdateThumbnailThread() - imageCursor.getInt failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 4665
    .end local v12           #ex:Ljava/lang/Exception;
    :cond_24
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v21

    .line 4667
    .restart local v21       #mUri:Landroid/net/Uri;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    const/16 v2, 0x10

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 4668
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$8400(Lcom/motorola/Camera/Camera;)Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v18

    .line 4669
    .restart local v18       #inputStream:Ljava/io/InputStream;
    if-eqz v18, :cond_25

    .line 4670
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v0, v18

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v25

    .line 4671
    .restart local v25       #tBitmap:Landroid/graphics/Bitmap;
    if-eqz v25, :cond_25

    .line 4672
    const/16 v1, 0x60

    const/16 v2, 0x60

    move-object/from16 v0, v25

    invoke-static {v0, v1, v2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 4673
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    .line 4680
    .end local v18           #inputStream:Ljava/io/InputStream;
    .end local v25           #tBitmap:Landroid/graphics/Bitmap;
    :cond_25
    :goto_7
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_23

    const-string v1, "MotoCameraKPI"

    const-string v2, "updateThumb thumb from file"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 4676
    :catch_4
    move-exception v11

    .line 4678
    .restart local v11       #e:Ljava/io/FileNotFoundException;
    invoke-virtual {v11}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 4695
    .end local v9           #displayName:Ljava/lang/String;
    .end local v11           #e:Ljava/io/FileNotFoundException;
    .end local v21           #mUri:Landroid/net/Uri;
    .end local v23           #miniThumbValue:Ljava/lang/Long;
    :cond_26
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v2, 0x1

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 4697
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_27

    .line 4698
    const-string v1, "MotoCamera"

    const-string v2, "UpdateThumbnailThread() - video was last taken"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4701
    :cond_27
    move-object/from16 v0, v26

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 4704
    .restart local v9       #displayName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$8400(Lcom/motorola/Camera/Camera;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3, v4, v5}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 4705
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_b

    const-string v1, "MotoCameraKPI"

    const-string v2, "updateThumb vthumb created"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 4715
    .end local v8           #dateTakenInd:I
    .end local v9           #displayName:Ljava/lang/String;
    .end local v10           #displayNameIndex:I
    .end local v13           #fileName:Ljava/lang/String;
    .end local v14           #fileNameIndex:I
    .end local v16           #imageDateTaken:J
    .end local v22           #miniThumbInd:I
    .end local v24           #orientationInd:I
    .end local v27           #videoDateTaken:J
    :cond_28
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_29

    .line 4716
    const-string v1, "MotoCamera"

    const-string v2, "UpdateThumbnailThread() - one of the cursors is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4721
    :cond_29
    if-eqz v26, :cond_2a

    .line 4723
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 4724
    const/16 v26, 0x0

    .line 4726
    :cond_2a
    if-eqz v15, :cond_c

    .line 4728
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 4737
    .end local v15           #imageCursor:Landroid/database/Cursor;
    .end local v26           #videoCursor:Landroid/database/Cursor;
    :cond_2b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    const/16 v2, 0x10

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 4740
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    invoke-virtual {v1}, Lcom/motorola/Camera/Camera;->rotateCurrentThumbnail()V

    .line 4742
    monitor-enter p0

    .line 4743
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->isInterrupted()Z

    move-result v19

    .line 4744
    if-nez v19, :cond_2c

    .line 4746
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->data:[B

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->data:[B

    array-length v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 4747
    const/16 v1, 0x60

    const/16 v2, 0x60

    invoke-static {v7, v1, v2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 4749
    :cond_2c
    monitor-exit p0

    goto/16 :goto_3

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1

    .line 4765
    :cond_2d
    if-nez v7, :cond_2e

    :try_start_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4900(Lcom/motorola/Camera/Camera;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 4766
    monitor-exit p0

    goto/16 :goto_4

    .line 4801
    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v1

    .line 4769
    :cond_2e
    :try_start_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4900(Lcom/motorola/Camera/Camera;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4900(Lcom/motorola/Camera/Camera;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 4770
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4900(Lcom/motorola/Camera/Camera;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 4773
    :cond_2f
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->data:[B

    .line 4775
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    #setter for: Lcom/motorola/Camera/Camera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1, v7}, Lcom/motorola/Camera/Camera;->access$4902(Lcom/motorola/Camera/Camera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 4777
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x1

    #setter for: Lcom/motorola/Camera/Camera;->mThumbnailDecoded:Z
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$3402(Lcom/motorola/Camera/Camera;Z)Z

    .line 4778
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v1

    if-nez v1, :cond_32

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v1

    if-nez v1, :cond_32

    .line 4780
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_30

    const-string v1, "MotoCamera"

    const-string v2, "Updating thumbnail based on whether animation is running or not"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4782
    :cond_30
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mAnimationRunning:Z
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$3300(Lcom/motorola/Camera/Camera;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 4784
    const-string v1, "MotoCamera"

    const-string v2, "UpdateThumbnailRunnable() Animation is not running update the thumbnail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4785
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x48

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4801
    :cond_31
    :goto_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 4802
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_10

    const-string v1, "MotoCameraKPI"

    const-string v2, "updateThumb exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 4790
    :cond_32
    :try_start_9
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_33

    .line 4791
    const-string v1, "MotoCamera"

    const-string v2, "Updating thumbnail based on independent of animation"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4792
    const-string v1, "MotoCamera"

    const-string v2, "UpdateThumbnailThread() - send UPDATE_THUMBNAIL message. KPI: Work is done"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4797
    :cond_33
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x48

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_8
.end method
