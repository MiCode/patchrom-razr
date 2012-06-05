.class public Landroid/telephony/SmsMessage$CommandPdu;
.super Lcom/android/internal/telephony/SmsMessageBase$CommandPduBase;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SmsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommandPdu"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase$CommandPduBase;-><init>()V

    .line 165
    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/SmsMessageBase$CommandPduBase;)V
    .locals 1
    .parameter "cpb"

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase$CommandPduBase;-><init>()V

    .line 169
    iget-object v0, p1, Lcom/android/internal/telephony/SmsMessageBase$CommandPduBase;->encodedCommand:[B

    iput-object v0, p0, Landroid/telephony/SmsMessage$CommandPdu;->encodedCommand:[B

    .line 170
    iget-object v0, p1, Lcom/android/internal/telephony/SmsMessageBase$CommandPduBase;->encodedScAddress:[B

    iput-object v0, p0, Landroid/telephony/SmsMessage$CommandPdu;->encodedScAddress:[B

    .line 171
    return-void
.end method
