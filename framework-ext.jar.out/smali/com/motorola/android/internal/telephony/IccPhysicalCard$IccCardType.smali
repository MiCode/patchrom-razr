.class public final enum Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;
.super Ljava/lang/Enum;
.source "IccPhysicalCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/IccPhysicalCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IccCardType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;

.field public static final enum ICCCARDTYPE_RUIM:Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;

.field public static final enum ICCCARDTYPE_RUIM_ONLY:Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;

.field public static final enum ICCCARDTYPE_SIM_ONLY:Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;

.field public static final enum ICCCARDTYPE_UICC:Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;

.field public static final enum ICCCARDTYPE_UNKNOWN:Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;

.field public static final enum ICCCARDTYPE_USIM_ONLY:Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    new-instance v0, Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;

    const-string v1, "ICCCARDTYPE_UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;->ICCCARDTYPE_UNKNOWN:Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;

    .line 55
    new-instance v0, Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;

    const-string v1, "ICCCARDTYPE_SIM_ONLY"

    invoke-direct {v0, v1, v4}, Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;->ICCCARDTYPE_SIM_ONLY:Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;

    .line 56
    new-instance v0, Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;

    const-string v1, "ICCCARDTYPE_RUIM_ONLY"

    invoke-direct {v0, v1, v5}, Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;->ICCCARDTYPE_RUIM_ONLY:Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;

    .line 57
    new-instance v0, Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;

    const-string v1, "ICCCARDTYPE_RUIM"

    invoke-direct {v0, v1, v6}, Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;->ICCCARDTYPE_RUIM:Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;

    .line 58
    new-instance v0, Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;

    const-string v1, "ICCCARDTYPE_UICC"

    invoke-direct {v0, v1, v7}, Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;->ICCCARDTYPE_UICC:Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;

    .line 59
    new-instance v0, Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;

    const-string v1, "ICCCARDTYPE_USIM_ONLY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;->ICCCARDTYPE_USIM_ONLY:Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;

    .line 53
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;

    sget-object v1, Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;->ICCCARDTYPE_UNKNOWN:Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;->ICCCARDTYPE_SIM_ONLY:Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;->ICCCARDTYPE_RUIM_ONLY:Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;->ICCCARDTYPE_RUIM:Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;->ICCCARDTYPE_UICC:Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;->ICCCARDTYPE_USIM_ONLY:Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;->$VALUES:[Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;
    .locals 1
    .parameter "name"

    .prologue
    .line 53
    const-class v0, Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;

    return-object v0
.end method

.method public static values()[Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;->$VALUES:[Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;

    invoke-virtual {v0}, [Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;

    return-object v0
.end method
