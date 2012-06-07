.class Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;
.super Ljava/lang/Object;
.source "StoreImageUtility.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/StoreImageUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StoreImageTask"
.end annotation


# instance fields
.field private mCurrentStorageDirectory:Ljava/lang/String;

.field private mData:[B

.field private mIsRotatorClosed:Z

.field private mLastOrientation:I

.field private mLocation:Landroid/location/Location;

.field private mSitData:Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;

.field final synthetic this$0:Lcom/motorola/Camera/StoreImageUtility;


# direct methods
.method public constructor <init>(Lcom/motorola/Camera/StoreImageUtility;[BLandroid/hardware/Camera;Landroid/location/Location;IZLjava/lang/String;Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)V
    .locals 0
    .parameter
    .parameter "data"
    .parameter "camera"
    .parameter "loc"
    .parameter "orientation"
    .parameter "isrotatorclosed"
    .parameter "currentstoragedirectory"
    .parameter "simidata"

    .prologue
    .line 505
    iput-object p1, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->this$0:Lcom/motorola/Camera/StoreImageUtility;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 507
    iput-object p2, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->mData:[B

    .line 508
    iput-object p4, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->mLocation:Landroid/location/Location;

    .line 509
    iput p5, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->mLastOrientation:I

    .line 510
    iput-boolean p6, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->mIsRotatorClosed:Z

    .line 511
    iput-object p7, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->mCurrentStorageDirectory:Ljava/lang/String;

    .line 512
    iput-object p8, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->mSitData:Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;

    .line 513
    return-void
.end method

.method private storeImage([BLandroid/location/Location;IZLjava/lang/String;)Landroid/net/Uri;
    .locals 24
    .parameter "data"
    .parameter "loc"
    .parameter "lastOrientation"
    .parameter "isRotatorClosed"
    .parameter "currentStorageDirectory"

    .prologue
    .line 705
    move-object/from16 v22, p5

    .line 706
    .local v22, storageDirectory:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 707
    .local v5, dateTaken:J
    invoke-static {v5, v6}, Lcom/motorola/Camera/CameraGlobalTools;->createName(J)Ljava/lang/String;

    move-result-object v4

    .line 708
    .local v4, title:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 711
    .local v10, newFileName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->mSitData:Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;

    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$900(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_2

    .line 712
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 713
    const-string v1, "StoreImageUtility"

    const-string v2, " storeImage: Context is null. image can not be saved"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :cond_0
    const/16 v23, 0x0

    .line 814
    :cond_1
    :goto_0
    return-object v23

    .line 719
    :cond_2
    move/from16 v8, p3

    .line 725
    .local v8, orientation:I
    :try_start_0
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_3

    .line 726
    const-string v1, "StoreImageUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " storeImage - orientation adjusted CCW with landscape as ref 0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :cond_3
    invoke-static {}, Lcom/motorola/Camera/ImageManager;->instance()Lcom/motorola/Camera/ImageManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->mSitData:Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;

    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$900(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->mSitData:Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;

    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$900(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "/dcim/Camera"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v7, p2

    invoke-virtual/range {v1 .. v10}, Lcom/motorola/Camera/ImageManager;->addImage(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;ILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 737
    .local v12, lastContentUri:Landroid/net/Uri;
    const/16 v21, 0x0

    .line 739
    .local v21, mCancel:Z
    if-nez v12, :cond_4

    .line 741
    const/16 v21, 0x1

    .line 742
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_4

    .line 743
    const-string v1, "StoreImageUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lastContentUri"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :cond_4
    if-nez v21, :cond_8

    .line 752
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->mSitData:Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;

    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$800(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 753
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->mSitData:Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;

    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$800(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/Camera/CameraGlobalTools;->resetCameraTimeout(Landroid/os/Handler;)V

    .line 756
    :cond_5
    invoke-static {}, Lcom/motorola/Camera/ImageManager;->instance()Lcom/motorola/Camera/ImageManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->mSitData:Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;

    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$900(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v1, v12, v2, v0, v3}, Lcom/motorola/Camera/ImageManager;->storeImage(Landroid/net/Uri;Landroid/content/ContentResolver;[BLandroid/graphics/Bitmap;)Lcom/motorola/Camera/ImageManager$IAddImage_cancelable;

    move-result-object v20

    .line 759
    .local v20, mAddImageCancelable:Lcom/motorola/Camera/ImageManager$IAddImage_cancelable;
    invoke-interface/range {v20 .. v20}, Lcom/motorola/Camera/ImageManager$IAddImage_cancelable;->get()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 760
    const/16 v20, 0x0

    .line 767
    const/16 v17, 0x0

    .line 769
    .local v17, c:Landroid/database/Cursor;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->mSitData:Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;

    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$900(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const/4 v1, 0x1

    new-array v13, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v13, v1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v17

    .line 789
    :cond_6
    :goto_1
    if-eqz v17, :cond_7

    :try_start_2
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_7

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 790
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->mSitData:Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #setter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mMediaID:Ljava/lang/Integer;
    invoke-static {v1, v2}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$1302(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 794
    :cond_7
    if-eqz v17, :cond_8

    .line 795
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 804
    .end local v12           #lastContentUri:Landroid/net/Uri;
    .end local v17           #c:Landroid/database/Cursor;
    .end local v20           #mAddImageCancelable:Lcom/motorola/Camera/ImageManager$IAddImage_cancelable;
    .end local v21           #mCancel:Z
    :cond_8
    :goto_2
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_9

    .line 805
    const-string v1, "StoreImageUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImageCapture:storeImage:storageDirectory= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    :cond_9
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/dcim/Camera"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v23

    .line 811
    .local v23, uri:Landroid/net/Uri;
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    .line 812
    const-string v1, "MotoCameraKPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Time stat, storeImage() - seq no #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->mSitData:Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;

    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mSequenceNumber:I
    invoke-static {v3}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$100(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " time - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v5

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 771
    .end local v23           #uri:Landroid/net/Uri;
    .restart local v12       #lastContentUri:Landroid/net/Uri;
    .restart local v17       #c:Landroid/database/Cursor;
    .restart local v20       #mAddImageCancelable:Lcom/motorola/Camera/ImageManager$IAddImage_cancelable;
    .restart local v21       #mCancel:Z
    :catch_0
    move-exception v19

    .line 772
    .local v19, ioex:Landroid/database/sqlite/SQLiteDiskIOException;
    if-eqz v17, :cond_a

    .line 773
    :try_start_3
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 774
    const/16 v17, 0x0

    .line 776
    :cond_a
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_6

    .line 777
    const-string v1, "StoreImageUtility"

    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 799
    .end local v12           #lastContentUri:Landroid/net/Uri;
    .end local v17           #c:Landroid/database/Cursor;
    .end local v19           #ioex:Landroid/database/sqlite/SQLiteDiskIOException;
    .end local v20           #mAddImageCancelable:Lcom/motorola/Camera/ImageManager$IAddImage_cancelable;
    .end local v21           #mCancel:Z
    :catch_1
    move-exception v18

    .line 800
    .local v18, ex:Ljava/lang/Exception;
    const-string v1, "StoreImageUtility"

    const-string v2, "ImageCapture:storeImage:Exception while compressing image."

    move-object/from16 v0, v18

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 779
    .end local v18           #ex:Ljava/lang/Exception;
    .restart local v12       #lastContentUri:Landroid/net/Uri;
    .restart local v17       #c:Landroid/database/Cursor;
    .restart local v20       #mAddImageCancelable:Lcom/motorola/Camera/ImageManager$IAddImage_cancelable;
    .restart local v21       #mCancel:Z
    :catch_2
    move-exception v18

    .line 780
    .restart local v18       #ex:Ljava/lang/Exception;
    if-eqz v17, :cond_b

    .line 781
    :try_start_4
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 782
    const/16 v17, 0x0

    .line 784
    :cond_b
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_6

    .line 785
    const-string v1, "StoreImageUtility"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1
.end method

.method private storeImageTask()V
    .locals 14

    .prologue
    const/4 v11, 0x0

    const/4 v13, 0x0

    .line 541
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 542
    .local v7, time:J
    const/4 v6, 0x0

    .line 545
    .local v6, picturecount:I
    iget-object v0, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->mData:[B

    if-eqz v0, :cond_9

    .line 546
    iget-object v12, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->mSitData:Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;

    iget-object v1, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->mData:[B

    iget-object v2, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->mLocation:Landroid/location/Location;

    iget v3, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->mLastOrientation:I

    iget-boolean v4, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->mIsRotatorClosed:Z

    iget-object v5, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->mCurrentStorageDirectory:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->storeImage([BLandroid/location/Location;IZLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    #setter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mPictureUri:Landroid/net/Uri;
    invoke-static {v12, v0}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$1202(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;Landroid/net/Uri;)Landroid/net/Uri;

    .line 561
    :goto_0
    iget-object v0, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->this$0:Lcom/motorola/Camera/StoreImageUtility;

    #getter for: Lcom/motorola/Camera/StoreImageUtility;->mAStoreImageMemberInfo:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/motorola/Camera/StoreImageUtility;->access$1400(Lcom/motorola/Camera/StoreImageUtility;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 562
    :try_start_0
    iget-object v0, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->this$0:Lcom/motorola/Camera/StoreImageUtility;

    #getter for: Lcom/motorola/Camera/StoreImageUtility;->mAStoreImageMemberInfo:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/motorola/Camera/StoreImageUtility;->access$1400(Lcom/motorola/Camera/StoreImageUtility;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->mSitData:Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    iget-object v0, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->this$0:Lcom/motorola/Camera/StoreImageUtility;

    invoke-static {v0}, Lcom/motorola/Camera/StoreImageUtility;->access$1508(Lcom/motorola/Camera/StoreImageUtility;)I

    .line 564
    iget-object v0, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->this$0:Lcom/motorola/Camera/StoreImageUtility;

    #getter for: Lcom/motorola/Camera/StoreImageUtility;->mImageSavedCount:I
    invoke-static {v0}, Lcom/motorola/Camera/StoreImageUtility;->access$1500(Lcom/motorola/Camera/StoreImageUtility;)I

    move-result v6

    .line 565
    iget-object v2, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->mSitData:Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;

    iget-object v0, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->this$0:Lcom/motorola/Camera/StoreImageUtility;

    #getter for: Lcom/motorola/Camera/StoreImageUtility;->mAStoreImageMemberInfo:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/motorola/Camera/StoreImageUtility;->access$1400(Lcom/motorola/Camera/StoreImageUtility;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v3, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->mSitData:Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;

    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mMultiShotMaxCount:I
    invoke-static {v3}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$500(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->mSitData:Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;

    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mMultiShotMaxCount:I
    invoke-static {v0}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$500(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)I

    move-result v0

    if-ne v6, v0, :cond_a

    :cond_0
    const/4 v0, 0x1

    :goto_1
    #setter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->isLastPicture:Z
    invoke-static {v2, v0}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$1602(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;Z)Z

    .line 568
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 574
    .local v9, xmpTime:J
    iget-object v0, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->mSitData:Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;

    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mMediaID:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$1300(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->mSitData:Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;

    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mMediaID:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$1300(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_b

    .line 576
    iget-object v0, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->mSitData:Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;

    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mMediaID:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$1300(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->mSitData:Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;

    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mXmpShootingMode:I
    invoke-static {v1}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$600(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)I

    move-result v1

    iget-object v2, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->mSitData:Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;

    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mSequenceNumber:I
    invoke-static {v2}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$100(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)I

    move-result v2

    iget-object v3, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->mSitData:Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;

    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mMultiBurstSequenceFrequency:I
    invoke-static {v3}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$200(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)I

    move-result v3

    iget-object v4, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->mSitData:Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;

    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mMultiBurstGroupIdentifier:Ljava/lang/String;
    invoke-static {v4}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$300(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->mSitData:Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;

    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$900(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)Landroid/content/Context;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/motorola/Camera/CameraXmpUtility/CamXmpUtility;->updateMultishotXmpDataInMediaStore(Ljava/lang/Integer;IIILjava/lang/String;Landroid/content/Context;)Z

    .line 583
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    .line 584
    const-string v0, "MotoCameraKPI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XMP Time stat, storeImageTask() - seq no #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->mSitData:Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;

    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mSequenceNumber:I
    invoke-static {v2}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$100(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " time - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v9

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_1
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->mSitData:Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;

    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mPictureUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$1200(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 588
    const-string v0, "StoreImageUtility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KPI: completed MediaStore Update with XMP and TAG for uri"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->mSitData:Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;

    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mPictureUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$1200(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->mSitData:Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;

    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->isMainPicture:Z
    invoke-static {v0}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$1100(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 602
    iget-object v0, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->this$0:Lcom/motorola/Camera/StoreImageUtility;

    #getter for: Lcom/motorola/Camera/StoreImageUtility;->mCameraActivity:Lcom/motorola/Camera/Camera;
    invoke-static {v0}, Lcom/motorola/Camera/StoreImageUtility;->access$1700(Lcom/motorola/Camera/StoreImageUtility;)Lcom/motorola/Camera/Camera;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->mData:[B

    if-eqz v0, :cond_4

    .line 606
    iget-object v0, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->this$0:Lcom/motorola/Camera/StoreImageUtility;

    #getter for: Lcom/motorola/Camera/StoreImageUtility;->mCameraActivity:Lcom/motorola/Camera/Camera;
    invoke-static {v0}, Lcom/motorola/Camera/StoreImageUtility;->access$1700(Lcom/motorola/Camera/StoreImageUtility;)Lcom/motorola/Camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/Camera;->interruptThumbnailThread()V

    .line 607
    iget-object v1, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->this$0:Lcom/motorola/Camera/StoreImageUtility;

    iget-object v0, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->mData:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    #setter for: Lcom/motorola/Camera/StoreImageUtility;->mMainPictureData:[B
    invoke-static {v1, v0}, Lcom/motorola/Camera/StoreImageUtility;->access$1802(Lcom/motorola/Camera/StoreImageUtility;[B)[B

    .line 612
    sget-object v0, Lcom/motorola/Camera/StoreImageUtility;->mPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;

    iget-object v2, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->this$0:Lcom/motorola/Camera/StoreImageUtility;

    #getter for: Lcom/motorola/Camera/StoreImageUtility;->mCameraActivity:Lcom/motorola/Camera/Camera;
    invoke-static {v2}, Lcom/motorola/Camera/StoreImageUtility;->access$1700(Lcom/motorola/Camera/StoreImageUtility;)Lcom/motorola/Camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->this$0:Lcom/motorola/Camera/StoreImageUtility;

    #getter for: Lcom/motorola/Camera/StoreImageUtility;->mMainPictureData:[B
    invoke-static {v3}, Lcom/motorola/Camera/StoreImageUtility;->access$1800(Lcom/motorola/Camera/StoreImageUtility;)[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;-><init>(Lcom/motorola/Camera/Camera;[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 613
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_3

    .line 614
    const-string v0, "StoreImageUtility"

    const-string v1, "KPI: BURST_JPEG_CREATE_MAIN_PICTURE_THUMBNAIL started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_3
    iput-object v13, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->mData:[B

    .line 618
    :cond_4
    iget-object v0, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->this$0:Lcom/motorola/Camera/StoreImageUtility;

    iget-object v1, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->mSitData:Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;

    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mPictureUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$1200(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)Landroid/net/Uri;

    move-result-object v1

    #setter for: Lcom/motorola/Camera/StoreImageUtility;->mMainPictureUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/motorola/Camera/StoreImageUtility;->access$1902(Lcom/motorola/Camera/StoreImageUtility;Landroid/net/Uri;)Landroid/net/Uri;

    .line 630
    :goto_3
    iput-object v13, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->mData:[B

    .line 635
    iget-object v0, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->mSitData:Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;

    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->isLastPicture:Z
    invoke-static {v0}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$1600(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 643
    iget-object v0, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->this$0:Lcom/motorola/Camera/StoreImageUtility;

    iget-object v1, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->mSitData:Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;

    #setter for: Lcom/motorola/Camera/StoreImageUtility;->mSiuLastPictureInfo:Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;
    invoke-static {v0, v1}, Lcom/motorola/Camera/StoreImageUtility;->access$2102(Lcom/motorola/Camera/StoreImageUtility;Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;

    .line 646
    iget-object v0, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->mSitData:Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;

    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$800(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 647
    iget-object v0, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->mSitData:Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;

    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$800(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 658
    :cond_5
    :goto_4
    iget-object v0, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->mSitData:Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;

    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$900(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->this$0:Lcom/motorola/Camera/StoreImageUtility;

    #getter for: Lcom/motorola/Camera/StoreImageUtility;->mMainPictureUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/motorola/Camera/StoreImageUtility;->access$1900(Lcom/motorola/Camera/StoreImageUtility;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 659
    iget-object v0, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->mSitData:Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;

    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$900(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    iget-object v3, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->this$0:Lcom/motorola/Camera/StoreImageUtility;

    #getter for: Lcom/motorola/Camera/StoreImageUtility;->mMainPictureUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/motorola/Camera/StoreImageUtility;->access$1900(Lcom/motorola/Camera/StoreImageUtility;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 661
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_6

    .line 662
    const-string v0, "StoreImageUtility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "storeImageTask: KPI: broadcast main picture ACTION_MEDIA_SCANNER_SCAN_FILE uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->this$0:Lcom/motorola/Camera/StoreImageUtility;

    #getter for: Lcom/motorola/Camera/StoreImageUtility;->mMainPictureUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/motorola/Camera/StoreImageUtility;->access$1900(Lcom/motorola/Camera/StoreImageUtility;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :cond_6
    :goto_5
    iget-object v0, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->this$0:Lcom/motorola/Camera/StoreImageUtility;

    #setter for: Lcom/motorola/Camera/StoreImageUtility;->mDataCleared:Z
    invoke-static {v0, v11}, Lcom/motorola/Camera/StoreImageUtility;->access$2202(Lcom/motorola/Camera/StoreImageUtility;Z)Z

    .line 681
    sget-object v0, Lcom/motorola/Camera/StoreImageUtility;->mPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/motorola/Camera/StoreImageUtility$StoreXmpDataInFiles;

    iget-object v2, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->this$0:Lcom/motorola/Camera/StoreImageUtility;

    invoke-direct {v1, v2}, Lcom/motorola/Camera/StoreImageUtility$StoreXmpDataInFiles;-><init>(Lcom/motorola/Camera/StoreImageUtility;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 683
    :cond_7
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_8

    .line 684
    const-string v0, "MotoCameraKPI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Time stat, storeImageTask() - seq no #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->mSitData:Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;

    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mSequenceNumber:I
    invoke-static {v2}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$100(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , time - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v7

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_8
    return-void

    .line 549
    .end local v9           #xmpTime:J
    :cond_9
    iget-object v0, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->mSitData:Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;

    #setter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mPictureUri:Landroid/net/Uri;
    invoke-static {v0, v13}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$1202(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;Landroid/net/Uri;)Landroid/net/Uri;

    .line 550
    iget-object v0, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->mSitData:Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;

    #setter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mMediaID:Ljava/lang/Integer;
    invoke-static {v0, v13}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$1302(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;Ljava/lang/Integer;)Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_a
    move v0, v11

    .line 565
    goto/16 :goto_1

    .line 568
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 592
    .restart local v9       #xmpTime:J
    :cond_b
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    .line 593
    const-string v0, "StoreImageUtility"

    const-string v1, "KPI: ERROR-- Can not update MediaStore with XMP and TAG in DB. MediaID is null. File not saved"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 627
    :cond_c
    iget-object v0, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->this$0:Lcom/motorola/Camera/StoreImageUtility;

    #getter for: Lcom/motorola/Camera/StoreImageUtility;->mAUriList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/motorola/Camera/StoreImageUtility;->access$2000(Lcom/motorola/Camera/StoreImageUtility;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->mSitData:Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;

    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mPictureUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$1200(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 652
    :cond_d
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_5

    .line 653
    const-string v0, "StoreImageUtility"

    const-string v1, "KPI: CANNOT SEND BURST_JPEG_ALL_PICTURES_SAVED. handler null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 667
    :cond_e
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_6

    .line 668
    const-string v0, "StoreImageUtility"

    const-string v1, "KPI: Context NULL- ACTION_MEDIA_SCANNER_SCAN_FILE- Main Pict."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 526
    invoke-direct {p0}, Lcom/motorola/Camera/StoreImageUtility$StoreImageTask;->storeImageTask()V

    .line 527
    return-void
.end method
