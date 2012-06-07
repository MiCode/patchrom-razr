.class Lcom/motorola/Camera/Camcorder$MainHandler;
.super Landroid/os/Handler;
.source "Camcorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/Camcorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field private mActivityReference:Landroid/app/Activity;

.field final synthetic this$0:Lcom/motorola/Camera/Camcorder;


# direct methods
.method private constructor <init>(Lcom/motorola/Camera/Camcorder;)V
    .locals 1
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/Camera/Camcorder$MainHandler;->mActivityReference:Landroid/app/Activity;

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/Camera/Camcorder;Lcom/motorola/Camera/Camcorder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 253
    invoke-direct {p0, p1}, Lcom/motorola/Camera/Camcorder$MainHandler;-><init>(Lcom/motorola/Camera/Camcorder;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 32
    .parameter "msg"

    .prologue
    .line 263
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    .line 264
    const-string v2, "MotoCamcorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handling Message - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    iget-boolean v2, v2, Lcom/motorola/Camera/Camcorder;->mPausing:Z

    if-eqz v2, :cond_2

    .line 745
    :cond_1
    :goto_0
    return-void

    .line 267
    :cond_2
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 740
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_1

    .line 741
    const-string v2, "MotoCamcorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MainHandler:handleMessage:Unhandled message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 271
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$300(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    iget-object v3, v3, Lcom/motorola/Camera/Camcorder;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mThumbnailOrientation:I
    invoke-static {v4}, Lcom/motorola/Camera/Camcorder;->access$200(Lcom/motorola/Camera/Camcorder;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateThumbnail(Landroid/graphics/Bitmap;I)V

    goto :goto_0

    .line 275
    :sswitch_1
    new-instance v24, Lcom/motorola/Camera/Camcorder$MainHandler$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/motorola/Camera/Camcorder$MainHandler$1;-><init>(Lcom/motorola/Camera/Camcorder$MainHandler;)V

    .line 283
    .local v24, okButtonListener:Landroid/content/DialogInterface$OnClickListener;
    const/16 v16, 0x0

    .line 284
    .local v16, cancel:Z
    new-instance v13, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    invoke-direct {v13, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 285
    .local v13, alert:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0b0099

    invoke-virtual {v13, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 286
    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 287
    const v2, 0x104000a

    move-object/from16 v0, v24

    invoke-virtual {v13, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 288
    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 292
    .end local v13           #alert:Landroid/app/AlertDialog$Builder;
    .end local v16           #cancel:Z
    .end local v24           #okButtonListener:Landroid/content/DialogInterface$OnClickListener;
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$500(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$500(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->lock()V

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->releaseMediaRecorder()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$600(Lcom/motorola/Camera/Camcorder;)V

    .line 298
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->updateScenesEffects()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$700(Lcom/motorola/Camera/Camcorder;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->initializeRecorder()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$800(Lcom/motorola/Camera/Camcorder;)V

    .line 301
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$300(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateController()V

    goto/16 :goto_0

    .line 305
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->releaseMediaRecorder()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$600(Lcom/motorola/Camera/Camcorder;)V

    .line 306
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_4

    .line 307
    const-string v2, "MotoCamcorder"

    const-string v3, "media recorder released!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->closeCamera()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$400(Lcom/motorola/Camera/Camcorder;)V

    .line 312
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_5

    .line 313
    const-string v2, "MotoCamcorder"

    const-string v3, "preview stopped!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->startPreview()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$900(Lcom/motorola/Camera/Camcorder;)V

    .line 316
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_6

    .line 317
    const-string v2, "MotoCamcorder"

    const-string v3, "preview started!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->initializeRecorder()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$800(Lcom/motorola/Camera/Camcorder;)V

    .line 320
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_7

    .line 321
    const-string v2, "MotoCamcorder"

    const-string v3, "recorder initialized!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->updateRemainCount()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1000(Lcom/motorola/Camera/Camcorder;)V

    goto/16 :goto_0

    .line 328
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$500(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$500(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->lock()V

    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v3}, Lcom/motorola/Camera/Camcorder;->access$500(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera;->getCustomParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    #setter for: Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camcorder;->access$1102(Lcom/motorola/Camera/Camcorder;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    invoke-virtual {v2}, Lcom/motorola/Camera/Camcorder;->updateEffects()V

    .line 333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$500(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v3}, Lcom/motorola/Camera/Camcorder;->access$1100(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$500(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->unlock()V

    .line 335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$300(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateController()V

    goto/16 :goto_0

    .line 341
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    const v4, 0x7f0b0065

    invoke-virtual {v3, v4}, Lcom/motorola/Camera/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/motorola/Camera/Camcorder;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camcorder;->access$1200(Lcom/motorola/Camera/Camcorder;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 345
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    const v4, 0x7f0b0140

    invoke-virtual {v3, v4}, Lcom/motorola/Camera/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/motorola/Camera/Camcorder;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camcorder;->access$1200(Lcom/motorola/Camera/Camcorder;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 349
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->releaseMediaRecorder()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$600(Lcom/motorola/Camera/Camcorder;)V

    goto/16 :goto_0

    .line 353
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/motorola/Camera/Camcorder$MainHandler$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/motorola/Camera/Camcorder$MainHandler$2;-><init>(Lcom/motorola/Camera/Camcorder$MainHandler;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, v2, Lcom/motorola/Camera/Camcorder;->mRecInitThread:Ljava/lang/Thread;

    .line 359
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    iget-object v2, v2, Lcom/motorola/Camera/Camcorder;->mRecInitThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 364
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mStatus:I
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1300(Lcom/motorola/Camera/Camcorder;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 365
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    .line 366
    .local v22, now:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mRecordingStartTime:J
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1400(Lcom/motorola/Camera/Camcorder;)J

    move-result-wide v2

    sub-long v19, v22, v2

    .line 367
    .local v19, delta:J
    const-wide/16 v2, 0x3e8

    div-long v25, v19, v2

    .line 370
    .local v25, seconds:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v17

    .line 372
    .local v17, currentVideoMode:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->updateRecordTime()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1600(Lcom/motorola/Camera/Camcorder;)V

    goto/16 :goto_0

    .line 377
    .end local v17           #currentVideoMode:I
    .end local v19           #delta:J
    .end local v22           #now:J
    .end local v25           #seconds:J
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    const/4 v3, 0x1

    #calls: Lcom/motorola/Camera/Camcorder;->hideVideoFrameAndStartPreview(Z)V
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camcorder;->access$1700(Lcom/motorola/Camera/Camcorder;Z)V

    goto/16 :goto_0

    .line 381
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mStatus:I
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1300(Lcom/motorola/Camera/Camcorder;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->toggleCamera()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1800(Lcom/motorola/Camera/Camcorder;)V

    goto/16 :goto_0

    .line 385
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camcorder;->camcordermuteonoff(Z)V

    goto/16 :goto_0

    .line 388
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camcorder;->camcordermuteonoff(Z)V

    goto/16 :goto_0

    .line 391
    :sswitch_e
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_8

    const-string v2, "MotoCamcorder"

    const-string v3, "handleMessage() : VideoSnapshot message received"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->videoSnapshot()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1900(Lcom/motorola/Camera/Camcorder;)V

    goto/16 :goto_0

    .line 395
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$300(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->showRecordingTime(Z)V

    .line 397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    invoke-static {v2}, Lcom/motorola/Camera/CameraGlobalTools;->launchGallery(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 398
    const-string v2, "MotoCamcorder"

    const-string v3, "launchGallery() - couldn\'t launch gallery, activity doesn\'t exist"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    const v4, 0x7f0b006c

    invoke-virtual {v3, v4}, Lcom/motorola/Camera/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/motorola/Camera/Camcorder;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camcorder;->access$1200(Lcom/motorola/Camera/Camcorder;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 404
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    const v4, 0x7f0b006d

    invoke-virtual {v3, v4}, Lcom/motorola/Camera/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/motorola/Camera/Camcorder;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camcorder;->access$1200(Lcom/motorola/Camera/Camcorder;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 408
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$300(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->rightSetFadeOut()V

    goto/16 :goto_0

    .line 412
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$300(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 413
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$300(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideStatusSet(Z)V

    goto/16 :goto_0

    .line 417
    :sswitch_13
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_9

    const-string v2, "MotoCamcorder"

    const-string v3, "SHOW_TOAST_AND_EXIT_CAMERA occurs!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    const v4, 0x7f0b0096

    invoke-virtual {v3, v4}, Lcom/motorola/Camera/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/motorola/Camera/Camcorder;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camcorder;->access$1200(Lcom/motorola/Camera/Camcorder;Ljava/lang/String;)V

    .line 419
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$2000(Lcom/motorola/Camera/Camcorder;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x6

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 422
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    const v4, 0x7f0b0097

    invoke-virtual {v3, v4}, Lcom/motorola/Camera/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/motorola/Camera/Camcorder;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camcorder;->access$1200(Lcom/motorola/Camera/Camcorder;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 425
    :sswitch_15
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_a

    const-string v2, "MotoCamcorder"

    const-string v3, "EXIT_CAMERA occurs!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_a
    invoke-static {}, Lcom/motorola/Camera/SaveHelper;->getInstance()Lcom/motorola/Camera/SaveHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/Camera/SaveHelper;->stopService()V

    .line 428
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    invoke-virtual {v2}, Lcom/motorola/Camera/Camcorder;->finish()V

    goto/16 :goto_0

    .line 431
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->dismissToast()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$2100(Lcom/motorola/Camera/Camcorder;)V

    goto/16 :goto_0

    .line 434
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$300(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateLocationText()V

    goto/16 :goto_0

    .line 437
    :sswitch_18
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_b

    .line 438
    const-string v2, "MotoCamcorder"

    const-string v3, "MainHandler:handleMessage: CameraGlobalType.DISPLAY_VIDEO_POSTVIEW"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->releaseMediaRecorder()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$600(Lcom/motorola/Camera/Camcorder;)V

    .line 443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->acquireAndShowVideoFrame()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$2200(Lcom/motorola/Camera/Camcorder;)V

    .line 446
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCurrentVideoFilename:Ljava/lang/String;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$2300(Lcom/motorola/Camera/Camcorder;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 448
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCurrentVideoFilename:Ljava/lang/String;
    invoke-static {v3}, Lcom/motorola/Camera/Camcorder;->access$2300(Lcom/motorola/Camera/Camcorder;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v14

    .line 449
    .local v14, broadUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v3, v4, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camcorder;->sendBroadcast(Landroid/content/Intent;)V

    .line 450
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.hardware.action.NEW_VIDEO"

    invoke-direct {v3, v4, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camcorder;->sendBroadcast(Landroid/content/Intent;)V

    .line 458
    .end local v14           #broadUri:Landroid/net/Uri;
    :cond_c
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$2000(Lcom/motorola/Camera/Camcorder;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mIsVideoCaptureIntent:Z
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$2400(Lcom/motorola/Camera/Camcorder;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 461
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$300(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideZoomControlSet(Z)V

    .line 462
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$300(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideCaptureCluster()V

    .line 464
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    iget-object v2, v2, Lcom/motorola/Camera/Camcorder;->mPostPanel:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_d

    .line 465
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    iget-object v2, v2, Lcom/motorola/Camera/Camcorder;->mPostPanel:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 471
    :cond_d
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    const/4 v3, 0x6

    #setter for: Lcom/motorola/Camera/Camcorder;->mStatus:I
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camcorder;->access$1302(Lcom/motorola/Camera/Camcorder;I)I

    goto/16 :goto_0

    .line 454
    :cond_e
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_c

    .line 455
    const-string v2, "MotoCamcorder"

    const-string v3, "onPause: video path is null, will not send the URI to scanner "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 469
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->showPostRecordingAlert()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$2500(Lcom/motorola/Camera/Camcorder;)V

    goto :goto_2

    .line 475
    :sswitch_19
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_10

    const-string v2, "MotoCamcorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mZoomAdjusting:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mZoomAdjusting:Z
    invoke-static {v4}, Lcom/motorola/Camera/Camcorder;->access$2600(Lcom/motorola/Camera/Camcorder;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$2000(Lcom/motorola/Camera/Camcorder;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 478
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_11

    const-string v2, "MotoCamcorder"

    const-string v3, "Zoom IN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getZoomNum()I

    move-result v18

    .line 480
    .local v18, currentZoom:I
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_12

    .line 481
    const-string v2, "MotoCamcorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CURRENT ZOOM:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const-string v2, "MotoCamcorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MAX ZOOM:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/motorola/Camera/CameraGlobalType;->ZOOM_MAX_VALUE:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isZoomSupported()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 487
    sget v2, Lcom/motorola/Camera/CameraGlobalType;->ZOOM_MAX_VALUE:I

    move/from16 v0, v18

    if-ge v0, v2, :cond_13

    .line 488
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    const/4 v3, 0x1

    #setter for: Lcom/motorola/Camera/Camcorder;->mZoomAdjusting:Z
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camcorder;->access$2602(Lcom/motorola/Camera/Camcorder;Z)Z

    .line 489
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->smoothZoomSupported:Z

    if-eqz v2, :cond_14

    .line 490
    add-int/lit8 v18, v18, 0x1

    .line 491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    move/from16 v0, v18

    #calls: Lcom/motorola/Camera/Camcorder;->zoomTo(I)V
    invoke-static {v2, v0}, Lcom/motorola/Camera/Camcorder;->access$2700(Lcom/motorola/Camera/Camcorder;I)V

    .line 492
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setZoomNum(I)V

    .line 493
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$300(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateZoom(I)V

    .line 501
    :cond_13
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    invoke-virtual {v2}, Lcom/motorola/Camera/Camcorder;->updateAudioZoom()V

    goto/16 :goto_0

    .line 496
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$2000(Lcom/motorola/Camera/Camcorder;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x40

    sget v4, Lcom/motorola/Camera/CameraGlobalType;->ZOOM_STEP:I

    add-int v4, v4, v18

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v29

    .line 497
    .local v29, zoomMsg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$2000(Lcom/motorola/Camera/Camcorder;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 505
    .end local v18           #currentZoom:I
    .end local v29           #zoomMsg:Landroid/os/Message;
    :sswitch_1a
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_15

    const-string v2, "MotoCamcorder"

    const-string v3, "Zoom OUT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getZoomNum()I

    move-result v28

    .line 507
    .local v28, zoom:I
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_16

    .line 508
    const-string v2, "MotoCamcorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CURRENT ZOOM:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const-string v2, "MotoCamcorder"

    const-string v3, "MIN ZOOM:0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isZoomSupported()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 513
    if-lez v28, :cond_17

    .line 514
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    const/4 v3, 0x1

    #setter for: Lcom/motorola/Camera/Camcorder;->mZoomAdjusting:Z
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camcorder;->access$2602(Lcom/motorola/Camera/Camcorder;Z)Z

    .line 515
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->smoothZoomSupported:Z

    if-eqz v2, :cond_18

    .line 516
    add-int/lit8 v28, v28, -0x1

    .line 518
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    move/from16 v0, v28

    #calls: Lcom/motorola/Camera/Camcorder;->zoomTo(I)V
    invoke-static {v2, v0}, Lcom/motorola/Camera/Camcorder;->access$2700(Lcom/motorola/Camera/Camcorder;I)V

    .line 519
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setZoomNum(I)V

    .line 520
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$300(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateZoom(I)V

    .line 528
    :cond_17
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    invoke-virtual {v2}, Lcom/motorola/Camera/Camcorder;->updateAudioZoom()V

    goto/16 :goto_0

    .line 523
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$2000(Lcom/motorola/Camera/Camcorder;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x40

    sget v4, Lcom/motorola/Camera/CameraGlobalType;->ZOOM_STEP:I

    sub-int v4, v28, v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v29

    .line 524
    .restart local v29       #zoomMsg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$2000(Lcom/motorola/Camera/Camcorder;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4

    .line 531
    .end local v28           #zoom:I
    .end local v29           #zoomMsg:Landroid/os/Message;
    :sswitch_1b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    .line 533
    .local v30, zoomToValue:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    move/from16 v0, v30

    #calls: Lcom/motorola/Camera/Camcorder;->zoomTo(I)V
    invoke-static {v2, v0}, Lcom/motorola/Camera/Camcorder;->access$2700(Lcom/motorola/Camera/Camcorder;I)V

    .line 535
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    move/from16 v0, v30

    invoke-virtual {v2, v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setZoomNum(I)V

    .line 536
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isZoomSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 538
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->smoothZoomSupported:Z

    if-nez v2, :cond_1

    .line 539
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    const/4 v3, 0x0

    #setter for: Lcom/motorola/Camera/Camcorder;->mZoomAdjusting:Z
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camcorder;->access$2602(Lcom/motorola/Camera/Camcorder;Z)Z

    goto/16 :goto_0

    .line 545
    .end local v30           #zoomToValue:I
    :sswitch_1c
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_19

    .line 546
    const-string v2, "MotoCamcorder"

    const-string v3, "Entering STOP_SMOOTH_ZOOM message"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->stopSmoothZoom()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$2800(Lcom/motorola/Camera/Camcorder;)V

    goto/16 :goto_0

    .line 552
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$500(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 553
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 554
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 556
    .local v11, EI:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$500(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->lock()V

    .line 557
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v3}, Lcom/motorola/Camera/Camcorder;->access$500(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera;->getCustomParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    #setter for: Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camcorder;->access$1102(Lcom/motorola/Camera/Camcorder;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 558
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1100(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 559
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$500(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v3}, Lcom/motorola/Camera/Camcorder;->access$1100(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentExpValue(Ljava/lang/String;)V

    .line 561
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$500(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->unlock()V

    goto/16 :goto_0

    .line 566
    .end local v11           #EI:I
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mStatus:I
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1300(Lcom/motorola/Camera/Camcorder;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1b

    .line 568
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mVideoRemainingSecond:J
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$2900(Lcom/motorola/Camera/Camcorder;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1a

    .line 569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    const v4, 0x7f0b0092

    invoke-virtual {v3, v4}, Lcom/motorola/Camera/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/motorola/Camera/Camcorder;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camcorder;->access$1200(Lcom/motorola/Camera/Camcorder;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 572
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->startVideoRecording()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$3000(Lcom/motorola/Camera/Camcorder;)V

    goto/16 :goto_0

    .line 576
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$300(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$300(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->setRecordButton(Z)V

    goto/16 :goto_0

    .line 581
    :sswitch_1f
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_1c

    const-string v2, "MotoCamcorder"

    const-string v3, "Camcorder:handleMessage:RECORD_STOP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mStatus:I
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1300(Lcom/motorola/Camera/Camcorder;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 583
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->stopVideoRecordingAndDisplayDialog()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$3100(Lcom/motorola/Camera/Camcorder;)V

    goto/16 :goto_0

    .line 587
    :sswitch_20
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_1d

    const-string v2, "MotoCamcorder"

    const-string v3, "Camcorder:handleMessage:INACTIVITY_TIMEOUT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mStatus:I
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1300(Lcom/motorola/Camera/Camcorder;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mStatus:I
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1300(Lcom/motorola/Camera/Camcorder;)I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1f

    .line 591
    :cond_1e
    invoke-static {}, Lcom/motorola/Camera/SaveHelper;->getInstance()Lcom/motorola/Camera/SaveHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/Camera/SaveHelper;->stopService()V

    .line 592
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->mActivityReference:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 595
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$2000(Lcom/motorola/Camera/Camcorder;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/Camera/CameraGlobalTools;->resetCameraTimeout(Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 598
    :sswitch_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    invoke-virtual {v2}, Lcom/motorola/Camera/Camcorder;->launchCamera()V

    goto/16 :goto_0

    .line 601
    :sswitch_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v3}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setLastCamcorderMode(I)V

    .line 603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCameraLaunchFromCamcorderFlag(Z)V

    .line 604
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camcorder;->launchCameraInMode(I)V

    goto/16 :goto_0

    .line 607
    :sswitch_23
    const-string v2, "MotoCamcorder"

    const-string v3, "Slow Motion mode pressed in video mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->enableSlowMotion()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$3200(Lcom/motorola/Camera/Camcorder;)V

    goto/16 :goto_0

    .line 611
    :sswitch_24
    const-string v2, "MotoCamcorder"

    const-string v3, "Fast Motion mode pressed in video mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->enableFastMotion()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$3300(Lcom/motorola/Camera/Camcorder;)V

    goto/16 :goto_0

    .line 615
    :sswitch_25
    const-string v2, "MotoCamcorder"

    const-string v3, "MMS mode pressed in video mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->enableMMSMode()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$3400(Lcom/motorola/Camera/Camcorder;)V

    goto/16 :goto_0

    .line 619
    :sswitch_26
    const-string v2, "MotoCamcorder"

    const-string v3, "Normal Video pressed in video mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->enableNormalVideoMode()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$3500(Lcom/motorola/Camera/Camcorder;)V

    goto/16 :goto_0

    .line 623
    :sswitch_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v3}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setLastCamcorderMode(I)V

    .line 624
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCameraLaunchFromCamcorderFlag(Z)V

    .line 625
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camcorder;->launchCameraInMode(I)V

    goto/16 :goto_0

    .line 629
    :sswitch_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v3}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setLastCamcorderMode(I)V

    .line 630
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCameraLaunchFromCamcorderFlag(Z)V

    .line 631
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camcorder;->launchCameraInMode(I)V

    goto/16 :goto_0

    .line 637
    :sswitch_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$500(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 638
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$500(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->lock()V

    .line 641
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->setCameraParameters()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$3600(Lcom/motorola/Camera/Camcorder;)V

    .line 644
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$500(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->unlock()V

    .line 648
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$300(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateController()V

    goto/16 :goto_0

    .line 652
    :sswitch_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    const v4, 0x7f0b0067

    invoke-virtual {v3, v4}, Lcom/motorola/Camera/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/motorola/Camera/Camcorder;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camcorder;->access$1200(Lcom/motorola/Camera/Camcorder;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 655
    :sswitch_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    const v3, 0x7f0d00a0

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    .line 656
    .local v21, i:Landroid/widget/ImageView;
    const/4 v2, 0x4

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 659
    .end local v21           #i:Landroid/widget/ImageView;
    :sswitch_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$300(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->resetFilter()V

    .line 660
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/16 v3, 0xd

    if-eq v2, v3, :cond_21

    .line 661
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    const/4 v3, 0x0

    #setter for: Lcom/motorola/Camera/Camcorder;->mCaptureTimeLapse:Z
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camcorder;->access$3702(Lcom/motorola/Camera/Camcorder;Z)Z

    .line 662
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    const/4 v3, 0x0

    #setter for: Lcom/motorola/Camera/Camcorder;->mTimeBetweenTimeLapseFrameCaptureMs:I
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camcorder;->access$3802(Lcom/motorola/Camera/Camcorder;I)I

    .line 663
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentTimeLapse(I)V

    .line 665
    :cond_21
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 670
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->enableNormalVideoMode()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$3500(Lcom/motorola/Camera/Camcorder;)V

    goto/16 :goto_0

    .line 667
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->enableMMSMode()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$3400(Lcom/motorola/Camera/Camcorder;)V

    goto/16 :goto_0

    .line 673
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->enableFastMotion()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$3300(Lcom/motorola/Camera/Camcorder;)V

    goto/16 :goto_0

    .line 676
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->enableSlowMotion()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$3200(Lcom/motorola/Camera/Camcorder;)V

    goto/16 :goto_0

    .line 679
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->enableWdr()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$3900(Lcom/motorola/Camera/Camcorder;)V

    goto/16 :goto_0

    .line 682
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    const/4 v3, 0x1

    #setter for: Lcom/motorola/Camera/Camcorder;->mElapsedTimerContainerShowing:Z
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camcorder;->access$4002(Lcom/motorola/Camera/Camcorder;Z)Z

    .line 683
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    const v3, 0x7f0d000a

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/GridView;

    .line 684
    .local v27, timelapseGrid:Landroid/widget/GridView;
    new-instance v12, Lcom/motorola/Camera/Camcorder$TimeLapseGridAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    invoke-direct {v12, v2, v3}, Lcom/motorola/Camera/Camcorder$TimeLapseGridAdapter;-><init>(Lcom/motorola/Camera/Camcorder;Landroid/content/Context;)V

    .line 685
    .local v12, adapter:Lcom/motorola/Camera/Camcorder$TimeLapseGridAdapter;
    if-nez v27, :cond_22

    .line 687
    const-string v2, "MotoCamcorder"

    const-string v3, "timelapseGrid is null!!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 690
    :cond_22
    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 691
    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 693
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$300(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mElapsedTimerContainer:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/motorola/Camera/Camcorder;->access$4100(Lcom/motorola/Camera/Camcorder;)Landroid/widget/RelativeLayout;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v4}, Lcom/motorola/Camera/Camcorder;->access$300(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/Camera/View/Control/OnScreenController;->getBtnCenter()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/motorola/Camera/View/Control/OnScreenController;->createSecondaryDialog(Landroid/widget/RelativeLayout;I)V

    goto/16 :goto_0

    .line 700
    .end local v12           #adapter:Lcom/motorola/Camera/Camcorder$TimeLapseGridAdapter;
    .end local v27           #timelapseGrid:Landroid/widget/GridView;
    :sswitch_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$500(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 701
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->updateTorch()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$4200(Lcom/motorola/Camera/Camcorder;)V

    goto/16 :goto_0

    .line 704
    :sswitch_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    const v4, 0x7f0b012f

    invoke-virtual {v3, v4}, Lcom/motorola/Camera/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/motorola/Camera/Camcorder;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camcorder;->access$1200(Lcom/motorola/Camera/Camcorder;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 708
    :sswitch_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    const v4, 0x7f0b0130

    invoke-virtual {v3, v4}, Lcom/motorola/Camera/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/motorola/Camera/Camcorder;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camcorder;->access$1200(Lcom/motorola/Camera/Camcorder;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 711
    :sswitch_30
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    const v4, 0x7f0b0131

    invoke-virtual {v3, v4}, Lcom/motorola/Camera/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/motorola/Camera/Camcorder;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camcorder;->access$1200(Lcom/motorola/Camera/Camcorder;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 714
    :sswitch_31
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    .line 715
    .local v15, buffer:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mStatus:I
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1300(Lcom/motorola/Camera/Camcorder;)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 717
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mSavingProgress:Landroid/widget/ProgressBar;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$4300(Lcom/motorola/Camera/Camcorder;)Landroid/widget/ProgressBar;

    move-result-object v2

    if-eqz v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mSavingVideoText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$4400(Lcom/motorola/Camera/Camcorder;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 719
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mSavingVideoText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$4400(Lcom/motorola/Camera/Camcorder;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    rsub-int/lit8 v4, v15, 0x64

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 720
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mSavingProgress:Landroid/widget/ProgressBar;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$4300(Lcom/motorola/Camera/Camcorder;)Landroid/widget/ProgressBar;

    move-result-object v2

    rsub-int/lit8 v3, v15, 0x64

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 722
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mSavingVideo:Landroid/view/View;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$4500(Lcom/motorola/Camera/Camcorder;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mSavingVideo:Landroid/view/View;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$4500(Lcom/motorola/Camera/Camcorder;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 726
    .end local v15           #buffer:I
    :sswitch_32
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentStorageLocation()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_24

    const/4 v2, 0x1

    :goto_5
    #setter for: Lcom/motorola/Camera/Camcorder;->mIsInternalSD:Z
    invoke-static {v3, v2}, Lcom/motorola/Camera/Camcorder;->access$4602(Lcom/motorola/Camera/Camcorder;Z)Z

    .line 727
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->updateRemainCount()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1000(Lcom/motorola/Camera/Camcorder;)V

    goto/16 :goto_0

    .line 726
    :cond_24
    const/4 v2, 0x0

    goto :goto_5

    .line 733
    :sswitch_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->mActivityReference:Landroid/app/Activity;

    invoke-static {v2}, Lcom/motorola/Camera/CameraUtility;->getInstance(Landroid/content/Context;)Lcom/motorola/Camera/CameraUtility;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->mActivityReference:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mLocUtil:Lcom/motorola/Camera/LocUtility;
    invoke-static {v4}, Lcom/motorola/Camera/Camcorder;->access$4800(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/LocUtility;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v5}, Lcom/motorola/Camera/Camcorder;->access$300(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v6}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v6

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isLocationOn()Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCurrentOrientation:I
    invoke-static {v8}, Lcom/motorola/Camera/Camcorder;->access$4900(Lcom/motorola/Camera/Camcorder;)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    iget-object v9, v9, Lcom/motorola/Camera/Camcorder;->mEulaAgreeListener:Landroid/view/View$OnClickListener;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    iget-object v10, v10, Lcom/motorola/Camera/Camcorder;->mEulaCancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual/range {v2 .. v10}, Lcom/motorola/Camera/CameraUtility;->showEulaMessage(Landroid/content/Context;Lcom/motorola/Camera/LocUtility;Lcom/motorola/Camera/View/Control/OnScreenController;ZLandroid/app/Activity;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Lcom/motorola/Camera/RotateDialogController;

    move-result-object v2

    move-object/from16 v0, v31

    #setter for: Lcom/motorola/Camera/Camcorder;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v0, v2}, Lcom/motorola/Camera/Camcorder;->access$4702(Lcom/motorola/Camera/Camcorder;Lcom/motorola/Camera/RotateDialogController;)Lcom/motorola/Camera/RotateDialogController;

    .line 736
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    const/4 v3, 0x1

    #setter for: Lcom/motorola/Camera/Camcorder;->mRotateDialogShowing:Z
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camcorder;->access$5002(Lcom/motorola/Camera/Camcorder;Z)Z

    .line 737
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$300(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->secondaryDialogOpen()V

    goto/16 :goto_0

    .line 267
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_a
        0x4 -> :sswitch_f
        0x6 -> :sswitch_15
        0x8 -> :sswitch_11
        0xa -> :sswitch_12
        0xf -> :sswitch_17
        0x16 -> :sswitch_18
        0x18 -> :sswitch_19
        0x19 -> :sswitch_1a
        0x1a -> :sswitch_1e
        0x1b -> :sswitch_1f
        0x1f -> :sswitch_26
        0x21 -> :sswitch_28
        0x23 -> :sswitch_22
        0x28 -> :sswitch_27
        0x29 -> :sswitch_9
        0x2a -> :sswitch_28
        0x2b -> :sswitch_5
        0x30 -> :sswitch_20
        0x33 -> :sswitch_29
        0x34 -> :sswitch_8
        0x35 -> :sswitch_2a
        0x38 -> :sswitch_13
        0x39 -> :sswitch_7
        0x3a -> :sswitch_2
        0x3b -> :sswitch_25
        0x3c -> :sswitch_24
        0x3d -> :sswitch_23
        0x3e -> :sswitch_1
        0x3f -> :sswitch_2b
        0x40 -> :sswitch_1b
        0x45 -> :sswitch_10
        0x48 -> :sswitch_0
        0x49 -> :sswitch_21
        0x6d -> :sswitch_2d
        0x6e -> :sswitch_1c
        0x70 -> :sswitch_14
        0x71 -> :sswitch_4
        0x72 -> :sswitch_b
        0x73 -> :sswitch_b
        0x74 -> :sswitch_2c
        0x76 -> :sswitch_2e
        0x77 -> :sswitch_2f
        0x78 -> :sswitch_1d
        0x7b -> :sswitch_3
        0x80 -> :sswitch_6
        0x81 -> :sswitch_31
        0x82 -> :sswitch_32
        0x83 -> :sswitch_30
        0x86 -> :sswitch_33
        0x87 -> :sswitch_c
        0x88 -> :sswitch_d
        0x89 -> :sswitch_e
        0x8a -> :sswitch_16
    .end sparse-switch

    .line 665
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public setActivityReference(Landroid/app/Activity;)V
    .locals 0
    .parameter "a"

    .prologue
    .line 258
    iput-object p1, p0, Lcom/motorola/Camera/Camcorder$MainHandler;->mActivityReference:Landroid/app/Activity;

    .line 259
    return-void
.end method
