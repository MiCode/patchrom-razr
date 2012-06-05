.class Lcom/motorola/server/ExternalStorageMonitor$1;
.super Landroid/os/storage/StorageEventListener;
.source "ExternalStorageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/server/ExternalStorageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/server/ExternalStorageMonitor;


# direct methods
.method constructor <init>(Lcom/motorola/server/ExternalStorageMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/motorola/server/ExternalStorageMonitor$1;->this$0:Lcom/motorola/server/ExternalStorageMonitor;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 87
    const-string v2, "unmounted"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    const-string v2, "ExternalStorageMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " unmounted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v2, p0, Lcom/motorola/server/ExternalStorageMonitor$1;->this$0:Lcom/motorola/server/ExternalStorageMonitor;

    #getter for: Lcom/motorola/server/ExternalStorageMonitor;->mStorages:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/server/ExternalStorageMonitor;->access$000(Lcom/motorola/server/ExternalStorageMonitor;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/server/ExternalStorageMonitor$MonitorStorage;

    .line 90
    .local v1, ms:Lcom/motorola/server/ExternalStorageMonitor$MonitorStorage;
    invoke-virtual {v1}, Lcom/motorola/server/ExternalStorageMonitor$MonitorStorage;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    invoke-virtual {v1}, Lcom/motorola/server/ExternalStorageMonitor$MonitorStorage;->cancelNotification()V

    .line 96
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #ms:Lcom/motorola/server/ExternalStorageMonitor$MonitorStorage;
    :cond_1
    return-void
.end method
