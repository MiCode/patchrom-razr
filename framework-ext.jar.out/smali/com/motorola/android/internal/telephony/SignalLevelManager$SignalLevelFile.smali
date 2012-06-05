.class Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;
.super Ljava/lang/Object;
.source "SignalLevelManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/SignalLevelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SignalLevelFile"
.end annotation


# instance fields
.field public mAsuInfoTable:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/motorola/android/internal/telephony/SignalLevelManager$AsuLevelInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mNumberOfAsuEntries:[I

.field public mNumberOfSignalEntries:[I

.field public mSignalInfoTable:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/motorola/android/internal/telephony/SignalLevelManager;


# direct methods
.method public constructor <init>(Lcom/motorola/android/internal/telephony/SignalLevelManager;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x5

    const/4 v3, 0x3

    .line 116
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->this$0:Lcom/motorola/android/internal/telephony/SignalLevelManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-array v1, v4, [I

    iput-object v1, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mNumberOfSignalEntries:[I

    .line 118
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mNumberOfAsuEntries:[I

    .line 119
    new-array v1, v4, [Ljava/util/HashMap;

    iput-object v1, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mSignalInfoTable:[Ljava/util/HashMap;

    .line 120
    new-array v1, v3, [Ljava/util/HashMap;

    iput-object v1, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mAsuInfoTable:[Ljava/util/HashMap;

    .line 121
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 122
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mNumberOfSignalEntries:[I

    aput v5, v1, v0

    .line 123
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mSignalInfoTable:[Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, v1, v0

    .line 124
    if-ge v0, v3, :cond_0

    .line 125
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mNumberOfAsuEntries:[I

    aput v5, v1, v0

    .line 126
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mAsuInfoTable:[Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, v1, v0

    .line 121
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :cond_1
    return-void
.end method
