.class Lcom/motorola/android/systemui/statusbar/VzwEri$LossOfServiceDelayTask;
.super Ljava/lang/Object;
.source "VzwEri.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/systemui/statusbar/VzwEri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LossOfServiceDelayTask"
.end annotation


# instance fields
.field started:Z

.field final synthetic this$0:Lcom/motorola/android/systemui/statusbar/VzwEri;


# direct methods
.method private constructor <init>(Lcom/motorola/android/systemui/statusbar/VzwEri;)V
    .locals 0
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/motorola/android/systemui/statusbar/VzwEri$LossOfServiceDelayTask;->this$0:Lcom/motorola/android/systemui/statusbar/VzwEri;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/android/systemui/statusbar/VzwEri;Lcom/motorola/android/systemui/statusbar/VzwEri$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 304
    invoke-direct {p0, p1}, Lcom/motorola/android/systemui/statusbar/VzwEri$LossOfServiceDelayTask;-><init>(Lcom/motorola/android/systemui/statusbar/VzwEri;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 308
    iget-object v1, p0, Lcom/motorola/android/systemui/statusbar/VzwEri$LossOfServiceDelayTask;->this$0:Lcom/motorola/android/systemui/statusbar/VzwEri;

    #getter for: Lcom/motorola/android/systemui/statusbar/VzwEri;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/motorola/android/systemui/statusbar/VzwEri;->access$200(Lcom/motorola/android/systemui/statusbar/VzwEri;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 310
    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/systemui/statusbar/VzwEri$LossOfServiceDelayTask;->this$0:Lcom/motorola/android/systemui/statusbar/VzwEri;

    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    #setter for: Lcom/motorola/android/systemui/statusbar/VzwEri;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1, v3}, Lcom/motorola/android/systemui/statusbar/VzwEri;->access$302(Lcom/motorola/android/systemui/statusbar/VzwEri;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 311
    iget-object v1, p0, Lcom/motorola/android/systemui/statusbar/VzwEri$LossOfServiceDelayTask;->this$0:Lcom/motorola/android/systemui/statusbar/VzwEri;

    #getter for: Lcom/motorola/android/systemui/statusbar/VzwEri;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/motorola/android/systemui/statusbar/VzwEri;->access$300(Lcom/motorola/android/systemui/statusbar/VzwEri;)Landroid/media/MediaPlayer;

    move-result-object v1

    new-instance v3, Lcom/motorola/android/systemui/statusbar/VzwEri$LossOfServiceDelayTask$1;

    invoke-direct {v3, p0}, Lcom/motorola/android/systemui/statusbar/VzwEri$LossOfServiceDelayTask$1;-><init>(Lcom/motorola/android/systemui/statusbar/VzwEri$LossOfServiceDelayTask;)V

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 317
    iget-object v1, p0, Lcom/motorola/android/systemui/statusbar/VzwEri$LossOfServiceDelayTask;->this$0:Lcom/motorola/android/systemui/statusbar/VzwEri;

    #getter for: Lcom/motorola/android/systemui/statusbar/VzwEri;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/motorola/android/systemui/statusbar/VzwEri;->access$300(Lcom/motorola/android/systemui/statusbar/VzwEri;)Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v3, p0, Lcom/motorola/android/systemui/statusbar/VzwEri$LossOfServiceDelayTask;->this$0:Lcom/motorola/android/systemui/statusbar/VzwEri;

    #getter for: Lcom/motorola/android/systemui/statusbar/VzwEri;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/motorola/android/systemui/statusbar/VzwEri;->access$400(Lcom/motorola/android/systemui/statusbar/VzwEri;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    const-string v5, "/system/media/audio/eri/LossofService.wav"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 318
    iget-object v1, p0, Lcom/motorola/android/systemui/statusbar/VzwEri$LossOfServiceDelayTask;->this$0:Lcom/motorola/android/systemui/statusbar/VzwEri;

    #getter for: Lcom/motorola/android/systemui/statusbar/VzwEri;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/motorola/android/systemui/statusbar/VzwEri;->access$300(Lcom/motorola/android/systemui/statusbar/VzwEri;)Landroid/media/MediaPlayer;

    move-result-object v1

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 319
    iget-object v1, p0, Lcom/motorola/android/systemui/statusbar/VzwEri$LossOfServiceDelayTask;->this$0:Lcom/motorola/android/systemui/statusbar/VzwEri;

    #getter for: Lcom/motorola/android/systemui/statusbar/VzwEri;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/motorola/android/systemui/statusbar/VzwEri;->access$300(Lcom/motorola/android/systemui/statusbar/VzwEri;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 320
    const-string v1, "VzwEri"

    const-string v3, "LossOfService timeout, start alert"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v1, p0, Lcom/motorola/android/systemui/statusbar/VzwEri$LossOfServiceDelayTask;->this$0:Lcom/motorola/android/systemui/statusbar/VzwEri;

    #getter for: Lcom/motorola/android/systemui/statusbar/VzwEri;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/motorola/android/systemui/statusbar/VzwEri;->access$300(Lcom/motorola/android/systemui/statusbar/VzwEri;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :goto_0
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/motorola/android/systemui/statusbar/VzwEri$LossOfServiceDelayTask;->started:Z

    .line 326
    monitor-exit v2

    .line 327
    return-void

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "VzwEri"

    const-string v3, "Exception while attempting to play loss of service alert"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 326
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
