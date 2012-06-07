.class public Lcom/motorola/Camera/SaveHelper;
.super Ljava/lang/Object;
.source "SaveHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/motorola/Camera/SaveServiceListener;


# static fields
.field protected static final TAG:Ljava/lang/String; = "SaveHelper"

.field private static sSaveHelper:Lcom/motorola/Camera/SaveHelper;


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mBoundService:Lcom/motorola/Camera/SaveImageService;

.field private volatile mMemoryAvailableNotify:Z

.field private volatile mSaveHelperListener:Lcom/motorola/Camera/SaveHelperListener;

.field private volatile mServiceConnectNotify:Z

.field mServiceIntent:Landroid/content/Intent;

.field private volatile mStopCalled:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/motorola/Camera/SaveHelper;->mServiceIntent:Landroid/content/Intent;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/Camera/SaveHelper;->mAppContext:Landroid/content/Context;

    .line 69
    sget-boolean v0, Lcom/motorola/Camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SaveHelper"

    const-string v1, "save helper constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/motorola/Camera/SaveHelper;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/motorola/Camera/SaveHelper;->sSaveHelper:Lcom/motorola/Camera/SaveHelper;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/motorola/Camera/SaveHelper;

    invoke-direct {v0}, Lcom/motorola/Camera/SaveHelper;-><init>()V

    sput-object v0, Lcom/motorola/Camera/SaveHelper;->sSaveHelper:Lcom/motorola/Camera/SaveHelper;

    .line 62
    :cond_0
    sget-object v0, Lcom/motorola/Camera/SaveHelper;->sSaveHelper:Lcom/motorola/Camera/SaveHelper;

    return-object v0
.end method


# virtual methods
.method protected canSave(II)Z
    .locals 1
    .parameter "size"
    .parameter "numPics"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/motorola/Camera/SaveHelper;->mBoundService:Lcom/motorola/Camera/SaveImageService;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/Camera/SaveImageService;->canSave(II)Z

    move-result v0

    return v0
.end method

.method public cleanupListener()V
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/Camera/SaveHelper;->mSaveHelperListener:Lcom/motorola/Camera/SaveHelperListener;

    .line 223
    return-void
.end method

.method public onMemoryAvailable()V
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/motorola/Camera/SaveHelper;->mMemoryAvailableNotify:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/SaveHelper;->mSaveHelperListener:Lcom/motorola/Camera/SaveHelperListener;

    if-eqz v0, :cond_0

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/Camera/SaveHelper;->mMemoryAvailableNotify:Z

    .line 197
    iget-object v0, p0, Lcom/motorola/Camera/SaveHelper;->mSaveHelperListener:Lcom/motorola/Camera/SaveHelperListener;

    invoke-interface {v0}, Lcom/motorola/Camera/SaveHelperListener;->onMemoryAvailable()V

    .line 199
    :cond_0
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "className"
    .parameter "service"

    .prologue
    const/4 v3, 0x0

    .line 157
    iget-object v1, p0, Lcom/motorola/Camera/SaveHelper;->mBoundService:Lcom/motorola/Camera/SaveImageService;

    move-object v0, p2

    check-cast v0, Lcom/motorola/Camera/SaveImageService$SaveImageServiceBinder;

    invoke-virtual {v0}, Lcom/motorola/Camera/SaveImageService$SaveImageServiceBinder;->getService()Lcom/motorola/Camera/SaveImageService;

    move-result-object v0

    if-eq v1, v0, :cond_1

    .line 160
    check-cast p2, Lcom/motorola/Camera/SaveImageService$SaveImageServiceBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/motorola/Camera/SaveImageService$SaveImageServiceBinder;->getService()Lcom/motorola/Camera/SaveImageService;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/SaveHelper;->mBoundService:Lcom/motorola/Camera/SaveImageService;

    .line 163
    iget-object v0, p0, Lcom/motorola/Camera/SaveHelper;->mBoundService:Lcom/motorola/Camera/SaveImageService;

    iget-object v1, p0, Lcom/motorola/Camera/SaveHelper;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/SaveImageService;->setAppContext(Landroid/content/Context;)V

    .line 165
    iput-boolean v3, p0, Lcom/motorola/Camera/SaveHelper;->mStopCalled:Z

    .line 167
    sget-boolean v0, Lcom/motorola/Camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SaveHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service connected with binder:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/Camera/SaveHelper;->mBoundService:Lcom/motorola/Camera/SaveImageService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/Camera/SaveHelper;->mServiceConnectNotify:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/Camera/SaveHelper;->mSaveHelperListener:Lcom/motorola/Camera/SaveHelperListener;

    if-eqz v0, :cond_1

    .line 170
    iput-boolean v3, p0, Lcom/motorola/Camera/SaveHelper;->mServiceConnectNotify:Z

    .line 171
    iget-object v0, p0, Lcom/motorola/Camera/SaveHelper;->mSaveHelperListener:Lcom/motorola/Camera/SaveHelperListener;

    invoke-interface {v0}, Lcom/motorola/Camera/SaveHelperListener;->onSaveImageServiceConnected()V

    .line 174
    :cond_1
    sget-boolean v0, Lcom/motorola/Camera/Util;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 176
    const-string v0, "SaveHelper"

    const-string v1, "saving service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_2
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 182
    sget-boolean v0, Lcom/motorola/Camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 184
    const-string v0, "SaveHelper"

    const-string v1, "saving service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    return-void
.end method

.method public requestAvailableMemoryUpdate(IILcom/motorola/Camera/SaveHelperListener;)Z
    .locals 2
    .parameter "picSize"
    .parameter "picNum"
    .parameter "saveHelperListener"

    .prologue
    const/4 v0, 0x1

    .line 118
    iput-object p3, p0, Lcom/motorola/Camera/SaveHelper;->mSaveHelperListener:Lcom/motorola/Camera/SaveHelperListener;

    .line 119
    iget-object v1, p0, Lcom/motorola/Camera/SaveHelper;->mBoundService:Lcom/motorola/Camera/SaveImageService;

    invoke-virtual {v1, p1, p2}, Lcom/motorola/Camera/SaveImageService;->canSave(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    :goto_0
    return v0

    .line 125
    :cond_0
    iput-boolean v0, p0, Lcom/motorola/Camera/SaveHelper;->mMemoryAvailableNotify:Z

    .line 126
    iget-object v0, p0, Lcom/motorola/Camera/SaveHelper;->mBoundService:Lcom/motorola/Camera/SaveImageService;

    invoke-virtual {v0, p1, p2, p0}, Lcom/motorola/Camera/SaveImageService;->setAvailableMemoryListener(IILcom/motorola/Camera/SaveServiceListener;)V

    .line 127
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestConnectNotification(Lcom/motorola/Camera/SaveHelperListener;)V
    .locals 1
    .parameter "saveHelperListener"

    .prologue
    .line 216
    iput-object p1, p0, Lcom/motorola/Camera/SaveHelper;->mSaveHelperListener:Lcom/motorola/Camera/SaveHelperListener;

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/Camera/SaveHelper;->mServiceConnectNotify:Z

    .line 218
    return-void
.end method

.method protected saveImage([BJLandroid/location/Location;ILjava/lang/String;)V
    .locals 7
    .parameter "data"
    .parameter "date"
    .parameter "location"
    .parameter "orientation"
    .parameter "storeDirectory"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/motorola/Camera/SaveHelper;->mBoundService:Lcom/motorola/Camera/SaveImageService;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/motorola/Camera/SaveImageService;->saveImage([BJLandroid/location/Location;ILjava/lang/String;)V

    .line 139
    return-void
.end method

.method public serviceConnected()Z
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/motorola/Camera/SaveHelper;->mBoundService:Lcom/motorola/Camera/SaveImageService;

    if-eqz v0, :cond_0

    .line 206
    const/4 v0, 0x1

    .line 210
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/motorola/Camera/SaveHelper;->mAppContext:Landroid/content/Context;

    .line 76
    return-void
.end method

.method public startService()V
    .locals 3

    .prologue
    .line 84
    sget-boolean v0, Lcom/motorola/Camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SaveHelper"

    const-string v1, "start service called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/SaveHelper;->mServiceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/motorola/Camera/SaveHelper;->mAppContext:Landroid/content/Context;

    const-class v2, Lcom/motorola/Camera/SaveImageService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 86
    iget-object v0, p0, Lcom/motorola/Camera/SaveHelper;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/Camera/SaveHelper;->mServiceIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 87
    iget-object v0, p0, Lcom/motorola/Camera/SaveHelper;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/Camera/SaveHelper;->mServiceIntent:Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 88
    return-void
.end method

.method public stopService()V
    .locals 3

    .prologue
    .line 96
    sget-boolean v0, Lcom/motorola/Camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SaveHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop service called with binder:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/Camera/SaveHelper;->mBoundService:Lcom/motorola/Camera/SaveImageService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/Camera/SaveHelper;->mStopCalled:Z

    if-eqz v0, :cond_2

    .line 107
    :cond_1
    :goto_0
    return-void

    .line 101
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/Camera/SaveHelper;->mStopCalled:Z

    .line 103
    iget-object v0, p0, Lcom/motorola/Camera/SaveHelper;->mBoundService:Lcom/motorola/Camera/SaveImageService;

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/motorola/Camera/SaveHelper;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 105
    iget-object v0, p0, Lcom/motorola/Camera/SaveHelper;->mBoundService:Lcom/motorola/Camera/SaveImageService;

    invoke-virtual {v0}, Lcom/motorola/Camera/SaveImageService;->stopService()V

    goto :goto_0
.end method
