.class Lcom/motorola/safenetvpn/SafenetVpnProvisionManager$1;
.super Ljava/lang/Object;
.source "SafenetVpnProvisionManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;


# direct methods
.method constructor <init>(Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/motorola/safenetvpn/SafenetVpnProvisionManager$1;->this$0:Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "binder"

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/safenetvpn/SafenetVpnProvisionManager$1;->this$0:Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;

    #setter for: Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;->mSafenetVPNProvisionServiceBinder:Landroid/os/IBinder;
    invoke-static {v0, p2}, Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;->access$002(Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 45
    invoke-static {}, Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit p0

    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/motorola/safenetvpn/SafenetVpnProvisionManager$1;->this$0:Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;

    const/4 v1, 0x0

    #setter for: Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;->mSafenetVPNProvisionServiceBinder:Landroid/os/IBinder;
    invoke-static {v0, v1}, Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;->access$002(Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 52
    invoke-static {}, Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void
.end method
