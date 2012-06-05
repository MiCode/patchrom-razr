.class public Landroid/media/MiniThumbFile;
.super Ljava/lang/Object;
.source "MiniThumbFile.java"


# static fields
.field static final BYTES_PER_INDEX:I = 0x8

.field public static final BYTES_PER_MINTHUMB:I = 0x2710

.field private static final HEADER_SIZE:I = 0xd

.field static final IDX_HEADER_SIZE:I = 0x8

.field static final IDX_INIT_SIZE:I = 0x64

.field private static final MINI_THUMB_DATA_FILE_VERSION:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MiniThumbFile"

.field private static sThumbFiles:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MiniThumbFile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private LOCAL_LOGV:Z

.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mChannel:Ljava/nio/channels/FileChannel;

.field private mIdxChannel:Ljava/nio/channels/FileChannel;

.field private mMiniThumbFile:Ljava/io/RandomAccessFile;

.field private mMiniThumbIdxFile:Ljava/io/RandomAccessFile;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    .line 129
    invoke-static {}, Landroid/media/MiniThumbFile;->removeOldFile()V

    .line 130
    invoke-static {}, Landroid/media/MiniThumbFile;->removeOldIdxFile()V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    const/16 v1, 0x2710

    .line 338
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/MiniThumbFile;->LOCAL_LOGV:Z

    .line 339
    iput-object p1, p0, Landroid/media/MiniThumbFile;->mUri:Landroid/net/Uri;

    .line 341
    const/16 v0, 0x320

    .line 342
    .local v0, bufSize:I
    if-le v1, v0, :cond_0

    move v0, v1

    .line 343
    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    .line 345
    return-void
.end method

.method private findEmptyPosition()J
    .locals 10

    .prologue
    const-wide/16 v8, 0x2710

    .line 269
    const-wide/16 v4, -0x1

    .line 271
    .local v4, pos:J
    invoke-direct {p0}, Landroid/media/MiniThumbFile;->miniThumbDataFile()Ljava/io/RandomAccessFile;

    move-result-object v6

    .line 272
    .local v6, r:Ljava/io/RandomAccessFile;
    if-eqz v6, :cond_0

    .line 273
    iget-object v7, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {p0, v7}, Landroid/media/MiniThumbFile;->getChannelSize(Ljava/nio/channels/FileChannel;)J

    move-result-wide v2

    .line 274
    .local v2, fileSize:J
    div-long v4, v2, v8

    .line 275
    rem-long v0, v2, v8

    .line 276
    .local v0, delta:J
    const-wide/16 v7, 0xd

    cmp-long v7, v0, v7

    if-lez v7, :cond_0

    .line 277
    const-wide/16 v7, 0x1

    add-long/2addr v4, v7

    .line 281
    .end local v0           #delta:J
    .end local v2           #fileSize:J
    :cond_0
    return-wide v4
.end method

.method private getActualPostion(J)J
    .locals 8
    .parameter "id"

    .prologue
    .line 285
    const-wide/16 v0, -0x1

    .line 286
    .local v0, actualPos:J
    invoke-direct {p0}, Landroid/media/MiniThumbFile;->miniThumbIdxFile()Ljava/io/RandomAccessFile;

    move-result-object v4

    .line 287
    .local v4, r:Ljava/io/RandomAccessFile;
    if-eqz v4, :cond_0

    .line 288
    invoke-virtual {p0, p1, p2}, Landroid/media/MiniThumbFile;->ensureInitIndexFile(J)Z

    .line 289
    const-wide/16 v5, 0x8

    mul-long v2, p1, v5

    .line 290
    .local v2, pos:J
    invoke-virtual {p0, v2, v3}, Landroid/media/MiniThumbFile;->readLongFromIdxFile(J)J

    move-result-wide v0

    .line 291
    iget-boolean v5, p0, Landroid/media/MiniThumbFile;->LOCAL_LOGV:Z

    if-eqz v5, :cond_0

    .line 292
    const-string v5, "MiniThumbFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Translate to actual pos "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    .end local v2           #pos:J
    :cond_0
    return-wide v0
.end method

.method private static indexFilePath(I)Ljava/lang/String;
    .locals 3
    .parameter "version"

    .prologue
    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/.thumbnails"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, directoryName:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.thumbdata-idx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized instance(Landroid/net/Uri;)Landroid/media/MiniThumbFile;
    .locals 5
    .parameter "uri"

    .prologue
    .line 81
    const-class v3, Landroid/media/MiniThumbFile;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 82
    .local v1, type:Ljava/lang/String;
    sget-object v2, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MiniThumbFile;

    .line 84
    .local v0, file:Landroid/media/MiniThumbFile;
    if-nez v0, :cond_0

    .line 85
    new-instance v0, Landroid/media/MiniThumbFile;

    .end local v0           #file:Landroid/media/MiniThumbFile;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://media/external/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/media"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/media/MiniThumbFile;-><init>(Landroid/net/Uri;)V

    .line 87
    .restart local v0       #file:Landroid/media/MiniThumbFile;
    sget-object v2, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_0
    monitor-exit v3

    return-object v0

    .line 81
    .end local v0           #file:Landroid/media/MiniThumbFile;
    .end local v1           #type:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private miniThumbDataFile()Ljava/io/RandomAccessFile;
    .locals 7

    .prologue
    .line 310
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    if-nez v4, :cond_1

    .line 311
    const/4 v4, 0x3

    invoke-static {v4}, Landroid/media/MiniThumbFile;->randomAccessFilePath(I)Ljava/lang/String;

    move-result-object v3

    .line 312
    .local v3, path:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 313
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    .line 314
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_0

    .line 315
    const-string v4, "MiniThumbFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to create .thumbnails directory "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 321
    .local v2, f:Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v4, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :goto_0
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    if-eqz v4, :cond_1

    .line 332
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    .line 335
    .end local v0           #directory:Ljava/io/File;
    .end local v2           #f:Ljava/io/File;
    .end local v3           #path:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    return-object v4

    .line 322
    .restart local v0       #directory:Ljava/io/File;
    .restart local v2       #f:Ljava/io/File;
    .restart local v3       #path:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 326
    .local v1, ex:Ljava/io/IOException;
    :try_start_1
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v4, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 327
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private miniThumbIdxFile()Ljava/io/RandomAccessFile;
    .locals 7

    .prologue
    .line 227
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mMiniThumbIdxFile:Ljava/io/RandomAccessFile;

    if-nez v4, :cond_1

    .line 228
    const/4 v4, 0x3

    invoke-static {v4}, Landroid/media/MiniThumbFile;->indexFilePath(I)Ljava/lang/String;

    move-result-object v3

    .line 229
    .local v3, path:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 230
    .local v0, directory:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    .line 231
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_0

    .line 232
    const-string v4, "MiniThumbFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to create .thumbnails directory "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 238
    .local v2, f:Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v4, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Landroid/media/MiniThumbFile;->mMiniThumbIdxFile:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_0
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mMiniThumbIdxFile:Ljava/io/RandomAccessFile;

    if-eqz v4, :cond_1

    .line 249
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mMiniThumbIdxFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MiniThumbFile;->mIdxChannel:Ljava/nio/channels/FileChannel;

    .line 252
    .end local v0           #directory:Ljava/io/File;
    .end local v2           #f:Ljava/io/File;
    .end local v3           #path:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mMiniThumbIdxFile:Ljava/io/RandomAccessFile;

    return-object v4

    .line 239
    .restart local v0       #directory:Ljava/io/File;
    .restart local v2       #f:Ljava/io/File;
    .restart local v3       #path:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 243
    .local v1, ex:Ljava/io/IOException;
    :try_start_1
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v4, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Landroid/media/MiniThumbFile;->mMiniThumbIdxFile:Ljava/io/RandomAccessFile;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 244
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private static randomAccessFilePath(I)Ljava/lang/String;
    .locals 3
    .parameter "version"

    .prologue
    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/.thumbnails"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, directoryName:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.thumbdata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static removeOldFile()V
    .locals 16

    .prologue
    const/4 v12, 0x3

    const/4 v15, 0x2

    .line 101
    invoke-static {v15}, Landroid/media/MiniThumbFile;->randomAccessFilePath(I)Ljava/lang/String;

    move-result-object v8

    .line 103
    .local v8, oldPath:Ljava/lang/String;
    invoke-static {v12}, Landroid/media/MiniThumbFile;->randomAccessFilePath(I)Ljava/lang/String;

    move-result-object v9

    .line 104
    .local v9, outdatedPath:Ljava/lang/String;
    const-string v11, "content://media/external/images/media"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 105
    .local v10, videoUri:Landroid/net/Uri;
    const-string v11, "content://media/external/video/media"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 106
    .local v4, imageUri:Landroid/net/Uri;
    new-array v7, v12, [Ljava/io/File;

    const/4 v11, 0x0

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v12, v7, v11

    const/4 v11, 0x1

    new-instance v12, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Landroid/net/Uri;->hashCode()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v12, v7, v11

    new-instance v11, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Landroid/net/Uri;->hashCode()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v11, v7, v15

    .line 107
    .local v7, oldFiles:[Ljava/io/File;
    move-object v0, v7

    .local v0, arr$:[Ljava/io/File;
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v2, v0, v3

    .line 108
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 109
    const/4 v5, 0x0

    .line 111
    .local v5, isOk:Z
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 115
    :goto_1
    if-nez v5, :cond_0

    .line 116
    const-string v11, "MiniThumbFile"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "--Can\'t delete file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .end local v5           #isOk:Z
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 112
    .restart local v5       #isOk:Z
    :catch_0
    move-exception v1

    .line 113
    .local v1, ex:Ljava/lang/Exception;
    const-string v11, "MiniThumbFile"

    const-string v12, " Exception: ex"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 119
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v2           #file:Ljava/io/File;
    .end local v5           #isOk:Z
    :cond_1
    return-void
.end method

.method private static removeOldIdxFile()V
    .locals 3

    .prologue
    .line 134
    const/4 v2, 0x2

    invoke-static {v2}, Landroid/media/MiniThumbFile;->indexFilePath(I)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, oldIdxPath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    .local v0, oldIdx:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static declared-synchronized reset()V
    .locals 4

    .prologue
    .line 74
    const-class v3, Landroid/media/MiniThumbFile;

    monitor-enter v3

    :try_start_0
    sget-object v2, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MiniThumbFile;

    .line 75
    .local v0, file:Landroid/media/MiniThumbFile;
    invoke-virtual {v0}, Landroid/media/MiniThumbFile;->deactivate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 74
    .end local v0           #file:Landroid/media/MiniThumbFile;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 77
    :cond_0
    :try_start_1
    sget-object v2, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    monitor-exit v3

    return-void
.end method

.method private declared-synchronized writeLongToIndex(JJ)Z
    .locals 7
    .parameter "id"
    .parameter "targetId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v5, 0x8

    .line 299
    monitor-enter p0

    mul-long v2, p1, v5

    .line 300
    .local v2, pos:J
    :try_start_0
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 301
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, p3, p4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 302
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 303
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v4, v2, v3}, Landroid/media/MiniThumbFile;->writeToIdxFile(Ljava/nio/ByteBuffer;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 305
    .local v0, nWrite:J
    cmp-long v4, v0, v5

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    monitor-exit p0

    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 299
    .end local v0           #nWrite:J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method


# virtual methods
.method public declared-synchronized deactivate()V
    .locals 1

    .prologue
    .line 348
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 350
    :try_start_1
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 351
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    .line 353
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mMiniThumbIdxFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 354
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MiniThumbFile;->mMiniThumbIdxFile:Ljava/io/RandomAccessFile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 360
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 348
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 356
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method ensureInitIndexFile(J)Z
    .locals 13
    .parameter "id"

    .prologue
    .line 176
    iget-object v9, p0, Landroid/media/MiniThumbFile;->mIdxChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {p0, v9}, Landroid/media/MiniThumbFile;->getChannelSize(Ljava/nio/channels/FileChannel;)J

    move-result-wide v9

    const-wide/16 v11, 0x8

    div-long/2addr v9, v11

    const-wide/16 v11, 0x1

    sub-long v1, v9, v11

    .line 177
    .local v1, maxId:J
    const-wide/16 v9, 0x0

    cmp-long v9, v1, v9

    if-gez v9, :cond_0

    const-wide/16 v1, 0x0

    .line 178
    :cond_0
    cmp-long v9, p1, v1

    if-lez v9, :cond_4

    .line 179
    const-wide/16 v5, 0x320

    .line 181
    .local v5, size:J
    :cond_1
    iget-object v9, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 182
    iget-object v9, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    long-to-int v10, v5

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 183
    const-wide/16 v9, 0x8

    const-wide/16 v11, 0x8

    mul-long/2addr v11, v1

    add-long v7, v9, v11

    .line 184
    .local v7, start:J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v9, 0x64

    if-ge v0, v9, :cond_2

    .line 185
    iget-object v9, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const-wide/16 v10, -0x1

    invoke-virtual {v9, v10, v11}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    :cond_2
    iget-object v9, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 188
    iget-object v9, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v9, v7, v8}, Landroid/media/MiniThumbFile;->writeToIdxFile(Ljava/nio/ByteBuffer;J)J

    move-result-wide v3

    .line 189
    .local v3, nWrite:J
    const-wide/16 v9, 0x8

    div-long v9, v3, v9

    add-long/2addr v1, v9

    .line 190
    const-wide/16 v9, 0x0

    cmp-long v9, v3, v9

    if-gtz v9, :cond_3

    .line 191
    const-string v9, "MiniThumbFile"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failed write "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v9, 0x0

    .line 197
    .end local v0           #i:I
    .end local v3           #nWrite:J
    .end local v5           #size:J
    .end local v7           #start:J
    :goto_1
    return v9

    .line 194
    .restart local v0       #i:I
    .restart local v3       #nWrite:J
    .restart local v5       #size:J
    .restart local v7       #start:J
    :cond_3
    cmp-long v9, v1, p1

    if-ltz v9, :cond_1

    .line 197
    .end local v0           #i:I
    .end local v3           #nWrite:J
    .end local v5           #size:J
    .end local v7           #start:J
    :cond_4
    const/4 v9, 0x1

    goto :goto_1
.end method

.method getChannelSize(Ljava/nio/channels/FileChannel;)J
    .locals 6
    .parameter "channel"

    .prologue
    .line 256
    const-wide/16 v1, 0x0

    .line 258
    .local v1, size:J
    if-eqz p1, :cond_0

    .line 260
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 265
    :cond_0
    :goto_0
    return-wide v1

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, e:Ljava/io/IOException;
    const-string v3, "MiniThumbFile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " when get channel size"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized getMagic(J)J
    .locals 10
    .parameter "id"

    .prologue
    .line 368
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/media/MiniThumbFile;->miniThumbDataFile()Ljava/io/RandomAccessFile;

    move-result-object v8

    .line 369
    .local v8, r:Ljava/io/RandomAccessFile;
    if-eqz v8, :cond_3

    .line 371
    invoke-direct {p0}, Landroid/media/MiniThumbFile;->miniThumbIdxFile()Ljava/io/RandomAccessFile;

    move-result-object v9

    .line 372
    .local v9, r1:Ljava/io/RandomAccessFile;
    invoke-direct {p0, p1, p2}, Landroid/media/MiniThumbFile;->getActualPostion(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide p1

    .line 373
    const-wide/16 v3, 0x0

    cmp-long v0, p1, v3

    if-gez v0, :cond_1

    const-wide/16 v3, 0x0

    .line 405
    .end local v9           #r1:Ljava/io/RandomAccessFile;
    :cond_0
    :goto_0
    monitor-exit p0

    return-wide v3

    .line 375
    .restart local v9       #r1:Ljava/io/RandomAccessFile;
    :cond_1
    const-wide/16 v3, 0x2710

    mul-long v1, p1, v3

    .line 376
    .local v1, pos:J
    const/4 v7, 0x0

    .line 378
    .local v7, lock:Ljava/nio/channels/FileLock;
    :try_start_1
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 379
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 381
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v3, 0x9

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v7

    .line 384
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    iget-object v3, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3, v1, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v0

    const/16 v3, 0x9

    if-ne v0, v3, :cond_2

    .line 385
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 386
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 387
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-wide v3

    .line 398
    if-eqz v7, :cond_0

    :try_start_2
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 400
    :catch_0
    move-exception v0

    goto :goto_0

    .line 398
    :cond_2
    if-eqz v7, :cond_3

    :try_start_3
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 405
    .end local v1           #pos:J
    .end local v7           #lock:Ljava/nio/channels/FileLock;
    .end local v9           #r1:Ljava/io/RandomAccessFile;
    :cond_3
    :goto_1
    const-wide/16 v3, 0x0

    goto :goto_0

    .line 390
    .restart local v1       #pos:J
    .restart local v7       #lock:Ljava/nio/channels/FileLock;
    .restart local v9       #r1:Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v6

    .line 391
    .local v6, ex:Ljava/io/IOException;
    :try_start_4
    const-string v0, "MiniThumbFile"

    const-string v3, "Got exception checking file magic: "

    invoke-static {v0, v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 398
    if-eqz v7, :cond_3

    :try_start_5
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 400
    :catch_2
    move-exception v0

    goto :goto_1

    .line 392
    .end local v6           #ex:Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 394
    .local v6, ex:Ljava/lang/RuntimeException;
    :try_start_6
    const-string v0, "MiniThumbFile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got exception when reading magic, id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", disk full or mount read-only? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 398
    if-eqz v7, :cond_3

    :try_start_7
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    .line 400
    :catch_4
    move-exception v0

    goto :goto_1

    .line 397
    .end local v6           #ex:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v0

    .line 398
    if-eqz v7, :cond_4

    :try_start_8
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 402
    :cond_4
    :goto_2
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 368
    .end local v1           #pos:J
    .end local v7           #lock:Ljava/nio/channels/FileLock;
    .end local v8           #r:Ljava/io/RandomAccessFile;
    .end local v9           #r1:Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 400
    .restart local v1       #pos:J
    .restart local v7       #lock:Ljava/nio/channels/FileLock;
    .restart local v8       #r:Ljava/io/RandomAccessFile;
    .restart local v9       #r1:Ljava/io/RandomAccessFile;
    :catch_5
    move-exception v0

    goto :goto_1

    :catch_6
    move-exception v3

    goto :goto_2
.end method

.method public declared-synchronized getMiniThumbFromFile(J[B)[B
    .locals 17
    .parameter "id"
    .parameter "data"

    .prologue
    .line 467
    monitor-enter p0

    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/media/MiniThumbFile;->miniThumbDataFile()Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v14

    .line 468
    .local v14, r:Ljava/io/RandomAccessFile;
    if-nez v14, :cond_1

    const/16 p3, 0x0

    .line 506
    .end local p3
    :cond_0
    :goto_0
    monitor-exit p0

    return-object p3

    .line 471
    .restart local p3
    :cond_1
    :try_start_1
    invoke-direct/range {p0 .. p0}, Landroid/media/MiniThumbFile;->miniThumbIdxFile()Ljava/io/RandomAccessFile;

    move-result-object v15

    .line 472
    .local v15, r1:Ljava/io/RandomAccessFile;
    invoke-direct/range {p0 .. p2}, Landroid/media/MiniThumbFile;->getActualPostion(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide p1

    .line 475
    const-wide/16 v5, 0x2710

    mul-long v3, p1, v5

    .line 476
    .local v3, pos:J
    const/4 v11, 0x0

    .line 478
    .local v11, lock:Ljava/nio/channels/FileLock;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 479
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v5, 0x2710

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v11

    .line 480
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v5, v3, v4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v16

    .line 481
    .local v16, size:I
    const/16 v2, 0xd

    move/from16 v0, v16

    if-le v0, v2, :cond_2

    .line 482
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 483
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    .line 484
    .local v9, flag:B
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v12

    .line 485
    .local v12, magic:J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    .line 487
    .local v10, length:I
    add-int/lit8 v2, v10, 0xd

    move/from16 v0, v16

    if-lt v0, v2, :cond_2

    move-object/from16 v0, p3

    array-length v2, v0

    if-lt v2, v10, :cond_2

    .line 488
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v5, v10}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    .line 500
    if-eqz v11, :cond_0

    :try_start_3
    invoke-virtual {v11}, Ljava/nio/channels/FileLock;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 502
    :catch_0
    move-exception v2

    goto :goto_0

    .line 500
    .end local v9           #flag:B
    .end local v10           #length:I
    .end local v12           #magic:J
    :cond_2
    if-eqz v11, :cond_3

    :try_start_4
    invoke-virtual {v11}, Ljava/nio/channels/FileLock;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 506
    .end local v16           #size:I
    :cond_3
    :goto_1
    const/16 p3, 0x0

    goto :goto_0

    .line 492
    :catch_1
    move-exception v8

    .line 493
    .local v8, ex:Ljava/io/IOException;
    :try_start_5
    const-string v2, "MiniThumbFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "got exception when reading thumbnail id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 500
    if-eqz v11, :cond_3

    :try_start_6
    invoke-virtual {v11}, Ljava/nio/channels/FileLock;->release()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 502
    :catch_2
    move-exception v2

    goto :goto_1

    .line 494
    .end local v8           #ex:Ljava/io/IOException;
    :catch_3
    move-exception v8

    .line 496
    .local v8, ex:Ljava/lang/RuntimeException;
    :try_start_7
    const-string v2, "MiniThumbFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got exception when reading thumbnail, id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", disk full or mount read-only? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 500
    if-eqz v11, :cond_3

    :try_start_8
    invoke-virtual {v11}, Ljava/nio/channels/FileLock;->release()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_1

    .line 502
    :catch_4
    move-exception v2

    goto :goto_1

    .line 499
    .end local v8           #ex:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    .line 500
    if-eqz v11, :cond_4

    :try_start_9
    invoke-virtual {v11}, Ljava/nio/channels/FileLock;->release()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 504
    :cond_4
    :goto_2
    :try_start_a
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 467
    .end local v3           #pos:J
    .end local v11           #lock:Ljava/nio/channels/FileLock;
    .end local v14           #r:Ljava/io/RandomAccessFile;
    .end local v15           #r1:Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 502
    .restart local v3       #pos:J
    .restart local v11       #lock:Ljava/nio/channels/FileLock;
    .restart local v14       #r:Ljava/io/RandomAccessFile;
    .restart local v15       #r1:Ljava/io/RandomAccessFile;
    .restart local v16       #size:I
    :catch_5
    move-exception v2

    goto :goto_1

    .end local v16           #size:I
    :catch_6
    move-exception v5

    goto :goto_2
.end method

.method readLongFromIdxFile(J)J
    .locals 11
    .parameter "pos"

    .prologue
    const/16 v10, 0x8

    .line 146
    const-wide/16 v8, -0x1

    .line 147
    .local v8, val:J
    const/4 v7, 0x0

    .line 149
    .local v7, lock:Ljava/nio/channels/FileLock;
    :try_start_0
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 150
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 151
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mIdxChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v3, 0x8

    const/4 v5, 0x1

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v7

    .line 152
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mIdxChannel:Ljava/nio/channels/FileChannel;

    iget-object v1, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1, p1, p2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v0

    if-ne v0, v10, :cond_0

    .line 153
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 154
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-wide v8

    .line 165
    :cond_0
    if-eqz v7, :cond_1

    :try_start_1
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 172
    :cond_1
    :goto_0
    return-wide v8

    .line 156
    :catch_0
    move-exception v6

    .line 157
    .local v6, ex:Ljava/io/EOFException;
    :try_start_2
    iget-boolean v0, p0, Landroid/media/MiniThumbFile;->LOCAL_LOGV:Z

    if-eqz v0, :cond_2

    .line 158
    const-string v0, "MiniThumbFile"

    const-string v1, "Met EOF when read index file"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 165
    :cond_2
    if-eqz v7, :cond_1

    :try_start_3
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 167
    :catch_1
    move-exception v0

    goto :goto_0

    .line 159
    .end local v6           #ex:Ljava/io/EOFException;
    :catch_2
    move-exception v6

    .line 160
    .local v6, ex:Ljava/io/IOException;
    :try_start_4
    const-string v0, "MiniThumbFile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 165
    if-eqz v7, :cond_1

    :try_start_5
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 167
    :catch_3
    move-exception v0

    goto :goto_0

    .line 161
    .end local v6           #ex:Ljava/io/IOException;
    :catch_4
    move-exception v6

    .line 162
    .local v6, ex:Ljava/lang/Exception;
    :try_start_6
    const-string v0, "MiniThumbFile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 165
    if-eqz v7, :cond_1

    :try_start_7
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_0

    .line 167
    :catch_5
    move-exception v0

    goto :goto_0

    .line 164
    .end local v6           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 165
    if-eqz v7, :cond_3

    :try_start_8
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 169
    :cond_3
    :goto_1
    throw v0

    .line 167
    :catch_6
    move-exception v0

    goto :goto_0

    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method public declared-synchronized saveMiniThumbToFile([BJJ)V
    .locals 14
    .parameter "data"
    .parameter "id"
    .parameter "magic"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 410
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/media/MiniThumbFile;->miniThumbDataFile()Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    .line 411
    .local v12, r:Ljava/io/RandomAccessFile;
    if-nez v12, :cond_1

    .line 457
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 413
    :cond_1
    :try_start_1
    invoke-direct {p0}, Landroid/media/MiniThumbFile;->miniThumbIdxFile()Ljava/io/RandomAccessFile;

    move-result-object v13

    .line 414
    .local v13, r1:Ljava/io/RandomAccessFile;
    if-eqz v13, :cond_0

    .line 415
    move-wide/from16 v0, p2

    invoke-virtual {p0, v0, v1}, Landroid/media/MiniThumbFile;->ensureInitIndexFile(J)Z

    .line 416
    invoke-direct {p0}, Landroid/media/MiniThumbFile;->findEmptyPosition()J

    move-result-wide v8

    .line 417
    .local v8, emptyId:J
    const-wide/16 v5, 0x0

    cmp-long v2, v8, v5

    if-gez v2, :cond_2

    .line 418
    const-string v2, "MiniThumbFile"

    const-string v5, "failed find empty id"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 410
    .end local v8           #emptyId:J
    .end local v12           #r:Ljava/io/RandomAccessFile;
    .end local v13           #r1:Ljava/io/RandomAccessFile;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 420
    .restart local v8       #emptyId:J
    .restart local v12       #r:Ljava/io/RandomAccessFile;
    .restart local v13       #r1:Ljava/io/RandomAccessFile;
    :cond_2
    :try_start_2
    move-wide/from16 v0, p2

    invoke-direct {p0, v0, v1, v8, v9}, Landroid/media/MiniThumbFile;->writeLongToIndex(JJ)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 421
    move-wide/from16 p2, v8

    .line 423
    const-wide/16 v5, 0x2710

    mul-long v3, p2, v5

    .line 424
    .local v3, pos:J
    const/4 v11, 0x0

    .line 426
    .local v11, lock:Ljava/nio/channels/FileLock;
    if-eqz p1, :cond_4

    .line 427
    :try_start_3
    array-length v2, p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    const/16 v5, 0x2703

    if-le v2, v5, :cond_3

    .line 451
    if-eqz v11, :cond_0

    :try_start_4
    throw v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 453
    :catch_0
    move-exception v2

    goto :goto_0

    .line 431
    :cond_3
    :try_start_5
    iget-object v2, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 432
    iget-object v2, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 433
    iget-object v2, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 434
    iget-object v2, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    array-length v5, p1

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 435
    iget-object v2, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 436
    iget-object v2, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 438
    iget-object v2, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v5, 0x2710

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v11

    .line 439
    iget-object v2, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    iget-object v5, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v5, v3, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    .line 451
    :cond_4
    if-eqz v11, :cond_0

    :try_start_6
    invoke-virtual {v11}, Ljava/nio/channels/FileLock;->release()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 453
    :catch_1
    move-exception v2

    goto :goto_0

    .line 441
    :catch_2
    move-exception v10

    .line 442
    .local v10, ex:Ljava/io/IOException;
    :try_start_7
    const-string v2, "MiniThumbFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "couldn\'t save mini thumbnail data for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 444
    throw v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 450
    .end local v10           #ex:Ljava/io/IOException;
    :catchall_1
    move-exception v2

    .line 451
    if-eqz v11, :cond_5

    :try_start_8
    invoke-virtual {v11}, Ljava/nio/channels/FileLock;->release()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 455
    :cond_5
    :goto_1
    :try_start_9
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 445
    :catch_3
    move-exception v10

    .line 447
    .local v10, ex:Ljava/lang/RuntimeException;
    :try_start_a
    const-string v2, "MiniThumbFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "couldn\'t save mini thumbnail data for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; disk full or mount read-only? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 451
    if-eqz v11, :cond_0

    :try_start_b
    invoke-virtual {v11}, Ljava/nio/channels/FileLock;->release()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_0

    .line 453
    :catch_4
    move-exception v2

    goto/16 :goto_0

    .end local v10           #ex:Ljava/lang/RuntimeException;
    :catch_5
    move-exception v5

    goto :goto_1
.end method

.method writeToFile(Ljava/nio/ByteBuffer;JLjava/nio/channels/FileChannel;)J
    .locals 10
    .parameter "buf"
    .parameter "pos"
    .parameter "channel"

    .prologue
    .line 205
    const/4 v7, 0x0

    .line 206
    .local v7, lock:Ljava/nio/channels/FileLock;
    const-wide/16 v8, 0x0

    .line 208
    .local v8, nWrite:J
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    int-to-long v3, v0

    const/4 v5, 0x0

    move-object v0, p4

    move-wide v1, p2

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v7

    .line 209
    invoke-virtual {p4, p1, p2, p3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    int-to-long v8, v0

    .line 217
    if-eqz v7, :cond_0

    :try_start_1
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 223
    :cond_0
    :goto_0
    return-wide v8

    .line 210
    :catch_0
    move-exception v6

    .line 211
    .local v6, ex:Ljava/io/IOException;
    :try_start_2
    const-string v0, "MiniThumbFile"

    const-string v1, "couldn\'t write to file; "

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 217
    if-eqz v7, :cond_0

    :try_start_3
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 219
    :catch_1
    move-exception v0

    goto :goto_0

    .line 212
    .end local v6           #ex:Ljava/io/IOException;
    :catch_2
    move-exception v6

    .line 214
    .local v6, ex:Ljava/lang/RuntimeException;
    :try_start_4
    const-string v0, "MiniThumbFile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "couldn\'t save mini thumbnail data for  disk full or mount read-only? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 217
    if-eqz v7, :cond_0

    :try_start_5
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 219
    :catch_3
    move-exception v0

    goto :goto_0

    .line 216
    .end local v6           #ex:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v0

    .line 217
    if-eqz v7, :cond_1

    :try_start_6
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 221
    :cond_1
    :goto_1
    throw v0

    .line 219
    :catch_4
    move-exception v0

    goto :goto_0

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method writeToIdxFile(Ljava/nio/ByteBuffer;J)J
    .locals 2
    .parameter "buf"
    .parameter "pos"

    .prologue
    .line 201
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mIdxChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/MiniThumbFile;->writeToFile(Ljava/nio/ByteBuffer;JLjava/nio/channels/FileChannel;)J

    move-result-wide v0

    return-wide v0
.end method
