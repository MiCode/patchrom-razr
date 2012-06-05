.class Lcom/motorola/motepm/MotDevicePolicyManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "MotDevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/motepm/MotDevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;


# direct methods
.method constructor <init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 4050
    iput-object p1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$2;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

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

    .line 4053
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4054
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4056
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$2;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    #calls: Lcom/motorola/motepm/MotDevicePolicyManagerService;->isPopImapEmailAllowed(Landroid/content/ComponentName;)Z
    invoke-static {v1, v3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->access$000(Lcom/motorola/motepm/MotDevicePolicyManagerService;Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$2;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    #calls: Lcom/motorola/motepm/MotDevicePolicyManagerService;->isConsumerEmailAllowed(Landroid/content/ComponentName;)Z
    invoke-static {v1, v3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->access$100(Lcom/motorola/motepm/MotDevicePolicyManagerService;Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4059
    :cond_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$2;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    const/4 v2, 0x1

    #calls: Lcom/motorola/motepm/MotDevicePolicyManagerService;->blockEmailPort(Z)Z
    invoke-static {v1, v2}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->access$200(Lcom/motorola/motepm/MotDevicePolicyManagerService;Z)Z

    .line 4062
    :cond_1
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$2;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    invoke-virtual {v1, v3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getManualDataSyncinRoaming(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4063
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$2;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    #getter for: Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPhoneStateListener:Lcom/motorola/motepm/MotEPMPhoneStateListener;
    invoke-static {v1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->access$300(Lcom/motorola/motepm/MotDevicePolicyManagerService;)Lcom/motorola/motepm/MotEPMPhoneStateListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/motepm/MotEPMPhoneStateListener;->registerForPhoneStateIntents()V

    .line 4067
    :cond_2
    return-void
.end method
