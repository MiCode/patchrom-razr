.class Lcom/motorola/motepm/MotDevicePolicyManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "MotDevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/motepm/MotDevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;


# direct methods
.method constructor <init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 631
    iput-object p1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$MyPackageMonitor;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onSomePackagesChanged()V
    .locals 9

    .prologue
    .line 637
    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$MyPackageMonitor;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    monitor-enter v6

    .line 638
    const/4 v4, 0x0

    .line 639
    .local v4, removed:Z
    :try_start_0
    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$MyPackageMonitor;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    iget-object v5, v5, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_3

    .line 640
    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$MyPackageMonitor;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    iget-object v5, v5, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 641
    .local v0, aa:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-object v5, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v5}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/motorola/motepm/MotDevicePolicyManagerService$MyPackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v1

    .line 642
    .local v1, change:I
    const/4 v5, 0x3

    if-eq v1, v5, :cond_0

    const/4 v5, 0x2

    if-ne v1, v5, :cond_2

    .line 644
    :cond_0
    const-string v5, "MotDevicePolicyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin unexpectedly uninstalled: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v8}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const/4 v4, 0x1

    .line 647
    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$MyPackageMonitor;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    iget-object v5, v5, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 639
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 648
    :cond_2
    iget-object v5, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v5}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/motorola/motepm/MotDevicePolicyManagerService$MyPackageMonitor;->isPackageModified(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    .line 650
    :try_start_1
    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$MyPackageMonitor;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    iget-object v5, v5, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v7, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v7}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 652
    :catch_0
    move-exception v2

    .line 653
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    const-string v5, "MotDevicePolicyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin package change removed component: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v8}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const/4 v4, 0x1

    .line 656
    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$MyPackageMonitor;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    iget-object v5, v5, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 660
    .end local v0           #aa:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    .end local v1           #change:I
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3           #i:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .restart local v3       #i:I
    :cond_3
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 661
    return-void
.end method
