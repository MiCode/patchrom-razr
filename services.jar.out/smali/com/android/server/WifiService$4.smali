.class Lcom/android/server/WifiService$4;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter

    .prologue
    .line 563
    iput-object p1, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 566
    iget-object v0, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mDPM:Lcom/motorola/motepm/MotDevicePolicyManager;
    invoke-static {v0}, Lcom/android/server/WifiService;->access$1800(Lcom/android/server/WifiService;)Lcom/motorola/motepm/MotDevicePolicyManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 567
    iget-object v1, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    iget-object v0, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "mot_device_policy"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/motepm/MotDevicePolicyManager;

    #setter for: Lcom/android/server/WifiService;->mDPM:Lcom/motorola/motepm/MotDevicePolicyManager;
    invoke-static {v1, v0}, Lcom/android/server/WifiService;->access$1802(Lcom/android/server/WifiService;Lcom/motorola/motepm/MotDevicePolicyManager;)Lcom/motorola/motepm/MotDevicePolicyManager;

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mDPM:Lcom/motorola/motepm/MotDevicePolicyManager;
    invoke-static {v0}, Lcom/android/server/WifiService;->access$1800(Lcom/android/server/WifiService;)Lcom/motorola/motepm/MotDevicePolicyManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 572
    iget-object v0, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    iget-object v1, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mDPM:Lcom/motorola/motepm/MotDevicePolicyManager;
    invoke-static {v1}, Lcom/android/server/WifiService;->access$1800(Lcom/android/server/WifiService;)Lcom/motorola/motepm/MotDevicePolicyManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/motorola/motepm/MotDevicePolicyManager;->isPolicyAllowed(Landroid/content/ComponentName;I)Z

    move-result v1

    #setter for: Lcom/android/server/WifiService;->mAllowWifiPolicy:Z
    invoke-static {v0, v1}, Lcom/android/server/WifiService;->access$1902(Lcom/android/server/WifiService;Z)Z

    .line 574
    iget-object v0, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    iget-object v1, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mDPM:Lcom/motorola/motepm/MotDevicePolicyManager;
    invoke-static {v1}, Lcom/android/server/WifiService;->access$1800(Lcom/android/server/WifiService;)Lcom/motorola/motepm/MotDevicePolicyManager;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v3, v2}, Lcom/motorola/motepm/MotDevicePolicyManager;->isPolicyAllowed(Landroid/content/ComponentName;I)Z

    move-result v1

    #setter for: Lcom/android/server/WifiService;->mAllowWifiApPolicy:Z
    invoke-static {v0, v1}, Lcom/android/server/WifiService;->access$2002(Lcom/android/server/WifiService;Z)Z

    .line 577
    :cond_1
    return-void
.end method
