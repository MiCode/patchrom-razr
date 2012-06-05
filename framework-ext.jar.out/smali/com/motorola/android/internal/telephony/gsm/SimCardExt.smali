.class public Lcom/motorola/android/internal/telephony/gsm/SimCardExt;
.super Ljava/lang/Object;
.source "SimCardExt.java"

# interfaces
.implements Lcom/motorola/android/internal/telephony/IccCardExt;


# static fields
.field private static final EVENT_GET_ICCLOCK_RETRY_DONE:I = 0x1


# instance fields
.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mLogTag:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private myHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/CommandsInterface;Ljava/lang/String;)V
    .locals 1
    .parameter "ci"
    .parameter "logTag"

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/motorola/android/internal/telephony/gsm/SimCardExt$1;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/telephony/gsm/SimCardExt$1;-><init>(Lcom/motorola/android/internal/telephony/gsm/SimCardExt;)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/gsm/SimCardExt;->myHandler:Landroid/os/Handler;

    .line 33
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/gsm/SimCardExt;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 34
    iput-object p2, p0, Lcom/motorola/android/internal/telephony/gsm/SimCardExt;->mLogTag:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V
    .locals 1
    .parameter "phone"
    .parameter "logTag"

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/motorola/android/internal/telephony/gsm/SimCardExt$1;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/telephony/gsm/SimCardExt$1;-><init>(Lcom/motorola/android/internal/telephony/gsm/SimCardExt;)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/gsm/SimCardExt;->myHandler:Landroid/os/Handler;

    .line 28
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/gsm/SimCardExt;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 29
    iput-object p2, p0, Lcom/motorola/android/internal/telephony/gsm/SimCardExt;->mLogTag:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public getIccLockRetryAttemps(ILandroid/os/Message;)V
    .locals 6
    .parameter "type"
    .parameter "result"

    .prologue
    const/4 v4, 0x1

    .line 38
    const/4 v2, 0x1

    .line 39
    .local v2, valid_req:Z
    const/16 v3, 0x9

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 40
    .local v0, buf:Ljava/nio/ByteBuffer;
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 41
    const v3, 0x10a0005

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 42
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 43
    packed-switch p1, :pswitch_data_0

    .line 51
    :pswitch_0
    const/4 v2, 0x0

    .line 55
    :goto_0
    if-eqz v2, :cond_2

    .line 56
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/gsm/SimCardExt;->myHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 57
    .local v1, callback:Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 58
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/gsm/SimCardExt;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_1

    .line 59
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/gsm/SimCardExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 68
    .end local v1           #callback:Landroid/os/Message;
    :cond_0
    :goto_1
    return-void

    .line 45
    :pswitch_1
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 48
    :pswitch_2
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 60
    .restart local v1       #callback:Landroid/os/Message;
    :cond_1
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/gsm/SimCardExt;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v3, :cond_0

    .line 61
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/gsm/SimCardExt;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_1

    .line 64
    .end local v1           #callback:Landroid/os/Message;
    :cond_2
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    new-instance v4, Lcom/android/internal/telephony/CommandException;

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    iput-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 66
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
