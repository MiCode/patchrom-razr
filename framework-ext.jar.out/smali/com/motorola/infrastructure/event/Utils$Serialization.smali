.class public final enum Lcom/motorola/infrastructure/event/Utils$Serialization;
.super Ljava/lang/Enum;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/infrastructure/event/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Serialization"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/infrastructure/event/Utils$Serialization;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/infrastructure/event/Utils$Serialization;

.field public static final enum NAME_VALUE_BASED:Lcom/motorola/infrastructure/event/Utils$Serialization;

.field public static final enum NOT_INTIALIZED:Lcom/motorola/infrastructure/event/Utils$Serialization;

.field public static final enum POSITION_BASED:Lcom/motorola/infrastructure/event/Utils$Serialization;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/motorola/infrastructure/event/Utils$Serialization;

    const-string v1, "NOT_INTIALIZED"

    invoke-direct {v0, v1, v2}, Lcom/motorola/infrastructure/event/Utils$Serialization;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/infrastructure/event/Utils$Serialization;->NOT_INTIALIZED:Lcom/motorola/infrastructure/event/Utils$Serialization;

    .line 21
    new-instance v0, Lcom/motorola/infrastructure/event/Utils$Serialization;

    const-string v1, "POSITION_BASED"

    invoke-direct {v0, v1, v3}, Lcom/motorola/infrastructure/event/Utils$Serialization;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/infrastructure/event/Utils$Serialization;->POSITION_BASED:Lcom/motorola/infrastructure/event/Utils$Serialization;

    .line 22
    new-instance v0, Lcom/motorola/infrastructure/event/Utils$Serialization;

    const-string v1, "NAME_VALUE_BASED"

    invoke-direct {v0, v1, v4}, Lcom/motorola/infrastructure/event/Utils$Serialization;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/infrastructure/event/Utils$Serialization;->NAME_VALUE_BASED:Lcom/motorola/infrastructure/event/Utils$Serialization;

    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/motorola/infrastructure/event/Utils$Serialization;

    sget-object v1, Lcom/motorola/infrastructure/event/Utils$Serialization;->NOT_INTIALIZED:Lcom/motorola/infrastructure/event/Utils$Serialization;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/infrastructure/event/Utils$Serialization;->POSITION_BASED:Lcom/motorola/infrastructure/event/Utils$Serialization;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/infrastructure/event/Utils$Serialization;->NAME_VALUE_BASED:Lcom/motorola/infrastructure/event/Utils$Serialization;

    aput-object v1, v0, v4

    sput-object v0, Lcom/motorola/infrastructure/event/Utils$Serialization;->$VALUES:[Lcom/motorola/infrastructure/event/Utils$Serialization;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/infrastructure/event/Utils$Serialization;
    .locals 1
    .parameter "name"

    .prologue
    .line 19
    const-class v0, Lcom/motorola/infrastructure/event/Utils$Serialization;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/infrastructure/event/Utils$Serialization;

    return-object v0
.end method

.method public static values()[Lcom/motorola/infrastructure/event/Utils$Serialization;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/motorola/infrastructure/event/Utils$Serialization;->$VALUES:[Lcom/motorola/infrastructure/event/Utils$Serialization;

    invoke-virtual {v0}, [Lcom/motorola/infrastructure/event/Utils$Serialization;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/infrastructure/event/Utils$Serialization;

    return-object v0
.end method
