.class Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsServiceListener;
.super Lcom/motorola/android/ims/service/smsonims/SmsOnImsServiceListener;
.source "ImsSMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImsSmsServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;


# direct methods
.method constructor <init>(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;Lcom/motorola/android/ims/IMSService;)V
    .locals 0
    .parameter
    .parameter "service"

    .prologue
    .line 258
    iput-object p1, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsServiceListener;->this$0:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    .line 259
    invoke-direct {p0, p2}, Lcom/motorola/android/ims/service/smsonims/SmsOnImsServiceListener;-><init>(Lcom/motorola/android/ims/IMSService;)V

    .line 260
    return-void
.end method

.method private playBeep()V
    .locals 7

    .prologue
    .line 374
    const-string v4, "ImsSMSDispatcher"

    const-string v5, "Prepare beep for sms!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsServiceListener;->this$0:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    #getter for: Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->access$500(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    .line 378
    .local v2, state:Lcom/android/internal/telephony/Phone$State;
    sget-object v4, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v4, :cond_0

    .line 380
    const-string v4, "ImsSMSDispatcher"

    const-string v5, "In call, play sms beep!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    new-instance v1, Ljava/io/File;

    const-string v4, "/system/media/audio/notifications2/sms_via_ims_notification_in_call.ogg"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 383
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 385
    const-string v4, "ImsSMSDispatcher"

    const-string v5, "Find the beep file, play it..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 388
    .local v3, uri:Landroid/net/Uri;
    new-instance v0, Landroid/media/AsyncPlayer;

    const-string v4, "IMS SMS in Call"

    invoke-direct {v0, v4}, Landroid/media/AsyncPlayer;-><init>(Ljava/lang/String;)V

    .line 389
    .local v0, asyncPlayer:Landroid/media/AsyncPlayer;
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsServiceListener;->this$0:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    #getter for: Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->access$600(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/media/AsyncPlayer;->play(Landroid/content/Context;Landroid/net/Uri;ZI)V

    .line 393
    .end local v0           #asyncPlayer:Landroid/media/AsyncPlayer;
    .end local v1           #file:Ljava/io/File;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_0
    return-void
.end method


# virtual methods
.method public processMessageReceived(Lcom/motorola/android/ims/service/smsonims/PageMessage;)V
    .locals 14
    .parameter "message"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 292
    const-string v9, "ImsSMSDispatcher"

    const-string v10, "processMessageReceived"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    if-eqz p1, :cond_1

    .line 295
    const/16 v9, 0xd

    invoke-virtual {p1, v9}, Lcom/motorola/android/ims/service/smsonims/PageMessage;->sendResponse(I)V

    .line 296
    const-string v9, "ImsSMSDispatcher"

    const-string v10, "ACK ims sms(ok)"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    new-instance v8, Landroid/telephony/SmsMessage;

    invoke-direct {v8}, Landroid/telephony/SmsMessage;-><init>()V

    .line 303
    .local v8, sms:Landroid/telephony/SmsMessage;
    invoke-virtual {p1}, Lcom/motorola/android/ims/service/smsonims/PageMessage;->getMsgId()J

    move-result-wide v3

    .line 304
    .local v3, msgID:J
    invoke-virtual {p1}, Lcom/motorola/android/ims/service/smsonims/PageMessage;->getBody()[B

    move-result-object v7

    .line 305
    .local v7, pSMSBody:[B
    const-string v9, "ImsSMSDispatcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MT SIP PDU: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v7}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-virtual {p1}, Lcom/motorola/android/ims/service/smsonims/PageMessage;->getFormat()I

    move-result v2

    .line 308
    .local v2, format:I
    if-nez v2, :cond_2

    .line 309
    const-string v9, "ImsSMSDispatcher"

    const-string v10, "process 3gpp2 sms"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    long-to-int v9, v3

    invoke-static {v9, v7}, Lcom/android/internal/telephony/cdma/SmsMessage;->createMsgFromSipPdu(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v9

    iput-object v9, v8, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    .line 354
    :cond_0
    :goto_0
    new-instance v5, Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;

    const/4 v9, 0x3

    invoke-direct {v5, v9, v8}, Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;-><init>(ILandroid/telephony/SmsMessage;)V

    .line 357
    .local v5, mtSmsTracker:Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;
    iget-object v9, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsServiceListener;->this$0:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    invoke-virtual {v9, v12, v5}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 358
    .local v6, newSms:Landroid/os/Message;
    const/4 v9, 0x0

    invoke-static {v6, v5, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 361
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 365
    invoke-direct {p0}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsServiceListener;->playBeep()V

    .line 368
    .end local v2           #format:I
    .end local v3           #msgID:J
    .end local v5           #mtSmsTracker:Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;
    .end local v6           #newSms:Landroid/os/Message;
    .end local v7           #pSMSBody:[B
    .end local v8           #sms:Landroid/telephony/SmsMessage;
    :cond_1
    :goto_1
    return-void

    .line 311
    .restart local v2       #format:I
    .restart local v3       #msgID:J
    .restart local v7       #pSMSBody:[B
    .restart local v8       #sms:Landroid/telephony/SmsMessage;
    :cond_2
    if-ne v2, v12, :cond_6

    .line 312
    const-string v9, "ImsSMSDispatcher"

    const-string v10, "process 3gpp sms"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    new-array v0, v12, [I

    .line 317
    .local v0, dcs:[I
    invoke-static {v7, v13}, Lcom/android/internal/telephony/cdma/SmsMessage;->createEnvelopPdu([BZ)Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, envString:Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 319
    iget-object v9, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsServiceListener;->this$0:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    #getter for: Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v9}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->access$400(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 320
    const-string v9, "ImsSMSDispatcher"

    const-string v10, "cdma send envelop cmd to ril "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v9, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsServiceListener;->this$0:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    #getter for: Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v9}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->access$400(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v9

    iget-object v10, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsServiceListener;->this$0:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    const/16 v11, 0x19

    invoke-virtual {v10, v11, p1}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-interface {v9, v1, v10}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    .line 329
    invoke-direct {p0}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsServiceListener;->playBeep()V

    goto :goto_1

    .line 334
    :cond_3
    const-string v9, "ImsSMSDispatcher"

    const-string v10, "Cdma dispatch SMS-PP error"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 339
    :cond_4
    long-to-int v9, v3

    invoke-static {v9, v7, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->createMsgFrom3gppSipPdu(I[B[I)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v9

    iput-object v9, v8, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    .line 342
    iget-object v9, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsServiceListener;->this$0:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    #getter for: Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIsSmsLimitedMode:Z
    invoke-static {v9}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->access$100(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;)Z

    move-result v9

    if-ne v9, v12, :cond_0

    iget-object v9, v8, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-eqz v9, :cond_0

    aget v9, v0, v13

    and-int/lit16 v9, v9, 0xd3

    const/16 v10, 0x12

    if-eq v9, v10, :cond_5

    aget v9, v0, v13

    and-int/lit16 v9, v9, 0xf3

    const/16 v10, 0xf2

    if-ne v9, v10, :cond_0

    .line 344
    :cond_5
    const-string v9, "ImsSMSDispatcher"

    const-string v10, "Current is limitede mode,terminate non-administrative SMS"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 348
    .end local v0           #dcs:[I
    .end local v1           #envString:Ljava/lang/String;
    :cond_6
    const-string v9, "ImsSMSDispatcher"

    const-string v10, "Unknow ims sms format, ignore"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public processServiceClosed(Lcom/motorola/android/ims/IMSService;)V
    .locals 2
    .parameter "service"

    .prologue
    .line 264
    const-string v0, "ImsSMSDispatcher"

    const-string v1, "processServiceClosed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-void
.end method

.method public processServiceOpen(Lcom/motorola/android/ims/IMSService;Z)V
    .locals 5
    .parameter "service"
    .parameter "status"

    .prologue
    .line 269
    const-string v2, "ImsSMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processServiceOpen "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    if-nez p2, :cond_0

    .line 287
    :goto_0
    return-void

    .line 276
    :cond_0
    :try_start_0
    const-string v2, "iphonenvinfo"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/android/telephony/IPhoneNVInfo;

    move-result-object v1

    .line 277
    .local v1, ipnv:Lcom/motorola/android/telephony/IPhoneNVInfo;
    if-eqz v1, :cond_1

    .line 278
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsServiceListener;->this$0:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    invoke-interface {v1}, Lcom/motorola/android/telephony/IPhoneNVInfo;->getImsSmsFormat()Z

    move-result v3

    #setter for: Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIs3gppFormat:Z
    invoke-static {v2, v3}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->access$302(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    .end local v1           #ipnv:Lcom/motorola/android/telephony/IPhoneNVInfo;
    :goto_1
    const-string v3, "ImsSMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IMS SMS Format is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsServiceListener;->this$0:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    #getter for: Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIs3gppFormat:Z
    invoke-static {v2}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->access$300(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "3gpp"

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 280
    .restart local v1       #ipnv:Lcom/motorola/android/telephony/IPhoneNVInfo;
    :cond_1
    :try_start_1
    const-string v2, "ImsSMSDispatcher"

    const-string v3, "Get null object of IPhoneNVInfo !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 282
    .end local v1           #ipnv:Lcom/motorola/android/telephony/IPhoneNVInfo;
    :catch_0
    move-exception v0

    .line 283
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "ImsSMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error get IMS sms format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 286
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    const-string v2, "3gpp2"

    goto :goto_2
.end method
