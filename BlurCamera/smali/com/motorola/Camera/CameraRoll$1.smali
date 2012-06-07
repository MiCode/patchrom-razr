.class Lcom/motorola/Camera/CameraRoll$1;
.super Landroid/os/Handler;
.source "CameraRoll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/Camera/CameraRoll;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/Camera/CameraRoll;


# direct methods
.method constructor <init>(Lcom/motorola/Camera/CameraRoll;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/motorola/Camera/CameraRoll$1;->this$0:Lcom/motorola/Camera/CameraRoll;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 128
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 130
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/Camera/CameraRoll$1;->this$0:Lcom/motorola/Camera/CameraRoll;

    #getter for: Lcom/motorola/Camera/CameraRoll;->mListener:Lcom/motorola/Camera/CameraRoll$CameraRollUpdate;
    invoke-static {v0}, Lcom/motorola/Camera/CameraRoll;->access$000(Lcom/motorola/Camera/CameraRoll;)Lcom/motorola/Camera/CameraRoll$CameraRollUpdate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    sget-boolean v0, Lcom/motorola/Camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "CameraRoll"

    const-string v1, "onUpdate data sent to the listener: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/CameraRoll$1;->this$0:Lcom/motorola/Camera/CameraRoll;

    #getter for: Lcom/motorola/Camera/CameraRoll;->mListener:Lcom/motorola/Camera/CameraRoll$CameraRollUpdate;
    invoke-static {v0}, Lcom/motorola/Camera/CameraRoll;->access$000(Lcom/motorola/Camera/CameraRoll;)Lcom/motorola/Camera/CameraRoll$CameraRollUpdate;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-interface {v1, v0}, Lcom/motorola/Camera/CameraRoll$CameraRollUpdate;->onUpdateData(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
