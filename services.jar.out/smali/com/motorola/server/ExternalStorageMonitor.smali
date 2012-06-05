.class public Lcom/motorola/server/ExternalStorageMonitor;
.super Landroid/os/storage/StorageEventListener;
.source "ExternalStorageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/server/ExternalStorageMonitor$MonitorStorage;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_INTERNAL_STORAGE_THRESHOLD_PERCENTAGE:I = 0xc

.field private static final DEFAULT_STORAGE_MONITOR_INTERVAL:I = 0x5

.field private static final DEFAULT_STORAGE_THRESHOLD_PERCENTAGE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ExternalStorageMonitor"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCountdown:I

.field private mNotificationMgr:Landroid/app/NotificationManager;

.field private mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/server/ExternalStorageMonitor$MonitorStorage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    .line 38
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/motorola/server/ExternalStorageMonitor;->mStorages:Ljava/util/List;

    .line 42
    const/4 v6, 0x5

    iput v6, p0, Lcom/motorola/server/ExternalStorageMonitor;->mCountdown:I

    .line 44
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/motorola/server/ExternalStorageMonitor;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 84
    new-instance v6, Lcom/motorola/server/ExternalStorageMonitor$1;

    invoke-direct {v6, p0}, Lcom/motorola/server/ExternalStorageMonitor$1;-><init>(Lcom/motorola/server/ExternalStorageMonitor;)V

    iput-object v6, p0, Lcom/motorola/server/ExternalStorageMonitor;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 48
    iput-object p1, p0, Lcom/motorola/server/ExternalStorageMonitor;->mContext:Landroid/content/Context;

    .line 50
    iget-object v6, p0, Lcom/motorola/server/ExternalStorageMonitor;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    iput-object v6, p0, Lcom/motorola/server/ExternalStorageMonitor;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 53
    iget-object v6, p0, Lcom/motorola/server/ExternalStorageMonitor;->mContext:Landroid/content/Context;

    const-string v7, "storage"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    .line 54
    .local v3, sm:Landroid/os/storage/StorageManager;
    if-nez v3, :cond_0

    .line 55
    const-string v6, "ExternalStorageMonitor"

    const-string v7, "Unable to access Storage Manager!"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 61
    .local v5, volumes:[Landroid/os/storage/StorageVolume;
    move-object v0, v5

    .local v0, arr$:[Landroid/os/storage/StorageVolume;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 63
    .local v4, sv:Landroid/os/storage/StorageVolume;
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/mnt/usbdisk"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 65
    iget-object v6, p0, Lcom/motorola/server/ExternalStorageMonitor;->mStorages:Ljava/util/List;

    new-instance v7, Lcom/motorola/server/ExternalStorageMonitor$MonitorStorage;

    invoke-direct {v7, p0, v4}, Lcom/motorola/server/ExternalStorageMonitor$MonitorStorage;-><init>(Lcom/motorola/server/ExternalStorageMonitor;Landroid/os/storage/StorageVolume;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 69
    .end local v4           #sv:Landroid/os/storage/StorageVolume;
    :cond_2
    iget-object v6, p0, Lcom/motorola/server/ExternalStorageMonitor;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v3, v6}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/motorola/server/ExternalStorageMonitor;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/motorola/server/ExternalStorageMonitor;->mStorages:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/server/ExternalStorageMonitor;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/motorola/server/ExternalStorageMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/server/ExternalStorageMonitor;)Landroid/app/NotificationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/motorola/server/ExternalStorageMonitor;->mNotificationMgr:Landroid/app/NotificationManager;

    return-object v0
.end method


# virtual methods
.method public check()V
    .locals 3

    .prologue
    .line 75
    iget v2, p0, Lcom/motorola/server/ExternalStorageMonitor;->mCountdown:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/motorola/server/ExternalStorageMonitor;->mCountdown:I

    if-nez v2, :cond_1

    .line 76
    iget-object v2, p0, Lcom/motorola/server/ExternalStorageMonitor;->mStorages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/server/ExternalStorageMonitor$MonitorStorage;

    .line 77
    .local v1, ms:Lcom/motorola/server/ExternalStorageMonitor$MonitorStorage;
    invoke-virtual {v1}, Lcom/motorola/server/ExternalStorageMonitor$MonitorStorage;->check()V

    goto :goto_0

    .line 79
    .end local v1           #ms:Lcom/motorola/server/ExternalStorageMonitor$MonitorStorage;
    :cond_0
    const/4 v2, 0x5

    iput v2, p0, Lcom/motorola/server/ExternalStorageMonitor;->mCountdown:I

    .line 81
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method
