.class public Lcom/vzw/location/VzwLocationProviderProxy;
.super Ljava/lang/Object;
.source "VzwLocationProviderProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VzwLocationProviderProxy"


# instance fields
.field private mLocationTracking:Z

.field private final mName:Ljava/lang/String;

.field private final mProvider:Lcom/vzw/location/gpsprovider/IVzwHalGpsLocationProvider;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/vzw/location/gpsprovider/IVzwHalGpsLocationProvider;)V
    .locals 1
    .parameter "name"
    .parameter "provider"

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mLocationTracking:Z

    .line 30
    iput-object p1, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mName:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mProvider:Lcom/vzw/location/gpsprovider/IVzwHalGpsLocationProvider;

    .line 32
    return-void
.end method


# virtual methods
.method public addListener(I)V
    .locals 1
    .parameter "uid"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mProvider:Lcom/vzw/location/gpsprovider/IVzwHalGpsLocationProvider;

    invoke-interface {v0, p1}, Lcom/vzw/location/gpsprovider/IVzwHalGpsLocationProvider;->addListener(I)V

    .line 120
    return-void
.end method

.method public getAccuracy()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mProvider:Lcom/vzw/location/gpsprovider/IVzwHalGpsLocationProvider;

    invoke-interface {v0}, Lcom/vzw/location/gpsprovider/IVzwHalGpsLocationProvider;->getAccuracy()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mName:Ljava/lang/String;

    return-object v0
.end method

.method getPdeAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mProvider:Lcom/vzw/location/gpsprovider/IVzwHalGpsLocationProvider;

    invoke-interface {v0}, Lcom/vzw/location/gpsprovider/IVzwHalGpsLocationProvider;->getPdeAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getPowerRequirement()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mProvider:Lcom/vzw/location/gpsprovider/IVzwHalGpsLocationProvider;

    invoke-interface {v0}, Lcom/vzw/location/gpsprovider/IVzwHalGpsLocationProvider;->getPowerRequirement()I

    move-result v0

    return v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .locals 1
    .parameter "extras"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mProvider:Lcom/vzw/location/gpsprovider/IVzwHalGpsLocationProvider;

    invoke-interface {v0, p1}, Lcom/vzw/location/gpsprovider/IVzwHalGpsLocationProvider;->getStatus(Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public getStatusUpdateTime()J
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mProvider:Lcom/vzw/location/gpsprovider/IVzwHalGpsLocationProvider;

    invoke-interface {v0}, Lcom/vzw/location/gpsprovider/IVzwHalGpsLocationProvider;->getStatusUpdateTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasMonetaryCost()Z
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mProvider:Lcom/vzw/location/gpsprovider/IVzwHalGpsLocationProvider;

    invoke-interface {v0}, Lcom/vzw/location/gpsprovider/IVzwHalGpsLocationProvider;->hasMonetaryCost()Z

    move-result v0

    return v0
.end method

.method public init(Lcom/vzw/location/gpsprovider/IVzwHalGpsCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mProvider:Lcom/vzw/location/gpsprovider/IVzwHalGpsLocationProvider;

    invoke-interface {v0, p1}, Lcom/vzw/location/gpsprovider/IVzwHalGpsLocationProvider;->init(Lcom/vzw/location/gpsprovider/IVzwHalGpsCallback;)V

    .line 76
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mProvider:Lcom/vzw/location/gpsprovider/IVzwHalGpsLocationProvider;

    invoke-interface {v0}, Lcom/vzw/location/gpsprovider/IVzwHalGpsLocationProvider;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isLocationTracking()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mLocationTracking:Z

    return v0
.end method

.method public removeListener(I)V
    .locals 1
    .parameter "uid"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mProvider:Lcom/vzw/location/gpsprovider/IVzwHalGpsLocationProvider;

    invoke-interface {v0, p1}, Lcom/vzw/location/gpsprovider/IVzwHalGpsLocationProvider;->removeListener(I)V

    .line 124
    return-void
.end method

.method public requiresCell()Z
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mProvider:Lcom/vzw/location/gpsprovider/IVzwHalGpsLocationProvider;

    invoke-interface {v0}, Lcom/vzw/location/gpsprovider/IVzwHalGpsLocationProvider;->requiresCell()Z

    move-result v0

    return v0
.end method

.method public requiresNetwork()Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mProvider:Lcom/vzw/location/gpsprovider/IVzwHalGpsLocationProvider;

    invoke-interface {v0}, Lcom/vzw/location/gpsprovider/IVzwHalGpsLocationProvider;->requiresNetwork()Z

    move-result v0

    return v0
.end method

.method public requiresSatellite()Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mProvider:Lcom/vzw/location/gpsprovider/IVzwHalGpsLocationProvider;

    invoke-interface {v0}, Lcom/vzw/location/gpsprovider/IVzwHalGpsLocationProvider;->requiresSatellite()Z

    move-result v0

    return v0
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .parameter "command"
    .parameter "extras"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mProvider:Lcom/vzw/location/gpsprovider/IVzwHalGpsLocationProvider;

    invoke-interface {v0, p1, p2}, Lcom/vzw/location/gpsprovider/IVzwHalGpsLocationProvider;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method setPdeAddress(Ljava/net/InetSocketAddress;)V
    .locals 1
    .parameter "address"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mProvider:Lcom/vzw/location/gpsprovider/IVzwHalGpsLocationProvider;

    invoke-interface {v0, p1}, Lcom/vzw/location/gpsprovider/IVzwHalGpsLocationProvider;->setPdeAddress(Ljava/net/InetSocketAddress;)V

    .line 108
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mProvider:Lcom/vzw/location/gpsprovider/IVzwHalGpsLocationProvider;

    invoke-interface {v0}, Lcom/vzw/location/gpsprovider/IVzwHalGpsLocationProvider;->shutdown()V

    .line 80
    return-void
.end method

.method start(Lcom/vzw/location/gpsprovider/VzwHalCriteria;IZ)Z
    .locals 1
    .parameter "criteria"
    .parameter "sessionId"
    .parameter "silent"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mProvider:Lcom/vzw/location/gpsprovider/IVzwHalGpsLocationProvider;

    invoke-interface {v0, p1, p2, p3}, Lcom/vzw/location/gpsprovider/IVzwHalGpsLocationProvider;->start(Lcom/vzw/location/gpsprovider/VzwHalCriteria;IZ)Z

    move-result v0

    return v0
.end method

.method stop(Z)Z
    .locals 1
    .parameter "silent"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mProvider:Lcom/vzw/location/gpsprovider/IVzwHalGpsLocationProvider;

    invoke-interface {v0, p1}, Lcom/vzw/location/gpsprovider/IVzwHalGpsLocationProvider;->stop(Z)Z

    move-result v0

    return v0
.end method

.method public supportsAltitude()Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mProvider:Lcom/vzw/location/gpsprovider/IVzwHalGpsLocationProvider;

    invoke-interface {v0}, Lcom/vzw/location/gpsprovider/IVzwHalGpsLocationProvider;->supportsAltitude()Z

    move-result v0

    return v0
.end method

.method public supportsBearing()Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mProvider:Lcom/vzw/location/gpsprovider/IVzwHalGpsLocationProvider;

    invoke-interface {v0}, Lcom/vzw/location/gpsprovider/IVzwHalGpsLocationProvider;->supportsBearing()Z

    move-result v0

    return v0
.end method

.method public supportsSpeed()Z
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mProvider:Lcom/vzw/location/gpsprovider/IVzwHalGpsLocationProvider;

    invoke-interface {v0}, Lcom/vzw/location/gpsprovider/IVzwHalGpsLocationProvider;->supportsSpeed()Z

    move-result v0

    return v0
.end method

.method public updateNetworkState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mProvider:Lcom/vzw/location/gpsprovider/IVzwHalGpsLocationProvider;

    invoke-interface {v0, p1}, Lcom/vzw/location/gpsprovider/IVzwHalGpsLocationProvider;->updateNetworkState(I)V

    .line 116
    return-void
.end method
