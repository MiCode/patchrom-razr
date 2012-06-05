.class public Lcom/motorola/server/SensorHubService;
.super Lcom/motorola/sensorhub/ISensorHub$Stub;
.source "SensorHubService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/server/SensorHubService$RadiusListener;,
        Lcom/motorola/server/SensorHubService$MovementListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_ALLOWED_END_DURATION:I = 0xff

.field private static final MAX_CLIENTS:I = 0x4

.field private static final SENSORHUB_EVENT_END_MOVEMENT:I = 0x1

.field private static final SENSORHUB_EVENT_EXIT_RADIUS:I = 0x2

.field private static final SENSORHUB_EVENT_START_MOVEMENT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SensorHubService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLock:Ljava/lang/Object;

.field private mMovementClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/motorola/server/SensorHubService$MovementListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRadiusListener:Lcom/motorola/server/SensorHubService$RadiusListener;

.field private mSlotId:[Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x4

    .line 40
    invoke-direct {p0}, Lcom/motorola/sensorhub/ISensorHub$Stub;-><init>()V

    .line 36
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/motorola/server/SensorHubService;->mMovementClients:Ljava/util/HashMap;

    .line 41
    iput-object p1, p0, Lcom/motorola/server/SensorHubService;->mContext:Landroid/content/Context;

    .line 42
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/motorola/server/SensorHubService;->mLock:Ljava/lang/Object;

    .line 43
    new-array v1, v3, [Landroid/os/IBinder;

    iput-object v1, p0, Lcom/motorola/server/SensorHubService;->mSlotId:[Landroid/os/IBinder;

    .line 44
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 45
    iget-object v1, p0, Lcom/motorola/server/SensorHubService;->mSlotId:[Landroid/os/IBinder;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/server/SensorHubService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/motorola/server/SensorHubService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/server/SensorHubService;Landroid/os/IBinder;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/motorola/server/SensorHubService;->disableMovementInternalLocked(Landroid/os/IBinder;I)V

    return-void
.end method

.method private disableMovementInternalLocked(Landroid/os/IBinder;I)V
    .locals 2
    .parameter "binder"
    .parameter "iD"

    .prologue
    const/4 v1, 0x0

    .line 200
    invoke-static {v1, v1, p2}, Lcom/motorola/server/SensorHubService;->enableMovement_native(III)Z

    .line 201
    iget-object v0, p0, Lcom/motorola/server/SensorHubService;->mMovementClients:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/server/SensorHubService$MovementListener;

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 202
    iget-object v0, p0, Lcom/motorola/server/SensorHubService;->mMovementClients:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v0, p0, Lcom/motorola/server/SensorHubService;->mSlotId:[Landroid/os/IBinder;

    const/4 v1, 0x0

    aput-object v1, v0, p2

    .line 204
    iget-object v0, p0, Lcom/motorola/server/SensorHubService;->mMovementClients:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 205
    invoke-static {p2}, Lcom/motorola/server/SensorHubService;->disableMovement_native(I)V

    .line 207
    :cond_0
    return-void
.end method

.method private static native disableMovement_native(I)V
.end method

.method private static native disableRadius_native()V
.end method

.method private enableMovementInternalLocked(Landroid/os/IBinder;III)Z
    .locals 4
    .parameter "binder"
    .parameter "startDuration"
    .parameter "endDuration"
    .parameter "iD"

    .prologue
    const/4 v2, 0x0

    .line 169
    invoke-static {p2, p3, p4}, Lcom/motorola/server/SensorHubService;->enableMovement_native(III)Z

    move-result v3

    if-nez v3, :cond_0

    .line 180
    :goto_0
    return v2

    .line 172
    :cond_0
    new-instance v1, Lcom/motorola/server/SensorHubService$MovementListener;

    invoke-direct {v1, p0, p1, p4}, Lcom/motorola/server/SensorHubService$MovementListener;-><init>(Lcom/motorola/server/SensorHubService;Landroid/os/IBinder;I)V

    .line 174
    .local v1, listener:Lcom/motorola/server/SensorHubService$MovementListener;
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {p1, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 175
    iget-object v3, p0, Lcom/motorola/server/SensorHubService;->mMovementClients:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v3, p0, Lcom/motorola/server/SensorHubService;->mSlotId:[Landroid/os/IBinder;

    aput-object p1, v3, p4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    const/4 v2, 0x1

    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private static native enableMovement_native(III)Z
.end method

.method private static native enableRadius_native(F)Z
.end method

.method private static native init_native()I
.end method

.method private static native poll_native([F)I
.end method


# virtual methods
.method public disableMovement(Lcom/motorola/sensorhub/ISensorHubMovementListener;)V
    .locals 4
    .parameter "remote"

    .prologue
    .line 184
    invoke-interface {p1}, Lcom/motorola/sensorhub/ISensorHubMovementListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 186
    .local v0, binder:Landroid/os/IBinder;
    const/4 v1, 0x0

    .line 187
    .local v1, i:I
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 188
    iget-object v2, p0, Lcom/motorola/server/SensorHubService;->mSlotId:[Landroid/os/IBinder;

    aget-object v2, v2, v1

    if-ne v2, v0, :cond_1

    .line 194
    :cond_0
    iget-object v3, p0, Lcom/motorola/server/SensorHubService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 195
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/motorola/server/SensorHubService;->disableMovementInternalLocked(Landroid/os/IBinder;I)V

    .line 196
    monitor-exit v3

    .line 197
    return-void

    .line 187
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public disableRadius(Lcom/motorola/sensorhub/ISensorHubRadiusListener;)V
    .locals 3
    .parameter "remote"

    .prologue
    .line 277
    invoke-interface {p1}, Lcom/motorola/sensorhub/ISensorHubRadiusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 280
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/motorola/server/SensorHubService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 281
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/motorola/server/SensorHubService;->disableRadiusInternalLocked(Landroid/os/IBinder;)V

    .line 282
    monitor-exit v2

    .line 283
    return-void

    .line 282
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public disableRadiusInternalLocked(Landroid/os/IBinder;)V
    .locals 2
    .parameter "binder"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/motorola/server/SensorHubService;->mRadiusListener:Lcom/motorola/server/SensorHubService$RadiusListener;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/motorola/server/SensorHubService;->mRadiusListener:Lcom/motorola/server/SensorHubService$RadiusListener;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 288
    invoke-static {}, Lcom/motorola/server/SensorHubService;->disableRadius_native()V

    .line 289
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/server/SensorHubService;->mRadiusListener:Lcom/motorola/server/SensorHubService$RadiusListener;

    .line 291
    :cond_0
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 122
    iget-object v4, p0, Lcom/motorola/server/SensorHubService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 123
    :try_start_0
    iget-object v3, p0, Lcom/motorola/server/SensorHubService;->mMovementClients:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 124
    .local v2, listenerCount:I
    iget-object v3, p0, Lcom/motorola/server/SensorHubService;->mRadiusListener:Lcom/motorola/server/SensorHubService$RadiusListener;

    if-eqz v3, :cond_0

    .line 125
    add-int/lit8 v2, v2, 0x1

    .line 126
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " active listeners"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-lez v2, :cond_1

    const-string v3, ":"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    iget-object v3, p0, Lcom/motorola/server/SensorHubService;->mMovementClients:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 128
    iget-object v3, p0, Lcom/motorola/server/SensorHubService;->mMovementClients:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 129
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/motorola/server/SensorHubService$MovementListener;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/server/SensorHubService$MovementListener;

    iget-object v3, v3, Lcom/motorola/server/SensorHubService$MovementListener;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": MovementListener"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (startDuration = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " s, endDuration = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " s)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 137
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/motorola/server/SensorHubService$MovementListener;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #listenerCount:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 126
    .restart local v2       #listenerCount:I
    :cond_1
    :try_start_1
    const-string v3, "."

    goto :goto_0

    .line 133
    :cond_2
    iget-object v3, p0, Lcom/motorola/server/SensorHubService;->mRadiusListener:Lcom/motorola/server/SensorHubService$RadiusListener;

    if-eqz v3, :cond_3

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/motorola/server/SensorHubService;->mRadiusListener:Lcom/motorola/server/SensorHubService$RadiusListener;

    iget-object v5, v5, Lcom/motorola/server/SensorHubService$RadiusListener;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": RadiusListener"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (radius = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " m)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    :cond_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    return-void
.end method

.method public enableMovement(Lcom/motorola/sensorhub/ISensorHubMovementListener;II)Z
    .locals 5
    .parameter "remote"
    .parameter "startDuration"
    .parameter "endDuration"

    .prologue
    const/4 v3, 0x4

    .line 144
    invoke-interface {p1}, Lcom/motorola/sensorhub/ISensorHubMovementListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 146
    .local v0, binder:Landroid/os/IBinder;
    const/4 v1, 0x0

    .line 147
    .local v1, i:I
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 148
    iget-object v2, p0, Lcom/motorola/server/SensorHubService;->mSlotId:[Landroid/os/IBinder;

    aget-object v2, v2, v1

    if-nez v2, :cond_2

    .line 153
    :cond_0
    if-ge v1, v3, :cond_1

    const/16 v2, 0xff

    if-le p3, v2, :cond_3

    .line 154
    :cond_1
    const-string v2, "SensorHubService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Client not allocated - iD="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "endDuration="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v2, 0x0

    .line 163
    :goto_1
    return v2

    .line 147
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    :cond_3
    iget-object v3, p0, Lcom/motorola/server/SensorHubService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 163
    :try_start_0
    invoke-direct {p0, v0, p2, p3, v1}, Lcom/motorola/server/SensorHubService;->enableMovementInternalLocked(Landroid/os/IBinder;III)Z

    move-result v2

    monitor-exit v3

    goto :goto_1

    .line 164
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public enableRadius(Lcom/motorola/sensorhub/ISensorHubRadiusListener;F)Z
    .locals 3
    .parameter "remote"
    .parameter "radius"

    .prologue
    .line 251
    invoke-interface {p1}, Lcom/motorola/sensorhub/ISensorHubRadiusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 254
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/motorola/server/SensorHubService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 255
    :try_start_0
    invoke-virtual {p0, v0, p2}, Lcom/motorola/server/SensorHubService;->enableRadiusInternalLocked(Landroid/os/IBinder;F)Z

    move-result v1

    monitor-exit v2

    return v1

    .line 256
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public enableRadiusInternalLocked(Landroid/os/IBinder;F)Z
    .locals 4
    .parameter "binder"
    .parameter "radius"

    .prologue
    const/4 v2, 0x0

    .line 260
    iget-object v3, p0, Lcom/motorola/server/SensorHubService;->mRadiusListener:Lcom/motorola/server/SensorHubService$RadiusListener;

    if-eqz v3, :cond_1

    .line 273
    :cond_0
    :goto_0
    return v2

    .line 263
    :cond_1
    invoke-static {p2}, Lcom/motorola/server/SensorHubService;->enableRadius_native(F)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 266
    new-instance v1, Lcom/motorola/server/SensorHubService$RadiusListener;

    invoke-direct {v1, p0, p1}, Lcom/motorola/server/SensorHubService$RadiusListener;-><init>(Lcom/motorola/server/SensorHubService;Landroid/os/IBinder;)V

    .line 268
    .local v1, listener:Lcom/motorola/server/SensorHubService$RadiusListener;
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {p1, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 269
    iput-object v1, p0, Lcom/motorola/server/SensorHubService;->mRadiusListener:Lcom/motorola/server/SensorHubService$RadiusListener;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    const/4 v2, 0x1

    goto :goto_0

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x2

    const-wide/high16 v9, 0x4000

    .line 67
    const/4 v6, 0x3

    new-array v5, v6, [F

    .line 68
    .local v5, values:[F
    const-string v6, "SensorHubService"

    const-string v7, "Polling for meaningful movement events."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    :goto_0
    invoke-static {v5}, Lcom/motorola/server/SensorHubService;->poll_native([F)I

    move-result v0

    .line 76
    .local v0, event:I
    packed-switch v0, :pswitch_data_0

    .line 115
    const-string v6, "SensorHubService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received event of mysterious type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 78
    :pswitch_0
    iget-object v6, p0, Lcom/motorola/server/SensorHubService;->mMovementClients:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 79
    aget v6, v5, v11

    float-to-int v2, v6

    .line 80
    .local v2, id:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v12, :cond_0

    .line 81
    int-to-double v6, v1

    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v3, v6

    .line 82
    .local v3, myId:I
    and-int v6, v3, v2

    if-ne v6, v3, :cond_1

    .line 83
    iget-object v6, p0, Lcom/motorola/server/SensorHubService;->mMovementClients:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/motorola/server/SensorHubService;->mSlotId:[Landroid/os/IBinder;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/server/SensorHubService$MovementListener;

    .line 84
    .local v4, myListener:Lcom/motorola/server/SensorHubService$MovementListener;
    if-eqz v4, :cond_2

    .line 85
    invoke-virtual {v4}, Lcom/motorola/server/SensorHubService$MovementListener;->onStartMovement()V

    .line 80
    .end local v4           #myListener:Lcom/motorola/server/SensorHubService$MovementListener;
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 87
    .restart local v4       #myListener:Lcom/motorola/server/SensorHubService$MovementListener;
    :cond_2
    const-string v6, "SensorHubService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SENSORHUB_EVENT_START_MOVEMENT - myListener null for id - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 94
    .end local v1           #i:I
    .end local v2           #id:I
    .end local v3           #myId:I
    .end local v4           #myListener:Lcom/motorola/server/SensorHubService$MovementListener;
    :pswitch_1
    iget-object v6, p0, Lcom/motorola/server/SensorHubService;->mMovementClients:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 95
    aget v6, v5, v11

    float-to-int v2, v6

    .line 96
    .restart local v2       #id:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    if-ge v1, v12, :cond_0

    .line 97
    int-to-double v6, v1

    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v3, v6

    .line 98
    .restart local v3       #myId:I
    and-int v6, v3, v2

    if-ne v6, v3, :cond_3

    .line 99
    iget-object v6, p0, Lcom/motorola/server/SensorHubService;->mMovementClients:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/motorola/server/SensorHubService;->mSlotId:[Landroid/os/IBinder;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/server/SensorHubService$MovementListener;

    .line 100
    .restart local v4       #myListener:Lcom/motorola/server/SensorHubService$MovementListener;
    if-eqz v4, :cond_4

    .line 101
    invoke-virtual {v4}, Lcom/motorola/server/SensorHubService$MovementListener;->onEndMovement()V

    .line 96
    .end local v4           #myListener:Lcom/motorola/server/SensorHubService$MovementListener;
    :cond_3
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 103
    .restart local v4       #myListener:Lcom/motorola/server/SensorHubService$MovementListener;
    :cond_4
    const-string v6, "SensorHubService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SENSORHUB_EVENT_END_MOVEMENT - myListener null for id - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 110
    .end local v1           #i:I
    .end local v2           #id:I
    .end local v3           #myId:I
    .end local v4           #myListener:Lcom/motorola/server/SensorHubService$MovementListener;
    :pswitch_2
    iget-object v6, p0, Lcom/motorola/server/SensorHubService;->mRadiusListener:Lcom/motorola/server/SensorHubService$RadiusListener;

    if-eqz v6, :cond_0

    .line 111
    iget-object v6, p0, Lcom/motorola/server/SensorHubService;->mRadiusListener:Lcom/motorola/server/SensorHubService$RadiusListener;

    const/4 v7, 0x0

    aget v7, v5, v7

    const/4 v8, 0x1

    aget v8, v5, v8

    invoke-virtual {v6, v7, v8}, Lcom/motorola/server/SensorHubService$RadiusListener;->onExitRadius(FF)V

    goto/16 :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public systemReady()V
    .locals 6

    .prologue
    .line 51
    :try_start_0
    const-string v3, "sensorhub_jni"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    invoke-static {}, Lcom/motorola/server/SensorHubService;->init_native()I

    move-result v1

    .line 57
    .local v1, error:I
    if-nez v1, :cond_0

    .line 58
    new-instance v2, Ljava/lang/Thread;

    const-string v3, "SensorHubService"

    invoke-direct {v2, p0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 59
    .local v2, thread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 63
    .end local v1           #error:I
    .end local v2           #thread:Ljava/lang/Thread;
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    const-string v3, "SensorHubService"

    const-string v4, "JNI library does not exist."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 61
    .end local v0           #e:Ljava/lang/UnsatisfiedLinkError;
    .restart local v1       #error:I
    :cond_0
    const-string v3, "SensorHubService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in init_native: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
