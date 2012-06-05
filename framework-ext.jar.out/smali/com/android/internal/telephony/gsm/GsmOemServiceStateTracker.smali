.class public final Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;
.super Lcom/android/internal/telephony/ServiceStateTracker;
.source "GsmOemServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker$OemCommands;
    }
.end annotation


# static fields
.field static final DBG:Z = true

.field private static final EVENT_GET_NEIGHBORING_CELL_DONE:I = 0x3eb

.field private static final EVENT_GET_SIGNAL_STRENGTH_DONE:I = 0x3ec

.field private static final EVENT_OEM_STATUS_CHANGED:I = 0x3e8

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final OEM_SIGNAL_STRENGTH_REQ_DATA:[B

.field static final OEM_SIGNAL_STRENGTH_REQ_DATA_QC:[B


# instance fields
.field public mATTContext:I

.field private mIsSteModem_bool:Z

.field private mIsSwitchedToCdma:Z

.field mOem:Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker$OemCommands;

.field public mOldss:Landroid/telephony/SignalStrength;

.field private mOwnerModemId:I

.field phone:Lcom/android/internal/telephony/gsm/GSMPhone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 59
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->OEM_SIGNAL_STRENGTH_REQ_DATA:[B

    .line 63
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->OEM_SIGNAL_STRENGTH_REQ_DATA_QC:[B

    return-void

    .line 59
    nop

    :array_0
    .array-data 0x1
        0x1t
        0x5t
        0x0t
        0xft
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 63
    nop

    :array_1
    .array-data 0x1
        0x1t
        0x5t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(ILcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 1
    .parameter "ownerModemId"
    .parameter "phone"

    .prologue
    const/4 v0, 0x0

    .line 155
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;-><init>()V

    .line 57
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->mATTContext:I

    .line 67
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->mIsSteModem_bool:Z

    .line 120
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker$OemCommands;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker$OemCommands;-><init>(Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->mOem:Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker$OemCommands;

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->mIsSwitchedToCdma:Z

    .line 156
    iput p1, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->mOwnerModemId:I

    .line 157
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 158
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    .line 161
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->checkModem()V

    .line 163
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 1
    .parameter "phone"

    .prologue
    const/4 v0, 0x0

    .line 124
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;-><init>()V

    .line 57
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->mATTContext:I

    .line 67
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->mIsSteModem_bool:Z

    .line 120
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker$OemCommands;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker$OemCommands;-><init>(Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->mOem:Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker$OemCommands;

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->mIsSwitchedToCdma:Z

    .line 126
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 127
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    .line 129
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->activateMe()V

    .line 132
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->checkModem()V

    .line 134
    return-void
.end method

.method public constructor <init>(ZZLcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 2
    .parameter "isCdmaGsmWorldPhone"
    .parameter "isSwitchedToCdma"
    .parameter "phone"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 173
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;-><init>()V

    .line 57
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->mATTContext:I

    .line 67
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->mIsSteModem_bool:Z

    .line 120
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker$OemCommands;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker$OemCommands;-><init>(Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->mOem:Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker$OemCommands;

    .line 169
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->mIsSwitchedToCdma:Z

    .line 175
    if-nez p1, :cond_0

    .line 176
    const-string v0, "GSM"

    const-string v1, "GsmOemServiceStateTracker, this shouldn\'t be called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :goto_0
    return-void

    .line 180
    :cond_0
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 181
    iget-object v0, p3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    .line 183
    if-nez p2, :cond_1

    .line 186
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->mIsSwitchedToCdma:Z

    .line 187
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->switchToGsm()V

    .line 193
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->checkModem()V

    goto :goto_0

    .line 189
    :cond_1
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->mIsSwitchedToCdma:Z

    goto :goto_1
.end method

.method private activateMe()V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnUnsolOemHookRaw(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 138
    return-void
.end method

.method private handleOEMCmd(I)V
    .locals 2
    .parameter "oemCmd"

    .prologue
    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOEMCmd oemCmd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->log(Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method private pollState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 433
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    .line 434
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    aput v2, v0, v2

    .line 436
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    aget v1, v0, v2

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v2

    .line 437
    return-void
.end method

.method private pollStateDone()V
    .locals 2

    .prologue
    .line 442
    const-string v0, "GSM"

    const-string v1, "Poll ServiceState done: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    return-void
.end method


# virtual methods
.method public activate()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->activateMe()V

    .line 145
    return-void
.end method

.method public checkModem()V
    .locals 3

    .prologue
    .line 491
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->mIsSteModem_bool:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is STE Modem ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->mIsSteModem_bool:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->log(Ljava/lang/String;)V

    .line 497
    return-void

    .line 493
    :catch_0
    move-exception v0

    .line 494
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->mIsSteModem_bool:Z

    goto :goto_0
.end method

.method public deactivate()V
    .locals 0

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->dispose()V

    .line 150
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnUnsolOemHookRaw(Landroid/os/Handler;)V

    .line 218
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 221
    const-string v0, "GSM"

    const-string v1, "GsmServiceStateTracker finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return-void
.end method

.method public getCellsInfo(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 457
    const-string v1, "Enter in getCellsInfo"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->log(Ljava/lang/String;)V

    .line 458
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->mOem:Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker$OemCommands;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker$OemCommands;->getNeighboringCellData()[B

    move-result-object v0

    .line 460
    .local v0, data:[B
    const-string v1, "getCellsInfo send OEM request raw"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->log(Ljava/lang/String;)V

    .line 462
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/16 v2, 0x3eb

    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 465
    return-void
.end method

.method public getCurrentDataConnectionState()I
    .locals 1

    .prologue
    .line 524
    const/4 v0, 0x0

    return v0
.end method

.method protected getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    return-object v0
.end method

.method public getSignalStrength(Landroid/telephony/SignalStrength;Landroid/telephony/SignalStrength;)V
    .locals 3
    .parameter "oldss"
    .parameter "ss"

    .prologue
    const/16 v2, 0x3ec

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter in getSignalStrength"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->log(Ljava/lang/String;)V

    .line 472
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->mOldss:Landroid/telephony/SignalStrength;

    .line 474
    const-string v0, "GsmOemServiceStateTracker::getSignalStrength Send OEM request raw"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->log(Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v1, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->OEM_SIGNAL_STRENGTH_REQ_DATA_QC:[B

    invoke-virtual {p0, v2, p2}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 484
    :goto_0
    return-void

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v1, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->OEM_SIGNAL_STRENGTH_REQ_DATA:[B

    invoke-virtual {p0, v2, p2}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 32
    .parameter "msg"

    .prologue
    .line 235
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v29, v0

    packed-switch v29, :pswitch_data_0

    .line 356
    :pswitch_0
    const-string v29, "GSM"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Unhandled message with number: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 237
    :pswitch_1
    const-string v29, "Received case EVENT_OEM_STATUS_CHANGED"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->log(Ljava/lang/String;)V

    .line 238
    const/16 v24, 0x0

    .line 239
    .local v24, oemCmd:I
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 240
    .local v11, ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, [B

    move-object/from16 v28, v29

    check-cast v28, [B

    .line 241
    .local v28, states:[B
    new-instance v17, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 242
    .local v17, in:Ljava/io/ByteArrayInputStream;
    new-instance v13, Ljava/io/DataInputStream;

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 245
    .local v13, dis:Ljava/io/DataInputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->mOem:Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker$OemCommands;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    #calls: Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker$OemCommands;->readIntLittleEndian(Ljava/io/DataInputStream;)J
    invoke-static {v0, v13}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker$OemCommands;->access$000(Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker$OemCommands;Ljava/io/DataInputStream;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v29

    move-wide/from16 v0, v29

    long-to-int v0, v0

    move/from16 v24, v0

    .line 250
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->handleOEMCmd(I)V

    goto :goto_0

    .line 246
    :catch_0
    move-exception v14

    .line 247
    .local v14, e:Ljava/io/IOException;
    goto :goto_0

    .line 254
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v13           #dis:Ljava/io/DataInputStream;
    .end local v14           #e:Ljava/io/IOException;
    .end local v17           #in:Ljava/io/ByteArrayInputStream;
    .end local v24           #oemCmd:I
    .end local v28           #states:[B
    :pswitch_2
    const-string v29, "Received case EVENT_GET_NEIGHBORING_CELL_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->log(Ljava/lang/String;)V

    .line 255
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 256
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/Message;

    .line 257
    .local v18, m:Landroid/os/Message;
    iget-object v0, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, [B

    move-object/from16 v28, v29

    check-cast v28, [B

    .line 259
    .restart local v28       #states:[B
    iget-object v0, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v29, v0

    if-nez v29, :cond_1

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v29, v0

    const/16 v30, 0x5

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_3

    .line 260
    :cond_1
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Get Neighbor cell error or byte array length < 5"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    iget-object v0, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v29, v0

    if-eqz v29, :cond_2

    iget-object v0, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v29, v0

    :goto_1
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->log(Ljava/lang/String;)V

    .line 261
    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 262
    invoke-virtual/range {v18 .. v18}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 260
    :cond_2
    const-string v29, ""

    goto :goto_1

    .line 266
    :cond_3
    const/16 v29, 0x0

    aget-byte v29, v28, v29

    move/from16 v0, v29

    and-int/lit16 v0, v0, 0xff

    move/from16 v29, v0

    const/16 v30, 0x1

    aget-byte v30, v28, v30

    move/from16 v0, v30

    and-int/lit16 v0, v0, 0xff

    move/from16 v30, v0

    shl-int/lit8 v30, v30, 0x8

    or-int v6, v29, v30

    .line 267
    .local v6, Psc:I
    const/16 v29, 0x2

    aget-byte v29, v28, v29

    move/from16 v0, v29

    and-int/lit16 v0, v0, 0xff

    move/from16 v29, v0

    const/16 v30, 0x3

    aget-byte v30, v28, v30

    move/from16 v0, v30

    and-int/lit16 v0, v0, 0xff

    move/from16 v30, v0

    shl-int/lit8 v30, v30, 0x8

    or-int v7, v29, v30

    .line 268
    .local v7, Uarfcn:I
    const/16 v29, 0x4

    aget-byte v8, v28, v29

    .line 269
    .local v8, Rssi:I
    const/16 v29, 0x5

    aget-byte v9, v28, v29

    .line 270
    .local v9, Bsic:I
    const/4 v10, 0x0

    .line 271
    .local v10, response:[Landroid/telephony/NeighboringCell;
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v29, v0

    const/16 v30, 0x7

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_4

    const/16 v29, 0x6

    aget-byte v29, v28, v29

    if-eqz v29, :cond_4

    .line 272
    const-string v29, "Received case EVENT_GET_NEIGHBORING_CELL_DONE have NeighboringCell"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->log(Ljava/lang/String;)V

    .line 273
    const/16 v29, 0x6

    aget-byte v29, v28, v29

    move/from16 v0, v29

    new-array v10, v0, [Landroid/telephony/NeighboringCell;

    .line 274
    const/16 v19, 0x0

    .line 275
    .local v19, n:I
    const/16 v21, 0x0

    .line 276
    .local v21, nCid:I
    const/16 v23, 0x0

    .line 277
    .local v23, nUarfcn:I
    const/16 v22, 0x0

    .line 278
    .local v22, nRssi:I
    const/16 v20, 0x0

    .line 279
    .local v20, nBsic:I
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "states[6] = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v30, 0x6

    aget-byte v30, v28, v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "response initialize "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->log(Ljava/lang/String;)V

    .line 280
    const/16 v16, 0x0

    .local v16, i:I
    :goto_2
    const/16 v29, 0x6

    aget-byte v29, v28, v29

    move/from16 v0, v16

    move/from16 v1, v29

    if-ge v0, v1, :cond_4

    .line 281
    add-int/lit8 v19, v16, 0x1

    .line 282
    mul-int/lit8 v29, v19, 0x6

    add-int/lit8 v29, v29, 0x1

    aget-byte v29, v28, v29

    move/from16 v0, v29

    and-int/lit16 v0, v0, 0xff

    move/from16 v29, v0

    mul-int/lit8 v30, v19, 0x6

    add-int/lit8 v30, v30, 0x2

    aget-byte v30, v28, v30

    move/from16 v0, v30

    and-int/lit16 v0, v0, 0xff

    move/from16 v30, v0

    shl-int/lit8 v30, v30, 0x8

    or-int v21, v29, v30

    .line 283
    mul-int/lit8 v29, v19, 0x6

    add-int/lit8 v29, v29, 0x3

    aget-byte v29, v28, v29

    move/from16 v0, v29

    and-int/lit16 v0, v0, 0xff

    move/from16 v29, v0

    mul-int/lit8 v30, v19, 0x6

    add-int/lit8 v30, v30, 0x4

    aget-byte v30, v28, v30

    move/from16 v0, v30

    and-int/lit16 v0, v0, 0xff

    move/from16 v30, v0

    shl-int/lit8 v30, v30, 0x8

    or-int v23, v29, v30

    .line 284
    mul-int/lit8 v29, v19, 0x6

    add-int/lit8 v29, v29, 0x5

    aget-byte v22, v28, v29

    .line 285
    mul-int/lit8 v29, v19, 0x6

    add-int/lit8 v29, v29, 0x6

    aget-byte v20, v28, v29

    .line 286
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "neighbor["

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "] "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    mul-int/lit8 v30, v19, 0x6

    add-int/lit8 v30, v30, 0x1

    aget-byte v30, v28, v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    mul-int/lit8 v30, v19, 0x6

    add-int/lit8 v30, v30, 0x2

    aget-byte v30, v28, v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    mul-int/lit8 v30, v19, 0x6

    add-int/lit8 v30, v30, 0x3

    aget-byte v30, v28, v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    mul-int/lit8 v30, v19, 0x6

    add-int/lit8 v30, v30, 0x4

    aget-byte v30, v28, v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    mul-int/lit8 v30, v19, 0x6

    add-int/lit8 v30, v30, 0x5

    aget-byte v30, v28, v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    mul-int/lit8 v30, v19, 0x6

    add-int/lit8 v30, v30, 0x6

    aget-byte v30, v28, v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " CID= "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " Uarfcn= "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " Rssi= "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " BSIC= "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->log(Ljava/lang/String;)V

    .line 289
    new-instance v29, Landroid/telephony/NeighboringCell;

    move-object/from16 v0, v29

    move/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v22

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/telephony/NeighboringCell;-><init>(IIII)V

    aput-object v29, v10, v16

    .line 280
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 293
    .end local v16           #i:I
    .end local v19           #n:I
    .end local v20           #nBsic:I
    .end local v21           #nCid:I
    .end local v22           #nRssi:I
    .end local v23           #nUarfcn:I
    :cond_4
    new-instance v5, Landroid/telephony/CellsInfo;

    invoke-direct/range {v5 .. v10}, Landroid/telephony/CellsInfo;-><init>(IIII[Landroid/telephony/NeighboringCell;)V

    .line 294
    .local v5, info:Landroid/telephony/CellsInfo;
    iget-object v0, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v29, v0

    if-eqz v29, :cond_0

    .line 295
    const/16 v29, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-static {v0, v5, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 296
    invoke-virtual/range {v18 .. v18}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 304
    .end local v5           #info:Landroid/telephony/CellsInfo;
    .end local v6           #Psc:I
    .end local v7           #Uarfcn:I
    .end local v8           #Rssi:I
    .end local v9           #Bsic:I
    .end local v10           #response:[Landroid/telephony/NeighboringCell;
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v18           #m:Landroid/os/Message;
    .end local v28           #states:[B
    :pswitch_3
    const-string v29, "Received case EVENT_GET_SIGNAL_STRENGTH_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->log(Ljava/lang/String;)V

    .line 305
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 306
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, [B

    move-object/from16 v28, v29

    check-cast v28, [B

    .line 308
    .restart local v28       #states:[B
    iget-object v0, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v29, v0

    if-nez v29, :cond_5

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v29, v0

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_7

    .line 309
    :cond_5
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Get Signal Strength error or byte array length < 3"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    iget-object v0, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v29, v0

    if-eqz v29, :cond_6

    iget-object v0, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v29, v0

    :goto_3
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v29, ""

    goto :goto_3

    .line 314
    :cond_7
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/telephony/SignalStrength;

    .line 315
    .local v27, ss:Landroid/telephony/SignalStrength;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x111004c

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v29

    if-eqz v29, :cond_8

    .line 317
    invoke-static/range {v28 .. v28}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v29

    sget-object v30, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual/range {v29 .. v30}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 318
    .local v12, buf:Ljava/nio/ByteBuffer;
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v29

    mul-int/lit8 v26, v29, -0x1

    .line 319
    .local v26, sigStrength:I
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v29

    mul-int/lit8 v15, v29, -0x1

    .line 320
    .local v15, ecno_ber:I
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v25

    .line 321
    .local v25, rat:I
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Received OEM values: sigStrength="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", ecno_ber="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", rat="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->log(Ljava/lang/String;)V

    .line 323
    move-object/from16 v0, v27

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2, v15}, Landroid/telephony/SignalStrength;->setOemSignalStrength(III)V

    .line 325
    invoke-static {}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->getInstance()Lcom/motorola/android/internal/telephony/SignalLevelManager;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->setLevels(Landroid/telephony/SignalStrength;)V

    .line 346
    .end local v12           #buf:Ljava/nio/ByteBuffer;
    :goto_4
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Received OEM signal strength"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/SignalStrength;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->log(Ljava/lang/String;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->mOldss:Landroid/telephony/SignalStrength;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/telephony/SignalStrength;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_0

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySignalStrength()V

    goto/16 :goto_0

    .line 329
    .end local v15           #ecno_ber:I
    .end local v25           #rat:I
    .end local v26           #sigStrength:I
    :cond_8
    const/16 v29, 0x0

    aget-byte v25, v28, v29

    .line 330
    .restart local v25       #rat:I
    const/16 v29, 0x1

    aget-byte v26, v28, v29

    .line 331
    .restart local v26       #sigStrength:I
    const/16 v29, 0x2

    aget-byte v15, v28, v29

    .line 332
    .restart local v15       #ecno_ber:I
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Received OEM values: sigStrength="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", ecno_ber="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", rat="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->log(Ljava/lang/String;)V

    .line 335
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->mIsSteModem_bool:Z

    move/from16 v29, v0

    if-eqz v29, :cond_9

    .line 336
    add-int/lit8 v26, v26, 0x1

    .line 337
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "STE Modem, updating sigStrength="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->log(Ljava/lang/String;)V

    .line 340
    :cond_9
    move-object/from16 v0, v27

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2, v15}, Landroid/telephony/SignalStrength;->setOemSignalStrength(III)V

    .line 342
    invoke-static {}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->getInstance()Lcom/motorola/android/internal/telephony/SignalLevelManager;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->setLevels(Landroid/telephony/SignalStrength;)V

    goto/16 :goto_4

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected handlePollStateResult(ILandroid/os/AsyncResult;)V
    .locals 5
    .parameter "what"
    .parameter "ar"

    .prologue
    const/4 v4, 0x0

    .line 381
    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    .line 382
    const/4 v0, 0x0

    .line 384
    .local v0, err:Lcom/android/internal/telephony/CommandException$Error;
    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_0

    .line 385
    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 388
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_2

    .line 390
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->cancelPollState()V

    .line 420
    .end local v0           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_1
    :goto_0
    return-void

    .line 394
    .restart local v0       #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-nez v1, :cond_3

    .line 396
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->cancelPollState()V

    goto :goto_0

    .line 400
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v0, v1, :cond_4

    .line 402
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RIL implementation has returned an error where it must succeed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    .end local v0           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    aget v2, v1, v4

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v4

    .line 417
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    aget v1, v1, v4

    if-nez v1, :cond_1

    .line 418
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->pollStateDone()V

    goto :goto_0
.end method

.method protected hangupAndPowerOff()V
    .locals 0

    .prologue
    .line 520
    return-void
.end method

.method public isConcurrentVoiceAndDataAllowed()Z
    .locals 1

    .prologue
    .line 529
    const/4 v0, 0x0

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 514
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmOemServiceStateTracker] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 509
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmOemServiceStateTracker] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    return-void
.end method

.method protected setPowerStateToDesired()V
    .locals 0

    .prologue
    .line 449
    return-void
.end method

.method public switchToCdma()V
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->mIsSwitchedToCdma:Z

    if-eqz v0, :cond_0

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->mIsSwitchedToCdma:Z

    .line 209
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->dispose()V

    goto :goto_0
.end method

.method public switchToGsm()V
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->mIsSwitchedToCdma:Z

    if-nez v0, :cond_0

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->mIsSwitchedToCdma:Z

    .line 202
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->activateMe()V

    goto :goto_0
.end method

.method protected updateSpnDisplay()V
    .locals 0

    .prologue
    .line 453
    return-void
.end method
