.class public Lcom/motorola/Camera/SaveImageService;
.super Landroid/app/Service;
.source "SaveImageService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/Camera/SaveImageService$1;,
        Lcom/motorola/Camera/SaveImageService$StoreImage;,
        Lcom/motorola/Camera/SaveImageService$MainHandler;,
        Lcom/motorola/Camera/SaveImageService$SaveImageServiceBinder;
    }
.end annotation


# instance fields
.field private final AVAILABLE_PROCESS_MEMORY:I

.field private final MEMORY_AVAILABLE:I

.field private final STOP_SELF:I

.field private TAG:Ljava/lang/String;

.field private final mBinder:Landroid/os/IBinder;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private volatile mSaveQueueEmpty:Z

.field mSaveServiceListener:Lcom/motorola/Camera/SaveServiceListener;

.field private volatile mStopRequested:Z

.field protected mStoreImage:Lcom/motorola/Camera/SaveImageService$StoreImage;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 28
    const-string v0, "SaveImageService"

    iput-object v0, p0, Lcom/motorola/Camera/SaveImageService;->TAG:Ljava/lang/String;

    .line 29
    const v0, 0xe4e1c0

    iput v0, p0, Lcom/motorola/Camera/SaveImageService;->AVAILABLE_PROCESS_MEMORY:I

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/Camera/SaveImageService;->MEMORY_AVAILABLE:I

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/Camera/SaveImageService;->STOP_SELF:I

    .line 32
    new-instance v0, Lcom/motorola/Camera/SaveImageService$SaveImageServiceBinder;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/SaveImageService$SaveImageServiceBinder;-><init>(Lcom/motorola/Camera/SaveImageService;)V

    iput-object v0, p0, Lcom/motorola/Camera/SaveImageService;->mBinder:Landroid/os/IBinder;

    .line 33
    iput-object v1, p0, Lcom/motorola/Camera/SaveImageService;->mStoreImage:Lcom/motorola/Camera/SaveImageService$StoreImage;

    .line 37
    new-instance v0, Lcom/motorola/Camera/SaveImageService$MainHandler;

    invoke-direct {v0, p0, v1}, Lcom/motorola/Camera/SaveImageService$MainHandler;-><init>(Lcom/motorola/Camera/SaveImageService;Lcom/motorola/Camera/SaveImageService$1;)V

    iput-object v0, p0, Lcom/motorola/Camera/SaveImageService;->mHandler:Landroid/os/Handler;

    .line 38
    iput-object v1, p0, Lcom/motorola/Camera/SaveImageService;->mContext:Landroid/content/Context;

    .line 205
    return-void
.end method

.method static synthetic access$2000(Lcom/motorola/Camera/SaveImageService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/motorola/Camera/SaveImageService;->onMemoryAvailable()V

    return-void
.end method

.method static synthetic access$600(Lcom/motorola/Camera/SaveImageService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/motorola/Camera/SaveImageService;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/motorola/Camera/SaveImageService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/motorola/Camera/SaveImageService;->setQueueEmptyStatus(Z)V

    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/motorola/Camera/SaveImageService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private onMemoryAvailable()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 141
    iget-object v1, p0, Lcom/motorola/Camera/SaveImageService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 142
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/motorola/Camera/SaveImageService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 143
    return-void
.end method

.method private setQueueEmptyStatus(Z)V
    .locals 1
    .parameter "queueStatus"

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/motorola/Camera/SaveImageService;->mSaveQueueEmpty:Z

    .line 147
    iget-boolean v0, p0, Lcom/motorola/Camera/SaveImageService;->mSaveQueueEmpty:Z

    if-eqz v0, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/motorola/Camera/SaveImageService;->stopOurService()V

    .line 151
    :cond_0
    return-void
.end method

.method private stopOurService()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 154
    iget-boolean v1, p0, Lcom/motorola/Camera/SaveImageService;->mStopRequested:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/motorola/Camera/SaveImageService;->mSaveQueueEmpty:Z

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/motorola/Camera/SaveImageService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 157
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/motorola/Camera/SaveImageService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 159
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method


# virtual methods
.method protected canSave(II)Z
    .locals 1
    .parameter "size"
    .parameter "numPics"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/motorola/Camera/SaveImageService;->mStoreImage:Lcom/motorola/Camera/SaveImageService$StoreImage;

    #calls: Lcom/motorola/Camera/SaveImageService$StoreImage;->canSave(II)Z
    invoke-static {v0, p1, p2}, Lcom/motorola/Camera/SaveImageService$StoreImage;->access$300(Lcom/motorola/Camera/SaveImageService$StoreImage;II)Z

    move-result v0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .parameter "intent"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/motorola/Camera/SaveImageService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBind with intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lcom/motorola/Camera/SaveImageService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 59
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 60
    iget-object v0, p0, Lcom/motorola/Camera/SaveImageService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate called:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 81
    iget-object v0, p0, Lcom/motorola/Camera/SaveImageService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/motorola/Camera/SaveImageService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/SaveImageService;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/motorola/Camera/SaveImageService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartCommand called with intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  flags:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  startId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    .line 74
    iget-object v0, p0, Lcom/motorola/Camera/SaveImageService;->TAG:Ljava/lang/String;

    const-string v1, "onUnbind called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method protected saveImage([BJLandroid/location/Location;ILjava/lang/String;)V
    .locals 7
    .parameter "data"
    .parameter "date"
    .parameter "location"
    .parameter "orientation"
    .parameter "storageDirectory"

    .prologue
    .line 108
    if-nez p6, :cond_0

    .line 109
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "storageDirectory is null please provide a non null storage directory"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/SaveImageService;->mStoreImage:Lcom/motorola/Camera/SaveImageService$StoreImage;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    #calls: Lcom/motorola/Camera/SaveImageService$StoreImage;->saveImage([BJLandroid/location/Location;ILjava/lang/String;)V
    invoke-static/range {v0 .. v6}, Lcom/motorola/Camera/SaveImageService$StoreImage;->access$200(Lcom/motorola/Camera/SaveImageService$StoreImage;[BJLandroid/location/Location;ILjava/lang/String;)V

    .line 112
    return-void
.end method

.method public setAppContext(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/motorola/Camera/SaveImageService;->mContext:Landroid/content/Context;

    .line 169
    iget-object v0, p0, Lcom/motorola/Camera/SaveImageService;->mStoreImage:Lcom/motorola/Camera/SaveImageService$StoreImage;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Lcom/motorola/Camera/SaveImageService$StoreImage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/Camera/SaveImageService$StoreImage;-><init>(Lcom/motorola/Camera/SaveImageService;Lcom/motorola/Camera/SaveImageService$1;)V

    iput-object v0, p0, Lcom/motorola/Camera/SaveImageService;->mStoreImage:Lcom/motorola/Camera/SaveImageService$StoreImage;

    .line 171
    :cond_0
    return-void
.end method

.method public setAvailableMemoryListener(IILcom/motorola/Camera/SaveServiceListener;)V
    .locals 1
    .parameter "picSize"
    .parameter "numPics"
    .parameter "listener"

    .prologue
    .line 136
    iput-object p3, p0, Lcom/motorola/Camera/SaveImageService;->mSaveServiceListener:Lcom/motorola/Camera/SaveServiceListener;

    .line 137
    iget-object v0, p0, Lcom/motorola/Camera/SaveImageService;->mStoreImage:Lcom/motorola/Camera/SaveImageService$StoreImage;

    #calls: Lcom/motorola/Camera/SaveImageService$StoreImage;->updateOnMemoryAvailable(II)V
    invoke-static {v0, p1, p2}, Lcom/motorola/Camera/SaveImageService$StoreImage;->access$400(Lcom/motorola/Camera/SaveImageService$StoreImage;II)V

    .line 138
    return-void
.end method

.method protected stopService()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/Camera/SaveImageService;->mStopRequested:Z

    .line 98
    iget-object v0, p0, Lcom/motorola/Camera/SaveImageService;->mStoreImage:Lcom/motorola/Camera/SaveImageService$StoreImage;

    #calls: Lcom/motorola/Camera/SaveImageService$StoreImage;->cleanup()V
    invoke-static {v0}, Lcom/motorola/Camera/SaveImageService$StoreImage;->access$100(Lcom/motorola/Camera/SaveImageService$StoreImage;)V

    .line 99
    invoke-direct {p0}, Lcom/motorola/Camera/SaveImageService;->stopOurService()V

    .line 100
    return-void
.end method
