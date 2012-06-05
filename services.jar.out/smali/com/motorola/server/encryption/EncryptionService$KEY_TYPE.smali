.class final enum Lcom/motorola/server/encryption/EncryptionService$KEY_TYPE;
.super Ljava/lang/Enum;
.source "EncryptionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/server/encryption/EncryptionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "KEY_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/server/encryption/EncryptionService$KEY_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/server/encryption/EncryptionService$KEY_TYPE;

.field public static final enum Symmetric_PBKDF2:Lcom/motorola/server/encryption/EncryptionService$KEY_TYPE;

.field public static final enum Symmetric_Public:Lcom/motorola/server/encryption/EncryptionService$KEY_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 90
    new-instance v0, Lcom/motorola/server/encryption/EncryptionService$KEY_TYPE;

    const-string v1, "Symmetric_Public"

    invoke-direct {v0, v1, v2}, Lcom/motorola/server/encryption/EncryptionService$KEY_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/server/encryption/EncryptionService$KEY_TYPE;->Symmetric_Public:Lcom/motorola/server/encryption/EncryptionService$KEY_TYPE;

    .line 91
    new-instance v0, Lcom/motorola/server/encryption/EncryptionService$KEY_TYPE;

    const-string v1, "Symmetric_PBKDF2"

    invoke-direct {v0, v1, v3}, Lcom/motorola/server/encryption/EncryptionService$KEY_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/server/encryption/EncryptionService$KEY_TYPE;->Symmetric_PBKDF2:Lcom/motorola/server/encryption/EncryptionService$KEY_TYPE;

    .line 89
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/motorola/server/encryption/EncryptionService$KEY_TYPE;

    sget-object v1, Lcom/motorola/server/encryption/EncryptionService$KEY_TYPE;->Symmetric_Public:Lcom/motorola/server/encryption/EncryptionService$KEY_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/server/encryption/EncryptionService$KEY_TYPE;->Symmetric_PBKDF2:Lcom/motorola/server/encryption/EncryptionService$KEY_TYPE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/motorola/server/encryption/EncryptionService$KEY_TYPE;->$VALUES:[Lcom/motorola/server/encryption/EncryptionService$KEY_TYPE;

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
    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/server/encryption/EncryptionService$KEY_TYPE;
    .locals 1
    .parameter "name"

    .prologue
    .line 89
    const-class v0, Lcom/motorola/server/encryption/EncryptionService$KEY_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/server/encryption/EncryptionService$KEY_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/motorola/server/encryption/EncryptionService$KEY_TYPE;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/motorola/server/encryption/EncryptionService$KEY_TYPE;->$VALUES:[Lcom/motorola/server/encryption/EncryptionService$KEY_TYPE;

    invoke-virtual {v0}, [Lcom/motorola/server/encryption/EncryptionService$KEY_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/server/encryption/EncryptionService$KEY_TYPE;

    return-object v0
.end method
