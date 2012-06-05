.class Lcom/motorola/android/wifi/ApEntitlement$1;
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
    .line 111
    iput-object p1, p0, Lcom/motorola/android/wifi/ApEntitlement$1;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 114
    const-string v13, "wifi_state"

    const/16 v14, 0xe

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 115
    .local v12, wifiAPState:I
    packed-switch v12, :pswitch_data_0

    .line 169
    :goto_0
    :pswitch_0
    return-void

    .line 117
    :pswitch_1
    const-string v13, "ApEntitlement"

    const-string v14, "WIFI Hotspot is Enabled"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/android/wifi/ApEntitlement$1;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    const/4 v14, 0x0

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->setWifiConnectNotif(Z)V
    invoke-static {v13, v14}, Lcom/motorola/android/wifi/ApEntitlement;->access$000(Lcom/motorola/android/wifi/ApEntitlement;Z)V

    .line 119
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/android/wifi/ApEntitlement$1;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    const/4 v14, 0x0

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->setWifiConnectErrorNotif(Z)V
    invoke-static {v13, v14}, Lcom/motorola/android/wifi/ApEntitlement;->access$100(Lcom/motorola/android/wifi/ApEntitlement;Z)V

    .line 120
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/android/wifi/ApEntitlement$1;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    const/4 v14, 0x1

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->setWifiReadyNotif(Z)V
    invoke-static {v13, v14}, Lcom/motorola/android/wifi/ApEntitlement;->access$200(Lcom/motorola/android/wifi/ApEntitlement;Z)V

    goto :goto_0

    .line 124
    :pswitch_2
    const-string v13, "ApEntitlement"

    const-string v14, "WIFI Hotspot is Disabled"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/android/wifi/ApEntitlement$1;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    const/4 v14, 0x0

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->setWifiConnectNotif(Z)V
    invoke-static {v13, v14}, Lcom/motorola/android/wifi/ApEntitlement;->access$000(Lcom/motorola/android/wifi/ApEntitlement;Z)V

    .line 126
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/android/wifi/ApEntitlement$1;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    const/4 v14, 0x0

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->setWifiReadyNotif(Z)V
    invoke-static {v13, v14}, Lcom/motorola/android/wifi/ApEntitlement;->access$200(Lcom/motorola/android/wifi/ApEntitlement;Z)V

    .line 130
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/android/wifi/ApEntitlement$1;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/android/wifi/ApEntitlement$1;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/motorola/android/wifi/ApEntitlement;->access$400(Lcom/motorola/android/wifi/ApEntitlement;)Landroid/content/Context;

    move-result-object v13

    const-string v15, "connectivity"

    invoke-virtual {v13, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/ConnectivityManager;

    #setter for: Lcom/motorola/android/wifi/ApEntitlement;->mCm:Landroid/net/ConnectivityManager;
    invoke-static {v14, v13}, Lcom/motorola/android/wifi/ApEntitlement;->access$302(Lcom/motorola/android/wifi/ApEntitlement;Landroid/net/ConnectivityManager;)Landroid/net/ConnectivityManager;

    .line 131
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/android/wifi/ApEntitlement$1;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->mCm:Landroid/net/ConnectivityManager;
    invoke-static {v13}, Lcom/motorola/android/wifi/ApEntitlement;->access$300(Lcom/motorola/android/wifi/ApEntitlement;)Landroid/net/ConnectivityManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v8

    .line 132
    .local v8, mUsbRegexs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/android/wifi/ApEntitlement$1;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->mCm:Landroid/net/ConnectivityManager;
    invoke-static {v13}, Lcom/motorola/android/wifi/ApEntitlement;->access$300(Lcom/motorola/android/wifi/ApEntitlement;)Landroid/net/ConnectivityManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v10

    .line 133
    .local v10, tethered:[Ljava/lang/String;
    const/4 v11, 0x0

    .line 134
    .local v11, usbIface:Ljava/lang/String;
    move-object v1, v10

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v4, v3

    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v6           #len$:I
    .local v4, i$:I
    :goto_1
    if-ge v4, v6, :cond_2

    aget-object v5, v1, v4

    .line 135
    .local v5, iface:Ljava/lang/String;
    move-object v2, v8

    .local v2, arr$:[Ljava/lang/String;
    array-length v7, v2

    .local v7, len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    :goto_2
    if-ge v3, v7, :cond_1

    aget-object v9, v2, v3

    .line 136
    .local v9, regex:Ljava/lang/String;
    invoke-virtual {v5, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 137
    move-object v11, v5

    .line 135
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 134
    .end local v9           #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_1

    .line 141
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v5           #iface:Ljava/lang/String;
    .end local v7           #len$:I
    :cond_2
    if-nez v11, :cond_3

    .line 142
    const-string v13, "ApEntitlement"

    const-string v14, "both features are unused, set entitlement value to NONE"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/android/wifi/ApEntitlement$1;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/motorola/android/wifi/ApEntitlement;->access$400(Lcom/motorola/android/wifi/ApEntitlement;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "APN_CHECK_STATE"

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 148
    :cond_3
    const-string v13, "ApEntitlement"

    const-string v14, "USB tethered, so don\'t reset entitlement value"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 157
    .end local v4           #i$:I
    .end local v8           #mUsbRegexs:[Ljava/lang/String;
    .end local v10           #tethered:[Ljava/lang/String;
    .end local v11           #usbIface:Ljava/lang/String;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/android/wifi/ApEntitlement$1;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/motorola/android/wifi/ApEntitlement;->access$400(Lcom/motorola/android/wifi/ApEntitlement;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "AP_ENABLE"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 158
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/android/wifi/ApEntitlement$1;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    const/4 v14, 0x0

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->setWifiAuthNotif(Z)V
    invoke-static {v13, v14}, Lcom/motorola/android/wifi/ApEntitlement;->access$500(Lcom/motorola/android/wifi/ApEntitlement;Z)V

    .line 159
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/android/wifi/ApEntitlement$1;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    const/4 v14, 0x0

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->setWifiConnectNotif(Z)V
    invoke-static {v13, v14}, Lcom/motorola/android/wifi/ApEntitlement;->access$000(Lcom/motorola/android/wifi/ApEntitlement;Z)V

    .line 160
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/android/wifi/ApEntitlement$1;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    const/4 v14, 0x1

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->setWifiConnectNotif(Z)V
    invoke-static {v13, v14}, Lcom/motorola/android/wifi/ApEntitlement;->access$000(Lcom/motorola/android/wifi/ApEntitlement;Z)V

    goto/16 :goto_0

    .line 164
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/android/wifi/ApEntitlement$1;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    const/4 v14, 0x0

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->setWifiConnectNotif(Z)V
    invoke-static {v13, v14}, Lcom/motorola/android/wifi/ApEntitlement;->access$000(Lcom/motorola/android/wifi/ApEntitlement;Z)V

    .line 165
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/android/wifi/ApEntitlement$1;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    const/4 v14, 0x0

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->setWifiConnectErrorNotif(Z)V
    invoke-static {v13, v14}, Lcom/motorola/android/wifi/ApEntitlement;->access$100(Lcom/motorola/android/wifi/ApEntitlement;Z)V

    .line 166
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/android/wifi/ApEntitlement$1;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    const/4 v14, 0x1

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->setWifiConnectErrorNotif(Z)V
    invoke-static {v13, v14}, Lcom/motorola/android/wifi/ApEntitlement;->access$100(Lcom/motorola/android/wifi/ApEntitlement;Z)V

    goto/16 :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method
