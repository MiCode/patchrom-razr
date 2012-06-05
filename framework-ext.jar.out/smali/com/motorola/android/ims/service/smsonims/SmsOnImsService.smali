.class public Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;
.super Lcom/motorola/android/ims/IMSService;
.source "SmsOnImsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/ims/service/smsonims/SmsOnImsService$1;,
        Lcom/motorola/android/ims/service/smsonims/SmsOnImsService$SMSDeathRecipient;,
        Lcom/motorola/android/ims/service/smsonims/SmsOnImsService$SMSCallBack;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SmsOnImsService"


# instance fields
.field private mCallBack:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService$SMSCallBack;

.field private mSMS:Lcom/motorola/android/ims/IIMSCSms;

.field messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/android/ims/service/smsonims/PageMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "serviceName"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/motorola/android/ims/IMSService;-><init>(Ljava/lang/String;)V

    .line 75
    new-instance v0, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService$SMSCallBack;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService$SMSCallBack;-><init>(Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;Lcom/motorola/android/ims/service/smsonims/SmsOnImsService$1;)V

    iput-object v0, p0, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->mCallBack:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService$SMSCallBack;

    .line 84
    iput-object p0, p0, Lcom/motorola/android/ims/IMSService;->mService:Lcom/motorola/android/ims/IMSService;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->messages:Ljava/util/ArrayList;

    .line 86
    const-string v0, "smsonims"

    iput-object v0, p0, Lcom/motorola/android/ims/IMSService;->serviceType:Ljava/lang/String;

    .line 87
    const-string v0, "SmsOnImsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate serviceName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;)Lcom/motorola/android/ims/IMSService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/motorola/android/ims/IMSService;->mService:Lcom/motorola/android/ims/IMSService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;)Lcom/motorola/android/ims/IMSServiceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/motorola/android/ims/IMSService;->mServiceListener:Lcom/motorola/android/ims/IMSServiceListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->getRegId()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->getRegId()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$402(Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;Lcom/motorola/android/ims/IIMSCSms;)Lcom/motorola/android/ims/IIMSCSms;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->mSMS:Lcom/motorola/android/ims/IIMSCSms;

    return-object p1
.end method


# virtual methods
.method protected addCallBack()V
    .locals 4

    .prologue
    .line 232
    monitor-enter p0

    .line 233
    :try_start_0
    iget-object v2, p0, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->mSMS:Lcom/motorola/android/ims/IIMSCSms;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 235
    :try_start_1
    iget-object v2, p0, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->mSMS:Lcom/motorola/android/ims/IIMSCSms;

    iget-object v3, p0, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->mCallBack:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService$SMSCallBack;

    invoke-interface {v2, v3}, Lcom/motorola/android/ims/IIMSCSms;->registerCallback(Lcom/motorola/android/ims/IIMSCSmsCallback;)I

    .line 236
    new-instance v1, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService$SMSDeathRecipient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService$SMSDeathRecipient;-><init>(Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;Lcom/motorola/android/ims/service/smsonims/SmsOnImsService$1;)V

    .line 237
    .local v1, recipient:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService$SMSDeathRecipient;
    iget-object v2, p0, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->mSMS:Lcom/motorola/android/ims/IIMSCSms;

    invoke-interface {v2}, Lcom/motorola/android/ims/IIMSCSms;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 242
    .end local v1           #recipient:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService$SMSDeathRecipient;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 243
    return-void

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "SmsOnImsService"

    const-string v3, "Failed to set the callback for SMS server"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 242
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public close()V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Lcom/motorola/android/ims/IMSService;->close()V

    .line 144
    iget-object v0, p0, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 145
    return-void
.end method

.method public createSMSMessage(Ljava/lang/String;[B)Lcom/motorola/android/ims/service/smsonims/PageMessage;
    .locals 4
    .parameter "toAddr"
    .parameter "body"

    .prologue
    .line 98
    const/4 v1, 0x0

    .line 99
    .local v1, format:I
    monitor-enter p0

    .line 100
    :try_start_0
    iget-object v2, p0, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->mSMS:Lcom/motorola/android/ims/IIMSCSms;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 102
    :try_start_1
    iget-object v2, p0, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->mSMS:Lcom/motorola/android/ims/IIMSCSms;

    invoke-interface {v2}, Lcom/motorola/android/ims/IIMSCSms;->getSmsProtocolType()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 108
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {p0, p1, p2, v1}, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->createSMSMessage(Ljava/lang/String;[BI)Lcom/motorola/android/ims/service/smsonims/PageMessage;

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "SmsOnImsService"

    const-string v3, "Failed to get Sms protocol type - format"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 109
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public createSMSMessage(Ljava/lang/String;[BI)Lcom/motorola/android/ims/service/smsonims/PageMessage;
    .locals 7
    .parameter "toAddr"
    .parameter "body"
    .parameter "format"

    .prologue
    .line 121
    new-instance v0, Lcom/motorola/android/ims/service/smsonims/PageMessage;

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/motorola/android/ims/service/smsonims/PageMessage;-><init>(Lcom/motorola/android/ims/IMSService;Ljava/lang/String;I[BJ)V

    .line 122
    .local v0, msg:Lcom/motorola/android/ims/service/smsonims/PageMessage;
    return-object v0
.end method

.method public getFeatureTags()Ljava/lang/String;
    .locals 5

    .prologue
    .line 193
    const/4 v1, 0x0

    .line 194
    .local v1, format:I
    monitor-enter p0

    .line 195
    :try_start_0
    iget-object v3, p0, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->mSMS:Lcom/motorola/android/ims/IIMSCSms;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 197
    :try_start_1
    iget-object v3, p0, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->mSMS:Lcom/motorola/android/ims/IIMSCSms;

    invoke-interface {v3}, Lcom/motorola/android/ims/IIMSCSms;->getSmsProtocolType()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 202
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 204
    const-string v2, ""

    .line 205
    .local v2, tags:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 206
    const-string v2, "+g.3gpp2.smsip"

    .line 214
    :cond_1
    :goto_1
    return-object v2

    .line 198
    .end local v2           #tags:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 199
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v3, "SmsOnImsService"

    const-string v4, "Failed to get Sms protocol type - format"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 202
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 207
    .restart local v2       #tags:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x1

    if-ne v3, v1, :cond_3

    .line 208
    const-string v2, "+g.3gpp.smsip"

    goto :goto_1

    .line 209
    :cond_3
    const/4 v3, 0x2

    if-ne v3, v1, :cond_1

    .line 210
    const-string v2, ""

    goto :goto_1
.end method

.method public open()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/ims/IMSException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-super {p0}, Lcom/motorola/android/ims/IMSService;->open()V

    .line 129
    monitor-enter p0

    .line 130
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->getSMSServer()Lcom/motorola/android/ims/IIMSCSms;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->mSMS:Lcom/motorola/android/ims/IIMSCSms;

    .line 131
    iget-object v0, p0, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->mSMS:Lcom/motorola/android/ims/IIMSCSms;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t get SMS Server."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    return-void
.end method

.method protected removeCallBack()V
    .locals 3

    .prologue
    .line 219
    monitor-enter p0

    .line 220
    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->mSMS:Lcom/motorola/android/ims/IIMSCSms;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 222
    :try_start_1
    iget-object v1, p0, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->mSMS:Lcom/motorola/android/ims/IIMSCSms;

    iget-object v2, p0, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->mCallBack:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService$SMSCallBack;

    invoke-interface {v1, v2}, Lcom/motorola/android/ims/IIMSCSms;->unRegisterCallback(Lcom/motorola/android/ims/IIMSCSmsCallback;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 227
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 228
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SmsOnImsService"

    const-string v2, "Failed to remove the callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 227
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method send(Lcom/motorola/android/ims/service/smsonims/PageMessage;)V
    .locals 9
    .parameter "msg"

    .prologue
    .line 153
    iget v0, p0, Lcom/motorola/android/ims/IMSService;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 154
    const-string v0, "SmsOnImsService"

    const-string v1, "send error for state != STATE_OPEN"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    monitor-enter p0

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->mSMS:Lcom/motorola/android/ims/IIMSCSms;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 162
    :try_start_1
    iget-object v0, p0, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->mSMS:Lcom/motorola/android/ims/IIMSCSms;

    invoke-virtual {p0}, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->getRegId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/motorola/android/ims/service/smsonims/PageMessage;->getToAddr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/motorola/android/ims/service/smsonims/PageMessage;->getFormat()I

    move-result v4

    invoke-virtual {p1}, Lcom/motorola/android/ims/service/smsonims/PageMessage;->getBody()[B

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/motorola/android/ims/IIMSCSms;->sendMessage(JLjava/lang/String;I[B)J

    move-result-wide v7

    .line 163
    .local v7, msgId:J
    invoke-virtual {p1, v7, v8}, Lcom/motorola/android/ims/service/smsonims/PageMessage;->setMsgId(J)V

    .line 168
    iget-object v0, p0, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 173
    .end local v7           #msgId:J
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 174
    return-void

    .line 169
    :catch_0
    move-exception v6

    .line 170
    .local v6, e:Landroid/os/RemoteException;
    const-string v0, "SmsOnImsService"

    const-string v1, "Failed to send the sms to the remote"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 173
    .end local v6           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method sendResponse(Lcom/motorola/android/ims/service/smsonims/PageMessage;I)V
    .locals 8
    .parameter "msg"
    .parameter "status"

    .prologue
    .line 177
    iget v0, p0, Lcom/motorola/android/ims/IMSService;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 178
    const-string v0, "SmsOnImsService"

    const-string v1, "send error for state != STATE_OPEN"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    monitor-enter p0

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->mSMS:Lcom/motorola/android/ims/IIMSCSms;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 183
    :try_start_1
    iget-object v0, p0, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->mSMS:Lcom/motorola/android/ims/IIMSCSms;

    invoke-virtual {p0}, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->getRegId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/motorola/android/ims/service/smsonims/PageMessage;->getMsgId()J

    move-result-wide v3

    const/4 v6, 0x0

    move v5, p2

    invoke-interface/range {v0 .. v6}, Lcom/motorola/android/ims/IIMSCSms;->sendResponse(JJI[B)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 188
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 189
    return-void

    .line 184
    :catch_0
    move-exception v7

    .line 185
    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "SmsOnImsService"

    const-string v1, "Failed to send the response"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 188
    .end local v7           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
