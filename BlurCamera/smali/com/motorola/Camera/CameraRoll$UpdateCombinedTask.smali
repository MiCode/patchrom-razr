.class Lcom/motorola/Camera/CameraRoll$UpdateCombinedTask;
.super Landroid/os/AsyncTask;
.source "CameraRoll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/CameraRoll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateCombinedTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/motorola/Camera/CameraRoll$CameraData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/Camera/CameraRoll;


# direct methods
.method private constructor <init>(Lcom/motorola/Camera/CameraRoll;)V
    .locals 0
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/motorola/Camera/CameraRoll$UpdateCombinedTask;->this$0:Lcom/motorola/Camera/CameraRoll;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/Camera/CameraRoll;Lcom/motorola/Camera/CameraRoll$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 295
    invoke-direct {p0, p1}, Lcom/motorola/Camera/CameraRoll$UpdateCombinedTask;-><init>(Lcom/motorola/Camera/CameraRoll;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 295
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/motorola/Camera/CameraRoll$UpdateCombinedTask;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 5
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/Camera/CameraRoll$CameraData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 299
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 300
    .local v0, comboList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/Camera/CameraRoll$CameraData;>;"
    iget-object v1, p0, Lcom/motorola/Camera/CameraRoll$UpdateCombinedTask;->this$0:Lcom/motorola/Camera/CameraRoll;

    #getter for: Lcom/motorola/Camera/CameraRoll;->mImageData:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/motorola/Camera/CameraRoll;->access$700(Lcom/motorola/Camera/CameraRoll;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 301
    :try_start_0
    iget-object v1, p0, Lcom/motorola/Camera/CameraRoll$UpdateCombinedTask;->this$0:Lcom/motorola/Camera/CameraRoll;

    iget-object v3, p0, Lcom/motorola/Camera/CameraRoll$UpdateCombinedTask;->this$0:Lcom/motorola/Camera/CameraRoll;

    #calls: Lcom/motorola/Camera/CameraRoll;->getImageData()Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/motorola/Camera/CameraRoll;->access$800(Lcom/motorola/Camera/CameraRoll;)Ljava/util/ArrayList;

    move-result-object v3

    #setter for: Lcom/motorola/Camera/CameraRoll;->mImageData:Ljava/util/ArrayList;
    invoke-static {v1, v3}, Lcom/motorola/Camera/CameraRoll;->access$702(Lcom/motorola/Camera/CameraRoll;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 302
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    iget-object v1, p0, Lcom/motorola/Camera/CameraRoll$UpdateCombinedTask;->this$0:Lcom/motorola/Camera/CameraRoll;

    #getter for: Lcom/motorola/Camera/CameraRoll;->mVideoData:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/motorola/Camera/CameraRoll;->access$900(Lcom/motorola/Camera/CameraRoll;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 304
    :try_start_1
    iget-object v1, p0, Lcom/motorola/Camera/CameraRoll$UpdateCombinedTask;->this$0:Lcom/motorola/Camera/CameraRoll;

    iget-object v3, p0, Lcom/motorola/Camera/CameraRoll$UpdateCombinedTask;->this$0:Lcom/motorola/Camera/CameraRoll;

    #calls: Lcom/motorola/Camera/CameraRoll;->getVideoData()Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/motorola/Camera/CameraRoll;->access$1000(Lcom/motorola/Camera/CameraRoll;)Ljava/util/ArrayList;

    move-result-object v3

    #setter for: Lcom/motorola/Camera/CameraRoll;->mVideoData:Ljava/util/ArrayList;
    invoke-static {v1, v3}, Lcom/motorola/Camera/CameraRoll;->access$902(Lcom/motorola/Camera/CameraRoll;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 305
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 306
    iget-object v1, p0, Lcom/motorola/Camera/CameraRoll$UpdateCombinedTask;->this$0:Lcom/motorola/Camera/CameraRoll;

    #getter for: Lcom/motorola/Camera/CameraRoll;->mCombinedData:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/motorola/Camera/CameraRoll;->access$200(Lcom/motorola/Camera/CameraRoll;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 307
    :try_start_2
    iget-object v1, p0, Lcom/motorola/Camera/CameraRoll$UpdateCombinedTask;->this$0:Lcom/motorola/Camera/CameraRoll;

    #getter for: Lcom/motorola/Camera/CameraRoll;->mImageData:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/motorola/Camera/CameraRoll;->access$700(Lcom/motorola/Camera/CameraRoll;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 308
    iget-object v1, p0, Lcom/motorola/Camera/CameraRoll$UpdateCombinedTask;->this$0:Lcom/motorola/Camera/CameraRoll;

    #getter for: Lcom/motorola/Camera/CameraRoll;->mVideoData:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/motorola/Camera/CameraRoll;->access$900(Lcom/motorola/Camera/CameraRoll;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 309
    new-instance v1, Lcom/motorola/Camera/CameraRoll$SortComparator;

    iget-object v3, p0, Lcom/motorola/Camera/CameraRoll$UpdateCombinedTask;->this$0:Lcom/motorola/Camera/CameraRoll;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/motorola/Camera/CameraRoll$SortComparator;-><init>(Lcom/motorola/Camera/CameraRoll;Lcom/motorola/Camera/CameraRoll$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 310
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 311
    return-object v0

    .line 302
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 305
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 310
    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 295
    check-cast p1, Ljava/util/ArrayList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/motorola/Camera/CameraRoll$UpdateCombinedTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/Camera/CameraRoll$CameraData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 316
    .local p1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/Camera/CameraRoll$CameraData;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 317
    iget-object v0, p0, Lcom/motorola/Camera/CameraRoll$UpdateCombinedTask;->this$0:Lcom/motorola/Camera/CameraRoll;

    #setter for: Lcom/motorola/Camera/CameraRoll;->mCombinedData:Ljava/util/ArrayList;
    invoke-static {v0, p1}, Lcom/motorola/Camera/CameraRoll;->access$202(Lcom/motorola/Camera/CameraRoll;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 318
    iget-object v0, p0, Lcom/motorola/Camera/CameraRoll$UpdateCombinedTask;->this$0:Lcom/motorola/Camera/CameraRoll;

    #getter for: Lcom/motorola/Camera/CameraRoll;->mListener:Lcom/motorola/Camera/CameraRoll$CameraRollUpdate;
    invoke-static {v0}, Lcom/motorola/Camera/CameraRoll;->access$000(Lcom/motorola/Camera/CameraRoll;)Lcom/motorola/Camera/CameraRoll$CameraRollUpdate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/CameraRoll$UpdateCombinedTask;->this$0:Lcom/motorola/Camera/CameraRoll;

    #getter for: Lcom/motorola/Camera/CameraRoll;->mListener:Lcom/motorola/Camera/CameraRoll$CameraRollUpdate;
    invoke-static {v0}, Lcom/motorola/Camera/CameraRoll;->access$000(Lcom/motorola/Camera/CameraRoll;)Lcom/motorola/Camera/CameraRoll$CameraRollUpdate;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/motorola/Camera/CameraRoll$CameraRollUpdate;->onUpdateData(Ljava/util/ArrayList;)V

    .line 319
    :cond_0
    return-void
.end method
