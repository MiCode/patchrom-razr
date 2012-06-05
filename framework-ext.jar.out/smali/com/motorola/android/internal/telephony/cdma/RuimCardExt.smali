.class public Lcom/motorola/android/internal/telephony/cdma/RuimCardExt;
.super Ljava/lang/Object;
.source "RuimCardExt.java"

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
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/motorola/android/internal/telephony/cdma/RuimCardExt$1;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/telephony/cdma/RuimCardExt$1;-><init>(Lcom/motorola/android/internal/telephony/cdma/RuimCardExt;)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/cdma/RuimCardExt;->myHandler:Landroid/os/Handler;

    .line 34
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/cdma/RuimCardExt;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 35
    iput-object p2, p0, Lcom/motorola/android/internal/telephony/cdma/RuimCardExt;->mLogTag:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V
    .locals 1
    .parameter "phone"
    .parameter "logTag"

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/motorola/android/internal/telephony/cdma/RuimCardExt$1;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/telephony/cdma/RuimCardExt$1;-><init>(Lcom/motorola/android/internal/telephony/cdma/RuimCardExt;)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/cdma/RuimCardExt;->myHandler:Landroid/os/Handler;

    .line 29
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/cdma/RuimCardExt;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 30
    iput-object p2, p0, Lcom/motorola/android/internal/telephony/cdma/RuimCardExt;->mLogTag:Ljava/lang/String;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/android/internal/telephony/cdma/RuimCardExt;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/cdma/RuimCardExt;->mLogTag:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getIccLockRetryAttemps(ILandroid/os/Message;)V
    .locals 5
    .parameter "type"
    .parameter "result"

    .prologue
    .line 40
    const/4 v2, -0x1

    if-le p1, v2, :cond_0

    const/4 v2, 0x6

    if-lt p1, v2, :cond_1

    .line 41
    :cond_0
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/CommandException;

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    iput-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 43
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 45
    :cond_1
    const/16 v2, 0x8

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 46
    .local v0, buf:Ljava/nio/ByteBuffer;
    const v2, 0x20a0005

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 47
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 50
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/cdma/RuimCardExt;->myHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 51
    .local v1, callback:Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 53
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/cdma/RuimCardExt;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v2, :cond_3

    .line 54
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/cdma/RuimCardExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 58
    :cond_2
    :goto_0
    return-void

    .line 55
    :cond_3
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/cdma/RuimCardExt;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v2, :cond_2

    .line 56
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/cdma/RuimCardExt;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_0
.end method
