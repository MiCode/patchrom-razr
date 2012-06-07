.class Lcom/motorola/Camera/StoreImageUtility$StoreXmpDataInFiles;
.super Ljava/lang/Object;
.source "StoreImageUtility.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/StoreImageUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StoreXmpDataInFiles"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/Camera/StoreImageUtility;


# direct methods
.method public constructor <init>(Lcom/motorola/Camera/StoreImageUtility;)V
    .locals 0
    .parameter

    .prologue
    .line 826
    iput-object p1, p0, Lcom/motorola/Camera/StoreImageUtility$StoreXmpDataInFiles;->this$0:Lcom/motorola/Camera/StoreImageUtility;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 827
    return-void
.end method

.method private storeXmpDataInFiles()V
    .locals 17

    .prologue
    .line 849
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 850
    const-string v1, "StoreImageUtility"

    const-string v2, "KPI: BURST_JPEG_START_XMP_FILE_WRITE started"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/StoreImageUtility$StoreXmpDataInFiles;->this$0:Lcom/motorola/Camera/StoreImageUtility;

    #getter for: Lcom/motorola/Camera/StoreImageUtility;->mSiuLastPictureInfo:Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;
    invoke-static {v1}, Lcom/motorola/Camera/StoreImageUtility;->access$2100(Lcom/motorola/Camera/StoreImageUtility;)Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;

    move-result-object v1

    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mIsXmpMetaDataStorageEnable:Z
    invoke-static {v1}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$700(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 855
    const/4 v12, 0x1

    .line 857
    .local v12, x:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/StoreImageUtility$StoreXmpDataInFiles;->this$0:Lcom/motorola/Camera/StoreImageUtility;

    #getter for: Lcom/motorola/Camera/StoreImageUtility;->mAStoreImageMemberInfo:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/motorola/Camera/StoreImageUtility;->access$1400(Lcom/motorola/Camera/StoreImageUtility;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 858
    .local v11, size:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/StoreImageUtility$StoreXmpDataInFiles;->this$0:Lcom/motorola/Camera/StoreImageUtility;

    #getter for: Lcom/motorola/Camera/StoreImageUtility;->mSiuLastPictureInfo:Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;
    invoke-static {v1}, Lcom/motorola/Camera/StoreImageUtility;->access$2100(Lcom/motorola/Camera/StoreImageUtility;)Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;

    move-result-object v1

    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mMultiShotMaxCount:I
    invoke-static {v1}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$500(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)I

    move-result v1

    if-le v11, v1, :cond_1

    .line 859
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/StoreImageUtility$StoreXmpDataInFiles;->this$0:Lcom/motorola/Camera/StoreImageUtility;

    #getter for: Lcom/motorola/Camera/StoreImageUtility;->mSiuLastPictureInfo:Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;
    invoke-static {v1}, Lcom/motorola/Camera/StoreImageUtility;->access$2100(Lcom/motorola/Camera/StoreImageUtility;)Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;

    move-result-object v1

    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mMultiShotMaxCount:I
    invoke-static {v1}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$500(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)I

    move-result v11

    .line 863
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/StoreImageUtility$StoreXmpDataInFiles;->this$0:Lcom/motorola/Camera/StoreImageUtility;

    #getter for: Lcom/motorola/Camera/StoreImageUtility;->mAStoreImageMemberInfo:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/motorola/Camera/StoreImageUtility;->access$1400(Lcom/motorola/Camera/StoreImageUtility;)Ljava/util/ArrayList;

    move-result-object v13

    monitor-enter v13

    .line 867
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/StoreImageUtility$StoreXmpDataInFiles;->this$0:Lcom/motorola/Camera/StoreImageUtility;

    #getter for: Lcom/motorola/Camera/StoreImageUtility;->mAStoreImageMemberInfo:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/motorola/Camera/StoreImageUtility;->access$1400(Lcom/motorola/Camera/StoreImageUtility;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;

    .line 868
    .local v8, a:Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;
    if-eq v12, v11, :cond_2

    .line 871
    const/4 v1, 0x0

    #setter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mHandler:Landroid/os/Handler;
    invoke-static {v8, v1}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$802(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;Landroid/os/Handler;)Landroid/os/Handler;

    .line 875
    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mPictureUri:Landroid/net/Uri;
    invoke-static {v8}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$1200(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)Landroid/net/Uri;

    move-result-object v1

    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mXmpArray:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$1000(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)Ljava/util/ArrayList;

    move-result-object v2

    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$800(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x7e

    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$900(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Lcom/motorola/Camera/StoreImageUtility;->access$2300()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lcom/motorola/Camera/CameraXmpUtility/CamXmpUtility;->setXmpProperty(Landroid/net/Uri;Ljava/util/ArrayList;Landroid/os/Handler;ILandroid/content/Context;Ljava/util/concurrent/ExecutorService;)Z

    .line 888
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 881
    :cond_2
    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mPictureUri:Landroid/net/Uri;
    invoke-static {v8}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$1200(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)Landroid/net/Uri;

    move-result-object v1

    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mXmpArray:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$1000(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)Ljava/util/ArrayList;

    move-result-object v2

    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$800(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x7e

    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$900(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lcom/motorola/Camera/StoreImageUtility$NotifierScannerTask;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/StoreImageUtility$StoreXmpDataInFiles;->this$0:Lcom/motorola/Camera/StoreImageUtility;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/motorola/Camera/StoreImageUtility$StoreXmpDataInFiles;->this$0:Lcom/motorola/Camera/StoreImageUtility;

    #getter for: Lcom/motorola/Camera/StoreImageUtility;->mAUriList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/motorola/Camera/StoreImageUtility;->access$2000(Lcom/motorola/Camera/StoreImageUtility;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/Camera/StoreImageUtility$StoreXmpDataInFiles;->this$0:Lcom/motorola/Camera/StoreImageUtility;

    #getter for: Lcom/motorola/Camera/StoreImageUtility;->mApplicationContext:Landroid/content/Context;
    invoke-static {v15}, Lcom/motorola/Camera/StoreImageUtility;->access$2400(Lcom/motorola/Camera/StoreImageUtility;)Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-direct {v6, v14, v7, v15, v0}, Lcom/motorola/Camera/StoreImageUtility$NotifierScannerTask;-><init>(Lcom/motorola/Camera/StoreImageUtility;Ljava/util/ArrayList;Landroid/content/Context;Z)V

    sget-object v7, Lcom/motorola/Camera/StoreImageUtility;->mPool:Ljava/util/concurrent/ExecutorService;

    invoke-static/range {v1 .. v7}, Lcom/motorola/Camera/CameraXmpUtility/CamXmpUtility;->setXmpProperty(Landroid/net/Uri;Ljava/util/ArrayList;Landroid/os/Handler;ILandroid/content/Context;Ljava/lang/Runnable;Ljava/util/concurrent/ExecutorService;)Z

    goto :goto_1

    .line 890
    .end local v8           #a:Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;
    .end local v9           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_3
    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 911
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v11           #size:I
    .end local v12           #x:I
    :goto_2
    return-void

    .line 893
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/StoreImageUtility$StoreXmpDataInFiles;->this$0:Lcom/motorola/Camera/StoreImageUtility;

    #getter for: Lcom/motorola/Camera/StoreImageUtility;->mSiuLastPictureInfo:Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;
    invoke-static {v1}, Lcom/motorola/Camera/StoreImageUtility;->access$2100(Lcom/motorola/Camera/StoreImageUtility;)Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;

    move-result-object v1

    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$800(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 899
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_5

    .line 900
    const-string v1, "StoreImageUtility"

    const-string v2, "KPI: XmpMetaDataStorageEnable or no XMP data: 126"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/StoreImageUtility$StoreXmpDataInFiles;->this$0:Lcom/motorola/Camera/StoreImageUtility;

    #getter for: Lcom/motorola/Camera/StoreImageUtility;->mSiuLastPictureInfo:Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;
    invoke-static {v1}, Lcom/motorola/Camera/StoreImageUtility;->access$2100(Lcom/motorola/Camera/StoreImageUtility;)Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;

    move-result-object v1

    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$800(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x7e

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 905
    .local v10, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/StoreImageUtility$StoreXmpDataInFiles;->this$0:Lcom/motorola/Camera/StoreImageUtility;

    #getter for: Lcom/motorola/Camera/StoreImageUtility;->mSiuLastPictureInfo:Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;
    invoke-static {v1}, Lcom/motorola/Camera/StoreImageUtility;->access$2100(Lcom/motorola/Camera/StoreImageUtility;)Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;

    move-result-object v1

    #getter for: Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->access$800(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 909
    .end local v10           #msg:Landroid/os/Message;
    :cond_6
    sget-object v2, Lcom/motorola/Camera/StoreImageUtility;->mPool:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/motorola/Camera/StoreImageUtility$NotifierScannerTask;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/Camera/StoreImageUtility$StoreXmpDataInFiles;->this$0:Lcom/motorola/Camera/StoreImageUtility;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/StoreImageUtility$StoreXmpDataInFiles;->this$0:Lcom/motorola/Camera/StoreImageUtility;

    #getter for: Lcom/motorola/Camera/StoreImageUtility;->mAUriList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/motorola/Camera/StoreImageUtility;->access$2000(Lcom/motorola/Camera/StoreImageUtility;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/StoreImageUtility$StoreXmpDataInFiles;->this$0:Lcom/motorola/Camera/StoreImageUtility;

    #getter for: Lcom/motorola/Camera/StoreImageUtility;->mApplicationContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/motorola/Camera/StoreImageUtility;->access$2400(Lcom/motorola/Camera/StoreImageUtility;)Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v3, v4, v1, v5, v6}, Lcom/motorola/Camera/StoreImageUtility$NotifierScannerTask;-><init>(Lcom/motorola/Camera/StoreImageUtility;Ljava/util/ArrayList;Landroid/content/Context;Z)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_2
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 831
    invoke-direct {p0}, Lcom/motorola/Camera/StoreImageUtility$StoreXmpDataInFiles;->storeXmpDataInFiles()V

    .line 832
    return-void
.end method
