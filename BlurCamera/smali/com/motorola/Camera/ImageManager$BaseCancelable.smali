.class public abstract Lcom/motorola/Camera/ImageManager$BaseCancelable;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Lcom/motorola/Camera/ImageManager$ICancelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "BaseCancelable"
.end annotation


# instance fields
.field mCancel:Z

.field mFinished:Z

.field final synthetic this$0:Lcom/motorola/Camera/ImageManager;


# direct methods
.method public constructor <init>(Lcom/motorola/Camera/ImageManager;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 146
    iput-object p1, p0, Lcom/motorola/Camera/ImageManager$BaseCancelable;->this$0:Lcom/motorola/Camera/ImageManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-boolean v0, p0, Lcom/motorola/Camera/ImageManager$BaseCancelable;->mCancel:Z

    .line 148
    iput-boolean v0, p0, Lcom/motorola/Camera/ImageManager$BaseCancelable;->mFinished:Z

    return-void
.end method


# virtual methods
.method protected acknowledgeCancel()V
    .locals 1

    .prologue
    .line 155
    monitor-enter p0

    .line 156
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/motorola/Camera/ImageManager$BaseCancelable;->mFinished:Z

    .line 157
    iget-boolean v0, p0, Lcom/motorola/Camera/ImageManager$BaseCancelable;->mCancel:Z

    if-nez v0, :cond_0

    .line 158
    monitor-exit p0

    .line 163
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/Camera/ImageManager$BaseCancelable;->mCancel:Z

    if-eqz v0, :cond_1

    .line 160
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 162
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancel()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 166
    monitor-enter p0

    .line 167
    :try_start_0
    iget-boolean v1, p0, Lcom/motorola/Camera/ImageManager$BaseCancelable;->mCancel:Z

    if-eqz v1, :cond_0

    .line 168
    monitor-exit p0

    .line 182
    :goto_0
    return v0

    .line 170
    :cond_0
    iget-boolean v1, p0, Lcom/motorola/Camera/ImageManager$BaseCancelable;->mFinished:Z

    if-eqz v1, :cond_1

    .line 171
    monitor-exit p0

    goto :goto_0

    .line 183
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 173
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/motorola/Camera/ImageManager$BaseCancelable;->mCancel:Z

    .line 174
    invoke-virtual {p0}, Lcom/motorola/Camera/ImageManager$BaseCancelable;->doCancelWork()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 177
    .local v0, retVal:Z
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 182
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 178
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method protected checkCanceled()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/Camera/ImageManager$CanceledException;
        }
    .end annotation

    .prologue
    .line 191
    monitor-enter p0

    .line 192
    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/Camera/ImageManager$BaseCancelable;->mCancel:Z

    if-eqz v0, :cond_0

    .line 193
    new-instance v0, Lcom/motorola/Camera/ImageManager$CanceledException;

    invoke-direct {v0}, Lcom/motorola/Camera/ImageManager$CanceledException;-><init>()V

    throw v0

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    return-void
.end method

.method public abstract doCancelWork()Z
.end method
