.class final Lcom/motorola/Camera/Camera$MotoEnvCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$EnvDetectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MotoEnvCallback"
.end annotation


# static fields
.field private static final CAF_STATUS_IDLE:I = 0x1

.field private static final CAF_STATUS_RUNNING:I = 0x0

.field private static final CAF_STATUS_SUSPENDED:I = 0x2

.field private static final ENV_DETECT_CAF_STATUS:I = 0x2

.field private static final ENV_DETECT_LOWLIGHT:I = 0x0

.field private static final ENV_DETECT_SHAKE:I = 0x1


# instance fields
.field public mLowLight:Z

.field final synthetic this$0:Lcom/motorola/Camera/Camera;


# direct methods
.method private constructor <init>(Lcom/motorola/Camera/Camera;)V
    .locals 1
    .parameter

    .prologue
    .line 5685
    iput-object p1, p0, Lcom/motorola/Camera/Camera$MotoEnvCallback;->this$0:Lcom/motorola/Camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5697
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/Camera/Camera$MotoEnvCallback;->mLowLight:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/Camera/Camera;Lcom/motorola/Camera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5685
    invoke-direct {p0, p1}, Lcom/motorola/Camera/Camera$MotoEnvCallback;-><init>(Lcom/motorola/Camera/Camera;)V

    return-void
.end method


# virtual methods
.method public onEnvDetectEvent(Ljava/lang/Integer;Ljava/lang/Integer;Landroid/hardware/Camera;)V
    .locals 4
    .parameter "event"
    .parameter "eventdata"
    .parameter "camera"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 5702
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 5703
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_4

    .line 5704
    iget-object v2, p0, Lcom/motorola/Camera/Camera$MotoEnvCallback;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v2, v2, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v2, v1, v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->showHandshake(ZZ)V

    .line 5710
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_2

    .line 5711
    iget-boolean v3, p0, Lcom/motorola/Camera/Camera$MotoEnvCallback;->mLowLight:Z

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_5

    move v2, v0

    :goto_1
    if-eq v3, v2, :cond_2

    .line 5712
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_6

    :goto_2
    iput-boolean v0, p0, Lcom/motorola/Camera/Camera$MotoEnvCallback;->mLowLight:Z

    .line 5714
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera$MotoEnvCallback;->mLowLight:Z

    if-eqz v0, :cond_1

    .line 5715
    iget-object v0, p0, Lcom/motorola/Camera/Camera$MotoEnvCallback;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    sget-object v1, Lcom/motorola/Camera/CameraGlobalType$CAF_STATUS;->IDLE:Lcom/motorola/Camera/CameraGlobalType$CAF_STATUS;

    iget-boolean v2, p0, Lcom/motorola/Camera/Camera$MotoEnvCallback;->mLowLight:Z

    invoke-virtual {v0, v1, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateCafStatus(Lcom/motorola/Camera/CameraGlobalType$CAF_STATUS;Z)V

    .line 5716
    iget-object v0, p0, Lcom/motorola/Camera/Camera$MotoEnvCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$4800(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 5719
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/Camera$MotoEnvCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mFocusManager:Lcom/motorola/Camera/FocusManager;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$4100(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/FocusManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/motorola/Camera/Camera$MotoEnvCallback;->mLowLight:Z

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/FocusManager;->onLowLight(Z)V

    .line 5720
    iget-object v0, p0, Lcom/motorola/Camera/Camera$MotoEnvCallback;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->setFocusModeParameters()V
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$12500(Lcom/motorola/Camera/Camera;)V

    .line 5724
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 5725
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 5736
    const-string v0, "MotoCamera"

    const-string v1, "onEnvDetectEvent() : unknown status received"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5739
    :cond_3
    :goto_3
    return-void

    .line 5706
    :cond_4
    iget-object v2, p0, Lcom/motorola/Camera/Camera$MotoEnvCallback;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v2, v2, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v2, v1, v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideHandshake(ZZ)V

    goto :goto_0

    :cond_5
    move v2, v1

    .line 5711
    goto :goto_1

    :cond_6
    move v0, v1

    .line 5712
    goto :goto_2

    .line 5727
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/Camera/Camera$MotoEnvCallback;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    sget-object v1, Lcom/motorola/Camera/CameraGlobalType$CAF_STATUS;->IDLE:Lcom/motorola/Camera/CameraGlobalType$CAF_STATUS;

    iget-boolean v2, p0, Lcom/motorola/Camera/Camera$MotoEnvCallback;->mLowLight:Z

    invoke-virtual {v0, v1, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateCafStatus(Lcom/motorola/Camera/CameraGlobalType$CAF_STATUS;Z)V

    goto :goto_3

    .line 5730
    :pswitch_1
    iget-object v0, p0, Lcom/motorola/Camera/Camera$MotoEnvCallback;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    sget-object v1, Lcom/motorola/Camera/CameraGlobalType$CAF_STATUS;->RUNNING:Lcom/motorola/Camera/CameraGlobalType$CAF_STATUS;

    iget-boolean v2, p0, Lcom/motorola/Camera/Camera$MotoEnvCallback;->mLowLight:Z

    invoke-virtual {v0, v1, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateCafStatus(Lcom/motorola/Camera/CameraGlobalType$CAF_STATUS;Z)V

    goto :goto_3

    .line 5733
    :pswitch_2
    iget-object v0, p0, Lcom/motorola/Camera/Camera$MotoEnvCallback;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    sget-object v1, Lcom/motorola/Camera/CameraGlobalType$CAF_STATUS;->SUSPEND:Lcom/motorola/Camera/CameraGlobalType$CAF_STATUS;

    iget-boolean v2, p0, Lcom/motorola/Camera/Camera$MotoEnvCallback;->mLowLight:Z

    invoke-virtual {v0, v1, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateCafStatus(Lcom/motorola/Camera/CameraGlobalType$CAF_STATUS;Z)V

    goto :goto_3

    .line 5725
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
