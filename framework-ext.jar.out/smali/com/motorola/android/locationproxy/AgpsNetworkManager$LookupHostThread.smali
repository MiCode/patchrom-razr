.class Lcom/motorola/android/locationproxy/AgpsNetworkManager$LookupHostThread;
.super Ljava/lang/Object;
.source "AgpsNetworkManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/locationproxy/AgpsNetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LookupHostThread"
.end annotation


# instance fields
.field private mHost:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "host"

    .prologue
    .line 263
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-object p1, p0, Lcom/motorola/android/locationproxy/AgpsNetworkManager$LookupHostThread;->mHost:Ljava/lang/String;

    .line 265
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 268
    invoke-static {}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$800()Landroid/content/Context;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 271
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 272
    .local v2, info:Landroid/net/NetworkInfo;
    if-nez v2, :cond_0

    .line 273
    const-string v3, "SUPLJ"

    const-string v4, "No Active data connection is available!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-string v3, ""

    invoke-static {v3}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$702(Ljava/lang/String;)Ljava/lang/String;

    .line 285
    :goto_0
    return-void

    .line 278
    :cond_0
    iget-object v3, p0, Lcom/motorola/android/locationproxy/AgpsNetworkManager$LookupHostThread;->mHost:Ljava/lang/String;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    #calls: Lcom/motorola/android/locationproxy/AgpsNetworkManager;->lookupHost(Ljava/lang/String;)I
    invoke-static {v3}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$1000(Ljava/lang/String;)I

    move-result v1

    .line 279
    .local v1, inetAddr:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configAgpsNetwork: Ip address of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/android/locationproxy/AgpsNetworkManager$LookupHostThread;->mHost:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/motorola/android/locationproxy/AgpsNetworkManager;->logd(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$000(Ljava/lang/String;)V

    .line 280
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 281
    const/16 v3, 0x1e

    invoke-virtual {v0, v3, v1}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    goto :goto_0

    .line 283
    :cond_1
    const-string v3, ""

    invoke-static {v3}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$702(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
