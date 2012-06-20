.class public Lcom/motorola/providers/mediaext/GeoTagHandler;
.super Ljava/lang/Object;
.source "GeoTagHandler.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "GeoTagHandler"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 249
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 250
    return-void
.end method

.method private static copyImageFile(Ljava/io/File;Ljava/io/File;)V
    .locals 21
    .parameter "origFile"
    .parameter "dstFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    const/16 v2, 0x2000

    .line 108
    .local v2, BUFFER_SIZE:I
    const/4 v12, 0x0

    .line 109
    .local v12, fileMode:I
    const-string v18, "GeoTagHandler"

    const-string v19, "copyImageFile:"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v8, 0x0

    .line 111
    .local v8, fInStream:Ljava/io/FileInputStream;
    const/4 v10, 0x0

    .line 113
    .local v10, fOutStream:Ljava/io/FileOutputStream;
    const/high16 v18, 0x3800

    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v17

    .line 115
    .local v17, pfdCmode:Landroid/os/ParcelFileDescriptor;
    new-instance v9, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 116
    .end local v8           #fInStream:Ljava/io/FileInputStream;
    .local v9, fInStream:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v11, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 117
    .end local v10           #fOutStream:Ljava/io/FileOutputStream;
    .local v11, fOutStream:Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v13, Ljava/io/BufferedInputStream;

    invoke-direct {v13, v9, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 118
    .local v13, fin:Ljava/io/BufferedInputStream;
    new-instance v14, Ljava/io/BufferedOutputStream;

    invoke-direct {v14, v11, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 119
    .local v14, fout:Ljava/io/BufferedOutputStream;
    const/4 v6, 0x0

    .line 120
    .local v6, count:I
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v15

    .line 121
    .local v15, origFileSize:J
    const-wide/16 v4, 0x0

    .line 122
    .local v4, bytesWritten:J
    new-array v3, v2, [B

    .line 123
    .local v3, buff:[B
    :goto_0
    cmp-long v18, v4, v15

    if-eqz v18, :cond_0

    .line 124
    invoke-virtual {v13, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    .line 125
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v14, v3, v0, v6}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 126
    int-to-long v0, v6

    move-wide/from16 v18, v0

    add-long v4, v4, v18

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {v13}, Ljava/io/BufferedInputStream;->close()V

    .line 129
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->close()V

    .line 130
    if-eqz v17, :cond_1

    .line 131
    invoke-virtual/range {v17 .. v17}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 137
    :cond_1
    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 142
    :goto_1
    :try_start_4
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 147
    :goto_2
    return-void

    .line 138
    :catch_0
    move-exception v7

    .line 139
    .local v7, ex:Ljava/io/IOException;
    const-string v18, "GeoTagHandler"

    const-string v19, "error in closing input stream"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 143
    .end local v7           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 144
    .restart local v7       #ex:Ljava/io/IOException;
    const-string v18, "GeoTagHandler"

    const-string v19, "error in closing output stream"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 132
    .end local v3           #buff:[B
    .end local v4           #bytesWritten:J
    .end local v6           #count:I
    .end local v7           #ex:Ljava/io/IOException;
    .end local v9           #fInStream:Ljava/io/FileInputStream;
    .end local v11           #fOutStream:Ljava/io/FileOutputStream;
    .end local v13           #fin:Ljava/io/BufferedInputStream;
    .end local v14           #fout:Ljava/io/BufferedOutputStream;
    .end local v15           #origFileSize:J
    .end local v17           #pfdCmode:Landroid/os/ParcelFileDescriptor;
    .restart local v8       #fInStream:Ljava/io/FileInputStream;
    .restart local v10       #fOutStream:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v7

    .line 133
    .restart local v7       #ex:Ljava/io/IOException;
    :goto_3
    :try_start_5
    const-string v18, "GeoTagHandler"

    const-string v19, "error creating file"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 136
    .end local v7           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v18

    .line 137
    :goto_4
    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 142
    :goto_5
    :try_start_7
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 145
    :goto_6
    throw v18

    .line 138
    :catch_3
    move-exception v7

    .line 139
    .restart local v7       #ex:Ljava/io/IOException;
    const-string v19, "GeoTagHandler"

    const-string v20, "error in closing input stream"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 143
    .end local v7           #ex:Ljava/io/IOException;
    :catch_4
    move-exception v7

    .line 144
    .restart local v7       #ex:Ljava/io/IOException;
    const-string v19, "GeoTagHandler"

    const-string v20, "error in closing output stream"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 136
    .end local v7           #ex:Ljava/io/IOException;
    .end local v8           #fInStream:Ljava/io/FileInputStream;
    .restart local v9       #fInStream:Ljava/io/FileInputStream;
    .restart local v17       #pfdCmode:Landroid/os/ParcelFileDescriptor;
    :catchall_1
    move-exception v18

    move-object v8, v9

    .end local v9           #fInStream:Ljava/io/FileInputStream;
    .restart local v8       #fInStream:Ljava/io/FileInputStream;
    goto :goto_4

    .end local v8           #fInStream:Ljava/io/FileInputStream;
    .end local v10           #fOutStream:Ljava/io/FileOutputStream;
    .restart local v9       #fInStream:Ljava/io/FileInputStream;
    .restart local v11       #fOutStream:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v18

    move-object v10, v11

    .end local v11           #fOutStream:Ljava/io/FileOutputStream;
    .restart local v10       #fOutStream:Ljava/io/FileOutputStream;
    move-object v8, v9

    .end local v9           #fInStream:Ljava/io/FileInputStream;
    .restart local v8       #fInStream:Ljava/io/FileInputStream;
    goto :goto_4

    .line 132
    .end local v8           #fInStream:Ljava/io/FileInputStream;
    .restart local v9       #fInStream:Ljava/io/FileInputStream;
    :catch_5
    move-exception v7

    move-object v8, v9

    .end local v9           #fInStream:Ljava/io/FileInputStream;
    .restart local v8       #fInStream:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v8           #fInStream:Ljava/io/FileInputStream;
    .end local v10           #fOutStream:Ljava/io/FileOutputStream;
    .restart local v9       #fInStream:Ljava/io/FileInputStream;
    .restart local v11       #fOutStream:Ljava/io/FileOutputStream;
    :catch_6
    move-exception v7

    move-object v10, v11

    .end local v11           #fOutStream:Ljava/io/FileOutputStream;
    .restart local v10       #fOutStream:Ljava/io/FileOutputStream;
    move-object v8, v9

    .end local v9           #fInStream:Ljava/io/FileInputStream;
    .restart local v8       #fInStream:Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method private static getLatLongString(D)Ljava/lang/String;
    .locals 12
    .parameter "d"

    .prologue
    const-wide/high16 v10, 0x404e

    .line 169
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    .line 170
    double-to-int v0, p0

    .line 171
    .local v0, degrees:I
    int-to-double v6, v0

    sub-double v2, p0, v6

    .line 172
    .local v2, remainder:D
    mul-double v6, v2, v10

    double-to-int v1, v6

    .line 174
    .local v1, minutes:I
    mul-double v6, v2, v10

    int-to-double v8, v1

    sub-double/2addr v6, v8

    mul-double/2addr v6, v10

    const-wide v8, 0x408f400000000000L

    mul-double/2addr v6, v8

    double-to-int v5, v6

    .line 175
    .local v5, seconds:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/1,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/1,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/1000"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 176
    .local v4, retVal:Ljava/lang/String;
    return-object v4
.end method

.method public static getNonGeoFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 17
    .parameter "context"
    .parameter "uri"
    .parameter "imagePath"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 69
    const/16 v14, 0x2f

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 70
    .local v7, imageName:Ljava/lang/String;
    const/4 v14, 0x0

    const/16 v15, 0x2f

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, dirName:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    .line 72
    .local v6, hashCode:I
    const/4 v10, 0x0

    .line 74
    .local v10, pfd:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/motorola/providers/mediaext/GeoTagHandler;->getStorageDirectory(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 75
    .local v12, sdCardstorageDir:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/.GeoTagTempDir/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 76
    .local v5, geotagTempFileDir:Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    .local v13, tmpFile:Ljava/io/File;
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .local v8, origFile:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    .line 79
    .local v9, parentFile:Ljava/io/File;
    if-eqz v13, :cond_2

    if-eqz v8, :cond_2

    .line 80
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_1

    .line 81
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_0

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    move-result v14

    if-nez v14, :cond_0

    .line 82
    const-string v14, "GeoTagHandler"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "does not exist!"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v11, v10

    .line 103
    .end local v5           #geotagTempFileDir:Ljava/lang/String;
    .end local v8           #origFile:Ljava/io/File;
    .end local v9           #parentFile:Ljava/io/File;
    .end local v10           #pfd:Landroid/os/ParcelFileDescriptor;
    .end local v12           #sdCardstorageDir:Ljava/lang/String;
    .end local v13           #tmpFile:Ljava/io/File;
    .local v11, pfd:Landroid/os/ParcelFileDescriptor;
    :goto_0
    return-object v11

    .line 86
    .end local v11           #pfd:Landroid/os/ParcelFileDescriptor;
    .restart local v5       #geotagTempFileDir:Ljava/lang/String;
    .restart local v8       #origFile:Ljava/io/File;
    .restart local v9       #parentFile:Ljava/io/File;
    .restart local v10       #pfd:Landroid/os/ParcelFileDescriptor;
    .restart local v12       #sdCardstorageDir:Ljava/lang/String;
    .restart local v13       #tmpFile:Ljava/io/File;
    :cond_0
    :try_start_1
    invoke-static {v8, v13}, Lcom/motorola/providers/mediaext/GeoTagHandler;->copyImageFile(Ljava/io/File;Ljava/io/File;)V

    .line 87
    invoke-static {v13}, Lcom/motorola/providers/mediaext/GeoTagHandler;->removeGeoTags(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 94
    :cond_1
    :try_start_2
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->modeToMode(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v4

    .line 95
    .local v4, fileMode:I
    invoke-static {v13, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v10

    .end local v4           #fileMode:I
    .end local v5           #geotagTempFileDir:Ljava/lang/String;
    .end local v8           #origFile:Ljava/io/File;
    .end local v9           #parentFile:Ljava/io/File;
    .end local v12           #sdCardstorageDir:Ljava/lang/String;
    .end local v13           #tmpFile:Ljava/io/File;
    :cond_2
    :goto_1
    move-object v11, v10

    .line 103
    .end local v10           #pfd:Landroid/os/ParcelFileDescriptor;
    .restart local v11       #pfd:Landroid/os/ParcelFileDescriptor;
    goto :goto_0

    .line 88
    .end local v11           #pfd:Landroid/os/ParcelFileDescriptor;
    .restart local v5       #geotagTempFileDir:Ljava/lang/String;
    .restart local v8       #origFile:Ljava/io/File;
    .restart local v9       #parentFile:Ljava/io/File;
    .restart local v10       #pfd:Landroid/os/ParcelFileDescriptor;
    .restart local v12       #sdCardstorageDir:Ljava/lang/String;
    .restart local v13       #tmpFile:Ljava/io/File;
    :catch_0
    move-exception v3

    .line 89
    .local v3, ex:Ljava/io/IOException;
    :try_start_3
    const-string v14, "GeoTagHandler"

    const-string v15, "Error in copying file"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v10

    .line 90
    .end local v10           #pfd:Landroid/os/ParcelFileDescriptor;
    .restart local v11       #pfd:Landroid/os/ParcelFileDescriptor;
    goto :goto_0

    .line 96
    .end local v3           #ex:Ljava/io/IOException;
    .end local v11           #pfd:Landroid/os/ParcelFileDescriptor;
    .restart local v10       #pfd:Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v3

    .line 97
    .local v3, ex:Ljava/io/FileNotFoundException;
    const-string v14, "GeoTagHandler"

    const-string v15, "Error in opening file"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 100
    .end local v3           #ex:Ljava/io/FileNotFoundException;
    .end local v5           #geotagTempFileDir:Ljava/lang/String;
    .end local v8           #origFile:Ljava/io/File;
    .end local v9           #parentFile:Ljava/io/File;
    .end local v12           #sdCardstorageDir:Ljava/lang/String;
    .end local v13           #tmpFile:Ljava/io/File;
    :catch_2
    move-exception v3

    .line 101
    .restart local v3       #ex:Ljava/io/FileNotFoundException;
    const-string v14, "GeoTagHandler"

    const-string v15, "Error in getting external storage"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getSizeUpdatedCursor(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/database/Cursor;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 20
    .parameter "context"
    .parameter "db"
    .parameter "uri"
    .parameter "c"
    .parameter "projection"

    .prologue
    .line 180
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getColumnCount()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 181
    .local v16, obj:[Ljava/lang/Object;
    new-instance v13, Landroid/database/MatrixCursor;

    move-object/from16 v0, p4

    invoke-direct {v13, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 182
    .local v13, matrixCursor:Landroid/database/MatrixCursor;
    const-wide/16 v7, 0x0

    .line 183
    .local v7, fileSize:J
    const/4 v14, 0x0

    .line 185
    .local v14, nonGeofile:Ljava/io/File;
    :try_start_0
    const-string v18, "r"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/motorola/providers/mediaext/GeoTagHandler;->openNonGeoImageFile(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 186
    .local v9, geoImagePath:Ljava/lang/String;
    if-nez v9, :cond_0

    const/4 v13, 0x0

    .line 219
    .end local v9           #geoImagePath:Ljava/lang/String;
    .end local v13           #matrixCursor:Landroid/database/MatrixCursor;
    :goto_0
    return-object v13

    .line 187
    .restart local v9       #geoImagePath:Ljava/lang/String;
    .restart local v13       #matrixCursor:Landroid/database/MatrixCursor;
    :cond_0
    const/16 v18, 0x2f

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 188
    .local v12, imageName:Ljava/lang/String;
    const/16 v18, 0x0

    const/16 v19, 0x2f

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 189
    .local v5, dirName:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v11

    .line 190
    .local v11, hashCode:I
    move-object/from16 v0, p0

    invoke-static {v9, v0}, Lcom/motorola/providers/mediaext/GeoTagHandler;->getStorageDirectory(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    .line 191
    .local v17, sdCardstorageDir:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/.GeoTagTempDir/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 192
    .local v10, geotag_temp_file_dir:Ljava/lang/String;
    new-instance v15, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .end local v14           #nonGeofile:Ljava/io/File;
    .local v15, nonGeofile:Ljava/io/File;
    if-eqz v15, :cond_1

    :try_start_1
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 194
    invoke-virtual {v15}, Ljava/io/File;->length()J
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v7

    .line 205
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 206
    const/4 v4, 0x0

    .local v4, count:I
    :goto_1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getColumnCount()I

    move-result v18

    move/from16 v0, v18

    if-ge v4, v0, :cond_4

    .line 207
    const-string v18, "_size"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 208
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v4

    .line 206
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 197
    .end local v4           #count:I
    :cond_1
    :try_start_2
    const-string v18, "GeoTagHandler"

    const-string v19, "File not Found"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 198
    const/4 v13, 0x0

    .end local v13           #matrixCursor:Landroid/database/MatrixCursor;
    move-object v14, v15

    .end local v15           #nonGeofile:Ljava/io/File;
    .restart local v14       #nonGeofile:Ljava/io/File;
    goto/16 :goto_0

    .line 200
    .end local v5           #dirName:Ljava/lang/String;
    .end local v9           #geoImagePath:Ljava/lang/String;
    .end local v10           #geotag_temp_file_dir:Ljava/lang/String;
    .end local v11           #hashCode:I
    .end local v12           #imageName:Ljava/lang/String;
    .end local v17           #sdCardstorageDir:Ljava/lang/String;
    .restart local v13       #matrixCursor:Landroid/database/MatrixCursor;
    :catch_0
    move-exception v6

    .line 201
    .local v6, ex:Ljava/io/FileNotFoundException;
    :goto_3
    const-string v18, "GeoTagHandler"

    const-string v19, "File not Found"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 211
    .end local v6           #ex:Ljava/io/FileNotFoundException;
    .end local v14           #nonGeofile:Ljava/io/File;
    .restart local v4       #count:I
    .restart local v5       #dirName:Ljava/lang/String;
    .restart local v9       #geoImagePath:Ljava/lang/String;
    .restart local v10       #geotag_temp_file_dir:Ljava/lang/String;
    .restart local v11       #hashCode:I
    .restart local v12       #imageName:Ljava/lang/String;
    .restart local v15       #nonGeofile:Ljava/io/File;
    .restart local v17       #sdCardstorageDir:Ljava/lang/String;
    :cond_2
    const-string v18, "_data"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 212
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v4

    goto :goto_2

    .line 215
    :cond_3
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v4

    goto :goto_2

    .line 217
    :cond_4
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v4           #count:I
    :cond_5
    move-object v14, v15

    .line 219
    .end local v15           #nonGeofile:Ljava/io/File;
    .restart local v14       #nonGeofile:Ljava/io/File;
    goto/16 :goto_0

    .line 200
    .end local v14           #nonGeofile:Ljava/io/File;
    .restart local v15       #nonGeofile:Ljava/io/File;
    :catch_1
    move-exception v6

    move-object v14, v15

    .end local v15           #nonGeofile:Ljava/io/File;
    .restart local v14       #nonGeofile:Ljava/io/File;
    goto :goto_3
.end method

.method private static getStorageDirectory(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "path"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 224
    const/4 v1, 0x0

    .line 227
    .local v1, storageDirectory:Ljava/lang/String;
    const-string v3, "storage"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 230
    .local v2, storageManager:Landroid/os/storage/StorageManager;
    const/4 v0, 0x0

    .line 231
    .local v0, fl:Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/motorola/android/media/EnvironmentUtil;->getExternalStorageDirectory(Ljava/lang/String;Landroid/os/storage/StorageManager;)Ljava/lang/String;

    move-result-object v0

    .line 232
    if-eqz v0, :cond_0

    .line 233
    const-string v3, "mounted"

    invoke-virtual {v2, v0}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 234
    move-object v1, v0

    .line 237
    :cond_0
    const-string v3, "GeoTagHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getStorageDirectory:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  path:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    if-nez v1, :cond_1

    .line 240
    const-string v3, "GeoTagHandler"

    const-string v4, "storage is unavailable"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    new-instance v3, Ljava/io/FileNotFoundException;

    invoke-direct {v3}, Ljava/io/FileNotFoundException;-><init>()V

    throw v3

    .line 243
    :cond_1
    return-object v1
.end method

.method public static openNonGeoImageFile(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 18
    .parameter "context"
    .parameter "db"
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 36
    const/4 v15, 0x0

    .line 37
    .local v15, imagePath:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v13

    .line 38
    .local v13, imageId:J
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 39
    .local v17, volume:Ljava/lang/String;
    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 40
    .local v3, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/16 v16, 0x0

    .line 41
    .local v16, pfd:Landroid/os/ParcelFileDescriptor;
    const-string v4, "images"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 42
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 44
    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "_data"

    aput-object v6, v5, v4

    const/4 v4, 0x1

    const-string v6, "_id"

    aput-object v6, v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 49
    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 52
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 53
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v0, v1, v15, v2}, Lcom/motorola/providers/mediaext/GeoTagHandler;->getNonGeoFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v16

    .line 54
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 61
    :cond_0
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 64
    :cond_1
    :goto_0
    return-object v15

    .line 55
    :catch_0
    move-exception v12

    .line 56
    .local v12, ex:Ljava/io/FileNotFoundException;
    :try_start_1
    const-string v4, "GeoTagHandler"

    const-string v5, "File not found "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    throw v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    .end local v12           #ex:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v4

    if-eqz v11, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v4

    .line 58
    :catch_1
    move-exception v12

    .line 59
    .local v12, ex:Ljava/io/IOException;
    :try_start_2
    const-string v4, "GeoTagHandler"

    const-string v5, "Error in closing file Stream"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private static removeGeoTags(Ljava/io/File;)V
    .locals 5
    .parameter "tmpFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    :try_start_0
    const-string v2, "GeoTagHandler"

    const-string v3, "Removing Geo tags"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    new-instance v1, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 154
    .local v1, exif:Landroid/media/ExifInterface;
    const-string v2, "GPSLatitudeRef"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v2, "GPSLongitudeRef"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v2, "GPSLatitude"

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Lcom/motorola/providers/mediaext/GeoTagHandler;->getLatLongString(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v2, "GPSLongitude"

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Lcom/motorola/providers/mediaext/GeoTagHandler;->getLatLongString(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v2, "GPSTimeStamp"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v2, "GPSDateStamp"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {v1}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    return-void

    .line 162
    .end local v1           #exif:Landroid/media/ExifInterface;
    :catch_0
    move-exception v0

    .line 163
    .local v0, ex:Ljava/io/IOException;
    const-string v2, "GeoTagHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in removeGeoTags"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    throw v0
.end method
