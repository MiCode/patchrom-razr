.class Lcom/motorola/Camera/CameraRoll$2;
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
    .line 160
    iput-object p1, p0, Lcom/motorola/Camera/CameraRoll$2;->this$0:Lcom/motorola/Camera/CameraRoll;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x2

    .line 164
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 165
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 169
    :pswitch_0
    iget-object v1, p0, Lcom/motorola/Camera/CameraRoll$2;->this$0:Lcom/motorola/Camera/CameraRoll;

    #calls: Lcom/motorola/Camera/CameraRoll;->updateImageData()Z
    invoke-static {v1}, Lcom/motorola/Camera/CameraRoll;->access$100(Lcom/motorola/Camera/CameraRoll;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 171
    .local v0, msgOut:Landroid/os/Message;
    iget-object v1, p0, Lcom/motorola/Camera/CameraRoll$2;->this$0:Lcom/motorola/Camera/CameraRoll;

    #getter for: Lcom/motorola/Camera/CameraRoll;->mCombinedData:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/motorola/Camera/CameraRoll;->access$200(Lcom/motorola/Camera/CameraRoll;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 173
    iput v2, v0, Landroid/os/Message;->what:I

    .line 174
    iget-object v1, p0, Lcom/motorola/Camera/CameraRoll$2;->this$0:Lcom/motorola/Camera/CameraRoll;

    #getter for: Lcom/motorola/Camera/CameraRoll;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/Camera/CameraRoll;->access$300(Lcom/motorola/Camera/CameraRoll;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 180
    .end local v0           #msgOut:Landroid/os/Message;
    :pswitch_1
    iget-object v1, p0, Lcom/motorola/Camera/CameraRoll$2;->this$0:Lcom/motorola/Camera/CameraRoll;

    #calls: Lcom/motorola/Camera/CameraRoll;->updateVideoData()Z
    invoke-static {v1}, Lcom/motorola/Camera/CameraRoll;->access$400(Lcom/motorola/Camera/CameraRoll;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 182
    .restart local v0       #msgOut:Landroid/os/Message;
    iget-object v1, p0, Lcom/motorola/Camera/CameraRoll$2;->this$0:Lcom/motorola/Camera/CameraRoll;

    #getter for: Lcom/motorola/Camera/CameraRoll;->mCombinedData:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/motorola/Camera/CameraRoll;->access$200(Lcom/motorola/Camera/CameraRoll;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 183
    iput v2, v0, Landroid/os/Message;->what:I

    .line 184
    iget-object v1, p0, Lcom/motorola/Camera/CameraRoll$2;->this$0:Lcom/motorola/Camera/CameraRoll;

    #getter for: Lcom/motorola/Camera/CameraRoll;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/Camera/CameraRoll;->access$300(Lcom/motorola/Camera/CameraRoll;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
