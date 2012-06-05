.class Lcom/android/server/MountService$1;
.super Landroid/content/BroadcastReceiver;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
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
    .line 527
    iput-object p1, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v8, 0x65

    const/4 v6, 0x3

    const/4 v1, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 530
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 532
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 533
    iget-object v4, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #setter for: Lcom/android/server/MountService;->mBooted:Z
    invoke-static {v4, v1}, Lcom/android/server/MountService;->access$902(Lcom/android/server/MountService;Z)Z

    .line 535
    iget-object v4, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    iget-object v4, v4, Lcom/android/server/MountService;->mDpm:Lcom/motorola/motepm/MotDevicePolicyManager;

    if-eqz v4, :cond_0

    .line 536
    iget-object v4, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    iget-object v5, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    iget-object v5, v5, Lcom/android/server/MountService;->mDpm:Lcom/motorola/motepm/MotDevicePolicyManager;

    invoke-virtual {v5, v7, v6}, Lcom/motorola/motepm/MotDevicePolicyManager;->isPolicyAllowed(Landroid/content/ComponentName;I)Z

    move-result v5

    #setter for: Lcom/android/server/MountService;->mIsAllowed:Z
    invoke-static {v4, v5}, Lcom/android/server/MountService;->access$602(Lcom/android/server/MountService;Z)Z

    .line 545
    :cond_0
    const-string v4, "simulator"

    const-string v5, "ro.product.device"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 546
    iget-object v4, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const-string v5, "/sdcard"

    const/4 v6, 0x4

    #calls: Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static {v4, v7, v5, v3, v6}, Lcom/android/server/MountService;->access$800(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V

    .line 645
    :cond_1
    :goto_0
    return-void

    .line 550
    :cond_2
    new-instance v3, Lcom/android/server/MountService$1$1;

    invoke-direct {v3, p0}, Lcom/android/server/MountService$1$1;-><init>(Lcom/android/server/MountService$1;)V

    invoke-virtual {v3}, Lcom/android/server/MountService$1$1;->start()V

    goto :goto_0

    .line 610
    :cond_3
    const-string v4, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 611
    const-string v4, "connected"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "mass_storage"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 615
    .local v1, available:Z
    :goto_1
    iget-object v3, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mUmsAvailable:Z
    invoke-static {v3}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;)Z

    move-result v3

    if-eq v1, v3, :cond_1

    .line 616
    iget-object v3, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->notifyShareAvailabilityChange(Z)V
    invoke-static {v3, v1}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;Z)V

    goto :goto_0

    .end local v1           #available:Z
    :cond_4
    move v1, v3

    .line 611
    goto :goto_1

    .line 621
    :cond_5
    const-string v3, "com.motorola.app.action.SD_CARD_ALLOWED_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 624
    iget-object v3, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    iget-object v3, v3, Lcom/android/server/MountService;->mDpm:Lcom/motorola/motepm/MotDevicePolicyManager;

    invoke-virtual {v3, v7, v6}, Lcom/motorola/motepm/MotDevicePolicyManager;->isPolicyAllowed(Landroid/content/ComponentName;I)Z

    move-result v3

    invoke-static {v3}, Lcom/android/server/MountService;->access$502(Z)Z

    .line 625
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Policy changed, mVolatileIsAllowed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/server/MountService;->access$500()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget-object v3, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 627
    iget-object v3, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v8, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 633
    :cond_6
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 634
    const-string v3, "MountService"

    const-string v4, "reload storage list on locale changed"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v3, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/MountService;->access$700(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 638
    iget-object v3, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumeMap:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/server/MountService;->access$1700(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 639
    iget-object v3, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #setter for: Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v3, v7}, Lcom/android/server/MountService;->access$1802(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;

    .line 641
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 642
    .local v2, resources:Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->readStorageList(Landroid/content/res/Resources;)V
    invoke-static {v3, v2}, Lcom/android/server/MountService;->access$1900(Lcom/android/server/MountService;Landroid/content/res/Resources;)V

    goto/16 :goto_0
.end method
