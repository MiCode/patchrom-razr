.class Landroid/net/http/RequestQueue$ActivePool;
.super Ljava/lang/Object;
.source "RequestQueue.java"

# interfaces
.implements Landroid/net/http/RequestQueue$ConnectionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/http/RequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActivePool"
.end annotation


# instance fields
.field private mConnectionCount:I

.field mIdleCache:Landroid/net/http/IdleCache;

.field mThreads:[Landroid/net/http/ConnectionThread;

.field private mTotalConnection:I

.field private mTotalRequest:I

.field final synthetic this$0:Landroid/net/http/RequestQueue;


# direct methods
.method constructor <init>(Landroid/net/http/RequestQueue;I)V
    .locals 4
    .parameter
    .parameter "connectionCount"

    .prologue
    .line 92
    iput-object p1, p0, Landroid/net/http/RequestQueue$ActivePool;->this$0:Landroid/net/http/RequestQueue;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v1, Landroid/net/http/IdleCache;

    invoke-direct {v1}, Landroid/net/http/IdleCache;-><init>()V

    iput-object v1, p0, Landroid/net/http/RequestQueue$ActivePool;->mIdleCache:Landroid/net/http/IdleCache;

    .line 94
    iput p2, p0, Landroid/net/http/RequestQueue$ActivePool;->mConnectionCount:I

    .line 95
    iget v1, p0, Landroid/net/http/RequestQueue$ActivePool;->mConnectionCount:I

    new-array v1, v1, [Landroid/net/http/ConnectionThread;

    iput-object v1, p0, Landroid/net/http/RequestQueue$ActivePool;->mThreads:[Landroid/net/http/ConnectionThread;

    .line 97
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Landroid/net/http/RequestQueue$ActivePool;->mConnectionCount:I

    if-ge v0, v1, :cond_0

    .line 98
    iget-object v1, p0, Landroid/net/http/RequestQueue$ActivePool;->mThreads:[Landroid/net/http/ConnectionThread;

    new-instance v2, Landroid/net/http/ConnectionThread;

    #getter for: Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/net/http/RequestQueue;->access$000(Landroid/net/http/RequestQueue;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0, p0, p1}, Landroid/net/http/ConnectionThread;-><init>(Landroid/content/Context;ILandroid/net/http/RequestQueue$ConnectionManager;Landroid/net/http/RequestFeeder;)V

    aput-object v2, v1, v0

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_0
    return-void
.end method

.method static synthetic access$408(Landroid/net/http/RequestQueue$ActivePool;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Landroid/net/http/RequestQueue$ActivePool;->mTotalRequest:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/http/RequestQueue$ActivePool;->mTotalRequest:I

    return v0
.end method


# virtual methods
.method disablePersistence()V
    .locals 3

    .prologue
    .line 162
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Landroid/net/http/RequestQueue$ActivePool;->mConnectionCount:I

    if-ge v1, v2, :cond_1

    .line 163
    iget-object v2, p0, Landroid/net/http/RequestQueue$ActivePool;->mThreads:[Landroid/net/http/ConnectionThread;

    aget-object v2, v2, v1

    iget-object v0, v2, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    .line 164
    .local v0, connection:Landroid/net/http/Connection;
    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/http/Connection;->setCanPersist(Z)V

    .line 162
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    .end local v0           #connection:Landroid/net/http/Connection;
    :cond_1
    iget-object v2, p0, Landroid/net/http/RequestQueue$ActivePool;->mIdleCache:Landroid/net/http/IdleCache;

    invoke-virtual {v2}, Landroid/net/http/IdleCache;->clear()V

    .line 167
    return-void
.end method

.method public getConnection(Landroid/content/Context;Lorg/apache/http/HttpHost;)Landroid/net/http/Connection;
    .locals 4
    .parameter "context"
    .parameter "host"

    .prologue
    .line 186
    iget-object v1, p0, Landroid/net/http/RequestQueue$ActivePool;->this$0:Landroid/net/http/RequestQueue;

    #calls: Landroid/net/http/RequestQueue;->determineHost(Lorg/apache/http/HttpHost;)Lorg/apache/http/HttpHost;
    invoke-static {v1, p2}, Landroid/net/http/RequestQueue;->access$200(Landroid/net/http/RequestQueue;Lorg/apache/http/HttpHost;)Lorg/apache/http/HttpHost;

    move-result-object p2

    .line 187
    iget-object v1, p0, Landroid/net/http/RequestQueue$ActivePool;->mIdleCache:Landroid/net/http/IdleCache;

    invoke-virtual {v1, p2}, Landroid/net/http/IdleCache;->getConnection(Lorg/apache/http/HttpHost;)Landroid/net/http/Connection;

    move-result-object v0

    .line 188
    .local v0, con:Landroid/net/http/Connection;
    if-nez v0, :cond_0

    .line 189
    iget v1, p0, Landroid/net/http/RequestQueue$ActivePool;->mTotalConnection:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/net/http/RequestQueue$ActivePool;->mTotalConnection:I

    .line 190
    iget-object v1, p0, Landroid/net/http/RequestQueue$ActivePool;->this$0:Landroid/net/http/RequestQueue;

    #getter for: Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/http/RequestQueue;->access$000(Landroid/net/http/RequestQueue;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/net/http/RequestQueue$ActivePool;->this$0:Landroid/net/http/RequestQueue;

    #getter for: Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;
    invoke-static {v2}, Landroid/net/http/RequestQueue;->access$100(Landroid/net/http/RequestQueue;)Lorg/apache/http/HttpHost;

    move-result-object v2

    iget-object v3, p0, Landroid/net/http/RequestQueue$ActivePool;->this$0:Landroid/net/http/RequestQueue;

    invoke-static {v1, p2, v2, v3}, Landroid/net/http/Connection;->getConnection(Landroid/content/Context;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)Landroid/net/http/Connection;

    move-result-object v0

    .line 193
    :cond_0
    return-object v0
.end method

.method public getProxyHost()Lorg/apache/http/HttpHost;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Landroid/net/http/RequestQueue$ActivePool;->this$0:Landroid/net/http/RequestQueue;

    #getter for: Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;
    invoke-static {v0}, Landroid/net/http/RequestQueue;->access$100(Landroid/net/http/RequestQueue;)Lorg/apache/http/HttpHost;

    move-result-object v0

    return-object v0
.end method

.method getThread(Lorg/apache/http/HttpHost;)Landroid/net/http/ConnectionThread;
    .locals 5
    .parameter "host"

    .prologue
    .line 173
    iget-object v4, p0, Landroid/net/http/RequestQueue$ActivePool;->this$0:Landroid/net/http/RequestQueue;

    monitor-enter v4

    .line 174
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    :try_start_0
    iget-object v3, p0, Landroid/net/http/RequestQueue$ActivePool;->mThreads:[Landroid/net/http/ConnectionThread;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 175
    iget-object v3, p0, Landroid/net/http/RequestQueue$ActivePool;->mThreads:[Landroid/net/http/ConnectionThread;

    aget-object v1, v3, v2

    .line 176
    .local v1, ct:Landroid/net/http/ConnectionThread;
    iget-object v0, v1, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    .line 177
    .local v0, connection:Landroid/net/http/Connection;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v3, p1}, Lorg/apache/http/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 178
    monitor-exit v4

    .line 182
    .end local v0           #connection:Landroid/net/http/Connection;
    .end local v1           #ct:Landroid/net/http/ConnectionThread;
    :goto_1
    return-object v1

    .line 174
    .restart local v0       #connection:Landroid/net/http/Connection;
    .restart local v1       #ct:Landroid/net/http/ConnectionThread;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 181
    .end local v0           #connection:Landroid/net/http/Connection;
    .end local v1           #ct:Landroid/net/http/ConnectionThread;
    :cond_1
    monitor-exit v4

    .line 182
    const/4 v1, 0x0

    goto :goto_1

    .line 181
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method logState()V
    .locals 4

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .local v0, dump:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Landroid/net/http/RequestQueue$ActivePool;->mConnectionCount:I

    if-ge v1, v2, :cond_0

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/net/http/RequestQueue$ActivePool;->mThreads:[Landroid/net/http/ConnectionThread;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public recycleConnection(Landroid/net/http/Connection;)Z
    .locals 2
    .parameter "connection"

    .prologue
    .line 196
    iget-object v0, p0, Landroid/net/http/RequestQueue$ActivePool;->mIdleCache:Landroid/net/http/IdleCache;

    invoke-virtual {p1}, Landroid/net/http/Connection;->getHost()Lorg/apache/http/HttpHost;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/net/http/IdleCache;->cacheConnection(Lorg/apache/http/HttpHost;Landroid/net/http/Connection;)Z

    move-result v0

    return v0
.end method

.method shutdown()V
    .locals 2

    .prologue
    .line 110
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Landroid/net/http/RequestQueue$ActivePool;->mConnectionCount:I

    if-ge v0, v1, :cond_0

    .line 111
    iget-object v1, p0, Landroid/net/http/RequestQueue$ActivePool;->mThreads:[Landroid/net/http/ConnectionThread;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/net/http/ConnectionThread;->requestStop()V

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_0
    return-void
.end method

.method startConnectionThread()V
    .locals 2

    .prologue
    .line 116
    iget-object v1, p0, Landroid/net/http/RequestQueue$ActivePool;->this$0:Landroid/net/http/RequestQueue;

    monitor-enter v1

    .line 117
    :try_start_0
    iget-object v0, p0, Landroid/net/http/RequestQueue$ActivePool;->this$0:Landroid/net/http/RequestQueue;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 118
    monitor-exit v1

    .line 119
    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startTiming()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 122
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Landroid/net/http/RequestQueue$ActivePool;->mConnectionCount:I

    if-ge v0, v2, :cond_0

    .line 123
    iget-object v2, p0, Landroid/net/http/RequestQueue$ActivePool;->mThreads:[Landroid/net/http/ConnectionThread;

    aget-object v1, v2, v0

    .line 124
    .local v1, rt:Landroid/net/http/ConnectionThread;
    const-wide/16 v2, -0x1

    iput-wide v2, v1, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    .line 125
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroid/net/http/ConnectionThread;->mTotalThreadTime:J

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    .end local v1           #rt:Landroid/net/http/ConnectionThread;
    :cond_0
    iput v4, p0, Landroid/net/http/RequestQueue$ActivePool;->mTotalRequest:I

    .line 128
    iput v4, p0, Landroid/net/http/RequestQueue$ActivePool;->mTotalConnection:I

    .line 129
    return-void
.end method

.method startup()V
    .locals 2

    .prologue
    .line 104
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Landroid/net/http/RequestQueue$ActivePool;->mConnectionCount:I

    if-ge v0, v1, :cond_0

    .line 105
    iget-object v1, p0, Landroid/net/http/RequestQueue$ActivePool;->mThreads:[Landroid/net/http/ConnectionThread;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/net/http/ConnectionThread;->start()V

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_0
    return-void
.end method

.method public stopTiming()V
    .locals 7

    .prologue
    .line 132
    const/4 v2, 0x0

    .line 133
    .local v2, totalTime:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v3, p0, Landroid/net/http/RequestQueue$ActivePool;->mConnectionCount:I

    if-ge v0, v3, :cond_1

    .line 134
    iget-object v3, p0, Landroid/net/http/RequestQueue$ActivePool;->mThreads:[Landroid/net/http/ConnectionThread;

    aget-object v1, v3, v0

    .line 135
    .local v1, rt:Landroid/net/http/ConnectionThread;
    iget-wide v3, v1, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 136
    int-to-long v3, v2

    iget-wide v5, v1, Landroid/net/http/ConnectionThread;->mTotalThreadTime:J

    add-long/2addr v3, v5

    long-to-int v2, v3

    .line 138
    :cond_0
    const-wide/16 v3, 0x0

    iput-wide v3, v1, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    .end local v1           #rt:Landroid/net/http/ConnectionThread;
    :cond_1
    const-string v3, "Http"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Http thread used "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/net/http/RequestQueue$ActivePool;->mTotalRequest:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " requests and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/net/http/RequestQueue$ActivePool;->mTotalConnection:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " new connections"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void
.end method
