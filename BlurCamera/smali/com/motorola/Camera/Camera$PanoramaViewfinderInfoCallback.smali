.class final Lcom/motorola/Camera/Camera$PanoramaViewfinderInfoCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/motorola/android/camera/Panorama$ViewfinderInfoWithDirCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PanoramaViewfinderInfoCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/Camera/Camera;


# direct methods
.method private constructor <init>(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 5141
    iput-object p1, p0, Lcom/motorola/Camera/Camera$PanoramaViewfinderInfoCallback;->this$0:Lcom/motorola/Camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/Camera/Camera;Lcom/motorola/Camera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5141
    invoke-direct {p0, p1}, Lcom/motorola/Camera/Camera$PanoramaViewfinderInfoCallback;-><init>(Lcom/motorola/Camera/Camera;)V

    return-void
.end method


# virtual methods
.method public onViewfinderInfo(IZLjava/lang/String;Lcom/motorola/android/camera/Panorama;)V
    .locals 5
    .parameter "overlapPercent"
    .parameter "matched"
    .parameter "vfdir"
    .parameter "pan"

    .prologue
    const/4 v4, 0x1

    .line 5146
    iget-object v1, p0, Lcom/motorola/Camera/Camera$PanoramaViewfinderInfoCallback;->this$0:Lcom/motorola/Camera/Camera;

    iget-boolean v1, v1, Lcom/motorola/Camera/Camera;->mPausing:Z

    if-eqz v1, :cond_1

    .line 5181
    :cond_0
    :goto_0
    return-void

    .line 5148
    :cond_1
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    const-string v1, "MotoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PanoramaViewfinderInfoCallback overlapPercent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "matched = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5149
    :cond_2
    if-nez p2, :cond_3

    if-nez p2, :cond_8

    if-nez p1, :cond_8

    iget-object v1, p0, Lcom/motorola/Camera/Camera$PanoramaViewfinderInfoCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPanoramaShotTaken:I
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2400(Lcom/motorola/Camera/Camera;)I

    move-result v1

    if-ge v1, v4, :cond_8

    .line 5150
    :cond_3
    iget-object v1, p0, Lcom/motorola/Camera/Camera$PanoramaViewfinderInfoCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getShutterToneOn()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5151
    iget-object v1, p0, Lcom/motorola/Camera/Camera$PanoramaViewfinderInfoCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1100(Lcom/motorola/Camera/Camera;)Landroid/media/AudioManager;

    move-result-object v1

    if-nez v1, :cond_4

    .line 5152
    iget-object v2, p0, Lcom/motorola/Camera/Camera$PanoramaViewfinderInfoCallback;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, p0, Lcom/motorola/Camera/Camera$PanoramaViewfinderInfoCallback;->this$0:Lcom/motorola/Camera/Camera;

    const-string v3, "audio"

    invoke-virtual {v1, v3}, Lcom/motorola/Camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    #setter for: Lcom/motorola/Camera/Camera;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v2, v1}, Lcom/motorola/Camera/Camera;->access$1102(Lcom/motorola/Camera/Camera;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    .line 5153
    iget-object v1, p0, Lcom/motorola/Camera/Camera$PanoramaViewfinderInfoCallback;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v2, p0, Lcom/motorola/Camera/Camera$PanoramaViewfinderInfoCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$1100(Lcom/motorola/Camera/Camera;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v2

    #setter for: Lcom/motorola/Camera/Camera;->mIsSpeakerOn:Z
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1202(Lcom/motorola/Camera/Camera;Z)Z

    .line 5154
    iget-object v1, p0, Lcom/motorola/Camera/Camera$PanoramaViewfinderInfoCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1100(Lcom/motorola/Camera/Camera;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 5155
    iget-object v1, p0, Lcom/motorola/Camera/Camera$PanoramaViewfinderInfoCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1100(Lcom/motorola/Camera/Camera;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v4}, Landroid/media/AudioManager;->setStreamSolo(IZ)V

    .line 5158
    :cond_4
    iget-object v1, p0, Lcom/motorola/Camera/Camera$PanoramaViewfinderInfoCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPanBeepSound:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$11000(Lcom/motorola/Camera/Camera;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 5160
    :try_start_0
    iget-object v1, p0, Lcom/motorola/Camera/Camera$PanoramaViewfinderInfoCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPanBeepSound:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$11000(Lcom/motorola/Camera/Camera;)Landroid/media/MediaPlayer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 5161
    iget-object v1, p0, Lcom/motorola/Camera/Camera$PanoramaViewfinderInfoCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPanBeepSound:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$11000(Lcom/motorola/Camera/Camera;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5170
    :cond_5
    :goto_1
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_6

    const-string v1, "MotoCamera"

    const-string v2, "clear vf PANORAMA_VF_MATCH_TIMEOUT in PanoramaPostviewCallback"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5171
    :cond_6
    iget-object v1, p0, Lcom/motorola/Camera/Camera$PanoramaViewfinderInfoCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 5172
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_7

    const-string v1, "MotoCamera"

    const-string v2, "PanoramaViewfinderInfoCallback matched start timeout timer for JPEG_PICTURE_CALLBACK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5174
    :cond_7
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->PANORAMA_TYPE_SWEEP:Z

    if-nez v1, :cond_8

    .line 5175
    iget-object v1, p0, Lcom/motorola/Camera/Camera$PanoramaViewfinderInfoCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x14

    const-wide/16 v3, 0x4e20

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5179
    :cond_8
    if-nez p2, :cond_9

    if-lez p1, :cond_0

    .line 5180
    :cond_9
    iget-object v1, p0, Lcom/motorola/Camera/Camera$PanoramaViewfinderInfoCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPanoramaIndicator:Lcom/motorola/Camera/View/PanoramaIndicatorView;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$3700(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/View/PanoramaIndicatorView;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, p1, p2, v2}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->onViewfinderInfo(IZI)V

    goto/16 :goto_0

    .line 5162
    :catch_0
    move-exception v0

    .line 5163
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "MotoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PanoramaViewfinderInfoCallback : Failed to play the sound!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
