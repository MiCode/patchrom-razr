.class Lcom/motorola/Camera/FocusManager$MainHandler;
.super Landroid/os/Handler;
.source "FocusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/FocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/Camera/FocusManager;


# direct methods
.method private constructor <init>(Lcom/motorola/Camera/FocusManager;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/motorola/Camera/FocusManager$MainHandler;->this$0:Lcom/motorola/Camera/FocusManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/Camera/FocusManager;Lcom/motorola/Camera/FocusManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/motorola/Camera/FocusManager$MainHandler;-><init>(Lcom/motorola/Camera/FocusManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 84
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 86
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager$MainHandler;->this$0:Lcom/motorola/Camera/FocusManager;

    #calls: Lcom/motorola/Camera/FocusManager;->needAutoFocusCall()Z
    invoke-static {v0}, Lcom/motorola/Camera/FocusManager;->access$000(Lcom/motorola/Camera/FocusManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "FocusManager"

    const-string v1, "RESET_TOUCH_FOCUS message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager$MainHandler;->this$0:Lcom/motorola/Camera/FocusManager;

    #calls: Lcom/motorola/Camera/FocusManager;->cancelAutoFocus()V
    invoke-static {v0}, Lcom/motorola/Camera/FocusManager;->access$100(Lcom/motorola/Camera/FocusManager;)V

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
