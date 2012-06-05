.class final Lcom/motorola/server/location/MotGpsLocationProvider$ProviderHandler;
.super Landroid/os/Handler;
.source "MotGpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/server/location/MotGpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProviderHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/server/location/MotGpsLocationProvider;


# direct methods
.method private constructor <init>(Lcom/motorola/server/location/MotGpsLocationProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 1970
    iput-object p1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$ProviderHandler;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/server/location/MotGpsLocationProvider;Lcom/motorola/server/location/MotGpsLocationProvider$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1970
    invoke-direct {p0, p1}, Lcom/motorola/server/location/MotGpsLocationProvider$ProviderHandler;-><init>(Lcom/motorola/server/location/MotGpsLocationProvider;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 1973
    iget v0, p1, Landroid/os/Message;->what:I

    .line 1974
    .local v0, message:I
    packed-switch v0, :pswitch_data_0

    .line 2010
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$ProviderHandler;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$3100(Lcom/motorola/server/location/MotGpsLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    monitor-enter v3

    .line 2011
    :try_start_0
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$ProviderHandler;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    shl-int/2addr v2, v0

    xor-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$3272(Lcom/motorola/server/location/MotGpsLocationProvider;I)I

    .line 2012
    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    .line 2013
    :cond_1
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$ProviderHandler;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    invoke-static {v1}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$3310(Lcom/motorola/server/location/MotGpsLocationProvider;)I

    .line 2015
    :cond_2
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$ProviderHandler;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mPendingMessageBits:I
    invoke-static {v1}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$3200(Lcom/motorola/server/location/MotGpsLocationProvider;)I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$ProviderHandler;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mPendingListenerMessages:I
    invoke-static {v1}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$3300(Lcom/motorola/server/location/MotGpsLocationProvider;)I

    move-result v1

    if-nez v1, :cond_3

    .line 2016
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$ProviderHandler;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$3100(Lcom/motorola/server/location/MotGpsLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2018
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2019
    return-void

    .line 1976
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_4

    .line 1977
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$ProviderHandler;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #calls: Lcom/motorola/server/location/MotGpsLocationProvider;->handleEnable()V
    invoke-static {v1}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$2000(Lcom/motorola/server/location/MotGpsLocationProvider;)V

    goto :goto_0

    .line 1979
    :cond_4
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$ProviderHandler;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #calls: Lcom/motorola/server/location/MotGpsLocationProvider;->handleDisable()V
    invoke-static {v1}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$2100(Lcom/motorola/server/location/MotGpsLocationProvider;)V

    goto :goto_0

    .line 1983
    :pswitch_1
    iget-object v3, p0, Lcom/motorola/server/location/MotGpsLocationProvider$ProviderHandler;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_5

    move v1, v2

    :goto_1
    #calls: Lcom/motorola/server/location/MotGpsLocationProvider;->handleEnableLocationTracking(Z)V
    invoke-static {v3, v1}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$2200(Lcom/motorola/server/location/MotGpsLocationProvider;Z)V

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 1986
    :pswitch_2
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$ProviderHandler;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #calls: Lcom/motorola/server/location/MotGpsLocationProvider;->handleRequestSingleShot()V
    invoke-static {v1}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$2300(Lcom/motorola/server/location/MotGpsLocationProvider;)V

    goto :goto_0

    .line 1989
    :pswitch_3
    iget-object v3, p0, Lcom/motorola/server/location/MotGpsLocationProvider$ProviderHandler;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkInfo;

    #calls: Lcom/motorola/server/location/MotGpsLocationProvider;->handleUpdateNetworkState(ILandroid/net/NetworkInfo;)V
    invoke-static {v3, v4, v1}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$2400(Lcom/motorola/server/location/MotGpsLocationProvider;ILandroid/net/NetworkInfo;)V

    goto :goto_0

    .line 1992
    :pswitch_4
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$ProviderHandler;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #calls: Lcom/motorola/server/location/MotGpsLocationProvider;->handleInjectNtpTime()V
    invoke-static {v1}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$2500(Lcom/motorola/server/location/MotGpsLocationProvider;)V

    goto :goto_0

    .line 1995
    :pswitch_5
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$ProviderHandler;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mSupportsXtra:Z
    invoke-static {v1}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$2600(Lcom/motorola/server/location/MotGpsLocationProvider;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1996
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$ProviderHandler;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #calls: Lcom/motorola/server/location/MotGpsLocationProvider;->handleDownloadXtraData()V
    invoke-static {v1}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$2700(Lcom/motorola/server/location/MotGpsLocationProvider;)V

    goto :goto_0

    .line 2000
    :pswitch_6
    iget-object v3, p0, Lcom/motorola/server/location/MotGpsLocationProvider$ProviderHandler;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/location/Location;

    #calls: Lcom/motorola/server/location/MotGpsLocationProvider;->handleUpdateLocation(Landroid/location/Location;)V
    invoke-static {v3, v1}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$2800(Lcom/motorola/server/location/MotGpsLocationProvider;Landroid/location/Location;)V

    goto/16 :goto_0

    .line 2003
    :pswitch_7
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$ProviderHandler;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    iget v3, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/motorola/server/location/MotGpsLocationProvider;->handleAddListener(I)V
    invoke-static {v1, v3}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$2900(Lcom/motorola/server/location/MotGpsLocationProvider;I)V

    goto/16 :goto_0

    .line 2006
    :pswitch_8
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$ProviderHandler;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    iget v3, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/motorola/server/location/MotGpsLocationProvider;->handleRemoveListener(I)V
    invoke-static {v1, v3}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$3000(Lcom/motorola/server/location/MotGpsLocationProvider;I)V

    goto/16 :goto_0

    .line 2018
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1974
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_2
    .end packed-switch
.end method
