.class public Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate$KddiSmsDuplicateInfo;
.super Ljava/lang/Object;
.source "KddiSmsDuplicate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "KddiSmsDuplicateInfo"
.end annotation


# instance fields
.field public mMessageBody:[B

.field public mMessageBodyLength:I

.field public mMessageID:I

.field public mSendAck:I

.field public mTimeStampMillis:J

.field final synthetic this$0:Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;


# direct methods
.method protected constructor <init>(Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;IJII[B)V
    .locals 0
    .parameter
    .parameter "messageId"
    .parameter "timeStampMillis"
    .parameter "sendAck"
    .parameter "length"
    .parameter "messageBody"

    .prologue
    .line 248
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate$KddiSmsDuplicateInfo;->this$0:Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput p2, p0, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate$KddiSmsDuplicateInfo;->mMessageID:I

    .line 250
    iput-wide p3, p0, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate$KddiSmsDuplicateInfo;->mTimeStampMillis:J

    .line 251
    iput p5, p0, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate$KddiSmsDuplicateInfo;->mSendAck:I

    .line 252
    iput p6, p0, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate$KddiSmsDuplicateInfo;->mMessageBodyLength:I

    .line 253
    iput-object p7, p0, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate$KddiSmsDuplicateInfo;->mMessageBody:[B

    .line 254
    return-void
.end method
