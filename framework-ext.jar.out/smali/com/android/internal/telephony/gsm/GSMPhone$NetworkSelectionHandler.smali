.class Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectionHandler;
.super Landroid/os/Handler;
.source "GSMPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GSMPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkSelectionHandler"
.end annotation


# static fields
.field static final EVENT_GET_NETWORK_SELECTION_MODE_DONE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GSMPhone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 0
    .parameter

    .prologue
    .line 2467
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectionHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 2471
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 2506
    :cond_0
    :goto_0
    return-void

    .line 2473
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2474
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    .line 2475
    .local v4, response:Landroid/os/Message;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_5

    .line 2476
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    move-object v1, v5

    check-cast v1, [I

    .line 2477
    .local v1, ints:[I
    aget v5, v1, v6

    if-ne v5, v2, :cond_1

    .line 2480
    .local v2, manual:Z
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectionHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    #calls: Lcom/android/internal/telephony/gsm/GSMPhone;->getSavedNetworkSelection()Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->access$200(Lcom/android/internal/telephony/gsm/GSMPhone;)Ljava/lang/String;

    move-result-object v3

    .line 2481
    .local v3, networkSelection:Ljava/lang/String;
    const-string v6, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "current network selection mode is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v2, :cond_2

    const-string v5, "manual"

    :goto_2
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "; networkSelection is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2485
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2486
    if-eqz v2, :cond_0

    .line 2487
    const-string v5, "GSM"

    const-string v6, "set to automatic mode"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2488
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectionHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, v4}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    goto :goto_0

    .end local v2           #manual:Z
    .end local v3           #networkSelection:Ljava/lang/String;
    :cond_1
    move v2, v6

    .line 2477
    goto :goto_1

    .line 2481
    .restart local v2       #manual:Z
    .restart local v3       #networkSelection:Ljava/lang/String;
    :cond_2
    const-string v5, "auto"

    goto :goto_2

    .line 2491
    :cond_3
    if-nez v2, :cond_4

    .line 2492
    const-string v5, "GSM"

    const-string v6, "set to manual mode"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2493
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectionHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 2497
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectionHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    #calls: Lcom/android/internal/telephony/PhoneBase;->restoreSavedNetworkSelection(Landroid/os/Message;)V
    invoke-static {v5, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->access$301(Lcom/android/internal/telephony/gsm/GSMPhone;Landroid/os/Message;)V

    goto :goto_0

    .line 2502
    .end local v1           #ints:[I
    .end local v2           #manual:Z
    .end local v3           #networkSelection:Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectionHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    #calls: Lcom/android/internal/telephony/PhoneBase;->restoreSavedNetworkSelection(Landroid/os/Message;)V
    invoke-static {v5, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->access$401(Lcom/android/internal/telephony/gsm/GSMPhone;Landroid/os/Message;)V

    goto :goto_0

    .line 2471
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
