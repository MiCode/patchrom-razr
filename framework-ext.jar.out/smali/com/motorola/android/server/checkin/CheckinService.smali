.class public Lcom/motorola/android/server/checkin/CheckinService;
.super Landroid/os/ICheckinService$Stub;
.source "CheckinService.java"


# static fields
.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "CheckinService"

.field private static final _inLog:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _logLevel:I

.field private _processTags:Ljava/lang/String;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 151
    new-instance v0, Lcom/motorola/android/server/checkin/CheckinService$1;

    invoke-direct {v0}, Lcom/motorola/android/server/checkin/CheckinService$1;-><init>()V

    sput-object v0, Lcom/motorola/android/server/checkin/CheckinService;->_inLog:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/os/ICheckinService$Stub;-><init>()V

    .line 70
    const/4 v0, 0x4

    iput v0, p0, Lcom/motorola/android/server/checkin/CheckinService;->_logLevel:I

    .line 71
    const-string v0, "."

    iput-object v0, p0, Lcom/motorola/android/server/checkin/CheckinService;->_processTags:Ljava/lang/String;

    .line 82
    iput-object p1, p0, Lcom/motorola/android/server/checkin/CheckinService;->mContext:Landroid/content/Context;

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/server/checkin/CheckinService;->mHandler:Landroid/os/Handler;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/server/checkin/CheckinService;->mContentResolver:Landroid/content/ContentResolver;

    .line 86
    invoke-virtual {p0}, Lcom/motorola/android/server/checkin/CheckinService;->getLogLevel()I

    move-result v0

    iput v0, p0, Lcom/motorola/android/server/checkin/CheckinService;->_logLevel:I

    .line 87
    return-void
.end method


# virtual methods
.method public canLog(Ljava/lang/String;)Z
    .locals 9
    .parameter "processTag"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 98
    :try_start_0
    const-string v6, "CheckinService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CheckinService:canLog Application tag to log: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v6, p0, Lcom/motorola/android/server/checkin/CheckinService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/motorola/android/provider/Checkin$Properties$Tag;->PROCESS_TAGS:Lcom/motorola/android/provider/Checkin$Properties$Tag;

    invoke-static {v6, v7}, Lcom/motorola/android/provider/Checkin;->getProperty(Landroid/content/ContentResolver;Lcom/motorola/android/provider/Checkin$Properties$Tag;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, allowedProcessTags:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 104
    const-string v5, "CheckinService"

    const-string v6, "CheckinService:canLog No tags configured"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .end local v0           #allowedProcessTags:Ljava/lang/String;
    :goto_0
    return v4

    .line 107
    .restart local v0       #allowedProcessTags:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v5, :cond_1

    iget-object v6, p0, Lcom/motorola/android/server/checkin/CheckinService;->_processTags:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 109
    const-string v6, "CheckinService"

    const-string v7, "CheckinService:canLog All Tags Allowed."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 111
    goto :goto_0

    .line 114
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, csAllowedProcessTags:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, modifiedProcessTag:Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 120
    const-string v6, "CheckinService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CheckinService:canLog Logging allowed for process tag: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 122
    goto :goto_0

    .line 124
    :cond_2
    const-string v5, "CheckinService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CheckinService:canLog Logging blacklisted for process tag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    .end local v0           #allowedProcessTags:Ljava/lang/String;
    .end local v1           #csAllowedProcessTags:Ljava/lang/String;
    .end local v3           #modifiedProcessTag:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 131
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "CheckinService"

    const-string v6, "CheckinService:canLog Exception thrown"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public checkin()Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public getLogLevel()I
    .locals 3

    .prologue
    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/server/checkin/CheckinService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/motorola/android/provider/Checkin$Properties$Tag;->LOG_LEVEL:Lcom/motorola/android/provider/Checkin$Properties$Tag;

    invoke-static {v1, v2}, Lcom/motorola/android/provider/Checkin;->getProperty(Landroid/content/ContentResolver;Lcom/motorola/android/provider/Checkin$Properties$Tag;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, level:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/motorola/android/server/checkin/CheckinService;->_logLevel:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .end local v0           #level:Ljava/lang/String;
    :goto_0
    iget v1, p0, Lcom/motorola/android/server/checkin/CheckinService;->_logLevel:I

    return v1

    .line 140
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public log(ILjava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "level"
    .parameter "tag"
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 162
    iget v1, p0, Lcom/motorola/android/server/checkin/CheckinService;->_logLevel:I

    if-lt p1, v1, :cond_0

    const/4 v1, 0x7

    if-le p1, v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/motorola/android/server/checkin/CheckinService;->_logLevel:I

    .line 175
    :goto_0
    return v1

    .line 163
    :cond_1
    sget-object v1, Lcom/motorola/android/server/checkin/CheckinService;->_inLog:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 164
    .local v0, reenter:I
    if-eqz v0, :cond_2

    iget v1, p0, Lcom/motorola/android/server/checkin/CheckinService;->_logLevel:I

    goto :goto_0

    .line 166
    :cond_2
    sget-object v1, Lcom/motorola/android/server/checkin/CheckinService;->_inLog:Ljava/lang/ThreadLocal;

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 170
    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/server/checkin/CheckinService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "processTags"

    invoke-static {v1, p2, p3, v2}, Lcom/motorola/android/provider/Checkin;->logEvent(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    sget-object v1, Lcom/motorola/android/server/checkin/CheckinService;->_inLog:Ljava/lang/ThreadLocal;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 175
    iget v1, p0, Lcom/motorola/android/server/checkin/CheckinService;->_logLevel:I

    goto :goto_0

    .line 172
    :catchall_0
    move-exception v1

    sget-object v2, Lcom/motorola/android/server/checkin/CheckinService;->_inLog:Ljava/lang/ThreadLocal;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw v1
.end method

.method public setLogLevel(I)V
    .locals 3
    .parameter "level"

    .prologue
    .line 147
    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/4 v0, 0x7

    if-le p1, v0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/motorola/android/server/checkin/CheckinService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/motorola/android/provider/Checkin$Properties$Tag;->LOG_LEVEL:Lcom/motorola/android/provider/Checkin$Properties$Tag;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/Checkin;->setProperty(Landroid/content/ContentResolver;Lcom/motorola/android/provider/Checkin$Properties$Tag;Ljava/lang/String;)Landroid/net/Uri;

    goto :goto_0
.end method
