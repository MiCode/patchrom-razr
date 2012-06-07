.class Lcom/motorola/Camera/Camera$PanoramaPictureCallback$1;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/Camera/Camera$PanoramaPictureCallback;->onPictureTaken([BLcom/motorola/android/camera/Panorama;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/Camera/Camera$PanoramaPictureCallback;


# direct methods
.method constructor <init>(Lcom/motorola/Camera/Camera$PanoramaPictureCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 5259
    iput-object p1, p0, Lcom/motorola/Camera/Camera$PanoramaPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PanoramaPictureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 5261
    iget-object v3, p0, Lcom/motorola/Camera/Camera$PanoramaPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PanoramaPictureCallback;

    iget-object v3, v3, Lcom/motorola/Camera/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v4, 0x3

    #setter for: Lcom/motorola/Camera/Camera;->mStatus:I
    invoke-static {v3, v4}, Lcom/motorola/Camera/Camera;->access$1402(Lcom/motorola/Camera/Camera;I)I

    .line 5262
    iget-object v3, p0, Lcom/motorola/Camera/Camera$PanoramaPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PanoramaPictureCallback;

    iget-object v3, v3, Lcom/motorola/Camera/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStitchingProgress:Landroid/widget/ProgressBar;
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$2000(Lcom/motorola/Camera/Camera;)Landroid/widget/ProgressBar;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 5263
    iget-object v3, p0, Lcom/motorola/Camera/Camera$PanoramaPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PanoramaPictureCallback;

    iget-object v3, v3, Lcom/motorola/Camera/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStitchingMsgText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$2100(Lcom/motorola/Camera/Camera;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5264
    iget-object v3, p0, Lcom/motorola/Camera/Camera$PanoramaPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PanoramaPictureCallback;

    iget-object v3, v3, Lcom/motorola/Camera/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPostText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$11200(Lcom/motorola/Camera/Camera;)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f0b0046

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 5265
    iget-object v3, p0, Lcom/motorola/Camera/Camera$PanoramaPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PanoramaPictureCallback;

    iget-object v3, v3, Lcom/motorola/Camera/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #setter for: Lcom/motorola/Camera/Camera;->mPanoramaShotTaken:I
    invoke-static {v3, v6}, Lcom/motorola/Camera/Camera;->access$2402(Lcom/motorola/Camera/Camera;I)I

    .line 5266
    iget-object v3, p0, Lcom/motorola/Camera/Camera$PanoramaPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PanoramaPictureCallback;

    iget-object v3, v3, Lcom/motorola/Camera/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v3, v3, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v3, v6}, Lcom/motorola/Camera/View/Control/OnScreenController;->updatePanoramaCaptureStatus(Z)V

    .line 5268
    iget-object v3, p0, Lcom/motorola/Camera/Camera$PanoramaPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PanoramaPictureCallback;

    iget-object v3, v3, Lcom/motorola/Camera/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getReviewTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v1, v3

    .line 5270
    .local v1, reviewtime:J
    iget-object v3, p0, Lcom/motorola/Camera/Camera$PanoramaPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PanoramaPictureCallback;

    iget-object v3, v3, Lcom/motorola/Camera/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v3

    if-nez v3, :cond_1

    cmp-long v3, v1, v8

    if-eqz v3, :cond_1

    .line 5272
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_0

    const-string v3, "MotoCamera"

    const-string v4, "PanoramaPictureCallback:onPictureTaken:Toast shown"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5273
    :cond_0
    iget-object v3, p0, Lcom/motorola/Camera/Camera$PanoramaPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PanoramaPictureCallback;

    iget-object v3, v3, Lcom/motorola/Camera/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPostText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$11200(Lcom/motorola/Camera/Camera;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5274
    iget-object v3, p0, Lcom/motorola/Camera/Camera$PanoramaPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PanoramaPictureCallback;

    iget-object v3, v3, Lcom/motorola/Camera/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v3, v3, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v3, v6}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 5276
    iget-object v3, p0, Lcom/motorola/Camera/Camera$PanoramaPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PanoramaPictureCallback;

    iget-object v3, v3, Lcom/motorola/Camera/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v3, v3, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v3, v6, v5}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideLocationTags(ZZ)V

    .line 5278
    iget-object v3, p0, Lcom/motorola/Camera/Camera$PanoramaPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PanoramaPictureCallback;

    iget-object v3, v3, Lcom/motorola/Camera/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v3, v3, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v3, v6, v5}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideResolutionTextIcon(ZZ)V

    .line 5281
    :cond_1
    iget-object v3, p0, Lcom/motorola/Camera/Camera$PanoramaPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PanoramaPictureCallback;

    iget-object v3, v3, Lcom/motorola/Camera/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mBlackout:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$2200(Lcom/motorola/Camera/Camera;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    .line 5282
    iget-object v3, p0, Lcom/motorola/Camera/Camera$PanoramaPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PanoramaPictureCallback;

    iget-object v3, v3, Lcom/motorola/Camera/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mBlackout:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$2200(Lcom/motorola/Camera/Camera;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5284
    :try_start_0
    iget-object v3, p0, Lcom/motorola/Camera/Camera$PanoramaPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PanoramaPictureCallback;

    iget-object v3, v3, Lcom/motorola/Camera/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mBlackoutBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$5700(Lcom/motorola/Camera/Camera;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_2

    .line 5285
    iget-object v3, p0, Lcom/motorola/Camera/Camera$PanoramaPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PanoramaPictureCallback;

    iget-object v3, v3, Lcom/motorola/Camera/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v4, p0, Lcom/motorola/Camera/Camera$PanoramaPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PanoramaPictureCallback;

    iget-object v4, v4, Lcom/motorola/Camera/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    invoke-virtual {v4}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200f8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    #setter for: Lcom/motorola/Camera/Camera;->mBlackoutBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v3, v4}, Lcom/motorola/Camera/Camera;->access$5702(Lcom/motorola/Camera/Camera;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 5290
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/motorola/Camera/Camera$PanoramaPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PanoramaPictureCallback;

    iget-object v3, v3, Lcom/motorola/Camera/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mBlackout:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$2200(Lcom/motorola/Camera/Camera;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/Camera/Camera$PanoramaPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PanoramaPictureCallback;

    iget-object v4, v4, Lcom/motorola/Camera/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mBlackoutBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lcom/motorola/Camera/Camera;->access$5700(Lcom/motorola/Camera/Camera;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5292
    :cond_3
    iget-object v3, p0, Lcom/motorola/Camera/Camera$PanoramaPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PanoramaPictureCallback;

    iget-object v3, v3, Lcom/motorola/Camera/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mBmpPostView:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$8500(Lcom/motorola/Camera/Camera;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_4

    cmp-long v3, v1, v8

    if-eqz v3, :cond_4

    .line 5293
    iget-object v3, p0, Lcom/motorola/Camera/Camera$PanoramaPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PanoramaPictureCallback;

    iget-object v3, v3, Lcom/motorola/Camera/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mBlackout:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$2200(Lcom/motorola/Camera/Camera;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/Camera/Camera$PanoramaPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PanoramaPictureCallback;

    iget-object v4, v4, Lcom/motorola/Camera/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mBmpPostView:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/motorola/Camera/Camera;->access$8500(Lcom/motorola/Camera/Camera;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 5294
    iget-object v3, p0, Lcom/motorola/Camera/Camera$PanoramaPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PanoramaPictureCallback;

    iget-object v3, v3, Lcom/motorola/Camera/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mBlackout:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$2200(Lcom/motorola/Camera/Camera;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5297
    :cond_4
    iget-object v3, p0, Lcom/motorola/Camera/Camera$PanoramaPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PanoramaPictureCallback;

    iget-object v3, v3, Lcom/motorola/Camera/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mKeepAndRestartPreview:Z
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$11300(Lcom/motorola/Camera/Camera;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 5298
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_5

    const-string v3, "MotoCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PanoramaPictureCallback:onPictureTaken:ReviewTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5302
    :cond_5
    iget-object v3, p0, Lcom/motorola/Camera/Camera$PanoramaPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PanoramaPictureCallback;

    iget-object v3, v3, Lcom/motorola/Camera/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5304
    :cond_6
    iget-object v3, p0, Lcom/motorola/Camera/Camera$PanoramaPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PanoramaPictureCallback;

    iget-object v3, v3, Lcom/motorola/Camera/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPanoramaIndicator:Lcom/motorola/Camera/View/PanoramaIndicatorView;
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$3700(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/View/PanoramaIndicatorView;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->setVisibility(I)V

    .line 5305
    return-void

    .line 5286
    :catch_0
    move-exception v0

    .line 5287
    .local v0, e:Ljava/lang/OutOfMemoryError;
    iget-object v3, p0, Lcom/motorola/Camera/Camera$PanoramaPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PanoramaPictureCallback;

    iget-object v3, v3, Lcom/motorola/Camera/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v4, 0x0

    #setter for: Lcom/motorola/Camera/Camera;->mBlackoutBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v3, v4}, Lcom/motorola/Camera/Camera;->access$5702(Lcom/motorola/Camera/Camera;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 5288
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto/16 :goto_0
.end method
