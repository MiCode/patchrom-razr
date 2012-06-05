.class Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation$1;
.super Landroid/os/Handler;
.source "IccCardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation$1;->this$1:Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 125
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 158
    :pswitch_0
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation$1;->this$1:Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;

    iget-object v3, v3, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->this$0:Lcom/motorola/android/internal/telephony/IccCardManager;

    #getter for: Lcom/motorola/android/internal/telephony/IccCardManager;->mLogTag:Ljava/lang/String;
    invoke-static {v3}, Lcom/motorola/android/internal/telephony/IccCardManager;->access$000(Lcom/motorola/android/internal/telephony/IccCardManager;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Unknown Event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 130
    :pswitch_1
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation$1;->this$1:Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;

    iget-object v3, v3, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->this$0:Lcom/motorola/android/internal/telephony/IccCardManager;

    #getter for: Lcom/motorola/android/internal/telephony/IccCardManager;->mLogTag:Ljava/lang/String;
    invoke-static {v3}, Lcom/motorola/android/internal/telephony/IccCardManager;->access$000(Lcom/motorola/android/internal/telephony/IccCardManager;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Received EVENT_ICC_STATUS_CHANGED, calling getIccCardStatus"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation$1;->this$1:Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;

    #getter for: Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->access$100(Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    const/4 v4, 0x3

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v4, v5}, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation$1;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto :goto_0

    .line 135
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 137
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation$1;->this$1:Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;

    #calls: Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->onGetIccCardStatusDone(Landroid/os/AsyncResult;)V
    invoke-static {v3, v0}, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->access$200(Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;Landroid/os/AsyncResult;)V

    .line 141
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v3, v3, Landroid/os/AsyncResult;

    if-eqz v3, :cond_2

    .line 142
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 143
    .local v1, internalAr:Landroid/os/AsyncResult;
    iget-object v3, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_1

    iget-object v3, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v3, v3, Landroid/os/Message;

    if-eqz v3, :cond_1

    .line 145
    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    .line 146
    .local v2, onComplete:Landroid/os/Message;
    if-eqz v2, :cond_1

    .line 147
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 150
    .end local v2           #onComplete:Landroid/os/Message;
    :cond_1
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation$1;->this$1:Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;

    iget-object v3, v3, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->this$0:Lcom/motorola/android/internal/telephony/IccCardManager;

    #getter for: Lcom/motorola/android/internal/telephony/IccCardManager;->mLogTag:Ljava/lang/String;
    invoke-static {v3}, Lcom/motorola/android/internal/telephony/IccCardManager;->access$000(Lcom/motorola/android/internal/telephony/IccCardManager;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "EVENT_GET_ICC_STATUS_DONE, oncomplete(ar) send back"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 151
    .end local v1           #internalAr:Landroid/os/AsyncResult;
    :cond_2
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v3, v3, Landroid/os/Message;

    if-eqz v3, :cond_0

    .line 152
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    .line 153
    .restart local v2       #onComplete:Landroid/os/Message;
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation$1;->this$1:Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;

    iget-object v3, v3, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->this$0:Lcom/motorola/android/internal/telephony/IccCardManager;

    #getter for: Lcom/motorola/android/internal/telephony/IccCardManager;->mLogTag:Ljava/lang/String;
    invoke-static {v3}, Lcom/motorola/android/internal/telephony/IccCardManager;->access$000(Lcom/motorola/android/internal/telephony/IccCardManager;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "EVENT_GET_ICC_STATUS_DONE, oncomplete send back"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
