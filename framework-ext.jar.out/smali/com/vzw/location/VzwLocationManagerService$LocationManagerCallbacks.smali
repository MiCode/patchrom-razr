.class Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;
.super Ljava/lang/Object;
.source "VzwLocationManagerService.java"

# interfaces
.implements Lcom/vzw/location/gpsprovider/IVzwHalGpsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwLocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationManagerCallbacks"
.end annotation


# static fields
.field private static final MAX_SVS:I = 0x20


# instance fields
.field private mSnrs:[F

.field private mSvAzimuths:[F

.field private mSvCount:I

.field private mSvElevations:[F

.field private mSvUsedForFixMask:I

.field private mSvUsedInFix:[I

.field private mSvs:[I

.field final synthetic this$0:Lcom/vzw/location/VzwLocationManagerService;

.field vzwLocation:Lcom/vzw/location/VzwLocation;


# direct methods
.method private constructor <init>(Lcom/vzw/location/VzwLocationManagerService;)V
    .locals 2
    .parameter

    .prologue
    const/16 v1, 0x20

    .line 750
    iput-object p1, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 753
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mSvs:[I

    .line 754
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mSnrs:[F

    .line 755
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mSvElevations:[F

    .line 756
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mSvAzimuths:[F

    .line 757
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mSvUsedInFix:[I

    .line 760
    new-instance v0, Lcom/vzw/location/VzwLocation;

    const-string v1, "vzw_lbs"

    invoke-direct {v0, v1}, Lcom/vzw/location/VzwLocation;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->vzwLocation:Lcom/vzw/location/VzwLocation;

    return-void
.end method

.method synthetic constructor <init>(Lcom/vzw/location/VzwLocationManagerService;Lcom/vzw/location/VzwLocationManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 750
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;-><init>(Lcom/vzw/location/VzwLocationManagerService;)V

    return-void
.end method


# virtual methods
.method public ReportEngineStatus(I)V
    .locals 7
    .parameter "statusCode"

    .prologue
    .line 778
    iget-object v4, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/vzw/location/VzwLocationManagerService;->access$600(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5

    .line 779
    :try_start_0
    iget-object v4, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/vzw/location/VzwLocationManagerService;->access$600(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 780
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 781
    iget-object v4, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/vzw/location/VzwLocationManagerService;->access$600(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vzw/location/VzwLocationManagerService$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 783
    .local v2, listener:Lcom/vzw/location/VzwLocationManagerService$Listener;
    const/4 v4, 0x1

    if-eq p1, v4, :cond_0

    const/16 v4, 0x64

    if-ne p1, v4, :cond_1

    .line 785
    :cond_0
    :try_start_1
    iget-object v4, v2, Lcom/vzw/location/VzwLocationManagerService$Listener;->mListener:Lcom/vzw/location/IVzwGpsStatusListener;

    invoke-interface {v4}, Lcom/vzw/location/IVzwGpsStatusListener;->onGpsStarted()V

    .line 780
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 787
    :cond_1
    iget-object v4, v2, Lcom/vzw/location/VzwLocationManagerService$Listener;->mListener:Lcom/vzw/location/IVzwGpsStatusListener;

    invoke-interface {v4}, Lcom/vzw/location/IVzwGpsStatusListener;->onGpsStopped()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 789
    :catch_0
    move-exception v0

    .line 790
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "VzwLocationMgrService"

    const-string v6, "RemoteException in reportStatus()"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iget-object v4, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/vzw/location/VzwLocationManagerService;->access$600(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 793
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 796
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v2           #listener:Lcom/vzw/location/VzwLocationManagerService$Listener;
    :cond_2
    monitor-exit v5

    .line 797
    return-void

    .line 796
    .end local v1           #i:I
    .end local v3           #size:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method public ReportGpsStatus(I)V
    .locals 0
    .parameter "statusCode"

    .prologue
    .line 775
    return-void
.end method

.method public ReportLocation(Lcom/vzw/location/gpsprovider/VzwHalLocation;)V
    .locals 6
    .parameter "location"

    .prologue
    const/4 v5, 0x1

    .line 763
    const-string v1, "VzwLocationMgrService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReportLocation(): time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/vzw/location/gpsprovider/VzwHalLocation;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->vzwLocation:Lcom/vzw/location/VzwLocation;

    invoke-virtual {v1, p1}, Lcom/vzw/location/VzwLocation;->set(Lcom/vzw/location/gpsprovider/VzwHalLocation;)V

    .line 768
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mLocationHandler:Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;
    invoke-static {v1}, Lcom/vzw/location/VzwLocationManagerService;->access$500(Lcom/vzw/location/VzwLocationManagerService;)Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->vzwLocation:Lcom/vzw/location/VzwLocation;

    invoke-virtual {v1, v5, v2}, Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;->removeMessages(ILjava/lang/Object;)V

    .line 769
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mLocationHandler:Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;
    invoke-static {v1}, Lcom/vzw/location/VzwLocationManagerService;->access$500(Lcom/vzw/location/VzwLocationManagerService;)Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->vzwLocation:Lcom/vzw/location/VzwLocation;

    invoke-static {v1, v5, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 770
    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mLocationHandler:Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;
    invoke-static {v1}, Lcom/vzw/location/VzwLocationManagerService;->access$500(Lcom/vzw/location/VzwLocationManagerService;)Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 771
    return-void
.end method

.method public ReportOnDeviceStatusChanged(ZI[I[FII)V
    .locals 12
    .parameter "engineOn"
    .parameter "svCount"
    .parameter "prns"
    .parameter "snrs"
    .parameter "ephemerisMask"
    .parameter "almanacMask"

    .prologue
    .line 857
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/vzw/location/VzwLocationManagerService;->access$600(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/ArrayList;

    move-result-object v11

    monitor-enter v11

    .line 858
    :try_start_0
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/vzw/location/VzwLocationManagerService;->access$600(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 859
    .local v10, size:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v10, :cond_0

    .line 860
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/vzw/location/VzwLocationManagerService;->access$600(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vzw/location/VzwLocationManagerService$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 862
    .local v9, listener:Lcom/vzw/location/VzwLocationManagerService$Listener;
    :try_start_1
    iget-object v0, v9, Lcom/vzw/location/VzwLocationManagerService$Listener;->mListener:Lcom/vzw/location/IVzwGpsStatusListener;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/vzw/location/IVzwGpsStatusListener;->onDeviceStatusChanged(ZI[I[FII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 859
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 864
    :catch_0
    move-exception v7

    .line 865
    .local v7, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v0, "VzwLocationMgrService"

    const-string v1, "RemoteException in reportStatus()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/vzw/location/VzwLocationManagerService;->access$600(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 868
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 871
    .end local v7           #e:Landroid/os/RemoteException;
    .end local v9           #listener:Lcom/vzw/location/VzwLocationManagerService$Listener;
    :cond_0
    monitor-exit v11

    .line 872
    return-void

    .line 871
    .end local v8           #i:I
    .end local v10           #size:I
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public ReportOnFirstFix(I)V
    .locals 8
    .parameter "ttff"

    .prologue
    .line 838
    iget-object v4, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/vzw/location/VzwLocationManagerService;->access$600(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5

    .line 839
    :try_start_0
    iget-object v4, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/vzw/location/VzwLocationManagerService;->access$600(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 840
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 841
    iget-object v4, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/vzw/location/VzwLocationManagerService;->access$600(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vzw/location/VzwLocationManagerService$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 843
    .local v2, listener:Lcom/vzw/location/VzwLocationManagerService$Listener;
    :try_start_1
    const-string v4, "VzwLocationMgrService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "first fix to listener: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " TTFF: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    iget-object v4, v2, Lcom/vzw/location/VzwLocationManagerService$Listener;->mListener:Lcom/vzw/location/IVzwGpsStatusListener;

    invoke-interface {v4, p1}, Lcom/vzw/location/IVzwGpsStatusListener;->onFirstFix(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 840
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 845
    :catch_0
    move-exception v0

    .line 846
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "VzwLocationMgrService"

    const-string v6, "RemoteException for mListener.onFirstFix"

    invoke-static {v4, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 847
    iget-object v4, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/vzw/location/VzwLocationManagerService;->access$600(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 849
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 852
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v2           #listener:Lcom/vzw/location/VzwLocationManagerService$Listener;
    :cond_0
    monitor-exit v5

    .line 853
    return-void

    .line 852
    .end local v1           #i:I
    .end local v3           #size:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method public ReportSvStatus(Lcom/vzw/location/gpsprovider/VzwHalSvInfo;)V
    .locals 14
    .parameter "svSvInfo"

    .prologue
    const/4 v0, 0x0

    .line 801
    const/4 v9, 0x0

    .local v9, j:I
    const/4 v8, 0x0

    .line 802
    .local v8, i:I
    iput v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mSvCount:I

    .line 803
    iput v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mSvUsedForFixMask:I

    .line 804
    invoke-virtual {p1}, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->getSatellitesInViewPRNs()[I

    move-result-object v0

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mSvs:[I

    .line 805
    invoke-virtual {p1}, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->getSatellitesInViewSignalToNoiseRatio()[F

    move-result-object v0

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mSnrs:[F

    .line 806
    invoke-virtual {p1}, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->getSatellitesInViewElevation()[F

    move-result-object v0

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mSvElevations:[F

    .line 807
    invoke-virtual {p1}, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->getSatellitesInViewAzimuth()[F

    move-result-object v0

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mSvAzimuths:[F

    .line 808
    invoke-virtual {p1}, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->getSatellitesUsedPRN()[I

    move-result-object v0

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mSvUsedInFix:[I

    .line 811
    const/4 v9, 0x0

    :goto_0
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mSvs:[I

    array-length v0, v0

    if-ge v9, v0, :cond_0

    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mSvs:[I

    aget v0, v0, v9

    if-lez v0, :cond_0

    .line 812
    iget v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mSvCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mSvCount:I

    .line 811
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 815
    :cond_0
    const/4 v9, 0x0

    :goto_1
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mSvUsedInFix:[I

    array-length v0, v0

    if-ge v9, v0, :cond_1

    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mSvUsedInFix:[I

    aget v0, v0, v9

    if-lez v0, :cond_1

    .line 816
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mSvUsedInFix:[I

    aget v1, v1, v9

    shl-int v11, v0, v1

    .line 817
    .local v11, prnShift:I
    iget v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mSvUsedForFixMask:I

    or-int/2addr v0, v11

    iput v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mSvUsedForFixMask:I

    .line 815
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 820
    .end local v11           #prnShift:I
    :cond_1
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/vzw/location/VzwLocationManagerService;->access$600(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/ArrayList;

    move-result-object v13

    monitor-enter v13

    .line 821
    :try_start_0
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/vzw/location/VzwLocationManagerService;->access$600(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 822
    .local v12, size:I
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v12, :cond_2

    .line 823
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/vzw/location/VzwLocationManagerService;->access$600(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vzw/location/VzwLocationManagerService$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 825
    .local v10, listener:Lcom/vzw/location/VzwLocationManagerService$Listener;
    :try_start_1
    iget-object v0, v10, Lcom/vzw/location/VzwLocationManagerService$Listener;->mListener:Lcom/vzw/location/IVzwGpsStatusListener;

    iget v1, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mSvCount:I

    iget-object v2, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mSvs:[I

    iget-object v3, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mSnrs:[F

    iget-object v4, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mSvElevations:[F

    iget-object v5, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mSvAzimuths:[F

    iget v6, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mSvUsedForFixMask:I

    invoke-interface/range {v0 .. v6}, Lcom/vzw/location/IVzwGpsStatusListener;->onSvStatusChanged(I[I[F[F[FI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 822
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 827
    :catch_0
    move-exception v7

    .line 828
    .local v7, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v0, "VzwLocationMgrService"

    const-string v1, "RemoteException in reportSvStatus()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/vzw/location/VzwLocationManagerService;->access$600(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 831
    add-int/lit8 v12, v12, -0x1

    goto :goto_3

    .line 834
    .end local v7           #e:Landroid/os/RemoteException;
    .end local v10           #listener:Lcom/vzw/location/VzwLocationManagerService$Listener;
    :cond_2
    monitor-exit v13

    .line 835
    return-void

    .line 834
    .end local v12           #size:I
    :catchall_0
    move-exception v0

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
