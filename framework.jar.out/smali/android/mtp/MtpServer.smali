.class public Landroid/mtp/MtpServer;
.super Ljava/lang/Object;
.source "MtpServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mMtpPropertyCache:Landroid/mtp/MtpPropertyCache;

.field private mNativeContext:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/mtp/MtpDatabase;Z)V
    .locals 1
    .parameter "database"
    .parameter "usePtp"

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/mtp/MtpDatabase;->getPropertyCacheInstance()Landroid/mtp/MtpPropertyCache;

    move-result-object v0

    iput-object v0, p0, Landroid/mtp/MtpServer;->mMtpPropertyCache:Landroid/mtp/MtpPropertyCache;

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/mtp/MtpServer;->native_setup(Landroid/mtp/MtpDatabase;Z)V

    .line 37
    return-void
.end method

.method private final native native_add_storage(Landroid/mtp/MtpStorage;)V
.end method

.method private final native native_cleanup()V
.end method

.method private final native native_remove_storage(I)V
.end method

.method private final native native_run()V
.end method

.method private final native native_send_object_added(I)V
.end method

.method private final native native_send_object_removed(I)V
.end method

.method private final native native_setup(Landroid/mtp/MtpDatabase;Z)V
.end method


# virtual methods
.method public addStorage(Landroid/mtp/MtpStorage;)V
    .locals 3
    .parameter "storage"

    .prologue
    .line 76
    iget-object v0, p0, Landroid/mtp/MtpServer;->mMtpPropertyCache:Landroid/mtp/MtpPropertyCache;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Landroid/mtp/MtpServer;->mMtpPropertyCache:Landroid/mtp/MtpPropertyCache;

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/mtp/MtpPropertyCache;->update(II)V

    .line 80
    :cond_0
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_add_storage(Landroid/mtp/MtpStorage;)V

    .line 81
    return-void
.end method

.method public removeStorage(Landroid/mtp/MtpStorage;)V
    .locals 3
    .parameter "storage"

    .prologue
    .line 85
    iget-object v0, p0, Landroid/mtp/MtpServer;->mMtpPropertyCache:Landroid/mtp/MtpPropertyCache;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Landroid/mtp/MtpServer;->mMtpPropertyCache:Landroid/mtp/MtpPropertyCache;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/mtp/MtpPropertyCache;->update(II)V

    .line 89
    :cond_0
    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getStorageId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/mtp/MtpServer;->native_remove_storage(I)V

    .line 90
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/mtp/MtpServer;->native_run()V

    .line 47
    invoke-direct {p0}, Landroid/mtp/MtpServer;->native_cleanup()V

    .line 49
    iget-object v0, p0, Landroid/mtp/MtpServer;->mMtpPropertyCache:Landroid/mtp/MtpPropertyCache;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Landroid/mtp/MtpServer;->mMtpPropertyCache:Landroid/mtp/MtpPropertyCache;

    invoke-virtual {v0}, Landroid/mtp/MtpPropertyCache;->destroy()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/mtp/MtpServer;->mMtpPropertyCache:Landroid/mtp/MtpPropertyCache;

    .line 54
    :cond_0
    return-void
.end method

.method public sendObjectAdded(I)V
    .locals 2
    .parameter "handle"

    .prologue
    .line 58
    iget-object v0, p0, Landroid/mtp/MtpServer;->mMtpPropertyCache:Landroid/mtp/MtpPropertyCache;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Landroid/mtp/MtpServer;->mMtpPropertyCache:Landroid/mtp/MtpPropertyCache;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/mtp/MtpPropertyCache;->update(II)V

    .line 62
    :cond_0
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_send_object_added(I)V

    .line 63
    return-void
.end method

.method public sendObjectRemoved(I)V
    .locals 2
    .parameter "handle"

    .prologue
    .line 67
    iget-object v0, p0, Landroid/mtp/MtpServer;->mMtpPropertyCache:Landroid/mtp/MtpPropertyCache;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Landroid/mtp/MtpServer;->mMtpPropertyCache:Landroid/mtp/MtpPropertyCache;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/mtp/MtpPropertyCache;->update(II)V

    .line 71
    :cond_0
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_send_object_removed(I)V

    .line 72
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "MtpServer"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 41
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 42
    return-void
.end method
