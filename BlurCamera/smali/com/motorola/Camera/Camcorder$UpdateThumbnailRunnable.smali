.class final Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;
.super Ljava/lang/Thread;
.source "Camcorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/Camcorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UpdateThumbnailRunnable"
.end annotation


# instance fields
.field private data:Landroid/graphics/Bitmap;

.field private genVideoThumbnail:Z

.field public mDone:Z

.field options:Landroid/graphics/BitmapFactory$Options;

.field rotationMatrix:Landroid/graphics/Matrix;

.field final synthetic this$0:Lcom/motorola/Camera/Camcorder;


# direct methods
.method public constructor <init>(Lcom/motorola/Camera/Camcorder;Landroid/graphics/Bitmap;Z)V
    .locals 1
    .parameter
    .parameter "original"
    .parameter "needVideoThumbnail"

    .prologue
    .line 1719
    iput-object p1, p0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    .line 1720
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1712
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    .line 1715
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->rotationMatrix:Landroid/graphics/Matrix;

    .line 1721
    iput-object p2, p0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->data:Landroid/graphics/Bitmap;

    .line 1722
    iput-boolean p3, p0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->genVideoThumbnail:Z

    .line 1723
    return-void
.end method


# virtual methods
.method public run()V
    .locals 31

    .prologue
    .line 1727
    const/4 v7, 0x0

    .line 1728
    .local v7, bitmap:Landroid/graphics/Bitmap;
    const/16 v18, 0x0

    .line 1731
    .local v18, interrupted:Z
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 1732
    const-string v1, "MotoCamcorder"

    const-string v2, "UpdateThumbnailThread - Running..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v2, 0x1

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1737
    const/4 v14, 0x0

    .line 1738
    .local v14, imageCursor:Landroid/database/Cursor;
    const/16 v27, 0x0

    .line 1742
    .local v27, videoCursor:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->data:Landroid/graphics/Bitmap;

    if-nez v1, :cond_20

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->genVideoThumbnail:Z

    if-nez v1, :cond_20

    .line 1744
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    .line 1745
    const-string v1, "MotoCamcorder"

    const-string v2, "UpdateThumbnailThread - no data passed in, trying to get from DB"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    :cond_1
    :try_start_0
    sget-object v1, Lcom/motorola/Camera/CameraGlobalType;->CAPTURED_FILE_SEARCH_EXT:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 1751
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/motorola/Camera/Camcorder;->access$5900(Lcom/motorola/Camera/Camcorder;)Landroid/content/ContentResolver;

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

    const/4 v3, 0x4

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

    move-result-object v14

    .line 1755
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/motorola/Camera/Camcorder;->access$5900(Lcom/motorola/Camera/Camcorder;)Landroid/content/ContentResolver;

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

    move-result-object v27

    .line 1807
    :cond_2
    :goto_0
    if-eqz v14, :cond_1d

    if-eqz v27, :cond_1d

    .line 1809
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_3

    .line 1810
    const-string v1, "MotoCamcorder"

    const-string v2, "UpdateThumbnailThread() - Both cursors are valid"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    :cond_3
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1813
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1816
    const-string v1, "datetaken"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1817
    .local v8, dateTakenInd:I
    const-string v1, "_id"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1818
    .local v10, displayNameIndex:I
    const-string v1, "orientation"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 1819
    .local v24, orientationInd:I
    const-string v1, "mini_thumb_magic"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 1822
    .local v21, miniThumbInd:I
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_10

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_10

    .line 1824
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_4

    .line 1825
    const-string v1, "MotoCamcorder"

    const-string v2, "UpdateThumbnailThread() - both cursors empty"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    iget-object v1, v1, Lcom/motorola/Camera/Camcorder;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    iget-object v1, v1, Lcom/motorola/Camera/Camcorder;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1829
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    iget-object v1, v1, Lcom/motorola/Camera/Camcorder;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1831
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/motorola/Camera/Camcorder;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 1833
    const/4 v7, 0x0

    .line 1956
    :goto_1
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1957
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 2022
    .end local v8           #dateTakenInd:I
    .end local v10           #displayNameIndex:I
    .end local v21           #miniThumbInd:I
    .end local v24           #orientationInd:I
    :cond_6
    :goto_2
    monitor-enter p0

    .line 2024
    if-nez v18, :cond_7

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 2025
    :cond_7
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_8

    .line 2026
    const-string v1, "MotoCamcorder"

    const-string v2, "UpdateThumbnailThread interrupted"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    :cond_8
    if-eqz v7, :cond_9

    .line 2028
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 2030
    :cond_9
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2048
    :cond_a
    :goto_3
    return-void

    .line 1760
    :cond_b
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/motorola/Camera/Camcorder;->access$5900(Lcom/motorola/Camera/Camcorder;)Landroid/content/ContentResolver;

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

    const/4 v3, 0x4

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

    move-result-object v14

    .line 1765
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/motorola/Camera/Camcorder;->access$5900(Lcom/motorola/Camera/Camcorder;)Landroid/content/ContentResolver;

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

    move-result-object v27

    goto/16 :goto_0

    .line 1772
    :catch_0
    move-exception v19

    .line 1774
    .local v19, ioex:Landroid/database/sqlite/SQLiteDiskIOException;
    if-eqz v14, :cond_c

    .line 1776
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1777
    const/4 v14, 0x0

    .line 1779
    :cond_c
    if-eqz v27, :cond_d

    .line 1781
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 1782
    const/16 v27, 0x0

    .line 1785
    :cond_d
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    .line 1786
    const-string v1, "MotoCamcorder"

    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1789
    .end local v19           #ioex:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_1
    move-exception v12

    .line 1791
    .local v12, ex:Ljava/lang/Exception;
    if-eqz v14, :cond_e

    .line 1793
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1794
    const/4 v14, 0x0

    .line 1796
    :cond_e
    if-eqz v27, :cond_f

    .line 1798
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 1799
    const/16 v27, 0x0

    .line 1802
    :cond_f
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    .line 1803
    const-string v1, "MotoCamcorder"

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1835
    .end local v12           #ex:Ljava/lang/Exception;
    .restart local v8       #dateTakenInd:I
    .restart local v10       #displayNameIndex:I
    .restart local v21       #miniThumbInd:I
    .restart local v24       #orientationInd:I
    :cond_10
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_14

    .line 1837
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_11

    .line 1838
    const-string v1, "MotoCamcorder"

    const-string v2, "UpdateThumbnailThread() - imageCursor has elements"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    :cond_11
    invoke-interface {v14, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1844
    .local v9, displayName:Ljava/lang/String;
    move/from16 v0, v21

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    .line 1846
    .local v22, miniThumbValue:Ljava/lang/Long;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_13

    .line 1848
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v2, 0x1

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1849
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/motorola/Camera/Camcorder;->access$5900(Lcom/motorola/Camera/Camcorder;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3, v4, v5}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1873
    :cond_12
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    move/from16 v0, v24

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    #setter for: Lcom/motorola/Camera/Camcorder;->mThumbnailOrientation:I
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camcorder;->access$202(Lcom/motorola/Camera/Camcorder;I)I

    goto/16 :goto_1

    .line 1854
    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    const/16 v2, 0x10

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1855
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v20

    .line 1857
    .local v20, mUri:Landroid/net/Uri;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/motorola/Camera/Camcorder;->access$5900(Lcom/motorola/Camera/Camcorder;)Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v17

    .line 1858
    .local v17, inputStream:Ljava/io/InputStream;
    if-eqz v17, :cond_12

    .line 1859
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v0, v17

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v25

    .line 1860
    .local v25, tBitmap:Landroid/graphics/Bitmap;
    if-eqz v25, :cond_12

    .line 1861
    const/16 v1, 0x60

    const/16 v2, 0x60

    move-object/from16 v0, v25

    invoke-static {v0, v1, v2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1862
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    .line 1865
    .end local v17           #inputStream:Ljava/io/InputStream;
    .end local v25           #tBitmap:Landroid/graphics/Bitmap;
    :catch_2
    move-exception v11

    .line 1867
    .local v11, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v11}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_4

    .line 1875
    .end local v9           #displayName:Ljava/lang/String;
    .end local v11           #e:Ljava/io/FileNotFoundException;
    .end local v20           #mUri:Landroid/net/Uri;
    .end local v22           #miniThumbValue:Ljava/lang/Long;
    :cond_14
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_16

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_16

    .line 1877
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_15

    .line 1878
    const-string v1, "MotoCamcorder"

    const-string v2, "UpdateThumbnailThread() - videoCursor has elements"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    :cond_15
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v2, 0x1

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1881
    move-object/from16 v0, v27

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1884
    .restart local v9       #displayName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/motorola/Camera/Camcorder;->access$5900(Lcom/motorola/Camera/Camcorder;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3, v4, v5}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1885
    goto/16 :goto_1

    .line 1888
    .end local v9           #displayName:Ljava/lang/String;
    :cond_16
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_17

    .line 1889
    const-string v1, "MotoCamcorder"

    const-string v2, "UpdateThumbnailThread() - both cursors have elements"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    :cond_17
    invoke-interface {v14, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 1892
    .local v15, imageDateTaken:J
    move-object/from16 v0, v27

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    .line 1894
    .local v28, videoDateTaken:J
    cmp-long v1, v15, v28

    if-lez v1, :cond_1b

    .line 1897
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_18

    .line 1898
    const-string v1, "MotoCamcorder"

    const-string v2, "UpdateThumbnailThread() - image was last taken"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    :cond_18
    invoke-interface {v14, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1903
    .restart local v9       #displayName:Ljava/lang/String;
    move/from16 v0, v21

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    .line 1905
    .restart local v22       #miniThumbValue:Ljava/lang/Long;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1a

    .line 1907
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v2, 0x1

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1908
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/motorola/Camera/Camcorder;->access$5900(Lcom/motorola/Camera/Camcorder;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3, v4, v5}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1935
    :cond_19
    :goto_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    move/from16 v0, v24

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    #setter for: Lcom/motorola/Camera/Camcorder;->mThumbnailOrientation:I
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camcorder;->access$202(Lcom/motorola/Camera/Camcorder;I)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_1

    .line 1936
    :catch_3
    move-exception v12

    .line 1937
    .restart local v12       #ex:Ljava/lang/Exception;
    const-string v1, "MotoCamcorder"

    const-string v2, "UpdateThumbnailThread() - imageCursor.getInt failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1914
    .end local v12           #ex:Ljava/lang/Exception;
    :cond_1a
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v20

    .line 1916
    .restart local v20       #mUri:Landroid/net/Uri;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    const/16 v2, 0x10

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1917
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/motorola/Camera/Camcorder;->access$5900(Lcom/motorola/Camera/Camcorder;)Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v17

    .line 1918
    .restart local v17       #inputStream:Ljava/io/InputStream;
    if-eqz v17, :cond_19

    .line 1919
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v0, v17

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v25

    .line 1920
    .restart local v25       #tBitmap:Landroid/graphics/Bitmap;
    if-eqz v25, :cond_19

    .line 1921
    const/16 v1, 0x60

    const/16 v2, 0x60

    move-object/from16 v0, v25

    invoke-static {v0, v1, v2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1924
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    .line 1927
    .end local v17           #inputStream:Ljava/io/InputStream;
    .end local v25           #tBitmap:Landroid/graphics/Bitmap;
    :catch_4
    move-exception v11

    .line 1929
    .restart local v11       #e:Ljava/io/FileNotFoundException;
    invoke-virtual {v11}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_5

    .line 1942
    .end local v9           #displayName:Ljava/lang/String;
    .end local v11           #e:Ljava/io/FileNotFoundException;
    .end local v20           #mUri:Landroid/net/Uri;
    .end local v22           #miniThumbValue:Ljava/lang/Long;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v2, 0x1

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1944
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1c

    .line 1945
    const-string v1, "MotoCamcorder"

    const-string v2, "UpdateThumbnailThread() - video was last taken"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    :cond_1c
    move-object/from16 v0, v27

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1951
    .restart local v9       #displayName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/motorola/Camera/Camcorder;->access$5900(Lcom/motorola/Camera/Camcorder;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3, v4, v5}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    goto/16 :goto_1

    .line 1961
    .end local v8           #dateTakenInd:I
    .end local v9           #displayName:Ljava/lang/String;
    .end local v10           #displayNameIndex:I
    .end local v15           #imageDateTaken:J
    .end local v21           #miniThumbInd:I
    .end local v24           #orientationInd:I
    .end local v28           #videoDateTaken:J
    :cond_1d
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1e

    .line 1962
    const-string v1, "MotoCamcorder"

    const-string v2, "UpdateThumbnailThread() - one of the cursors is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    :cond_1e
    if-eqz v27, :cond_1f

    .line 1969
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 1970
    const/16 v27, 0x0

    .line 1972
    :cond_1f
    if-eqz v14, :cond_6

    .line 1974
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1975
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 1983
    :cond_20
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->genVideoThumbnail:Z

    if-eqz v1, :cond_22

    .line 1985
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_21

    .line 1986
    const-string v1, "MotoCamcorder"

    const-string v2, "UpdateThumbnailRunnable - review time = 0, create the video thumbnail first, and set bitmap"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    :cond_21
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->recycleVideoFrameBitmap()V
    invoke-static {v1}, Lcom/motorola/Camera/Camcorder;->access$6000(Lcom/motorola/Camera/Camcorder;)V

    .line 1989
    new-instance v23, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1990
    .local v23, options:Landroid/graphics/BitmapFactory$Options;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$5900(Lcom/motorola/Camera/Camcorder;)Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mLastValidMediaId:J
    invoke-static {v3}, Lcom/motorola/Camera/Camcorder;->access$6100(Lcom/motorola/Camera/Camcorder;)J

    move-result-wide v3

    const/4 v5, 0x3

    move-object/from16 v0, v23

    invoke-static {v2, v3, v4, v5, v0}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lcom/motorola/Camera/Camcorder;->mVideoFrameBitmap:Landroid/graphics/Bitmap;

    .line 1991
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    iget-object v1, v1, Lcom/motorola/Camera/Camcorder;->mVideoFrameBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->data:Landroid/graphics/Bitmap;

    .line 1995
    .end local v23           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_22
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    const/16 v2, 0x10

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1996
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    const/4 v2, 0x0

    #setter for: Lcom/motorola/Camera/Camcorder;->mThumbnailOrientation:I
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camcorder;->access$202(Lcom/motorola/Camera/Camcorder;I)I

    .line 1998
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v1}, Lcom/motorola/Camera/Camcorder;->access$300(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 2000
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v1}, Lcom/motorola/Camera/Camcorder;->access$300(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->getThumbImageView()Landroid/widget/ImageButton;

    move-result-object v26

    .line 2001
    .local v26, tempImageView:Landroid/widget/ImageButton;
    invoke-virtual/range {v26 .. v26}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v30

    .line 2002
    .local v30, width:I
    invoke-virtual/range {v26 .. v26}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v13

    .line 2004
    .local v13, height:I
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_23

    .line 2005
    const-string v1, "MotoCamcorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UpdateThumbnailRunnable - tempImageView measured width x height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    :cond_23
    monitor-enter p0

    .line 2008
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->isInterrupted()Z

    move-result v18

    .line 2009
    if-nez v18, :cond_25

    .line 2011
    if-eqz v30, :cond_24

    if-nez v13, :cond_26

    .line 2012
    :cond_24
    const/4 v7, 0x0

    .line 2019
    :cond_25
    :goto_6
    monitor-exit p0

    goto/16 :goto_2

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1

    .line 2014
    :cond_26
    :try_start_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->data:Landroid/graphics/Bitmap;

    add-int/lit8 v2, v30, -0x6

    add-int/lit8 v3, v13, -0x6

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v7

    goto :goto_6

    .line 2034
    .end local v13           #height:I
    .end local v26           #tempImageView:Landroid/widget/ImageButton;
    .end local v30           #width:I
    :cond_27
    if-nez v7, :cond_28

    :try_start_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    iget-object v1, v1, Lcom/motorola/Camera/Camcorder;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_28

    .line 2035
    monitor-exit p0

    goto/16 :goto_3

    .line 2047
    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v1

    .line 2037
    :cond_28
    :try_start_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    iget-object v1, v1, Lcom/motorola/Camera/Camcorder;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_29

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    iget-object v1, v1, Lcom/motorola/Camera/Camcorder;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_29

    .line 2038
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    iget-object v1, v1, Lcom/motorola/Camera/Camcorder;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 2040
    :cond_29
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    iput-object v7, v1, Lcom/motorola/Camera/Camcorder;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 2041
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2a

    .line 2042
    const-string v1, "MotoCamcorder"

    const-string v2, "UpdateThumbnailThread() - send UPDATE_THUMBNAIL message"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    :cond_2a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/Camera/Camcorder;->access$2000(Lcom/motorola/Camera/Camcorder;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x48

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2046
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->mDone:Z

    .line 2047
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_3
.end method
