.class public interface abstract Lcom/motorola/sensorhub/ISensorHub;
.super Ljava/lang/Object;
.source "ISensorHub.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/sensorhub/ISensorHub$Stub;
    }
.end annotation


# virtual methods
.method public abstract disableMovement(Lcom/motorola/sensorhub/ISensorHubMovementListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract disableRadius(Lcom/motorola/sensorhub/ISensorHubRadiusListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract enableMovement(Lcom/motorola/sensorhub/ISensorHubMovementListener;II)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract enableRadius(Lcom/motorola/sensorhub/ISensorHubRadiusListener;F)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
