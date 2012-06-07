.class Lcom/motorola/Camera/ImageManager$1CompressImageToFile;
.super Lcom/motorola/Camera/ImageManager$BaseCancelable;
.source "ImageManager.java"

# interfaces
.implements Lcom/motorola/Camera/ImageManager$IGetBoolean_cancelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/Camera/ImageManager;->saveImageToFile([BLandroid/net/Uri;Landroid/content/ContentResolver;)Lcom/motorola/Camera/ImageManager$IGetBoolean_cancelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CompressImageToFile"
.end annotation


# instance fields
.field mOutputStream:Lcom/motorola/Camera/ImageManager$ThreadSafeOutputStream;

.field final synthetic this$0:Lcom/motorola/Camera/ImageManager;

.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$jpegData:[B

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/motorola/Camera/ImageManager;Landroid/content/ContentResolver;Landroid/net/Uri;[B)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 356
    iput-object p1, p0, Lcom/motorola/Camera/ImageManager$1CompressImageToFile;->this$0:Lcom/motorola/Camera/ImageManager;

    iput-object p2, p0, Lcom/motorola/Camera/ImageManager$1CompressImageToFile;->val$cr:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/motorola/Camera/ImageManager$1CompressImageToFile;->val$uri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/motorola/Camera/ImageManager$1CompressImageToFile;->val$jpegData:[B

    invoke-direct {p0, p1}, Lcom/motorola/Camera/ImageManager$BaseCancelable;-><init>(Lcom/motorola/Camera/ImageManager;)V

    .line 358
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/Camera/ImageManager$1CompressImageToFile;->mOutputStream:Lcom/motorola/Camera/ImageManager$ThreadSafeOutputStream;

    return-void
.end method


# virtual methods
.method public doCancelWork()Z
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/motorola/Camera/ImageManager$1CompressImageToFile;->mOutputStream:Lcom/motorola/Camera/ImageManager$ThreadSafeOutputStream;

    if-eqz v0, :cond_0

    .line 363
    :try_start_0
    iget-object v0, p0, Lcom/motorola/Camera/ImageManager$1CompressImageToFile;->mOutputStream:Lcom/motorola/Camera/ImageManager$ThreadSafeOutputStream;

    invoke-virtual {v0}, Lcom/motorola/Camera/ImageManager$ThreadSafeOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    const/4 v0, 0x1

    .line 369
    :goto_0
    return v0

    .line 365
    :catch_0
    move-exception v0

    .line 369
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get()Z
    .locals 11

    .prologue
    const/4 v6, 0x0

    .line 374
    :try_start_0
    iget-object v7, p0, Lcom/motorola/Camera/ImageManager$1CompressImageToFile;->val$cr:Landroid/content/ContentResolver;

    iget-object v8, p0, Lcom/motorola/Camera/ImageManager$1CompressImageToFile;->val$uri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    .line 376
    .local v0, delegate:Ljava/io/OutputStream;
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/motorola/Camera/ImageManager$CanceledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 377
    :try_start_1
    invoke-virtual {p0}, Lcom/motorola/Camera/ImageManager$1CompressImageToFile;->checkCanceled()V

    .line 378
    new-instance v7, Lcom/motorola/Camera/ImageManager$ThreadSafeOutputStream;

    invoke-direct {v7, v0}, Lcom/motorola/Camera/ImageManager$ThreadSafeOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v7, p0, Lcom/motorola/Camera/ImageManager$1CompressImageToFile;->mOutputStream:Lcom/motorola/Camera/ImageManager$ThreadSafeOutputStream;

    .line 379
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 380
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 381
    .local v2, x1:J
    iget-object v7, p0, Lcom/motorola/Camera/ImageManager$1CompressImageToFile;->mOutputStream:Lcom/motorola/Camera/ImageManager$ThreadSafeOutputStream;

    iget-object v8, p0, Lcom/motorola/Camera/ImageManager$1CompressImageToFile;->val$jpegData:[B

    invoke-virtual {v7, v8}, Lcom/motorola/Camera/ImageManager$ThreadSafeOutputStream;->write([B)V

    .line 382
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 383
    .local v4, x2:J
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_0

    .line 384
    const-string v7, "ImageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CompressImageToFile:get:done writing... "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/motorola/Camera/ImageManager$1CompressImageToFile;->val$jpegData:[B

    array-length v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " bytes took "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v9, v4, v2

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/motorola/Camera/ImageManager$CanceledException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 386
    :cond_0
    const/4 v6, 0x1

    .line 394
    iget-object v7, p0, Lcom/motorola/Camera/ImageManager$1CompressImageToFile;->mOutputStream:Lcom/motorola/Camera/ImageManager$ThreadSafeOutputStream;

    if-eqz v7, :cond_1

    .line 396
    :try_start_3
    iget-object v7, p0, Lcom/motorola/Camera/ImageManager$1CompressImageToFile;->mOutputStream:Lcom/motorola/Camera/ImageManager$ThreadSafeOutputStream;

    invoke-virtual {v7}, Lcom/motorola/Camera/ImageManager$ThreadSafeOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    .line 401
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/Camera/ImageManager$1CompressImageToFile;->acknowledgeCancel()V

    .end local v0           #delegate:Ljava/io/OutputStream;
    .end local v2           #x1:J
    .end local v4           #x2:J
    :goto_1
    return v6

    .line 379
    .restart local v0       #delegate:Ljava/io/OutputStream;
    :catchall_0
    move-exception v7

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/motorola/Camera/ImageManager$CanceledException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 387
    .end local v0           #delegate:Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 394
    .local v1, ex:Ljava/io/FileNotFoundException;
    iget-object v7, p0, Lcom/motorola/Camera/ImageManager$1CompressImageToFile;->mOutputStream:Lcom/motorola/Camera/ImageManager$ThreadSafeOutputStream;

    if-eqz v7, :cond_2

    .line 396
    :try_start_6
    iget-object v7, p0, Lcom/motorola/Camera/ImageManager$1CompressImageToFile;->mOutputStream:Lcom/motorola/Camera/ImageManager$ThreadSafeOutputStream;

    invoke-virtual {v7}, Lcom/motorola/Camera/ImageManager$ThreadSafeOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 401
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/motorola/Camera/ImageManager$1CompressImageToFile;->acknowledgeCancel()V

    goto :goto_1

    .line 389
    .end local v1           #ex:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 394
    .local v1, ex:Lcom/motorola/Camera/ImageManager$CanceledException;
    iget-object v7, p0, Lcom/motorola/Camera/ImageManager$1CompressImageToFile;->mOutputStream:Lcom/motorola/Camera/ImageManager$ThreadSafeOutputStream;

    if-eqz v7, :cond_3

    .line 396
    :try_start_7
    iget-object v7, p0, Lcom/motorola/Camera/ImageManager$1CompressImageToFile;->mOutputStream:Lcom/motorola/Camera/ImageManager$ThreadSafeOutputStream;

    invoke-virtual {v7}, Lcom/motorola/Camera/ImageManager$ThreadSafeOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 401
    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/motorola/Camera/ImageManager$1CompressImageToFile;->acknowledgeCancel()V

    goto :goto_1

    .line 391
    .end local v1           #ex:Lcom/motorola/Camera/ImageManager$CanceledException;
    :catch_2
    move-exception v1

    .line 394
    .local v1, ex:Ljava/io/IOException;
    iget-object v7, p0, Lcom/motorola/Camera/ImageManager$1CompressImageToFile;->mOutputStream:Lcom/motorola/Camera/ImageManager$ThreadSafeOutputStream;

    if-eqz v7, :cond_4

    .line 396
    :try_start_8
    iget-object v7, p0, Lcom/motorola/Camera/ImageManager$1CompressImageToFile;->mOutputStream:Lcom/motorola/Camera/ImageManager$ThreadSafeOutputStream;

    invoke-virtual {v7}, Lcom/motorola/Camera/ImageManager$ThreadSafeOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 401
    :cond_4
    :goto_4
    invoke-virtual {p0}, Lcom/motorola/Camera/ImageManager$1CompressImageToFile;->acknowledgeCancel()V

    goto :goto_1

    .line 394
    .end local v1           #ex:Ljava/io/IOException;
    :catchall_1
    move-exception v6

    iget-object v7, p0, Lcom/motorola/Camera/ImageManager$1CompressImageToFile;->mOutputStream:Lcom/motorola/Camera/ImageManager$ThreadSafeOutputStream;

    if-eqz v7, :cond_5

    .line 396
    :try_start_9
    iget-object v7, p0, Lcom/motorola/Camera/ImageManager$1CompressImageToFile;->mOutputStream:Lcom/motorola/Camera/ImageManager$ThreadSafeOutputStream;

    invoke-virtual {v7}, Lcom/motorola/Camera/ImageManager$ThreadSafeOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 401
    :cond_5
    :goto_5
    invoke-virtual {p0}, Lcom/motorola/Camera/ImageManager$1CompressImageToFile;->acknowledgeCancel()V

    throw v6

    .line 397
    :catch_3
    move-exception v7

    goto :goto_5

    .restart local v1       #ex:Ljava/io/IOException;
    :catch_4
    move-exception v7

    goto :goto_4

    .local v1, ex:Lcom/motorola/Camera/ImageManager$CanceledException;
    :catch_5
    move-exception v7

    goto :goto_3

    .local v1, ex:Ljava/io/FileNotFoundException;
    :catch_6
    move-exception v7

    goto :goto_2

    .end local v1           #ex:Ljava/io/FileNotFoundException;
    .restart local v0       #delegate:Ljava/io/OutputStream;
    .restart local v2       #x1:J
    .restart local v4       #x2:J
    :catch_7
    move-exception v7

    goto :goto_0
.end method
