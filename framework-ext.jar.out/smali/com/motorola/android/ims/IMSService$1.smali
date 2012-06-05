.class Lcom/motorola/android/ims/IMSService$1;
.super Landroid/os/Handler;
.source "IMSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/ims/IMSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/ims/IMSService;


# direct methods
.method constructor <init>(Lcom/motorola/android/ims/IMSService;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/motorola/android/ims/IMSService$1;->this$0:Lcom/motorola/android/ims/IMSService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 105
    const-string v1, "IMSService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "on handleMessage with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " event"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 158
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 109
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 110
    .local v0, result:Z
    const-string v1, "IMSService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current service state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/android/ims/IMSService$1;->this$0:Lcom/motorola/android/ims/IMSService;

    iget v3, v3, Lcom/motorola/android/ims/IMSService;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " The connection state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    if-ne v4, v0, :cond_1

    .line 113
    iget-object v1, p0, Lcom/motorola/android/ims/IMSService$1;->this$0:Lcom/motorola/android/ims/IMSService;

    iget v1, v1, Lcom/motorola/android/ims/IMSService;->mState:I

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 120
    :pswitch_2
    iget-object v1, p0, Lcom/motorola/android/ims/IMSService$1;->this$0:Lcom/motorola/android/ims/IMSService;

    const/4 v2, 0x2

    iput v2, v1, Lcom/motorola/android/ims/IMSService;->mState:I

    .line 124
    iget-object v1, p0, Lcom/motorola/android/ims/IMSService$1;->this$0:Lcom/motorola/android/ims/IMSService;

    invoke-virtual {v1}, Lcom/motorola/android/ims/IMSService;->addCallBack()V

    .line 125
    iget-object v1, p0, Lcom/motorola/android/ims/IMSService$1;->this$0:Lcom/motorola/android/ims/IMSService;

    iget-object v1, v1, Lcom/motorola/android/ims/IMSService;->mServiceListener:Lcom/motorola/android/ims/IMSServiceListener;

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/motorola/android/ims/IMSService$1;->this$0:Lcom/motorola/android/ims/IMSService;

    iget-object v1, v1, Lcom/motorola/android/ims/IMSService;->mServiceListener:Lcom/motorola/android/ims/IMSServiceListener;

    iget-object v2, p0, Lcom/motorola/android/ims/IMSService$1;->this$0:Lcom/motorola/android/ims/IMSService;

    iget-object v2, v2, Lcom/motorola/android/ims/IMSService;->mService:Lcom/motorola/android/ims/IMSService;

    invoke-virtual {v1, v2, v4}, Lcom/motorola/android/ims/IMSServiceListener;->processServiceOpen(Lcom/motorola/android/ims/IMSService;Z)V

    goto :goto_0

    .line 131
    :pswitch_3
    iget-object v1, p0, Lcom/motorola/android/ims/IMSService$1;->this$0:Lcom/motorola/android/ims/IMSService;

    #calls: Lcom/motorola/android/ims/IMSService;->selfClose()V
    invoke-static {v1}, Lcom/motorola/android/ims/IMSService;->access$000(Lcom/motorola/android/ims/IMSService;)V

    goto :goto_0

    .line 137
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/ims/IMSService$1;->this$0:Lcom/motorola/android/ims/IMSService;

    iget v1, v1, Lcom/motorola/android/ims/IMSService;->mState:I

    packed-switch v1, :pswitch_data_2

    goto :goto_0

    .line 143
    :pswitch_4
    iget-object v1, p0, Lcom/motorola/android/ims/IMSService$1;->this$0:Lcom/motorola/android/ims/IMSService;

    const/4 v2, 0x4

    iput v2, v1, Lcom/motorola/android/ims/IMSService;->mState:I

    .line 144
    iget-object v1, p0, Lcom/motorola/android/ims/IMSService$1;->this$0:Lcom/motorola/android/ims/IMSService;

    iget-object v1, v1, Lcom/motorola/android/ims/IMSService;->mServiceListener:Lcom/motorola/android/ims/IMSServiceListener;

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/motorola/android/ims/IMSService$1;->this$0:Lcom/motorola/android/ims/IMSService;

    iget-object v1, v1, Lcom/motorola/android/ims/IMSService;->mServiceListener:Lcom/motorola/android/ims/IMSServiceListener;

    iget-object v2, p0, Lcom/motorola/android/ims/IMSService$1;->this$0:Lcom/motorola/android/ims/IMSService;

    iget-object v2, v2, Lcom/motorola/android/ims/IMSService;->mService:Lcom/motorola/android/ims/IMSService;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/motorola/android/ims/IMSServiceListener;->processServiceOpen(Lcom/motorola/android/ims/IMSService;Z)V

    goto :goto_0

    .line 151
    :pswitch_5
    iget-object v1, p0, Lcom/motorola/android/ims/IMSService$1;->this$0:Lcom/motorola/android/ims/IMSService;

    #calls: Lcom/motorola/android/ims/IMSService;->selfClose()V
    invoke-static {v1}, Lcom/motorola/android/ims/IMSService;->access$000(Lcom/motorola/android/ims/IMSService;)V

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch

    .line 113
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 137
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method
