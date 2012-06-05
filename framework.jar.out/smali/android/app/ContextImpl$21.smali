.class final Landroid/app/ContextImpl$21;
.super Landroid/app/ContextImpl$StaticServiceFetcher;
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
    .line 436
    invoke-direct {p0}, Landroid/app/ContextImpl$StaticServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createStaticService()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 438
    const-string/jumbo v1, "vzwconnectivity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 439
    .local v0, b:Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 440
    const/4 v1, 0x0

    .line 442
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/verizon/net/VzwConnectivityManager;

    invoke-static {v0}, Lcom/verizon/net/IVzwConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/verizon/net/IVzwConnectivityManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/verizon/net/VzwConnectivityManager;-><init>(Lcom/verizon/net/IVzwConnectivityManager;)V

    goto :goto_0
.end method
