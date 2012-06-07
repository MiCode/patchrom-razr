.class final Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/motorola/android/camera/Panorama$PostviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PanoramaPostviewCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/Camera/Camera;


# direct methods
.method private constructor <init>(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 5035
    iput-object p1, p0, Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/Camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/Camera/Camera;Lcom/motorola/Camera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5035
    invoke-direct {p0, p1}, Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;-><init>(Lcom/motorola/Camera/Camera;)V

    return-void
.end method


# virtual methods
.method public onPostviewTaken([BIILcom/motorola/android/camera/Panorama;)V
    .locals 11
    .parameter "data"
    .parameter "resolution"
    .parameter "format"
    .parameter "pan"

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 5040
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_0

    const-string v4, "MotoCamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clear JPEG_PICTURE_CALLBACK_TIMEOUT in PanoramaPostviewCallback...mPanoramaShotTaken:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPanoramaShotTaken:I
    invoke-static {v6}, Lcom/motorola/Camera/Camera;->access$2400(Lcom/motorola/Camera/Camera;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5042
    :cond_0
    if-nez p1, :cond_2

    .line 5137
    :cond_1
    :goto_0
    return-void

    .line 5043
    :cond_2
    iget-object v4, p0, Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/Camera/Camera;

    iget-boolean v4, v4, Lcom/motorola/Camera/Camera;->mPausing:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mIsStitching:Z
    invoke-static {v4}, Lcom/motorola/Camera/Camera;->access$2300(Lcom/motorola/Camera/Camera;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 5044
    iget-object v4, p0, Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPanoramaShotTaken:I
    invoke-static {v4}, Lcom/motorola/Camera/Camera;->access$2400(Lcom/motorola/Camera/Camera;)I

    move-result v4

    iget-object v5, p0, Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPanoramaMaxShot:I
    invoke-static {v5}, Lcom/motorola/Camera/Camera;->access$4300(Lcom/motorola/Camera/Camera;)I

    move-result v5

    if-ge v4, v5, :cond_9

    .line 5045
    iget-object v4, p0, Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/Camera/Camera;

    invoke-static {v4}, Lcom/motorola/Camera/Camera;->access$2408(Lcom/motorola/Camera/Camera;)I

    .line 5046
    iget-object v4, p0, Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPanoramaShotTaken:I
    invoke-static {v4}, Lcom/motorola/Camera/Camera;->access$2400(Lcom/motorola/Camera/Camera;)I

    move-result v4

    if-ne v4, v9, :cond_3

    .line 5048
    iget-object v4, p0, Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v4, v4, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    iget-object v5, p0, Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPanoramaShotTaken:I
    invoke-static {v5}, Lcom/motorola/Camera/Camera;->access$2400(Lcom/motorola/Camera/Camera;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/motorola/Camera/View/Control/OnScreenController;->changeCaptureResource(I)V

    .line 5051
    :cond_3
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_4

    const-string v4, "MotoCamera"

    const-string v5, "PanoramaPostviewCallback: start viewfinder match timeout timer for PANORAMA_PICTURE_CALLBACK_TIMEOUT_THRESHOLD"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5052
    :cond_4
    iget-object v4, p0, Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x2c

    const-wide/32 v6, 0x493e0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5089
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 5090
    .local v2, option:Landroid/graphics/BitmapFactory$Options;
    const/16 v4, 0x8

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 5091
    iput-boolean v9, v2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 5092
    iget-object v4, p0, Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/Camera/Camera;

    array-length v5, p1

    invoke-static {p1, v8, v5, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    #setter for: Lcom/motorola/Camera/Camera;->mPanoramaPostView:Landroid/graphics/Bitmap;
    invoke-static {v4, v5}, Lcom/motorola/Camera/Camera;->access$10602(Lcom/motorola/Camera/Camera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 5097
    iget-object v4, p0, Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPanoramaPostView:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/motorola/Camera/Camera;->access$10600(Lcom/motorola/Camera/Camera;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 5098
    const/4 v0, -0x1

    .line 5099
    .local v0, direction:I
    iget-object v4, p0, Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPanoramaIndicator:Lcom/motorola/Camera/View/PanoramaIndicatorView;
    invoke-static {v4}, Lcom/motorola/Camera/Camera;->access$3700(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/View/PanoramaIndicatorView;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->setVisibility(I)V

    .line 5100
    iget-object v4, p0, Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPanoramaShotTaken:I
    invoke-static {v4}, Lcom/motorola/Camera/Camera;->access$2400(Lcom/motorola/Camera/Camera;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6

    .line 5101
    iget-object v4, p0, Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v5, p0, Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;
    invoke-static {v5}, Lcom/motorola/Camera/Camera;->access$9900(Lcom/motorola/Camera/Camera;)Lcom/motorola/android/camera/Panorama;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/android/camera/Panorama;->getParameters()Lcom/motorola/android/camera/Panorama$Parameters;

    move-result-object v5

    #setter for: Lcom/motorola/Camera/Camera;->mParameters_pan:Lcom/motorola/android/camera/Panorama$Parameters;
    invoke-static {v4, v5}, Lcom/motorola/Camera/Camera;->access$10702(Lcom/motorola/Camera/Camera;Lcom/motorola/android/camera/Panorama$Parameters;)Lcom/motorola/android/camera/Panorama$Parameters;

    .line 5102
    iget-object v4, p0, Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mParameters_pan:Lcom/motorola/android/camera/Panorama$Parameters;
    invoke-static {v4}, Lcom/motorola/Camera/Camera;->access$10700(Lcom/motorola/Camera/Camera;)Lcom/motorola/android/camera/Panorama$Parameters;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/android/camera/Panorama$Parameters;->getPanoramaMode()Ljava/lang/String;

    move-result-object v3

    .line 5103
    .local v3, stitchMode:Ljava/lang/String;
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_5

    const-string v4, "MotoCamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPostviewTaken current stitch mode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5104
    :cond_5
    if-eqz v3, :cond_6

    .line 5106
    const-string v4, "left-right"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v0, 0x0

    .line 5114
    .end local v3           #stitchMode:Ljava/lang/String;
    :cond_6
    :goto_1
    iget-object v4, p0, Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPanoramaShotTaken:I
    invoke-static {v4}, Lcom/motorola/Camera/Camera;->access$2400(Lcom/motorola/Camera/Camera;)I

    move-result v4

    iget-object v5, p0, Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPanoramaMaxShot:I
    invoke-static {v5}, Lcom/motorola/Camera/Camera;->access$4300(Lcom/motorola/Camera/Camera;)I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 5115
    iget-object v4, p0, Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPanoramaIndicator:Lcom/motorola/Camera/View/PanoramaIndicatorView;
    invoke-static {v4}, Lcom/motorola/Camera/Camera;->access$3700(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/View/PanoramaIndicatorView;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPanoramaShotTaken:I
    invoke-static {v5}, Lcom/motorola/Camera/Camera;->access$2400(Lcom/motorola/Camera/Camera;)I

    move-result v5

    iget-object v6, p0, Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPanoramaPostView:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/motorola/Camera/Camera;->access$10600(Lcom/motorola/Camera/Camera;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v4, v0, v5, v6}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->onNewPictureTaken(IILandroid/graphics/Bitmap;)V

    .line 5122
    .end local v0           #direction:I
    :cond_7
    :goto_2
    iget-object v4, p0, Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mBlackout:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/motorola/Camera/Camera;->access$2200(Lcom/motorola/Camera/Camera;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5125
    iget-object v4, p0, Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPanoramaShotTaken:I
    invoke-static {v4}, Lcom/motorola/Camera/Camera;->access$2400(Lcom/motorola/Camera/Camera;)I

    move-result v4

    iget-object v5, p0, Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPanoramaMaxShot:I
    invoke-static {v5}, Lcom/motorola/Camera/Camera;->access$4300(Lcom/motorola/Camera/Camera;)I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 5126
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_8

    const-string v4, "MotoCamera"

    const-string v5, "In PanoramaPostviewCallback, all shots done, start stitch"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5127
    :cond_8
    iget-object v4, p0, Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPanoramaIndicator:Lcom/motorola/Camera/View/PanoramaIndicatorView;
    invoke-static {v4}, Lcom/motorola/Camera/Camera;->access$3700(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/View/PanoramaIndicatorView;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/Camera/Camera;

    const v6, 0x7f0b0028

    invoke-virtual {v5, v6}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->setText(Ljava/lang/String;)V

    .line 5128
    iget-object v4, p0, Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/Camera/Camera;

    #setter for: Lcom/motorola/Camera/Camera;->mIsStitching:Z
    invoke-static {v4, v9}, Lcom/motorola/Camera/Camera;->access$2302(Lcom/motorola/Camera/Camera;Z)Z

    .line 5129
    iget-object v4, p0, Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->stopPreview()V
    invoke-static {v4}, Lcom/motorola/Camera/Camera;->access$10800(Lcom/motorola/Camera/Camera;)V

    .line 5130
    iget-object v4, p0, Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->disableUIAfterStopPreview()V
    invoke-static {v4}, Lcom/motorola/Camera/Camera;->access$10900(Lcom/motorola/Camera/Camera;)V

    .line 5131
    iget-object v4, p0, Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x14

    const-wide/32 v6, 0xea60

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5133
    iget-object v4, p0, Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v4, v4, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v4, v8}, Lcom/motorola/Camera/View/Control/OnScreenController;->setCaptureClusterCameraMode(I)V

    goto/16 :goto_0

    .line 5055
    .end local v2           #option:Landroid/graphics/BitmapFactory$Options;
    :cond_9
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 5056
    .restart local v2       #option:Landroid/graphics/BitmapFactory$Options;
    iput v9, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 5057
    iput-boolean v9, v2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 5058
    iget-object v4, p0, Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mBmpPostView:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/motorola/Camera/Camera;->access$8500(Lcom/motorola/Camera/Camera;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 5061
    iget-object v4, p0, Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mBlackout:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/motorola/Camera/Camera;->access$2200(Lcom/motorola/Camera/Camera;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 5062
    iget-object v4, p0, Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mBmpPostView:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/motorola/Camera/Camera;->access$8500(Lcom/motorola/Camera/Camera;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 5063
    iget-object v4, p0, Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/Camera/Camera;

    #setter for: Lcom/motorola/Camera/Camera;->mBmpPostView:Landroid/graphics/Bitmap;
    invoke-static {v4, v7}, Lcom/motorola/Camera/Camera;->access$8502(Lcom/motorola/Camera/Camera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 5064
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_a

    const-string v4, "MotoCamera"

    const-string v5, "PanoramaPostviewCallback, Recycling mBmpPostView"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5069
    :cond_a
    :try_start_0
    iget-object v4, p0, Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v5, 0x0

    array-length v6, p1

    invoke-static {p1, v5, v6, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    #setter for: Lcom/motorola/Camera/Camera;->mBmpPostView:Landroid/graphics/Bitmap;
    invoke-static {v4, v5}, Lcom/motorola/Camera/Camera;->access$8502(Lcom/motorola/Camera/Camera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 5076
    :goto_3
    iget-object v4, p0, Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mBmpPostView:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/motorola/Camera/Camera;->access$8500(Lcom/motorola/Camera/Camera;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 5078
    iget-object v4, p0, Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStitchingProgress:Landroid/widget/ProgressBar;
    invoke-static {v4}, Lcom/motorola/Camera/Camera;->access$2000(Lcom/motorola/Camera/Camera;)Landroid/widget/ProgressBar;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 5079
    iget-object v4, p0, Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStitchingMsgText:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/motorola/Camera/Camera;->access$2100(Lcom/motorola/Camera/Camera;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5081
    iget-object v4, p0, Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mBlackout:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/motorola/Camera/Camera;->access$2200(Lcom/motorola/Camera/Camera;)Landroid/widget/ImageView;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mBmpPostView:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/motorola/Camera/Camera;->access$8500(Lcom/motorola/Camera/Camera;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 5082
    iget-object v4, p0, Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mBlackout:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/motorola/Camera/Camera;->access$2200(Lcom/motorola/Camera/Camera;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 5072
    :catch_0
    move-exception v1

    .line 5074
    .local v1, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_3

    .line 5107
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    .restart local v0       #direction:I
    .restart local v3       #stitchMode:Ljava/lang/String;
    :cond_b
    const-string v4, "right-left"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v0, 0x1

    goto/16 :goto_1

    .line 5108
    :cond_c
    const-string v4, "up-down"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const/4 v0, 0x2

    goto/16 :goto_1

    .line 5109
    :cond_d
    const-string v4, "down-up"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const/4 v0, 0x3

    goto/16 :goto_1

    .line 5110
    :cond_e
    const/4 v0, 0x5

    goto/16 :goto_1

    .line 5119
    .end local v0           #direction:I
    .end local v3           #stitchMode:Ljava/lang/String;
    :cond_f
    iget-object v4, p0, Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2
.end method
