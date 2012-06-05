.class public interface abstract Lcom/vzw/location/ILocationProvider;
.super Ljava/lang/Object;
.source "ILocationProvider.java"


# virtual methods
.method public abstract addListener(I)V
.end method

.method public abstract getAccuracy()I
.end method

.method public abstract getPowerRequirement()I
.end method

.method public abstract getStatus(Landroid/os/Bundle;)I
.end method

.method public abstract getStatusUpdateTime()J
.end method

.method public abstract hasMonetaryCost()Z
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract removeListener(I)V
.end method

.method public abstract requiresCell()Z
.end method

.method public abstract requiresNetwork()Z
.end method

.method public abstract requiresSatellite()Z
.end method

.method public abstract sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
.end method

.method public abstract supportsAltitude()Z
.end method

.method public abstract supportsBearing()Z
.end method

.method public abstract supportsSpeed()Z
.end method

.method public abstract updateNetworkState(I)V
.end method
