.class Lcom/motorola/android/os/DeepSleepMediaManager$MyHandler;
.super Landroid/os/Handler;
.source "DeepSleepMediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/os/DeepSleepMediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/android/os/DeepSleepMediaManager$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/motorola/android/os/DeepSleepMediaManager$MyHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, woof:Lcom/motorola/android/os/DeepSleepMediaManager$Woof;
    invoke-static {}, Lcom/motorola/android/os/DeepSleepMediaManager;->access$000()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 53
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/motorola/android/os/DeepSleepMediaManager$Woof;->getInstance(I)Lcom/motorola/android/os/DeepSleepMediaManager$Woof;

    move-result-object v0

    .line 54
    invoke-static {}, Lcom/motorola/android/os/DeepSleepMediaManager;->access$000()Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 56
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 67
    :goto_0
    invoke-static {}, Lcom/motorola/android/os/DeepSleepMediaManager;->access$000()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 68
    invoke-static {}, Lcom/motorola/android/os/DeepSleepMediaManager;->access$000()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 70
    :cond_1
    return-void

    .line 58
    :pswitch_0
    #calls: Lcom/motorola/android/os/DeepSleepMediaManager;->cmdReceiverWorker()V
    invoke-static {}, Lcom/motorola/android/os/DeepSleepMediaManager;->access$100()V

    goto :goto_0

    .line 61
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/ref/WeakReference;

    #calls: Lcom/motorola/android/os/DeepSleepMediaManager;->registerReceiverWorker(Ljava/lang/ref/WeakReference;)V
    invoke-static {v1}, Lcom/motorola/android/os/DeepSleepMediaManager;->access$200(Ljava/lang/ref/WeakReference;)V

    goto :goto_0

    .line 64
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/ref/WeakReference;

    #calls: Lcom/motorola/android/os/DeepSleepMediaManager;->unregisterReceiverWorker(Ljava/lang/ref/WeakReference;)V
    invoke-static {v1}, Lcom/motorola/android/os/DeepSleepMediaManager;->access$300(Ljava/lang/ref/WeakReference;)V

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
