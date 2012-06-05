.class public interface abstract Lcom/motorola/safenetvpn/ISafenetVpnProvisionService;
.super Ljava/lang/Object;
.source "ISafenetVpnProvisionService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/safenetvpn/ISafenetVpnProvisionService$Stub;
    }
.end annotation


# virtual methods
.method public abstract deleteAuthentecVPNConfig()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract provisionAuthentecVPNConfig([BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
