.class Landroid/server/BluetoothInputProfileHandler$1;
.super Landroid/os/Handler;
.source "BluetoothInputProfileHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothInputProfileHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothInputProfileHandler;


# direct methods
.method constructor <init>(Landroid/server/BluetoothInputProfileHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Landroid/server/BluetoothInputProfileHandler$1;->this$0:Landroid/server/BluetoothInputProfileHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 58
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 59
    .restart local v0       #device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    .line 61
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 62
    .local v1, prevState:I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 63
    .local v2, state:I
    const-string v3, "BluetoothInputProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prevstate was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", curstate is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    if-eq v2, v1, :cond_0

    .line 67
    iget-object v3, p0, Landroid/server/BluetoothInputProfileHandler$1;->this$0:Landroid/server/BluetoothInputProfileHandler;

    #getter for: Landroid/server/BluetoothInputProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v3}, Landroid/server/BluetoothInputProfileHandler;->access$000(Landroid/server/BluetoothInputProfileHandler;)Landroid/server/BluetoothService;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v0, v4, v2, v1}, Landroid/server/BluetoothService;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
