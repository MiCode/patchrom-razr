.class Lcom/motorola/android/server/TetherEntitlement$StateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TetherEntitlement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/server/TetherEntitlement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/server/TetherEntitlement;


# direct methods
.method private constructor <init>(Lcom/motorola/android/server/TetherEntitlement;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/android/server/TetherEntitlement;Lcom/motorola/android/server/TetherEntitlement$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;-><init>(Lcom/motorola/android/server/TetherEntitlement;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22
    .parameter "content"
    .parameter "intent"

    .prologue
    .line 90
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, action:Ljava/lang/String;
    const-string v19, "motorola.intent.ENTITLEMENT_STATE_CHANGE"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 93
    .local v7, extras:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v19, v0

    const-string v20, "entitlement_state"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v20

    #setter for: Lcom/motorola/android/server/TetherEntitlement;->mEntitlementCheckState:I
    invoke-static/range {v19 .. v20}, Lcom/motorola/android/server/TetherEntitlement;->access$102(Lcom/motorola/android/server/TetherEntitlement;I)I

    .line 94
    const-string v19, "TetherEntitlement"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Recvd ENTITLEMENT_CHECK_STATE_CHANGED, state="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v21, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mEntitlementCheckState:I
    invoke-static/range {v21 .. v21}, Lcom/motorola/android/server/TetherEntitlement;->access$100(Lcom/motorola/android/server/TetherEntitlement;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v19, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$200(Lcom/motorola/android/server/TetherEntitlement;)Landroid/content/Context;

    move-result-object v19

    const-string v20, "connectivity"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 97
    .local v5, cm:Landroid/net/ConnectivityManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v19, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mEntitlementCheckState:I
    invoke-static/range {v19 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$100(Lcom/motorola/android/server/TetherEntitlement;)I

    move-result v19

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v19, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mPendingTetherEnable:Z
    invoke-static/range {v19 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$300(Lcom/motorola/android/server/TetherEntitlement;)Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Lcom/motorola/android/server/TetherEntitlement;->mPendingTetherEnable:Z
    invoke-static/range {v19 .. v20}, Lcom/motorola/android/server/TetherEntitlement;->access$302(Lcom/motorola/android/server/TetherEntitlement;Z)Z

    .line 100
    const-string v19, "TetherEntitlement"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "FAILURE case value of mLastIfaceEnable is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v21, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mLastIfaceEnable:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/motorola/android/server/TetherEntitlement;->access$400(Lcom/motorola/android/server/TetherEntitlement;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v19, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$200(Lcom/motorola/android/server/TetherEntitlement;)Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "TETHER_PENDING"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v19, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mLastIfaceEnable:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$400(Lcom/motorola/android/server/TetherEntitlement;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthNotif(Z)V
    invoke-static/range {v19 .. v20}, Lcom/motorola/android/server/TetherEntitlement;->access$500(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthErrorNotif(Z)V
    invoke-static/range {v19 .. v20}, Lcom/motorola/android/server/TetherEntitlement;->access$600(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 213
    .end local v5           #cm:Landroid/net/ConnectivityManager;
    .end local v7           #extras:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 106
    .restart local v5       #cm:Landroid/net/ConnectivityManager;
    .restart local v7       #extras:Landroid/os/Bundle;
    :cond_1
    const-string v19, "TetherEntitlement"

    const-string v20, "Check if failure was received for Periodic case"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v15

    .line 108
    .local v15, tethered:[Ljava/lang/String;
    move-object v3, v15

    .local v3, arr$:[Ljava/lang/String;
    array-length v11, v3

    .local v11, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    move v9, v8

    .end local v3           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v11           #len$:I
    .local v9, i$:I
    :goto_1
    if-ge v9, v11, :cond_0

    aget-object v10, v3, v9

    .line 109
    .local v10, iface:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/android/server/TetherEntitlement;->access$700()[Ljava/lang/String;

    move-result-object v4

    .local v4, arr$:[Ljava/lang/String;
    array-length v12, v4

    .local v12, len$:I
    const/4 v8, 0x0

    .end local v9           #i$:I
    .restart local v8       #i$:I
    :goto_2
    if-ge v8, v12, :cond_3

    aget-object v13, v4, v8

    .line 110
    .local v13, regex:Ljava/lang/String;
    invoke-virtual {v10, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 111
    invoke-virtual {v5, v10}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthNotif(Z)V
    invoke-static/range {v19 .. v20}, Lcom/motorola/android/server/TetherEntitlement;->access$500(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthErrorNotif(Z)V
    invoke-static/range {v19 .. v20}, Lcom/motorola/android/server/TetherEntitlement;->access$600(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 109
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 108
    .end local v13           #regex:Ljava/lang/String;
    :cond_3
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    .end local v8           #i$:I
    .restart local v9       #i$:I
    goto :goto_1

    .line 118
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v9           #i$:I
    .end local v10           #iface:Ljava/lang/String;
    .end local v12           #len$:I
    .end local v15           #tethered:[Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v19, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mEntitlementCheckState:I
    invoke-static/range {v19 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$100(Lcom/motorola/android/server/TetherEntitlement;)I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v19, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mPendingTetherEnable:Z
    invoke-static/range {v19 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$300(Lcom/motorola/android/server/TetherEntitlement;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 120
    const-string v19, "TetherEntitlement"

    const-string v20, "State ENTITLEMENT_CHECK_STATE_SUCCESS"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string v19, "TetherEntitlement"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "SUCCESS case value of mLastIfaceEnable is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v21, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mLastIfaceEnable:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/motorola/android/server/TetherEntitlement;->access$400(Lcom/motorola/android/server/TetherEntitlement;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v19, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$200(Lcom/motorola/android/server/TetherEntitlement;)Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "TETHER_PENDING"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Lcom/motorola/android/server/TetherEntitlement;->mPendingTetherEnable:Z
    invoke-static/range {v19 .. v20}, Lcom/motorola/android/server/TetherEntitlement;->access$302(Lcom/motorola/android/server/TetherEntitlement;Z)Z

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v19, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mLastIfaceEnable:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$400(Lcom/motorola/android/server/TetherEntitlement;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/net/ConnectivityManager;->tether(Ljava/lang/String;)I

    move-result v19

    if-eqz v19, :cond_5

    .line 125
    const-string v19, "TetherEntitlement"

    const-string v20, "Received error while starting Tethering"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthNotif(Z)V
    invoke-static/range {v19 .. v20}, Lcom/motorola/android/server/TetherEntitlement;->access$500(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherConnectNotif(Z)V
    invoke-static/range {v19 .. v20}, Lcom/motorola/android/server/TetherEntitlement;->access$800(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherConnectErrorNotif(Z)V
    invoke-static/range {v19 .. v20}, Lcom/motorola/android/server/TetherEntitlement;->access$900(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherConnectErrorNotif(Z)V
    invoke-static/range {v19 .. v20}, Lcom/motorola/android/server/TetherEntitlement;->access$900(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthErrorNotif(Z)V
    invoke-static/range {v19 .. v20}, Lcom/motorola/android/server/TetherEntitlement;->access$600(Lcom/motorola/android/server/TetherEntitlement;Z)V

    goto/16 :goto_0

    .line 132
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthNotif(Z)V
    invoke-static/range {v19 .. v20}, Lcom/motorola/android/server/TetherEntitlement;->access$500(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthErrorNotif(Z)V
    invoke-static/range {v19 .. v20}, Lcom/motorola/android/server/TetherEntitlement;->access$600(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherConnectNotif(Z)V
    invoke-static/range {v19 .. v20}, Lcom/motorola/android/server/TetherEntitlement;->access$800(Lcom/motorola/android/server/TetherEntitlement;Z)V

    goto/16 :goto_0

    .line 137
    :cond_6
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v15

    .line 138
    .restart local v15       #tethered:[Ljava/lang/String;
    move-object v3, v15

    .restart local v3       #arr$:[Ljava/lang/String;
    array-length v11, v3

    .restart local v11       #len$:I
    const/4 v8, 0x0

    .restart local v8       #i$:I
    move v9, v8

    .end local v3           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v11           #len$:I
    .restart local v9       #i$:I
    :goto_3
    if-ge v9, v11, :cond_0

    aget-object v10, v3, v9

    .line 139
    .restart local v10       #iface:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/android/server/TetherEntitlement;->access$700()[Ljava/lang/String;

    move-result-object v4

    .restart local v4       #arr$:[Ljava/lang/String;
    array-length v12, v4

    .restart local v12       #len$:I
    const/4 v8, 0x0

    .end local v9           #i$:I
    .restart local v8       #i$:I
    :goto_4
    if-ge v8, v12, :cond_8

    aget-object v13, v4, v8

    .line 140
    .restart local v13       #regex:Ljava/lang/String;
    invoke-virtual {v10, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthNotif(Z)V
    invoke-static/range {v19 .. v20}, Lcom/motorola/android/server/TetherEntitlement;->access$500(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherReadyNotif(Z)V
    invoke-static/range {v19 .. v20}, Lcom/motorola/android/server/TetherEntitlement;->access$1000(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 139
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 138
    .end local v13           #regex:Ljava/lang/String;
    :cond_8
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    .end local v8           #i$:I
    .restart local v9       #i$:I
    goto :goto_3

    .line 147
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v9           #i$:I
    .end local v10           #iface:Ljava/lang/String;
    .end local v12           #len$:I
    .end local v15           #tethered:[Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v19, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mEntitlementCheckState:I
    invoke-static/range {v19 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$100(Lcom/motorola/android/server/TetherEntitlement;)I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 148
    const-string v19, "TetherEntitlement"

    const-string v20, "ENTITLEMENT_CHECK_STATE_VERIFYING,received"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v19, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mPendingTetherEnable:Z
    invoke-static/range {v19 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$300(Lcom/motorola/android/server/TetherEntitlement;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 150
    const-string v19, "TetherEntitlement"

    const-string v20, "ENTITLEMENT_CHECK_STATE_VERIFYING, mPendingTetherEnable"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthErrorNotif(Z)V
    invoke-static/range {v19 .. v20}, Lcom/motorola/android/server/TetherEntitlement;->access$600(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthNotif(Z)V
    invoke-static/range {v19 .. v20}, Lcom/motorola/android/server/TetherEntitlement;->access$500(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v19, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$200(Lcom/motorola/android/server/TetherEntitlement;)Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "TETHER_PENDING"

    const/16 v21, 0x1

    invoke-static/range {v19 .. v21}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 155
    :cond_a
    const-string v19, "TetherEntitlement"

    const-string v20, "ENTITLEMENT_CHECK_STATE_VERIFYING, not mPendingTetherEnable"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v15

    .line 157
    .restart local v15       #tethered:[Ljava/lang/String;
    move-object v3, v15

    .restart local v3       #arr$:[Ljava/lang/String;
    array-length v11, v3

    .restart local v11       #len$:I
    const/4 v8, 0x0

    .restart local v8       #i$:I
    move v9, v8

    .end local v3           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v11           #len$:I
    .restart local v9       #i$:I
    :goto_5
    if-ge v9, v11, :cond_0

    aget-object v10, v3, v9

    .line 158
    .restart local v10       #iface:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/android/server/TetherEntitlement;->access$700()[Ljava/lang/String;

    move-result-object v4

    .restart local v4       #arr$:[Ljava/lang/String;
    array-length v12, v4

    .restart local v12       #len$:I
    const/4 v8, 0x0

    .end local v9           #i$:I
    .restart local v8       #i$:I
    :goto_6
    if-ge v8, v12, :cond_c

    aget-object v13, v4, v8

    .line 159
    .restart local v13       #regex:Ljava/lang/String;
    invoke-virtual {v10, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherReadyNotif(Z)V
    invoke-static/range {v19 .. v20}, Lcom/motorola/android/server/TetherEntitlement;->access$1000(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthNotif(Z)V
    invoke-static/range {v19 .. v20}, Lcom/motorola/android/server/TetherEntitlement;->access$500(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 158
    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 157
    .end local v13           #regex:Ljava/lang/String;
    :cond_c
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    .end local v8           #i$:I
    .restart local v9       #i$:I
    goto :goto_5

    .line 167
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v5           #cm:Landroid/net/ConnectivityManager;
    .end local v7           #extras:Landroid/os/Bundle;
    .end local v9           #i$:I
    .end local v10           #iface:Ljava/lang/String;
    .end local v12           #len$:I
    .end local v15           #tethered:[Ljava/lang/String;
    :cond_d
    const-string v19, "android.net.conn.TETHER_STATE_CHANGED"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 168
    const/16 v18, 0x0

    .line 169
    .local v18, usbTethered:Z
    const/16 v17, 0x0

    .line 170
    .local v17, usbErrored:Z
    const-string v19, "activeArray"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 172
    .local v16, tethered:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v19, "erroredArray"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 174
    .local v6, errored:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 175
    .local v14, s:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/android/server/TetherEntitlement;->access$700()[Ljava/lang/String;

    move-result-object v3

    .restart local v3       #arr$:[Ljava/lang/String;
    array-length v11, v3

    .restart local v11       #len$:I
    const/4 v9, 0x0

    .restart local v9       #i$:I
    :goto_7
    if-ge v9, v11, :cond_e

    aget-object v13, v3, v9

    .line 176
    .restart local v13       #regex:Ljava/lang/String;
    invoke-virtual {v14, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_f

    const/16 v18, 0x1

    .line 175
    :cond_f
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 179
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v9           #i$:I
    .end local v11           #len$:I
    .end local v13           #regex:Ljava/lang/String;
    .end local v14           #s:Ljava/lang/String;
    :cond_10
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_11
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_13

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 180
    .restart local v14       #s:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/android/server/TetherEntitlement;->access$700()[Ljava/lang/String;

    move-result-object v3

    .restart local v3       #arr$:[Ljava/lang/String;
    array-length v11, v3

    .restart local v11       #len$:I
    const/4 v9, 0x0

    .restart local v9       #i$:I
    :goto_8
    if-ge v9, v11, :cond_11

    aget-object v13, v3, v9

    .line 181
    .restart local v13       #regex:Ljava/lang/String;
    invoke-virtual {v14, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_12

    const/16 v17, 0x1

    .line 180
    :cond_12
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 184
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v9           #i$:I
    .end local v11           #len$:I
    .end local v13           #regex:Ljava/lang/String;
    .end local v14           #s:Ljava/lang/String;
    :cond_13
    const-string v19, "TetherEntitlement"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "usbTethered:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",usbErrored:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v19, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mPendingTetherEnable:Z
    invoke-static/range {v19 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$300(Lcom/motorola/android/server/TetherEntitlement;)Z

    move-result v19

    if-eqz v19, :cond_14

    if-nez v18, :cond_14

    if-nez v17, :cond_14

    .line 186
    const-string v19, "TetherEntitlement"

    const-string v20, "Ignoring this since tether is pending"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 191
    :cond_14
    if-eqz v18, :cond_15

    .line 192
    const-string v19, "TetherEntitlement"

    const-string v20, "Tethered..."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Lcom/motorola/android/server/TetherEntitlement;->mPendingTetherEnable:Z
    invoke-static/range {v19 .. v20}, Lcom/motorola/android/server/TetherEntitlement;->access$302(Lcom/motorola/android/server/TetherEntitlement;Z)Z

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthNotif(Z)V
    invoke-static/range {v19 .. v20}, Lcom/motorola/android/server/TetherEntitlement;->access$500(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherConnectNotif(Z)V
    invoke-static/range {v19 .. v20}, Lcom/motorola/android/server/TetherEntitlement;->access$800(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherReadyNotif(Z)V
    invoke-static/range {v19 .. v20}, Lcom/motorola/android/server/TetherEntitlement;->access$1000(Lcom/motorola/android/server/TetherEntitlement;Z)V

    goto/16 :goto_0

    .line 198
    :cond_15
    if-nez v17, :cond_16

    .line 199
    const-string v19, "TetherEntitlement"

    const-string v20, "Untethered"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherReadyNotif(Z)V
    invoke-static/range {v19 .. v20}, Lcom/motorola/android/server/TetherEntitlement;->access$1000(Lcom/motorola/android/server/TetherEntitlement;Z)V

    goto/16 :goto_0

    .line 202
    :cond_16
    if-eqz v17, :cond_0

    .line 203
    const-string v19, "TetherEntitlement"

    const-string v20, "usbErrored: "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v19, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mPendingTetherEnable:Z
    invoke-static/range {v19 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$300(Lcom/motorola/android/server/TetherEntitlement;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Lcom/motorola/android/server/TetherEntitlement;->mPendingTetherEnable:Z
    invoke-static/range {v19 .. v20}, Lcom/motorola/android/server/TetherEntitlement;->access$302(Lcom/motorola/android/server/TetherEntitlement;Z)Z

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthNotif(Z)V
    invoke-static/range {v19 .. v20}, Lcom/motorola/android/server/TetherEntitlement;->access$500(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherConnectNotif(Z)V
    invoke-static/range {v19 .. v20}, Lcom/motorola/android/server/TetherEntitlement;->access$800(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherConnectErrorNotif(Z)V
    invoke-static/range {v19 .. v20}, Lcom/motorola/android/server/TetherEntitlement;->access$900(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherConnectErrorNotif(Z)V
    invoke-static/range {v19 .. v20}, Lcom/motorola/android/server/TetherEntitlement;->access$900(Lcom/motorola/android/server/TetherEntitlement;Z)V

    goto/16 :goto_0
.end method
