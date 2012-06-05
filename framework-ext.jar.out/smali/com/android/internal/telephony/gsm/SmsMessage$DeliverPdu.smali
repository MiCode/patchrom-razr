.class public Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
.super Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SmsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeliverPdu"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2218
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;-><init>()V

    return-void
.end method


# virtual methods
.method toByteArray()[B
    .locals 2

    .prologue
    .line 2226
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;->encodedScAddress:[B

    iget-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;->encodedMessage:[B

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->concatByteArray([B[B)[B

    move-result-object v0

    return-object v0
.end method
