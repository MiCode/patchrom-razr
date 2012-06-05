.class final Lcom/motorola/server/location/MotGpsLocationProvider$GpsLocationProviderThread;
.super Ljava/lang/Thread;
.source "MotGpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/server/location/MotGpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GpsLocationProviderThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/server/location/MotGpsLocationProvider;


# direct methods
.method public constructor <init>(Lcom/motorola/server/location/MotGpsLocationProvider;)V
    .locals 1
    .parameter

    .prologue
    .line 2024
    iput-object p1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$GpsLocationProviderThread;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    .line 2025
    const-string v0, "GpsLocationProvider"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 2026
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2029
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2030
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$GpsLocationProviderThread;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #calls: Lcom/motorola/server/location/MotGpsLocationProvider;->initialize()V
    invoke-static {v0}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$3400(Lcom/motorola/server/location/MotGpsLocationProvider;)V

    .line 2031
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2032
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$GpsLocationProviderThread;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    new-instance v1, Lcom/motorola/server/location/MotGpsLocationProvider$ProviderHandler;

    iget-object v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider$GpsLocationProviderThread;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/motorola/server/location/MotGpsLocationProvider$ProviderHandler;-><init>(Lcom/motorola/server/location/MotGpsLocationProvider;Lcom/motorola/server/location/MotGpsLocationProvider$1;)V

    #setter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$3502(Lcom/motorola/server/location/MotGpsLocationProvider;Landroid/os/Handler;)Landroid/os/Handler;

    .line 2034
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$GpsLocationProviderThread;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$3700(Lcom/motorola/server/location/MotGpsLocationProvider;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 2035
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 2036
    return-void
.end method
