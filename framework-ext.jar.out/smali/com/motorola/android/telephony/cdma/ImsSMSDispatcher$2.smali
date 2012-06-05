.class Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$2;
.super Lcom/motorola/android/ims/service/smsonims/PageMessageListener;
.source "ImsSMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->handleMessageEventEnvelopResponse(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;


# direct methods
.method constructor <init>(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;)V
    .locals 0
    .parameter

    .prologue
    .line 1047
    iput-object p1, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$2;->this$0:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    invoke-direct {p0}, Lcom/motorola/android/ims/service/smsonims/PageMessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessageResponse(I)V
    .locals 3
    .parameter "response"

    .prologue
    .line 1050
    const-string v0, "ImsSMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "page message reponse:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    return-void
.end method
