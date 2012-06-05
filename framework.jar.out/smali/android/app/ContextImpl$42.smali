.class final Landroid/app/ContextImpl$42;
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
    .line 604
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 5
    .parameter "ctx"

    .prologue
    .line 606
    invoke-virtual {p1}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x111005e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 608
    .local v1, sensorHubExists:Z
    if-eqz v1, :cond_0

    .line 609
    const-string/jumbo v3, "sensorhub"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 610
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/motorola/sensorhub/ISensorHub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/sensorhub/ISensorHub;

    move-result-object v2

    .line 611
    .local v2, service:Lcom/motorola/sensorhub/ISensorHub;
    new-instance v3, Lcom/motorola/sensorhub/SensorHub;

    iget-object v4, p1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v4}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/motorola/sensorhub/SensorHub;-><init>(Lcom/motorola/sensorhub/ISensorHub;Landroid/os/Looper;)V

    .line 613
    .end local v0           #b:Landroid/os/IBinder;
    .end local v2           #service:Lcom/motorola/sensorhub/ISensorHub;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
