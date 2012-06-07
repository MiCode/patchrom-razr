.class Lcom/motorola/Camera/Camera$MainHandler;
.super Landroid/os/Handler;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field private mActivityReference:Landroid/app/Activity;

.field final synthetic this$0:Lcom/motorola/Camera/Camera;


# direct methods
.method private constructor <init>(Lcom/motorola/Camera/Camera;)V
    .locals 1
    .parameter

    .prologue
    .line 2958
    iput-object p1, p0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2960
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/Camera/Camera$MainHandler;->mActivityReference:Landroid/app/Activity;

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/Camera/Camera;Lcom/motorola/Camera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2958
    invoke-direct {p0, p1}, Lcom/motorola/Camera/Camera$MainHandler;-><init>(Lcom/motorola/Camera/Camera;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 20
    .parameter "msg"

    .prologue
    .line 2969
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-boolean v1, v1, Lcom/motorola/Camera/Camera;->mPausing:Z

    if-eqz v1, :cond_1

    .line 3641
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2971
    :cond_1
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 3638
    :pswitch_1
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 3639
    const-string v1, "MotoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MainHandler:handleMessage:Receive illegal message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2973
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x1

    #calls: Lcom/motorola/Camera/Camera;->restartPreview(Z)V
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1300(Lcom/motorola/Camera/Camera;Z)V

    goto :goto_0

    .line 2976
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x0

    #calls: Lcom/motorola/Camera/Camera;->restartPreview(Z)V
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1300(Lcom/motorola/Camera/Camera;Z)V

    goto :goto_0

    .line 2980
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStatus:I
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1400(Lcom/motorola/Camera/Camera;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCaptureOnFocus:Z
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1500(Lcom/motorola/Camera/Camera;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2981
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->toggleCamera()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1600(Lcom/motorola/Camera/Camera;)V

    goto :goto_0

    .line 2990
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStatus:I
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1400(Lcom/motorola/Camera/Camera;)I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    .line 2992
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    invoke-virtual {v2}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b002d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1700(Lcom/motorola/Camera/Camera;Ljava/lang/String;)V

    goto :goto_0

    .line 2996
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    invoke-static {v1}, Lcom/motorola/Camera/CameraGlobalTools;->launchGallery(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2997
    const-string v1, "MotoCamera"

    const-string v2, "launchGallery() - couldn\'t launch gallery, activity doesn\'t exist"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2998
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const v3, 0x7f0b006c

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1700(Lcom/motorola/Camera/Camera;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3004
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const v3, 0x7f0b006d

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1700(Lcom/motorola/Camera/Camera;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3009
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    if-eqz v1, :cond_0

    .line 3010
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->rightSetFadeOut()V

    goto/16 :goto_0

    .line 3014
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    if-eqz v1, :cond_0

    .line 3016
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideStatusSet(Z)V

    .line 3018
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->updateFocusIndicator()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1800(Lcom/motorola/Camera/Camera;)V

    goto/16 :goto_0

    .line 3023
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    if-eqz v1, :cond_0

    .line 3025
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->updateFocusIndicator()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1800(Lcom/motorola/Camera/Camera;)V

    goto/16 :goto_0

    .line 3030
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const v3, 0x7f0b0063

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1700(Lcom/motorola/Camera/Camera;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3034
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const v3, 0x7f0b0140

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1700(Lcom/motorola/Camera/Camera;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3038
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const v3, 0x7f0b0064

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1700(Lcom/motorola/Camera/Camera;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3042
    :pswitch_d
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_3

    const-string v1, "MotoCamera"

    const-string v2, "SHOW_TOAST_AND_EXIT_CAMERA occurs!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3043
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const v3, 0x7f0b0095

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1700(Lcom/motorola/Camera/Camera;Ljava/lang/String;)V

    .line 3044
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 3045
    .local v12, broadcastIntent:Landroid/content/Intent;
    const-string v1, "com.motorola.internal.intent.extra.REASON"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const v3, 0x7f0b0095

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3046
    const-string v1, "com.motorola.internal.intent.extra.APP_NAME"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/high16 v3, 0x7f0b

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3047
    const-string v1, "com.motorola.internal.intent.action.QUICK_LAUNCH_APP_FAILED"

    invoke-virtual {v12, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3048
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    invoke-virtual {v1, v12}, Lcom/motorola/Camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 3049
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 3053
    .end local v12           #broadcastIntent:Landroid/content/Intent;
    :pswitch_e
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_4

    const-string v1, "MotoCamera"

    const-string v2, "EXIT_CAMERA occurs!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3055
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    invoke-virtual {v1}, Lcom/motorola/Camera/Camera;->finish()V

    goto/16 :goto_0

    .line 3060
    :pswitch_f
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_5

    const-string v1, "MotoCamera"

    const-string v2, "PANORAMA_ERROR!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3061
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStitchingProgress:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2000(Lcom/motorola/Camera/Camera;)Landroid/widget/ProgressBar;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 3062
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStitchingProgress:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2000(Lcom/motorola/Camera/Camera;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3064
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStitchingMsgText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2100(Lcom/motorola/Camera/Camera;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 3065
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStitchingMsgText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2100(Lcom/motorola/Camera/Camera;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3067
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mBlackout:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2200(Lcom/motorola/Camera/Camera;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 3068
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mBlackout:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2200(Lcom/motorola/Camera/Camera;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3069
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mBlackout:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2200(Lcom/motorola/Camera/Camera;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3071
    :cond_8
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    packed-switch v1, :pswitch_data_1

    .line 3087
    :pswitch_10
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_9

    const-string v1, "MotoCamera"

    const-string v2, "PANORAMA_ERROR_OCCUR occurs!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3088
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const v3, 0x7f0b0069

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1700(Lcom/motorola/Camera/Camera;Ljava/lang/String;)V

    .line 3092
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x1

    #setter for: Lcom/motorola/Camera/Camera;->mStatus:I
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1402(Lcom/motorola/Camera/Camera;I)I

    .line 3093
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x0

    #setter for: Lcom/motorola/Camera/Camera;->mIsStitching:Z
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$2302(Lcom/motorola/Camera/Camera;Z)Z

    .line 3094
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x0

    #setter for: Lcom/motorola/Camera/Camera;->mPanoramaShotTaken:I
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$2402(Lcom/motorola/Camera/Camera;I)I

    .line 3097
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->closeCamera()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2500(Lcom/motorola/Camera/Camera;)V

    .line 3098
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->enableSingleShot()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2600(Lcom/motorola/Camera/Camera;)V

    .line 3099
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 3100
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->showTopStatusSet()V

    .line 3101
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->updateRemainCount()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2700(Lcom/motorola/Camera/Camera;)V

    goto/16 :goto_0

    .line 3074
    :pswitch_11
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_b

    const-string v1, "MotoCamera"

    const-string v2, "PANORAMA_ERROR_OUT_OF_MEMORY occurs!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3075
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const v3, 0x7f0b006a

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1700(Lcom/motorola/Camera/Camera;Ljava/lang/String;)V

    goto :goto_1

    .line 3080
    :pswitch_12
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_c

    const-string v1, "MotoCamera"

    const-string v2, "PANORAMA_ERROR_STITCH_ENGINE_FAIL occurs!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3081
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const v3, 0x7f0b006b

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1700(Lcom/motorola/Camera/Camera;Ljava/lang/String;)V

    .line 3082
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->changeCaptureResource(I)V

    goto/16 :goto_1

    .line 3106
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isLocationOn()Z

    move-result v1

    if-eqz v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mLocUtil:Lcom/motorola/Camera/LocUtility;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2900(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/LocUtility;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 3107
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mLocUtil:Lcom/motorola/Camera/LocUtility;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2900(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/LocUtility;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/LocUtility;->startReceivingLocationUpdates(Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 3108
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isLocationOn()Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mLocUtil:Lcom/motorola/Camera/LocUtility;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2900(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/LocUtility;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3109
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mLocUtil:Lcom/motorola/Camera/LocUtility;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2900(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/LocUtility;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/LocUtility;->stopReceivingLocationUpdates()V

    goto/16 :goto_0

    .line 3112
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    if-eqz v1, :cond_0

    .line 3113
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateLocationText()V

    goto/16 :goto_0

    .line 3117
    :pswitch_15
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mThumbThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$3000(Lcom/motorola/Camera/Camera;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3122
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x0

    #setter for: Lcom/motorola/Camera/Camera;->mThumbThread:Ljava/lang/Thread;
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$3002(Lcom/motorola/Camera/Camera;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 3125
    :goto_2
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_e

    const-string v1, "MotoCamera"

    const-string v2, " POST_VIEW_DECODE: In Message "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3126
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mImageToThumbBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$3100(Lcom/motorola/Camera/Camera;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 3127
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    invoke-virtual {v1}, Lcom/motorola/Camera/Camera;->isPostCaptureAnimationEnabled()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 3128
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mImageToThumbBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$3100(Lcom/motorola/Camera/Camera;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCameraView:Lcom/motorola/Camera/View/CameraView;
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$3200(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/View/CameraView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/Camera/View/CameraView;->getWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCameraView:Lcom/motorola/Camera/View/CameraView;
    invoke-static {v4}, Lcom/motorola/Camera/Camera;->access$3200(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/View/CameraView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/Camera/View/CameraView;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCameraView:Lcom/motorola/Camera/View/CameraView;
    invoke-static {v5}, Lcom/motorola/Camera/Camera;->access$3200(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/View/CameraView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/Camera/View/CameraView;->getLeft()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/motorola/Camera/View/Control/OnScreenController;->thumbAnimation(Landroid/graphics/Bitmap;III)V

    .line 3130
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x1

    #setter for: Lcom/motorola/Camera/Camera;->mAnimationRunning:Z
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$3302(Lcom/motorola/Camera/Camera;Z)Z

    .line 3135
    :cond_f
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x85

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 3118
    :catch_0
    move-exception v15

    .line 3119
    .local v15, e:Ljava/lang/InterruptedException;
    :try_start_1
    invoke-virtual {v15}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3122
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x0

    #setter for: Lcom/motorola/Camera/Camera;->mThumbThread:Ljava/lang/Thread;
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$3002(Lcom/motorola/Camera/Camera;Ljava/lang/Thread;)Ljava/lang/Thread;

    goto :goto_2

    .end local v15           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v3, 0x0

    #setter for: Lcom/motorola/Camera/Camera;->mThumbThread:Ljava/lang/Thread;
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camera;->access$3002(Lcom/motorola/Camera/Camera;Ljava/lang/Thread;)Ljava/lang/Thread;

    throw v1

    .line 3132
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x4b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 3138
    :pswitch_16
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_11

    const-string v1, "MotoCamera"

    const-string v2, "Post View Thumbnail Animation finish"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3139
    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x0

    #setter for: Lcom/motorola/Camera/Camera;->mAnimationRunning:Z
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$3302(Lcom/motorola/Camera/Camera;Z)Z

    .line 3140
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mThumbnailDecoded:Z
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$3400(Lcom/motorola/Camera/Camera;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3142
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x0

    #setter for: Lcom/motorola/Camera/Camera;->mThumbnailDecoded:Z
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$3402(Lcom/motorola/Camera/Camera;Z)Z

    .line 3143
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    invoke-virtual {v1}, Lcom/motorola/Camera/Camera;->rotateCurrentThumbnail()V

    .line 3144
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x48

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3145
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x1

    #setter for: Lcom/motorola/Camera/Camera;->mStatus:I
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1402(Lcom/motorola/Camera/Camera;I)I

    .line 3146
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_12

    .line 3147
    const-string v1, "MotoCamera"

    const-string v2, "KPI capture stop after thumb animation"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3150
    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->updateFocusIndicator()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1800(Lcom/motorola/Camera/Camera;)V

    goto/16 :goto_0

    .line 3156
    :pswitch_17
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStatus:I
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1400(Lcom/motorola/Camera/Camera;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStatus:I
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1400(Lcom/motorola/Camera/Camera;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_15

    .line 3160
    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->mActivityReference:Landroid/app/Activity;

    if-eqz v1, :cond_14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->mActivityReference:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/motorola/Camera/CameraApp;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/motorola/Camera/CameraApp;->getStoreImageUtility(Landroid/content/Context;Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/StoreImageUtility;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 3163
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->mActivityReference:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/motorola/Camera/CameraApp;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/motorola/Camera/CameraApp;->getStoreImageUtility(Landroid/content/Context;Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/StoreImageUtility;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/StoreImageUtility;->clearReferences()V

    .line 3168
    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->mActivityReference:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 3171
    :cond_15
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/Camera/CameraGlobalTools;->resetCameraTimeout(Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 3175
    :pswitch_18
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCaptureProcessingView:Landroid/view/View;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$3500(Lcom/motorola/Camera/Camera;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCaptureProcessingView:Landroid/view/View;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$3500(Lcom/motorola/Camera/Camera;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 3176
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCaptureProcessingView:Landroid/view/View;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$3500(Lcom/motorola/Camera/Camera;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3177
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCaptureProcessingView:Landroid/view/View;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$3500(Lcom/motorola/Camera/Camera;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    goto/16 :goto_0

    .line 3182
    :pswitch_19
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_16

    const-string v1, "MotoCamera"

    const-string v2, "JPEG_PICTURE_CALLBACK_TIMEOUT occurs!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3184
    :cond_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x1

    #setter for: Lcom/motorola/Camera/Camera;->mStatus:I
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1402(Lcom/motorola/Camera/Camera;I)I

    .line 3187
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_18

    .line 3188
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x7c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x7c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3189
    :cond_17
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const v3, 0x7f0b009a

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1700(Lcom/motorola/Camera/Camera;Ljava/lang/String;)V

    .line 3192
    :cond_18
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->isPanoramaMode()Z
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$3600(Lcom/motorola/Camera/Camera;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 3193
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const v3, 0x7f0b0069

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1700(Lcom/motorola/Camera/Camera;Ljava/lang/String;)V

    .line 3194
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->changeCaptureResource(I)V

    .line 3195
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStitchingProgress:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2000(Lcom/motorola/Camera/Camera;)Landroid/widget/ProgressBar;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 3196
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStitchingProgress:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2000(Lcom/motorola/Camera/Camera;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3198
    :cond_19
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStitchingMsgText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2100(Lcom/motorola/Camera/Camera;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 3199
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStitchingMsgText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2100(Lcom/motorola/Camera/Camera;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3201
    :cond_1a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mBlackout:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2200(Lcom/motorola/Camera/Camera;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 3202
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mBlackout:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2200(Lcom/motorola/Camera/Camera;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3203
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mBlackout:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2200(Lcom/motorola/Camera/Camera;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3205
    :cond_1b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPanoramaIndicator:Lcom/motorola/Camera/View/PanoramaIndicatorView;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$3700(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/View/PanoramaIndicatorView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->setVisibility(I)V

    .line 3208
    :cond_1c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->closeCamera()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2500(Lcom/motorola/Camera/Camera;)V

    .line 3210
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->enableSingleShot()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2600(Lcom/motorola/Camera/Camera;)V

    .line 3212
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    if-eqz v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 3214
    :cond_1d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mImageCapture:Lcom/motorola/Camera/Camera$ImageCapture;

    invoke-virtual {v1}, Lcom/motorola/Camera/Camera$ImageCapture;->dismissFreezeFrame()V

    goto/16 :goto_0

    .line 3219
    :pswitch_1a
    const-string v1, "MotoCamera"

    const-string v2, "BURST_JPEG_PICTURE_CALLBACK_TIMEOUT occurs!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3221
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x1

    #setter for: Lcom/motorola/Camera/Camera;->mStatus:I
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1402(Lcom/motorola/Camera/Camera;I)I

    .line 3228
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->isMultishotMode()Z
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$3800(Lcom/motorola/Camera/Camera;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 3233
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->mActivityReference:Landroid/app/Activity;

    if-eqz v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->mActivityReference:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/motorola/Camera/CameraApp;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/motorola/Camera/CameraApp;->getStoreImageUtility(Landroid/content/Context;Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/StoreImageUtility;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 3236
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->mActivityReference:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/motorola/Camera/CameraApp;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/motorola/Camera/CameraApp;->getStoreImageUtility(Landroid/content/Context;Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/StoreImageUtility;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/StoreImageUtility;->clearReferences()V

    .line 3239
    :cond_1e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x0

    #setter for: Lcom/motorola/Camera/Camera;->mMultishotCurrentCount:I
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$3902(Lcom/motorola/Camera/Camera;I)I

    .line 3243
    :cond_1f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->closeCamera()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2500(Lcom/motorola/Camera/Camera;)V

    .line 3244
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->enableSingleShot()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2600(Lcom/motorola/Camera/Camera;)V

    .line 3246
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    goto/16 :goto_0

    .line 3249
    :pswitch_1b
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_20

    const-string v1, "MotoCamera"

    const-string v2, "PANORAMA_VF_MATCH_TIMEOUT occurs!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3250
    :cond_20
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x1

    #setter for: Lcom/motorola/Camera/Camera;->mStatus:I
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1402(Lcom/motorola/Camera/Camera;I)I

    .line 3251
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->isPanoramaMode()Z
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$3600(Lcom/motorola/Camera/Camera;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3252
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_21

    const-string v1, "MotoCamera"

    const-string v2, "PANORAMA_VF_MATCH_TIMEOUT : Stop Capture!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3253
    :cond_21
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->stopPanoramaCapture()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4000(Lcom/motorola/Camera/Camera;)V

    goto/16 :goto_0

    .line 3259
    :pswitch_1c
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_22

    .line 3260
    const-string v1, "MotoCamera"

    const-string v2, "AUTO_FOCUS_CALLBACK_TIMEOUT occurs!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3262
    :cond_22
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mFocusManager:Lcom/motorola/Camera/FocusManager;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4100(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/FocusManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/FocusManager;->onAutoFocus(Z)V

    goto/16 :goto_0

    .line 3266
    :pswitch_1d
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_23

    const-string v1, "MotoCamera"

    const-string v2, "Capture"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3269
    :cond_23
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4200(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3271
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->isPanoramaMode()Z
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$3600(Lcom/motorola/Camera/Camera;)Z

    move-result v1

    if-eqz v1, :cond_25

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStatus:I
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1400(Lcom/motorola/Camera/Camera;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_25

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPanoramaShotTaken:I
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2400(Lcom/motorola/Camera/Camera;)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPanoramaMaxShot:I
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$4300(Lcom/motorola/Camera/Camera;)I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 3276
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_24

    const-string v1, "MotoCamera"

    const-string v2, "clear Vf match JPEG_PICTURE_CALLBACK_TIMEOUT in CameraGlobalType.CAPTURE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3277
    :cond_24
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3279
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->stopPanoramaCapture()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4000(Lcom/motorola/Camera/Camera;)V

    goto/16 :goto_0

    .line 3283
    :cond_25
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mFocusManager:Lcom/motorola/Camera/FocusManager;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4100(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/FocusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/FocusManager;->doSnap()V

    goto/16 :goto_0

    .line 3289
    :pswitch_1e
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->OPENGL_ON:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_26

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getShutterAnimation()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_26

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->startShutterAnim()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4400(Lcom/motorola/Camera/Camera;)V

    .line 3290
    :cond_26
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x47

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 3294
    :pswitch_1f
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->OPENGL_ON:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_27

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getShutterAnimation()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_27

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->stopShutterAnim()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4500(Lcom/motorola/Camera/Camera;)V

    .line 3295
    :cond_27
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x46

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 3299
    :pswitch_20
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    .line 3300
    .local v18, zoomToValue:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getZoomNum()I

    move-result v1

    move/from16 v0, v18

    if-eq v0, v1, :cond_0

    .line 3302
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x1

    #setter for: Lcom/motorola/Camera/Camera;->mZoomAdjusting:Z
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$4602(Lcom/motorola/Camera/Camera;Z)Z

    .line 3303
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move/from16 v0, v18

    #calls: Lcom/motorola/Camera/Camera;->zoomTo(I)V
    invoke-static {v1, v0}, Lcom/motorola/Camera/Camera;->access$4700(Lcom/motorola/Camera/Camera;I)V

    .line 3305
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    move/from16 v0, v18

    invoke-virtual {v1, v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setZoomNum(I)V

    goto/16 :goto_0

    .line 3312
    .end local v18           #zoomToValue:I
    :pswitch_21
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-boolean v1, v1, Lcom/motorola/Camera/Camera;->mPreviewing:Z

    if-eqz v1, :cond_0

    .line 3314
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4200(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopSmoothZoom()V

    goto/16 :goto_0

    .line 3319
    :pswitch_22
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4200(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3320
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 3321
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 3323
    .local v10, EI:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$4200(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->getCustomParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    #setter for: Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$4802(Lcom/motorola/Camera/Camera;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 3325
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4800(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 3326
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4200(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$4800(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3327
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentExpValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3332
    .end local v10           #EI:I
    :pswitch_23
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$4900(Lcom/motorola/Camera/Camera;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mThumbnailOrientation:I
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$5000(Lcom/motorola/Camera/Camera;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateThumbnail(Landroid/graphics/Bitmap;I)V

    .line 3333
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideAnimatedThumbnail()V

    goto/16 :goto_0

    .line 3336
    :pswitch_24
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setLastCameraMode(I)V

    .line 3337
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->isMultishotMode()Z
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$3800(Lcom/motorola/Camera/Camera;)Z

    move-result v1

    if-eqz v1, :cond_28

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->disableMultishot()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$5100(Lcom/motorola/Camera/Camera;)V

    .line 3339
    :cond_28
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentMode(I)V

    .line 3341
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isCameraLaunchedFromCamcorder()Z

    move-result v1

    if-nez v1, :cond_29

    .line 3343
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentMode(I)V

    .line 3346
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->launchCamcorder()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$5200(Lcom/motorola/Camera/Camera;)V

    goto/16 :goto_0

    .line 3345
    :cond_29
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCameraLaunchFromCamcorderFlag(Z)V

    goto :goto_4

    .line 3349
    :pswitch_25
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setLastCameraMode(I)V

    .line 3350
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentMode(I)V

    .line 3351
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->launchCamcorder()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$5200(Lcom/motorola/Camera/Camera;)V

    goto/16 :goto_0

    .line 3354
    :pswitch_26
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setLastCameraMode(I)V

    .line 3355
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentMode(I)V

    .line 3356
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->launchCamcorder()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$5200(Lcom/motorola/Camera/Camera;)V

    goto/16 :goto_0

    .line 3361
    :pswitch_27
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setLastCameraMode(I)V

    .line 3362
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentMode(I)V

    .line 3363
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->launchCamcorder()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$5200(Lcom/motorola/Camera/Camera;)V

    goto/16 :goto_0

    .line 3367
    :pswitch_28
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->enableSingleShot()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2600(Lcom/motorola/Camera/Camera;)V

    .line 3368
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    goto/16 :goto_0

    .line 3371
    :pswitch_29
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x1

    #calls: Lcom/motorola/Camera/Camera;->enablePanorama(Z)V
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$5300(Lcom/motorola/Camera/Camera;Z)V

    .line 3372
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    goto/16 :goto_0

    .line 3375
    :pswitch_2a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    #setter for: Lcom/motorola/Camera/Camera;->mPanoramaMaxShot:I
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$4302(Lcom/motorola/Camera/Camera;I)I

    .line 3376
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x0

    #setter for: Lcom/motorola/Camera/Camera;->mPanoramaShotTaken:I
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$2402(Lcom/motorola/Camera/Camera;I)I

    .line 3378
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getStitchMode()Ljava/lang/String;

    move-result-object v17

    .line 3379
    .local v17, stitchMode:Ljava/lang/String;
    const-string v1, "left-right"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x0

    #setter for: Lcom/motorola/Camera/Camera;->mCurrentStitchMode:I
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$5402(Lcom/motorola/Camera/Camera;I)I

    .line 3386
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStitchingProgress:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2000(Lcom/motorola/Camera/Camera;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3387
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStitchingMsgText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2100(Lcom/motorola/Camera/Camera;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3390
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    .line 3392
    .local v14, display:Landroid/view/Display;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPanoramaIndicator:Lcom/motorola/Camera/View/PanoramaIndicatorView;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$3700(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/View/PanoramaIndicatorView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCurrentStitchMode:I
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$5400(Lcom/motorola/Camera/Camera;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v14}, Landroid/view/Display;->getRotation()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mDisplayHeight:I
    invoke-static {v5}, Lcom/motorola/Camera/Camera;->access$5500(Lcom/motorola/Camera/Camera;)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->init(ILandroid/os/Handler;II)V

    .line 3394
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateController()V

    .line 3395
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x0

    #setter for: Lcom/motorola/Camera/Camera;->mIsStitching:Z
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$2302(Lcom/motorola/Camera/Camera;Z)Z

    goto/16 :goto_0

    .line 3380
    .end local v14           #display:Landroid/view/Display;
    :cond_2a
    const-string v1, "right-left"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x1

    #setter for: Lcom/motorola/Camera/Camera;->mCurrentStitchMode:I
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$5402(Lcom/motorola/Camera/Camera;I)I

    goto :goto_5

    .line 3381
    :cond_2b
    const-string v1, "up-down"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x2

    #setter for: Lcom/motorola/Camera/Camera;->mCurrentStitchMode:I
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$5402(Lcom/motorola/Camera/Camera;I)I

    goto/16 :goto_5

    .line 3382
    :cond_2c
    const-string v1, "down-up"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x3

    #setter for: Lcom/motorola/Camera/Camera;->mCurrentStitchMode:I
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$5402(Lcom/motorola/Camera/Camera;I)I

    goto/16 :goto_5

    .line 3383
    :cond_2d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x4

    #setter for: Lcom/motorola/Camera/Camera;->mCurrentStitchMode:I
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$5402(Lcom/motorola/Camera/Camera;I)I

    goto/16 :goto_5

    .line 3399
    .end local v17           #stitchMode:Ljava/lang/String;
    :pswitch_2b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x0

    #setter for: Lcom/motorola/Camera/Camera;->mPanoramaMaxShot:I
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$4302(Lcom/motorola/Camera/Camera;I)I

    .line 3400
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x0

    #setter for: Lcom/motorola/Camera/Camera;->mPanoramaShotTaken:I
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$2402(Lcom/motorola/Camera/Camera;I)I

    .line 3401
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->updateFocusIndicator()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1800(Lcom/motorola/Camera/Camera;)V

    .line 3402
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStitchingProgress:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2000(Lcom/motorola/Camera/Camera;)Landroid/widget/ProgressBar;

    move-result-object v1

    if-eqz v1, :cond_2e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStitchingProgress:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2000(Lcom/motorola/Camera/Camera;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3403
    :cond_2e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStitchingMsgText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2100(Lcom/motorola/Camera/Camera;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_2f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStitchingMsgText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2100(Lcom/motorola/Camera/Camera;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3404
    :cond_2f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPanoramaIndicator:Lcom/motorola/Camera/View/PanoramaIndicatorView;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$3700(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/View/PanoramaIndicatorView;

    move-result-object v1

    if-eqz v1, :cond_30

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPanoramaIndicator:Lcom/motorola/Camera/View/PanoramaIndicatorView;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$3700(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/View/PanoramaIndicatorView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->setVisibility(I)V

    .line 3405
    :cond_30
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateController()V

    goto/16 :goto_0

    .line 3408
    :pswitch_2c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportedScenes()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_31

    .line 3409
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const v3, 0x7f0b0068

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1700(Lcom/motorola/Camera/Camera;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3411
    :cond_31
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const v3, 0x7f0b0065

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1700(Lcom/motorola/Camera/Camera;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3415
    :pswitch_2d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->enableMultiShot()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$5600(Lcom/motorola/Camera/Camera;)V

    .line 3416
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    goto/16 :goto_0

    .line 3420
    :pswitch_2e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPanoramaShotTaken:I
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2400(Lcom/motorola/Camera/Camera;)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPanoramaMaxShot:I
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$4300(Lcom/motorola/Camera/Camera;)I

    move-result v2

    if-ne v1, v2, :cond_35

    .line 3421
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPanoramaIndicator:Lcom/motorola/Camera/View/PanoramaIndicatorView;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$3700(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/View/PanoramaIndicatorView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->reset()V

    .line 3422
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPanoramaIndicator:Lcom/motorola/Camera/View/PanoramaIndicatorView;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$3700(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/View/PanoramaIndicatorView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->setVisibility(I)V

    .line 3423
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideControllerPanel(Z)V

    .line 3425
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStatus:I
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1400(Lcom/motorola/Camera/Camera;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 3427
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mBlackoutBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$5700(Lcom/motorola/Camera/Camera;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_32

    .line 3428
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    invoke-virtual {v2}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200f8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    #setter for: Lcom/motorola/Camera/Camera;->mBlackoutBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$5702(Lcom/motorola/Camera/Camera;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    .line 3434
    :cond_32
    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mBlackout:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2200(Lcom/motorola/Camera/Camera;)Landroid/widget/ImageView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mBlackoutBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$5700(Lcom/motorola/Camera/Camera;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3435
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mBlackout:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2200(Lcom/motorola/Camera/Camera;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3436
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStitchingProgress:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2000(Lcom/motorola/Camera/Camera;)Landroid/widget/ProgressBar;

    move-result-object v1

    if-nez v1, :cond_33

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const v3, 0x7f0d0047

    invoke-virtual {v1, v3}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    #setter for: Lcom/motorola/Camera/Camera;->mStitchingProgress:Landroid/widget/ProgressBar;
    invoke-static {v2, v1}, Lcom/motorola/Camera/Camera;->access$2002(Lcom/motorola/Camera/Camera;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    .line 3437
    :cond_33
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStitchingMsgText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2100(Lcom/motorola/Camera/Camera;)Landroid/widget/TextView;

    move-result-object v1

    if-nez v1, :cond_34

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const v3, 0x7f0d0048

    invoke-virtual {v1, v3}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    #setter for: Lcom/motorola/Camera/Camera;->mStitchingMsgText:Landroid/widget/TextView;
    invoke-static {v2, v1}, Lcom/motorola/Camera/Camera;->access$2102(Lcom/motorola/Camera/Camera;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 3438
    :cond_34
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStitchingProgress:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2000(Lcom/motorola/Camera/Camera;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3439
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStitchingMsgText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2100(Lcom/motorola/Camera/Camera;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 3429
    :catch_1
    move-exception v15

    .line 3430
    .local v15, e:Ljava/lang/OutOfMemoryError;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x0

    #setter for: Lcom/motorola/Camera/Camera;->mBlackoutBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$5702(Lcom/motorola/Camera/Camera;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 3431
    invoke-virtual {v15}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto/16 :goto_6

    .line 3442
    .end local v15           #e:Ljava/lang/OutOfMemoryError;
    :cond_35
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPanoramaShotTaken:I
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2400(Lcom/motorola/Camera/Camera;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_36

    .line 3443
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const v3, 0x7f0b002a

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1700(Lcom/motorola/Camera/Camera;Ljava/lang/String;)V

    .line 3445
    :cond_36
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->camPremium:Z

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    if-eqz v1, :cond_0

    .line 3446
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    goto/16 :goto_0

    .line 3451
    :pswitch_2f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->initializeFirstTime()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$5800(Lcom/motorola/Camera/Camera;)V

    goto/16 :goto_0

    .line 3454
    :pswitch_30
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4200(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3455
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->setCameraParameters()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$5900(Lcom/motorola/Camera/Camera;)V

    goto/16 :goto_0

    .line 3458
    :pswitch_31
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    .line 3459
    .local v13, currentScene:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v16, v0

    .line 3460
    .local v16, lastScene:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4200(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_39

    .line 3462
    const/4 v1, 0x7

    if-ne v13, v1, :cond_37

    const/4 v1, 0x7

    move/from16 v0, v16

    if-ne v0, v1, :cond_38

    :cond_37
    const/4 v1, 0x7

    if-eq v13, v1, :cond_3a

    const/4 v1, 0x7

    move/from16 v0, v16

    if-ne v0, v1, :cond_3a

    .line 3465
    :cond_38
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->updateScenesEffects()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$6000(Lcom/motorola/Camera/Camera;)V

    .line 3466
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->startDevice()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$6100(Lcom/motorola/Camera/Camera;)V

    .line 3471
    :cond_39
    :goto_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateController()V

    goto/16 :goto_0

    .line 3469
    :cond_3a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->updateScenesEffects()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$6000(Lcom/motorola/Camera/Camera;)V

    goto :goto_7

    .line 3474
    .end local v13           #currentScene:I
    .end local v16           #lastScene:I
    :pswitch_32
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4200(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3476
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    invoke-virtual {v1}, Lcom/motorola/Camera/Camera;->updateEffects()V

    .line 3477
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4200(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$4800(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3478
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateController()V

    goto/16 :goto_0

    .line 3482
    :pswitch_33
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    invoke-virtual {v1}, Lcom/motorola/Camera/Camera;->finish()V

    goto/16 :goto_0

    .line 3486
    :pswitch_34
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    invoke-virtual {v1}, Lcom/motorola/Camera/Camera;->onScreenCaptureFocus()V

    goto/16 :goto_0

    .line 3490
    :pswitch_35
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    invoke-virtual {v1}, Lcom/motorola/Camera/Camera;->onScreenCaptureDown()V

    goto/16 :goto_0

    .line 3493
    :pswitch_36
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    invoke-virtual {v1}, Lcom/motorola/Camera/Camera;->onScreenCaptureUp()V

    goto/16 :goto_0

    .line 3496
    :pswitch_37
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4200(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3498
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamUtil:Lcom/motorola/Camera/CameraUtility;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$6200(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CameraUtility;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$4800(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/CameraUtility;->setFlash(Landroid/hardware/Camera$Parameters;)V

    .line 3499
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4200(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$4800(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3500
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    if-eqz v1, :cond_3b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v1

    if-nez v1, :cond_3b

    .line 3501
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentFlash()I

    move-result v2

    iput v2, v1, Lcom/motorola/Camera/Camera;->prevFlash:I

    .line 3503
    :cond_3b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateController()V

    goto/16 :goto_0

    .line 3507
    :pswitch_38
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    #setter for: Lcom/motorola/Camera/Camera;->mCaptureMultishotEndTime:J
    invoke-static {v1, v2, v3}, Lcom/motorola/Camera/Camera;->access$6302(Lcom/motorola/Camera/Camera;J)J

    .line 3508
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCaptureMultishotEndTime:J
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$6300(Lcom/motorola/Camera/Camera;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-wide v4, v4, Lcom/motorola/Camera/Camera;->mCaptureStartTime:J

    sub-long/2addr v2, v4

    #setter for: Lcom/motorola/Camera/Camera;->mCaptureMultishotTime:J
    invoke-static {v1, v2, v3}, Lcom/motorola/Camera/Camera;->access$6402(Lcom/motorola/Camera/Camera;J)J

    .line 3509
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_3c

    .line 3510
    const-string v1, "MotoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KPI: BURST_JPEG_ALL_PICTURES_SAVED. timer = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCaptureMultishotTime:J
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$6400(Lcom/motorola/Camera/Camera;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3512
    const-string v1, "MotoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Time taken for before coming here - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-wide v5, v5, Lcom/motorola/Camera/Camera;->mCallbacktime:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3513
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/motorola/Camera/Camera;->mCallbacktime:J

    .line 3516
    :cond_3c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x7

    #setter for: Lcom/motorola/Camera/Camera;->mStatus:I
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1402(Lcom/motorola/Camera/Camera;I)I

    .line 3518
    const-string v1, "MotoCamera"

    const-string v2, "KPI: RESTART_PREVIEW"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3520
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3521
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 3526
    :pswitch_39
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    #setter for: Lcom/motorola/Camera/Camera;->mCaptureMultishotEndTimewithMetaData:J
    invoke-static {v1, v2, v3}, Lcom/motorola/Camera/Camera;->access$6502(Lcom/motorola/Camera/Camera;J)J

    .line 3527
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCaptureMultishotEndTimewithMetaData:J
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$6500(Lcom/motorola/Camera/Camera;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-wide v4, v4, Lcom/motorola/Camera/Camera;->mCaptureStartTime:J

    sub-long/2addr v2, v4

    #setter for: Lcom/motorola/Camera/Camera;->mCaptureMultishotTimeMetaData:J
    invoke-static {v1, v2, v3}, Lcom/motorola/Camera/Camera;->access$6602(Lcom/motorola/Camera/Camera;J)J

    .line 3529
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_3d

    .line 3530
    const-string v1, "MotoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KPI: BURST_JPEG_ALL_METADATA_STORED_TO_FILE timer = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCaptureMultishotTimeMetaData:J
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$6600(Lcom/motorola/Camera/Camera;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3535
    :cond_3d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x1

    #setter for: Lcom/motorola/Camera/Camera;->mStatus:I
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1402(Lcom/motorola/Camera/Camera;I)I

    .line 3536
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x6a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 3544
    :pswitch_3a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Completed Test # "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mTestNumber:I
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$6700(Lcom/motorola/Camera/Camera;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1700(Lcom/motorola/Camera/Camera;Ljava/lang/String;)V

    .line 3545
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$6708(Lcom/motorola/Camera/Camera;)I

    goto/16 :goto_0

    .line 3548
    :pswitch_3b
    const-string v1, "MotoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handler SWITCH_MODE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3549
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    packed-switch v1, :pswitch_data_2

    :pswitch_3c
    goto/16 :goto_0

    .line 3557
    :pswitch_3d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->enableSingleShot()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2600(Lcom/motorola/Camera/Camera;)V

    goto/16 :goto_0

    .line 3551
    :pswitch_3e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->enableMultiShot()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$5600(Lcom/motorola/Camera/Camera;)V

    goto/16 :goto_0

    .line 3554
    :pswitch_3f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x1

    #calls: Lcom/motorola/Camera/Camera;->enablePanorama(Z)V
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$5300(Lcom/motorola/Camera/Camera;Z)V

    goto/16 :goto_0

    .line 3560
    :pswitch_40
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->enableHDR()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$6800(Lcom/motorola/Camera/Camera;)V

    goto/16 :goto_0

    .line 3563
    :pswitch_41
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->enableWDR()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$6900(Lcom/motorola/Camera/Camera;)V

    goto/16 :goto_0

    .line 3566
    :pswitch_42
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x1

    #setter for: Lcom/motorola/Camera/Camera;->mTimerContainerShowing:Z
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$7002(Lcom/motorola/Camera/Camera;Z)Z

    .line 3567
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->initAutoTimerModeButtons()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$7100(Lcom/motorola/Camera/Camera;)V

    .line 3568
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mTimerContainer:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$7200(Lcom/motorola/Camera/Camera;)Landroid/widget/RelativeLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v3, v3, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->getBtnCenter()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->createSecondaryDialog(Landroid/widget/RelativeLayout;I)V

    goto/16 :goto_0

    .line 3580
    :pswitch_43
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const v3, 0x7f0b0131

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1700(Lcom/motorola/Camera/Camera;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3583
    :pswitch_44
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const v3, 0x7f0b012f

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1700(Lcom/motorola/Camera/Camera;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3586
    :pswitch_45
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mIsImageCaptureIntent:Z
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$7300(Lcom/motorola/Camera/Camera;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 3587
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const v3, 0x7f0b0130

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1700(Lcom/motorola/Camera/Camera;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3589
    :cond_3e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const v3, 0x7f0b0141

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1700(Lcom/motorola/Camera/Camera;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3593
    :pswitch_46
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentStorageLocation()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3f

    const/4 v1, 0x1

    :goto_8
    #setter for: Lcom/motorola/Camera/Camera;->mIsInternalSD:Z
    invoke-static {v2, v1}, Lcom/motorola/Camera/Camera;->access$7402(Lcom/motorola/Camera/Camera;Z)Z

    .line 3594
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->updateRemainCount()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2700(Lcom/motorola/Camera/Camera;)V

    goto/16 :goto_0

    .line 3593
    :cond_3f
    const/4 v1, 0x0

    goto :goto_8

    .line 3598
    :pswitch_47
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStatus:I
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1400(Lcom/motorola/Camera/Camera;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 3602
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentAutoTimer()I

    move-result v11

    .line 3604
    .local v11, autoTimerValue:I
    if-eqz v11, :cond_0

    .line 3608
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mAutoTimerCount:I
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$7500(Lcom/motorola/Camera/Camera;)I

    move-result v1

    if-ge v1, v11, :cond_41

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStatus:I
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1400(Lcom/motorola/Camera/Camera;)I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_41

    .line 3610
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getShutterToneOn()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 3611
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$7700(Lcom/motorola/Camera/Camera;)Landroid/media/SoundPool;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->autoTimerSoundId:I
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$7600(Lcom/motorola/Camera/Camera;)I

    move-result v2

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 3613
    :cond_40
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$7508(Lcom/motorola/Camera/Camera;)I

    .line 3614
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mAutotimerCountImg:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$7900(Lcom/motorola/Camera/Camera;)Landroid/widget/ImageView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->ResAutoTimerDigitImg:[I
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$7800(Lcom/motorola/Camera/Camera;)[I

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentAutoTimer()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mAutoTimerCount:I
    invoke-static {v4}, Lcom/motorola/Camera/Camera;->access$7500(Lcom/motorola/Camera/Camera;)I

    move-result v4

    sub-int/2addr v3, v4

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3615
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mAutotimerCountImg:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$7900(Lcom/motorola/Camera/Camera;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3616
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x50

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 3617
    :cond_41
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mAutoTimerCount:I
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$7500(Lcom/motorola/Camera/Camera;)I

    move-result v1

    if-ne v1, v11, :cond_0

    .line 3620
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mAutotimerCountImg:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$7900(Lcom/motorola/Camera/Camera;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3621
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/16 v2, 0x1b

    #calls: Lcom/motorola/Camera/Camera;->checkAndSnap(I)V
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$8000(Lcom/motorola/Camera/Camera;I)V

    .line 3622
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 3628
    .end local v11           #autoTimerValue:I
    :pswitch_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamUtil:Lcom/motorola/Camera/CameraUtility;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$6200(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CameraUtility;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->mActivityReference:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mLocUtil:Lcom/motorola/Camera/LocUtility;
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$2900(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/LocUtility;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v4, v4, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v5}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isLocationOn()Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget v7, v7, Lcom/motorola/Camera/Camera;->mConfig_PL:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v8, v8, Lcom/motorola/Camera/Camera;->mEulaAgreeListener:Landroid/view/View$OnClickListener;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v9, v9, Lcom/motorola/Camera/Camera;->mEulaCancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual/range {v1 .. v9}, Lcom/motorola/Camera/CameraUtility;->showEulaMessage(Landroid/content/Context;Lcom/motorola/Camera/LocUtility;Lcom/motorola/Camera/View/Control/OnScreenController;ZLandroid/app/Activity;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Lcom/motorola/Camera/RotateDialogController;

    move-result-object v1

    move-object/from16 v0, v19

    #setter for: Lcom/motorola/Camera/Camera;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v0, v1}, Lcom/motorola/Camera/Camera;->access$8102(Lcom/motorola/Camera/Camera;Lcom/motorola/Camera/RotateDialogController;)Lcom/motorola/Camera/RotateDialogController;

    .line 3631
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x1

    #setter for: Lcom/motorola/Camera/Camera;->mRotateDialogShowing:Z
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$8202(Lcom/motorola/Camera/Camera;Z)Z

    .line 3632
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->secondaryDialogOpen()V

    goto/16 :goto_0

    .line 3635
    :pswitch_49
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->dismissToast()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$8300(Lcom/motorola/Camera/Camera;)V

    goto/16 :goto_0

    .line 2971
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_1
        :pswitch_e
        :pswitch_1
        :pswitch_7
        :pswitch_1
        :pswitch_8
        :pswitch_1
        :pswitch_a
        :pswitch_9
        :pswitch_1
        :pswitch_14
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_19
        :pswitch_1c
        :pswitch_1
        :pswitch_1d
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_24
        :pswitch_1
        :pswitch_29
        :pswitch_1
        :pswitch_28
        :pswitch_2a
        :pswitch_2b
        :pswitch_1
        :pswitch_1
        :pswitch_2d
        :pswitch_1
        :pswitch_1
        :pswitch_2c
        :pswitch_1b
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_17
        :pswitch_1
        :pswitch_2f
        :pswitch_30
        :pswitch_1
        :pswitch_c
        :pswitch_1
        :pswitch_33
        :pswitch_d
        :pswitch_1
        :pswitch_31
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_1
        :pswitch_1
        :pswitch_20
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_13
        :pswitch_6
        :pswitch_1f
        :pswitch_1e
        :pswitch_23
        :pswitch_1
        :pswitch_15
        :pswitch_16
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_47
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2e
        :pswitch_f
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1a
        :pswitch_1
        :pswitch_1
        :pswitch_37
        :pswitch_21
        :pswitch_1
        :pswitch_1
        :pswitch_32
        :pswitch_4
        :pswitch_4
        :pswitch_3b
        :pswitch_0
        :pswitch_44
        :pswitch_45
        :pswitch_22
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_18
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_b
        :pswitch_1
        :pswitch_46
        :pswitch_43
        :pswitch_1
        :pswitch_3
        :pswitch_48
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_49
    .end packed-switch

    .line 3071
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_11
        :pswitch_10
        :pswitch_12
    .end packed-switch

    .line 3549
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_3f
        :pswitch_3e
        :pswitch_3c
        :pswitch_40
        :pswitch_42
        :pswitch_41
    .end packed-switch
.end method

.method public setActivityReference(Landroid/app/Activity;)V
    .locals 0
    .parameter "a"

    .prologue
    .line 2963
    iput-object p1, p0, Lcom/motorola/Camera/Camera$MainHandler;->mActivityReference:Landroid/app/Activity;

    .line 2964
    return-void
.end method
