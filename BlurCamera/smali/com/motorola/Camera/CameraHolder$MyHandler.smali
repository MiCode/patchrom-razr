.class Lcom/motorola/Camera/CameraHolder$MyHandler;
.super Landroid/os/Handler;
.source "CameraHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/CameraHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/Camera/CameraHolder;


# direct methods
.method constructor <init>(Lcom/motorola/Camera/CameraHolder;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/motorola/Camera/CameraHolder$MyHandler;->this$0:Lcom/motorola/Camera/CameraHolder;

    .line 72
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 73
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 77
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 92
    :goto_0
    return-void

    .line 79
    :pswitch_0
    iget-object v1, p0, Lcom/motorola/Camera/CameraHolder$MyHandler;->this$0:Lcom/motorola/Camera/CameraHolder;

    monitor-enter v1

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/motorola/Camera/CameraHolder$MyHandler;->this$0:Lcom/motorola/Camera/CameraHolder;

    #getter for: Lcom/motorola/Camera/CameraHolder;->mUsers:I
    invoke-static {v0}, Lcom/motorola/Camera/CameraHolder;->access$000(Lcom/motorola/Camera/CameraHolder;)I

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/motorola/Camera/CameraHolder$MyHandler;->this$0:Lcom/motorola/Camera/CameraHolder;

    #calls: Lcom/motorola/Camera/CameraHolder;->releaseCamera()V
    invoke-static {v0}, Lcom/motorola/Camera/CameraHolder;->access$100(Lcom/motorola/Camera/CameraHolder;)V

    .line 89
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
