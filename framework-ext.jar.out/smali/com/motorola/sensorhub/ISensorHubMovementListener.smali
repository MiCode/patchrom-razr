.class public interface abstract Lcom/motorola/sensorhub/ISensorHubMovementListener;
.super Ljava/lang/Object;
.source "ISensorHubMovementListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/sensorhub/ISensorHubMovementListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onEndMovement()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onStartMovement()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
