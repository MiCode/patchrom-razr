.class Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$Retry;
.super Ljava/lang/Object;
.source "ImsSMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Retry"
.end annotation


# instance fields
.field public mChannel:I

.field public mDelay:I

.field public mPrompt:Z

.field final synthetic this$0:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;


# direct methods
.method constructor <init>(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;IIZ)V
    .locals 0
    .parameter
    .parameter "c"
    .parameter "d"
    .parameter "p"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$Retry;->this$0:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput p2, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$Retry;->mChannel:I

    .line 141
    iput p3, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$Retry;->mDelay:I

    .line 142
    iput-boolean p4, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$Retry;->mPrompt:Z

    .line 143
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retry { Channel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$Retry;->mChannel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", delay = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$Retry;->mDelay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", prompt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$Retry;->mPrompt:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, ret:Ljava/lang/String;
    return-object v0
.end method
