.class Lcom/android/internal/telephony/cat/CatService$1;
.super Landroid/content/BroadcastReceiver;
.source "CatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/CatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cat/CatService;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CatService;)V
    .locals 0
    .parameter

    .prologue
    .line 402
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService$1;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnReceiver is runnig in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 406
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 407
    .local v6, action:Ljava/lang/String;
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$1;->this$0:Lcom/android/internal/telephony/cat/CatService;

    #calls: Lcom/android/internal/telephony/cat/CatService;->onConfigurationChanged()V
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->access$000(Lcom/android/internal/telephony/cat/CatService;)V

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    const-string v0, "android.intent.action.stk.user_activity"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    const-string v0, "Receives user activity notification"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 414
    const-string v0, "gsm.stk.event.useractivity"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string v0, "Clean up system property for useractivity"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 416
    sget-object v7, Lcom/android/internal/telephony/cat/SetUpEvent;->USER_ACTIVITY:Lcom/android/internal/telephony/cat/SetUpEvent;

    .line 417
    .local v7, e:Lcom/android/internal/telephony/cat/SetUpEvent;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$1;->this$0:Lcom/android/internal/telephony/cat/CatService;

    #getter for: Lcom/android/internal/telephony/cat/CatService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->access$100(Lcom/android/internal/telephony/cat/CatService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 418
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$1;->this$0:Lcom/android/internal/telephony/cat/CatService;

    #getter for: Lcom/android/internal/telephony/cat/CatService;->m_eventList:[Z
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->access$200(Lcom/android/internal/telephony/cat/CatService;)[Z

    move-result-object v0

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/SetUpEvent;->value()I

    move-result v1

    aget-boolean v0, v0, v1

    if-ne v0, v2, :cond_2

    .line 419
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$1;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/SetUpEvent;->value()I

    move-result v1

    const/16 v2, 0x82

    const/16 v3, 0x81

    const/4 v4, 0x0

    const/4 v5, 0x1

    #calls: Lcom/android/internal/telephony/cat/CatService;->eventDownload(III[BZ)V
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->access$300(Lcom/android/internal/telephony/cat/CatService;III[BZ)V

    .line 420
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$1;->this$0:Lcom/android/internal/telephony/cat/CatService;

    #getter for: Lcom/android/internal/telephony/cat/CatService;->m_eventList:[Z
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->access$200(Lcom/android/internal/telephony/cat/CatService;)[Z

    move-result-object v0

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/SetUpEvent;->value()I

    move-result v1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 421
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$1;->this$0:Lcom/android/internal/telephony/cat/CatService;

    #calls: Lcom/android/internal/telephony/cat/CatService;->resetBroadcastReceiver()V
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->access$400(Lcom/android/internal/telephony/cat/CatService;)V

    .line 422
    const-string v0, "Cleanup user activity notification receiver"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 424
    :cond_2
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
