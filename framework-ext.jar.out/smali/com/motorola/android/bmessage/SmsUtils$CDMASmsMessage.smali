.class Lcom/motorola/android/bmessage/SmsUtils$CDMASmsMessage;
.super Lcom/android/internal/telephony/cdma/SmsMessage;
.source "SmsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/bmessage/SmsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CDMASmsMessage"
.end annotation


# instance fields
.field private destinationAddress:Lcom/android/internal/telephony/SmsAddress;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/android/bmessage/SmsUtils$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/motorola/android/bmessage/SmsUtils$CDMASmsMessage;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/motorola/android/bmessage/SmsUtils$CDMASmsMessage;Lcom/android/internal/telephony/SmsAddress;)Lcom/android/internal/telephony/SmsAddress;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/motorola/android/bmessage/SmsUtils$CDMASmsMessage;->destinationAddress:Lcom/android/internal/telephony/SmsAddress;

    return-object p1
.end method


# virtual methods
.method public getDestinationAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/motorola/android/bmessage/SmsUtils$CDMASmsMessage;->destinationAddress:Lcom/android/internal/telephony/SmsAddress;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->emailFrom:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 57
    :goto_0
    return-object v0

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/android/bmessage/SmsUtils$CDMASmsMessage;->isEmail()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->emailFrom:Ljava/lang/String;

    goto :goto_0

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/motorola/android/bmessage/SmsUtils$CDMASmsMessage;->destinationAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsAddress;->getAddressString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public parseMessage()V
    .locals 0

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/motorola/android/bmessage/SmsUtils$CDMASmsMessage;->parseSms()V

    .line 65
    return-void
.end method

.method protected parseMessageBody()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsAddress;->couldBeEmailGateway()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/motorola/android/bmessage/SmsUtils$CDMASmsMessage;->destinationAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/android/bmessage/SmsUtils$CDMASmsMessage;->destinationAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsAddress;->couldBeEmailGateway()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/android/bmessage/SmsUtils$CDMASmsMessage;->extractEmailAddressFromMessageBody()V

    .line 78
    :cond_2
    return-void
.end method

.method public setEmailBody(Ljava/lang/String;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/internal/telephony/SmsMessageBase;->emailBody:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setEnvelope(Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;)V
    .locals 0
    .parameter "mEnvelope"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 62
    return-void
.end method

.method public setMessageBody(Ljava/lang/String;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    .line 71
    return-void
.end method
