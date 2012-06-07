.class public Lcom/motorola/Camera/CameraHolder;
.super Ljava/lang/Object;
.source "CameraHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/Camera/CameraHolder$MyHandler;
    }
.end annotation


# static fields
.field private static final RELEASE_CAMERA:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CameraHolder"

.field private static sHolder:Lcom/motorola/Camera/CameraHolder;


# instance fields
.field private mBackCameraId:I

.field private mCameraDevice:Landroid/hardware/Camera;

.field private mCameraId:I

.field private mFrontCameraId:I

.field private final mHandler:Landroid/os/Handler;

.field private mInfo:[Landroid/hardware/Camera$CameraInfo;

.field private mKeepBeforeTime:J

.field private mNumberOfCameras:I

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mUsers:I


# direct methods
.method private constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 95
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/motorola/Camera/CameraHolder;->mKeepBeforeTime:J

    .line 48
    const/4 v3, 0x0

    iput v3, p0, Lcom/motorola/Camera/CameraHolder;->mUsers:I

    .line 50
    iput v5, p0, Lcom/motorola/Camera/CameraHolder;->mCameraId:I

    .line 51
    iput v5, p0, Lcom/motorola/Camera/CameraHolder;->mBackCameraId:I

    iput v5, p0, Lcom/motorola/Camera/CameraHolder;->mFrontCameraId:I

    .line 96
    new-instance v0, Landroid/os/HandlerThread;

    const-string v3, "CameraHolder"

    invoke-direct {v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 97
    .local v0, ht:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 98
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 99
    .local v2, lp:Landroid/os/Looper;
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v3

    iput v3, p0, Lcom/motorola/Camera/CameraHolder;->mNumberOfCameras:I

    .line 100
    iget v3, p0, Lcom/motorola/Camera/CameraHolder;->mNumberOfCameras:I

    new-array v3, v3, [Landroid/hardware/Camera$CameraInfo;

    iput-object v3, p0, Lcom/motorola/Camera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    .line 101
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v3, p0, Lcom/motorola/Camera/CameraHolder;->mNumberOfCameras:I

    if-ge v1, v3, :cond_2

    .line 102
    iget-object v3, p0, Lcom/motorola/Camera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    new-instance v4, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v4}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    aput-object v4, v3, v1

    .line 103
    iget-object v3, p0, Lcom/motorola/Camera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v3, v3, v1

    invoke-static {v1, v3}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 104
    iget v3, p0, Lcom/motorola/Camera/CameraHolder;->mBackCameraId:I

    if-ne v3, v5, :cond_0

    iget-object v3, p0, Lcom/motorola/Camera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_0

    .line 105
    iput v1, p0, Lcom/motorola/Camera/CameraHolder;->mBackCameraId:I

    .line 107
    :cond_0
    iget v3, p0, Lcom/motorola/Camera/CameraHolder;->mFrontCameraId:I

    if-ne v3, v5, :cond_1

    iget-object v3, p0, Lcom/motorola/Camera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 108
    iput v1, p0, Lcom/motorola/Camera/CameraHolder;->mFrontCameraId:I

    .line 101
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    :cond_2
    if-nez v2, :cond_3

    .line 112
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/motorola/Camera/CameraHolder;->mHandler:Landroid/os/Handler;

    .line 116
    :goto_1
    return-void

    .line 115
    :cond_3
    new-instance v3, Lcom/motorola/Camera/CameraHolder$MyHandler;

    invoke-direct {v3, p0, v2}, Lcom/motorola/Camera/CameraHolder$MyHandler;-><init>(Lcom/motorola/Camera/CameraHolder;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/motorola/Camera/CameraHolder;->mHandler:Landroid/os/Handler;

    goto :goto_1
.end method

.method public static Assert(Z)V
    .locals 1
    .parameter "cond"

    .prologue
    .line 199
    if-nez p0, :cond_0

    .line 200
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 202
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/Camera/CameraHolder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/motorola/Camera/CameraHolder;->mUsers:I

    return v0
.end method

.method static synthetic access$100(Lcom/motorola/Camera/CameraHolder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/motorola/Camera/CameraHolder;->releaseCamera()V

    return-void
.end method

.method public static declared-synchronized instance()Lcom/motorola/Camera/CameraHolder;
    .locals 2

    .prologue
    .line 63
    const-class v1, Lcom/motorola/Camera/CameraHolder;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/motorola/Camera/CameraHolder;->sHolder:Lcom/motorola/Camera/CameraHolder;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/motorola/Camera/CameraHolder;

    invoke-direct {v0}, Lcom/motorola/Camera/CameraHolder;-><init>()V

    sput-object v0, Lcom/motorola/Camera/CameraHolder;->sHolder:Lcom/motorola/Camera/CameraHolder;

    .line 66
    :cond_0
    sget-object v0, Lcom/motorola/Camera/CameraHolder;->sHolder:Lcom/motorola/Camera/CameraHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized releaseCamera()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 169
    monitor-enter p0

    :try_start_0
    iget v4, p0, Lcom/motorola/Camera/CameraHolder;->mUsers:I

    if-nez v4, :cond_1

    move v4, v2

    :goto_0
    invoke-static {v4}, Lcom/motorola/Camera/CameraHolder;->Assert(Z)V

    .line 170
    iget-object v4, p0, Lcom/motorola/Camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v4, :cond_2

    :goto_1
    invoke-static {v2}, Lcom/motorola/Camera/CameraHolder;->Assert(Z)V

    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 172
    .local v0, now:J
    iget-wide v2, p0, Lcom/motorola/Camera/CameraHolder;->mKeepBeforeTime:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    iget-object v2, p0, Lcom/motorola/Camera/CameraHolder;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_3

    .line 173
    iget-object v2, p0, Lcom/motorola/Camera/CameraHolder;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/motorola/Camera/CameraHolder;->mKeepBeforeTime:J

    sub-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :cond_0
    :goto_2
    monitor-exit p0

    return-void

    .end local v0           #now:J
    :cond_1
    move v4, v3

    .line 169
    goto :goto_0

    :cond_2
    move v2, v3

    .line 170
    goto :goto_1

    .line 178
    .restart local v0       #now:J
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/motorola/Camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v2, :cond_0

    .line 181
    iget-object v2, p0, Lcom/motorola/Camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 182
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/motorola/Camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    .line 185
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/motorola/Camera/CameraHolder;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 186
    const/4 v2, -0x1

    iput v2, p0, Lcom/motorola/Camera/CameraHolder;->mCameraId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 169
    .end local v0           #now:J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public declared-synchronized keep()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 193
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/motorola/Camera/CameraHolder;->mUsers:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/motorola/Camera/CameraHolder;->mUsers:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/motorola/Camera/CameraHolder;->Assert(Z)V

    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/motorola/Camera/CameraHolder;->mKeepBeforeTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    monitor-exit p0

    return-void

    .line 193
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized open(I)Landroid/hardware/Camera;
    .locals 4
    .parameter "cameraId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 121
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/motorola/Camera/CameraHolder;->mUsers:I

    if-nez v2, :cond_2

    :goto_0
    invoke-static {v1}, Lcom/motorola/Camera/CameraHolder;->Assert(Z)V

    .line 122
    const-string v1, "CameraHolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open camera "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mCameraDevice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mCameraId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/Camera/CameraHolder;->mCameraId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v1, p0, Lcom/motorola/Camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/motorola/Camera/CameraHolder;->mCameraId:I

    if-eq v1, p1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/motorola/Camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 125
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/Camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    .line 126
    const/4 v1, -0x1

    iput v1, p0, Lcom/motorola/Camera/CameraHolder;->mCameraId:I

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_3

    .line 130
    :try_start_1
    const-string v1, "CameraHolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open camera "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/Camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    .line 132
    iput p1, p0, Lcom/motorola/Camera/CameraHolder;->mCameraId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 137
    :try_start_2
    iget-object v1, p0, Lcom/motorola/Camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/Camera/CameraHolder;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 154
    :goto_1
    iget v1, p0, Lcom/motorola/Camera/CameraHolder;->mUsers:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/motorola/Camera/CameraHolder;->mUsers:I

    .line 155
    iget-object v1, p0, Lcom/motorola/Camera/CameraHolder;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 156
    iget-object v1, p0, Lcom/motorola/Camera/CameraHolder;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 157
    :cond_1
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/motorola/Camera/CameraHolder;->mKeepBeforeTime:J

    .line 158
    iget-object v1, p0, Lcom/motorola/Camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 121
    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_3
    const-string v1, "CameraHolder"

    const-string v2, "fail to connect Camera"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 121
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 140
    :cond_3
    :try_start_4
    const-string v1, "CameraHolder"

    const-string v2, " trying to reconnect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const-string v1, "CameraHolder"

    const-string v2, " trying to reconnect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v1, p0, Lcom/motorola/Camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->reconnect()V

    .line 143
    const-string v1, "CameraHolder"

    const-string v2, " reconnect failed "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    .line 151
    :goto_2
    :try_start_5
    iget-object v1, p0, Lcom/motorola/Camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/motorola/Camera/CameraHolder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_1

    .line 144
    :catch_1
    move-exception v0

    .line 145
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 146
    const-string v1, "CameraHolder"

    const-string v2, "reconnect failed. "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 148
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 149
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized release()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 162
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/motorola/Camera/CameraHolder;->mUsers:I

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/motorola/Camera/CameraHolder;->Assert(Z)V

    .line 163
    iget v0, p0, Lcom/motorola/Camera/CameraHolder;->mUsers:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/motorola/Camera/CameraHolder;->mUsers:I

    .line 164
    iget-object v0, p0, Lcom/motorola/Camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 165
    invoke-direct {p0}, Lcom/motorola/Camera/CameraHolder;->releaseCamera()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    monitor-exit p0

    return-void

    .line 162
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
