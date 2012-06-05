.class public Lcom/motorola/android/media/VideoThumbUtil;
.super Ljava/lang/Object;
.source "VideoThumbUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoThumbUtil"

.field private static final THUMB_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/android/media/VideoThumbUtil;->THUMB_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ensureFileExists(Ljava/lang/String;)Z
    .locals 8
    .parameter "path"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 104
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 124
    :goto_0
    return v5

    .line 110
    :cond_0
    const/16 v7, 0x2f

    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 111
    .local v4, secondSlash:I
    if-ge v4, v5, :cond_1

    move v5, v6

    goto :goto_0

    .line 112
    :cond_1
    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, directoryPath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v6

    .line 115
    goto :goto_0

    .line 116
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_3

    move v5, v6

    .line 117
    goto :goto_0

    .line 118
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 120
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_0

    .line 121
    :catch_0
    move-exception v3

    .line 122
    .local v3, ioe:Ljava/io/IOException;
    const-string v5, "VideoThumbUtil"

    const-string v7, "File creation failed"

    invoke-static {v5, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v6

    .line 124
    goto :goto_0
.end method

.method private static getVideoThumbnailUri(Landroid/content/ContentResolver;JII)Landroid/net/Uri;
    .locals 10
    .parameter "cr"
    .parameter "origId"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 69
    sget-object v1, Landroid/provider/MediaStore$Video$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 70
    .local v1, thumbUri:Landroid/net/Uri;
    sget-object v2, Lcom/motorola/android/media/VideoThumbUtil;->THUMB_PROJECTION:[Ljava/lang/String;

    const-string v3, "video_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 73
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 74
    const/4 v0, 0x0

    .line 99
    :cond_0
    :goto_0
    return-object v0

    .line 76
    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 77
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 78
    .local v8, path:Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 79
    invoke-static {v8}, Lcom/motorola/android/media/VideoThumbUtil;->ensureFileExists(Ljava/lang/String;)Z

    .line 84
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 87
    if-eqz v6, :cond_0

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 81
    :cond_2
    :try_start_1
    const-string v0, "VideoThumbUtil"

    const-string v2, "path is null"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    const/4 v0, 0x0

    .line 87
    if-eqz v6, :cond_0

    goto :goto_1

    .end local v8           #path:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :cond_4
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 90
    :cond_5
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 91
    .local v9, values:Landroid/content/ContentValues;
    const-string v0, "kind"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 92
    const-string v0, "video_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 93
    const-string v0, "height"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 94
    const-string v0, "width"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 96
    :try_start_2
    invoke-virtual {p0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v7

    .line 98
    .local v7, ex:Ljava/lang/Exception;
    const-string v0, "VideoThumbUtil"

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static storeMiniThumb(Landroid/content/ContentResolver;JLandroid/graphics/Bitmap;)Z
    .locals 7
    .parameter "cr"
    .parameter "origId"
    .parameter "thumb"

    .prologue
    const/4 v4, 0x0

    .line 47
    if-nez p3, :cond_0

    .line 48
    const-string v5, "VideoThumbUtil"

    const-string v6, "thumb is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 63
    :goto_0
    return v0

    .line 52
    :cond_0
    :try_start_0
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {p0, p1, p2, v5, v6}, Lcom/motorola/android/media/VideoThumbUtil;->getVideoThumbnailUri(Landroid/content/ContentResolver;JII)Landroid/net/Uri;

    move-result-object v3

    .line 53
    .local v3, uri:Landroid/net/Uri;
    if-nez v3, :cond_1

    .line 54
    const-string v5, "VideoThumbUtil"

    const-string v6, " uri is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 55
    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {p0, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v2

    .line 58
    .local v2, thumbOut:Ljava/io/OutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x3c

    invoke-virtual {p3, v5, v6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v0

    .line 59
    .local v0, result:Z
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    .end local v0           #result:Z
    .end local v2           #thumbOut:Ljava/io/OutputStream;
    .end local v3           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 62
    .local v1, t:Ljava/lang/Throwable;
    const-string v5, "VideoThumbUtil"

    const-string v6, "Unable to store thumbnail"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 63
    goto :goto_0
.end method
