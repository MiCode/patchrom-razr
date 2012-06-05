.class public Landroid/media/MediaInserter;
.super Ljava/lang/Object;
.source "MediaInserter.java"


# static fields
.field static final TAG:Ljava/lang/String; = "MediaInserter"


# instance fields
.field private mBufferSizePerUri:I

.field private mCurTableUri:Landroid/net/Uri;

.field private mIsFlushed:Z

.field public mNeedInsert:Z

.field private mProvider:Landroid/content/IContentProvider;

.field private mRowMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/IContentProvider;I)V
    .locals 1
    .parameter "provider"
    .parameter "bufferSizePerUri"

    .prologue
    .line 97
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    .line 98
    iput-object p1, p0, Landroid/media/MediaInserter;->mProvider:Landroid/content/IContentProvider;

    .line 99
    iput p2, p0, Landroid/media/MediaInserter;->mBufferSizePerUri:I

    .line 100
    return-void
.end method

.method private flush(Landroid/net/Uri;)V
    .locals 6
    .parameter "tableUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v4, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 127
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v3, 0x0

    .line 129
    .local v3, valuesArray:[Landroid/content/ContentValues;
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 132
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v3, v4, [Landroid/content/ContentValues;

    .line 134
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [Landroid/content/ContentValues;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :cond_0
    if-eqz v3, :cond_1

    .line 144
    iget-object v4, p0, Landroid/media/MediaInserter;->mProvider:Landroid/content/IContentProvider;

    invoke-interface {v4, p1, v3}, Landroid/content/IContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 145
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 147
    :cond_2
    return-void

    .line 136
    :catch_0
    move-exception v1

    .line 138
    .local v1, ex:Ljava/lang/OutOfMemoryError;
    const/4 v3, 0x0

    .line 139
    const-string v4, "MediaInserter"

    const-string v5, "BulkInsert cannot be done because of OOM, trying individual insert...."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 141
    iget-object v5, p0, Landroid/media/MediaInserter;->mProvider:Landroid/content/IContentProvider;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    invoke-interface {v5, p1, v4}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method


# virtual methods
.method beginFile(Landroid/net/Uri;)V
    .locals 1
    .parameter "tableUri"

    .prologue
    const/4 v0, 0x0

    .line 66
    iput-object p1, p0, Landroid/media/MediaInserter;->mCurTableUri:Landroid/net/Uri;

    .line 67
    iput-boolean v0, p0, Landroid/media/MediaInserter;->mIsFlushed:Z

    .line 68
    iput-boolean v0, p0, Landroid/media/MediaInserter;->mNeedInsert:Z

    .line 69
    return-void
.end method

.method public checkFlush(J)J
    .locals 4
    .parameter "rowId"

    .prologue
    .line 54
    iget-boolean v2, p0, Landroid/media/MediaInserter;->mNeedInsert:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/media/MediaInserter;->mIsFlushed:Z

    if-nez v2, :cond_1

    .line 55
    iget-object v2, p0, Landroid/media/MediaInserter;->mCurTableUri:Landroid/net/Uri;

    invoke-virtual {p0, v2}, Landroid/media/MediaInserter;->flushLast(Landroid/net/Uri;)J

    move-result-wide v0

    .line 56
    .local v0, _rowId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 57
    move-wide v0, p1

    .line 58
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/MediaInserter;->mIsFlushed:Z

    .line 62
    .end local v0           #_rowId:J
    :goto_0
    return-wide v0

    :cond_1
    move-wide v0, p1

    goto :goto_0
.end method

.method public flushAll()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 119
    iget-object v2, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 120
    .local v1, tableUri:Landroid/net/Uri;
    invoke-direct {p0, v1}, Landroid/media/MediaInserter;->flush(Landroid/net/Uri;)V

    goto :goto_0

    .line 122
    .end local v1           #tableUri:Landroid/net/Uri;
    :cond_0
    iget-object v2, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 123
    return-void
.end method

.method public flushLast(Landroid/net/Uri;)J
    .locals 3
    .parameter "tableUri"

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Landroid/media/MediaInserter;->flushLastInternal(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 73
    .local v2, uri:Landroid/net/Uri;
    if-nez v2, :cond_0

    .line 74
    const-wide/16 v0, 0x0

    .line 77
    :goto_0
    return-wide v0

    .line 76
    :cond_0
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 77
    .local v0, rowId:J
    goto :goto_0
.end method

.method public flushLastInternal(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 7
    .parameter "tableUri"

    .prologue
    .line 81
    const/4 v2, 0x0

    .line 82
    .local v2, uri:Landroid/net/Uri;
    iget-object v4, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 83
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 84
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 85
    .local v3, value:Landroid/content/ContentValues;
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/media/MediaInserter;->mIsFlushed:Z

    .line 87
    :try_start_0
    iget-object v4, p0, Landroid/media/MediaInserter;->mProvider:Landroid/content/IContentProvider;

    invoke-interface {v4, p1, v3}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 93
    .end local v3           #value:Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return-object v2

    .line 88
    .restart local v3       #value:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 89
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "MediaInserter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insert failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 3
    .parameter "tableUri"
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 103
    iget-object v1, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 104
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-nez v0, :cond_0

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .restart local v0       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    iget-object v1, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Landroid/media/MediaInserter;->mBufferSizePerUri:I

    if-lt v1, v2, :cond_1

    .line 109
    invoke-direct {p0, p1}, Landroid/media/MediaInserter;->flush(Landroid/net/Uri;)V

    .line 112
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/MediaInserter;->mNeedInsert:Z

    .line 114
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/MediaInserter;->mIsFlushed:Z

    .line 116
    return-void
.end method
