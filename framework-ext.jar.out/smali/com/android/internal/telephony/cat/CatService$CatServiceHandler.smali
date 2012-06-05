.class Lcom/android/internal/telephony/cat/CatService$CatServiceHandler;
.super Landroid/os/Handler;
.source "CatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/CatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CatServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cat/CatService;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cat/CatService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 556
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService$CatServiceHandler;->this$0:Lcom/android/internal/telephony/cat/CatService;

    .line 557
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 558
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 562
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled message with number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 612
    :cond_0
    :goto_0
    return-void

    .line 564
    :pswitch_0
    sget-object v7, Lcom/android/internal/telephony/cat/SetUpEvent;->IDLE_SCREEN_AVAIL:Lcom/android/internal/telephony/cat/SetUpEvent;

    .line 565
    .local v7, e:Lcom/android/internal/telephony/cat/SetUpEvent;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$CatServiceHandler;->this$0:Lcom/android/internal/telephony/cat/CatService;

    #getter for: Lcom/android/internal/telephony/cat/CatService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->access$100(Lcom/android/internal/telephony/cat/CatService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 567
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$CatServiceHandler;->this$0:Lcom/android/internal/telephony/cat/CatService;

    #getter for: Lcom/android/internal/telephony/cat/CatService;->m_eventList:[Z
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->access$200(Lcom/android/internal/telephony/cat/CatService;)[Z

    move-result-object v0

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/SetUpEvent;->value()I

    move-result v1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    .line 568
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$CatServiceHandler;->this$0:Lcom/android/internal/telephony/cat/CatService;

    #calls: Lcom/android/internal/telephony/cat/CatService;->isIdleScreenOnTop()Z
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->access$500(Lcom/android/internal/telephony/cat/CatService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 569
    const-string v0, "screen has been already idle, sent to sim"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$CatServiceHandler;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/SetUpEvent;->value()I

    move-result v1

    const/4 v2, 0x2

    const/16 v3, 0x81

    const/4 v4, 0x0

    const/4 v5, 0x1

    #calls: Lcom/android/internal/telephony/cat/CatService;->eventDownload(III[BZ)V
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->access$300(Lcom/android/internal/telephony/cat/CatService;III[BZ)V

    .line 574
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$CatServiceHandler;->this$0:Lcom/android/internal/telephony/cat/CatService;

    #getter for: Lcom/android/internal/telephony/cat/CatService;->m_eventList:[Z
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->access$200(Lcom/android/internal/telephony/cat/CatService;)[Z

    move-result-object v0

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/SetUpEvent;->value()I

    move-result v1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 582
    :cond_1
    :goto_1
    monitor-exit v10

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 577
    :cond_2
    :try_start_1
    new-instance v9, Landroid/content/Intent;

    const-string v0, "android.intent.action.stk.req_idle_screen_status"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 578
    .local v9, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$CatServiceHandler;->this$0:Lcom/android/internal/telephony/cat/CatService;

    #getter for: Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->access$600(Lcom/android/internal/telephony/cat/CatService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 585
    .end local v7           #e:Lcom/android/internal/telephony/cat/SetUpEvent;
    .end local v9           #intent:Landroid/content/Intent;
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$CatServiceHandler;->this$0:Lcom/android/internal/telephony/cat/CatService;

    #getter for: Lcom/android/internal/telephony/cat/CatService;->mAm:Landroid/app/IActivityManager;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->access$700(Lcom/android/internal/telephony/cat/CatService;)Landroid/app/IActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 587
    :try_start_2
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$CatServiceHandler;->this$0:Lcom/android/internal/telephony/cat/CatService;

    #getter for: Lcom/android/internal/telephony/cat/CatService;->mAm:Landroid/app/IActivityManager;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->access$700(Lcom/android/internal/telephony/cat/CatService;)Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    .line 588
    .local v6, config:Landroid/content/res/Configuration;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$CatServiceHandler;->this$0:Lcom/android/internal/telephony/cat/CatService;

    iget-object v1, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/internal/telephony/cat/CatService;->mLang:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatService;->access$802(Lcom/android/internal/telephony/cat/CatService;Ljava/lang/String;)Ljava/lang/String;

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "the current locale is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 590
    .end local v6           #config:Landroid/content/res/Configuration;
    :catch_0
    move-exception v8

    .line 592
    .local v8, ex:Landroid/os/RemoteException;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$CatServiceHandler;->this$0:Lcom/android/internal/telephony/cat/CatService;

    const-string v1, "en"

    #setter for: Lcom/android/internal/telephony/cat/CatService;->mLang:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatService;->access$802(Lcom/android/internal/telephony/cat/CatService;Ljava/lang/String;)Ljava/lang/String;

    .line 593
    const-string v0, "query am failed, set language as en"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 598
    .end local v8           #ex:Landroid/os/RemoteException;
    :pswitch_2
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService$CatServiceHandler;->this$0:Lcom/android/internal/telephony/cat/CatService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v0, :cond_3

    :goto_2
    #calls: Lcom/android/internal/telephony/cat/CatService;->onScreenModeChange(Z)V
    invoke-static {v2, v0}, Lcom/android/internal/telephony/cat/CatService;->access$900(Lcom/android/internal/telephony/cat/CatService;Z)V

    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto :goto_2

    .line 604
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$CatServiceHandler;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatService;->updateIccAvailability()V

    goto/16 :goto_0

    .line 562
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
