.class public Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;
.super Ljava/lang/Object;
.source "OemCdmaTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$2;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_MobilePRev;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_SID_NID_NAM_Pairs;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SID_NID_NAM_Pair;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SubsidyPassword;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_AKey_Info;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_PrlVersion;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_DataRate;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_RevOption;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HybridModeState;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_ServiceOption;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_GENERIC_HookHeader;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$TelephonyMgrState;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$Watchdog;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$HookRequest;
    }
.end annotation


# static fields
.field private static final CDMA_START:I = 0x2000000

.field public static final OEM_RIL_CDMA_SPC_LOCK_CODE_LENGTH:I = 0x6

.field public static final OEM_RIL_REQUEST_CDMA_ACCESS_GENERIC_SIM:I = 0x2050013

.field public static final OEM_RIL_REQUEST_CDMA_CHECK_SUBSIDY_LOCK_PASSWD:I = 0x200000a

.field public static final OEM_RIL_REQUEST_CDMA_FIELD_TEST_GET_CALL_PROCESSING_DATA:I = 0x2000011

.field public static final OEM_RIL_REQUEST_CDMA_FIELD_TEST_GET_EVDO_DATA:I = 0x2000012

.field public static final OEM_RIL_REQUEST_CDMA_FIELD_TEST_GET_EVDO_HYBRID_MODE:I = 0x200000d

.field public static final OEM_RIL_REQUEST_CDMA_FIELD_TEST_GET_EVDO_REV:I = 0x200000f

.field public static final OEM_RIL_REQUEST_CDMA_FIELD_TEST_GET_SERVICE_OPTION:I = 0x200000b

.field public static final OEM_RIL_REQUEST_CDMA_FIELD_TEST_SET_EVDO_HYBRID_MODE:I = 0x200000e

.field public static final OEM_RIL_REQUEST_CDMA_FIELD_TEST_SET_EVDO_REV:I = 0x2000010

.field public static final OEM_RIL_REQUEST_CDMA_FIELD_TEST_SET_SERVICE_OPTION:I = 0x200000c

.field public static final OEM_RIL_REQUEST_CDMA_GET_BP_APN:I = 0x2000018

.field public static final OEM_RIL_REQUEST_CDMA_GET_CDMA_PRL_VERSION:I = 0x2000009

.field public static final OEM_RIL_REQUEST_CDMA_GET_DATA_RATE:I = 0x2000005

.field public static final OEM_RIL_REQUEST_CDMA_GET_MOB_P_REV:I = 0x2000007

.field public static final OEM_RIL_REQUEST_CDMA_GET_NAM_INFO:I = 0x2000001

.field public static final OEM_RIL_REQUEST_CDMA_GET_RDE_ITEM:I = 0x2000016

.field public static final OEM_RIL_REQUEST_CDMA_GET_SID_NID_PAIRS:I = 0x2000003

.field public static final OEM_RIL_REQUEST_CDMA_RESET_BP_SILENTLY:I = 0x2050019

.field public static final OEM_RIL_REQUEST_CDMA_SET_AKEY_INFO:I = 0x2000013

.field public static final OEM_RIL_REQUEST_CDMA_SET_BP_APN:I = 0x2000019

.field public static final OEM_RIL_REQUEST_CDMA_SET_DATA_RATE:I = 0x2000006

.field public static final OEM_RIL_REQUEST_CDMA_SET_MOB_P_REV:I = 0x2000008

.field public static final OEM_RIL_REQUEST_CDMA_SET_NAM_INFO:I = 0x2000002

.field public static final OEM_RIL_REQUEST_CDMA_SET_RDE_ITEM:I = 0x2000015

.field public static final OEM_RIL_REQUEST_CDMA_SET_SID_NID_PAIRS:I = 0x2000004

.field public static final OEM_RIL_REQUEST_CDMA_SMSEVDOITEM_UPDATES:I = 0x2000017

.field static final SIZE_OF_BYTE:I = 0x1

.field static final SIZE_OF_CHAR:I = 0x2

.field static final SIZE_OF_INT:I = 0x4

.field static final SIZE_OF_LONG:I = 0x8

.field static final SIZE_OF_NV_ITEM:I = 0x80

.field private static final TAG:Ljava/lang/String; = "OemCdmaTelephonyManager"

.field private static mInstance:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager; = null

.field public static final sDefaultSpcCode:Ljava/lang/String; = "000000"


# instance fields
.field private mCurrentMessage:Landroid/os/Message;

.field private mDog:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$Watchdog;

.field private mMsgHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRequestList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$HookRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$TelephonyMgrState;

.field private mUserHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mInstance:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 318
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 162
    sget-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$TelephonyMgrState;->STATE_IDLE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$TelephonyMgrState;

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mState:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$TelephonyMgrState;

    .line 181
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mRequestList:Ljava/util/LinkedList;

    .line 245
    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$1;

    invoke-direct {v0, p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$1;-><init>(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;)V

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    .line 319
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 320
    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$Watchdog;

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$Watchdog;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mDog:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$Watchdog;

    .line 321
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mDog:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$Watchdog;

    invoke-virtual {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$Watchdog;->start()V

    .line 322
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mCurrentMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$002(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;Landroid/os/Message;)Landroid/os/Message;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mCurrentMessage:Landroid/os/Message;

    return-object p1
.end method

.method static synthetic access$100(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$Watchdog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mDog:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$Watchdog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mUserHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$302(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$TelephonyMgrState;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$TelephonyMgrState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mState:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$TelephonyMgrState;

    return-object p1
.end method

.method static synthetic access$400(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mRequestList:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;[BLandroid/os/Message;Landroid/os/Handler;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 145
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;
    .locals 2

    .prologue
    .line 325
    const-class v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mInstance:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    if-nez v0, :cond_0

    .line 326
    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    invoke-direct {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;-><init>()V

    sput-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mInstance:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    .line 329
    :cond_0
    sget-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mInstance:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V
    .locals 3
    .parameter "data"
    .parameter "msg"
    .parameter "msgH"

    .prologue
    .line 292
    const-string v0, "OemCdmaTelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invokeOemRilRequestRaw(): msg.what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    sget-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$2;->$SwitchMap$com$motorola$android$telephony$cdma$OemCdmaTelephonyManager$TelephonyMgrState:[I

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mState:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$TelephonyMgrState;

    invoke-virtual {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$TelephonyMgrState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 308
    const-string v0, "OemCdmaTelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wrong state in invokeOemRilRequestRaw(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mState:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$TelephonyMgrState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :goto_0
    return-void

    .line 296
    :pswitch_0
    sget-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$TelephonyMgrState;->STATE_WAITING_FOR_RESPONSE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$TelephonyMgrState;

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mState:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$TelephonyMgrState;

    .line 297
    iput-object p2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mCurrentMessage:Landroid/os/Message;

    .line 298
    iput-object p3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mUserHandler:Landroid/os/Handler;

    .line 299
    const-string v0, "OemCdmaTelephonyManager"

    const-string v1, "sending request to RIL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 301
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mDog:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$Watchdog;

    invoke-virtual {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$Watchdog;->watch()V

    goto :goto_0

    .line 304
    :pswitch_1
    const-string v0, "OemCdmaTelephonyManager"

    const-string v1, "OemCdmaTelephonyManager is busy. pushing request to the queue."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mRequestList:Ljava/util/LinkedList;

    new-instance v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$HookRequest;

    invoke-direct {v1, p1, p2, p3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$HookRequest;-><init>([BLandroid/os/Message;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 294
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public accessGenericSIM(I[BLandroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 4
    .parameter "len"
    .parameter "command"
    .parameter "msgH"

    .prologue
    .line 1524
    const-string v2, "OemCdmaTelephonyManager"

    const-string v3, "accessGenericSIM()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    const v3, 0x2050013

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1529
    .local v1, msg:Landroid/os/Message;
    invoke-static {p1, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->genericSIMToByteArr(I[B)[B

    move-result-object v0

    .line 1530
    .local v0, data:[B
    invoke-direct {p0, v0, v1, p3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 1532
    sget-object v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v2
.end method

.method public checkSubsidyLockPasswd(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SubsidyPassword;Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 4
    .parameter "password"
    .parameter "msgH"

    .prologue
    .line 1482
    const-string v2, "OemCdmaTelephonyManager"

    const-string v3, "checkSubsidyLockPasswd()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    const v3, 0x200000a

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1487
    .local v1, msg:Landroid/os/Message;
    invoke-static {p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->subsidyPasswdToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SubsidyPassword;)[B

    move-result-object v0

    .line 1488
    .local v0, data:[B
    invoke-direct {p0, v0, v1, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 1490
    sget-object v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v2
.end method

.method public getCallProcessingData(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 5
    .parameter "msgH"

    .prologue
    const v4, 0x2000011

    .line 1250
    const-string v2, "OemCdmaTelephonyManager"

    const-string v3, "getCallProcessingData()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1255
    .local v1, msg:Landroid/os/Message;
    invoke-static {v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(I)[B

    move-result-object v0

    .line 1257
    .local v0, data:[B
    invoke-direct {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 1259
    sget-object v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v2
.end method

.method public getEmergencyNumber(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$EmergencyAddress;Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .parameter "address"
    .parameter "msgH"

    .prologue
    const v5, 0x2000016

    .line 1500
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_EMERGENCY_NUMBER:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1504
    .local v1, msg:Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 1505
    .local v2, rde:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/4 v3, 0x6

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 1506
    invoke-virtual {p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$EmergencyAddress;->id()I

    move-result v3

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->recordNum:I

    .line 1507
    const/4 v3, 0x0

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->offset:I

    .line 1509
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 1512
    .local v0, data:[B
    invoke-direct {p0, v0, v1, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 1514
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getEvdoData(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 5
    .parameter "msgH"

    .prologue
    const v4, 0x2000012

    .line 1232
    const-string v2, "OemCdmaTelephonyManager"

    const-string v3, "getEvdoData()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1237
    .local v1, msg:Landroid/os/Message;
    invoke-static {v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(I)[B

    move-result-object v0

    .line 1239
    .local v0, data:[B
    invoke-direct {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 1241
    sget-object v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v2
.end method

.method public getEvdoRev(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 5
    .parameter "msgH"

    .prologue
    const v4, 0x200000f

    .line 1214
    const-string v2, "OemCdmaTelephonyManager"

    const-string v3, "getEvdoRev()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1219
    .local v1, msg:Landroid/os/Message;
    invoke-static {v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(I)[B

    move-result-object v0

    .line 1221
    .local v0, data:[B
    invoke-direct {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 1223
    sget-object v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v2
.end method

.method public getHybridModeState(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 5
    .parameter "msgH"

    .prologue
    const v4, 0x200000d

    .line 1175
    const-string v2, "OemCdmaTelephonyManager"

    const-string v3, "getHybridModeState()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1180
    .local v1, msg:Landroid/os/Message;
    invoke-static {v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(I)[B

    move-result-object v0

    .line 1182
    .local v0, data:[B
    invoke-direct {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 1184
    sget-object v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v2
.end method

.method public getMipAaaKey(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .parameter "msgH"

    .prologue
    const v5, 0x2000016

    .line 2113
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "getMipAaaKey()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_MIP_AAA_KEY:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2118
    .local v1, msg:Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 2119
    .local v2, rde:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v3, 0x2719

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 2121
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 2124
    .local v0, data:[B
    invoke-direct {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 2126
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getMipHaKey(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .parameter "msgH"

    .prologue
    const v5, 0x2000016

    .line 2091
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "getMipHaKey()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2092
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_MIP_HA_KEY:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2096
    .local v1, msg:Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 2097
    .local v2, rde:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v3, 0x2718

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 2099
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 2102
    .local v0, data:[B
    invoke-direct {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 2104
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getMipSipChapKey(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .parameter "msgH"

    .prologue
    const v5, 0x2000016

    .line 2135
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "getMipSipChapKey()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2136
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_MIP_SIP_CHAP_KEY:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2140
    .local v1, msg:Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 2141
    .local v2, rde:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v3, 0x271a

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 2143
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 2146
    .local v0, data:[B
    invoke-direct {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 2148
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getMobilePRev(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 5
    .parameter "msgH"

    .prologue
    const v4, 0x2000007

    .line 1463
    const-string v2, "OemCdmaTelephonyManager"

    const-string v3, "getMobilePRev()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1468
    .local v1, msg:Landroid/os/Message;
    invoke-static {v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(I)[B

    move-result-object v0

    .line 1470
    .local v0, data:[B
    invoke-direct {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 1472
    sget-object v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v2
.end method

.method public getNamDataRate(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 5
    .parameter "msgH"

    .prologue
    const v4, 0x2000005

    .line 1289
    const-string v2, "OemCdmaTelephonyManager"

    const-string v3, "getNamDataRate()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1294
    .local v1, msg:Landroid/os/Message;
    invoke-static {v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(I)[B

    move-result-object v0

    .line 1296
    .local v0, data:[B
    invoke-direct {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 1298
    sget-object v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v2
.end method

.method public getNamInfo(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 5
    .parameter "msgH"

    .prologue
    const v4, 0x2000001

    .line 1424
    const-string v2, "OemCdmaTelephonyManager"

    const-string v3, "getNamInfo()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1429
    .local v1, msg:Landroid/os/Message;
    invoke-static {v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(I)[B

    move-result-object v0

    .line 1431
    .local v0, data:[B
    invoke-direct {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 1433
    sget-object v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v2
.end method

.method public getNamPrlVersion(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 5
    .parameter "msgH"

    .prologue
    const v4, 0x2000009

    .line 1307
    const-string v2, "OemCdmaTelephonyManager"

    const-string v3, "getNamPrlVersion()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1312
    .local v1, msg:Landroid/os/Message;
    invoke-static {v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(I)[B

    move-result-object v0

    .line 1314
    .local v0, data:[B
    invoke-direct {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 1316
    sget-object v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v2
.end method

.method public getNamSidNidPairs(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 5
    .parameter "msgH"

    .prologue
    const v4, 0x2000003

    .line 1374
    const-string v2, "OemCdmaTelephonyManager"

    const-string v3, "getNamSidNidPairs()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1378
    .local v1, msg:Landroid/os/Message;
    iput-object p1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mUserHandler:Landroid/os/Handler;

    .line 1380
    invoke-static {v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(I)[B

    move-result-object v0

    .line 1382
    .local v0, data:[B
    invoke-direct {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 1384
    sget-object v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v2
.end method

.method public getPrefOnlyFlag(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .parameter "msgH"

    .prologue
    const v5, 0x2000016

    .line 1648
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_PREF_ONLY_FLAG:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1652
    .local v1, msg:Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 1653
    .local v2, rde:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v3, 0x271d

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 1655
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 1658
    .local v0, data:[B
    invoke-direct {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 1660
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getPublicUserDomainName(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .parameter "msgH"

    .prologue
    const v5, 0x2000016

    .line 2039
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "getPublicUserDomainName"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_PUBLIC_USER_ID_DOMAIN_NAME:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2044
    .local v1, msg:Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 2045
    .local v2, rde:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v3, 0x1f4c

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 2047
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 2050
    .local v0, data:[B
    invoke-direct {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 2052
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getRDEByID(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .parameter "rde_id"
    .parameter "msgH"

    .prologue
    const v5, 0x2000016

    .line 1718
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "getRDEByID"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1722
    .local v1, msg:Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 1723
    .local v2, rde:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$2;->$SwitchMap$com$motorola$android$telephony$cdma$OemCdmaTelephonyManager$RdeRequestId:[I

    invoke-virtual {p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1733
    const/4 v3, 0x0

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 1737
    :goto_0
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 1740
    .local v0, data:[B
    invoke-direct {p0, v0, v1, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 1742
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3

    .line 1725
    .end local v0           #data:[B
    :pswitch_0
    const/16 v3, 0x26

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    goto :goto_0

    .line 1729
    :pswitch_1
    const/16 v3, 0x27

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    goto :goto_0

    .line 1723
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getServiceOption(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 5
    .parameter "msgH"

    .prologue
    const v4, 0x200000b

    .line 1134
    const-string v2, "OemCdmaTelephonyManager"

    const-string v3, "getServiceOption()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1139
    .local v1, msg:Landroid/os/Message;
    invoke-static {v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(I)[B

    move-result-object v0

    .line 1141
    .local v0, data:[B
    invoke-direct {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 1143
    sget-object v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v2
.end method

.method public getSmsEvdoDomainName(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .parameter "msgH"

    .prologue
    const v5, 0x2000016

    .line 1939
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "getSmsEvdoDomainName"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_SMS_EVDO_P_CSCF_DOMAIN_NAME:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1944
    .local v1, msg:Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 1945
    .local v2, rde:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v3, 0x1f4a

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 1947
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 1950
    .local v0, data:[B
    invoke-direct {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 1952
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getSmsEvdoPortNumber(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .parameter "msgH"

    .prologue
    const v5, 0x2000016

    .line 1989
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "getSmsEvdoPortNumber"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_SMS_EVDO_P_CSCF_PORT_NUMBER:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1994
    .local v1, msg:Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 1995
    .local v2, rde:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v3, 0x1f4b

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 1997
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 2000
    .local v0, data:[B
    invoke-direct {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 2002
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getSmsEvdoReleaseTimer(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .parameter "msgH"

    .prologue
    const v5, 0x2000016

    .line 1889
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "getSmsEvdoReleaseTimer"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_SMS_EVDO_RELEASE_TIMER:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1894
    .local v1, msg:Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 1895
    .local v2, rde:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v3, 0x1f49

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 1897
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 1900
    .local v0, data:[B
    invoke-direct {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 1902
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getSmsEvdoStatus(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .parameter "msgH"

    .prologue
    const v5, 0x2000016

    .line 1788
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "getSmsEvdoStatus"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_SMS_EVDO_STATUS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1793
    .local v1, msg:Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 1794
    .local v2, rde:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v3, 0x1f47

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 1796
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 1799
    .local v0, data:[B
    invoke-direct {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 1801
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getSmsEvdoT1Timer(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .parameter "msgH"

    .prologue
    const v5, 0x2000016

    .line 1839
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "getSmsEvdoT1Timer"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_SMS_EVDO_T1_TIMER:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1844
    .local v1, msg:Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 1845
    .local v2, rde:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v3, 0x1f48

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 1847
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 1850
    .local v0, data:[B
    invoke-direct {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 1852
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getVZWSystemSelection(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .parameter "msgH"

    .prologue
    const v5, 0x2000016

    .line 1669
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_CDMA_VZW_SS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1673
    .local v1, msg:Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 1674
    .local v2, rde:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v3, 0x271e

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 1676
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 1679
    .local v0, data:[B
    invoke-direct {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 1681
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public operateVZWAPNMRUTable(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;Ljava/lang/String;Landroid/os/Message;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 7
    .parameter "operation"
    .parameter "payload"
    .parameter "response"

    .prologue
    .line 1546
    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OperateVZWAPNMRUTable(): Operation = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Payload = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1551
    .local v2, commandlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$2;->$SwitchMap$com$motorola$android$telephony$cdma$OemCdmaTelephonyManager$VZW_APN_MRU_Operation:[I

    invoke-virtual {p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1573
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 1592
    :goto_0
    return-object v4

    .line 1553
    :pswitch_0
    const-string v4, "CDMAEDITAPN "

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1554
    const-string v4, "AT+APNE="

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1576
    :goto_1
    if-eqz p2, :cond_0

    .line 1577
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1580
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1581
    .local v0, array_size:I
    new-array v1, v0, [Ljava/lang/String;

    .line 1582
    .local v1, command:[Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1584
    const-string v4, "OemCdmaTelephonyManager"

    const-string v5, "invokeOemRilRequestStrings(): "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v0, :cond_1

    .line 1587
    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "command["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1557
    .end local v0           #array_size:I
    .end local v1           #command:[Ljava/lang/String;
    .end local v3           #i:I
    :pswitch_1
    const-string v4, "CDMAQAPNEFS "

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1558
    const-string v4, "AT+APNE?"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1561
    :pswitch_2
    const-string v4, "CDMAEDITMRU "

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1562
    const-string v4, "AT+MRUE="

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1565
    :pswitch_3
    const-string v4, "CDMAQUERYMRU"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1566
    const-string v4, "AT+MRUE?"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1569
    :pswitch_4
    const-string v4, "CDMACLEARMRU"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1570
    const-string v4, "AT+MRUC"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1590
    .restart local v0       #array_size:I
    .restart local v1       #command:[Ljava/lang/String;
    .restart local v3       #i:I
    :cond_1
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4, v1, p3}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 1592
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto :goto_0

    .line 1551
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public resetBPSilently(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .parameter "msgH"

    .prologue
    const v5, 0x2050019

    .line 2159
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "resetBPSilently()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 2164
    .local v2, msg:Landroid/os/Message;
    const/16 v3, 0x8

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2166
    .local v0, buf:Ljava/nio/ByteBuffer;
    const/4 v3, 0x0

    invoke-static {v0, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeGenericHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2170
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 2171
    .local v1, data:[B
    invoke-direct {p0, v1, v2, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 2172
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public setAkeyInfo(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_AKey_Info;Ljava/lang/String;Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .parameter "info"
    .parameter "spcLockCode"
    .parameter "msgH"

    .prologue
    const v5, 0x2000013

    .line 1327
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "setAkeyInfo()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    iget-object v3, p1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_AKey_Info;->akey:[B

    array-length v3, v3

    const/16 v4, 0x1a

    if-eq v3, v4, :cond_0

    .line 1330
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 1339
    :goto_0
    return-object v3

    .line 1332
    :cond_0
    const v2, 0x2000013

    .line 1333
    .local v2, msgId:I
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1335
    .local v1, msg:Landroid/os/Message;
    invoke-static {p1, v5, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->aKeyInfoToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_AKey_Info;ILjava/lang/String;)[B

    move-result-object v0

    .line 1337
    .local v0, data:[B
    invoke-direct {p0, v0, v1, p3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 1339
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto :goto_0
.end method

.method public setEmergencyNumber(Ljava/lang/String;Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$EmergencyAddress;Ljava/lang/String;Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 9
    .parameter "number"
    .parameter "addr"
    .parameter "spcLockCode"
    .parameter "msgH"

    .prologue
    const v8, 0x2000015

    const/4 v7, 0x0

    .line 1604
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 1606
    .local v4, result:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    if-nez p2, :cond_0

    .line 1607
    const-string v5, "OemCdmaTelephonyManager"

    const-string v6, "setEmergencyNumber(): addr is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    move-object v5, v4

    .line 1637
    :goto_0
    return-object v5

    .line 1612
    :cond_0
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v6, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_EMERGENCY_NUMBER:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v5, v8, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1616
    .local v1, msg:Landroid/os/Message;
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 1617
    .local v3, rde:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/4 v5, 0x6

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 1618
    iput v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->recordNum:I

    .line 1619
    iput v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->offset:I

    .line 1621
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;-><init>()V

    .line 1622
    .local v2, n:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;
    invoke-virtual {p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$EmergencyAddress;->id()I

    move-result v5

    int-to-byte v5, v5

    iput-byte v5, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;->address:B

    .line 1623
    const/4 v5, 0x3

    iput-byte v5, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;->status:B

    .line 1625
    invoke-virtual {v2, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;->setNumber(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1626
    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setEmergencyNumber(): unable to set number: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    move-object v5, v4

    .line 1628
    goto :goto_0

    .line 1631
    :cond_1
    iput-object v2, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    .line 1633
    invoke-static {v3, v8, p3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 1635
    .local v0, data:[B
    invoke-direct {p0, v0, v1, p4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 1637
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto :goto_0
.end method

.method public setEvdoRev(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_RevOption;Ljava/lang/String;Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .parameter "evdoRev"
    .parameter "spcLockCode"
    .parameter "msgH"

    .prologue
    const v5, 0x2000010

    .line 1196
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "setEvdoRev()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    const v2, 0x2000010

    .line 1199
    .local v2, msgId:I
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1201
    .local v1, msg:Landroid/os/Message;
    invoke-static {p1, v5, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->revOptionToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_RevOption;ILjava/lang/String;)[B

    move-result-object v0

    .line 1203
    .local v0, data:[B
    invoke-direct {p0, v0, v1, p3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 1205
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public setHybridModeState(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HybridModeState;Ljava/lang/String;Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .parameter "hybridModeState"
    .parameter "spcLockCode"
    .parameter "msgH"

    .prologue
    const v5, 0x200000e

    .line 1157
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "setHybridModeState()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    const v2, 0x200000e

    .line 1160
    .local v2, msgId:I
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1162
    .local v1, msg:Landroid/os/Message;
    invoke-static {p1, v5, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->hybridModeToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HybridModeState;ILjava/lang/String;)[B

    move-result-object v0

    .line 1164
    .local v0, data:[B
    invoke-direct {p0, v0, v1, p3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 1166
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public setIntRDEByID(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;ILandroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 9
    .parameter "rde_id"
    .parameter "value"
    .parameter "msgH"

    .prologue
    const v8, 0x2000015

    .line 1751
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 1752
    .local v4, result:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setIntRDEByID - value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v6, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_SMS_EVDO_STATUS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v5, v8, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1757
    .local v1, msg:Landroid/os/Message;
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 1758
    .local v3, rde:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$2;->$SwitchMap$com$motorola$android$telephony$cdma$OemCdmaTelephonyManager$RdeRequestId:[I

    invoke-virtual {p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1768
    const/4 v5, 0x0

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 1772
    :goto_0
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;-><init>(Ljava/lang/Integer;)V

    .line 1773
    .local v2, obj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;
    iput-object v2, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    .line 1775
    const-string v5, "000000"

    invoke-static {v3, v8, v5}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 1778
    .local v0, data:[B
    invoke-direct {p0, v0, v1, p3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 1780
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v5

    .line 1760
    .end local v0           #data:[B
    .end local v2           #obj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;
    :pswitch_0
    const/16 v5, 0x26

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    goto :goto_0

    .line 1764
    :pswitch_1
    const/16 v5, 0x27

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    goto :goto_0

    .line 1758
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setMobilePRev(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_MobilePRev;Ljava/lang/String;Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .parameter "rev"
    .parameter "spcLockCode"
    .parameter "msgH"

    .prologue
    const v5, 0x2000008

    .line 1445
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "setMobilePRev()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    const v2, 0x2000008

    .line 1448
    .local v2, msgId:I
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1450
    .local v1, msg:Landroid/os/Message;
    invoke-static {p1, v5, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->mobilePRevToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_MobilePRev;ILjava/lang/String;)[B

    move-result-object v0

    .line 1452
    .local v0, data:[B
    invoke-direct {p0, v0, v1, p3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 1454
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public setNamDataRate(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_DataRate;Ljava/lang/String;Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .parameter "dataRate"
    .parameter "spcLockCode"
    .parameter "msgH"

    .prologue
    const v5, 0x2000006

    .line 1271
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "setNamDataRate()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    const v2, 0x2000006

    .line 1274
    .local v2, msgId:I
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1276
    .local v1, msg:Landroid/os/Message;
    invoke-static {p1, v5, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->dataRateToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_DataRate;ILjava/lang/String;)[B

    move-result-object v0

    .line 1278
    .local v0, data:[B
    invoke-direct {p0, v0, v1, p3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 1280
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public setNamInfo(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;Ljava/lang/String;Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 8
    .parameter "namInfo"
    .parameter "spcLockCode"
    .parameter "msgH"

    .prologue
    const v7, 0x2000002

    const/16 v6, 0xa

    const/4 v5, 0x3

    .line 1396
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "setNamInfo()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    iget-object v3, p1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->mdn:[B

    array-length v3, v3

    if-ne v3, v6, :cond_0

    iget-object v3, p1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->min:[B

    array-length v3, v3

    if-ne v3, v6, :cond_0

    iget-object v3, p1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsi11_12:[B

    array-length v3, v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v3, p1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMcc:[B

    array-length v3, v3

    if-ne v3, v5, :cond_0

    iget-object v3, p1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMccT:[B

    array-length v3, v3

    if-ne v3, v5, :cond_0

    iget-object v3, p1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiT:[B

    array-length v3, v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_0

    iget-object v3, p1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->newSpcCode:[B

    array-length v3, v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_1

    .line 1405
    :cond_0
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 1415
    :goto_0
    return-object v3

    .line 1408
    :cond_1
    const v2, 0x2000002

    .line 1409
    .local v2, msgId:I
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1411
    .local v1, msg:Landroid/os/Message;
    invoke-static {p1, v7, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->namInfoToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;ILjava/lang/String;)[B

    move-result-object v0

    .line 1413
    .local v0, data:[B
    invoke-direct {p0, v0, v1, p3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 1415
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto :goto_0
.end method

.method public setNamSidNidPairs(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_SID_NID_NAM_Pairs;Ljava/lang/String;Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .parameter "sidNidPairs"
    .parameter "spcLockCode"
    .parameter "msgH"

    .prologue
    const v5, 0x2000004

    .line 1352
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "setNamSidNidPairs()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    iget-object v3, p1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_SID_NID_NAM_Pairs;->sidNid:[Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SID_NID_NAM_Pair;

    array-length v3, v3

    const/16 v4, 0x14

    if-eq v3, v4, :cond_0

    .line 1355
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 1365
    :goto_0
    return-object v3

    .line 1358
    :cond_0
    const v2, 0x2000004

    .line 1359
    .local v2, msgId:I
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1361
    .local v1, msg:Landroid/os/Message;
    invoke-static {p1, v5, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->sidNidPairsToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_SID_NID_NAM_Pairs;ILjava/lang/String;)[B

    move-result-object v0

    .line 1363
    .local v0, data:[B
    invoke-direct {p0, v0, v1, p3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 1365
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto :goto_0
.end method

.method public setPublicUserDomainName(Ljava/lang/String;Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 9
    .parameter "user_domain"
    .parameter "msgH"

    .prologue
    const v8, 0x2000015

    .line 2062
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 2064
    .local v4, result:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setPublicUserDomainName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v6, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_PUBLIC_USER_ID_DOMAIN_NAME:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v5, v8, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2070
    .local v1, msg:Landroid/os/Message;
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 2071
    .local v3, rde:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v5, 0x1f4c

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 2073
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-direct {v2, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;-><init>(Ljava/lang/String;)V

    .line 2075
    .local v2, obj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;
    iput-object v2, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    .line 2077
    const-string v5, "000000"

    invoke-static {v3, v8, v5}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 2080
    .local v0, data:[B
    invoke-direct {p0, v0, v1, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 2082
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v5
.end method

.method public setServiceOption(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_ServiceOption;Ljava/lang/String;Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .parameter "serviceOption"
    .parameter "spcLockCode"
    .parameter "msgH"

    .prologue
    const v5, 0x200000c

    .line 1116
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "setServiceOption()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    const v2, 0x200000c

    .line 1119
    .local v2, msgId:I
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1121
    .local v1, msg:Landroid/os/Message;
    invoke-static {p1, v5, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->serviceOptionToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_ServiceOption;ILjava/lang/String;)[B

    move-result-object v0

    .line 1123
    .local v0, data:[B
    invoke-direct {p0, v0, v1, p3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 1125
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public setSmsEvdoDomainName(Ljava/lang/String;Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 9
    .parameter "dmn_name"
    .parameter "msgH"

    .prologue
    const v8, 0x2000015

    .line 1961
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 1963
    .local v4, result:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSmsEvdoDomainName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v6, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_SMS_EVDO_P_CSCF_DOMAIN_NAME:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v5, v8, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1969
    .local v1, msg:Landroid/os/Message;
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 1970
    .local v3, rde:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v5, 0x1f4a

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 1972
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-direct {v2, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;-><init>(Ljava/lang/String;)V

    .line 1973
    .local v2, obj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;
    iput-object v2, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    .line 1975
    const-string v5, "000000"

    invoke-static {v3, v8, v5}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 1978
    .local v0, data:[B
    invoke-direct {p0, v0, v1, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 1980
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v5
.end method

.method public setSmsEvdoPortNumber(Ljava/lang/String;Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 9
    .parameter "port"
    .parameter "msgH"

    .prologue
    const v8, 0x2000015

    .line 2011
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 2013
    .local v4, result:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSmsEvdoPortNumber: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2015
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v6, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_SMS_EVDO_P_CSCF_PORT_NUMBER:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v5, v8, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2019
    .local v1, msg:Landroid/os/Message;
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 2020
    .local v3, rde:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v5, 0x1f4b

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 2022
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-direct {v2, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;-><init>(Ljava/lang/String;)V

    .line 2023
    .local v2, obj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;
    iput-object v2, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    .line 2025
    const-string v5, "000000"

    invoke-static {v3, v8, v5}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 2028
    .local v0, data:[B
    invoke-direct {p0, v0, v1, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 2030
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v5
.end method

.method public setSmsEvdoReleaseTimer(ILandroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 9
    .parameter "timer"
    .parameter "msgH"

    .prologue
    const v8, 0x2000015

    .line 1911
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 1913
    .local v4, result:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSmsEvdoReleaseTimer - timer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v6, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_SMS_EVDO_RELEASE_TIMER:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v5, v8, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1919
    .local v1, msg:Landroid/os/Message;
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 1920
    .local v3, rde:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v5, 0x1f49

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 1922
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;-><init>(Ljava/lang/Integer;)V

    .line 1923
    .local v2, obj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;
    iput-object v2, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    .line 1925
    const-string v5, "000000"

    invoke-static {v3, v8, v5}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 1928
    .local v0, data:[B
    invoke-direct {p0, v0, v1, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 1930
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v5
.end method

.method public setSmsEvdoStatus(ZLandroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 9
    .parameter "status"
    .parameter "msgH"

    .prologue
    const v8, 0x2000015

    .line 1810
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 1812
    .local v4, result:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSmsEvdoStatus - status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v6, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_SMS_EVDO_STATUS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v5, v8, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1818
    .local v1, msg:Landroid/os/Message;
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 1819
    .local v3, rde:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v5, 0x1f47

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 1821
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-direct {v2, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;-><init>(Z)V

    .line 1822
    .local v2, obj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;
    iput-object v2, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    .line 1824
    const-string v5, "000000"

    invoke-static {v3, v8, v5}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 1827
    .local v0, data:[B
    invoke-direct {p0, v0, v1, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 1829
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v5
.end method

.method public setSmsEvdoT1Timer(ILandroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 9
    .parameter "timer"
    .parameter "msgH"

    .prologue
    const v8, 0x2000015

    .line 1861
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 1863
    .local v4, result:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSmsEvdoT1Timer - timer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v6, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_SMS_EVDO_T1_TIMER:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v5, v8, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1869
    .local v1, msg:Landroid/os/Message;
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 1870
    .local v3, rde:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v5, 0x1f48

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 1872
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;-><init>(Ljava/lang/Integer;)V

    .line 1873
    .local v2, obj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;
    iput-object v2, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    .line 1875
    const-string v5, "000000"

    invoke-static {v3, v8, v5}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 1878
    .local v0, data:[B
    invoke-direct {p0, v0, v1, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 1880
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v5
.end method

.method public setVZWSystemSelection(ZLandroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 9
    .parameter "status"
    .parameter "msgH"

    .prologue
    const v8, 0x2000015

    .line 1690
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 1692
    .local v5, result:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    iget-object v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v7, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_CDMA_VZW_SS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v6, v8, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1696
    .local v2, msg:Landroid/os/Message;
    new-instance v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 1697
    .local v4, rde:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v6, 0x271e

    iput v6, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 1699
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 1700
    .local v0, b:B
    :goto_0
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-direct {v3, v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;-><init>(B)V

    .line 1702
    .local v3, n:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;
    iput-object v3, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    .line 1704
    const-string v6, "000000"

    invoke-static {v4, v8, v6}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v1

    .line 1706
    .local v1, data:[B
    invoke-direct {p0, v1, v2, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 1708
    sget-object v6, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v6

    .line 1699
    .end local v0           #b:B
    .end local v1           #data:[B
    .end local v3           #n:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
