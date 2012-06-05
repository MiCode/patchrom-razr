.class public interface abstract Lcom/vzw/location/gpsprovider/IVzwHalGpsLocationProvider;
.super Ljava/lang/Object;
.source "IVzwHalGpsLocationProvider.java"

# interfaces
.implements Lcom/vzw/location/ILocationProvider;


# virtual methods
.method public abstract getPdeAddress()Ljava/net/InetSocketAddress;
.end method

.method public abstract init(Lcom/vzw/location/gpsprovider/IVzwHalGpsCallback;)V
.end method

.method public abstract setPdeAddress(Ljava/net/InetSocketAddress;)V
.end method

.method public abstract shutdown()V
.end method

.method public abstract start(Lcom/vzw/location/gpsprovider/VzwHalCriteria;IZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method public abstract stop(Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method
