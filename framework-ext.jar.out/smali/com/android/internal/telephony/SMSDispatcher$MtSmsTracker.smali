.class public Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;
.super Ljava/lang/Object;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MtSmsTracker"
.end annotation


# instance fields
.field public mDeliveredBy:I

.field public mMtSms:Landroid/telephony/SmsMessage;


# direct methods
.method public constructor <init>(ILandroid/telephony/SmsMessage;)V
    .locals 0
    .parameter "deliveredBy"
    .parameter "mtSms"

    .prologue
    .line 1807
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1808
    iput p1, p0, Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;->mDeliveredBy:I

    .line 1809
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;->mMtSms:Landroid/telephony/SmsMessage;

    .line 1810
    return-void
.end method
