.class Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;
.super Ljava/lang/Object;
.source "ModemConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/ModemConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RadioModule"
.end annotation


# instance fields
.field mIccCardApp:Lcom/android/internal/telephony/IccCard;

.field mPhoneObj:Lcom/android/internal/telephony/PhoneBase;

.field mPhoneType:I

.field mRadioId:I

.field final synthetic this$0:Lcom/motorola/android/internal/telephony/ModemConfigManager;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/telephony/ModemConfigManager;II)V
    .locals 0
    .parameter
    .parameter "radioId"
    .parameter "phoneType"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;->this$0:Lcom/motorola/android/internal/telephony/ModemConfigManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput p2, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;->mRadioId:I

    .line 121
    iput p3, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;->mPhoneType:I

    .line 122
    return-void
.end method


# virtual methods
.method getPhoneType()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;->mPhoneType:I

    return v0
.end method
