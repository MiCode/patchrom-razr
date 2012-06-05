.class final enum Lcom/motorola/server/encryption/EncryptionService$SCREEN_MODE;
.super Ljava/lang/Enum;
.source "EncryptionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/server/encryption/EncryptionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SCREEN_MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/server/encryption/EncryptionService$SCREEN_MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/server/encryption/EncryptionService$SCREEN_MODE;

.field public static final enum Locked:Lcom/motorola/server/encryption/EncryptionService$SCREEN_MODE;

.field public static final enum Unlocked:Lcom/motorola/server/encryption/EncryptionService$SCREEN_MODE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 86
    new-instance v0, Lcom/motorola/server/encryption/EncryptionService$SCREEN_MODE;

    const-string v1, "Unlocked"

    invoke-direct {v0, v1, v2}, Lcom/motorola/server/encryption/EncryptionService$SCREEN_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/server/encryption/EncryptionService$SCREEN_MODE;->Unlocked:Lcom/motorola/server/encryption/EncryptionService$SCREEN_MODE;

    new-instance v0, Lcom/motorola/server/encryption/EncryptionService$SCREEN_MODE;

    const-string v1, "Locked"

    invoke-direct {v0, v1, v3}, Lcom/motorola/server/encryption/EncryptionService$SCREEN_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/server/encryption/EncryptionService$SCREEN_MODE;->Locked:Lcom/motorola/server/encryption/EncryptionService$SCREEN_MODE;

    .line 85
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/motorola/server/encryption/EncryptionService$SCREEN_MODE;

    sget-object v1, Lcom/motorola/server/encryption/EncryptionService$SCREEN_MODE;->Unlocked:Lcom/motorola/server/encryption/EncryptionService$SCREEN_MODE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/server/encryption/EncryptionService$SCREEN_MODE;->Locked:Lcom/motorola/server/encryption/EncryptionService$SCREEN_MODE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/motorola/server/encryption/EncryptionService$SCREEN_MODE;->$VALUES:[Lcom/motorola/server/encryption/EncryptionService$SCREEN_MODE;

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
    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/server/encryption/EncryptionService$SCREEN_MODE;
    .locals 1
    .parameter "name"

    .prologue
    .line 85
    const-class v0, Lcom/motorola/server/encryption/EncryptionService$SCREEN_MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/server/encryption/EncryptionService$SCREEN_MODE;

    return-object v0
.end method

.method public static values()[Lcom/motorola/server/encryption/EncryptionService$SCREEN_MODE;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/motorola/server/encryption/EncryptionService$SCREEN_MODE;->$VALUES:[Lcom/motorola/server/encryption/EncryptionService$SCREEN_MODE;

    invoke-virtual {v0}, [Lcom/motorola/server/encryption/EncryptionService$SCREEN_MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/server/encryption/EncryptionService$SCREEN_MODE;

    return-object v0
.end method
