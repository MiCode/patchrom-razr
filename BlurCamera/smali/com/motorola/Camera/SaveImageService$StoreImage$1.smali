.class Lcom/motorola/Camera/SaveImageService$StoreImage$1;
.super Ljava/lang/Object;
.source "SaveImageService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/Camera/SaveImageService$StoreImage;-><init>(Lcom/motorola/Camera/SaveImageService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/Camera/SaveImageService$StoreImage;

.field final synthetic val$this$0:Lcom/motorola/Camera/SaveImageService;


# direct methods
.method constructor <init>(Lcom/motorola/Camera/SaveImageService$StoreImage;Lcom/motorola/Camera/SaveImageService;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/motorola/Camera/SaveImageService$StoreImage$1;->this$1:Lcom/motorola/Camera/SaveImageService$StoreImage;

    iput-object p2, p0, Lcom/motorola/Camera/SaveImageService$StoreImage$1;->val$this$0:Lcom/motorola/Camera/SaveImageService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 226
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/motorola/Camera/SaveImageService$StoreImage$1;->this$1:Lcom/motorola/Camera/SaveImageService$StoreImage;

    #getter for: Lcom/motorola/Camera/SaveImageService$StoreImage;->mKeepThreadRunning:Z
    invoke-static {v1}, Lcom/motorola/Camera/SaveImageService$StoreImage;->access$700(Lcom/motorola/Camera/SaveImageService$StoreImage;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 227
    const/4 v9, 0x0

    .line 228
    .local v9, image:Lcom/motorola/Camera/SaveImageService$StoreImage$ImageContainer;
    const/4 v10, 0x0

    .line 230
    .local v10, memoryAvailable:Z
    iget-object v1, p0, Lcom/motorola/Camera/SaveImageService$StoreImage$1;->this$1:Lcom/motorola/Camera/SaveImageService$StoreImage;

    #getter for: Lcom/motorola/Camera/SaveImageService$StoreImage;->mImageQueue:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/motorola/Camera/SaveImageService$StoreImage;->access$800(Lcom/motorola/Camera/SaveImageService$StoreImage;)Ljava/util/LinkedList;

    move-result-object v2

    monitor-enter v2

    .line 231
    :try_start_0
    iget-object v1, p0, Lcom/motorola/Camera/SaveImageService$StoreImage$1;->this$1:Lcom/motorola/Camera/SaveImageService$StoreImage;

    #getter for: Lcom/motorola/Camera/SaveImageService$StoreImage;->mImageQueue:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/motorola/Camera/SaveImageService$StoreImage;->access$800(Lcom/motorola/Camera/SaveImageService$StoreImage;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_7

    .line 233
    :try_start_1
    iget-object v1, p0, Lcom/motorola/Camera/SaveImageService$StoreImage$1;->this$1:Lcom/motorola/Camera/SaveImageService$StoreImage;

    iget-object v1, v1, Lcom/motorola/Camera/SaveImageService$StoreImage;->this$0:Lcom/motorola/Camera/SaveImageService;

    const/4 v3, 0x1

    #calls: Lcom/motorola/Camera/SaveImageService;->setQueueEmptyStatus(Z)V
    invoke-static {v1, v3}, Lcom/motorola/Camera/SaveImageService;->access$900(Lcom/motorola/Camera/SaveImageService;Z)V

    .line 234
    iget-object v1, p0, Lcom/motorola/Camera/SaveImageService$StoreImage$1;->this$1:Lcom/motorola/Camera/SaveImageService$StoreImage;

    #getter for: Lcom/motorola/Camera/SaveImageService$StoreImage;->mSendAvailableMemoryUpdate:Z
    invoke-static {v1}, Lcom/motorola/Camera/SaveImageService$StoreImage;->access$1000(Lcom/motorola/Camera/SaveImageService$StoreImage;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 235
    const/4 v10, 0x1

    .line 237
    :cond_1
    iget-object v1, p0, Lcom/motorola/Camera/SaveImageService$StoreImage$1;->this$1:Lcom/motorola/Camera/SaveImageService$StoreImage;

    #getter for: Lcom/motorola/Camera/SaveImageService$StoreImage;->mImageQueue:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/motorola/Camera/SaveImageService$StoreImage;->access$800(Lcom/motorola/Camera/SaveImageService$StoreImage;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 248
    :goto_1
    :try_start_2
    sget-boolean v1, Lcom/motorola/Camera/Util;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 249
    const-string v1, "MotoCameraKPI"

    const-string v3, "image retrieved from queue"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 253
    if-eqz v9, :cond_3

    .line 254
    iget-object v1, p0, Lcom/motorola/Camera/SaveImageService$StoreImage$1;->this$1:Lcom/motorola/Camera/SaveImageService$StoreImage;

    #calls: Lcom/motorola/Camera/SaveImageService$StoreImage$ImageContainer;->getPath()Ljava/lang/String;
    invoke-static {v9}, Lcom/motorola/Camera/SaveImageService$StoreImage$ImageContainer;->access$1100(Lcom/motorola/Camera/SaveImageService$StoreImage$ImageContainer;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/motorola/Camera/SaveImageService$StoreImage$ImageContainer;->getImage()[B
    invoke-static {v9}, Lcom/motorola/Camera/SaveImageService$StoreImage$ImageContainer;->access$1200(Lcom/motorola/Camera/SaveImageService$StoreImage$ImageContainer;)[B

    move-result-object v3

    #calls: Lcom/motorola/Camera/SaveImageService$StoreImage$ImageContainer;->getDate()J
    invoke-static {v9}, Lcom/motorola/Camera/SaveImageService$StoreImage$ImageContainer;->access$1300(Lcom/motorola/Camera/SaveImageService$StoreImage$ImageContainer;)J

    move-result-wide v4

    #calls: Lcom/motorola/Camera/SaveImageService$StoreImage$ImageContainer;->getLocation()Landroid/location/Location;
    invoke-static {v9}, Lcom/motorola/Camera/SaveImageService$StoreImage$ImageContainer;->access$1400(Lcom/motorola/Camera/SaveImageService$StoreImage$ImageContainer;)Landroid/location/Location;

    move-result-object v6

    #calls: Lcom/motorola/Camera/SaveImageService$StoreImage$ImageContainer;->getOrientation()I
    invoke-static {v9}, Lcom/motorola/Camera/SaveImageService$StoreImage$ImageContainer;->access$1500(Lcom/motorola/Camera/SaveImageService$StoreImage$ImageContainer;)I

    move-result v7

    #calls: Lcom/motorola/Camera/SaveImageService$StoreImage;->addImage(Ljava/lang/String;[BJLandroid/location/Location;I)V
    invoke-static/range {v1 .. v7}, Lcom/motorola/Camera/SaveImageService$StoreImage;->access$1600(Lcom/motorola/Camera/SaveImageService$StoreImage;Ljava/lang/String;[BJLandroid/location/Location;I)V

    .line 258
    :cond_3
    iget-object v1, p0, Lcom/motorola/Camera/SaveImageService$StoreImage$1;->this$1:Lcom/motorola/Camera/SaveImageService$StoreImage;

    #getter for: Lcom/motorola/Camera/SaveImageService$StoreImage;->mImageQueue:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/motorola/Camera/SaveImageService$StoreImage;->access$800(Lcom/motorola/Camera/SaveImageService$StoreImage;)Ljava/util/LinkedList;

    move-result-object v2

    monitor-enter v2

    .line 259
    if-eqz v9, :cond_4

    .line 260
    :try_start_3
    iget-object v1, p0, Lcom/motorola/Camera/SaveImageService$StoreImage$1;->this$1:Lcom/motorola/Camera/SaveImageService$StoreImage;

    iget-object v3, p0, Lcom/motorola/Camera/SaveImageService$StoreImage$1;->this$1:Lcom/motorola/Camera/SaveImageService$StoreImage;

    #getter for: Lcom/motorola/Camera/SaveImageService$StoreImage;->mCurrentMemoryUsed:I
    invoke-static {v3}, Lcom/motorola/Camera/SaveImageService$StoreImage;->access$1700(Lcom/motorola/Camera/SaveImageService$StoreImage;)I

    move-result v3

    #calls: Lcom/motorola/Camera/SaveImageService$StoreImage$ImageContainer;->getImage()[B
    invoke-static {v9}, Lcom/motorola/Camera/SaveImageService$StoreImage$ImageContainer;->access$1200(Lcom/motorola/Camera/SaveImageService$StoreImage$ImageContainer;)[B

    move-result-object v4

    array-length v4, v4

    sub-int/2addr v3, v4

    #setter for: Lcom/motorola/Camera/SaveImageService$StoreImage;->mCurrentMemoryUsed:I
    invoke-static {v1, v3}, Lcom/motorola/Camera/SaveImageService$StoreImage;->access$1702(Lcom/motorola/Camera/SaveImageService$StoreImage;I)I

    .line 261
    const-string v1, "MotoCameraStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "constructor thread - mCurrentMemoryUsed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/Camera/SaveImageService$StoreImage$1;->this$1:Lcom/motorola/Camera/SaveImageService$StoreImage;

    #getter for: Lcom/motorola/Camera/SaveImageService$StoreImage;->mCurrentMemoryUsed:I
    invoke-static {v4}, Lcom/motorola/Camera/SaveImageService$StoreImage;->access$1700(Lcom/motorola/Camera/SaveImageService$StoreImage;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_4
    iget-object v1, p0, Lcom/motorola/Camera/SaveImageService$StoreImage$1;->this$1:Lcom/motorola/Camera/SaveImageService$StoreImage;

    #getter for: Lcom/motorola/Camera/SaveImageService$StoreImage;->mSendAvailableMemoryUpdate:Z
    invoke-static {v1}, Lcom/motorola/Camera/SaveImageService$StoreImage;->access$1000(Lcom/motorola/Camera/SaveImageService$StoreImage;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 264
    const v1, 0xe4e1c0

    iget-object v3, p0, Lcom/motorola/Camera/SaveImageService$StoreImage$1;->this$1:Lcom/motorola/Camera/SaveImageService$StoreImage;

    #getter for: Lcom/motorola/Camera/SaveImageService$StoreImage;->mCurrentMemoryUsed:I
    invoke-static {v3}, Lcom/motorola/Camera/SaveImageService$StoreImage;->access$1700(Lcom/motorola/Camera/SaveImageService$StoreImage;)I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/motorola/Camera/SaveImageService$StoreImage$1;->this$1:Lcom/motorola/Camera/SaveImageService$StoreImage;

    #getter for: Lcom/motorola/Camera/SaveImageService$StoreImage;->mAvailableMemoryPicSize:I
    invoke-static {v3}, Lcom/motorola/Camera/SaveImageService$StoreImage;->access$1800(Lcom/motorola/Camera/SaveImageService$StoreImage;)I

    move-result v3

    iget-object v4, p0, Lcom/motorola/Camera/SaveImageService$StoreImage$1;->this$1:Lcom/motorola/Camera/SaveImageService$StoreImage;

    #getter for: Lcom/motorola/Camera/SaveImageService$StoreImage;->mAvailableMemoryNumPics:I
    invoke-static {v4}, Lcom/motorola/Camera/SaveImageService$StoreImage;->access$1900(Lcom/motorola/Camera/SaveImageService$StoreImage;)I

    move-result v4

    mul-int/2addr v3, v4

    if-le v1, v3, :cond_5

    .line 267
    const/4 v10, 0x1

    .line 270
    :cond_5
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 272
    if-eqz v10, :cond_0

    .line 274
    iget-object v1, p0, Lcom/motorola/Camera/SaveImageService$StoreImage$1;->this$1:Lcom/motorola/Camera/SaveImageService$StoreImage;

    iget-object v1, v1, Lcom/motorola/Camera/SaveImageService$StoreImage;->this$0:Lcom/motorola/Camera/SaveImageService;

    #calls: Lcom/motorola/Camera/SaveImageService;->onMemoryAvailable()V
    invoke-static {v1}, Lcom/motorola/Camera/SaveImageService;->access$2000(Lcom/motorola/Camera/SaveImageService;)V

    goto/16 :goto_0

    .line 238
    :catch_0
    move-exception v8

    .line 239
    .local v8, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v1, "MotoCameraStorage"

    const-string v3, "Saving Thread interrupted"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    monitor-exit v2

    .line 277
    .end local v8           #e:Ljava/lang/InterruptedException;
    .end local v9           #image:Lcom/motorola/Camera/SaveImageService$StoreImage$ImageContainer;
    .end local v10           #memoryAvailable:Z
    :cond_6
    return-void

    .line 243
    .restart local v9       #image:Lcom/motorola/Camera/SaveImageService$StoreImage$ImageContainer;
    .restart local v10       #memoryAvailable:Z
    :cond_7
    sget-boolean v1, Lcom/motorola/Camera/Util;->DEBUG:Z

    if-eqz v1, :cond_8

    .line 244
    const-string v1, "MotoCameraKPI"

    const-string v3, "about to retrieve image from queue"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_8
    iget-object v1, p0, Lcom/motorola/Camera/SaveImageService$StoreImage$1;->this$1:Lcom/motorola/Camera/SaveImageService$StoreImage;

    #getter for: Lcom/motorola/Camera/SaveImageService$StoreImage;->mImageQueue:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/motorola/Camera/SaveImageService$StoreImage;->access$800(Lcom/motorola/Camera/SaveImageService$StoreImage;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/motorola/Camera/SaveImageService$StoreImage$ImageContainer;

    move-object v9, v0

    goto/16 :goto_1

    .line 251
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 270
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1
.end method
