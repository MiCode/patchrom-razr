.class final Lcom/motorola/Camera/Camera$PanoramaPictureCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/motorola/android/camera/Panorama$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PanoramaPictureCallback"
.end annotation


# instance fields
.field mLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/motorola/Camera/Camera;


# direct methods
.method public constructor <init>(Lcom/motorola/Camera/Camera;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter "loc"

    .prologue
    .line 5202
    iput-object p1, p0, Lcom/motorola/Camera/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5203
    iput-object p2, p0, Lcom/motorola/Camera/Camera$PanoramaPictureCallback;->mLocation:Landroid/location/Location;

    .line 5204
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/motorola/android/camera/Panorama;)V
    .locals 7
    .parameter "jpegData"
    .parameter "panorama"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5208
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    const-string v2, "MotoCamera"

    const-string v3, "PanoramaPictureCallback, Enter"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5210
    :cond_0
    iget-object v2, p0, Lcom/motorola/Camera/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPanoramaIndicator:Lcom/motorola/Camera/View/PanoramaIndicatorView;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$3700(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/View/PanoramaIndicatorView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->finishCurrentSession()V

    .line 5212
    iget-object v2, p0, Lcom/motorola/Camera/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 5214
    iget-object v2, p0, Lcom/motorola/Camera/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #setter for: Lcom/motorola/Camera/Camera;->mPanoramaShotTaken:I
    invoke-static {v2, v4}, Lcom/motorola/Camera/Camera;->access$2402(Lcom/motorola/Camera/Camera;I)I

    .line 5215
    iget-object v2, p0, Lcom/motorola/Camera/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v2, v2, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v2, v4}, Lcom/motorola/Camera/View/Control/OnScreenController;->changeCaptureResource(I)V

    .line 5216
    iget-object v2, p0, Lcom/motorola/Camera/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #setter for: Lcom/motorola/Camera/Camera;->mIsStitching:Z
    invoke-static {v2, v4}, Lcom/motorola/Camera/Camera;->access$2302(Lcom/motorola/Camera/Camera;Z)Z

    .line 5217
    iget-object v2, p0, Lcom/motorola/Camera/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v2, v2, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v2, v4}, Lcom/motorola/Camera/View/Control/OnScreenController;->setRecordButton(Z)V

    .line 5219
    iget-object v2, p0, Lcom/motorola/Camera/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    iget-boolean v2, v2, Lcom/motorola/Camera/Camera;->mPausing:Z

    if-eqz v2, :cond_3

    .line 5221
    if-eqz p1, :cond_1

    .line 5222
    iget-object v2, p0, Lcom/motorola/Camera/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v2, v2, Lcom/motorola/Camera/Camera;->mImageCapture:Lcom/motorola/Camera/Camera$ImageCapture;

    iget-object v3, p0, Lcom/motorola/Camera/Camera$PanoramaPictureCallback;->mLocation:Landroid/location/Location;

    invoke-virtual {v2, p1, v6, v3}, Lcom/motorola/Camera/Camera$ImageCapture;->storeImage([BLandroid/hardware/Camera;Landroid/location/Location;)V

    .line 5223
    :cond_1
    iget-object v2, p0, Lcom/motorola/Camera/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v3, 0x3

    #setter for: Lcom/motorola/Camera/Camera;->mStatus:I
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camera;->access$1402(Lcom/motorola/Camera/Camera;I)I

    .line 5224
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_2

    const-string v2, "MotoCamera"

    const-string v3, "PanoramaPictureCallback, Paused, release camera"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5225
    :cond_2
    iget-object v2, p0, Lcom/motorola/Camera/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->closeCamera()V
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$2500(Lcom/motorola/Camera/Camera;)V

    .line 5315
    :goto_0
    return-void

    .line 5230
    :cond_3
    if-eqz p1, :cond_6

    .line 5232
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_4

    const-string v2, "MotoCamera"

    const-string v3, "PanoramaPictureCallback, Valid jpegData"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5234
    :cond_4
    iget-object v2, p0, Lcom/motorola/Camera/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mBmpPostView:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$8500(Lcom/motorola/Camera/Camera;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_5

    .line 5237
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 5238
    .local v1, option:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x4

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 5239
    iput-boolean v5, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 5243
    :try_start_0
    iget-object v2, p0, Lcom/motorola/Camera/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v3, 0x0

    array-length v4, p1

    invoke-static {p1, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    #setter for: Lcom/motorola/Camera/Camera;->mBmpPostView:Landroid/graphics/Bitmap;
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camera;->access$8502(Lcom/motorola/Camera/Camera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 5252
    .end local v1           #option:Landroid/graphics/BitmapFactory$Options;
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/motorola/Camera/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v2, v2, Lcom/motorola/Camera/Camera;->mImageCapture:Lcom/motorola/Camera/Camera$ImageCapture;

    iget-object v3, p0, Lcom/motorola/Camera/Camera$PanoramaPictureCallback;->mLocation:Landroid/location/Location;

    invoke-virtual {v2, p1, v6, v3}, Lcom/motorola/Camera/Camera$ImageCapture;->storeImage([BLandroid/hardware/Camera;Landroid/location/Location;)V

    .line 5255
    iget-object v2, p0, Lcom/motorola/Camera/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    invoke-virtual {v2}, Lcom/motorola/Camera/Camera;->interruptThumbnailThread()V

    .line 5256
    iget-object v2, p0, Lcom/motorola/Camera/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    new-instance v3, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;

    iget-object v4, p0, Lcom/motorola/Camera/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    invoke-direct {v3, v4, p1}, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;-><init>(Lcom/motorola/Camera/Camera;[B)V

    #setter for: Lcom/motorola/Camera/Camera;->updateThumbnailThread:Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camera;->access$11102(Lcom/motorola/Camera/Camera;Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;)Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;

    .line 5257
    iget-object v2, p0, Lcom/motorola/Camera/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->updateThumbnailThread:Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$11100(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->start()V

    .line 5259
    iget-object v2, p0, Lcom/motorola/Camera/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/motorola/Camera/Camera$PanoramaPictureCallback$1;

    invoke-direct {v3, p0}, Lcom/motorola/Camera/Camera$PanoramaPictureCallback$1;-><init>(Lcom/motorola/Camera/Camera$PanoramaPictureCallback;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 5246
    .restart local v1       #option:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v0

    .line 5248
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_1

    .line 5310
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    .end local v1           #option:Landroid/graphics/BitmapFactory$Options;
    :cond_6
    iget-object v2, p0, Lcom/motorola/Camera/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #setter for: Lcom/motorola/Camera/Camera;->mStatus:I
    invoke-static {v2, v5}, Lcom/motorola/Camera/Camera;->access$1402(Lcom/motorola/Camera/Camera;I)I

    .line 5312
    iget-object v2, p0, Lcom/motorola/Camera/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v2, v2, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v2, v5}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 5313
    iget-object v2, p0, Lcom/motorola/Camera/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v2, v2, Lcom/motorola/Camera/Camera;->mImageCapture:Lcom/motorola/Camera/Camera$ImageCapture;

    invoke-virtual {v2}, Lcom/motorola/Camera/Camera$ImageCapture;->dismissFreezeFrame()V

    goto :goto_0
.end method
