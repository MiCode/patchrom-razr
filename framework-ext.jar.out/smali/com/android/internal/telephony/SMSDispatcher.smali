.class public abstract Lcom/android/internal/telephony/SMSDispatcher;
.super Landroid/os/Handler;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;,
        Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;,
        Lcom/android/internal/telephony/SMSDispatcher$ImsConnectionListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_SMS_TIMEOUT:I = 0x1770

.field private static final DESTINATION_PORT_COLUMN:I = 0x2

.field protected static final DRM_RIGHTS_WBXML:B = 0x4bt

.field protected static final DRM_RIGHTS_WBXML_MIME_TYPE:Ljava/lang/String; = "application/vnd.oma.drm.rights+wbxml"

.field protected static final DRM_RIGHTS_XML:B = 0x4at

.field protected static final DRM_RIGHTS_XML_MIME_TYPE:Ljava/lang/String; = "application/vnd.oma.drm.rights+xml"

.field private static final EVENT_ALERT_TIMEOUT:I = 0x6

.field private static final EVENT_CREATE_IMS_SERVICE:I = 0x14

.field protected static final EVENT_ICC_CHANGED:I = 0x64

.field protected static final EVENT_NEW_ICC_SMS:I = 0x65

.field protected static final EVENT_NEW_SMS:I = 0x1

.field private static final EVENT_POST_ALERT:I = 0x4

.field protected static final EVENT_SEND_CONFIRMED_SMS:I = 0x5

.field protected static final EVENT_SEND_RETRY:I = 0x3

.field protected static final EVENT_SEND_SMS_COMPLETE:I = 0x2

.field static final EVENT_STOP_SENDING:I = 0x7

.field protected static final EVENT_USER_DEFINED_BEGIN:I = 0x64

.field private static final MAX_SEND_RETRIES:I = 0x3

.field protected static final MMS_MIME_TYPE:Ljava/lang/String; = "application/vnd.wap.mms-message"

.field private static final MO_MSG_QUEUE_LIMIT:I = 0x5

.field private static final PDU_COLUMN:I = 0x0

.field private static final PDU_PROJECTION:[Ljava/lang/String; = null

.field private static final PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String; = null

.field public static final RECEIVE_EMERGENCY_BROADCAST_PERMISSION:Ljava/lang/String; = "android.permission.RECEIVE_EMERGENCY_BROADCAST"

.field public static final RECEIVE_SMS_PERMISSION:Ljava/lang/String; = "android.permission.RECEIVE_SMS"

.field private static final SEND_NEXT_MSG_EXTRA:Ljava/lang/String; = "SendNextMsg"

.field private static final SEND_RETRY_DELAY:I = 0x7d0

.field private static final SEQUENCE_COLUMN:I = 0x1

.field private static final SINGLE_PART_SMS:I = 0x1

.field public static final SMS_DELIVERED_BY_CDMA:I = 0x2

.field public static final SMS_DELIVERED_BY_GSM:I = 0x1

.field public static final SMS_DELIVERED_BY_IMS:I = 0x3

.field public static final SMS_DELIVERED_BY_NONE:I = 0x0

.field public static final SMS_STACK_TYPE_CDMA:I = 0x1

.field public static final SMS_STACK_TYPE_GSM:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SMSDispatcher"

.field private static final WAKE_LOCK_TIMEOUT:I = 0x1388

.field protected static final WAP_CONNECTIVITY_MIME_PORT:B = 0x36t

.field protected static final WAP_CONNECTIVITY_MIME_TYPE:Ljava/lang/String; = "application/vnd.wap.connectivity-wbxml"

.field protected static final WAP_CO_MIME_PORT:B = 0x32t

.field protected static final WAP_CO_MIME_TYPE:Ljava/lang/String; = "application/vnd.wap.coc"

.field protected static final WAP_HEADER_FIELD_NUM__CONTENT_LENGTH:I = 0xd

.field protected static final WAP_HEADER_FIELD_NUM__PUSH_FLAG:I = 0x34

.field protected static final WAP_HEADER_FIELD_NUM__X_WAP_APPLICATION_ID:I = 0x2f

.field protected static final WAP_HEADER_FIELD_NUM__X_WAP_CONTENT_URI:I = 0x30

.field protected static final WAP_HEADER_FIELD_NUM__X_WAP_INITIATOR_URI:I = 0x31

.field protected static final WAP_PDU_LENGTH_QUOTE:I = 0x1f

.field protected static final WAP_PDU_SHORT_LENGTH_MAX:I = 0x1e

.field protected static final WAP_PDU_TYPE_CONFIRMED_PUSH:I = 0x7

.field protected static final WAP_PDU_TYPE_PUSH:I = 0x6

.field protected static final WAP_SI_MIME_PORT:B = 0x2et

.field protected static final WAP_SI_MIME_TYPE:Ljava/lang/String; = "application/vnd.wap.sic"

.field protected static final WAP_SL_MIME_PORT:B = 0x30t

.field protected static final WAP_SL_MIME_TYPE:Ljava/lang/String; = "application/vnd.wap.slc"

.field protected static final WAP_SYNCML_DM_PORT:B = 0x44t

.field protected static final WAP_SYNCML_DM_TYPE:Ljava/lang/String; = "application/vnd.syncml.notification"

.field protected static final WAP_SYNCML_DM_WBXML_PORT:B = 0x42t

.field protected static final WAP_SYNCML_DM_WBXML_TYPE:Ljava/lang/String; = "application/vnd.syncml.dm+wbxml"

.field protected static final WAP_SYNCML_DM_XML_PORT:B = 0x43t

.field protected static final WAP_SYNCML_DM_XML_TYPE:Ljava/lang/String; = "application/vnd.syncml.dm+xml"

.field protected static final mRawUri:Landroid/net/Uri;

.field private static sConcatenatedRef:I


# instance fields
.field protected final deliveryPendingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field private handleCdmaOtaMdnUpdate:Landroid/os/Handler;

.field protected final mCm:Lcom/android/internal/telephony/CommandsInterface;

.field protected final mContext:Landroid/content/Context;

.field private mDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

.field private mIMSManager:Lcom/motorola/android/ims/IMSManager;

.field protected mIccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;

.field protected mIsNewArch:Z

.field private mListener:Landroid/content/DialogInterface$OnClickListener;

.field protected mOwnerModemId:I

.field protected final mPhone:Lcom/android/internal/telephony/Phone;

.field protected mRemainingMessages:I

.field protected final mResolver:Landroid/content/ContentResolver;

.field private final mResultReceiver:Landroid/content/BroadcastReceiver;

.field private final mSTrackers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field protected mSmsCapable:Z

.field protected mSmsReceiveDisabled:Z

.field protected mSmsSendDisabled:Z

.field protected final mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

.field protected mTextSmsReceiveEnabled:Z

.field protected final mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field protected final mWapPush:Lcom/android/internal/telephony/WapPushOverSms;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 167
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "pdu"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->PDU_PROJECTION:[Ljava/lang/String;

    .line 172
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pdu"

    aput-object v1, v0, v2

    const-string v1, "sequence"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "destination_port"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    .line 241
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "raw"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    .line 258
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    return-void
.end method

.method protected constructor <init>(ILcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .locals 5
    .parameter "ownerModemId"
    .parameter "phone"
    .parameter "storageMonitor"
    .parameter "usageMonitor"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 370
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    .line 275
    iput-boolean v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    .line 280
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 283
    iput-boolean v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mIsNewArch:Z

    .line 284
    iput-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mIccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;

    .line 292
    iput-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mIMSManager:Lcom/motorola/android/ims/IMSManager;

    .line 456
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    .line 647
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SMSDispatcher$1;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->handleCdmaOtaMdnUpdate:Landroid/os/Handler;

    .line 1861
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SMSDispatcher$2;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1875
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$3;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SMSDispatcher$3;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    .line 371
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 372
    new-instance v0, Lcom/android/internal/telephony/WapPushOverSms;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/WapPushOverSms;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    .line 373
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 374
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    .line 375
    iput p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mOwnerModemId:I

    .line 376
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    .line 377
    iput-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    .line 378
    iput-object p4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    .line 381
    iput-boolean v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mIsNewArch:Z

    .line 382
    invoke-static {}, Lcom/motorola/android/internal/telephony/IccCardManager;->getInstance()Lcom/motorola/android/internal/telephony/IccCardManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mIccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;

    .line 384
    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcher;->initialize()V

    .line 387
    const-string v0, "debug.mot.smsoverims"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 391
    :cond_0
    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .locals 4
    .parameter "phone"
    .parameter "storageMonitor"
    .parameter "usageMonitor"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 308
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    .line 280
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 283
    iput-boolean v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mIsNewArch:Z

    .line 284
    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mIccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;

    .line 292
    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mIMSManager:Lcom/motorola/android/ims/IMSManager;

    .line 456
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    .line 647
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SMSDispatcher$1;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->handleCdmaOtaMdnUpdate:Landroid/os/Handler;

    .line 1861
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SMSDispatcher$2;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1875
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$3;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SMSDispatcher$3;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    .line 309
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 310
    new-instance v0, Lcom/android/internal/telephony/WapPushOverSms;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/WapPushOverSms;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    .line 311
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 312
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    .line 313
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    .line 314
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    .line 315
    iput-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    .line 319
    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcher;->initialize()V

    .line 320
    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcher;->activateMe()V

    .line 324
    const-string v0, "debug.mot.smsoverims"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 328
    :cond_0
    return-void
.end method

.method protected constructor <init>(ZLcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .locals 4
    .parameter "isCdmaGsmWorldPhone"
    .parameter "phone"
    .parameter "storageMonitor"
    .parameter "usageMonitor"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 398
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    .line 280
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 283
    iput-boolean v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mIsNewArch:Z

    .line 284
    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mIccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;

    .line 292
    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mIMSManager:Lcom/motorola/android/ims/IMSManager;

    .line 456
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    .line 647
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SMSDispatcher$1;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->handleCdmaOtaMdnUpdate:Landroid/os/Handler;

    .line 1861
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SMSDispatcher$2;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1875
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$3;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SMSDispatcher$3;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    .line 399
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 400
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 401
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    .line 402
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    .line 403
    iput-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    .line 404
    iput-object p4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    .line 406
    if-nez p1, :cond_1

    .line 407
    const-string v0, "SMSDispatcher"

    const-string v1, "SMSDispatcher, this shouldn\'t be called."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/WapPushOverSms;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/WapPushOverSms;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    .line 414
    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcher;->initialize()V

    .line 417
    const-string v0, "debug.mot.smsoverims"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private activateMe()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 357
    iget-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mIsNewArch:Z

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mIccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;

    const/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v3}, Lcom/motorola/android/internal/telephony/IccCardManager;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->handleCdmaOtaMdnUpdate:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 364
    return-void
.end method

.method private createWakelock()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 611
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 612
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "SMSDispatcher"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 613
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 614
    return-void
.end method

.method protected static getAppNameByIntent(Landroid/app/PendingIntent;)Ljava/lang/String;
    .locals 2
    .parameter "intent"

    .prologue
    .line 1672
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 1673
    .local v0, r:Landroid/content/res/Resources;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x10403f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected static getNextConcatenatedRef()I
    .locals 1

    .prologue
    .line 297
    sget v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    .line 298
    sget v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    return v0
.end method

.method protected static handleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 2
    .parameter "ss"
    .parameter "tracker"

    .prologue
    .line 793
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 795
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    .line 796
    :try_start_0
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->send(I)V

    .line 802
    :cond_0
    :goto_0
    return-void

    .line 798
    :cond_1
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 800
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private initialize()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 333
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v3, "mot_device_policy"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/motepm/MotDevicePolicyManager;

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

    .line 336
    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcher;->createWakelock()V

    .line 338
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1110024

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    .line 340
    const-string v0, "telephony.sms.receive"

    iget-boolean v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsReceiveDisabled:Z

    .line 344
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1110025

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTextSmsReceiveEnabled:Z

    .line 347
    const-string v0, "telephony.sms.send"

    iget-boolean v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    .line 350
    const-string v0, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMSDispatcher: ctor mSmsCapable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " format="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSmsReceiveDisabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsReceiveDisabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSmsSendDisabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    return-void

    :cond_0
    move v0, v2

    .line 340
    goto :goto_0

    :cond_1
    move v1, v2

    .line 347
    goto :goto_1
.end method

.method private notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;)V
    .locals 4
    .parameter "success"
    .parameter "result"
    .parameter "response"
    .parameter "mtSmsTracker"

    .prologue
    .line 1754
    const-string v1, "SMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "success: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    if-nez p1, :cond_0

    .line 1757
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_REJECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1758
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1759
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1760
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1762
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;)V

    .line 1763
    return-void
.end method

.method private processIncompleteMessageParts(Ljava/lang/String;III)V
    .locals 18
    .parameter "address"
    .parameter "referenceNumber"
    .parameter "messageCount"
    .parameter "destPort"

    .prologue
    .line 1911
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v2, "reference_number ="

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1912
    .local v17, where:Ljava/lang/StringBuilder;
    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1913
    const-string v2, " AND address = ?"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1914
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v6, v2

    .line 1916
    .local v6, whereArgs:[Ljava/lang/String;
    const/4 v15, 0x0

    check-cast v15, [[B

    .line 1917
    .local v15, pdus:[[B
    const/4 v8, 0x0

    .line 1919
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1920
    if-nez v8, :cond_1

    .line 1921
    new-instance v2, Landroid/database/SQLException;

    const-string v3, "Cursor is null."

    invoke-direct {v2, v3}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1936
    :catch_0
    move-exception v11

    .line 1937
    .local v11, e:Landroid/database/SQLException;
    :try_start_1
    const-string v2, "SMSDispatcher"

    const-string v3, "Can\'t access multipart SMS database [processIncompleteMessageParts()]"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1940
    if-eqz v8, :cond_0

    .line 1941
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1953
    .end local v11           #e:Landroid/database/SQLException;
    :cond_0
    :goto_0
    return-void

    .line 1924
    :cond_1
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 1925
    .local v9, cursorCount:I
    const-string v2, "sequence"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 1926
    .local v16, sequenceColumn:I
    const-string v2, "pdu"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 1928
    .local v14, pduColumn:I
    move/from16 v0, p3

    new-array v15, v0, [[B

    .line 1929
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1930
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    if-ge v12, v9, :cond_3

    .line 1931
    move/from16 v0, v16

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    long-to-int v10, v2

    .line 1932
    .local v10, cursorSequence:I
    add-int/lit8 v2, v10, -0x1

    invoke-interface {v8, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v15, v2

    .line 1934
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1930
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1940
    .end local v9           #cursorCount:I
    .end local v10           #cursorSequence:I
    .end local v12           #i:I
    .end local v14           #pduColumn:I
    .end local v16           #sequenceColumn:I
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_2

    .line 1941
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1940
    :cond_2
    throw v2

    .restart local v9       #cursorCount:I
    .restart local v12       #i:I
    .restart local v14       #pduColumn:I
    .restart local v16       #sequenceColumn:I
    :cond_3
    if-eqz v8, :cond_4

    .line 1941
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1945
    :cond_4
    const/4 v2, -0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_0

    .line 1946
    new-instance v13, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.SMS_PART_RECEIVED"

    invoke-direct {v13, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1947
    .local v13, intent:Landroid/content/Intent;
    const-string v2, "pdus"

    invoke-virtual {v13, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1949
    const-string v2, "format"

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1951
    const-string v2, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 12
    .parameter "tracker"

    .prologue
    const/4 v11, 0x0

    .line 1705
    iget-object v8, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 1707
    .local v8, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "destination"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1708
    .local v1, destinationAddress:Ljava/lang/String;
    const-string v0, "scaddress"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1710
    .local v2, scAddress:Ljava/lang/String;
    const-string v0, "parts"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 1711
    .local v3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "sentIntents"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1712
    .local v4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v0, "deliveryIntents"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1715
    .local v5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v10

    .line 1716
    .local v10, ss:I
    if-eqz v10, :cond_1

    .line 1717
    const/4 v7, 0x0

    .local v7, i:I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, count:I
    :goto_0
    if-ge v7, v6, :cond_2

    .line 1718
    const/4 v9, 0x0

    .line 1719
    .local v9, sentIntent:Landroid/app/PendingIntent;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v7, :cond_0

    .line 1720
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #sentIntent:Landroid/app/PendingIntent;
    check-cast v9, Landroid/app/PendingIntent;

    .line 1722
    .restart local v9       #sentIntent:Landroid/app/PendingIntent;
    :cond_0
    invoke-virtual {p0, v11, v9, v11}, Lcom/android/internal/telephony/SMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 1717
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .end local v6           #count:I
    .end local v7           #i:I
    .end local v9           #sentIntent:Landroid/app/PendingIntent;
    :cond_1
    move-object v0, p0

    .line 1727
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1728
    :cond_2
    return-void
.end method

.method private sendRawPduInternal([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 8
    .parameter "smsc"
    .parameter "pdu"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "expectMore"

    .prologue
    .line 1470
    const/4 v6, -0x1

    .line 1471
    .local v6, encodingMethod:I
    const/4 v7, 0x0

    .local v7, language:Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 1472
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/SMSDispatcher;->sendRawPduInternal([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZILjava/lang/String;)V

    .line 1473
    return-void
.end method

.method private sendRawPduInternal([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZILjava/lang/String;)V
    .locals 8
    .parameter "smsc"
    .parameter "pdu"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "expectMore"
    .parameter "encodingMethod"
    .parameter "language"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    .line 1503
    iget-boolean v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    if-eqz v4, :cond_2

    .line 1504
    if-eqz p3, :cond_0

    .line 1506
    const/4 v4, 0x4

    :try_start_0
    invoke-virtual {p3, v4}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1509
    :cond_0
    :goto_0
    const-string v4, "SMSDispatcher"

    const-string v5, "Device does not support sending sms."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    :cond_1
    :goto_1
    return-void

    .line 1513
    :cond_2
    if-nez p2, :cond_3

    .line 1514
    if-eqz p3, :cond_1

    .line 1516
    const/4 v4, 0x3

    :try_start_1
    invoke-virtual {p3, v4}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1517
    :catch_0
    move-exception v4

    goto :goto_1

    .line 1522
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1523
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "smsc"

    invoke-virtual {v1, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1524
    const-string v4, "pdu"

    invoke-virtual {v1, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1527
    const-string v4, "encodingMethod"

    invoke-static {p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1528
    const-string v4, "language"

    invoke-virtual {v1, v4, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1533
    invoke-virtual {p0, v1, p3, p4}, Lcom/android/internal/telephony/SMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v3

    .line 1536
    .local v3, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 1540
    .local v2, ss:I
    const-string v4, "debug.mot.smsoverims"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1541
    if-eqz v2, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mIMSManager:Lcom/motorola/android/ims/IMSManager;

    invoke-virtual {v4}, Lcom/motorola/android/ims/IMSManager;->getState()I

    move-result v4

    if-ne v4, v6, :cond_4

    .line 1543
    invoke-static {v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_1

    .line 1545
    :cond_4
    invoke-static {p3}, Lcom/android/internal/telephony/SMSDispatcher;->getAppNameByIntent(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v0

    .line 1546
    .local v0, appName:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-virtual {v4, v0, v6}, Lcom/android/internal/telephony/SmsUsageMonitor;->check(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1549
    if-eqz p5, :cond_5

    .line 1550
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SMSDispatcher;->sendSmsMore(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_1

    .line 1552
    :cond_5
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_1

    .line 1556
    :cond_6
    invoke-virtual {p0, v7, v3}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 1560
    .end local v0           #appName:Ljava/lang/String;
    :cond_7
    if-eqz v2, :cond_8

    .line 1561
    invoke-static {v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_1

    .line 1563
    :cond_8
    invoke-static {p3}, Lcom/android/internal/telephony/SMSDispatcher;->getAppNameByIntent(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v0

    .line 1564
    .restart local v0       #appName:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-virtual {v4, v0, v6}, Lcom/android/internal/telephony/SmsUsageMonitor;->check(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1567
    if-eqz p5, :cond_9

    .line 1568
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SMSDispatcher;->sendSmsMore(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_1

    .line 1570
    :cond_9
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_1

    .line 1574
    :cond_a
    invoke-virtual {p0, v7, v3}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 1507
    .end local v0           #appName:Ljava/lang/String;
    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2           #ss:I
    .end local v3           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :catch_1
    move-exception v4

    goto/16 :goto_0
.end method


# virtual methods
.method protected SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 1
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 1817
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;-><init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-object v0
.end method

.method protected abstract acknowledgeLastIncomingSms(ZILandroid/os/Message;Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;)V
.end method

.method public activate()V
    .locals 0

    .prologue
    .line 1839
    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcher;->activateMe()V

    .line 1840
    return-void
.end method

.method protected abstract calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
.end method

.method protected abstract calculateLength(Ljava/lang/CharSequence;ZZZLjava/lang/String;)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
.end method

.method public deactivate()V
    .locals 0

    .prologue
    .line 1843
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    .line 1844
    return-void
.end method

.method dispatch(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 8
    .parameter "intent"
    .parameter "permission"

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 627
    const-string v0, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTextSmsReceiveEnabled:Z

    if-nez v0, :cond_0

    .line 629
    const-string v0, "SMSDispatcher"

    const-string v1, "warning! text SMS discarded as per mTextSmsReceiveEnabled!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    invoke-direct {p0, v2, v2, v6, v6}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;)V

    .line 639
    :goto_0
    return-void

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 637
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, -0x1

    move-object v1, p1

    move-object v2, p2

    move-object v4, p0

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected dispatchBroadcastPdus([[BZ)V
    .locals 4
    .parameter "pdus"
    .parameter "isEmergencyMessage"

    .prologue
    .line 1960
    if-eqz p2, :cond_0

    .line 1961
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1962
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1963
    const-string v1, "SMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dispatching "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " emergency SMS CB pdus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    const-string v1, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1971
    :goto_0
    return-void

    .line 1966
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_CB_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1967
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1968
    const-string v1, "SMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dispatching "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SMS CB pdus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public abstract dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
.end method

.method public abstract dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;)I
.end method

.method protected dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;)I
    .locals 17
    .parameter "sms"
    .parameter "mtSmsTracker"

    .prologue
    .line 826
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v16

    .line 829
    .local v16, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    if-eqz v16, :cond_0

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v2, :cond_3

    .line 831
    :cond_0
    const/4 v2, 0x1

    new-array v14, v2, [[B

    .line 832
    .local v14, pdus:[[B
    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v3

    aput-object v3, v14, v2

    .line 834
    if-eqz v16, :cond_2

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v2, :cond_2

    .line 835
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v2, v2, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v3, 0xb84

    if-ne v2, v3, :cond_1

    .line 838
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v3

    move-object/from16 v0, p2
    
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;Ljava/lang/String;)I

    move-result v2

    .line 858
    .end local v14           #pdus:[[B
    :goto_0
    return v2

    .line 843
    .restart local v14       #pdus:[[B
    :cond_1
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v2, v2, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v14, v2, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPortAddressedPdus([[BILcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;)V

    .line 852
    :goto_1
    const/4 v2, -0x1

    goto :goto_0

    .line 849
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPdus([[BLcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;)V

    goto :goto_1

    .line 855
    .end local v14           #pdus:[[B
    :cond_3
    move-object/from16 v0, v16

    iget-object v13, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 856
    .local v13, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move-object/from16 v0, v16

    iget-object v15, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 858
    .local v15, portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    iget v5, v13, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    iget v6, v13, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iget v7, v13, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v8

    if-eqz v15, :cond_4

    iget v10, v15, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    :goto_2
    const/4 v11, 0x0

    move-object/from16 v2, p0

    move-object/from16 v12, p2

    invoke-virtual/range {v2 .. v12}, Lcom/android/internal/telephony/SMSDispatcher;->processMessagePart([BLjava/lang/String;IIIJIZLcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;)I

    move-result v2

    goto :goto_0

    :cond_4
    const/4 v10, -0x1

    goto :goto_2
.end method

.method protected dispatchPdus([[BLcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;)V
    .locals 8
    .parameter "pdus"
    .parameter "mtSmsTracker"

    .prologue
    const/4 v7, 0x1

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lmiui/provider/ExtraTelephony;->checkFirewallForSms(Landroid/content/Context;[[B)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    move-object/from16 v4, p2

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;)V

    goto :goto_1

    :cond_10

    .line 1049
    new-instance v3, Lcom/motorola/android/internal/telephony/AppDirectedSms;

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/motorola/android/internal/telephony/AppDirectedSms;-><init>(Landroid/content/Context;)V

    .line 1050
    .local v3, sms:Lcom/motorola/android/internal/telephony/AppDirectedSms;
    invoke-virtual {v3, p1}, Lcom/motorola/android/internal/telephony/AppDirectedSms;->getAppPrefix([[B)Ljava/lang/String;

    move-result-object v0

    .line 1051
    .local v0, appPrefix:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1052
    invoke-virtual {v3, v0}, Lcom/motorola/android/internal/telephony/AppDirectedSms;->getValidatedPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1053
    .local v2, packageName:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1054
    invoke-virtual {v3, v2}, Lcom/motorola/android/internal/telephony/AppDirectedSms;->dispatchAppDirectedSms(Ljava/lang/String;)V

    .line 1055
    const-string v4, "SMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AppDirectedSms sent to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    :goto_0
    const/4 v4, 0x0

    invoke-virtual {p0, v7, v7, v4, p2}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;)V

    .line 1090
    .end local v2           #packageName:Ljava/lang/String;
    :goto_1
    return-void

    .line 1058
    .restart local v2       #packageName:Ljava/lang/String;
    :cond_0
    const-string v4, "SMSDispatcher"

    const-string v5, "no match package found, Discard AppDirectedSms"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1068
    .end local v2           #packageName:Ljava/lang/String;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1071
    .local v1, intent:Landroid/content/Intent;
    if-eqz p2, :cond_2

    .line 1072
    const-string v4, "deliveredBy"

    iget v5, p2, Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;->mDeliveredBy:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1073
    const-string v4, "SMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deliveredBy="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;->mDeliveredBy:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    iget-object v4, p2, Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;->mMtSms:Landroid/telephony/SmsMessage;

    if-eqz v4, :cond_2

    iget-object v4, p2, Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;->mMtSms:Landroid/telephony/SmsMessage;

    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getPdu()[B

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1076
    const-string v4, "trackedPdu"

    iget-object v5, p2, Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;->mMtSms:Landroid/telephony/SmsMessage;

    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getPdu()[B

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1081
    :cond_2
    const-string v4, "pdus"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1082
    const-string v4, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1083
    const-string v4, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v1, v4}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected dispatchPortAddressedPdus([[BILcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;)V
    .locals 5
    .parameter "pdus"
    .parameter "port"
    .parameter "mtSmsTracker"

    .prologue
    .line 1101
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lmiui/provider/ExtraTelephony;->checkFirewallForSms(Landroid/content/Context;[[B)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object/from16 v1, p3
    
    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;)V

    goto :goto_0

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sms://localhost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1102
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1103
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "pdus"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1104
    const-string v2, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1106
    if-eqz p3, :cond_0

    .line 1107
    const-string v2, "deliveredBy"

    iget v3, p3, Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;->mDeliveredBy:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1108
    const-string v2, "SMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deliveredBy="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p3, Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;->mDeliveredBy:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    iget-object v2, p3, Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;->mMtSms:Landroid/telephony/SmsMessage;

    if-eqz v2, :cond_0

    iget-object v2, p3, Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;->mMtSms:Landroid/telephony/SmsMessage;

    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getPdu()[B

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1111
    const-string v2, "trackedPdu"

    iget-object v3, p3, Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;->mMtSms:Landroid/telephony/SmsMessage;

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getPdu()[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_0
    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public abstract dispose()V
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 447
    const-string v0, "SMSDispatcher"

    const-string v1, "SMSDispatcher finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    return-void
.end method

.method protected abstract getFormat()Ljava/lang/String;
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v9, 0x6

    const/4 v2, 0x1

    const/4 v11, 0x0

    const/4 v7, 0x0

    .line 467
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 476
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 478
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_1

    .line 479
    const-string v7, "SMSDispatcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception processing incoming SMS. Exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 484
    :cond_1
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;

    .line 485
    .local v3, mtSmsTracker:Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;
    if-nez v3, :cond_2

    .line 486
    const-string v7, "SMSDispatcher"

    const-string v8, "The mtSmsTracker=null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 489
    :cond_2
    const-string v8, "SMSDispatcher"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mtSmsTracker.mtDeliveredBy= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;->mDeliveredBy:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v6, v3, Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;->mMtSms:Landroid/telephony/SmsMessage;

    .line 494
    .local v6, sms:Landroid/telephony/SmsMessage;
    :try_start_0
    iget-object v8, v6, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {p0, v8, v3}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;)I

    move-result v4

    .line 495
    .local v4, result:I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_0

    .line 498
    if-ne v4, v2, :cond_3

    .line 499
    .local v2, handled:Z
    :goto_1
    const/4 v8, 0x0

    invoke-direct {p0, v2, v4, v8, v3}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 501
    .end local v2           #handled:Z
    .end local v4           #result:I
    :catch_0
    move-exception v1

    .line 502
    .local v1, ex:Ljava/lang/RuntimeException;
    const-string v8, "SMSDispatcher"

    const-string v9, "Exception dispatching message"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 503
    const/4 v8, 0x2

    invoke-direct {p0, v7, v8, v11, v3}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;)V

    goto :goto_0

    .end local v1           #ex:Ljava/lang/RuntimeException;
    .restart local v4       #result:I
    :cond_3
    move v2, v7

    .line 498
    goto :goto_1

    .line 512
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v3           #mtSmsTracker:Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;
    .end local v4           #result:I
    .end local v6           #sms:Landroid/telephony/SmsMessage;
    :sswitch_1
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/SMSDispatcher;->handleSendComplete(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 516
    :sswitch_2
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 520
    :sswitch_3
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    check-cast v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/SMSDispatcher;->handleReachSentLimit(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_0

    .line 525
    :sswitch_4
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v7, :cond_4

    .line 526
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/app/AlertDialog;

    check-cast v7, Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->dismiss()V

    .line 530
    :cond_4
    iput-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 531
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 533
    :try_start_1
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 537
    .local v5, sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v7, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v7, :cond_0

    .line 538
    iget-object v7, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 542
    .end local v5           #sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :catch_1
    move-exception v1

    .line 543
    .local v1, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v7, "SMSDispatcher"

    const-string v8, "failed to send back RESULT_ERROR_LIMIT_EXCEEDED"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 552
    .end local v1           #ex:Landroid/app/PendingIntent$CanceledException;
    :sswitch_5
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 553
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 554
    .restart local v5       #sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {v5}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isMultipart()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 555
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 559
    :goto_2
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v9, v7}, Lcom/android/internal/telephony/SMSDispatcher;->removeMessages(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 557
    :cond_5
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_2

    .line 564
    .end local v5           #sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :sswitch_6
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 567
    :try_start_2
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 571
    .restart local v5       #sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v7, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v7, :cond_6

    .line 572
    iget-object v7, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Landroid/app/PendingIntent;->send(I)V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_2

    .line 579
    .end local v5           #sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_6
    :goto_3
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v9, v7}, Lcom/android/internal/telephony/SMSDispatcher;->removeMessages(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 576
    :catch_2
    move-exception v1

    .line 577
    .restart local v1       #ex:Landroid/app/PendingIntent$CanceledException;
    const-string v7, "SMSDispatcher"

    const-string v8, "failed to send back RESULT_ERROR_LIMIT_EXCEEDED"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 585
    .end local v1           #ex:Landroid/app/PendingIntent$CanceledException;
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->updateIccAvailability()V

    goto/16 :goto_0

    .line 589
    :sswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 590
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    goto/16 :goto_0

    .line 597
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_9
    const-string v7, "SMSDispatcher"

    const-string v8, "EVENT_CREATE_IMS_SERVICE"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/motorola/android/ims/IMSManager;->getManager(Landroid/content/Context;)Lcom/motorola/android/ims/IMSManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mIMSManager:Lcom/motorola/android/ims/IMSManager;

    .line 599
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mIMSManager:Lcom/motorola/android/ims/IMSManager;

    if-nez v7, :cond_7

    .line 600
    const-string v7, "SMSDispatcher"

    const-string v8, "FATAL - Fail to get IMSManager"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 604
    :cond_7
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mIMSManager:Lcom/motorola/android/ims/IMSManager;

    new-instance v8, Lcom/android/internal/telephony/SMSDispatcher$ImsConnectionListener;

    invoke-direct {v8, p0}, Lcom/android/internal/telephony/SMSDispatcher$ImsConnectionListener;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    invoke-virtual {v7, v8}, Lcom/motorola/android/ims/IMSManager;->setListener(Lcom/motorola/android/ims/ConnectionStateListener;)V

    goto/16 :goto_0

    .line 467
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_5
        0x6 -> :sswitch_4
        0x7 -> :sswitch_6
        0x14 -> :sswitch_9
        0x64 -> :sswitch_7
        0x65 -> :sswitch_8
    .end sparse-switch
.end method

.method protected handleReachSentLimit(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 7
    .parameter "tracker"

    .prologue
    const/4 v5, 0x5

    .line 1626
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v5, :cond_1

    .line 1632
    :try_start_0
    iget-object v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_0

    .line 1633
    iget-object v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1669
    :cond_0
    :goto_0
    return-void

    .line 1637
    :catch_0
    move-exception v2

    .line 1638
    .local v2, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v4, "SMSDispatcher"

    const-string v5, "failed to send back RESULT_ERROR_LIMIT_EXCEEDED"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1643
    .end local v2           #ex:Landroid/app/PendingIntent$CanceledException;
    :cond_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    .line 1645
    .local v3, r:Landroid/content/res/Resources;
    iget-object v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    invoke-static {v4}, Lcom/android/internal/telephony/SMSDispatcher;->getAppNameByIntent(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v0

    .line 1649
    .local v0, appName:Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v4, ".*[Bb][Ll][Uu][Rr].*"

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1650
    const-string v4, "[Bb][Ll][Uu][Rr][.]?"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1656
    :cond_2
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x10403fa

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x10403fb

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x10403fc

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x10403fd

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1663
    .local v1, d:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 1664
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1666
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1667
    const/4 v4, 0x6

    invoke-virtual {p0, v4, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x1770

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method protected handleSendComplete(Landroid/os/AsyncResult;)V
    .locals 12
    .parameter "ar"

    .prologue
    const/4 v10, 0x3

    const/4 v11, -0x1

    .line 674
    iget-object v7, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 675
    .local v7, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v5, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    .line 677
    .local v5, sentIntent:Landroid/app/PendingIntent;
    iget-object v8, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_4

    .line 683
    iget-object v8, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v8, :cond_0

    .line 685
    iget-object v8, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telephony/SmsResponse;

    iget v3, v8, Lcom/android/internal/telephony/SmsResponse;->messageRef:I

    .line 686
    .local v3, messageRef:I
    iput v3, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    .line 687
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 690
    .end local v3           #messageRef:I
    :cond_0
    if-eqz v5, :cond_3

    .line 693
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 694
    .local v2, intent:Landroid/content/Intent;
    const-string v9, "refNumber"

    iget-object v8, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telephony/SmsResponse;

    iget v8, v8, Lcom/android/internal/telephony/SmsResponse;->messageRef:I

    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 697
    :try_start_0
    iget v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    if-le v8, v11, :cond_1

    .line 698
    iget v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 701
    :cond_1
    iget v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    if-nez v8, :cond_2

    .line 702
    const-string v8, "SendNextMsg"

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 705
    :cond_2
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v9, -0x1

    invoke-virtual {v5, v8, v9, v2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_2

    .line 781
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    :goto_0
    return-void

    .line 714
    :cond_4
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    .line 716
    .local v6, ss:I
    if-eqz v6, :cond_5

    .line 717
    invoke-static {v6, v7}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 719
    :cond_5
    iget-object v8, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v8, Lcom/android/internal/telephony/CommandException;

    check-cast v8, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/CommandException$Error;->SMS_FAIL_RETRY:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v8, v9, :cond_8

    .line 721
    iget v8, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-ge v8, v10, :cond_6

    .line 731
    iget v8, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 732
    invoke-virtual {p0, v10, v7}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 733
    .local v4, retryMsg:Landroid/os/Message;
    const-wide/16 v8, 0x7d0

    invoke-virtual {p0, v4, v8, v9}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 738
    .end local v4           #retryMsg:Landroid/os/Message;
    :cond_6
    iget-object v8, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v8, :cond_3

    .line 739
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 740
    .local v1, fillIn:Landroid/content/Intent;
    iget-object v8, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v8, :cond_7

    .line 741
    const-string v9, "errorCode"

    iget-object v8, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telephony/SmsResponse;

    iget v8, v8, Lcom/android/internal/telephony/SmsResponse;->errorCode:I

    invoke-virtual {v1, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 742
    const-string v9, "SMSDispatcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Temporary Error, Error No: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telephony/SmsResponse;

    iget v8, v8, Lcom/android/internal/telephony/SmsResponse;->errorCode:I

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :cond_7
    :try_start_1
    iget-object v8, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/16 v10, 0xff

    invoke-virtual {v8, v9, v10, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 746
    :catch_0
    move-exception v8

    goto :goto_0

    .line 751
    .end local v1           #fillIn:Landroid/content/Intent;
    :cond_8
    iget-object v8, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v8, :cond_3

    .line 752
    const/4 v0, 0x1

    .line 754
    .local v0, error:I
    iget-object v8, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v8, Lcom/android/internal/telephony/CommandException;

    check-cast v8, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v8, v9, :cond_9

    .line 756
    const/4 v0, 0x6

    .line 760
    :cond_9
    :try_start_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 761
    .restart local v1       #fillIn:Landroid/content/Intent;
    iget-object v8, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v8, :cond_a

    .line 762
    const-string v9, "errorCode"

    iget-object v8, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telephony/SmsResponse;

    iget v8, v8, Lcom/android/internal/telephony/SmsResponse;->errorCode:I

    invoke-virtual {v1, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 764
    const-string v9, "SMSDispatcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Permanent Error, Error No: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telephony/SmsResponse;

    iget v8, v8, Lcom/android/internal/telephony/SmsResponse;->errorCode:I

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    :cond_a
    iget v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    if-le v8, v11, :cond_b

    .line 769
    iget v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 772
    :cond_b
    iget v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    if-nez v8, :cond_c

    .line 773
    const-string v8, "SendNextMsg"

    const/4 v9, 0x1

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 777
    :cond_c
    iget-object v8, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9, v0, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 778
    .end local v1           #fillIn:Landroid/content/Intent;
    :catch_1
    move-exception v8

    goto/16 :goto_0

    .line 706
    .end local v0           #error:I
    .end local v6           #ss:I
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_2
    move-exception v8

    goto/16 :goto_0
.end method

.method public initSipStack(Z)V
    .locals 2
    .parameter "isObg"

    .prologue
    .line 1833
    const-string v0, "SMSDispatcher"

    const-string v1, "Error! This function should never be executed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    return-void
.end method

.method protected isOutgoingSmsAllowed()Z
    .locals 3

    .prologue
    .line 1821
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 1822
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/motorola/motepm/MotDevicePolicyManager;->isPolicyAllowed(Landroid/content/ComponentName;I)Z

    move-result v0

    .line 1824
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected kddiNonOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3
    .parameter "intent"
    .parameter "permission"

    .prologue
    .line 1981
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1982
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1983
    return-void
.end method

.method protected processMessagePart([BLjava/lang/String;IIIJIZLcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;)I
    .locals 27
    .parameter "pdu"
    .parameter "address"
    .parameter "referenceNumber"
    .parameter "sequenceNumber"
    .parameter "messageCount"
    .parameter "timestamp"
    .parameter "destPort"
    .parameter "isCdmaWapPush"
    .parameter "mtSmsTracker"

    .prologue
    .line 894
    const/16 v22, 0x0

    check-cast v22, [[B

    .line 895
    .local v22, pdus:[[B
    const/4 v11, 0x0

    .line 898
    .local v11, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    .line 899
    .local v24, refNumber:Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    .line 902
    .local v25, seqNumber:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    sget-object v7, Lcom/android/internal/telephony/SMSDispatcher;->PDU_PROJECTION:[Ljava/lang/String;

    const-string v8, "address=? AND reference_number=? AND sequence=?"

    const/4 v10, 0x3

    new-array v9, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p2, v9, v10

    const/4 v10, 0x1

    aput-object v24, v9, v10

    const/4 v10, 0x2

    aput-object v25, v9, v10

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 907
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 908
    const-string v5, "SMSDispatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Discarding duplicate message segment from address="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " refNumber="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " seqNumber="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    const/4 v5, 0x0

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 911
    .local v20, oldPduString:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v19

    .line 912
    .local v19, oldPdu:[B
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_0

    .line 913
    const-string v5, "SMSDispatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Warning: dup message segment PDU of length "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is different from existing PDU of length "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 916
    :cond_0
    const/4 v5, 0x1

    .line 984
    if-eqz v11, :cond_1

    .end local v19           #oldPdu:[B
    .end local v20           #oldPduString:Ljava/lang/String;
    .end local v24           #refNumber:Ljava/lang/String;
    .end local v25           #seqNumber:Ljava/lang/String;
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1034
    :cond_1
    :goto_1
    return v5

    .line 918
    .restart local v24       #refNumber:Ljava/lang/String;
    .restart local v25       #seqNumber:Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 921
    const-string v8, "address=? AND reference_number=?"

    .line 922
    .local v8, where:Ljava/lang/String;
    const/4 v5, 0x2

    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v9, v5

    const/4 v5, 0x1

    aput-object v24, v9, v5

    .line 923
    .local v9, whereArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    sget-object v7, Lcom/android/internal/telephony/SMSDispatcher;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 925
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 926
    .local v12, cursorCount:I
    add-int/lit8 v5, p5, -0x1

    if-eq v12, v5, :cond_5

    .line 928
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    .line 929
    .local v26, values:Landroid/content/ContentValues;
    const-string v5, "date"

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 930
    const-string v5, "pdu"

    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    const-string v5, "address"

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    const-string v5, "reference_number"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 933
    const-string v5, "count"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 934
    const-string v5, "sequence"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 935
    const/4 v5, -0x1

    move/from16 v0, p8

    if-eq v0, v5, :cond_3

    .line 936
    const-string v5, "destination_port"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 938
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object/from16 v0, v26

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 942
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110057

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v23

    .line 944
    .local v23, processIncompleteParts:Z
    if-eqz v23, :cond_4

    .line 945
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p5

    move/from16 v4, p8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/SMSDispatcher;->processIncompleteMessageParts(Ljava/lang/String;III)V

    .line 948
    :cond_4
    const/4 v5, 0x1

    .line 984
    if-eqz v11, :cond_1

    goto/16 :goto_0

    .line 952
    .end local v23           #processIncompleteParts:Z
    .end local v26           #values:Landroid/content/ContentValues;
    :cond_5
    move/from16 v0, p5

    new-array v0, v0, [[B

    move-object/from16 v22, v0

    .line 953
    const/16 v17, 0x0

    .local v17, i:I
    :goto_2
    move/from16 v0, v17

    if-ge v0, v12, :cond_8

    .line 954
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 955
    const/4 v5, 0x1

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 957
    .local v13, cursorSequence:I
    if-nez p9, :cond_6

    .line 958
    add-int/lit8 v13, v13, -0x1

    .line 960
    :cond_6
    const/4 v5, 0x0

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v22, v13

    .line 965
    if-nez v13, :cond_7

    const/4 v5, 0x2

    invoke-interface {v11, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_7

    .line 966
    const/4 v5, 0x2

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result p8

    .line 953
    :cond_7
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 971
    .end local v13           #cursorSequence:I
    :cond_8
    if-eqz p9, :cond_a

    .line 972
    aput-object p1, v22, p4

    .line 978
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    invoke-virtual {v5, v6, v8, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 984
    if-eqz v11, :cond_9

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 988
    :cond_9
    if-eqz p9, :cond_e

    .line 990
    new-instance v21, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v21 .. v21}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 991
    .local v21, output:Ljava/io/ByteArrayOutputStream;
    const/16 v17, 0x0

    :goto_4
    move/from16 v0, v17

    move/from16 v1, p5

    if-ge v0, v1, :cond_c

    .line 993
    aget-object v5, v22, v17

    const/4 v6, 0x0

    aget-object v7, v22, v17

    array-length v7, v7

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 991
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 974
    .end local v21           #output:Ljava/io/ByteArrayOutputStream;
    :cond_a
    add-int/lit8 v5, p4, -0x1

    :try_start_2
    aput-object p1, v22, v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 979
    .end local v8           #where:Ljava/lang/String;
    .end local v9           #whereArgs:[Ljava/lang/String;
    .end local v12           #cursorCount:I
    .end local v17           #i:I
    .end local v24           #refNumber:Ljava/lang/String;
    .end local v25           #seqNumber:Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 980
    .local v16, e:Landroid/database/SQLException;
    :try_start_3
    const-string v5, "SMSDispatcher"

    const-string v6, "Can\'t access multipart SMS database"

    move-object/from16 v0, v16

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 982
    const/4 v5, 0x2

    .line 984
    if-eqz v11, :cond_1

    goto/16 :goto_0

    .end local v16           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v5

    if-eqz v11, :cond_b

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v5

    .line 995
    .restart local v8       #where:Ljava/lang/String;
    .restart local v9       #whereArgs:[Ljava/lang/String;
    .restart local v12       #cursorCount:I
    .restart local v17       #i:I
    .restart local v21       #output:Ljava/io/ByteArrayOutputStream;
    .restart local v24       #refNumber:Ljava/lang/String;
    .restart local v25       #seqNumber:Ljava/lang/String;
    :cond_c
    invoke-virtual/range {v21 .. v21}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    .line 998
    .local v15, datagram:[B
    const/16 v5, 0xb84

    move/from16 v0, p8

    if-ne v0, v5, :cond_d

    .line 1000
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    move-object/from16 v0, p10

    move-object/from16 v6, p2

    invoke-virtual {v5, v15, v0, v6}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_1

    .line 1002
    :cond_d
    const/4 v5, 0x1

    new-array v0, v5, [[B

    move-object/from16 v22, v0

    .line 1003
    const/4 v5, 0x0

    aput-object v15, v22, v5

    .line 1005
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p8

    move-object/from16 v3, p10

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPortAddressedPdus([[BILcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;)V

    .line 1006
    const/4 v5, -0x1

    goto/16 :goto_1

    .line 1011
    .end local v15           #datagram:[B
    .end local v21           #output:Ljava/io/ByteArrayOutputStream;
    :cond_e
    const/4 v5, -0x1

    move/from16 v0, p8

    if-eq v0, v5, :cond_11

    .line 1012
    const/16 v5, 0xb84

    move/from16 v0, p8

    if-ne v0, v5, :cond_10

    .line 1014
    new-instance v21, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v21 .. v21}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1015
    .restart local v21       #output:Ljava/io/ByteArrayOutputStream;
    const/16 v17, 0x0

    :goto_5
    move/from16 v0, v17

    move/from16 v1, p5

    if-ge v0, v1, :cond_f

    .line 1016
    aget-object v5, v22, v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v18

    .line 1017
    .local v18, msg:Landroid/telephony/SmsMessage;
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v14

    .line 1018
    .local v14, data:[B
    const/4 v5, 0x0

    array-length v6, v14

    move-object/from16 v0, v21

    invoke-virtual {v0, v14, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1015
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 1022
    .end local v14           #data:[B
    .end local v18           #msg:Landroid/telephony/SmsMessage;
    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual/range {v21 .. v21}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    move-object/from16 v0, p10
    
    move-object/from16 v7, p2

    invoke-virtual {v5, v6, v0, v7}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_1

    .line 1026
    .end local v21           #output:Ljava/io/ByteArrayOutputStream;
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p8

    move-object/from16 v3, p10

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPortAddressedPdus([[BILcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;)V

    .line 1034
    :goto_6
    const/4 v5, -0x1

    goto/16 :goto_1

    .line 1031
    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p10

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPdus([[BLcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;)V

    goto :goto_6
.end method

.method protected abstract sendData(Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end method

.method protected abstract sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 10
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1280
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v6, 0x0

    .line 1281
    .local v6, cbNumber:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1283
    .local v7, priority:I
    const/4 v8, -0x1

    .line 1284
    .local v8, encodingMethod:I
    const/4 v9, 0x0

    .local v9, language:Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1285
    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;IILjava/lang/String;)V

    .line 1290
    return-void
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;IILjava/lang/String;)V
    .locals 26
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter
    .parameter
    .parameter
    .parameter "cbNumber"
    .parameter "priority"
    .parameter "encodingMethod"
    .parameter "language"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1327
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->getNextConcatenatedRef()I

    move-result v2

    and-int/lit16 v0, v2, 0xff

    move/from16 v25, v0

    .line 1328
    .local v25, refNumber:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 1329
    .local v24, msgCount:I
    const/4 v12, 0x0

    .line 1332
    .local v12, encoding:I
    const/4 v5, 0x0

    .line 1333
    .local v5, ifSupportNationalTable:Z
    const/4 v6, 0x0

    .line 1334
    .local v6, ifSupportLockingShiftTable:Z
    const/4 v4, 0x0

    .line 1336
    .local v4, useOnly7bit:Z
    const/4 v2, 0x2

    move/from16 v0, p8

    if-ne v0, v2, :cond_3

    .line 1337
    const/4 v5, 0x1

    .line 1346
    :cond_0
    :goto_0
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 1348
    move/from16 v0, v24

    new-array v0, v0, [Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-object/from16 v22, v0

    .line 1349
    .local v22, encodingForParts:[Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    const/16 v23, 0x0

    .local v23, i:I
    :goto_1
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_5

    .line 1350
    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    move-object/from16 v2, p0

    move-object/from16 v7, p9

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/SMSDispatcher;->calculateLength(Ljava/lang/CharSequence;ZZZLjava/lang/String;)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v21

    .line 1352
    .local v21, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    move-object/from16 v0, v21

    iget v2, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-eq v12, v2, :cond_2

    if-eqz v12, :cond_1

    const/4 v2, 0x1

    if-ne v12, v2, :cond_2

    .line 1355
    :cond_1
    move-object/from16 v0, v21

    iget v12, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 1357
    :cond_2
    aput-object v21, v22, v23

    .line 1349
    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    .line 1338
    .end local v21           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .end local v22           #encodingForParts:[Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .end local v23           #i:I
    :cond_3
    const/4 v2, 0x3

    move/from16 v0, p8

    if-ne v0, v2, :cond_4

    .line 1339
    const/4 v5, 0x1

    .line 1340
    const/4 v6, 0x1

    goto :goto_0

    .line 1341
    :cond_4
    if-nez p8, :cond_0

    .line 1342
    const/4 v4, 0x1

    goto :goto_0

    .line 1360
    .restart local v22       #encodingForParts:[Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .restart local v23       #i:I
    :cond_5
    const/16 v23, 0x0

    :goto_2
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_8

    .line 1361
    new-instance v20, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct/range {v20 .. v20}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 1362
    .local v20, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v25

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 1363
    add-int/lit8 v2, v23, 0x1

    move-object/from16 v0, v20

    iput v2, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 1364
    move/from16 v0, v24

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 1371
    const/4 v2, 0x1

    move-object/from16 v0, v20

    iput-boolean v2, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 1372
    new-instance v11, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v11}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 1373
    .local v11, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    move-object/from16 v0, v20

    iput-object v0, v11, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 1376
    const/4 v2, 0x1

    if-ne v12, v2, :cond_6

    .line 1377
    aget-object v2, v22, v23

    iget v2, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    iput v2, v11, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 1378
    aget-object v2, v22, v23

    iget v2, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    iput v2, v11, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 1381
    :cond_6
    const/4 v13, 0x0

    .line 1382
    .local v13, sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_7

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v23

    if-le v2, v0, :cond_7

    .line 1383
    move-object/from16 v0, p4

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #sentIntent:Landroid/app/PendingIntent;
    check-cast v13, Landroid/app/PendingIntent;

    .line 1387
    .restart local v13       #sentIntent:Landroid/app/PendingIntent;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->isOutgoingSmsAllowed()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1388
    if-eqz v13, :cond_8

    .line 1390
    const/16 v2, 0x100

    :try_start_0
    invoke-virtual {v13, v2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1410
    .end local v11           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v13           #sentIntent:Landroid/app/PendingIntent;
    .end local v20           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :cond_8
    :goto_3
    return-void

    .line 1400
    .restart local v11       #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .restart local v13       #sentIntent:Landroid/app/PendingIntent;
    .restart local v20       #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :cond_9
    const/4 v14, 0x0

    .line 1401
    .local v14, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_a

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v23

    if-le v2, v0, :cond_a

    .line 1402
    move-object/from16 v0, p5

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v14, Landroid/app/PendingIntent;

    .line 1405
    .restart local v14       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_a
    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    add-int/lit8 v2, v24, -0x1

    move/from16 v0, v23

    if-ne v0, v2, :cond_b

    const/4 v15, 0x1

    :goto_4
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v16, p6

    move/from16 v17, p7

    move/from16 v18, p8

    move-object/from16 v19, p9

    invoke-virtual/range {v7 .. v19}, Lcom/android/internal/telephony/SMSDispatcher;->sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/lang/String;IILjava/lang/String;)V

    .line 1360
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_2

    .line 1405
    :cond_b
    const/4 v15, 0x0

    goto :goto_4

    .line 1391
    .end local v14           #deliveryIntent:Landroid/app/PendingIntent;
    :catch_0
    move-exception v2

    goto :goto_3
.end method

.method protected abstract sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
.end method

.method protected abstract sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/lang/String;IILjava/lang/String;)V
.end method

.method protected sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 6
    .parameter "smsc"
    .parameter "pdu"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 1584
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/SMSDispatcher;->sendRawPduInternal([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    .line 1585
    return-void
.end method

.method protected sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ILjava/lang/String;)V
    .locals 8
    .parameter "smsc"
    .parameter "pdu"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "encodingMethod"
    .parameter "language"

    .prologue
    .line 1608
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/SMSDispatcher;->sendRawPduInternal([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZILjava/lang/String;)V

    .line 1609
    return-void
.end method

.method protected sendRawPduMore([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 6
    .parameter "smsc"
    .parameter "pdu"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 1591
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->isOutgoingSmsAllowed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1592
    if-eqz p3, :cond_0

    .line 1594
    const/16 v0, 0x100

    :try_start_0
    invoke-virtual {p3, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1604
    :cond_0
    :goto_0
    return-void

    .line 1603
    :cond_1
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/SMSDispatcher;->sendRawPduInternal([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    goto :goto_0

    .line 1595
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected sendRawPduMore([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ILjava/lang/String;)V
    .locals 8
    .parameter "smsc"
    .parameter "pdu"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "encodingMethod"
    .parameter "language"

    .prologue
    .line 1613
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/SMSDispatcher;->sendRawPduInternal([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZILjava/lang/String;)V

    .line 1614
    return-void
.end method

.method protected abstract sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
.end method

.method protected abstract sendSmsMore(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
.end method

.method protected abstract sendStkSms([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end method

.method protected abstract sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end method

.method protected abstract sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;IILjava/lang/String;)V
.end method

.method public switchToCdma()V
    .locals 2

    .prologue
    .line 1850
    const-string v0, "SMSDispatcher"

    const-string v1, "Error! This function should never be executed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    return-void
.end method

.method public switchToGsm()V
    .locals 2

    .prologue
    .line 1856
    const-string v0, "SMSDispatcher"

    const-string v1, "Error! This function should never be executed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    return-void
.end method

.method protected abstract updateIccAvailability()V
.end method
