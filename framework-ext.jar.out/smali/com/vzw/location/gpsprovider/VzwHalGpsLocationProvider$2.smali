.class Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider$2;
.super Landroid/content/BroadcastReceiver;
.source "VzwHalGpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider$2;->this$0:Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 237
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 239
    const-string v4, "VzwHalGpsLocationProvider"

    const-string v5, "action==null in BroadcastReceiver::onReceive()"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    const-string v4, "com.motorola.internal.location.ALARM_WAKEUP"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 244
    const-string v4, "VzwHalGpsLocationProvider"

    const-string v5, "ALARM_WAKEUP"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v4, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider$2;->this$0:Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->startNavigating(Z)Z

    goto :goto_0

    .line 246
    :cond_2
    const-string v4, "com.motorola.internal.location.ALARM_TIMEOUT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 247
    const-string v4, "VzwHalGpsLocationProvider"

    const-string v5, "ALARM_TIMEOUT"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v4, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider$2;->this$0:Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;

    #calls: Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->hibernate()V
    invoke-static {v4}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->access$100(Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;)V

    goto :goto_0

    .line 249
    :cond_3
    const-string v4, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 251
    const-string v4, "state"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 252
    .local v3, state:Ljava/lang/String;
    const-string v4, "apn"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, apnName:Ljava/lang/String;
    const-string v4, "reason"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, reason:Ljava/lang/String;
    const-string v4, "VzwHalGpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " apnName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " reason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const-string v4, "CONNECTED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 260
    iget-object v4, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider$2;->this$0:Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;

    #setter for: Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mAGpsApn:Ljava/lang/String;
    invoke-static {v4, v1}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->access$202(Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 261
    iget-object v4, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider$2;->this$0:Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;

    #getter for: Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mAGpsDataConnectionState:I
    invoke-static {v4}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->access$300(Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 262
    iget-object v4, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider$2;->this$0:Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;

    iget-object v5, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider$2;->this$0:Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;

    #getter for: Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mAGpsApn:Ljava/lang/String;
    invoke-static {v5}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->access$200(Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->native_agps_data_conn_open(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->access$400(Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;Ljava/lang/String;)V

    .line 263
    iget-object v4, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider$2;->this$0:Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;

    const/4 v5, 0x2

    #setter for: Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mAGpsDataConnectionState:I
    invoke-static {v4, v5}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->access$302(Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;I)I

    goto/16 :goto_0
.end method
