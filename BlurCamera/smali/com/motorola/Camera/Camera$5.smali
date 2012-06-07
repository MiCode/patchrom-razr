.class Lcom/motorola/Camera/Camera$5;
.super Landroid/content/BroadcastReceiver;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/Camera/Camera;


# direct methods
.method constructor <init>(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 5818
    iput-object p1, p0, Lcom/motorola/Camera/Camera$5;->this$0:Lcom/motorola/Camera/Camera;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 5822
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 5823
    .local v1, action:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 5824
    .local v3, uri:Landroid/net/Uri;
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 5831
    .local v0, MediaErrorEvent:Ljava/lang/Boolean;
    iget-object v6, p0, Lcom/motorola/Camera/Camera$5;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStatus:I
    invoke-static {v6}, Lcom/motorola/Camera/Camera;->access$1400(Lcom/motorola/Camera/Camera;)I

    move-result v6

    if-ne v6, v5, :cond_1

    const-string v6, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 5834
    sget-boolean v6, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_0

    .line 5835
    const-string v6, "MotoCamera"

    const-string v7, "onReceive - Scanner finished running, load thumbnail"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5837
    :cond_0
    iget-object v6, p0, Lcom/motorola/Camera/Camera$5;->this$0:Lcom/motorola/Camera/Camera;

    invoke-virtual {v6}, Lcom/motorola/Camera/Camera;->interruptThumbnailThread()V

    .line 5838
    iget-object v6, p0, Lcom/motorola/Camera/Camera$5;->this$0:Lcom/motorola/Camera/Camera;

    new-instance v7, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;

    iget-object v8, p0, Lcom/motorola/Camera/Camera$5;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;-><init>(Lcom/motorola/Camera/Camera;[B)V

    #setter for: Lcom/motorola/Camera/Camera;->updateThumbnailThread:Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;
    invoke-static {v6, v7}, Lcom/motorola/Camera/Camera;->access$11102(Lcom/motorola/Camera/Camera;Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;)Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;

    .line 5839
    iget-object v6, p0, Lcom/motorola/Camera/Camera$5;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->updateThumbnailThread:Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;
    invoke-static {v6}, Lcom/motorola/Camera/Camera;->access$11100(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;

    move-result-object v6

    invoke-virtual {v6}, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->start()V

    .line 5842
    :cond_1
    if-eqz v3, :cond_5

    const-string v6, "file"

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 5843
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 5844
    .local v2, path:Ljava/lang/String;
    sget-object v6, Lcom/motorola/Camera/CamSetting/CamSetting;->SDCARD_EXT:Ljava/lang/String;

    if-eqz v6, :cond_c

    .line 5846
    iget-object v6, p0, Lcom/motorola/Camera/Camera$5;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mIsInternalSD:Z
    invoke-static {v6}, Lcom/motorola/Camera/Camera;->access$7400(Lcom/motorola/Camera/Camera;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/motorola/Camera/CamSetting/CamSetting;->SDCARD_EXT:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    iget-object v6, p0, Lcom/motorola/Camera/Camera$5;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mIsInternalSD:Z
    invoke-static {v6}, Lcom/motorola/Camera/Camera;->access$7400(Lcom/motorola/Camera/Camera;)Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, Lcom/motorola/Camera/CamSetting/CamSetting;->SDCARD_EXT:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    move v4, v5

    :cond_4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 5854
    :goto_0
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_5

    .line 5855
    const-string v4, "MotoCamera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive - path ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5858
    .end local v2           #path:Ljava/lang/String;
    :cond_5
    sget-boolean v4, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFeatureDualVol:Z

    if-eqz v4, :cond_6

    const-string v4, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/motorola/Camera/Camera$5;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v4}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSDPlug()Z

    move-result v4

    if-nez v4, :cond_6

    .line 5860
    iget-object v4, p0, Lcom/motorola/Camera/Camera$5;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->checkExternalSDCardFirstTime()V
    invoke-static {v4}, Lcom/motorola/Camera/Camera;->access$12600(Lcom/motorola/Camera/Camera;)V

    .line 5864
    :cond_6
    const-string v4, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 5873
    :cond_7
    iget-object v4, p0, Lcom/motorola/Camera/Camera$5;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/motorola/Camera/Camera;->access$8700(Lcom/motorola/Camera/Camera;)Landroid/widget/LinearLayout;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/motorola/Camera/Camera$5;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/motorola/Camera/Camera;->access$8700(Lcom/motorola/Camera/Camera;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_8

    .line 5875
    iget-object v4, p0, Lcom/motorola/Camera/Camera$5;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/motorola/Camera/Camera;->access$8700(Lcom/motorola/Camera/Camera;)Landroid/widget/LinearLayout;

    move-result-object v4

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5876
    iget-object v4, p0, Lcom/motorola/Camera/Camera$5;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5878
    :cond_8
    iget-object v4, p0, Lcom/motorola/Camera/Camera$5;->this$0:Lcom/motorola/Camera/Camera;

    #setter for: Lcom/motorola/Camera/Camera;->mNeedCheckStorage:Z
    invoke-static {v4, v5}, Lcom/motorola/Camera/Camera;->access$12702(Lcom/motorola/Camera/Camera;Z)Z

    .line 5879
    iget-object v4, p0, Lcom/motorola/Camera/Camera$5;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->checkStorage()V
    invoke-static {v4}, Lcom/motorola/Camera/Camera;->access$12800(Lcom/motorola/Camera/Camera;)V

    .line 5882
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_a
    iget-object v4, p0, Lcom/motorola/Camera/Camera$5;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStatus:I
    invoke-static {v4}, Lcom/motorola/Camera/Camera;->access$1400(Lcom/motorola/Camera/Camera;)I

    move-result v4

    if-ne v4, v10, :cond_b

    .line 5887
    iget-object v4, p0, Lcom/motorola/Camera/Camera$5;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->showStorageToast()V
    invoke-static {v4}, Lcom/motorola/Camera/Camera;->access$10400(Lcom/motorola/Camera/Camera;)V

    .line 5888
    iget-object v4, p0, Lcom/motorola/Camera/Camera$5;->this$0:Lcom/motorola/Camera/Camera;

    invoke-virtual {v4}, Lcom/motorola/Camera/Camera;->finish()V

    .line 5890
    :cond_b
    return-void

    .line 5851
    .restart local v2       #path:Ljava/lang/String;
    :cond_c
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    move v4, v5

    :cond_d
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0
.end method
