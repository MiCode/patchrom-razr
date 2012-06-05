.class Landroid/net/ethernet/EthernetStateTracker$EthernetStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EthernetStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ethernet/EthernetStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EthernetStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ethernet/EthernetStateTracker;


# direct methods
.method private constructor <init>(Landroid/net/ethernet/EthernetStateTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Landroid/net/ethernet/EthernetStateTracker$EthernetStateReceiver;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/ethernet/EthernetStateTracker;Landroid/net/ethernet/EthernetStateTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 238
    invoke-direct {p0, p1}, Landroid/net/ethernet/EthernetStateTracker$EthernetStateReceiver;-><init>(Landroid/net/ethernet/EthernetStateTracker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 241
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.ethernet.NETWORK_STATE_CHANGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 242
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker$EthernetStateReceiver;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    #setter for: Landroid/net/ethernet/EthernetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2, v1}, Landroid/net/ethernet/EthernetStateTracker;->access$102(Landroid/net/ethernet/EthernetStateTracker;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    .line 244
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker$EthernetStateReceiver;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    const-string v1, "linkProperties"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/LinkProperties;

    #setter for: Landroid/net/ethernet/EthernetStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v2, v1}, Landroid/net/ethernet/EthernetStateTracker;->access$202(Landroid/net/ethernet/EthernetStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 246
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker$EthernetStateReceiver;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v1}, Landroid/net/ethernet/EthernetStateTracker;->access$200(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/LinkProperties;

    move-result-object v1

    if-nez v1, :cond_0

    .line 247
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker$EthernetStateReceiver;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    new-instance v2, Landroid/net/LinkProperties;

    invoke-direct {v2}, Landroid/net/LinkProperties;-><init>()V

    #setter for: Landroid/net/ethernet/EthernetStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v1, v2}, Landroid/net/ethernet/EthernetStateTracker;->access$202(Landroid/net/ethernet/EthernetStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 249
    :cond_0
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker$EthernetStateReceiver;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    const-string v1, "linkCapabilities"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/LinkCapabilities;

    #setter for: Landroid/net/ethernet/EthernetStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v2, v1}, Landroid/net/ethernet/EthernetStateTracker;->access$302(Landroid/net/ethernet/EthernetStateTracker;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    .line 251
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker$EthernetStateReceiver;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v1}, Landroid/net/ethernet/EthernetStateTracker;->access$300(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/LinkCapabilities;

    move-result-object v1

    if-nez v1, :cond_1

    .line 252
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker$EthernetStateReceiver;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    new-instance v2, Landroid/net/LinkCapabilities;

    invoke-direct {v2}, Landroid/net/LinkCapabilities;-><init>()V

    #setter for: Landroid/net/ethernet/EthernetStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v1, v2}, Landroid/net/ethernet/EthernetStateTracker;->access$302(Landroid/net/ethernet/EthernetStateTracker;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    .line 254
    :cond_1
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker$EthernetStateReceiver;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mCsHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/net/ethernet/EthernetStateTracker;->access$400(Landroid/net/ethernet/EthernetStateTracker;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Landroid/net/NetworkInfo;

    iget-object v4, p0, Landroid/net/ethernet/EthernetStateTracker$EthernetStateReceiver;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v4}, Landroid/net/ethernet/EthernetStateTracker;->access$100(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 256
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 264
    .end local v0           #msg:Landroid/os/Message;
    :cond_2
    :goto_0
    return-void

    .line 257
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.ethernet.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 258
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker$EthernetStateReceiver;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    const-string v1, "linkProperties"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/LinkProperties;

    #setter for: Landroid/net/ethernet/EthernetStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v2, v1}, Landroid/net/ethernet/EthernetStateTracker;->access$202(Landroid/net/ethernet/EthernetStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 260
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker$EthernetStateReceiver;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mCsHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/net/ethernet/EthernetStateTracker;->access$400(Landroid/net/ethernet/EthernetStateTracker;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    new-instance v3, Landroid/net/NetworkInfo;

    iget-object v4, p0, Landroid/net/ethernet/EthernetStateTracker$EthernetStateReceiver;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v4}, Landroid/net/ethernet/EthernetStateTracker;->access$100(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 262
    .restart local v0       #msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
