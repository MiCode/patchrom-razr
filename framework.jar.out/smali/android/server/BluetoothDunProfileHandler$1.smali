.class Landroid/server/BluetoothDunProfileHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothDunProfileHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothDunProfileHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothDunProfileHandler;


# direct methods
.method constructor <init>(Landroid/server/BluetoothDunProfileHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Landroid/server/BluetoothDunProfileHandler$1;->this$0:Landroid/server/BluetoothDunProfileHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    .line 192
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 194
    const-string v5, "android.bluetooth.adapter.extra.STATE"

    const/high16 v6, -0x8000

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 196
    .local v4, state:I
    packed-switch v4, :pswitch_data_0

    .line 242
    .end local v4           #state:I
    :cond_0
    :goto_0
    return-void

    .line 198
    .restart local v4       #state:I
    :pswitch_0
    iget-object v5, p0, Landroid/server/BluetoothDunProfileHandler$1;->this$0:Landroid/server/BluetoothDunProfileHandler;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v6

    #setter for: Landroid/server/BluetoothDunProfileHandler;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v5, v6}, Landroid/server/BluetoothDunProfileHandler;->access$002(Landroid/server/BluetoothDunProfileHandler;Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/BluetoothAdapter;

    .line 199
    iget-object v5, p0, Landroid/server/BluetoothDunProfileHandler$1;->this$0:Landroid/server/BluetoothDunProfileHandler;

    #calls: Landroid/server/BluetoothDunProfileHandler;->onBluetoothEnable()V
    invoke-static {v5}, Landroid/server/BluetoothDunProfileHandler;->access$100(Landroid/server/BluetoothDunProfileHandler;)V

    goto :goto_0

    .line 202
    :pswitch_1
    iget-object v5, p0, Landroid/server/BluetoothDunProfileHandler$1;->this$0:Landroid/server/BluetoothDunProfileHandler;

    #calls: Landroid/server/BluetoothDunProfileHandler;->onBluetoothDisable()V
    invoke-static {v5}, Landroid/server/BluetoothDunProfileHandler;->access$200(Landroid/server/BluetoothDunProfileHandler;)V

    goto :goto_0

    .line 205
    .end local v4           #state:I
    :cond_1
    const-string v5, "com.motorola.intent.action.ATCMD_DUN_UP"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "com.motorola.intent.action.ATCMD_DUN_DOWN"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 207
    :cond_2
    const-string v5, "DevType"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, modemType:Ljava/lang/String;
    const-string v5, "BTDUN"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 210
    iget-object v6, p0, Landroid/server/BluetoothDunProfileHandler$1;->this$0:Landroid/server/BluetoothDunProfileHandler;

    const-string v5, "com.motorola.intent.action.ATCMD_DUN_UP"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    :goto_1
    #setter for: Landroid/server/BluetoothDunProfileHandler;->mUsbDunConnected:Z
    invoke-static {v6, v5}, Landroid/server/BluetoothDunProfileHandler;->access$302(Landroid/server/BluetoothDunProfileHandler;Z)Z

    .line 213
    :cond_3
    const-string v5, "BTDUN"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "com.motorola.intent.action.ATCMD_DUN_DOWN"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 214
    iget-object v5, p0, Landroid/server/BluetoothDunProfileHandler$1;->this$0:Landroid/server/BluetoothDunProfileHandler;

    const-string v6, "Received ATCMD_DUN_DOWN Action for BT"

    #calls: Landroid/server/BluetoothDunProfileHandler;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Landroid/server/BluetoothDunProfileHandler;->access$400(Landroid/server/BluetoothDunProfileHandler;Ljava/lang/String;)V

    .line 215
    iget-object v5, p0, Landroid/server/BluetoothDunProfileHandler$1;->this$0:Landroid/server/BluetoothDunProfileHandler;

    const-string v6, "Stopping AtCmd Service"

    #calls: Landroid/server/BluetoothDunProfileHandler;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Landroid/server/BluetoothDunProfileHandler;->access$400(Landroid/server/BluetoothDunProfileHandler;Ljava/lang/String;)V

    .line 216
    iget-object v5, p0, Landroid/server/BluetoothDunProfileHandler$1;->this$0:Landroid/server/BluetoothDunProfileHandler;

    #calls: Landroid/server/BluetoothDunProfileHandler;->stopAtCmdService()V
    invoke-static {v5}, Landroid/server/BluetoothDunProfileHandler;->access$500(Landroid/server/BluetoothDunProfileHandler;)V

    goto :goto_0

    .line 210
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 219
    .end local v1           #modemType:Ljava/lang/String;
    :cond_5
    const-string v5, "com.motorola.app.action.INTERNET_SHARING_ALLOWED_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 221
    new-instance v3, Lcom/motorola/motepm/ReportResultToEPM;

    invoke-direct {v3, p1, p2}, Lcom/motorola/motepm/ReportResultToEPM;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 222
    .local v3, resultReport:Lcom/motorola/motepm/ReportResultToEPM;
    if-nez v3, :cond_6

    .line 223
    const-string v5, "BluetoothDunProfileHandler"

    const-string v6, "failed to get an instance of ReportResult"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 226
    :cond_6
    const/4 v2, -0x1

    .line 227
    .local v2, resultCode:I
    invoke-static {}, Landroid/server/BluetoothDunProfileHandler;->access$600()Lcom/motorola/motepm/MotDevicePolicyManager;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 228
    iget-object v5, p0, Landroid/server/BluetoothDunProfileHandler$1;->this$0:Landroid/server/BluetoothDunProfileHandler;

    invoke-static {}, Landroid/server/BluetoothDunProfileHandler;->access$600()Lcom/motorola/motepm/MotDevicePolicyManager;

    move-result-object v6

    const/4 v7, 0x7

    invoke-virtual {v6, v8, v7}, Lcom/motorola/motepm/MotDevicePolicyManager;->isPolicyAllowed(Landroid/content/ComponentName;I)Z

    move-result v6

    #setter for: Landroid/server/BluetoothDunProfileHandler;->mPolicyAllowDun:Z
    invoke-static {v5, v6}, Landroid/server/BluetoothDunProfileHandler;->access$702(Landroid/server/BluetoothDunProfileHandler;Z)Z

    .line 229
    iget-object v5, p0, Landroid/server/BluetoothDunProfileHandler$1;->this$0:Landroid/server/BluetoothDunProfileHandler;

    #getter for: Landroid/server/BluetoothDunProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v5}, Landroid/server/BluetoothDunProfileHandler;->access$800(Landroid/server/BluetoothDunProfileHandler;)Landroid/server/BluetoothService;

    move-result-object v5

    invoke-virtual {v5}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 230
    iget-object v5, p0, Landroid/server/BluetoothDunProfileHandler$1;->this$0:Landroid/server/BluetoothDunProfileHandler;

    #getter for: Landroid/server/BluetoothDunProfileHandler;->mPolicyAllowDun:Z
    invoke-static {v5}, Landroid/server/BluetoothDunProfileHandler;->access$700(Landroid/server/BluetoothDunProfileHandler;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 231
    const-string v5, "ctl.start"

    const-string v6, "dund_dialup"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_7
    :goto_2
    const/4 v2, 0x0

    .line 239
    :cond_8
    invoke-virtual {v3, v2, v8}, Lcom/motorola/motepm/ReportResultToEPM;->reportResultCode(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 233
    :cond_9
    iget-object v5, p0, Landroid/server/BluetoothDunProfileHandler$1;->this$0:Landroid/server/BluetoothDunProfileHandler;

    #calls: Landroid/server/BluetoothDunProfileHandler;->onDunDisconnected()V
    invoke-static {v5}, Landroid/server/BluetoothDunProfileHandler;->access$900(Landroid/server/BluetoothDunProfileHandler;)V

    .line 234
    const-string v5, "ctl.stop"

    const-string v6, "dund_dialup"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 196
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
