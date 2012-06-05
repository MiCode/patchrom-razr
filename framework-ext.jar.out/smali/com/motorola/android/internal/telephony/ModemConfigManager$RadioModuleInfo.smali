.class Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModuleInfo;
.super Ljava/lang/Object;
.source "ModemConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/ModemConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RadioModuleInfo"
.end annotation


# static fields
.field public static final ACTIVEMODE_ACTIVE:Ljava/lang/String; = "true"

.field public static final ACTIVEMODE_INACTIVE:Ljava/lang/String; = "false"

.field public static final ACTIVEMODE_OPTIONAL:Ljava/lang/String; = "optional"

.field public static final MODULENAME_CDMA:Ljava/lang/String; = "CDMA"

.field public static final MODULENAME_GSM:Ljava/lang/String; = "GSM"

.field public static final MODULENAME_UNDEFINED:Ljava/lang/String; = "Undefined"


# instance fields
.field public mActiveMode:Ljava/lang/String;

.field public mPhoneType:I

.field public mRMInfoId:I

.field public mRMInfoName:Ljava/lang/String;

.field final synthetic this$0:Lcom/motorola/android/internal/telephony/ModemConfigManager;


# direct methods
.method public constructor <init>(Lcom/motorola/android/internal/telephony/ModemConfigManager;ILjava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "rmInfoId"
    .parameter "rmInfoName"
    .parameter "phoneType"
    .parameter "activeMode"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModuleInfo;->this$0:Lcom/motorola/android/internal/telephony/ModemConfigManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput p2, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModuleInfo;->mRMInfoId:I

    .line 74
    iput-object p3, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModuleInfo;->mRMInfoName:Ljava/lang/String;

    .line 75
    iput p4, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModuleInfo;->mPhoneType:I

    .line 76
    iput-object p5, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModuleInfo;->mActiveMode:Ljava/lang/String;

    .line 77
    return-void
.end method
