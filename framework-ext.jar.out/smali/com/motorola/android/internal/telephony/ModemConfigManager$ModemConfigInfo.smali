.class Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;
.super Ljava/lang/Object;
.source "ModemConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/ModemConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ModemConfigInfo"
.end annotation


# instance fields
.field public mIccCardSlotNum:I

.field public mMCInfoId:I

.field public mMCInfoName:Ljava/lang/String;

.field public mPreferNetModeName:Ljava/lang/String;

.field public mRMInfoTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModuleInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mRadioModuleNum:I

.field final synthetic this$0:Lcom/motorola/android/internal/telephony/ModemConfigManager;


# direct methods
.method public constructor <init>(Lcom/motorola/android/internal/telephony/ModemConfigManager;ILjava/lang/String;ILjava/lang/String;I)V
    .locals 1
    .parameter
    .parameter "mcInfoId"
    .parameter "mcInfoName"
    .parameter "radioModuleNum"
    .parameter "preferNetModeName"
    .parameter "iccCardSlotNum"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;->this$0:Lcom/motorola/android/internal/telephony/ModemConfigManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput p2, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;->mMCInfoId:I

    .line 93
    iput-object p3, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;->mMCInfoName:Ljava/lang/String;

    .line 94
    iput p4, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;->mRadioModuleNum:I

    .line 95
    iput-object p5, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;->mPreferNetModeName:Ljava/lang/String;

    .line 96
    iput p6, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;->mIccCardSlotNum:I

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;->mRMInfoTable:Ljava/util/HashMap;

    .line 98
    return-void
.end method
