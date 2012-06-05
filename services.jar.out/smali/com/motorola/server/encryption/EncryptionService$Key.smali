.class Lcom/motorola/server/encryption/EncryptionService$Key;
.super Ljava/lang/Object;
.source "EncryptionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/server/encryption/EncryptionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Key"
.end annotation


# instance fields
.field mEncValue:[B

.field mIsEnabled:Z

.field mIsLoaded:Z

.field mMode:I

.field mStatus:I

.field mType:Lcom/motorola/server/encryption/EncryptionService$KEY_TYPE;

.field mValue:[B

.field final synthetic this$0:Lcom/motorola/server/encryption/EncryptionService;


# direct methods
.method private constructor <init>(Lcom/motorola/server/encryption/EncryptionService;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 104
    iput-object p1, p0, Lcom/motorola/server/encryption/EncryptionService$Key;->this$0:Lcom/motorola/server/encryption/EncryptionService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object v1, p0, Lcom/motorola/server/encryption/EncryptionService$Key;->mValue:[B

    .line 96
    iput-object v1, p0, Lcom/motorola/server/encryption/EncryptionService$Key;->mEncValue:[B

    .line 97
    iput-boolean v0, p0, Lcom/motorola/server/encryption/EncryptionService$Key;->mIsLoaded:Z

    .line 98
    iput-boolean v0, p0, Lcom/motorola/server/encryption/EncryptionService$Key;->mIsEnabled:Z

    .line 99
    iput v0, p0, Lcom/motorola/server/encryption/EncryptionService$Key;->mStatus:I

    .line 105
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/server/encryption/EncryptionService;Lcom/motorola/server/encryption/EncryptionService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/motorola/server/encryption/EncryptionService$Key;-><init>(Lcom/motorola/server/encryption/EncryptionService;)V

    return-void
.end method
