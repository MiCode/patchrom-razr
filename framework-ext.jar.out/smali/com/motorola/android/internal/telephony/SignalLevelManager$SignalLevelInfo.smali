.class Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;
.super Ljava/lang/Object;
.source "SignalLevelManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/SignalLevelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SignalLevelInfo"
.end annotation


# instance fields
.field public mAsuLevel:[I

.field public mEcSnrLevel:[I

.field public mSigStrLevel:[I

.field public mSignalBars:I

.field final synthetic this$0:Lcom/motorola/android/internal/telephony/SignalLevelManager;


# direct methods
.method public constructor <init>(Lcom/motorola/android/internal/telephony/SignalLevelManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "signalBars"
    .parameter "asuLevel"
    .parameter "sigStrLevel"
    .parameter "ecSnrLevel"

    .prologue
    const/4 v0, 0x0

    .line 68
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;->this$0:Lcom/motorola/android/internal/telephony/SignalLevelManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object v0, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;->mAsuLevel:[I

    .line 64
    iput-object v0, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;->mSigStrLevel:[I

    .line 65
    iput-object v0, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;->mEcSnrLevel:[I

    .line 69
    iput p2, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;->mSignalBars:I

    .line 70
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 71
    invoke-static {p2, p3}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->parseSignalLevelString(ILjava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;->mAsuLevel:[I

    .line 73
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 74
    invoke-static {p2, p4}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->parseSignalLevelString(ILjava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;->mSigStrLevel:[I

    .line 76
    :cond_1
    if-eqz p5, :cond_2

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 77
    invoke-static {p2, p5}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->parseSignalLevelString(ILjava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;->mEcSnrLevel:[I

    .line 79
    :cond_2
    return-void
.end method
