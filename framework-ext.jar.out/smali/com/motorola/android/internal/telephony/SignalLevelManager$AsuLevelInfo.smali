.class Lcom/motorola/android/internal/telephony/SignalLevelManager$AsuLevelInfo;
.super Ljava/lang/Object;
.source "SignalLevelManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/SignalLevelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsuLevelInfo"
.end annotation


# instance fields
.field public mAsuLevels:I

.field public mDbmLevel:[I

.field public mDbmValue:[I

.field public mEcSnrLevel:[I

.field public mEcSnrValue:[I

.field final synthetic this$0:Lcom/motorola/android/internal/telephony/SignalLevelManager;


# direct methods
.method public constructor <init>(Lcom/motorola/android/internal/telephony/SignalLevelManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "asuLevels"
    .parameter "dbmLevel"
    .parameter "dbmValue"
    .parameter "ecSnrLevel"
    .parameter "ecSnrValue"

    .prologue
    const/4 v0, 0x0

    .line 91
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager$AsuLevelInfo;->this$0:Lcom/motorola/android/internal/telephony/SignalLevelManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object v0, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager$AsuLevelInfo;->mDbmLevel:[I

    .line 86
    iput-object v0, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager$AsuLevelInfo;->mDbmValue:[I

    .line 87
    iput-object v0, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager$AsuLevelInfo;->mEcSnrLevel:[I

    .line 88
    iput-object v0, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager$AsuLevelInfo;->mEcSnrValue:[I

    .line 92
    iput p2, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager$AsuLevelInfo;->mAsuLevels:I

    .line 93
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 94
    invoke-static {p2, p3}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->parseSignalLevelString(ILjava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager$AsuLevelInfo;->mDbmLevel:[I

    .line 96
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 97
    invoke-static {p2, p4}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->parseSignalLevelString(ILjava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager$AsuLevelInfo;->mDbmValue:[I

    .line 99
    :cond_1
    if-eqz p5, :cond_2

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 100
    invoke-static {p2, p5}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->parseSignalLevelString(ILjava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager$AsuLevelInfo;->mEcSnrLevel:[I

    .line 102
    :cond_2
    if-eqz p6, :cond_3

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 103
    invoke-static {p2, p6}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->parseSignalLevelString(ILjava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager$AsuLevelInfo;->mEcSnrValue:[I

    .line 105
    :cond_3
    return-void
.end method
