.class Lcom/android/server/MountService$MountServiceHandler;
.super Landroid/os/Handler;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MountServiceHandler"
.end annotation


# instance fields
.field mForceUnmounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/MountService$UnmountCallBack;",
            ">;"
        }
    .end annotation
.end field

.field mUpdatingStatus:Z

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter "l"

    .prologue
    .line 396
    iput-object p1, p0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    .line 397
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 393
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    .line 394
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    .line 398
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .parameter "msg"

    .prologue
    .line 402
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    sparse-switch v13, :sswitch_data_0

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 405
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/server/MountService$UnmountCallBack;

    .line 406
    .local v11, ucb:Lcom/android/server/MountService$UnmountCallBack;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    if-nez v13, :cond_0

    .line 411
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    .line 412
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;
    invoke-static {v13}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    goto :goto_0

    .line 419
    .end local v11           #ucb:Lcom/android/server/MountService$UnmountCallBack;
    :sswitch_1
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    .line 420
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 421
    .local v7, size:I
    new-array v8, v7, [I

    .line 422
    .local v8, sizeArr:[I
    const/4 v9, 0x0

    .line 424
    .local v9, sizeArrN:I
    const-string v13, "activity"

    invoke-static {v13}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityManagerService;

    .line 426
    .local v1, ams:Lcom/android/server/am/ActivityManagerService;
    const/4 v3, 0x0

    .local v3, i:I
    move v10, v9

    .end local v9           #sizeArrN:I
    .local v10, sizeArrN:I
    :goto_1
    if-ge v3, v7, :cond_8

    .line 427
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/MountService$UnmountCallBack;

    .line 428
    .restart local v11       #ucb:Lcom/android/server/MountService$UnmountCallBack;
    iget-object v5, v11, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    .line 429
    .local v5, path:Ljava/lang/String;
    const/4 v2, 0x0

    .line 430
    .local v2, done:Z
    iget-boolean v13, v11, Lcom/android/server/MountService$UnmountCallBack;->force:Z

    if-nez v13, :cond_2

    .line 431
    const/4 v2, 0x1

    .line 446
    :cond_1
    :goto_2
    if-nez v2, :cond_6

    iget v13, v11, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    const/4 v14, 0x4

    if-ge v13, v14, :cond_6

    .line 448
    const-string v13, "MountService"

    const-string v14, "Retrying to kill storage users again"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v14

    const/4 v15, 0x2

    iget v0, v11, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    iput v0, v11, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    const-wide/16 v15, 0x1e

    invoke-virtual/range {v13 .. v16}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v9, v10

    .line 426
    .end local v10           #sizeArrN:I
    .restart local v9       #sizeArrN:I
    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v10, v9

    .end local v9           #sizeArrN:I
    .restart local v10       #sizeArrN:I
    goto :goto_1

    .line 433
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v13, v5}, Lcom/android/server/MountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v6

    .line 434
    .local v6, pids:[I
    if-eqz v6, :cond_3

    array-length v13, v6

    if-nez v13, :cond_4

    .line 435
    :cond_3
    const/4 v2, 0x1

    goto :goto_2

    .line 438
    :cond_4
    const-string v13, "unmount media"

    const/4 v14, 0x1

    invoke-virtual {v1, v6, v13, v14}, Lcom/android/server/am/ActivityManagerService;->killPids([ILjava/lang/String;Z)Z

    .line 440
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v13, v5}, Lcom/android/server/MountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v6

    .line 441
    if-eqz v6, :cond_5

    array-length v13, v6

    if-nez v13, :cond_1

    .line 442
    :cond_5
    const/4 v2, 0x1

    goto :goto_2

    .line 454
    .end local v6           #pids:[I
    :cond_6
    iget v13, v11, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    const/4 v14, 0x4

    if-lt v13, v14, :cond_7

    .line 455
    const-string v13, "MountService"

    const-string v14, "Failed to unmount media inspite of 4 retries. Forcibly killing processes now"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_7
    add-int/lit8 v9, v10, 0x1

    .end local v10           #sizeArrN:I
    .restart local v9       #sizeArrN:I
    aput v3, v8, v10

    .line 459
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v14

    const/4 v15, 0x3

    invoke-virtual {v14, v15, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 464
    .end local v2           #done:Z
    .end local v5           #path:Ljava/lang/String;
    .end local v9           #sizeArrN:I
    .end local v11           #ucb:Lcom/android/server/MountService$UnmountCallBack;
    .restart local v10       #sizeArrN:I
    :cond_8
    add-int/lit8 v3, v10, -0x1

    :goto_4
    if-ltz v3, :cond_0

    .line 465
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    aget v14, v8, v3

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 464
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 471
    .end local v1           #ams:Lcom/android/server/am/ActivityManagerService;
    .end local v3           #i:I
    .end local v7           #size:I
    .end local v8           #sizeArr:[I
    .end local v10           #sizeArrN:I
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/server/MountService$UnmountCallBack;

    .line 472
    .restart local v11       #ucb:Lcom/android/server/MountService$UnmountCallBack;
    invoke-virtual {v11}, Lcom/android/server/MountService$UnmountCallBack;->handleFinished()V

    goto/16 :goto_0

    .line 478
    .end local v11           #ucb:Lcom/android/server/MountService$UnmountCallBack;
    :sswitch_3
    invoke-static {}, Lcom/android/server/MountService;->access$500()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mIsAllowed:Z
    invoke-static {v14}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)Z

    move-result v14

    if-eq v13, v14, :cond_0

    .line 479
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    invoke-static {}, Lcom/android/server/MountService;->access$500()Z

    move-result v14

    #setter for: Lcom/android/server/MountService;->mIsAllowed:Z
    invoke-static {v13, v14}, Lcom/android/server/MountService;->access$602(Lcom/android/server/MountService;Z)Z

    .line 481
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/server/MountService;->access$700(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_9
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/storage/StorageVolume;

    .line 482
    .local v12, volume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v12}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 484
    .restart local v5       #path:Ljava/lang/String;
    const-string v13, "/mnt/usbdisk"

    invoke-virtual {v5, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 486
    invoke-virtual {v12}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 487
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mIsAllowed:Z
    invoke-static {v13}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 488
    const-string v13, "ctl.start"

    const-string v14, "sdcard"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x4

    move/from16 v0, v16

    #calls: Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static {v13, v14, v5, v15, v0}, Lcom/android/server/MountService;->access$800(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_5

    .line 492
    :cond_a
    const-string v13, "ctl.stop"

    const-string v14, "sdcard"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    const/4 v14, 0x0

    const/4 v15, 0x4

    const/16 v16, 0x1

    move/from16 v0, v16

    #calls: Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static {v13, v14, v5, v15, v0}, Lcom/android/server/MountService;->access$800(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_5

    .line 498
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mIsAllowed:Z
    invoke-static {v13}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 499
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v13, v5}, Lcom/android/server/MountService;->mountVolume(Ljava/lang/String;)I

    goto :goto_5

    .line 501
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v13, v5, v14, v15}, Lcom/android/server/MountService;->unmountVolume(Ljava/lang/String;ZZ)V

    goto :goto_5

    .line 402
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x65 -> :sswitch_3
    .end sparse-switch
.end method
