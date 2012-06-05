.class Lcom/android/server/WallpaperManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WallpaperManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/WallpaperManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method doPackagesChanged(Z)Z
    .locals 10
    .parameter "doit"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    .line 384
    const/4 v1, 0x0

    .line 385
    .local v1, changed:Z
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v5, v4, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 387
    :try_start_0
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    #getter for: Lcom/android/server/WallpaperManagerService;->mWebtopManager:Lcom/motorola/webtop/WebtopManager;
    invoke-static {v4}, Lcom/android/server/WallpaperManagerService;->access$000(Lcom/android/server/WallpaperManagerService;)Lcom/motorola/webtop/WebtopManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/webtop/WebtopManager;->isWebtopMode()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 388
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v4, v4, Lcom/android/server/WallpaperManagerService;->mWebtopWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_1

    .line 389
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v4, v4, Lcom/android/server/WallpaperManagerService;->mWebtopWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v0

    .line 390
    .local v0, change:I
    if-eq v0, v9, :cond_0

    if-ne v0, v8, :cond_1

    .line 392
    :cond_0
    const/4 v1, 0x1

    .line 393
    if-eqz p1, :cond_1

    .line 394
    const-string v4, "WallpaperService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wallpaper uninstalled, removing: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v7, v7, Lcom/android/server/WallpaperManagerService;->mWebtopWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/server/WallpaperManagerService;->clearWallpaperLocked(Z)V

    .line 399
    .end local v0           #change:I
    :cond_1
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v4, v4, Lcom/android/server/WallpaperManagerService;->mWebtopNextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_3

    .line 400
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v4, v4, Lcom/android/server/WallpaperManagerService;->mWebtopNextWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v0

    .line 401
    .restart local v0       #change:I
    if-eq v0, v9, :cond_2

    if-ne v0, v8, :cond_3

    .line 403
    :cond_2
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/server/WallpaperManagerService;->mWebtopNextWallpaperComponent:Landroid/content/ComponentName;

    .line 406
    .end local v0           #change:I
    :cond_3
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v4, v4, Lcom/android/server/WallpaperManagerService;->mWebtopWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v4, v4, Lcom/android/server/WallpaperManagerService;->mWebtopWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->isPackageModified(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_4

    .line 409
    :try_start_1
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v4, v4, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v6, v6, Lcom/android/server/WallpaperManagerService;->mWebtopWallpaperComponent:Landroid/content/ComponentName;

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 416
    :cond_4
    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v4, v4, Lcom/android/server/WallpaperManagerService;->mWebtopNextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v4, v4, Lcom/android/server/WallpaperManagerService;->mWebtopNextWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->isPackageModified(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-eqz v4, :cond_5

    .line 419
    :try_start_3
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v4, v4, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v6, v6, Lcom/android/server/WallpaperManagerService;->mWebtopNextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 426
    :cond_5
    :goto_1
    :try_start_4
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v4, v4, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_8

    .line 427
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v4, v4, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v0

    .line 428
    .restart local v0       #change:I
    if-eq v0, v9, :cond_6

    if-ne v0, v8, :cond_8

    .line 430
    :cond_6
    if-eqz p1, :cond_8

    .line 431
    sget-object v3, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FILE:Ljava/io/File;

    .line 432
    .local v3, f:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 433
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 435
    :cond_7
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    .line 439
    .end local v0           #change:I
    .end local v3           #f:Ljava/io/File;
    :cond_8
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v4, v4, Lcom/android/server/WallpaperManagerService;->mNextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_a

    .line 440
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v4, v4, Lcom/android/server/WallpaperManagerService;->mNextWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v0

    .line 441
    .restart local v0       #change:I
    if-eq v0, v9, :cond_9

    if-ne v0, v8, :cond_a

    .line 443
    :cond_9
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/server/WallpaperManagerService;->mNextWallpaperComponent:Landroid/content/ComponentName;

    .line 530
    .end local v0           #change:I
    :cond_a
    :goto_2
    monitor-exit v5

    .line 531
    return v1

    .line 411
    :catch_0
    move-exception v2

    .line 412
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "WallpaperService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wallpaper component gone, removing: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v7, v7, Lcom/android/server/WallpaperManagerService;->mWebtopWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/server/WallpaperManagerService;->clearWallpaperLocked(Z)V

    goto/16 :goto_0

    .line 530
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 421
    :catch_1
    move-exception v2

    .line 422
    .restart local v2       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_5
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/server/WallpaperManagerService;->mWebtopNextWallpaperComponent:Landroid/content/ComponentName;

    goto :goto_1

    .line 449
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_b
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v4, v4, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_11

    .line 450
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v4, v4, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v0

    .line 451
    .restart local v0       #change:I
    if-eq v0, v9, :cond_c

    if-ne v0, v8, :cond_11

    .line 453
    :cond_c
    const/4 v1, 0x1

    .line 454
    if-eqz p1, :cond_11

    .line 455
    const-string v4, "WallpaperService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wallpaper uninstalled, removing: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v7, v7, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v4, v4, Lcom/android/server/WallpaperManagerService;->mWebtopWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v4, v4, Lcom/android/server/WallpaperManagerService;->mWebtopWallpaperComponent:Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v6, v6, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v4, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 458
    sget-object v3, Lcom/android/server/WallpaperManagerService;->WALLPAPER_WT_FILE:Ljava/io/File;

    .line 459
    .restart local v3       #f:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 460
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 462
    :cond_d
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/server/WallpaperManagerService;->mWebtopWallpaperComponent:Landroid/content/ComponentName;

    .line 464
    .end local v3           #f:Ljava/io/File;
    :cond_e
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v4, v4, Lcom/android/server/WallpaperManagerService;->mWebtopNextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v4, v4, Lcom/android/server/WallpaperManagerService;->mWebtopNextWallpaperComponent:Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v6, v6, Lcom/android/server/WallpaperManagerService;->mNextWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v4, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 465
    sget-object v3, Lcom/android/server/WallpaperManagerService;->WALLPAPER_WT_FILE:Ljava/io/File;

    .line 466
    .restart local v3       #f:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 467
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 469
    :cond_f
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/server/WallpaperManagerService;->mWebtopNextWallpaperComponent:Landroid/content/ComponentName;

    .line 472
    .end local v3           #f:Ljava/io/File;
    :cond_10
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/server/WallpaperManagerService;->clearWallpaperLocked(Z)V

    .line 476
    .end local v0           #change:I
    :cond_11
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v4, v4, Lcom/android/server/WallpaperManagerService;->mNextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_13

    .line 477
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v4, v4, Lcom/android/server/WallpaperManagerService;->mNextWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v0

    .line 478
    .restart local v0       #change:I
    if-eq v0, v9, :cond_12

    if-ne v0, v8, :cond_13

    .line 480
    :cond_12
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/server/WallpaperManagerService;->mNextWallpaperComponent:Landroid/content/ComponentName;

    .line 483
    .end local v0           #change:I
    :cond_13
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v4, v4, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_14

    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v4, v4, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->isPackageModified(Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v4

    if-eqz v4, :cond_14

    .line 486
    :try_start_6
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v4, v4, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v6, v6, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_2

    .line 493
    :cond_14
    :goto_3
    :try_start_7
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v4, v4, Lcom/android/server/WallpaperManagerService;->mNextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v4, v4, Lcom/android/server/WallpaperManagerService;->mNextWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->isPackageModified(Ljava/lang/String;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v4

    if-eqz v4, :cond_15

    .line 496
    :try_start_8
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v4, v4, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v6, v6, Lcom/android/server/WallpaperManagerService;->mNextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_3

    .line 503
    :cond_15
    :goto_4
    :try_start_9
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v4, v4, Lcom/android/server/WallpaperManagerService;->mWebtopWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_18

    .line 504
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v4, v4, Lcom/android/server/WallpaperManagerService;->mWebtopWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v0

    .line 505
    .restart local v0       #change:I
    if-eq v0, v9, :cond_16

    if-ne v0, v8, :cond_18

    .line 507
    :cond_16
    if-eqz p1, :cond_18

    .line 508
    sget-object v3, Lcom/android/server/WallpaperManagerService;->WALLPAPER_WT_FILE:Ljava/io/File;

    .line 509
    .restart local v3       #f:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 510
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 512
    :cond_17
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/server/WallpaperManagerService;->mWebtopWallpaperComponent:Landroid/content/ComponentName;

    .line 513
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/server/WallpaperManagerService;->mWebtopNextWallpaperComponent:Landroid/content/ComponentName;

    .line 517
    .end local v0           #change:I
    .end local v3           #f:Ljava/io/File;
    :cond_18
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v4, v4, Lcom/android/server/WallpaperManagerService;->mWebtopNextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_a

    .line 518
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v4, v4, Lcom/android/server/WallpaperManagerService;->mWebtopNextWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v0

    .line 519
    .restart local v0       #change:I
    if-eq v0, v9, :cond_19

    if-ne v0, v8, :cond_a

    .line 521
    :cond_19
    sget-object v3, Lcom/android/server/WallpaperManagerService;->WALLPAPER_WT_FILE:Ljava/io/File;

    .line 522
    .restart local v3       #f:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 523
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 525
    :cond_1a
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/server/WallpaperManagerService;->mWebtopNextWallpaperComponent:Landroid/content/ComponentName;

    goto/16 :goto_2

    .line 488
    .end local v0           #change:I
    .end local v3           #f:Ljava/io/File;
    :catch_2
    move-exception v2

    .line 489
    .restart local v2       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "WallpaperService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wallpaper component gone, removing: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v7, v7, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/server/WallpaperManagerService;->clearWallpaperLocked(Z)V

    goto/16 :goto_3

    .line 498
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_3
    move-exception v2

    .line 499
    .restart local v2       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/server/WallpaperManagerService;->mNextWallpaperComponent:Landroid/content/ComponentName;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4
.end method

.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 1
    .parameter "intent"
    .parameter "packages"
    .parameter "uid"
    .parameter "doit"

    .prologue
    .line 375
    invoke-virtual {p0, p4}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->doPackagesChanged(Z)Z

    move-result v0

    return v0
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 339
    const/4 v0, 0x0

    .line 340
    .local v0, doChange:Z
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v2, v1, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 341
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v1, v1, Lcom/android/server/WallpaperManagerService;->mWebtopWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v1, v1, Lcom/android/server/WallpaperManagerService;->mWebtopWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v1, v1, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v1, v1, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 345
    :cond_1
    const/4 v0, 0x1

    .line 348
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    if-eqz v0, :cond_3

    .line 350
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->doPackagesChanged(Z)Z

    .line 352
    :cond_3
    return-void

    .line 348
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 5
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 307
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v2, v1, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 309
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    #getter for: Lcom/android/server/WallpaperManagerService;->mWebtopManager:Lcom/motorola/webtop/WebtopManager;
    invoke-static {v1}, Lcom/android/server/WallpaperManagerService;->access$000(Lcom/android/server/WallpaperManagerService;)Lcom/motorola/webtop/WebtopManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/webtop/WebtopManager;->isWebtopMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 310
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v1, v1, Lcom/android/server/WallpaperManagerService;->mWebtopWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v1, v1, Lcom/android/server/WallpaperManagerService;->mWebtopWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/WallpaperManagerService;->mWallpaperUpdating:Z

    .line 313
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v0, v1, Lcom/android/server/WallpaperManagerService;->mWebtopWallpaperComponent:Landroid/content/ComponentName;

    .line 314
    .local v0, comp:Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    invoke-virtual {v1}, Lcom/android/server/WallpaperManagerService;->clearWallpaperComponentLocked()V

    .line 315
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 316
    const-string v1, "WallpaperService"

    const-string v3, "Wallpaper no longer available; reverting to default"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/WallpaperManagerService;->clearWallpaperLocked(Z)V

    .line 333
    .end local v0           #comp:Landroid/content/ComponentName;
    :cond_0
    :goto_0
    monitor-exit v2

    .line 334
    return-void

    .line 322
    :cond_1
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v1, v1, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v1, v1, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/WallpaperManagerService;->mWallpaperUpdating:Z

    .line 325
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v0, v1, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    .line 326
    .restart local v0       #comp:Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    invoke-virtual {v1}, Lcom/android/server/WallpaperManagerService;->clearWallpaperComponentLocked()V

    .line 327
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 328
    const-string v1, "WallpaperService"

    const-string v3, "Wallpaper no longer available; reverting to default"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/WallpaperManagerService;->clearWallpaperLocked(Z)V

    goto :goto_0

    .line 333
    .end local v0           #comp:Landroid/content/ComponentName;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPackageUpdateStarted(Ljava/lang/String;I)V
    .locals 3
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v1, v0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 358
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    #getter for: Lcom/android/server/WallpaperManagerService;->mWebtopManager:Lcom/motorola/webtop/WebtopManager;
    invoke-static {v0}, Lcom/android/server/WallpaperManagerService;->access$000(Lcom/android/server/WallpaperManagerService;)Lcom/motorola/webtop/WebtopManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/webtop/WebtopManager;->isWebtopMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mWebtopWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mWebtopWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/WallpaperManagerService;->mWallpaperUpdating:Z

    .line 370
    :cond_0
    :goto_0
    monitor-exit v1

    .line 371
    return-void

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/WallpaperManagerService;->mWallpaperUpdating:Z

    goto :goto_0

    .line 370
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSomePackagesChanged()V
    .locals 1

    .prologue
    .line 380
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->doPackagesChanged(Z)Z

    .line 381
    return-void
.end method
