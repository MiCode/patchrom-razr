.class Lcom/motorola/Camera/ImageManager$1AddImageCancelable;
.super Lcom/motorola/Camera/ImageManager$BaseCancelable;
.source "ImageManager.java"

# interfaces
.implements Lcom/motorola/Camera/ImageManager$IAddImage_cancelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/Camera/ImageManager;->storeImage(Landroid/net/Uri;Landroid/content/ContentResolver;[BLandroid/graphics/Bitmap;)Lcom/motorola/Camera/ImageManager$IAddImage_cancelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AddImageCancelable"
.end annotation


# instance fields
.field private mSaveImageCancelable:Lcom/motorola/Camera/ImageManager$IGetBoolean_cancelable;

.field final synthetic this$0:Lcom/motorola/Camera/ImageManager;

.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$jpegData:[B

.field final synthetic val$thumbnail:Landroid/graphics/Bitmap;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/motorola/Camera/ImageManager;[BLandroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
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
    .line 409
    iput-object p1, p0, Lcom/motorola/Camera/ImageManager$1AddImageCancelable;->this$0:Lcom/motorola/Camera/ImageManager;

    iput-object p2, p0, Lcom/motorola/Camera/ImageManager$1AddImageCancelable;->val$jpegData:[B

    iput-object p3, p0, Lcom/motorola/Camera/ImageManager$1AddImageCancelable;->val$uri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/motorola/Camera/ImageManager$1AddImageCancelable;->val$cr:Landroid/content/ContentResolver;

    iput-object p5, p0, Lcom/motorola/Camera/ImageManager$1AddImageCancelable;->val$thumbnail:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1}, Lcom/motorola/Camera/ImageManager$BaseCancelable;-><init>(Lcom/motorola/Camera/ImageManager;)V

    return-void
.end method


# virtual methods
.method public doCancelWork()Z
    .locals 3

    .prologue
    .line 414
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 415
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AddImageCancelable:doCancelWork:calling AddImageCancelable.cancel() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/Camera/ImageManager$1AddImageCancelable;->mSaveImageCancelable:Lcom/motorola/Camera/ImageManager$IGetBoolean_cancelable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/ImageManager$1AddImageCancelable;->mSaveImageCancelable:Lcom/motorola/Camera/ImageManager$IGetBoolean_cancelable;

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, p0, Lcom/motorola/Camera/ImageManager$1AddImageCancelable;->mSaveImageCancelable:Lcom/motorola/Camera/ImageManager$IGetBoolean_cancelable;

    invoke-interface {v0}, Lcom/motorola/Camera/ImageManager$IGetBoolean_cancelable;->cancel()Z

    .line 421
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public get()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 425
    iget-object v6, p0, Lcom/motorola/Camera/ImageManager$1AddImageCancelable;->val$jpegData:[B

    if-nez v6, :cond_0

    .line 426
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "source cannot be null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 430
    :cond_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Lcom/motorola/Camera/ImageManager$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :try_start_1
    iget-boolean v6, p0, Lcom/motorola/Camera/ImageManager$BaseCancelable;->mCancel:Z

    if-eqz v6, :cond_4

    .line 432
    new-instance v6, Lcom/motorola/Camera/ImageManager$CanceledException;

    invoke-direct {v6}, Lcom/motorola/Camera/ImageManager$CanceledException;-><init>()V

    throw v6

    .line 434
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catch Lcom/motorola/Camera/ImageManager$CanceledException; {:try_start_2 .. :try_end_2} :catch_0

    .line 459
    :catch_0
    move-exception v1

    .line 460
    .local v1, ex:Lcom/motorola/Camera/ImageManager$CanceledException;
    const-string v6, "ImageManager"

    const-string v7, "AddImageCancelable:get:caught CanceledException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v6, p0, Lcom/motorola/Camera/ImageManager$1AddImageCancelable;->val$uri:Landroid/net/Uri;

    if-eqz v6, :cond_2

    .line 463
    sget-boolean v6, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_1

    .line 464
    const-string v6, "ImageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AddImageCancelable:get:canceled... cleaning up this uri: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/motorola/Camera/ImageManager$1AddImageCancelable;->val$uri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_1
    iget-object v6, p0, Lcom/motorola/Camera/ImageManager$1AddImageCancelable;->val$cr:Landroid/content/ContentResolver;

    iget-object v7, p0, Lcom/motorola/Camera/ImageManager$1AddImageCancelable;->val$uri:Landroid/net/Uri;

    invoke-virtual {v6, v7, v10, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 468
    :cond_2
    invoke-virtual {p0}, Lcom/motorola/Camera/ImageManager$1AddImageCancelable;->acknowledgeCancel()V

    .line 470
    .end local v1           #ex:Lcom/motorola/Camera/ImageManager$CanceledException;
    :cond_3
    :goto_0
    return-void

    .line 434
    :cond_4
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 435
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 436
    .local v2, t1:J
    monitor-enter p0
    :try_end_4
    .catch Lcom/motorola/Camera/ImageManager$CanceledException; {:try_start_4 .. :try_end_4} :catch_0

    .line 437
    :try_start_5
    invoke-virtual {p0}, Lcom/motorola/Camera/ImageManager$1AddImageCancelable;->checkCanceled()V

    .line 438
    iget-object v6, p0, Lcom/motorola/Camera/ImageManager$1AddImageCancelable;->this$0:Lcom/motorola/Camera/ImageManager;

    iget-object v7, p0, Lcom/motorola/Camera/ImageManager$1AddImageCancelable;->val$jpegData:[B

    iget-object v8, p0, Lcom/motorola/Camera/ImageManager$1AddImageCancelable;->val$uri:Landroid/net/Uri;

    iget-object v9, p0, Lcom/motorola/Camera/ImageManager$1AddImageCancelable;->val$cr:Landroid/content/ContentResolver;

    invoke-virtual {v6, v7, v8, v9}, Lcom/motorola/Camera/ImageManager;->saveImageToFile([BLandroid/net/Uri;Landroid/content/ContentResolver;)Lcom/motorola/Camera/ImageManager$IGetBoolean_cancelable;

    move-result-object v6

    iput-object v6, p0, Lcom/motorola/Camera/ImageManager$1AddImageCancelable;->mSaveImageCancelable:Lcom/motorola/Camera/ImageManager$IGetBoolean_cancelable;

    .line 439
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 441
    :try_start_6
    iget-object v6, p0, Lcom/motorola/Camera/ImageManager$1AddImageCancelable;->mSaveImageCancelable:Lcom/motorola/Camera/ImageManager$IGetBoolean_cancelable;

    invoke-interface {v6}, Lcom/motorola/Camera/ImageManager$IGetBoolean_cancelable;->get()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 442
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 443
    .local v4, t2:J
    sget-boolean v6, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_5

    .line 444
    const-string v6, "ImageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AddImageCancelable:get:saveImageContents took "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v4, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_5
    iget-object v6, p0, Lcom/motorola/Camera/ImageManager$1AddImageCancelable;->val$thumbnail:Landroid/graphics/Bitmap;
    :try_end_6
    .catch Lcom/motorola/Camera/ImageManager$CanceledException; {:try_start_6 .. :try_end_6} :catch_0

    if-eqz v6, :cond_3

    .line 453
    :try_start_7
    iget-object v6, p0, Lcom/motorola/Camera/ImageManager$1AddImageCancelable;->this$0:Lcom/motorola/Camera/ImageManager;

    iget-object v7, p0, Lcom/motorola/Camera/ImageManager$1AddImageCancelable;->val$cr:Landroid/content/ContentResolver;

    iget-object v8, p0, Lcom/motorola/Camera/ImageManager$1AddImageCancelable;->val$uri:Landroid/net/Uri;

    iget-object v9, p0, Lcom/motorola/Camera/ImageManager$1AddImageCancelable;->val$thumbnail:Landroid/graphics/Bitmap;

    #calls: Lcom/motorola/Camera/ImageManager;->saveThumbnail(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    invoke-static {v6, v7, v8, v9}, Lcom/motorola/Camera/ImageManager;->access$000(Lcom/motorola/Camera/ImageManager;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 454
    invoke-virtual {p0}, Lcom/motorola/Camera/ImageManager$1AddImageCancelable;->checkCanceled()V
    :try_end_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lcom/motorola/Camera/ImageManager$CanceledException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0

    .line 455
    :catch_1
    move-exception v0

    .line 456
    .local v0, e:Ljava/lang/OutOfMemoryError;
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_8
    .catch Lcom/motorola/Camera/ImageManager$CanceledException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_0

    .line 439
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    .end local v4           #t2:J
    :catchall_1
    move-exception v6

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v6

    .line 448
    :cond_6
    new-instance v6, Lcom/motorola/Camera/ImageManager$CanceledException;

    invoke-direct {v6}, Lcom/motorola/Camera/ImageManager$CanceledException;-><init>()V

    throw v6
    :try_end_a
    .catch Lcom/motorola/Camera/ImageManager$CanceledException; {:try_start_a .. :try_end_a} :catch_0
.end method
