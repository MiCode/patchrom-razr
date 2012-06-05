.class public final Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "GsmSMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    }
.end annotation


# static fields
.field private static final EVENT_NEW_BROADCAST_SMS:I = 0x65

.field private static final EVENT_NEW_SMS_STATUS_REPORT:I = 0x64

.field private static final EVENT_WRITE_SMS_COMPLETE:I = 0x66

.field private static final TAG:Ljava/lang/String; = "GsmSMSDispatcher"


# instance fields
.field private final mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

.field private mIsSwitchedToCdma:Z

.field private mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

.field private mSimCard:Lcom/android/internal/telephony/gsm/SimCard;

.field private final mSmsCbPageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;",
            "[[B>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .locals 2
    .parameter "ownerModemId"
    .parameter "phone"
    .parameter "storageMonitor"
    .parameter "usageMonitor"

    .prologue
    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(ILcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    .line 88
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 89
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSimCard:Lcom/android/internal/telephony/gsm/SimCard;

    .line 760
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    .line 106
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;-><init>(Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    .line 107
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .locals 3
    .parameter "phone"
    .parameter "storageMonitor"
    .parameter "usageMonitor"

    .prologue
    const/4 v2, 0x0

    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    .line 88
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 89
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSimCard:Lcom/android/internal/telephony/gsm/SimCard;

    .line 760
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    .line 95
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;-><init>(Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    .line 96
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewGsmSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x64

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnSmsStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x65

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewGsmBroadcastSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 99
    return-void
.end method

.method constructor <init>(ZZLcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .locals 3
    .parameter "isCdmaGsmWorldPhone"
    .parameter "isSwitchedToCdma"
    .parameter "phone"
    .parameter "storageMonitor"
    .parameter "usageMonitor"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 116
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(ZLcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    .line 88
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 89
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSimCard:Lcom/android/internal/telephony/gsm/SimCard;

    .line 760
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    .line 118
    if-nez p1, :cond_0

    .line 119
    const-string v0, "GsmSMSDispatcher"

    const-string v1, "GsmSMSDispatcher, this shouldn\'t be called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    .line 133
    :goto_0
    return-void

    .line 124
    :cond_0
    if-nez p2, :cond_1

    .line 127
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mIsSwitchedToCdma:Z

    .line 128
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->switchToGsm()V

    .line 132
    :goto_1
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;-><init>(Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    goto :goto_0

    .line 130
    :cond_1
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mIsSwitchedToCdma:Z

    goto :goto_1
.end method

.method private handleBroadcastSms(Landroid/os/AsyncResult;)V
    .locals 16
    .parameter "ar"

    .prologue
    .line 769
    :try_start_0
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, [B

    move-object v0, v14

    check-cast v0, [B

    move-object v13, v0

    .line 785
    .local v13, receivedPdu:[B
    new-instance v5, Lcom/android/internal/telephony/gsm/SmsCbHeader;

    invoke-direct {v5, v13}, Lcom/android/internal/telephony/gsm/SmsCbHeader;-><init>([B)V

    .line 786
    .local v5, header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    const-string v14, "gsm.operator.numeric"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 787
    .local v12, plmn:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    .line 788
    .local v1, cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v10

    .line 789
    .local v10, lac:I
    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    .line 792
    .local v2, cid:I
    iget v14, v5, Lcom/android/internal/telephony/gsm/SmsCbHeader;->nrOfPages:I

    const/4 v15, 0x1

    if-le v14, v15, :cond_5

    .line 794
    new-instance v3, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;

    invoke-direct {v3, v5, v12, v10, v2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;-><init>(Lcom/android/internal/telephony/gsm/SmsCbHeader;Ljava/lang/String;II)V

    .line 797
    .local v3, concatInfo:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    invoke-virtual {v14, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[B

    .line 799
    .local v11, pdus:[[B
    if-nez v11, :cond_0

    .line 802
    iget v14, v5, Lcom/android/internal/telephony/gsm/SmsCbHeader;->nrOfPages:I

    new-array v11, v14, [[B

    .line 804
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    invoke-virtual {v14, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    :cond_0
    iget v14, v5, Lcom/android/internal/telephony/gsm/SmsCbHeader;->pageIndex:I

    add-int/lit8 v14, v14, -0x1

    aput-object v13, v11, v14

    .line 810
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    array-length v14, v11

    if-ge v6, v14, :cond_3

    .line 811
    aget-object v14, v11, v6

    if-nez v14, :cond_2

    .line 843
    .end local v1           #cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    .end local v2           #cid:I
    .end local v3           #concatInfo:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    .end local v5           #header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .end local v6           #i:I
    .end local v10           #lac:I
    .end local v11           #pdus:[[B
    .end local v12           #plmn:Ljava/lang/String;
    .end local v13           #receivedPdu:[B
    :cond_1
    :goto_1
    return-void

    .line 810
    .restart local v1       #cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    .restart local v2       #cid:I
    .restart local v3       #concatInfo:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    .restart local v5       #header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .restart local v6       #i:I
    .restart local v10       #lac:I
    .restart local v11       #pdus:[[B
    .restart local v12       #plmn:Ljava/lang/String;
    .restart local v13       #receivedPdu:[B
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 818
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    invoke-virtual {v14, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    .end local v3           #concatInfo:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    .end local v6           #i:I
    :goto_2
    iget v14, v5, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    invoke-static {v14}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEmergencyMessage(I)Z

    move-result v8

    .line 826
    .local v8, isEmergencyMessage:Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v8}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchBroadcastPdus([[BZ)V

    .line 831
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 833
    .local v9, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;>;"
    :cond_4
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 834
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;

    .line 836
    .local v7, info:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    invoke-virtual {v7, v12, v10, v2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->matchesLocation(Ljava/lang/String;II)Z

    move-result v14

    if-nez v14, :cond_4

    .line 837
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 840
    .end local v1           #cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    .end local v2           #cid:I
    .end local v5           #header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .end local v7           #info:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    .end local v8           #isEmergencyMessage:Z
    .end local v9           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;>;"
    .end local v10           #lac:I
    .end local v11           #pdus:[[B
    .end local v12           #plmn:Ljava/lang/String;
    .end local v13           #receivedPdu:[B
    :catch_0
    move-exception v4

    .line 841
    .local v4, e:Ljava/lang/RuntimeException;
    const-string v14, "GsmSMSDispatcher"

    const-string v15, "Error in decoding SMS CB pdu"

    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 821
    .end local v4           #e:Ljava/lang/RuntimeException;
    .restart local v1       #cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    .restart local v2       #cid:I
    .restart local v5       #header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .restart local v10       #lac:I
    .restart local v12       #plmn:Ljava/lang/String;
    .restart local v13       #receivedPdu:[B
    :cond_5
    const/4 v14, 0x1

    :try_start_1
    new-array v11, v14, [[B

    .line 822
    .restart local v11       #pdus:[[B
    const/4 v14, 0x0

    aput-object v13, v11, v14
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private handleStatusReport(Landroid/os/AsyncResult;)V
    .locals 14
    .parameter "ar"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 224
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 225
    .local v6, pduString:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v7

    .line 227
    .local v7, sms:Lcom/android/internal/telephony/gsm/SmsMessage;
    const/4 v0, 0x0

    .line 228
    .local v0, bFound:Z
    if-eqz v7, :cond_1

    .line 229
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getStatus()I

    move-result v8

    .line 230
    .local v8, tpStatus:I
    iget v5, v7, Lcom/android/internal/telephony/SmsMessageBase;->messageRef:I

    .line 231
    .local v5, messageRef:I
    const/4 v3, 0x0

    .local v3, i:I
    iget-object v10, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, count:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 232
    iget-object v10, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 233
    .local v9, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget v10, v9, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    if-ne v10, v5, :cond_2

    .line 235
    const/4 v0, 0x1

    .line 238
    const/16 v10, 0x40

    if-ge v8, v10, :cond_0

    const/16 v10, 0x20

    if-ge v8, v10, :cond_1

    .line 239
    :cond_0
    iget-object v10, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 241
    iget-object v4, v9, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 242
    .local v4, intent:Landroid/app/PendingIntent;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 243
    .local v2, fillIn:Landroid/content/Intent;
    const-string v10, "pdu"

    invoke-static {v6}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 244
    const-string v10, "format"

    const-string v11, "3gpp"

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    const-string v10, "stack_type"

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 253
    :try_start_0
    iget-object v10, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v11, -0x1

    invoke-virtual {v4, v10, v11, v2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .end local v1           #count:I
    .end local v2           #fillIn:Landroid/content/Intent;
    .end local v3           #i:I
    .end local v4           #intent:Landroid/app/PendingIntent;
    .end local v5           #messageRef:I
    .end local v8           #tpStatus:I
    .end local v9           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    :goto_1
    invoke-virtual {p0, v12, v12, v13, v13}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;)V

    .line 268
    const-string v10, "GsmSMSDispatcher"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "inside handleStatusReport, pduString=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const-string v11, "GsmSMSDispatcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "inside handleStatusReport, "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-eqz v0, :cond_3

    const-string v10, ""

    :goto_2
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " found inside deliveryPendingList ="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return-void

    .line 231
    .restart local v1       #count:I
    .restart local v3       #i:I
    .restart local v5       #messageRef:I
    .restart local v8       #tpStatus:I
    .restart local v9       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 269
    .end local v1           #count:I
    .end local v3           #i:I
    .end local v5           #messageRef:I
    .end local v8           #tpStatus:I
    .end local v9           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_3
    const-string v10, "Warning:"

    goto :goto_2

    .line 254
    .restart local v1       #count:I
    .restart local v2       #fillIn:Landroid/content/Intent;
    .restart local v3       #i:I
    .restart local v4       #intent:Landroid/app/PendingIntent;
    .restart local v5       #messageRef:I
    .restart local v8       #tpStatus:I
    .restart local v9       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :catch_0
    move-exception v10

    goto :goto_1
.end method

.method private static resultToCause(I)I
    .locals 1
    .parameter "rc"

    .prologue
    .line 642
    packed-switch p0, :pswitch_data_0

    .line 651
    :pswitch_0
    const/16 v0, 0xff

    :goto_0
    return v0

    .line 646
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 648
    :pswitch_2
    const/16 v0, 0xd3

    goto :goto_0

    .line 642
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private sendSmsInternal(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Z)V
    .locals 9
    .parameter "tracker"
    .parameter "expectMore"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 543
    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 545
    .local v1, map:Ljava/util/HashMap;
    const-string v5, "smsc"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v4, v5

    check-cast v4, [B

    .line 546
    .local v4, smsc:[B
    const-string v5, "pdu"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v2, v5

    check-cast v2, [B

    .line 548
    .local v2, pdu:[B
    invoke-virtual {p0, v8, p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 552
    .local v3, reply:Landroid/os/Message;
    const/4 v0, 0x0

    .line 553
    .local v0, cmms:I
    const-string v5, "gsm.cmms"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 554
    if-nez p2, :cond_0

    if-eq v0, v7, :cond_0

    if-ne v0, v8, :cond_1

    :cond_0
    move p2, v7

    .line 557
    :goto_0
    const-string v5, "GsmSMSDispatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "expectMore= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    if-eqz v4, :cond_2

    .line 560
    const-string v5, "GsmSMSDispatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "smsc.length= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexStringWithSpaceSep([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :goto_1
    if-eqz v2, :cond_3

    .line 566
    const-string v5, "GsmSMSDispatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pdu.length= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexStringWithSpaceSep([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :goto_2
    if-eqz p2, :cond_4

    .line 573
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendSMSMore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 582
    :goto_3
    return-void

    :cond_1
    move p2, v6

    .line 554
    goto :goto_0

    .line 562
    :cond_2
    const-string v5, "GsmSMSDispatcher"

    const-string v6, "smsc==null "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 568
    :cond_3
    const-string v5, "GsmSMSDispatcher"

    const-string v6, "pdu==null "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 577
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_3
.end method


# virtual methods
.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;)V
    .locals 2
    .parameter "success"
    .parameter "result"
    .parameter "response"
    .parameter "mtSmsTracer"

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->resultToCause(I)I

    move-result v1

    invoke-interface {v0, p1, v1, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    .line 614
    return-void
.end method

.method public activate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 153
    invoke-super {p0}, Lcom/android/internal/telephony/SMSDispatcher;->activate()V

    .line 154
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewGsmSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 155
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x64

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnSmsStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 156
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x65

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewGsmBroadcastSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 157
    return-void
.end method

.method public activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 2
    .parameter "activate"
    .parameter "response"

    .prologue
    .line 621
    const-string v0, "GsmSMSDispatcher"

    const-string v1, "Error! The functionality cell broadcast sms is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    invoke-virtual {p2}, Landroid/os/Message;->recycle()V

    .line 623
    return-void
.end method

.method protected calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 1
    .parameter "messageBody"
    .parameter "use7bitOnly"

    .prologue
    .line 490
    invoke-static {p1, p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

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
    .line 498
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZZZLjava/lang/String;)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 1
    .parameter "smsb"

    .prologue
    .line 280
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;)I

    move-result v0

    return v0
.end method

.method public dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;)I
    .locals 10
    .parameter "smsb"
    .parameter "mtSmsTracker"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 287
    const-string v7, "GsmSMSDispatcher"

    const-string v8, "enter : GsmSMSDispatcher::dispatchMessage  "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    if-nez p1, :cond_1

    .line 292
    const-string v5, "GsmSMSDispatcher"

    const-string v6, "dispatchMessage: message is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/4 v5, 0x2

    .line 379
    :cond_0
    :goto_0
    return v5

    :cond_1
    move-object v2, p1

    .line 296
    check-cast v2, Lcom/android/internal/telephony/gsm/SmsMessage;

    .line 299
    .local v2, sms:Lcom/android/internal/telephony/gsm/SmsMessage;
    if-eqz v2, :cond_3

    .line 300
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v1

    .line 301
    .local v1, rawPdu:[B
    if-eqz v1, :cond_2

    .line 302
    const-string v7, "GsmSMSDispatcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "rawPdu.length= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", rawPdu= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexStringWithSpaceSep([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    .end local v1           #rawPdu:[B
    :goto_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->isTypeZero()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 314
    const-string v6, "GsmSMSDispatcher"

    const-string v7, "Received short message type 0, Don\'t display or store it. Send Ack"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 304
    .restart local v1       #rawPdu:[B
    :cond_2
    const-string v7, "GsmSMSDispatcher"

    const-string v8, "warning! rawPdu is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 307
    .end local v1           #rawPdu:[B
    :cond_3
    const-string v7, "GsmSMSDispatcher"

    const-string v8, "warning! sms is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 319
    :cond_4
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->isUsimDataDownload()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 320
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getUsimServiceTable()Lcom/android/internal/telephony/gsm/UsimServiceTable;

    move-result-object v4

    .line 325
    .local v4, ust:Lcom/android/internal/telephony/gsm/UsimServiceTable;
    if-eqz v4, :cond_5

    sget-object v5, Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;->DATA_DL_VIA_SMS_PP:Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 327
    const-string v5, "GsmSMSDispatcher"

    const-string v6, "Received SMS-PP data download, sending to UICC."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    invoke-virtual {v5, v2}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->startDataDownload(Lcom/android/internal/telephony/gsm/SmsMessage;)I

    move-result v5

    goto :goto_0

    .line 330
    :cond_5
    const-string v5, "GsmSMSDispatcher"

    const-string v7, "DATA_DL_VIA_SMS_PP service not available, storing message to UICC."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    .line 334
    .local v3, smsc:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x66

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v5, v6, v3, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 337
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 341
    .end local v3           #smsc:Ljava/lang/String;
    .end local v4           #ust:Lcom/android/internal/telephony/gsm/UsimServiceTable;
    :cond_6
    iget-boolean v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsReceiveDisabled:Z

    if-eqz v7, :cond_7

    .line 343
    const-string v6, "GsmSMSDispatcher"

    const-string v7, "Received short message on device which doesn\'t support SMS service. Ignored."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 349
    :cond_7
    const/4 v0, 0x0

    .line 350
    .local v0, handled:Z
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWISetMessage()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 353
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getNumOfVoicemails()I

    move-result v8

    invoke-interface {v7, v5, v8}, Lcom/android/internal/telephony/Phone;->setVoiceMessageWaiting(II)V

    .line 356
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    move-result v0

    .line 368
    :cond_8
    :goto_2
    if-nez v0, :cond_0

    .line 372
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v5}, Lcom/android/internal/telephony/SmsStorageMonitor;->isStorageAvailable()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v5

    sget-object v7, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    if-eq v5, v7, :cond_a

    move v5, v6

    .line 376
    goto/16 :goto_0

    .line 360
    :cond_9
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWIClearMessage()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 361
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v8, 0x0

    invoke-interface {v7, v5, v8}, Lcom/android/internal/telephony/Phone;->setVoiceMessageWaiting(II)V

    .line 362
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    move-result v0

    goto :goto_2

    .line 379
    :cond_a
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;)I

    move-result v5

    goto/16 :goto_0
.end method

.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 162
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewGsmSms(Landroid/os/Handler;)V

    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSmsStatus(Landroid/os/Handler;)V

    .line 164
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewGsmBroadcastSms(Landroid/os/Handler;)V

    .line 166
    iget-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mIsNewArch:Z

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mIccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;

    invoke-virtual {v0, p0}, Lcom/motorola/android/internal/telephony/IccCardManager;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 168
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->unregisterForNewSms(Landroid/os/Handler;)V

    .line 171
    :cond_0
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSimCard:Lcom/android/internal/telephony/gsm/SimCard;

    .line 172
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 175
    :cond_1
    return-void
.end method

.method public getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 628
    const-string v0, "GsmSMSDispatcher"

    const-string v1, "Error! The functionality cell broadcast sms is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    .line 630
    return-void
.end method

.method protected getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    const-string v0, "3gpp"

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 190
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 212
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleMessage(Landroid/os/Message;)V

    .line 214
    :goto_0
    return-void

    .line 192
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->handleStatusReport(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 196
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->handleBroadcastSms(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 200
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 201
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 202
    const-string v1, "GsmSMSDispatcher"

    const-string v2, "Successfully wrote SMS-PP message to UICC"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    goto :goto_0

    .line 205
    :cond_0
    const-string v1, "GsmSMSDispatcher"

    const-string v2, "Failed to write SMS-PP message to UICC"

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xff

    invoke-interface {v1, v4, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    goto :goto_0

    .line 190
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "origPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 400
    if-eqz p7, :cond_0

    const/4 v5, 0x1

    :goto_0
    move-object v0, p2

    move-object v1, p1

    move v2, p3

    move v3, p4

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v6

    .line 402
    .local v6, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v6, :cond_1

    .line 403
    iget-object v0, v6, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    iget-object v1, v6, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-virtual {p0, v0, v1, p6, p7}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 407
    :goto_1
    return-void

    .line 400
    .end local v6           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 405
    .restart local v6       #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_1
    const-string v0, "GsmSMSDispatcher"

    const-string v1, "GsmSMSDispatcher.sendData(): getSubmitPdu() returned null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
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
    .line 385
    if-eqz p6, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {p2, p1, p3, p4, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 387
    .local v0, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v0, :cond_1

    .line 388
    iget-object v1, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    iget-object v2, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-virtual {p0, v1, v2, p5, p6}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 392
    :goto_1
    return-void

    .line 385
    .end local v0           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 390
    .restart local v0       #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_1
    const-string v1, "GsmSMSDispatcher"

    const-string v2, "GsmSMSDispatcher.sendData(): getSubmitPdu() returned null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
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
    .line 506
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

    invoke-virtual/range {v0 .. v12}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/lang/String;IILjava/lang/String;)V

    .line 508
    return-void
.end method

.method protected sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/lang/String;IILjava/lang/String;)V
    .locals 9
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
    .line 519
    if-eqz p7, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {p4}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v4

    move-object v0, p2

    move-object v1, p1

    move-object v2, p3

    move v5, p5

    move/from16 v6, p11

    move-object/from16 v7, p12

    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIILjava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v8

    .line 529
    .local v8, pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v8, :cond_2

    .line 530
    if-nez p8, :cond_1

    .line 531
    iget-object v1, v8, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    iget-object v2, v8, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    move-object v0, p0

    move-object v3, p6

    move-object/from16 v4, p7

    move/from16 v5, p11

    move-object/from16 v6, p12

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPduMore([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ILjava/lang/String;)V

    .line 538
    :goto_1
    return-void

    .line 519
    .end local v8           #pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 533
    .restart local v8       #pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_1
    iget-object v1, v8, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    iget-object v2, v8, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    move-object v0, p0

    move-object v3, p6

    move-object/from16 v4, p7

    move/from16 v5, p11

    move-object/from16 v6, p12

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ILjava/lang/String;)V

    goto :goto_1

    .line 536
    :cond_2
    const-string v0, "GsmSMSDispatcher"

    const-string v1, "GsmSMSDispatcher.sendNewSubmitPdu(): getSubmitPdu() returned null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 1
    .parameter "tracker"

    .prologue
    .line 598
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendSmsInternal(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Z)V

    .line 599
    return-void
.end method

.method protected sendSmsMore(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 1
    .parameter "tracker"

    .prologue
    .line 603
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendSmsInternal(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Z)V

    .line 604
    return-void
.end method

.method protected sendStkSms([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 0
    .parameter "smsc"
    .parameter "pdu"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 590
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 592
    return-void
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

    .line 419
    const/4 v7, 0x0

    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v9, v6

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;IILjava/lang/String;)V

    .line 420
    return-void
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;IILjava/lang/String;)V
    .locals 24
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
    .line 431
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->isOutgoingSmsAllowed()Z

    move-result v5

    if-nez v5, :cond_1

    .line 432
    if-eqz p4, :cond_0

    .line 434
    const/16 v5, 0x100

    :try_start_0
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 445
    :cond_1
    const/4 v10, 0x0

    .line 447
    .local v10, encoding:I
    const/16 v20, 0x0

    .line 448
    .local v20, ifSupportNationalTable:Z
    const/16 v19, 0x0

    .line 449
    .local v19, ifSupportLockingShiftTable:Z
    const/16 v23, 0x0

    .line 451
    .local v23, useOnly7bit:Z
    const/4 v5, 0x2

    move/from16 v0, p8

    if-ne v0, v5, :cond_6

    .line 452
    const/16 v20, 0x1

    .line 459
    :cond_2
    :goto_1
    move-object/from16 v0, p3

    move/from16 v1, v23

    move/from16 v2, v20

    move/from16 v3, v19

    move-object/from16 v4, p9

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZZZLjava/lang/String;)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v18

    .line 461
    .local v18, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-eq v10, v5, :cond_4

    if-eqz v10, :cond_3

    const/4 v5, 0x1

    if-ne v10, v5, :cond_4

    .line 463
    :cond_3
    move-object/from16 v0, v18

    iget v10, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 466
    :cond_4
    const-string v5, "GsmSMSDispatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " sendText languageShiftTable == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    iget v7, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  languageTable== "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    iget v7, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    new-instance v22, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v22 .. v22}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 469
    .local v22, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    const/4 v5, 0x1

    if-ne v10, v5, :cond_5

    .line 470
    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    move-object/from16 v0, v22

    iput v5, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 471
    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    move-object/from16 v0, v22

    iput v5, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 475
    :cond_5
    if-eqz p5, :cond_8

    const/4 v8, 0x1

    :goto_2
    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v9

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move/from16 v11, p8

    move-object/from16 v12, p9

    invoke-static/range {v5 .. v12}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIILjava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v21

    .line 479
    .local v21, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v21, :cond_9

    .line 480
    move-object/from16 v0, v21

    iget-object v12, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    move-object/from16 v0, v21

    iget-object v13, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    move-object/from16 v11, p0

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move/from16 v16, p8

    move-object/from16 v17, p9

    invoke-virtual/range {v11 .. v17}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 453
    .end local v18           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .end local v21           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v22           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_6
    const/4 v5, 0x3

    move/from16 v0, p8

    if-ne v0, v5, :cond_7

    .line 454
    const/16 v20, 0x1

    .line 455
    const/16 v19, 0x1

    goto/16 :goto_1

    .line 456
    :cond_7
    if-nez p8, :cond_2

    .line 457
    const/16 v23, 0x1

    goto/16 :goto_1

    .line 475
    .restart local v18       #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .restart local v22       #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_8
    const/4 v8, 0x0

    goto :goto_2

    .line 482
    .restart local v21       #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_9
    const-string v5, "GsmSMSDispatcher"

    const-string v6, "GsmSMSDispatcher.sendText(): getSubmitPdu() returned null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 435
    .end local v10           #encoding:I
    .end local v18           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .end local v19           #ifSupportLockingShiftTable:Z
    .end local v20           #ifSupportNationalTable:Z
    .end local v21           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v22           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v23           #useOnly7bit:Z
    :catch_0
    move-exception v5

    goto/16 :goto_0
.end method

.method public setCellBroadcastConfig([ILandroid/os/Message;)V
    .locals 2
    .parameter "configValuesArray"
    .parameter "response"

    .prologue
    .line 635
    const-string v0, "GsmSMSDispatcher"

    const-string v1, "Error! The functionality cell broadcast sms is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    invoke-virtual {p2}, Landroid/os/Message;->recycle()V

    .line 637
    return-void
.end method

.method public switchToCdma()V
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mIsSwitchedToCdma:Z

    if-eqz v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mIsSwitchedToCdma:Z

    .line 146
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispose()V

    goto :goto_0
.end method

.method public switchToGsm()V
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mIsSwitchedToCdma:Z

    if-nez v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mIsSwitchedToCdma:Z

    .line 139
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->activate()V

    goto :goto_0
.end method

.method protected updateIccAvailability()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 657
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mIccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;

    if-nez v1, :cond_1

    .line 680
    :cond_0
    :goto_0
    return-void

    .line 661
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mIccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;

    iget v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mOwnerModemId:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/motorola/android/internal/telephony/IccCardManager;->getApplication(II)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/SimCard;

    .line 664
    .local v0, newSimCard:Lcom/android/internal/telephony/gsm/SimCard;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSimCard:Lcom/android/internal/telephony/gsm/SimCard;

    if-eq v1, v0, :cond_0

    .line 665
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSimCard:Lcom/android/internal/telephony/gsm/SimCard;

    if-eqz v1, :cond_3

    .line 666
    const-string v1, "GsmSMSDispatcher"

    const-string v2, "Removing stale GSM Application."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    if-eqz v1, :cond_2

    .line 668
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->unregisterForNewSms(Landroid/os/Handler;)V

    .line 669
    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 671
    :cond_2
    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSimCard:Lcom/android/internal/telephony/gsm/SimCard;

    .line 673
    :cond_3
    if-eqz v0, :cond_0

    .line 674
    const-string v1, "GsmSMSDispatcher"

    const-string v2, "New GSM application found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSimCard:Lcom/android/internal/telephony/gsm/SimCard;

    .line 676
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSimCard:Lcom/android/internal/telephony/gsm/SimCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SimCard;->getApplicationRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/SIMRecords;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 677
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    const/16 v2, 0x65

    invoke-virtual {v1, p0, v2, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->registerForNewSms(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method
