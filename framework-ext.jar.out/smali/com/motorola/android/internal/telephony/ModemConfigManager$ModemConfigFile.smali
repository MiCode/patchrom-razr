.class Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigFile;
.super Ljava/lang/Object;
.source "ModemConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/ModemConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ModemConfigFile"
.end annotation


# instance fields
.field public mMCInfoTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mNumberOfMCEntries:I

.field final synthetic this$0:Lcom/motorola/android/internal/telephony/ModemConfigManager;


# direct methods
.method public constructor <init>(Lcom/motorola/android/internal/telephony/ModemConfigManager;)V
    .locals 1
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigFile;->this$0:Lcom/motorola/android/internal/telephony/ModemConfigManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigFile;->mNumberOfMCEntries:I

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigFile;->mMCInfoTable:Ljava/util/HashMap;

    .line 109
    return-void
.end method
