.class public Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "CdmaSMSDispatcher.java"


# static fields
.field private static final DEBUG_FILE_FOR_BROADCAST_MSG:Ljava/lang/String; = "/sdcard/_debug_mode_for_broadcast_msg_"

.field private static final TAG:Ljava/lang/String; = "CDMA"


# instance fields
.field protected mAckWaitMessageId:I

.field private mCdmaJudgeSmsType:Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType;

.field private final mCheckForDuplicatePortsInOmadmWapPush:Z

.field private mIsSwitchedToCdma:Z

.field protected mLastAcknowledgedSmsFingerprint:[B

.field protected mLastDispatchedSmsFingerprint:[B

.field private mRuimCard:Lcom/android/internal/telephony/cdma/RuimCard;

.field private mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

.field protected mSmsDuplicate:Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;


# direct methods
.method protected constructor <init>(ILcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .locals 4
    .parameter "ownerModemId"
    .parameter "phone"
    .parameter "storageMonitor"
    .parameter "usageMonitor"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 118
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(ILcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    .line 85
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCheckForDuplicatePortsInOmadmWapPush:Z

    .line 92
    iput v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mAckWaitMessageId:I

    .line 98
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mIsSwitchedToCdma:Z

    .line 102
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    .line 103
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mRuimCard:Lcom/android/internal/telephony/cdma/RuimCard;

    .line 119
    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .locals 4
    .parameter "phone"
    .parameter "storageMonitor"
    .parameter "usageMonitor"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 109
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    .line 85
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCheckForDuplicatePortsInOmadmWapPush:Z

    .line 92
    iput v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mAckWaitMessageId:I

    .line 98
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mIsSwitchedToCdma:Z

    .line 102
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    .line 103
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mRuimCard:Lcom/android/internal/telephony/cdma/RuimCard;

    .line 110
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewCdmaSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 111
    return-void
.end method

.method protected constructor <init>(ZZLcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .locals 4
    .parameter "isCdmaGsmWorldPhone"
    .parameter "isSwitchedToCdma"
    .parameter "phone"
    .parameter "storageMonitor"
    .parameter "usageMonitor"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 128
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(ZLcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    .line 85
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCheckForDuplicatePortsInOmadmWapPush:Z

    .line 92
    iput v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mAckWaitMessageId:I

    .line 98
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mIsSwitchedToCdma:Z

    .line 102
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    .line 103
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mRuimCard:Lcom/android/internal/telephony/cdma/RuimCard;

    .line 130
    if-nez p1, :cond_0

    .line 131
    const-string v0, "CDMA"

    const-string v1, "CdmaSMSDispatcher, this shouldn\'t be called."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_0
    return-void

    .line 135
    :cond_0
    if-eqz p2, :cond_1

    .line 138
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mIsSwitchedToCdma:Z

    .line 139
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->switchToCdma()V

    goto :goto_0

    .line 141
    :cond_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mIsSwitchedToCdma:Z

    goto :goto_0
.end method

.method private static checkDuplicatePortOmadmWappush([BI)Z
    .locals 6
    .parameter "origPdu"
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 776
    add-int/lit8 p1, p1, 0x4

    .line 777
    array-length v5, p0

    sub-int/2addr v5, p1

    new-array v1, v5, [B

    .line 778
    .local v1, omaPdu:[B
    array-length v5, v1

    invoke-static {p0, p1, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 780
    new-instance v2, Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    .line 781
    .local v2, pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;
    const/4 v3, 0x2

    .line 784
    .local v3, wspIndex:I
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 799
    :cond_0
    :goto_0
    return v4

    .line 788
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v5

    add-int/2addr v3, v5

    .line 791
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 795
    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v0

    .line 796
    .local v0, mimeType:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v5, "application/vnd.syncml.notification"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 797
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private handleCdmaStatusReport(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .locals 7
    .parameter "sms"

    .prologue
    .line 189
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 190
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 191
    .local v4, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget v5, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    iget v6, p1, Lcom/android/internal/telephony/SmsMessageBase;->messageRef:I

    if-ne v5, v6, :cond_1

    .line 193
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 194
    iget-object v3, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 195
    .local v3, intent:Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 196
    .local v1, fillIn:Landroid/content/Intent;
    const-string v5, "pdu"

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 197
    const-string v5, "format"

    const-string v6, "3gpp2"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    const-string v5, "stack_type"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 204
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v6, -0x1

    invoke-virtual {v3, v5, v6, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .end local v1           #fillIn:Landroid/content/Intent;
    .end local v3           #intent:Landroid/app/PendingIntent;
    .end local v4           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    :goto_1
    return-void

    .line 189
    .restart local v4       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 205
    .restart local v1       #fillIn:Landroid/content/Intent;
    .restart local v3       #intent:Landroid/app/PendingIntent;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private isDebugModeForBroadcastSMS()Z
    .locals 2

    .prologue
    .line 214
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/_debug_mode_for_broadcast_msg_"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 215
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method private static resultToCause(I)I
    .locals 1
    .parameter "rc"

    .prologue
    .line 749
    packed-switch p0, :pswitch_data_0

    .line 760
    :pswitch_0
    const/16 v0, 0x60

    :goto_0
    return v0

    .line 753
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 755
    :pswitch_2
    const/16 v0, 0x23

    goto :goto_0

    .line 757
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 749
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;)V
    .locals 6
    .parameter "success"
    .parameter "result"
    .parameter "response"
    .parameter "mtSmsTracker"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 704
    const-string v4, "ril.cdma.inecmmode"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 705
    .local v1, inEcm:Ljava/lang/String;
    const-string v4, "true"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 707
    const-string v4, "CDMA"

    const-string v5, "CdmaSMSDispatcher.acknowledgeLastIncomingSms(): inEcm.equals true"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v4, :cond_5

    .line 713
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "KDDI"

    const-string v5, "ro.cdma.home.operator.alpha"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 715
    if-eq p1, v2, :cond_1

    .line 717
    const/4 p2, 0x3

    .line 722
    :cond_1
    invoke-static {p2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->resultToCause(I)I

    move-result v0

    .line 723
    .local v0, causeCode:I
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, p1, v0, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V

    .line 725
    if-nez v0, :cond_2

    .line 726
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastAcknowledgedSmsFingerprint:[B

    .line 728
    :cond_2
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    .line 732
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "KDDI"

    const-string v5, "ro.cdma.home.operator.alpha"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 734
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mAckWaitMessageId:I

    if-eqz v4, :cond_5

    .line 735
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsDuplicate:Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;

    if-nez v4, :cond_3

    .line 736
    new-instance v4, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v2, v2}, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;-><init>(Landroid/content/Context;IZ)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsDuplicate:Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;

    .line 738
    :cond_3
    if-eqz p1, :cond_4

    move v2, v3

    .line 740
    .local v2, sendAck:I
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsDuplicate:Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;

    iget v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mAckWaitMessageId:I

    invoke-virtual {v4, v2, v5}, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;->kddiUpdateSmsDuplicateFile(II)V

    .line 741
    iput v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mAckWaitMessageId:I

    .line 746
    .end local v0           #causeCode:I
    .end local v2           #sendAck:I
    :cond_5
    return-void
.end method

.method public activate()V
    .locals 3

    .prologue
    .line 161
    invoke-super {p0}, Lcom/android/internal/telephony/SMSDispatcher;->activate()V

    .line 162
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewCdmaSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 163
    return-void
.end method

.method protected calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 1
    .parameter "messageBody"
    .parameter "use7bitOnly"

    .prologue
    .line 611
    invoke-static {p1, p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method protected calculateLength(Ljava/lang/CharSequence;ZZZLjava/lang/String;)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 1
    .parameter "messageBody"
    .parameter "use7bitOnly"
    .parameter "ifSupportNationalTable"
    .parameter "ifSupportLockingShiftTable"
    .parameter "language"

    .prologue
    .line 619
    invoke-static {p1, p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method protected dispatchCmasPdus([[B)V
    .locals 3
    .parameter "pdus"

    .prologue
    .line 441
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.CMAS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 442
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 444
    const-string v1, "format"

    const-string v2, "3gpp2"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.RECEIVE_CMAS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 448
    return-void
.end method

.method public dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 1
    .parameter "smsb"

    .prologue
    .line 226
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;)I

    move-result v0

    return v0
.end method

.method public dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;)I
    .locals 23
    .parameter "smsb"
    .parameter "mtSmsTracker"

    .prologue
    .line 234
    if-nez p1, :cond_0

    .line 235
    const-string v20, "CDMA"

    const-string v21, "dispatchMessage: message is null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/16 v20, 0x2

    .line 415
    :goto_0
    return v20

    .line 239
    :cond_0
    const-string v20, "ril.cdma.inecmmode"

    const-string v21, "false"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 240
    .local v7, inEcm:Ljava/lang/String;
    const-string v20, "true"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 243
    const-string v20, "CDMA"

    const-string v21, "CdmaSMSDispatcher.dispatchMessage(): inEcm.equals true"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsReceiveDisabled:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 250
    const-string v20, "CDMA"

    const-string v21, "Received short message on device which doesn\'t support receiving SMS. Ignored."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/16 v20, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v14, p1

    .line 256
    check-cast v14, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 260
    .local v14, sms:Lcom/android/internal/telephony/cdma/SmsMessage;
    if-eqz v14, :cond_6

    .line 261
    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v11

    .line 262
    .local v11, rawPdu:[B
    if-eqz v11, :cond_5

    .line 263
    const-string v20, "CDMA"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "rawPdu.length= "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    array-length v0, v11

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", rawPdu= "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {v11}, Lcom/android/internal/telephony/IccUtils;->bytesToHexStringWithSpaceSep([B)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .end local v11           #rawPdu:[B
    :goto_1
    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v9

    .line 274
    .local v9, msgtype:I
    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_c

    .line 276
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v20

    sget-object v21, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    const-string v20, "KDDI"

    const-string v21, "ro.cdma.home.operator.alpha"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 278
    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getServiceCategory()I

    move-result v13

    .line 279
    .local v13, serviceCategory:I
    const/4 v12, 0x1

    .line 281
    .local v12, rejectBroadcastSMS:Z
    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v13, v0, :cond_3

    const/16 v20, 0x26

    move/from16 v0, v20

    if-eq v13, v0, :cond_3

    const/16 v20, 0x23

    move/from16 v0, v20

    if-eq v13, v0, :cond_3

    const/16 v20, 0x28

    move/from16 v0, v20

    if-lt v13, v0, :cond_7

    const/16 v20, 0x3f

    move/from16 v0, v20

    if-gt v13, v0, :cond_7

    .line 284
    :cond_3
    const/4 v12, 0x0

    .line 297
    :cond_4
    :goto_2
    if-eqz v12, :cond_d

    .line 298
    const/16 v20, 0x4

    goto/16 :goto_0

    .line 266
    .end local v9           #msgtype:I
    .end local v12           #rejectBroadcastSMS:Z
    .end local v13           #serviceCategory:I
    .restart local v11       #rawPdu:[B
    :cond_5
    const-string v20, "CDMA"

    const-string v21, "warning! rawPdu is null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 269
    .end local v11           #rawPdu:[B
    :cond_6
    const-string v20, "CDMA"

    const-string v21, "warning! sms is null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 286
    .restart local v9       #msgtype:I
    .restart local v12       #rejectBroadcastSMS:Z
    .restart local v13       #serviceCategory:I
    :cond_7
    const v20, 0x8001

    move/from16 v0, v20

    if-eq v13, v0, :cond_9

    const v20, 0x8026

    move/from16 v0, v20

    if-eq v13, v0, :cond_9

    const v20, 0x8023

    move/from16 v0, v20

    if-eq v13, v0, :cond_9

    const v20, 0x8028

    move/from16 v0, v20

    if-lt v13, v0, :cond_8

    const v20, 0x803f

    move/from16 v0, v20

    if-le v13, v0, :cond_9

    :cond_8
    const v20, 0xc001

    move/from16 v0, v20

    if-eq v13, v0, :cond_9

    const v20, 0xc026

    move/from16 v0, v20

    if-eq v13, v0, :cond_9

    const v20, 0xc023

    move/from16 v0, v20

    if-eq v13, v0, :cond_9

    const v20, 0xc028

    move/from16 v0, v20

    if-lt v13, v0, :cond_4

    const v20, 0xc03f

    move/from16 v0, v20

    if-gt v13, v0, :cond_4

    .line 292
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->isDebugModeForBroadcastSMS()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 293
    const/4 v12, 0x0

    goto :goto_2

    .line 303
    .end local v12           #rejectBroadcastSMS:Z
    .end local v13           #serviceCategory:I
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->isCmasMessage(Lcom/android/internal/telephony/cdma/SmsMessage;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 304
    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    .line 305
    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPriority()I

    move-result v8

    .line 306
    .local v8, msgPriority:I
    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPriority()I

    move-result v20

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 307
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v10, v0, [[B

    .line 308
    .local v10, pdus:[[B
    const/16 v20, 0x0

    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v21

    aput-object v21, v10, v20

    .line 309
    const-string v20, "CDMA"

    const-string v21, "Received CMAS with destination Address dispatchPortAddressedCmasPdus"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->dispatchCmasPdus([[B)V

    .line 311
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 314
    .end local v8           #msgPriority:I
    .end local v10           #pdus:[[B
    :cond_b
    const/16 v20, 0x4

    goto/16 :goto_0

    .line 319
    :cond_c
    const-string v20, "CDMA"

    const-string v21, "inside the dispatch, Condition is failed for cmas message"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_d
    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getIncomingSmsFingerprint()[B

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastAcknowledgedSmsFingerprint:[B

    move-object/from16 v20, v0

    if-eqz v20, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastAcknowledgedSmsFingerprint:[B

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 326
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 329
    :cond_e
    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    .line 330
    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleService()I

    move-result v17

    .line 331
    .local v17, teleService:I
    const/4 v6, 0x0

    .line 333
    .local v6, handled:Z
    const/16 v20, 0x1003

    move/from16 v0, v20

    move/from16 v1, v17

    if-eq v0, v1, :cond_f

    const/high16 v20, 0x4

    move/from16 v0, v20

    move/from16 v1, v17

    if-ne v0, v1, :cond_12

    .line 337
    :cond_f
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v20

    sget-object v21, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_10

    const-string v20, "KDDI"

    const-string v21, "ro.cdma.home.operator.alpha"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_10

    const/16 v20, 0x1003

    move/from16 v0, v20

    move/from16 v1, v17

    if-ne v0, v1, :cond_10

    .line 341
    const/16 v20, 0x3

    goto/16 :goto_0

    .line 346
    :cond_10
    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNumOfVoicemails()I

    move-result v18

    .line 347
    .local v18, voicemailCount:I
    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPriority()I

    move-result v19

    .line 348
    .local v19, voicemailPriority:I
    const-string v20, "CDMA"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Voicemail count="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const-string v20, "CDMA"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Voicemail priority="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 353
    .local v16, sp:Landroid/content/SharedPreferences;
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 354
    .local v5, editor:Landroid/content/SharedPreferences$Editor;
    const-string v20, "vm_count_key_cdma"

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 355
    const-string v20, "vm_priority_key_cdma"

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 356
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setVoiceMessageWaiting(III)V

    .line 358
    const/4 v6, 0x1

    .line 371
    .end local v5           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v16           #sp:Landroid/content/SharedPreferences;
    .end local v18           #voicemailCount:I
    .end local v19           #voicemailPriority:I
    :cond_11
    :goto_3
    if-eqz v6, :cond_15

    .line 372
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 359
    :cond_12
    const/16 v20, 0x1002

    move/from16 v0, v20

    move/from16 v1, v17

    if-eq v0, v1, :cond_13

    const/16 v20, 0x1005

    move/from16 v0, v20

    move/from16 v1, v17

    if-ne v0, v1, :cond_14

    :cond_13
    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->isStatusReportMessage()Z

    move-result v20

    if-eqz v20, :cond_14

    .line 362
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->handleCdmaStatusReport(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    .line 363
    const/4 v6, 0x1

    goto :goto_3

    .line 364
    :cond_14
    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v20

    if-nez v20, :cond_11

    .line 368
    const/4 v6, 0x1

    goto :goto_3

    .line 375
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/SmsStorageMonitor;->isStorageAvailable()Z

    move-result v20

    if-nez v20, :cond_16

    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v20

    sget-object v21, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_16

    .line 380
    const-string v20, "CDMA"

    const-string v21, "RESULT_SMS_OUT_OF_MEMORY"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const/16 v20, 0x3

    goto/16 :goto_0

    .line 384
    :cond_16
    const/16 v20, 0x1004

    move/from16 v0, v20

    move/from16 v1, v17

    if-ne v0, v1, :cond_17

    .line 386
    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v20

    iget v0, v14, Lcom/android/internal/telephony/SmsMessageBase;->messageRef:I

    move/from16 v21, v0

    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->processCdmaWapPdu([BILjava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;)I

    move-result v20

    goto/16 :goto_0

    .line 394
    :cond_17
    const/16 v20, 0x1002

    move/from16 v0, v20

    move/from16 v1, v17

    if-eq v0, v1, :cond_18

    const/16 v20, 0x1005

    move/from16 v0, v20

    move/from16 v1, v17

    if-eq v0, v1, :cond_18

    const/16 v20, 0x1

    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_18

    .line 397
    const/16 v20, 0x4

    goto/16 :goto_0

    .line 402
    :cond_18
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v20

    sget-object v21, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1a

    const-string v20, "KDDI"

    const-string v21, "ro.cdma.home.operator.alpha"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1a

    .line 404
    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v15

    .line 405
    .local v15, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    if-eqz v15, :cond_19

    iget-object v0, v15, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    move-object/from16 v20, v0

    if-nez v20, :cond_1a

    iget-object v0, v15, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    move-object/from16 v20, v0

    if-nez v20, :cond_1a

    .line 407
    :cond_19
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v10, v0, [[B

    .line 408
    .restart local v10       #pdus:[[B
    const/16 v20, 0x0

    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v21

    aput-object v21, v10, v20

    .line 409
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v10, v14, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->kddiDispatchPdus([[BLcom/android/internal/telephony/cdma/SmsMessage;Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;)V

    .line 410
    const/16 v20, -0x1

    goto/16 :goto_0

    .line 415
    .end local v10           #pdus:[[B
    .end local v15           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_1a
    invoke-virtual/range {p0 .. p2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;)I

    move-result v20

    goto/16 :goto_0
.end method

.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 168
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewCdmaSms(Landroid/os/Handler;)V

    .line 170
    iget-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mIsNewArch:Z

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mIccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;

    invoke-virtual {v0, p0}, Lcom/motorola/android/internal/telephony/IccCardManager;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 172
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->unregisterForNewSms(Landroid/os/Handler;)V

    .line 175
    :cond_0
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mRuimCard:Lcom/android/internal/telephony/cdma/RuimCard;

    .line 176
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    .line 179
    :cond_1
    return-void
.end method

.method protected getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    const-string v0, "3gpp2"

    return-object v0
.end method

.method protected isCmasMessage(Lcom/android/internal/telephony/cdma/SmsMessage;)Z
    .locals 4
    .parameter "sms"

    .prologue
    .line 424
    const/4 v0, 0x0

    .line 426
    .local v0, isCmas:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getServiceCategory()I

    move-result v1

    .line 428
    .local v1, serviceCategory:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/16 v2, 0x1000

    if-lt v1, v2, :cond_0

    const/16 v2, 0x1005

    if-ge v1, v2, :cond_0

    .line 430
    const/4 v0, 0x1

    .line 432
    :cond_0
    return v0
.end method

.method protected kddiDispatchPdus([[BLcom/android/internal/telephony/cdma/SmsMessage;Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;)V
    .locals 8
    .parameter "pdus"
    .parameter "sms"
    .parameter "mtSmsTracker"

    .prologue
    .line 842
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaJudgeSmsType:Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType;

    if-nez v0, :cond_0

    .line 843
    new-instance v0, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaJudgeSmsType:Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType;

    .line 847
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsDuplicate:Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;

    if-nez v0, :cond_1

    .line 848
    new-instance v0, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsDuplicate:Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;

    .line 851
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsDuplicate:Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;

    iget v1, p2, Lcom/android/internal/telephony/SmsMessageBase;->messageRef:I

    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTimestampMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;->kddiCheckSmsDuplicate(ILjava/lang/Long;[B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 853
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsDuplicate:Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;->getDuplicatedMessageResponseType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 909
    :goto_0
    return-void

    .line 855
    :pswitch_0
    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 905
    :catch_0
    move-exception v7

    .line 907
    .local v7, ex:Ljava/lang/NullPointerException;
    const-string v0, "CDMA"

    const-string v1, "judgeSmsType() failed to create SmsAccessory "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 858
    .end local v7           #ex:Ljava/lang/NullPointerException;
    :pswitch_1
    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, v0, v1, v2, p3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;)V

    goto :goto_0

    .line 865
    :cond_2
    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->kddiGetMessageEncoding()I

    move-result v6

    .line 866
    .local v6, encoding:I
    const/4 v0, 0x4

    if-eq v0, v6, :cond_4

    .line 868
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaJudgeSmsType:Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType;

    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType;->kddiJudgeType([B)Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;

    move-result-object v5

    .line 876
    .local v5, accessory:Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;
    :goto_1
    invoke-virtual {v5}, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;->kddiGetResponseType()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 897
    :goto_2
    invoke-virtual {v5}, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;->kddiGetSendAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 898
    invoke-virtual {p0, p1, v5, p3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->kddiNotifiySmsToApp([[BLcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;)V

    .line 902
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsDuplicate:Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;

    iget v1, p2, Lcom/android/internal/telephony/SmsMessageBase;->messageRef:I

    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTimestampMillis()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;->kddiUpdateSmsDuplicate(IJ[BLcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;)V

    goto :goto_0

    .line 871
    .end local v5           #accessory:Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;
    :cond_4
    new-instance v5, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaJudgeSmsType:Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;-><init>(Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType;Ljava/lang/String;Ljava/lang/String;I)V

    .restart local v5       #accessory:Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;
    goto :goto_1

    .line 878
    :pswitch_2
    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;)V

    goto :goto_2

    .line 882
    :pswitch_3
    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;)V

    goto :goto_2

    .line 888
    :pswitch_4
    iget v0, p2, Lcom/android/internal/telephony/SmsMessageBase;->messageRef:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mAckWaitMessageId:I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 853
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 876
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected kddiNotifiySmsToApp([[BLcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;)V
    .locals 4
    .parameter "pdus"
    .parameter "accessory"
    .parameter "mtSmsTracker"

    .prologue
    .line 919
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;->kddiGetSendAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 920
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 921
    if-eqz p3, :cond_0

    .line 922
    const-string v1, "deliveredBy"

    iget v2, p3, Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;->mDeliveredBy:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 923
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deliveredBy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p3, Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;->mDeliveredBy:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    iget-object v1, p3, Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;->mMtSms:Landroid/telephony/SmsMessage;

    if-eqz v1, :cond_0

    iget-object v1, p3, Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;->mMtSms:Landroid/telephony/SmsMessage;

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getPdu()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 926
    const-string v1, "trackedPdu"

    iget-object v2, p3, Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;->mMtSms:Landroid/telephony/SmsMessage;

    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getPdu()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 929
    :cond_0
    invoke-virtual {p2}, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;->kddiGetSendPermission()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->kddiNonOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 930
    return-void
.end method

.method protected processCdmaWapPdu([BILjava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;)I
    .locals 16
    .parameter "pdu"
    .parameter "referenceNumber"
    .parameter "address"
    .parameter "mtSmsTracker"

    .prologue
    .line 465
    const/4 v12, 0x0

    .line 467
    .local v12, index:I
    add-int/lit8 v13, v12, 0x1

    .end local v12           #index:I
    .local v13, index:I
    aget-byte v1, p1, v12

    and-int/lit16 v14, v1, 0xff

    .line 468
    .local v14, msgType:I
    if-eqz v14, :cond_0

    .line 469
    const-string v1, "CDMA"

    const-string v3, "Received a WAP SMS which is not WDP. Discard."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const/4 v1, 0x1

    move v12, v13

    .line 508
    .end local v13           #index:I
    .restart local v12       #index:I
    :goto_0
    return v1

    .line 472
    .end local v12           #index:I
    .restart local v13       #index:I
    :cond_0
    add-int/lit8 v12, v13, 0x1

    .end local v13           #index:I
    .restart local v12       #index:I
    aget-byte v1, p1, v13

    and-int/lit16 v6, v1, 0xff

    .line 473
    .local v6, totalSegments:I
    add-int/lit8 v13, v12, 0x1

    .end local v12           #index:I
    .restart local v13       #index:I
    aget-byte v1, p1, v12

    and-int/lit16 v5, v1, 0xff

    .line 475
    .local v5, segment:I
    if-lt v5, v6, :cond_1

    .line 476
    const-string v1, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WDP bad segment #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " expecting 0-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v6, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const/4 v1, 0x1

    move v12, v13

    .end local v13           #index:I
    .restart local v12       #index:I
    goto :goto_0

    .line 481
    .end local v12           #index:I
    .restart local v13       #index:I
    :cond_1
    const/4 v15, 0x0

    .line 482
    .local v15, sourcePort:I
    const/4 v9, 0x0

    .line 484
    .local v9, destinationPort:I
    if-nez v5, :cond_2

    .line 486
    add-int/lit8 v12, v13, 0x1

    .end local v13           #index:I
    .restart local v12       #index:I
    aget-byte v1, p1, v13

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v15, v1, 0x8

    .line 487
    add-int/lit8 v13, v12, 0x1

    .end local v12           #index:I
    .restart local v13       #index:I
    aget-byte v1, p1, v12

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v15, v1

    .line 488
    add-int/lit8 v12, v13, 0x1

    .end local v13           #index:I
    .restart local v12       #index:I
    aget-byte v1, p1, v13

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v9, v1, 0x8

    .line 489
    add-int/lit8 v13, v12, 0x1

    .end local v12           #index:I
    .restart local v13       #index:I
    aget-byte v1, p1, v12

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v9, v1

    .line 492
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCheckForDuplicatePortsInOmadmWapPush:Z

    if-eqz v1, :cond_2

    .line 493
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->checkDuplicatePortOmadmWappush([BI)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 494
    add-int/lit8 v12, v13, 0x4

    .line 500
    .end local v13           #index:I
    .restart local v12       #index:I
    :goto_1
    const-string v1, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received WAP PDU. Type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", originator = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", src-port = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dst-port = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", segment# = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    move-object/from16 v0, p1

    array-length v1, v0

    sub-int/2addr v1, v12

    new-array v2, v1, [B

    .line 506
    .local v2, userData:[B
    const/4 v1, 0x0

    move-object/from16 v0, p1

    array-length v3, v0

    sub-int/2addr v3, v12

    move-object/from16 v0, p1

    invoke-static {v0, v12, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 508
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p3

    move/from16 v4, p2

    move-object/from16 v11, p4

    invoke-virtual/range {v1 .. v11}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->processMessagePart([BLjava/lang/String;IIIJIZLcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;)I

    move-result v1

    goto/16 :goto_0

    .end local v2           #userData:[B
    .end local v12           #index:I
    .restart local v13       #index:I
    :cond_2
    move v12, v13

    .end local v13           #index:I
    .restart local v12       #index:I
    goto :goto_1
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 3
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "origPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 526
    int-to-short v2, p3

    if-eqz p7, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {p2, p1, v2, p5, v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;S[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 528
    .local v0, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {p0, v0, p6, p7}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 529
    return-void

    .line 526
    .end local v0           #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 3
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 516
    int-to-short v2, p3

    if-eqz p6, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {p2, p1, v2, p4, v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;S[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 518
    .local v0, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {p0, v0, p5, p6}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 519
    return-void

    .line 516
    .end local v0           #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 13
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "message"
    .parameter "smsHeader"
    .parameter "encoding"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "lastPart"

    .prologue
    .line 627
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v12}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/lang/String;IILjava/lang/String;)V

    .line 629
    return-void
.end method

.method protected sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/lang/String;IILjava/lang/String;)V
    .locals 3
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "message"
    .parameter "smsHeader"
    .parameter "encoding"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "lastPart"
    .parameter "cbNumber"
    .parameter "priority"
    .parameter "encodingMethod"
    .parameter "language"

    .prologue
    .line 638
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 639
    .local v1, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p3, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 640
    iput-object p4, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 641
    const/4 v2, 0x1

    if-ne p5, v2, :cond_0

    .line 642
    const/16 v2, 0x9

    iput v2, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 646
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 652
    if-eqz p7, :cond_1

    if-eqz p8, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-static {p1, v1, v2, p9, p10}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZLjava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 655
    .local v0, submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {p0, v0, p6, p7}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 656
    return-void

    .line 644
    .end local v0           #submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_0
    const/4 v2, 0x4

    iput v2, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_0

    .line 652
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 5
    .parameter "tracker"

    .prologue
    .line 682
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 685
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "pdu"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    move-object v1, v3

    check-cast v1, [B

    .line 687
    .local v1, pdu:[B
    const/4 v3, 0x2

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 688
    .local v2, reply:Landroid/os/Message;
    const-string v3, "CDMA"

    const-string v4, "sms send via 1x"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendCdmaSms([BLandroid/os/Message;)V

    .line 690
    return-void
.end method

.method protected sendSmsMore(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 0
    .parameter "tracker"

    .prologue
    .line 695
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 696
    return-void
.end method

.method protected sendStkSms([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 0
    .parameter "smsc"
    .parameter "pdu"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 678
    return-void
.end method

.method protected sendSubmitPdu(Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 2
    .parameter "pdu"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 660
    const-string v0, "ril.cdma.inecmmode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 661
    if-eqz p2, :cond_0

    .line 663
    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {p2, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    :cond_0
    :goto_0
    return-void

    .line 671
    :cond_1
    iget-object v0, p1, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    iget-object v1, p1, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 664
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 10
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    const/4 v6, 0x0

    .line 539
    const/4 v7, 0x0

    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v9, v6

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;IILjava/lang/String;)V

    .line 540
    return-void
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;IILjava/lang/String;)V
    .locals 13
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "cbNumber"
    .parameter "priority"
    .parameter "encodingMethod"
    .parameter "language"

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->isOutgoingSmsAllowed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 552
    if-eqz p4, :cond_0

    .line 554
    const/16 v2, 0x100

    :try_start_0
    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 605
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    const/4 v11, 0x0

    .line 566
    .local v11, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    const-string v2, "ro.cdma.sms.latin_encode"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 567
    const/4 v10, 0x0

    .line 569
    .local v10, encoding:I
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v9

    .line 570
    .local v9, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    iget v10, v9, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 572
    new-instance v12, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v12}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 573
    .local v12, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    const/4 v2, 0x1

    if-ne v10, v2, :cond_2

    .line 574
    const/4 v2, 0x2

    iput v2, v12, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 580
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, v12, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 581
    move-object/from16 v0, p3

    iput-object v0, v12, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 582
    const/4 v2, 0x0

    iput-object v2, v12, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 584
    if-eqz p5, :cond_4

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p6

    move/from16 v1, p7

    invoke-static {p1, v12, v2, v0, v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZLjava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v11

    .line 591
    .end local v9           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .end local v10           #encoding:I
    .end local v12           #uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    :goto_3
    if-eqz v11, :cond_7

    .line 592
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-virtual {p0, v11, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 575
    .restart local v9       #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .restart local v10       #encoding:I
    .restart local v12       #uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_2
    const/4 v2, 0x2

    if-ne v10, v2, :cond_3

    .line 576
    const/16 v2, 0x8

    iput v2, v12, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_1

    .line 578
    :cond_3
    const/4 v2, 0x4

    iput v2, v12, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_1

    .line 584
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 587
    .end local v9           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .end local v10           #encoding:I
    .end local v12           #uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_5
    if-eqz p5, :cond_6

    const/4 v5, 0x1

    :goto_4
    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p1

    move-object/from16 v4, p3

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v2 .. v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;Ljava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v11

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    goto :goto_4

    .line 594
    :cond_7
    if-eqz p4, :cond_0

    .line 596
    const/4 v2, 0x3

    :try_start_1
    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 597
    :catch_0
    move-exception v2

    goto :goto_0

    .line 555
    .end local v11           #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public switchToCdma()V
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mIsSwitchedToCdma:Z

    if-eqz v0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mIsSwitchedToCdma:Z

    .line 149
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->activate()V

    goto :goto_0
.end method

.method public switchToGsm()V
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mIsSwitchedToCdma:Z

    if-nez v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mIsSwitchedToCdma:Z

    .line 156
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->dispose()V

    goto :goto_0
.end method

.method protected updateIccAvailability()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 805
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mIccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;

    if-nez v1, :cond_1

    .line 828
    :cond_0
    :goto_0
    return-void

    .line 809
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mIccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;

    iget v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mOwnerModemId:I

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/motorola/android/internal/telephony/IccCardManager;->getApplication(II)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/RuimCard;

    .line 812
    .local v0, newRuimCard:Lcom/android/internal/telephony/cdma/RuimCard;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mRuimCard:Lcom/android/internal/telephony/cdma/RuimCard;

    if-eq v1, v0, :cond_0

    .line 813
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mRuimCard:Lcom/android/internal/telephony/cdma/RuimCard;

    if-eqz v1, :cond_3

    .line 814
    const-string v1, "CDMA"

    const-string v2, "Removing stale CDMA Application."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    if-eqz v1, :cond_2

    .line 816
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->unregisterForNewSms(Landroid/os/Handler;)V

    .line 817
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    .line 819
    :cond_2
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mRuimCard:Lcom/android/internal/telephony/cdma/RuimCard;

    .line 821
    :cond_3
    if-eqz v0, :cond_0

    .line 822
    const-string v1, "CDMA"

    const-string v2, "New CDMA application found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mRuimCard:Lcom/android/internal/telephony/cdma/RuimCard;

    .line 824
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mRuimCard:Lcom/android/internal/telephony/cdma/RuimCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/RuimCard;->getApplicationRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cdma/RuimRecords;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    .line 825
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    const/16 v2, 0x65

    invoke-virtual {v1, p0, v2, v4}, Lcom/android/internal/telephony/cdma/RuimRecords;->registerForNewSms(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method
