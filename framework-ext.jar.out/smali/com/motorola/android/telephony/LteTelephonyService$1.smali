.class Lcom/motorola/android/telephony/LteTelephonyService$1;
.super Landroid/os/Handler;
.source "LteTelephonyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/LteTelephonyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/telephony/LteTelephonyService;


# direct methods
.method constructor <init>(Lcom/motorola/android/telephony/LteTelephonyService;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/motorola/android/telephony/LteTelephonyService$1;->this$0:Lcom/motorola/android/telephony/LteTelephonyService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 114
    const-string v1, "LteTelephonyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 116
    .local v0, ar:Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 131
    :goto_0
    return-void

    .line 118
    :pswitch_0
    iget-object v1, p0, Lcom/motorola/android/telephony/LteTelephonyService$1;->this$0:Lcom/motorola/android/telephony/LteTelephonyService;

    iget-object v2, v1, Lcom/motorola/android/telephony/LteTelephonyService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 119
    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/motorola/android/telephony/LteTelephonyService$1;->this$0:Lcom/motorola/android/telephony/LteTelephonyService;

    const/4 v3, 0x1

    #setter for: Lcom/motorola/android/telephony/LteTelephonyService;->mSendDeactCauseDone:Z
    invoke-static {v1, v3}, Lcom/motorola/android/telephony/LteTelephonyService;->access$002(Lcom/motorola/android/telephony/LteTelephonyService;Z)Z

    .line 125
    :goto_1
    iget-object v1, p0, Lcom/motorola/android/telephony/LteTelephonyService$1;->this$0:Lcom/motorola/android/telephony/LteTelephonyService;

    iget-object v1, v1, Lcom/motorola/android/telephony/LteTelephonyService;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 126
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 122
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/motorola/android/telephony/LteTelephonyService$1;->this$0:Lcom/motorola/android/telephony/LteTelephonyService;

    const/4 v3, 0x0

    #setter for: Lcom/motorola/android/telephony/LteTelephonyService;->mSendDeactCauseDone:Z
    invoke-static {v1, v3}, Lcom/motorola/android/telephony/LteTelephonyService;->access$002(Lcom/motorola/android/telephony/LteTelephonyService;Z)Z

    .line 123
    const-string v1, "LteTelephonyService"

    const-string v3, "failed to set IMS REG failure cause"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
