.class public Lcom/motorola/android/os/DeepSleepMediaManager;
.super Ljava/lang/Object;
.source "DeepSleepMediaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/os/DeepSleepMediaManager$Woof;,
        Lcom/motorola/android/os/DeepSleepMediaManager$MyHandler;
    }
.end annotation


# static fields
.field private static final CMD_RECEIVED:I = 0x0

.field private static final CMD_REGISTER:I = 0x1

.field private static final CMD_UNREGISTER:I = 0x2

.field private static final ENABLE_SUICIDE:Z = false

.field private static final ENABLE_WATCHDOG:Z = true

.field private static final TAG:Ljava/lang/String; = "MediaPlayer"

.field private static final TIMEOUT:I = 0x7530

.field private static final isDeepSleepSupported:Z

.field private static sCmdReceiver:Lcom/motorola/android/os/IMediaCmdReceiver;

.field private static sHandler:Landroid/os/Handler;

.field private static sMediaPlayers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/media/MediaPlayer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sWatchdog:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 145
    new-instance v0, Lcom/motorola/android/os/DeepSleepMediaManager$1;

    invoke-direct {v0}, Lcom/motorola/android/os/DeepSleepMediaManager$1;-><init>()V

    sput-object v0, Lcom/motorola/android/os/DeepSleepMediaManager;->sCmdReceiver:Lcom/motorola/android/os/IMediaCmdReceiver;

    .line 226
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/android/os/DeepSleepMediaManager;->sMediaPlayers:Ljava/util/ArrayList;

    .line 229
    const-string v0, "ro.mot.deep.sleep.supported"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/motorola/android/os/DeepSleepMediaManager;->isDeepSleepSupported:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/motorola/android/os/DeepSleepMediaManager;->sWatchdog:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 33
    invoke-static {}, Lcom/motorola/android/os/DeepSleepMediaManager;->cmdReceiverWorker()V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-static {p0}, Lcom/motorola/android/os/DeepSleepMediaManager;->registerReceiverWorker(Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-static {p0}, Lcom/motorola/android/os/DeepSleepMediaManager;->unregisterReceiverWorker(Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method static synthetic access$400()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/motorola/android/os/DeepSleepMediaManager;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static cmdReceiverWorker()V
    .locals 4

    .prologue
    .line 101
    sget-object v3, Lcom/motorola/android/os/DeepSleepMediaManager;->sMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 102
    .local v2, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/media/MediaPlayer;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    .line 103
    .local v1, mp:Landroid/media/MediaPlayer;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    :try_start_0
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v3

    goto :goto_0

    .line 109
    .end local v1           #mp:Landroid/media/MediaPlayer;
    .end local v2           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/media/MediaPlayer;>;"
    :cond_1
    return-void
.end method

.method private static init()V
    .locals 7

    .prologue
    .line 155
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sput-object v5, Lcom/motorola/android/os/DeepSleepMediaManager;->sMediaPlayers:Ljava/util/ArrayList;

    .line 157
    sget-object v5, Lcom/motorola/android/os/DeepSleepMediaManager;->sWatchdog:Landroid/os/Handler;

    if-nez v5, :cond_1

    .line 159
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    .line 160
    .local v4, loop:Landroid/os/Looper;
    if-nez v4, :cond_0

    .line 162
    new-instance v3, Landroid/os/HandlerThread;

    const-string v5, "DeepSleepMediaWatchDog"

    invoke-direct {v3, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 163
    .local v3, h:Landroid/os/HandlerThread;
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 164
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    .line 166
    .end local v3           #h:Landroid/os/HandlerThread;
    :cond_0
    if-eqz v4, :cond_1

    .line 167
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v5, Lcom/motorola/android/os/DeepSleepMediaManager;->sWatchdog:Landroid/os/Handler;

    .line 172
    :cond_1
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 173
    .local v1, executor:Ljava/util/concurrent/ExecutorService;
    new-instance v2, Ljava/util/concurrent/FutureTask;

    new-instance v5, Lcom/motorola/android/os/DeepSleepMediaManager$2;

    invoke-direct {v5}, Lcom/motorola/android/os/DeepSleepMediaManager$2;-><init>()V

    invoke-direct {v2, v5}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 181
    .local v2, future:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<Landroid/os/Handler;>;"
    :try_start_0
    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 182
    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Handler;

    sput-object v5, Lcom/motorola/android/os/DeepSleepMediaManager;->sHandler:Landroid/os/Handler;

    .line 185
    new-instance v5, Lcom/motorola/android/os/DeepSleepMediaManager$3;

    invoke-direct {v5}, Lcom/motorola/android/os/DeepSleepMediaManager$3;-><init>()V

    invoke-interface {v1, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "MediaPlayer"

    const-string v6, "Failed to initiate DSM media command task"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v5, 0x0

    sput-object v5, Lcom/motorola/android/os/DeepSleepMediaManager;->sHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method public static registerMediaCmdReceiver(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/media/MediaPlayer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p0, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/media/MediaPlayer;>;"
    sget-boolean v0, Lcom/motorola/android/os/DeepSleepMediaManager;->isDeepSleepSupported:Z

    if-eqz v0, :cond_1

    .line 198
    const-class v1, Lcom/motorola/android/os/DeepSleepMediaManager;

    monitor-enter v1

    .line 199
    :try_start_0
    sget-object v0, Lcom/motorola/android/os/DeepSleepMediaManager;->sMediaPlayers:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 200
    invoke-static {}, Lcom/motorola/android/os/DeepSleepMediaManager;->init()V

    .line 202
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    sget-object v0, Lcom/motorola/android/os/DeepSleepMediaManager;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/android/os/DeepSleepMediaManager;->sHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 205
    :cond_1
    return-void

    .line 202
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static registerReceiverWorker(Ljava/lang/ref/WeakReference;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/media/MediaPlayer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/media/MediaPlayer;>;"
    sget-object v2, Lcom/motorola/android/os/DeepSleepMediaManager;->sMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 114
    invoke-static {}, Lcom/motorola/android/os/DeepSleepManager;->getService()Lcom/motorola/android/os/IDeepSleepService;

    move-result-object v1

    .line 117
    .local v1, service:Lcom/motorola/android/os/IDeepSleepService;
    if-eqz v1, :cond_0

    .line 119
    :try_start_0
    sget-object v2, Lcom/motorola/android/os/DeepSleepMediaManager;->sCmdReceiver:Lcom/motorola/android/os/IMediaCmdReceiver;

    invoke-interface {v1, v2}, Lcom/motorola/android/os/IDeepSleepService;->registerMediaCmdReceiver(Lcom/motorola/android/os/IMediaCmdReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v1           #service:Lcom/motorola/android/os/IDeepSleepService;
    :cond_0
    :goto_0
    sget-object v2, Lcom/motorola/android/os/DeepSleepMediaManager;->sMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    return-void

    .line 120
    .restart local v1       #service:Lcom/motorola/android/os/IDeepSleepService;
    :catch_0
    move-exception v0

    .line 121
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "MediaPlayer"

    const-string v3, "DSM media cmd registration failed:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static unregisterMediaCmdReceiver(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/media/MediaPlayer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p0, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/media/MediaPlayer;>;"
    sget-boolean v0, Lcom/motorola/android/os/DeepSleepMediaManager;->isDeepSleepSupported:Z

    if-eqz v0, :cond_0

    .line 213
    const-class v1, Lcom/motorola/android/os/DeepSleepMediaManager;

    monitor-enter v1

    .line 214
    :try_start_0
    sget-object v0, Lcom/motorola/android/os/DeepSleepMediaManager;->sMediaPlayers:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 215
    monitor-exit v1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    sget-object v0, Lcom/motorola/android/os/DeepSleepMediaManager;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/android/os/DeepSleepMediaManager;->sHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 217
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static unregisterReceiverWorker(Ljava/lang/ref/WeakReference;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/media/MediaPlayer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/media/MediaPlayer;>;"
    sget-object v2, Lcom/motorola/android/os/DeepSleepMediaManager;->sMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/motorola/android/os/DeepSleepMediaManager;->sMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 131
    invoke-static {}, Lcom/motorola/android/os/DeepSleepManager;->getService()Lcom/motorola/android/os/IDeepSleepService;

    move-result-object v1

    .line 134
    .local v1, service:Lcom/motorola/android/os/IDeepSleepService;
    if-eqz v1, :cond_0

    .line 136
    :try_start_0
    sget-object v2, Lcom/motorola/android/os/DeepSleepMediaManager;->sCmdReceiver:Lcom/motorola/android/os/IMediaCmdReceiver;

    invoke-interface {v1, v2}, Lcom/motorola/android/os/IDeepSleepService;->unregisterMediaCmdReceiver(Lcom/motorola/android/os/IMediaCmdReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v1           #service:Lcom/motorola/android/os/IDeepSleepService;
    :cond_0
    :goto_0
    return-void

    .line 137
    .restart local v1       #service:Lcom/motorola/android/os/IDeepSleepService;
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "MediaPlayer"

    const-string v3, "DSM media cmd unregistration failed:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
