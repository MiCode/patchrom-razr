.class public final Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;
.super Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;
.source "ImsSMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ThreegppSipPduParser;,
        Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsMessageListener;,
        Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsException;,
        Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsServiceListener;,
        Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsConnectionListener;,
        Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;,
        Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$Retry;
    }
.end annotation


# static fields
.field private static final CHANNEL_1X:I = 0x1

.field private static final CHANNEL_IMS:I = 0x0

.field private static final EVENT_CLOSE_IMS_SERVICE:I = 0x17

.field private static final EVENT_CREATE_IMS_SERVICE:I = 0x14

.field private static final EVENT_DESTROY_IMS_SERVICE:I = 0x15

.field private static final EVENT_ENVELOP_RESPONSE:I = 0x19

.field private static final EVENT_OPEN_IMS_SERVICE:I = 0x16

.field private static final EVENT_QUERY_SMSC_DONE:I = 0x18

.field private static final IMS_SERVICE_NAME:Ljava/lang/String; = "smsonims"

.field private static final LOG_TAG:Ljava/lang/String; = "ImsSMSDispatcher"

.field private static final RESPONSE_STR_FROM_SIM_ERROR_6F:Ljava/lang/String; = "6F XX"

.field private static final RESPONSE_STR_FROM_SIM_OK:Ljava/lang/String; = "90 00"

.field private static final TAG:Ljava/lang/String; = "ImsSMSDispatcher"

.field private static final local_logv:Z = true

.field private static sRpMessageRefCounter:I

.field private static volatile singleton:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;


# instance fields
.field private mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

.field private mDefaultSmsc:Ljava/lang/String;

.field private mIMSManager:Lcom/motorola/android/ims/IMSManager;

.field private mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

.field private mIs3gppFormat:Z

.field private mIsSmsLimitedMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->singleton:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    .line 128
    const/4 v0, 0x0

    sput v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->sRpMessageRefCounter:I

    return-void
.end method

.method private constructor <init>(ILcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .locals 2
    .parameter "ownerModemId"
    .parameter "phone"
    .parameter "storageMonitor"
    .parameter "usageMonitor"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 473
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;-><init>(ILcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    .line 121
    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSManager:Lcom/motorola/android/ims/IMSManager;

    .line 122
    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    .line 123
    iput-boolean v1, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIs3gppFormat:Z

    .line 124
    iput-boolean v1, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIsSmsLimitedMode:Z

    .line 126
    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mDefaultSmsc:Ljava/lang/String;

    .line 474
    const-string v0, "ImsSMSDispatcher"

    const-string v1, "ImsSMSDispatcher - dual mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getCommandsInterface()Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 476
    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .locals 2
    .parameter "phone"
    .parameter "storageMonitor"
    .parameter "usageMonitor"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 427
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    .line 121
    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSManager:Lcom/motorola/android/ims/IMSManager;

    .line 122
    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    .line 123
    iput-boolean v1, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIs3gppFormat:Z

    .line 124
    iput-boolean v1, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIsSmsLimitedMode:Z

    .line 126
    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mDefaultSmsc:Ljava/lang/String;

    .line 429
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getCommandsInterface()Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 431
    const-string v0, "ImsSMSDispatcher"

    const-string v1, "ImsSMSDispatcher"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 434
    return-void
.end method

.method private constructor <init>(ZZLcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .locals 2
    .parameter "isCdmaGsmWorldPhone"
    .parameter "isSwitchedToCdma"
    .parameter "phone"
    .parameter "storageMonitor"
    .parameter "usageMonitor"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 455
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;-><init>(ZZLcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    .line 121
    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSManager:Lcom/motorola/android/ims/IMSManager;

    .line 122
    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    .line 123
    iput-boolean v1, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIs3gppFormat:Z

    .line 124
    iput-boolean v1, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIsSmsLimitedMode:Z

    .line 126
    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mDefaultSmsc:Ljava/lang/String;

    .line 456
    const-string v0, "ImsSMSDispatcher"

    const-string v1, "ImsSMSDispatcher - dual mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-virtual {p3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getCommandsInterface()Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 460
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 461
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 94
    sget v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->sRpMessageRefCounter:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    sput p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->sRpMessageRefCounter:I

    return p0
.end method

.method static synthetic access$004()I
    .locals 1

    .prologue
    .line 94
    sget v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->sRpMessageRefCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->sRpMessageRefCounter:I

    return v0
.end method

.method static synthetic access$100(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIsSmsLimitedMode:Z

    return v0
.end method

.method static synthetic access$102(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIsSmsLimitedMode:Z

    return p1
.end method

.method static synthetic access$200(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIs3gppFormat:Z

    return v0
.end method

.method static synthetic access$302(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIs3gppFormat:Z

    return p1
.end method

.method static synthetic access$400(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$600(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static create3gppSipPduRpAck(I)[B
    .locals 6
    .parameter "rpMessageRef"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1068
    const/4 v3, 0x0

    new-array v0, v3, [B

    .line 1071
    .local v0, baSipPdu:[B
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1072
    .local v2, result:Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1073
    invoke-virtual {v2, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1075
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1080
    .end local v2           #result:Ljava/io/ByteArrayOutputStream;
    :goto_0
    return-object v0

    .line 1076
    :catch_0
    move-exception v1

    .line 1077
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "ImsSMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " exception  is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static create3gppSipPduRpError(BB)[B
    .locals 6
    .parameter "rpMessageRef"
    .parameter "tpFCS"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1088
    new-array v0, v3, [B

    .line 1091
    .local v0, baSipPdu:[B
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1092
    .local v2, result:Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1093
    invoke-virtual {v2, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1094
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1095
    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1101
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1104
    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1107
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1111
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1116
    .end local v2           #result:Ljava/io/ByteArrayOutputStream;
    :goto_0
    return-object v0

    .line 1112
    :catch_0
    move-exception v1

    .line 1113
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "ImsSMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " exception  is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance(ILcom/android/internal/telephony/cdma/CDMAPhone;)Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;
    .locals 3
    .parameter "ownerModemId"
    .parameter "phone"

    .prologue
    .line 465
    sget-object v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->singleton:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    if-nez v0, :cond_0

    .line 466
    new-instance v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    iget-object v2, p1, Lcom/android/internal/telephony/PhoneBase;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;-><init>(ILcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    sput-object v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->singleton:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    .line 468
    :cond_0
    sget-object v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->singleton:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    return-object v0
.end method

.method public static getInstance(Lcom/android/internal/telephony/cdma/CDMAPhone;)Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;
    .locals 3
    .parameter "phone"

    .prologue
    .line 438
    sget-object v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->singleton:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    if-nez v0, :cond_0

    .line 439
    new-instance v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-direct {v0, p0, v1, v2}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    sput-object v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->singleton:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    .line 441
    :cond_0
    sget-object v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->singleton:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    return-object v0
.end method

.method public static getInstance(ZZLcom/android/internal/telephony/cdma/CDMAPhone;)Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;
    .locals 6
    .parameter "isCdmaGsmWorldPhone"
    .parameter "isSwitchedToCdma"
    .parameter "phone"

    .prologue
    .line 447
    sget-object v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->singleton:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    if-nez v0, :cond_0

    .line 448
    new-instance v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    iget-object v4, p2, Lcom/android/internal/telephony/PhoneBase;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    iget-object v5, p2, Lcom/android/internal/telephony/PhoneBase;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    move v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;-><init>(ZZLcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    sput-object v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->singleton:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    .line 450
    :cond_0
    sget-object v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->singleton:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    return-object v0
.end method

.method private handleMessageEventEnvelopResponse(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    .line 956
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 957
    .local v0, ar:Landroid/os/AsyncResult;
    if-nez v0, :cond_0

    .line 958
    const-string v11, "ImsSMSDispatcher"

    const-string v12, "warning: in handleMessageEventEnvelopResponse, ar is null"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    :goto_0
    return-void

    .line 963
    :cond_0
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/android/ims/service/smsonims/PageMessage;

    .line 964
    .local v3, origPageMsg:Lcom/motorola/android/ims/service/smsonims/PageMessage;
    if-nez v3, :cond_1

    .line 965
    const-string v11, "ImsSMSDispatcher"

    const-string v12, "warning: in handleMessageEventEnvelopResponse, origPageMsg is null"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 970
    :cond_1
    invoke-virtual {v3}, Lcom/motorola/android/ims/service/smsonims/PageMessage;->getBody()[B

    move-result-object v5

    .line 971
    .local v5, origSipPdu:[B
    if-nez v5, :cond_2

    .line 972
    const-string v11, "ImsSMSDispatcher"

    const-string v12, "warning: in handleMessageEventEnvelopResponse, origSipPdu is null"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 977
    :cond_2
    const-string v11, "ImsSMSDispatcher"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "origSipPdu: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v5}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    new-instance v6, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ThreegppSipPduParser;

    invoke-direct {v6, v5}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ThreegppSipPduParser;-><init>([B)V

    .line 982
    .local v6, pduParser:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ThreegppSipPduParser;
    iget-byte v4, v6, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ThreegppSipPduParser;->mRP_MessageReference:B

    .line 985
    .local v4, origRpMessageRef:B
    iget-object v9, v6, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ThreegppSipPduParser;->mstrRP_OriginatorAddress:Ljava/lang/String;

    .line 987
    .local v9, strOrigAddr:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "tel:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_4

    .end local v9           #strOrigAddr:Ljava/lang/String;
    :goto_1
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 992
    .local v10, toAddr:Ljava/lang/String;
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 993
    .local v7, res:Ljava/lang/String;
    const-string v11, "ImsSMSDispatcher"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Get Response result From SIM is: \""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    iget-object v11, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v11, :cond_5

    .line 997
    const-string v11, "ImsSMSDispatcher"

    const-string v12, "ar.exception="

    iget-object v13, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v11, v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 999
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1000
    const-string v7, "6F XX"

    .line 1008
    :cond_3
    :goto_2
    const/4 v8, 0x0

    .line 1012
    .local v8, sipPdu:[B
    :try_start_0
    const-string v11, "90 00"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1013
    invoke-static {v4}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->create3gppSipPduRpAck(I)[B
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v8

    .line 1039
    :goto_3
    const-string v12, "ImsSMSDispatcher"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sipPdu: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-nez v8, :cond_b

    const-string v11, "(null)"

    :goto_4
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    iget-object v11, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    if-eqz v11, :cond_c

    if-eqz v8, :cond_c

    .line 1044
    iget-object v11, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    invoke-virtual {v11, v10, v8}, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->createSMSMessage(Ljava/lang/String;[B)Lcom/motorola/android/ims/service/smsonims/PageMessage;

    move-result-object v2

    .line 1045
    .local v2, mPageMessage:Lcom/motorola/android/ims/service/smsonims/PageMessage;
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Lcom/motorola/android/ims/service/smsonims/PageMessage;->setFormat(I)V

    .line 1047
    new-instance v11, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$2;

    invoke-direct {v11, p0}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$2;-><init>(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;)V

    invoke-virtual {v2, v11}, Lcom/motorola/android/ims/service/smsonims/PageMessage;->setListener(Lcom/motorola/android/ims/service/smsonims/PageMessageListener;)V

    .line 1054
    invoke-virtual {v2}, Lcom/motorola/android/ims/service/smsonims/PageMessage;->send()V

    goto/16 :goto_0

    .line 987
    .end local v2           #mPageMessage:Lcom/motorola/android/ims/service/smsonims/PageMessage;
    .end local v7           #res:Ljava/lang/String;
    .end local v8           #sipPdu:[B
    .end local v10           #toAddr:Ljava/lang/String;
    .restart local v9       #strOrigAddr:Ljava/lang/String;
    :cond_4
    iget-object v9, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mDefaultSmsc:Ljava/lang/String;

    goto/16 :goto_1

    .line 1003
    .end local v9           #strOrigAddr:Ljava/lang/String;
    .restart local v7       #res:Ljava/lang/String;
    .restart local v10       #toAddr:Ljava/lang/String;
    :cond_5
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1004
    const-string v7, "90 00"

    goto :goto_2

    .line 1014
    .restart local v8       #sipPdu:[B
    :cond_6
    :try_start_1
    const-string v11, "93 00"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1016
    const/16 v11, -0x2c

    invoke-static {v4, v11}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->create3gppSipPduRpError(BB)[B

    move-result-object v8

    goto :goto_3

    .line 1018
    :cond_7
    const-string v11, "9F "

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1019
    const-string v11, "ImsSMSDispatcher"

    const-string v12, "warning: res is \"9F \", handle as 6F XX"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    :cond_8
    :goto_5
    const/16 v11, -0x2b

    invoke-static {v4, v11}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->create3gppSipPduRpError(BB)[B

    move-result-object v8

    goto :goto_3

    .line 1020
    :cond_9
    const-string v11, "6F "

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 1021
    const-string v11, "9E "

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1022
    const-string v11, "ImsSMSDispatcher"

    const-string v12, "warning: res is \"9E \", handle as 6F XX"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_5

    .line 1030
    :catch_0
    move-exception v1

    .line 1031
    .local v1, e:Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    const-string v11, "ImsSMSDispatcher"

    const-string v12, ""

    invoke-static {v11, v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1024
    .end local v1           #e:Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    :cond_a
    :try_start_2
    const-string v11, "ImsSMSDispatcher"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "warning: unknown Response From SIM:\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\",handle as 6F XX"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    .line 1032
    :catch_1
    move-exception v1

    .line 1033
    .local v1, e:Lcom/android/internal/util/BitwiseInputStream$AccessException;
    const-string v11, "ImsSMSDispatcher"

    const-string v12, ""

    invoke-static {v11, v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1034
    .end local v1           #e:Lcom/android/internal/util/BitwiseInputStream$AccessException;
    :catch_2
    move-exception v1

    .line 1035
    .local v1, e:Ljava/io/IOException;
    const-string v11, "ImsSMSDispatcher"

    const-string v12, ""

    invoke-static {v11, v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1039
    .end local v1           #e:Ljava/io/IOException;
    :cond_b
    invoke-static {v8}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_4

    .line 1057
    :cond_c
    const-string v11, "ImsSMSDispatcher"

    const-string v12, "warning: mPageMessage cannot be sent!"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 11
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 198
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1110064

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    .line 200
    .local v8, moSmsOverIms:Z
    const/4 v9, 0x1

    .line 202
    .local v9, nvImsSmsOverIP:Z
    :try_start_0
    const-string v0, "iphonenvinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/android/telephony/IPhoneNVInfo;

    move-result-object v10

    .line 204
    .local v10, nvInfo:Lcom/motorola/android/telephony/IPhoneNVInfo;
    if-eqz v10, :cond_1

    .line 205
    invoke-interface {v10}, Lcom/motorola/android/telephony/IPhoneNVInfo;->getImsSmsOverIP()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 216
    .end local v10           #nvInfo:Lcom/motorola/android/telephony/IPhoneNVInfo;
    :goto_0
    if-nez v8, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->hasLteServiceOnly()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz v9, :cond_2

    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    invoke-virtual {v0}, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->getState()I

    move-result v0

    if-ne v0, v6, :cond_2

    move v5, v2

    .line 222
    .local v5, imsAvailable:Z
    :goto_1
    const-string v3, "ImsSMSDispatcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LteOnly="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->hasLteServiceOnly()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", moSmsOverIms="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", NV ImsSmsOverIP="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", ImsServiceOpen="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    invoke-virtual {v0}, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->getState()I

    move-result v0

    if-ne v0, v6, :cond_3

    move v0, v2

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", imsAvailable="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    new-instance v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;

    if-eqz v5, :cond_5

    move v6, v1

    :goto_3
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;-><init>(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZI)V

    return-object v0

    .line 207
    .end local v5           #imsAvailable:Z
    .restart local v10       #nvInfo:Lcom/motorola/android/telephony/IPhoneNVInfo;
    :cond_1
    :try_start_1
    const-string v0, "ImsSMSDispatcher"

    const-string v3, "Get null object of IPhoneNVInfo !!!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 209
    .end local v10           #nvInfo:Lcom/motorola/android/telephony/IPhoneNVInfo;
    :catch_0
    move-exception v7

    .line 210
    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "ImsSMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error get NV ImsSmsOverIP: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v7           #e:Landroid/os/RemoteException;
    :cond_2
    move v5, v1

    .line 216
    goto/16 :goto_1

    .restart local v5       #imsAvailable:Z
    :cond_3
    move v0, v1

    .line 222
    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    move v6, v2

    .line 227
    goto :goto_3
.end method

.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;)V
    .locals 3
    .parameter "success"
    .parameter "result"
    .parameter "response"
    .parameter "mtSmsTracker"

    .prologue
    .line 500
    const-string v1, "ImsSMSDispatcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "success="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; result="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; delivered by:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p4, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    if-eqz p4, :cond_1

    iget v0, p4, Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;->mDeliveredBy:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 508
    const-string v0, "ImsSMSDispatcher"

    const-string v1, "ACK 1x sms"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;)V

    .line 529
    :goto_1
    return-void

    .line 500
    :cond_0
    iget v0, p4, Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;->mDeliveredBy:I

    goto :goto_0

    .line 511
    :cond_1
    if-eqz p4, :cond_2

    iget v0, p4, Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;->mDeliveredBy:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 519
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastAcknowledgedSmsFingerprint:[B

    .line 520
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    .line 522
    const-string v0, "ImsSMSDispatcher"

    const-string v1, "Don\'t need to ack on SMS layer for SMS over IMS."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 524
    :cond_2
    const-string v0, "ImsSMSDispatcher"

    const-string v1, "Ack by 1x for SIM OTA SMS which saved by RIL/modem."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;)V

    goto :goto_1
.end method

.method public activate()V
    .locals 1

    .prologue
    .line 479
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->activate()V

    .line 480
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 481
    return-void
.end method

.method public deactivate()V
    .locals 0

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->dispose()V

    .line 485
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 489
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->dispose()V

    .line 490
    const-string v0, "ImsSMSDispatcher"

    const-string v1, "dispose"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 492
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 793
    invoke-super {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->handleMessage(Landroid/os/Message;)V

    .line 795
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 874
    :cond_0
    :goto_0
    return-void

    .line 797
    :pswitch_0
    const-string v2, "ImsSMSDispatcher"

    const-string v3, "EVENT_CREATE_IMS_SERVICE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/motorola/android/ims/IMSManager;->getManager(Landroid/content/Context;)Lcom/motorola/android/ims/IMSManager;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSManager:Lcom/motorola/android/ims/IMSManager;

    .line 800
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSManager:Lcom/motorola/android/ims/IMSManager;

    if-nez v2, :cond_1

    .line 801
    const-string v2, "ImsSMSDispatcher"

    const-string v3, "FATAL - Fail to get IMSManager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 805
    :cond_1
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSManager:Lcom/motorola/android/ims/IMSManager;

    new-instance v3, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsConnectionListener;

    invoke-direct {v3, p0}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsConnectionListener;-><init>(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;)V

    invoke-virtual {v2, v3}, Lcom/motorola/android/ims/IMSManager;->setListener(Lcom/motorola/android/ims/ConnectionStateListener;)V

    .line 809
    :try_start_0
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSManager:Lcom/motorola/android/ims/IMSManager;

    const-string v3, "smsonims"

    invoke-virtual {v2, v3}, Lcom/motorola/android/ims/IMSManager;->createService(Ljava/lang/String;)Lcom/motorola/android/ims/IMSService;

    move-result-object v2

    check-cast v2, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    iput-object v2, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    .line 810
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    if-nez v2, :cond_2

    .line 811
    const-string v2, "ImsSMSDispatcher"

    const-string v3, "FATAL - Fail to create SmsOnIMSService"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/motorola/android/ims/IMSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 820
    :catch_0
    move-exception v1

    .line 821
    .local v1, e:Lcom/motorola/android/ims/IMSException;
    const-string v2, "ImsSMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail create service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 814
    .end local v1           #e:Lcom/motorola/android/ims/IMSException;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    new-instance v3, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsServiceListener;

    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    invoke-direct {v3, p0, v4}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsServiceListener;-><init>(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;Lcom/motorola/android/ims/IMSService;)V

    invoke-virtual {v2, v3}, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->setListener(Lcom/motorola/android/ims/IMSServiceListener;)V

    .line 817
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSManager:Lcom/motorola/android/ims/IMSManager;

    invoke-virtual {v2}, Lcom/motorola/android/ims/IMSManager;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 818
    const/16 v2, 0x16

    invoke-virtual {p0, v2}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Lcom/motorola/android/ims/IMSException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 822
    :catch_1
    move-exception v1

    .line 823
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "ImsSMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail create service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 828
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :pswitch_1
    const-string v2, "ImsSMSDispatcher"

    const-string v3, "EVENT_DESTROY_IMS_SERVICE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    invoke-virtual {v2}, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->close()V

    .line 831
    :cond_3
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSManager:Lcom/motorola/android/ims/IMSManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSManager:Lcom/motorola/android/ims/IMSManager;

    invoke-virtual {v2}, Lcom/motorola/android/ims/IMSManager;->onDestroy()V

    goto/16 :goto_0

    .line 835
    :pswitch_2
    const-string v2, "ImsSMSDispatcher"

    const-string v3, "EVENT_OPEN_IMS_SERVICE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :try_start_2
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    invoke-virtual {v2}, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->open()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/motorola/android/ims/IMSException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    .line 839
    :catch_2
    move-exception v1

    .line 840
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v2, "ImsSMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail open service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 841
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v1

    .line 842
    .local v1, e:Lcom/motorola/android/ims/IMSException;
    const-string v2, "ImsSMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail open service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 847
    .end local v1           #e:Lcom/motorola/android/ims/IMSException;
    :pswitch_3
    const-string v2, "ImsSMSDispatcher"

    const-string v3, "EVENT_CLOSE_IMS_SERVICE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 854
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 855
    .local v0, ar:Landroid/os/AsyncResult;
    if-eqz v0, :cond_0

    .line 856
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_4

    .line 857
    const-string v2, "ImsSMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error get default SMSC address"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 859
    :cond_4
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mDefaultSmsc:Ljava/lang/String;

    goto/16 :goto_0

    .line 868
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->handleMessageEventEnvelopResponse(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 795
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected handleSendComplete(Landroid/os/AsyncResult;)V
    .locals 16
    .parameter "ar"

    .prologue
    .line 684
    const-string v13, "ImsSMSDispatcher"

    const-string v14, "handleSendComplete"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v12, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;

    .line 687
    .local v12, tracker:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/telephony/SmsResponse;

    .line 689
    .local v10, smsResponse:Lcom/android/internal/telephony/SmsResponse;
    iget-boolean v13, v12, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;->mImsSms:Z

    if-nez v13, :cond_1

    .line 691
    const-string v13, "ImsSMSDispatcher"

    const-string v14, "1x sms"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->handleSendComplete(Landroid/os/AsyncResult;)V

    .line 789
    :cond_0
    :goto_0
    return-void

    .line 699
    :cond_1
    iget-object v9, v12, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    .line 701
    .local v9, sentIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v13, :cond_3

    .line 702
    const-string v13, "ImsSMSDispatcher"

    const-string v14, "SMS send successfully"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    iget-object v13, v12, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v13, :cond_2

    .line 706
    iget v13, v10, Lcom/android/internal/telephony/SmsResponse;->messageRef:I

    iput v13, v12, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    .line 707
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    :cond_2
    if-eqz v9, :cond_0

    .line 712
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 713
    .local v4, intent:Landroid/content/Intent;
    const-string v13, "refNumber"

    iget v14, v10, Lcom/android/internal/telephony/SmsResponse;->messageRef:I

    invoke-virtual {v4, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 715
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v14, -0x1

    invoke-virtual {v9, v13, v14, v4}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 716
    :catch_0
    move-exception v13

    goto :goto_0

    .line 719
    .end local v4           #intent:Landroid/content/Intent;
    :cond_3
    const-string v13, "ImsSMSDispatcher"

    const-string v14, "SMS send failed and retry"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v13}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v13

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getState()I

    move-result v11

    .line 723
    .local v11, ss:I
    if-eqz v11, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    invoke-virtual {v13}, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->getState()I

    move-result v13

    const/4 v14, 0x2

    if-eq v13, v14, :cond_5

    .line 727
    :cond_4
    invoke-static {v11, v12}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->handleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 729
    :cond_5
    iget-object v13, v12, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;->mRetries:Ljava/util/LinkedList;

    invoke-virtual {v13}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$Retry;

    .line 730
    .local v7, retry:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$Retry;
    if-nez v7, :cond_7

    .line 731
    const-string v13, "ImsSMSDispatcher"

    const-string v14, "retry is null, stop retrying!"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-object v13, v12, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v13, :cond_0

    .line 734
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 735
    .local v3, fillIn:Landroid/content/Intent;
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v13, :cond_6

    .line 736
    const-string v14, "errorCode"

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, Lcom/android/internal/telephony/SmsResponse;

    iget v13, v13, Lcom/android/internal/telephony/SmsResponse;->errorCode:I

    invoke-virtual {v3, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 737
    const-string v14, "ImsSMSDispatcher"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Temporary Error, Error No: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, Lcom/android/internal/telephony/SmsResponse;

    iget v13, v13, Lcom/android/internal/telephony/SmsResponse;->errorCode:I

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    :cond_6
    :try_start_1
    iget-object v13, v12, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/16 v15, 0xff

    invoke-virtual {v13, v14, v15, v3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 744
    :catch_1
    move-exception v2

    .line 745
    .local v2, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v13, "ImsSMSDispatcher"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " send fail - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 749
    .end local v2           #ex:Landroid/app/PendingIntent$CanceledException;
    .end local v3           #fillIn:Landroid/content/Intent;
    :cond_7
    const-string v13, "ImsSMSDispatcher"

    invoke-virtual {v7}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$Retry;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-boolean v13, v7, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$Retry;->mPrompt:Z

    if-eqz v13, :cond_8

    .line 753
    new-instance v5, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v12}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$1;-><init>(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;)V

    .line 767
    .local v5, mListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    .line 769
    .local v6, r:Landroid/content/res/Resources;
    new-instance v13, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v14, 0x10403fa

    invoke-virtual {v6, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const-string v14, "Message failed would you like to retry?"

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x10403fc

    invoke-virtual {v6, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x10403fd

    invoke-virtual {v6, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 776
    .local v1, d:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v13

    const/16 v14, 0x7d3

    invoke-virtual {v13, v14}, Landroid/view/Window;->setType(I)V

    .line 777
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 781
    .end local v1           #d:Landroid/app/AlertDialog;
    .end local v5           #mListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v6           #r:Landroid/content/res/Resources;
    :cond_8
    iget v13, v7, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$Retry;->mChannel:I

    iput v13, v12, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;->mChannel:I

    .line 784
    const/4 v13, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v12}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 785
    .local v8, retryMsg:Landroid/os/Message;
    iget v13, v7, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$Retry;->mDelay:I

    int-to-long v13, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v13, v14}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method protected sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 14
    .parameter "tr"

    .prologue
    .line 591
    const-string v11, "ImsSMSDispatcher"

    const-string v12, "sendSms"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    iget-boolean v11, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIsSmsLimitedMode:Z

    if-eqz v11, :cond_1

    .line 593
    const-string v11, "ImsSMSDispatcher"

    const-string v12, "IMS in limited mode, sending over 1x"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    invoke-super {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 680
    :cond_0
    :goto_0
    return-void

    .line 600
    :cond_1
    iget-object v11, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->hasLteServiceOnly()Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    invoke-virtual {v11}, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->getState()I

    move-result v11

    const/4 v12, 0x2

    if-eq v11, v12, :cond_3

    .line 604
    :cond_2
    const-string v11, "ImsSMSDispatcher"

    const-string v12, "Has LTE service only but IMSService is not available! Stop send!"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iget-object v11, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v11, :cond_0

    .line 608
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 609
    .local v3, fillIn:Landroid/content/Intent;
    const/4 v1, 0x1

    .line 610
    .local v1, errorCode:I
    const-string v11, "errorCode"

    invoke-virtual {v3, v11, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 611
    const-string v11, "ImsSMSDispatcher"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Internal Error, Error No: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :try_start_0
    iget-object v11, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    iget-object v12, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/16 v13, 0x101

    invoke-virtual {v11, v12, v13, v3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 615
    :catch_0
    move-exception v2

    .line 616
    .local v2, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v11, "ImsSMSDispatcher"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " send fail - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #errorCode:I
    .end local v2           #ex:Landroid/app/PendingIntent$CanceledException;
    .end local v3           #fillIn:Landroid/content/Intent;
    :cond_3
    move-object v10, p1

    .line 623
    check-cast v10, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;

    .line 626
    .local v10, tracker:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;
    iget-boolean v11, v10, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;->mImsSms:Z

    if-eqz v11, :cond_4

    iget v11, v10, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;->mChannel:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    .line 627
    :cond_4
    const-string v11, "ImsSMSDispatcher"

    const-string v12, "sending over 1x"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-super {p0, v10}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 633
    :cond_5
    iget-object v5, v10, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 634
    .local v5, map:Ljava/util/HashMap;
    const-string v11, "pdu"

    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    move-object v6, v11

    check-cast v6, [B

    .line 635
    .local v6, pdu:[B
    const-string v11, "sip_pdu"

    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    move-object v7, v11

    check-cast v7, [B

    .line 636
    .local v7, sipPdu:[B
    const-string v11, "smsc"

    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    move-object v8, v11

    check-cast v8, [B

    .line 637
    .local v8, smsc:[B
    if-nez v7, :cond_6

    .line 639
    if-eqz v6, :cond_6

    .line 641
    :try_start_1
    iget-boolean v11, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIs3gppFormat:Z

    if-eqz v11, :cond_8

    .line 642
    iget-object v11, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mDefaultSmsc:Ljava/lang/String;

    iget v12, v10, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;->mRpMessageRef:I

    invoke-static {v6, v10, v11, v12}, Lcom/android/internal/telephony/cdma/SmsMessage;->create3gppSipPdu([BLcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;I)V

    .line 648
    :goto_1
    const-string v11, "sip_pdu"

    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    move-object v0, v11

    check-cast v0, [B

    move-object v7, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 655
    :cond_6
    :goto_2
    if-eqz v7, :cond_0

    .line 659
    const/4 v9, 0x0

    .line 660
    .local v9, toAddr:Ljava/lang/String;
    iget-boolean v11, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIs3gppFormat:Z

    if-eqz v11, :cond_9

    .line 661
    invoke-static {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->smscByteToString([B)Ljava/lang/String;

    move-result-object v9

    .line 662
    if-nez v9, :cond_7

    .line 663
    iget-object v9, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mDefaultSmsc:Ljava/lang/String;

    .line 669
    :cond_7
    :goto_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "tel:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 670
    iget-object v11, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    if-eqz v11, :cond_0

    .line 671
    iget-object v11, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    invoke-virtual {v11, v9, v7}, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->createSMSMessage(Ljava/lang/String;[B)Lcom/motorola/android/ims/service/smsonims/PageMessage;

    move-result-object v4

    .line 672
    .local v4, mPageMessage:Lcom/motorola/android/ims/service/smsonims/PageMessage;
    const-string v11, "ImsSMSDispatcher"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "toAddr: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    new-instance v11, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsMessageListener;

    invoke-direct {v11, p0, v10}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsMessageListener;-><init>(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;)V

    invoke-virtual {v4, v11}, Lcom/motorola/android/ims/service/smsonims/PageMessage;->setListener(Lcom/motorola/android/ims/service/smsonims/PageMessageListener;)V

    .line 675
    invoke-virtual {v4}, Lcom/motorola/android/ims/service/smsonims/PageMessage;->send()V

    goto/16 :goto_0

    .line 645
    .end local v4           #mPageMessage:Lcom/motorola/android/ims/service/smsonims/PageMessage;
    .end local v9           #toAddr:Ljava/lang/String;
    :cond_8
    :try_start_2
    invoke-static {v6, v10}, Lcom/android/internal/telephony/cdma/SmsMessage;->createSipPdu([BLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 649
    :catch_1
    move-exception v2

    .line 650
    .local v2, ex:Ljava/lang/Exception;
    const-string v11, "ImsSMSDispatcher"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SIP Pdu encode failed: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 665
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v9       #toAddr:Ljava/lang/String;
    :cond_9
    const-string v11, "desitnation_addr"

    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #toAddr:Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .restart local v9       #toAddr:Ljava/lang/String;
    goto :goto_3
.end method

.method protected sendStkSms([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 11
    .parameter "smsc"
    .parameter "pdu"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 536
    const-string v8, "ImsSMSDispatcher"

    const-string v9, "sendStkSms"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    if-nez p2, :cond_1

    .line 538
    if-eqz p3, :cond_0

    .line 540
    const/4 v8, 0x3

    :try_start_0
    invoke-virtual {p3, v8}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_2

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 545
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 546
    .local v3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, "smsc"

    invoke-virtual {v3, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    const-string v8, "pdu"

    invoke-virtual {v3, v8, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    invoke-virtual {p0, v3, p3, p4}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v7

    check-cast v7, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;

    .line 550
    .local v7, tracker:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;
    iget-object v8, v7, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;->mRetries:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->clear()V

    .line 551
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    .line 552
    .local v5, ss:I
    if-eqz v5, :cond_3

    iget-object v8, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    invoke-virtual {v8}, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->getState()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_3

    .line 556
    :cond_2
    invoke-static {v5, v7}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->handleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 561
    :cond_3
    :try_start_1
    iget-object v8, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mDefaultSmsc:Ljava/lang/String;

    iget v9, v7, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;->mRpMessageRef:I

    invoke-static {p2, v7, v8, v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->create3gppSipPduFromRawPdu([BLcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;I)V

    .line 562
    const-string v8, "sip_pdu"

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    move-object v0, v8

    check-cast v0, [B

    move-object v4, v0

    .line 563
    .local v4, sipPdu:[B
    if-eqz v4, :cond_0

    .line 564
    const-string v8, "ImsSMSDispatcher"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "smsc pdu is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->smscByteToString([B)Ljava/lang/String;

    move-result-object v6

    .line 566
    .local v6, toAddr:Ljava/lang/String;
    if-nez v6, :cond_4

    .line 567
    iget-object v6, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mDefaultSmsc:Ljava/lang/String;

    .line 568
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "tel:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 569
    iget-object v8, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    if-eqz v8, :cond_5

    .line 570
    iget-object v8, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    invoke-virtual {v8, v6, v4}, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->createSMSMessage(Ljava/lang/String;[B)Lcom/motorola/android/ims/service/smsonims/PageMessage;

    move-result-object v2

    .line 571
    .local v2, mPageMessage:Lcom/motorola/android/ims/service/smsonims/PageMessage;
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Lcom/motorola/android/ims/service/smsonims/PageMessage;->setFormat(I)V

    .line 572
    const-string v8, "ImsSMSDispatcher"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "toAddr: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    new-instance v8, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsMessageListener;

    invoke-direct {v8, p0, v7}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsMessageListener;-><init>(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;)V

    invoke-virtual {v2, v8}, Lcom/motorola/android/ims/service/smsonims/PageMessage;->setListener(Lcom/motorola/android/ims/service/smsonims/PageMessageListener;)V

    .line 574
    invoke-virtual {v2}, Lcom/motorola/android/ims/service/smsonims/PageMessage;->send()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 584
    .end local v2           #mPageMessage:Lcom/motorola/android/ims/service/smsonims/PageMessage;
    .end local v4           #sipPdu:[B
    .end local v6           #toAddr:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 585
    .local v1, ex:Ljava/lang/Exception;
    const-string v8, "ImsSMSDispatcher"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "stk gsm pdu send failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 576
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v4       #sipPdu:[B
    .restart local v6       #toAddr:Ljava/lang/String;
    :cond_5
    :try_start_2
    const-string v8, "ImsSMSDispatcher"

    const-string v9, "No IMS server,send failed"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 577
    if-eqz p3, :cond_0

    .line 579
    const/4 v8, 0x1

    :try_start_3
    invoke-virtual {p3, v8}, Landroid/app/PendingIntent;->send(I)V
    :try_end_3
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 580
    :catch_1
    move-exception v8

    goto/16 :goto_0

    .line 541
    .end local v3           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4           #sipPdu:[B
    .end local v5           #ss:I
    .end local v6           #toAddr:Ljava/lang/String;
    .end local v7           #tracker:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;
    :catch_2
    move-exception v8

    goto/16 :goto_0
.end method
