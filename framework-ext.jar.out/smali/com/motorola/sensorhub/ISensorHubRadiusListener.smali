.class public interface abstract Lcom/motorola/sensorhub/ISensorHubRadiusListener;
.super Ljava/lang/Object;
.source "ISensorHubRadiusListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/sensorhub/ISensorHubRadiusListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onExitRadius(FF)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
