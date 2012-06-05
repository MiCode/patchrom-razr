.class Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$2;
.super Landroid/content/BroadcastReceiver;
.source "CdmaServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 253
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const-string v1, "[CDMA_OPERATOR_NAME] received action = android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    #calls: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateCdmaOperatorName(Landroid/telephony/ServiceState;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$100(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;Landroid/telephony/ServiceState;)V

    .line 257
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateSpnDisplay()V

    .line 259
    :cond_0
    return-void
.end method
