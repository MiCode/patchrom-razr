.class final Landroid/app/ContextImpl$34;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 535
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 4
    .parameter "ctx"

    .prologue
    .line 537
    const-string v2, "mot_encryption_service"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 538
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/motorola/android/internal/encryption/IEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/android/internal/encryption/IEncryptionService;

    move-result-object v1

    .line 539
    .local v1, service:Lcom/motorola/android/internal/encryption/IEncryptionService;
    new-instance v2, Lcom/motorola/android/internal/encryption/EncryptionManager;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/motorola/android/internal/encryption/EncryptionManager;-><init>(Landroid/content/Context;Lcom/motorola/android/internal/encryption/IEncryptionService;)V

    return-object v2
.end method
