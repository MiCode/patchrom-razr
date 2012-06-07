.class Lcom/motorola/Camera/SaveImageService$StoreImage;
.super Ljava/lang/Object;
.source "SaveImageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/SaveImageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoreImage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/Camera/SaveImageService$StoreImage$ImageContainer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MotoCameraStorage"


# instance fields
.field private mAvailableMemoryNumPics:I

.field private mAvailableMemoryPicSize:I

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentMemoryUsed:I

.field private mImageQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/motorola/Camera/SaveImageService$StoreImage$ImageContainer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mKeepThreadRunning:Z

.field private mPicExtension:Ljava/lang/String;

.field private mSavingThread:Ljava/lang/Thread;

.field private mSendAvailableMemoryUpdate:Z

.field final synthetic this$0:Lcom/motorola/Camera/SaveImageService;


# direct methods
.method private constructor <init>(Lcom/motorola/Camera/SaveImageService;)V
    .locals 2
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/motorola/Camera/SaveImageService$StoreImage;->this$0:Lcom/motorola/Camera/SaveImageService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 209
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/motorola/Camera/SaveImageService$StoreImage;->mImageQueue:Ljava/util/LinkedList;

    .line 210
    const-string v0, "jpg"

    iput-object v0, p0, Lcom/motorola/Camera/SaveImageService$StoreImage;->mPicExtension:Ljava/lang/String;

    .line 211
    iget-object v0, p0, Lcom/motorola/Camera/SaveImageService$StoreImage;->this$0:Lcom/motorola/Camera/SaveImageService;

    #calls: Lcom/motorola/Camera/SaveImageService;->getContext()Landroid/content/Context;
    invoke-static {v0}, Lcom/motorola/Camera/SaveImageService;->access$600(Lcom/motorola/Camera/SaveImageService;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/SaveImageService$StoreImage;->mContext:Landroid/content/Context;

    .line 212
    iget-object v0, p0, Lcom/motorola/Camera/SaveImageService$StoreImage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/SaveImageService$StoreImage;->mContentResolver:Landroid/content/ContentResolver;

    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/Camera/SaveImageService$StoreImage;->mKeepThreadRunning:Z

    .line 224
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/motorola/Camera/SaveImageService$StoreImage$1;

    invoke-direct {v1, p0, p1}, Lcom/motorola/Camera/SaveImageService$StoreImage$1;-><init>(Lcom/motorola/Camera/SaveImageService$StoreImage;Lcom/motorola/Camera/SaveImageService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/motorola/Camera/SaveImageService$StoreImage;->mSavingThread:Ljava/lang/Thread;

    .line 279
    iget-object v0, p0, Lcom/motorola/Camera/SaveImageService$StoreImage;->mSavingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 280
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/Camera/SaveImageService;Lcom/motorola/Camera/SaveImageService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lcom/motorola/Camera/SaveImageService$StoreImage;-><init>(Lcom/motorola/Camera/SaveImageService;)V

    return-void
.end method

.method static synthetic access$100(Lcom/motorola/Camera/SaveImageService$StoreImage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/motorola/Camera/SaveImageService$StoreImage;->cleanup()V

    return-void
.end method

.method static synthetic access$1000(Lcom/motorola/Camera/SaveImageService$StoreImage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/motorola/Camera/SaveImageService$StoreImage;->mSendAvailableMemoryUpdate:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/motorola/Camera/SaveImageService$StoreImage;Ljava/lang/String;[BJLandroid/location/Location;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 205
    invoke-direct/range {p0 .. p6}, Lcom/motorola/Camera/SaveImageService$StoreImage;->addImage(Ljava/lang/String;[BJLandroid/location/Location;I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/motorola/Camera/SaveImageService$StoreImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 205
    iget v0, p0, Lcom/motorola/Camera/SaveImageService$StoreImage;->mCurrentMemoryUsed:I

    return v0
.end method

.method static synthetic access$1702(Lcom/motorola/Camera/SaveImageService$StoreImage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 205
    iput p1, p0, Lcom/motorola/Camera/SaveImageService$StoreImage;->mCurrentMemoryUsed:I

    return p1
.end method

.method static synthetic access$1800(Lcom/motorola/Camera/SaveImageService$StoreImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 205
    iget v0, p0, Lcom/motorola/Camera/SaveImageService$StoreImage;->mAvailableMemoryPicSize:I

    return v0
.end method

.method static synthetic access$1900(Lcom/motorola/Camera/SaveImageService$StoreImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 205
    iget v0, p0, Lcom/motorola/Camera/SaveImageService$StoreImage;->mAvailableMemoryNumPics:I

    return v0
.end method

.method static synthetic access$200(Lcom/motorola/Camera/SaveImageService$StoreImage;[BJLandroid/location/Location;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 205
    invoke-direct/range {p0 .. p6}, Lcom/motorola/Camera/SaveImageService$StoreImage;->saveImage([BJLandroid/location/Location;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/motorola/Camera/SaveImageService$StoreImage;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 205
    invoke-direct {p0, p1, p2}, Lcom/motorola/Camera/SaveImageService$StoreImage;->canSave(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/motorola/Camera/SaveImageService$StoreImage;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 205
    invoke-direct {p0, p1, p2}, Lcom/motorola/Camera/SaveImageService$StoreImage;->updateOnMemoryAvailable(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/motorola/Camera/SaveImageService$StoreImage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/motorola/Camera/SaveImageService$StoreImage;->mKeepThreadRunning:Z

    return v0
.end method

.method static synthetic access$800(Lcom/motorola/Camera/SaveImageService$StoreImage;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/motorola/Camera/SaveImageService$StoreImage;->mImageQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method private addImage(Ljava/lang/String;[BJLandroid/location/Location;I)V
    .locals 11
    .parameter "imagePath"
    .parameter "jpeg"
    .parameter "date"
    .parameter "location"
    .parameter "orientation"

    .prologue
    .line 359
    move-object v4, p1

    .line 360
    .local v4, path:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 362
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 364
    const/4 v2, 0x0

    .line 366
    .local v2, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 367
    .end local v2           #out:Ljava/io/FileOutputStream;
    .local v3, out:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v3, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 372
    if-eqz v3, :cond_0

    .line 373
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v2, v3

    .line 381
    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    new-instance v7, Landroid/content/ContentValues;

    const/16 v8, 0x9

    invoke-direct {v7, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 382
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "mime_type"

    const-string v9, "image/jpeg"

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v8, "_data"

    invoke-virtual {v7, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string v8, "_size"

    array-length v9, p2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 385
    const-string v8, "datetaken"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 386
    const-string v8, "orientation"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 388
    if-eqz p5, :cond_2

    .line 389
    const-string v8, "latitude"

    invoke-virtual/range {p5 .. p5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 390
    const-string v8, "longitude"

    invoke-virtual/range {p5 .. p5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 393
    :cond_2
    const/4 v6, 0x0

    .line 395
    .local v6, uri:Landroid/net/Uri;
    :try_start_3
    iget-object v8, p0, Lcom/motorola/Camera/SaveImageService$StoreImage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v9, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v9, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v6

    .line 405
    :goto_1
    iget-object v8, p0, Lcom/motorola/Camera/SaveImageService$StoreImage;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.hardware.action.NEW_PICTURE"

    invoke-direct {v9, v10, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v8, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 407
    iget-object v8, p0, Lcom/motorola/Camera/SaveImageService$StoreImage;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.android.camera.NEW_PICTURE"

    invoke-direct {v9, v10, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v8, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 409
    return-void

    .line 375
    .end local v2           #out:Ljava/io/FileOutputStream;
    .end local v6           #uri:Landroid/net/Uri;
    .end local v7           #values:Landroid/content/ContentValues;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 376
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "MotoCameraStorage"

    const-string v9, "Failed to close output stream"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 378
    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 368
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 369
    .restart local v1       #e:Ljava/lang/Exception;
    :goto_2
    :try_start_4
    const-string v8, "MotoCameraStorage"

    const-string v9, "Failed to write image"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 372
    if-eqz v2, :cond_1

    .line 373
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 375
    :catch_2
    move-exception v1

    .line 376
    const-string v8, "MotoCameraStorage"

    const-string v9, "Failed to close output stream"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 371
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 372
    :goto_3
    if-eqz v2, :cond_3

    .line 373
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 377
    :cond_3
    :goto_4
    throw v8

    .line 375
    :catch_3
    move-exception v1

    .line 376
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v9, "MotoCameraStorage"

    const-string v10, "Failed to close output stream"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 396
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v6       #uri:Landroid/net/Uri;
    .restart local v7       #values:Landroid/content/ContentValues;
    :catch_4
    move-exception v5

    .line 402
    .local v5, th:Ljava/lang/Throwable;
    const-string v8, "MotoCameraStorage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to write MediaStore"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 371
    .end local v2           #out:Ljava/io/FileOutputStream;
    .end local v5           #th:Ljava/lang/Throwable;
    .end local v6           #uri:Landroid/net/Uri;
    .end local v7           #values:Landroid/content/ContentValues;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 368
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v1

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method private canSave(II)Z
    .locals 6
    .parameter "size"
    .parameter "numPics"

    .prologue
    .line 317
    sget-boolean v2, Lcom/motorola/Camera/Util;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 318
    const-string v2, "MotoCameraKPI"

    const-string v3, "can Save entered"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_0
    const/4 v0, 0x0

    .line 322
    .local v0, queueSize:I
    const/4 v1, 0x0

    .line 324
    .local v1, result:Z
    iget-object v3, p0, Lcom/motorola/Camera/SaveImageService$StoreImage;->mImageQueue:Ljava/util/LinkedList;

    monitor-enter v3

    .line 325
    :try_start_0
    sget-boolean v2, Lcom/motorola/Camera/Util;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "MotoCameraStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "canSave - mCurrentMemoryUsed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/Camera/SaveImageService$StoreImage;->mCurrentMemoryUsed:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_1
    const v2, 0xe4e1c0

    iget v4, p0, Lcom/motorola/Camera/SaveImageService$StoreImage;->mCurrentMemoryUsed:I

    sub-int/2addr v2, v4

    mul-int v4, p1, p2

    if-le v2, v4, :cond_2

    .line 328
    const/4 v1, 0x1

    .line 330
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    sget-boolean v2, Lcom/motorola/Camera/Util;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 333
    const-string v2, "MotoCameraKPI"

    const-string v3, "can Save exited"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_3
    return v1

    .line 330
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private cleanup()V
    .locals 2

    .prologue
    .line 286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/Camera/SaveImageService$StoreImage;->mKeepThreadRunning:Z

    .line 287
    iget-object v1, p0, Lcom/motorola/Camera/SaveImageService$StoreImage;->mImageQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/motorola/Camera/SaveImageService$StoreImage;->mImageQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 289
    monitor-exit v1

    .line 290
    return-void

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private createPicturePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "storageDirectory"

    .prologue
    .line 417
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 418
    .local v0, now:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "IMG_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "yyyyMMdd_kkmmss"

    invoke-static {v3, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    rem-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/SaveImageService$StoreImage;->mPicExtension:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private saveImage([BJLandroid/location/Location;ILjava/lang/String;)V
    .locals 12
    .parameter "jpeg"
    .parameter "date"
    .parameter "location"
    .parameter "orientation"
    .parameter "storageDirectory"

    .prologue
    .line 298
    sget-boolean v1, Lcom/motorola/Camera/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCameraKPI"

    const-string v2, "save image entered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_0
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    .line 300
    .local v4, jpegCopy:[B
    iget-object v10, p0, Lcom/motorola/Camera/SaveImageService$StoreImage;->mImageQueue:Ljava/util/LinkedList;

    monitor-enter v10

    .line 301
    :try_start_0
    iget-object v11, p0, Lcom/motorola/Camera/SaveImageService$StoreImage;->mImageQueue:Ljava/util/LinkedList;

    new-instance v1, Lcom/motorola/Camera/SaveImageService$StoreImage$ImageContainer;

    move-object/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/motorola/Camera/SaveImageService$StoreImage;->createPicturePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x0

    move-object v2, p0

    move-wide v5, p2

    move-object/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v1 .. v9}, Lcom/motorola/Camera/SaveImageService$StoreImage$ImageContainer;-><init>(Lcom/motorola/Camera/SaveImageService$StoreImage;Ljava/lang/String;[BJLandroid/location/Location;ILcom/motorola/Camera/SaveImageService$1;)V

    invoke-virtual {v11, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 302
    iget-object v1, p0, Lcom/motorola/Camera/SaveImageService$StoreImage;->this$0:Lcom/motorola/Camera/SaveImageService;

    const/4 v2, 0x0

    #calls: Lcom/motorola/Camera/SaveImageService;->setQueueEmptyStatus(Z)V
    invoke-static {v1, v2}, Lcom/motorola/Camera/SaveImageService;->access$900(Lcom/motorola/Camera/SaveImageService;Z)V

    .line 303
    iget v1, p0, Lcom/motorola/Camera/SaveImageService$StoreImage;->mCurrentMemoryUsed:I

    array-length v2, v4

    add-int/2addr v1, v2

    iput v1, p0, Lcom/motorola/Camera/SaveImageService$StoreImage;->mCurrentMemoryUsed:I

    .line 304
    sget-boolean v1, Lcom/motorola/Camera/Util;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "MotoCameraStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveImage - mCurrentMemoryUsed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/Camera/SaveImageService$StoreImage;->mCurrentMemoryUsed:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_1
    iget-object v1, p0, Lcom/motorola/Camera/SaveImageService$StoreImage;->mImageQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 306
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    sget-boolean v1, Lcom/motorola/Camera/Util;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "MotoCameraKPI"

    const-string v2, "save image exited"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_2
    return-void

    .line 306
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private updateOnMemoryAvailable(II)V
    .locals 2
    .parameter "picSize"
    .parameter "numPics"

    .prologue
    .line 340
    iget-object v1, p0, Lcom/motorola/Camera/SaveImageService$StoreImage;->mImageQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 341
    :try_start_0
    iput p1, p0, Lcom/motorola/Camera/SaveImageService$StoreImage;->mAvailableMemoryPicSize:I

    .line 342
    iput p2, p0, Lcom/motorola/Camera/SaveImageService$StoreImage;->mAvailableMemoryNumPics:I

    .line 343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/Camera/SaveImageService$StoreImage;->mSendAvailableMemoryUpdate:Z

    .line 344
    monitor-exit v1

    .line 345
    return-void

    .line 344
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
