.class Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider$AgpsEventThread;
.super Ljava/lang/Thread;
.source "VzwHalGpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AgpsEventThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;


# direct methods
.method public constructor <init>(Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;)V
    .locals 1
    .parameter

    .prologue
    .line 1076
    iput-object p1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider$AgpsEventThread;->this$0:Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;

    .line 1077
    const-string v0, "AgpsEventThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1078
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1081
    const-string v0, "VzwHalGpsLocationProvider"

    const-string v1, "AgpsEventThread starting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    :goto_0
    iget-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider$AgpsEventThread;->this$0:Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;

    #getter for: Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->mEnabled:Z
    invoke-static {v0}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->access$500(Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1087
    iget-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider$AgpsEventThread;->this$0:Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;

    #calls: Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->native_wait_for_event()V
    invoke-static {v0}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->access$600(Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;)V

    goto :goto_0

    .line 1089
    :cond_0
    const-string v0, "VzwHalGpsLocationProvider"

    const-string v1, "AgpsEventThread exiting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    return-void
.end method
