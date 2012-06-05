.class Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$MyHandler;
.super Landroid/os/Handler;
.source "IccPhoneBookInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$MyHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    .line 80
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 81
    return-void
.end method

.method private notifyPending(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    .line 187
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 193
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 191
    .local v0, status:Ljava/util/concurrent/atomic/AtomicBoolean;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 192
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$MyHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v1, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 88
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 184
    :goto_0
    return-void

    .line 90
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 91
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$MyHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v3, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 92
    :try_start_0
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 93
    iget-object v5, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$MyHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    iput-object v3, v5, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordSize:[I

    .line 97
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$MyHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GET_RECORD_SIZE Size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$MyHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v6, v6, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordSize:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " total "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$MyHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v6, v6, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordSize:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " #record "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$MyHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v6, v6, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordSize:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 101
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$MyHandler;->notifyPending(Landroid/os/AsyncResult;)V

    .line 102
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 105
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 106
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v5, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$MyHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v5, v5, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 107
    :try_start_1
    iget-object v6, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$MyHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_2

    :goto_1
    iput-boolean v3, v6, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->success:Z

    .line 111
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$MyHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-boolean v3, v3, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->success:Z

    if-nez v3, :cond_1

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_1

    .line 113
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    .line 114
    .local v2, ex:Lcom/android/internal/telephony/CommandException;
    if-eqz v2, :cond_1

    .line 115
    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    .line 116
    .local v1, e:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v3, :cond_3

    .line 120
    const-string v3, "gsm.mot.sim.update.error"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .end local v1           #e:Lcom/android/internal/telephony/CommandException$Error;
    .end local v2           #ex:Lcom/android/internal/telephony/CommandException;
    :cond_1
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$MyHandler;->notifyPending(Landroid/os/AsyncResult;)V

    .line 134
    monitor-exit v5

    goto/16 :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3

    :cond_2
    move v3, v4

    .line 107
    goto :goto_1

    .line 121
    .restart local v1       #e:Lcom/android/internal/telephony/CommandException$Error;
    .restart local v2       #ex:Lcom/android/internal/telephony/CommandException;
    :cond_3
    :try_start_2
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v3, :cond_4

    .line 122
    const-string v3, "gsm.mot.sim.update.error"

    const-string v4, "2"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 124
    :cond_4
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "update EF adn record failed"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 126
    const-string v3, "gsm.mot.sim.update.error"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 137
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #e:Lcom/android/internal/telephony/CommandException$Error;
    .end local v2           #ex:Lcom/android/internal/telephony/CommandException;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 138
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$MyHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v3, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 139
    :try_start_3
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_6

    .line 140
    iget-object v5, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$MyHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    iput-object v3, v5, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->records:Ljava/util/List;

    .line 147
    :cond_5
    :goto_3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$MyHandler;->notifyPending(Landroid/os/AsyncResult;)V

    .line 148
    monitor-exit v4

    goto/16 :goto_0

    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v3

    .line 142
    :cond_6
    :try_start_4
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$MyHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    const-string v5, "Cannot load ADN records"

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 143
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$MyHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v3, v3, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->records:Ljava/util/List;

    if-eqz v3, :cond_5

    .line 144
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$MyHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v3, v3, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->records:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    .line 154
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 155
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$MyHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v3, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mFdnReadLock:Ljava/lang/Object;

    monitor-enter v4

    .line 156
    :try_start_5
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_8

    .line 157
    iget-object v5, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$MyHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    iput-object v3, v5, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mFdnRecords:Ljava/util/List;

    .line 164
    :cond_7
    :goto_4
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$MyHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v3, v3, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mFdnReadLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 165
    monitor-exit v4

    goto/16 :goto_0

    :catchall_3
    move-exception v3

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v3

    .line 159
    :cond_8
    :try_start_6
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$MyHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    const-string v5, "Cannot load FDN records"

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 160
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$MyHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v3, v3, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mFdnRecords:Ljava/util/List;

    if-eqz v3, :cond_7

    .line 161
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$MyHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v3, v3, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mFdnRecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_4

    .line 168
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 169
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$MyHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v3, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSdnReadLock:Ljava/lang/Object;

    monitor-enter v4

    .line 170
    :try_start_7
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_a

    .line 171
    iget-object v5, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$MyHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    iput-object v3, v5, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSdnRecords:Ljava/util/List;

    .line 178
    :cond_9
    :goto_5
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$MyHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v3, v3, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSdnReadLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 179
    monitor-exit v4

    goto/16 :goto_0

    :catchall_4
    move-exception v3

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v3

    .line 173
    :cond_a
    :try_start_8
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$MyHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    const-string v5, "Cannot load SDN records"

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 174
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$MyHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v3, v3, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSdnRecords:Ljava/util/List;

    if-eqz v3, :cond_9

    .line 175
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$MyHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v3, v3, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSdnRecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_5

    .line 88
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
