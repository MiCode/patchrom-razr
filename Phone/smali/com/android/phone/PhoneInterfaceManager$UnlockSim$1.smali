.class Lcom/android/phone/PhoneInterfaceManager$UnlockSim$1;
.super Landroid/os/Handler;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManager$UnlockSim;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneInterfaceManager$UnlockSim;)V
    .locals 0
    .parameter

    .prologue
    .line 543
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$UnlockSim;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 546
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 547
    .local v0, ar:Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 566
    :goto_0
    return-void

    .line 549
    :pswitch_0
    const-string v1, "PhoneInterfaceManager"

    const-string v3, "SUPPLY_PIN_COMPLETE"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$UnlockSim;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getRetryLeftSimPin(Landroid/os/AsyncResult;)I

    move-result v3

    #setter for: Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->mNumRetries:I
    invoke-static {v1, v3}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->access$1502(Lcom/android/phone/PhoneInterfaceManager$UnlockSim;I)I

    .line 553
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$UnlockSim;

    monitor-enter v3

    .line 554
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$UnlockSim;

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    #setter for: Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->mResult:Z
    invoke-static {v4, v1}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->access$1602(Lcom/android/phone/PhoneInterfaceManager$UnlockSim;Z)Z

    .line 559
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$UnlockSim;

    #getter for: Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->mResult:Z
    invoke-static {v1}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->access$1600(Lcom/android/phone/PhoneInterfaceManager$UnlockSim;)Z

    move-result v1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$UnlockSim;

    const/4 v2, -0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->mNumRetries:I
    invoke-static {v1, v2}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->access$1502(Lcom/android/phone/PhoneInterfaceManager$UnlockSim;I)I

    .line 561
    :cond_0
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$UnlockSim;

    const/4 v2, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->mDone:Z
    invoke-static {v1, v2}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->access$1702(Lcom/android/phone/PhoneInterfaceManager$UnlockSim;Z)Z

    .line 562
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$UnlockSim;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 563
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 554
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 547
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
