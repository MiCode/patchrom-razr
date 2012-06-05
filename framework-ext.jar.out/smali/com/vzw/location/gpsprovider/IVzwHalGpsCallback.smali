.class public interface abstract Lcom/vzw/location/gpsprovider/IVzwHalGpsCallback;
.super Ljava/lang/Object;
.source "IVzwHalGpsCallback.java"

# interfaces
.implements Lcom/vzw/location/ILocationCallback;


# virtual methods
.method public abstract ReportEngineStatus(I)V
.end method

.method public abstract ReportGpsStatus(I)V
.end method

.method public abstract ReportLocation(Lcom/vzw/location/gpsprovider/VzwHalLocation;)V
.end method

.method public abstract ReportSvStatus(Lcom/vzw/location/gpsprovider/VzwHalSvInfo;)V
.end method
