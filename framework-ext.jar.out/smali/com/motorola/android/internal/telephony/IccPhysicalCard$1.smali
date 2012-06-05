.class Lcom/motorola/android/internal/telephony/IccPhysicalCard$1;
.super Landroid/os/Handler;
.source "IccPhysicalCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/IccPhysicalCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/internal/telephony/IccPhysicalCard;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/telephony/IccPhysicalCard;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard$1;->this$0:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 181
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 189
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard$1;->this$0:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    #getter for: Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mLogTag:Ljava/lang/String;
    invoke-static {v0}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->access$100(Lcom/motorola/android/internal/telephony/IccPhysicalCard;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccCard] Unknown Event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :goto_0
    return-void

    .line 183
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard$1;->this$0:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    const/4 v1, 0x0

    #calls: Lcom/motorola/android/internal/telephony/IccPhysicalCard;->onIccSwap(Z)V
    invoke-static {v0, v1}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->access$000(Lcom/motorola/android/internal/telephony/IccPhysicalCard;Z)V

    goto :goto_0

    .line 186
    :pswitch_1
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard$1;->this$0:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    const/4 v1, 0x1

    #calls: Lcom/motorola/android/internal/telephony/IccPhysicalCard;->onIccSwap(Z)V
    invoke-static {v0, v1}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->access$000(Lcom/motorola/android/internal/telephony/IccPhysicalCard;Z)V

    goto :goto_0

    .line 181
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
