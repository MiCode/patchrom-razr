.class Lcom/android/server/MountService$2;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->onDaemonConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 0
    .parameter

    .prologue
    .line 747
    iput-object p1, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method private waitForReady()V
    .locals 4

    .prologue
    .line 806
    :goto_0
    const/4 v0, 0x5

    .local v0, retries:I
    :goto_1
    if-lez v0, :cond_1

    .line 807
    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 808
    .local v1, service:Landroid/os/IBinder;
    if-eqz v1, :cond_0

    .line 809
    return-void

    .line 811
    :cond_0
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 806
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 813
    .end local v1           #service:Landroid/os/IBinder;
    :cond_1
    const-string v2, "MountService"

    const-string v3, "Waiting too long for mount service!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 754
    :try_start_0
    iget-object v10, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v10}, Lcom/android/server/MountService;->access$2100(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v10

    const-string v11, "volume list"

    const/16 v12, 0x6e

    invoke-virtual {v10, v11, v12}, Lcom/android/server/NativeDaemonConnector;->doListCommand(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    .line 756
    .local v8, vols:[Ljava/lang/String;
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v9, v0, v2

    .line 757
    .local v9, volstr:Ljava/lang/String;
    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 759
    .local v7, tok:[Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v4, v7, v10

    .line 760
    .local v4, path:Ljava/lang/String;
    const-string v6, "removed"

    .line 762
    .local v6, state:Ljava/lang/String;
    const/4 v10, 0x2

    aget-object v10, v7, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 763
    .local v5, st:I
    if-nez v5, :cond_1

    .line 764
    const-string v6, "removed"

    .line 779
    :goto_1
    if-eqz v6, :cond_0

    .line 781
    invoke-direct {p0}, Lcom/android/server/MountService$2;->waitForReady()V

    .line 782
    iget-object v10, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v4, v6}, Lcom/android/server/MountService;->access$2200(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 766
    :cond_1
    const/4 v10, 0x1

    if-eq v5, v10, :cond_2

    const/16 v10, 0x9

    if-eq v5, v10, :cond_2

    const/16 v10, 0xa

    if-ne v5, v10, :cond_3

    .line 768
    :cond_2
    const-string v6, "unmounted"

    goto :goto_1

    .line 769
    :cond_3
    const/4 v10, 0x4

    if-ne v5, v10, :cond_5

    .line 770
    const-string v6, "mounted"

    .line 771
    const-string v10, "MountService"

    const-string v11, "Media already mounted on daemon connection"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 785
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #path:Ljava/lang/String;
    .end local v5           #st:I
    .end local v6           #state:Ljava/lang/String;
    .end local v7           #tok:[Ljava/lang/String;
    .end local v8           #vols:[Ljava/lang/String;
    .end local v9           #volstr:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 786
    .local v1, e:Ljava/lang/Exception;
    const-string v10, "MountService"

    const-string v11, "Error processing initial volume state"

    invoke-static {v10, v11, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 787
    invoke-direct {p0}, Lcom/android/server/MountService$2;->waitForReady()V

    .line 788
    iget-object v10, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    iget-object v11, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mExternalStoragePath:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/MountService;->access$2300(Lcom/android/server/MountService;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "removed"

    #calls: Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v11, v12}, Lcom/android/server/MountService;->access$2200(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    iget-object v10, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    const/4 v11, 0x1

    #setter for: Lcom/android/server/MountService;->mReady:Z
    invoke-static {v10, v11}, Lcom/android/server/MountService;->access$2402(Lcom/android/server/MountService;Z)Z

    .line 796
    return-void

    .line 772
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v4       #path:Ljava/lang/String;
    .restart local v5       #st:I
    .restart local v6       #state:Ljava/lang/String;
    .restart local v7       #tok:[Ljava/lang/String;
    .restart local v8       #vols:[Ljava/lang/String;
    .restart local v9       #volstr:Ljava/lang/String;
    :cond_5
    const/4 v10, 0x7

    if-ne v5, v10, :cond_6

    .line 773
    :try_start_1
    const-string v6, "shared"

    .line 774
    const-string v10, "MountService"

    const-string v11, "Media shared on daemon connection"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 776
    :cond_6
    new-instance v10, Ljava/lang/Exception;

    const-string v11, "Unexpected state %d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
.end method
