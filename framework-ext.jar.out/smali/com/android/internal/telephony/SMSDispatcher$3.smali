.class Lcom/android/internal/telephony/SMSDispatcher$3;
.super Landroid/content/BroadcastReceiver;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 0
    .parameter

    .prologue
    .line 1875
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const/4 v9, -0x1

    .line 1880
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher$3;->getResultCode()I

    move-result v2

    .line 1881
    .local v2, rc:I
    if-eq v2, v9, :cond_0

    if-ne v2, v3, :cond_3

    .line 1885
    .local v3, success:Z
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 1886
    .local v1, mtSmsTracker:Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;
    const-string v6, "deliveredBy"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1887
    .local v0, deliveredBy:I
    const-string v6, "SMSDispatcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deliveredBy = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    if-eq v0, v9, :cond_2

    .line 1890
    const/4 v4, 0x0

    .line 1891
    .local v4, trackedMtSms:Landroid/telephony/SmsMessage;
    const-string v6, "trackedPdu"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v5

    .line 1892
    .local v5, trackedPdu:[B
    if-eqz v5, :cond_1

    .line 1893
    invoke-static {v5}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v4

    .line 1895
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;

    .end local v1           #mtSmsTracker:Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;
    invoke-direct {v1, v0, v4}, Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;-><init>(ILandroid/telephony/SmsMessage;)V

    .line 1900
    .end local v4           #trackedMtSms:Landroid/telephony/SmsMessage;
    .end local v5           #trackedPdu:[B
    .restart local v1       #mtSmsTracker:Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v2, v7, v1}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;)V

    .line 1902
    return-void

    .line 1881
    .end local v0           #deliveredBy:I
    .end local v1           #mtSmsTracker:Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;
    .end local v3           #success:Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method
