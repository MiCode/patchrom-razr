.class Lcom/motorola/motepm/MotDevicePolicyManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "MotDevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/motepm/MotDevicePolicyManagerService;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

.field final synthetic val$result:Landroid/os/RemoteCallback;


# direct methods
.method constructor <init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;Landroid/os/RemoteCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1304
    iput-object p1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$1;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    iput-object p2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$1;->val$result:Landroid/os/RemoteCallback;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1308
    :try_start_0
    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$1;->val$result:Landroid/os/RemoteCallback;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/motorola/motepm/MotDevicePolicyManagerService$1;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1311
    :goto_0
    return-void

    .line 1309
    :catch_0
    move-exception v0

    goto :goto_0
.end method
