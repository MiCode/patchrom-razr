.class public Lcom/motorola/android/media/MediaScannerConnectionExt;
.super Ljava/lang/Object;
.source "MediaScannerConnectionExt.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/media/MediaScannerConnectionExt$MediaScannerConnectionClient;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaScannerConnectionExt"


# instance fields
.field private mClient:Lcom/motorola/android/media/MediaScannerConnectionExt$MediaScannerConnectionClient;

.field private mConnected:Z

.field private mContext:Landroid/content/Context;

.field private mListener:Landroid/media/IMediaScannerListener$Stub;

.field private mService:Landroid/media/IMediaScannerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/motorola/android/media/MediaScannerConnectionExt$MediaScannerConnectionClient;)V
    .locals 1
    .parameter "context"
    .parameter "client"

    .prologue
    .line 97
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/motorola/android/media/MediaScannerConnectionExt$1;

    invoke-direct {v0, p0}, Lcom/motorola/android/media/MediaScannerConnectionExt$1;-><init>(Lcom/motorola/android/media/MediaScannerConnectionExt;)V

    iput-object v0, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mListener:Landroid/media/IMediaScannerListener$Stub;

    .line 98
    iput-object p1, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mContext:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mClient:Lcom/motorola/android/media/MediaScannerConnectionExt$MediaScannerConnectionClient;

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/android/media/MediaScannerConnectionExt;)Lcom/motorola/android/media/MediaScannerConnectionExt$MediaScannerConnectionClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mClient:Lcom/motorola/android/media/MediaScannerConnectionExt$MediaScannerConnectionClient;

    return-object v0
.end method


# virtual methods
.method public connect()V
    .locals 3

    .prologue
    .line 108
    monitor-enter p0

    .line 109
    :try_start_0
    iget-boolean v1, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mConnected:Z

    if-nez v1, :cond_0

    .line 110
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroid/media/IMediaScannerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 112
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mConnected:Z

    .line 114
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    monitor-exit p0

    .line 115
    return-void

    .line 114
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 121
    monitor-enter p0

    .line 122
    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 127
    :try_start_1
    iget-object v0, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 133
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mConnected:Z

    .line 135
    :cond_0
    monitor-exit p0

    .line 136
    return-void

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 128
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized isConnected()Z
    .locals 1

    .prologue
    .line 143
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mService:Landroid/media/IMediaScannerService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 178
    const-string v0, "MediaScannerConnectionExt"

    const-string v1, "Connected to Media Scanner"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    monitor-enter p0

    .line 181
    :try_start_0
    invoke-static {p2}, Landroid/media/IMediaScannerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaScannerService;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mService:Landroid/media/IMediaScannerService;

    .line 182
    iget-object v0, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mService:Landroid/media/IMediaScannerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mClient:Lcom/motorola/android/media/MediaScannerConnectionExt$MediaScannerConnectionClient;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mClient:Lcom/motorola/android/media/MediaScannerConnectionExt$MediaScannerConnectionClient;

    invoke-interface {v0}, Lcom/motorola/android/media/MediaScannerConnectionExt$MediaScannerConnectionClient;->onMediaScannerConnected()V

    .line 185
    :cond_0
    monitor-exit p0

    .line 186
    return-void

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 193
    const-string v0, "MediaScannerConnectionExt"

    const-string v1, "Disconnected from Media Scanner"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    monitor-enter p0

    .line 196
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mService:Landroid/media/IMediaScannerService;

    .line 197
    monitor-exit p0

    .line 198
    return-void

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public scanFolder(Ljava/lang/String;)V
    .locals 4
    .parameter "path"

    .prologue
    .line 153
    monitor-enter p0

    .line 154
    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mService:Landroid/media/IMediaScannerService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mConnected:Z

    if-nez v1, :cond_1

    .line 155
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "not connected to MediaScannerService"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 170
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 158
    :cond_1
    if-nez p1, :cond_2

    .line 159
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    :goto_0
    return-void

    .line 162
    :cond_2
    :try_start_2
    const-string v1, "MediaScannerConnectionExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scanning folder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v1, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mService:Landroid/media/IMediaScannerService;

    iget-object v2, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mListener:Landroid/media/IMediaScannerListener$Stub;

    invoke-interface {v1, p1, v2}, Landroid/media/IMediaScannerService;->requestScanFolder(Ljava/lang/String;Landroid/media/IMediaScannerListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 170
    :goto_1
    :try_start_3
    monitor-exit p0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 167
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MediaScannerConnectionExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to scan folder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
