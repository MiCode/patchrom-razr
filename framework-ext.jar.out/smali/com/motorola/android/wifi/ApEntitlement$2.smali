.class Lcom/motorola/android/wifi/ApEntitlement$2;
.super Landroid/content/BroadcastReceiver;
.source "ApEntitlement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/android/wifi/ApEntitlement;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/wifi/ApEntitlement;


# direct methods
.method constructor <init>(Lcom/motorola/android/wifi/ApEntitlement;)V
    .locals 0
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 177
    const-string v2, "com.motorola.SPG.FEATURE_CODE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "com.motorola.SPG.STATUS"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 178
    const-string v2, "com.motorola.SPG.FEATURE_CODE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, featureCode:Ljava/lang/String;
    const-string v2, "com.motorola.SPG.STATUS"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, status:Ljava/lang/String;
    const-string v2, "MHS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 181
    iget-object v2, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    iput-boolean v4, v2, Lcom/motorola/android/wifi/ApEntitlement;->mPendingWifiEnable:Z

    .line 182
    iget-object v2, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/motorola/android/wifi/ApEntitlement;->access$400(Lcom/motorola/android/wifi/ApEntitlement;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "AP_ENABLE"

    invoke-static {v2, v3, v4}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 183
    const-string v2, "200"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 184
    const-string v2, "ApEntitlement"

    const-string v3, "onReceive MHS_PROVISIONED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const-string v2, "ApEntitlement"

    const-string v3, "SPG is Success, Do not send an Intent to trigger VZW provisioning check"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v2, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    const/4 v3, 0x3

    #setter for: Lcom/motorola/android/wifi/ApEntitlement;->mEntitlementCheckState:I
    invoke-static {v2, v3}, Lcom/motorola/android/wifi/ApEntitlement;->access$602(Lcom/motorola/android/wifi/ApEntitlement;I)I

    .line 187
    const-string v2, "ApEntitlement"

    const-string v3, "reset mEntitlementCheckState to ENTITLEMENT_CHECK_STATE_SUCCESS"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v2, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/motorola/android/wifi/ApEntitlement;->access$800(Lcom/motorola/android/wifi/ApEntitlement;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v3}, Lcom/motorola/android/wifi/ApEntitlement;->access$700(Lcom/motorola/android/wifi/ApEntitlement;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 205
    .end local v0           #featureCode:Ljava/lang/String;
    .end local v1           #status:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 190
    .restart local v0       #featureCode:Ljava/lang/String;
    .restart local v1       #status:Ljava/lang/String;
    :cond_1
    const-string v2, "ApEntitlement"

    const-string v3, "onReceive MHS_FAILED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v2, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->restoreWifiAndTurnOffAp()V
    invoke-static {v2}, Lcom/motorola/android/wifi/ApEntitlement;->access$900(Lcom/motorola/android/wifi/ApEntitlement;)V

    goto :goto_0

    .line 194
    :cond_2
    const-string v2, "ApEntitlement"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Feature code is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mPendingWifiEnable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    iget-boolean v4, v4, Lcom/motorola/android/wifi/ApEntitlement;->mPendingWifiEnable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 198
    .end local v0           #featureCode:Ljava/lang/String;
    .end local v1           #status:Ljava/lang/String;
    :cond_3
    const-string v2, "ApEntitlement"

    const-string v3, "No feature code or Status in SPG response"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v2, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    iget-boolean v2, v2, Lcom/motorola/android/wifi/ApEntitlement;->mPendingWifiEnable:Z

    if-eqz v2, :cond_0

    .line 200
    iget-object v2, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    iput-boolean v4, v2, Lcom/motorola/android/wifi/ApEntitlement;->mPendingWifiEnable:Z

    .line 201
    iget-object v2, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/motorola/android/wifi/ApEntitlement;->access$400(Lcom/motorola/android/wifi/ApEntitlement;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "AP_ENABLE"

    invoke-static {v2, v3, v4}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 202
    iget-object v2, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->restoreWifiAndTurnOffAp()V
    invoke-static {v2}, Lcom/motorola/android/wifi/ApEntitlement;->access$900(Lcom/motorola/android/wifi/ApEntitlement;)V

    goto :goto_0
.end method
