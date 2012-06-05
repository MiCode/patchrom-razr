.class Landroid/mtp/MtpPropertyGroup;
.super Ljava/lang/Object;
.source "MtpPropertyGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpPropertyGroup$Property;
    }
.end annotation


# static fields
.field private static final FORMAT_WHERE:Ljava/lang/String; = "format=?"

.field private static final ID_FORMAT_WHERE:Ljava/lang/String; = "_id=? AND format=?"

.field private static final ID_WHERE:Ljava/lang/String; = "_id=?"

.field private static final PARENT_FORMAT_WHERE:Ljava/lang/String; = "parent=? AND format=?"

.field private static final PARENT_WHERE:Ljava/lang/String; = "parent=?"

.field private static final TAG:Ljava/lang/String; = "MtpPropertyGroup"


# instance fields
.field private mColumns:[Ljava/lang/String;

.field private final mDatabase:Landroid/mtp/MtpDatabase;

.field private final mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

.field private final mProvider:Landroid/content/IContentProvider;

.field private final mUri:Landroid/net/Uri;

.field private final mVolumeName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mDatabase:Landroid/mtp/MtpDatabase;

    .line 93
    iput-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    .line 94
    iput-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    .line 95
    iput-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    .line 96
    iput-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/mtp/MtpDatabase;Landroid/content/IContentProvider;Ljava/lang/String;[I)V
    .locals 5
    .parameter "database"
    .parameter "provider"
    .parameter "volume"
    .parameter "properties"

    .prologue
    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Landroid/mtp/MtpPropertyGroup;->mDatabase:Landroid/mtp/MtpDatabase;

    .line 71
    iput-object p2, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    .line 72
    iput-object p3, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    .line 73
    invoke-static {p3}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    .line 75
    array-length v1, p4

    .line 76
    .local v1, count:I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 77
    .local v0, columns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "_id"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    new-array v3, v1, [Landroid/mtp/MtpPropertyGroup$Property;

    iput-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    .line 80
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 81
    iget-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    aget v4, p4, v2

    invoke-direct {p0, v4, v0}, Landroid/mtp/MtpPropertyGroup;->createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;

    move-result-object v4

    aput-object v4, v3, v2

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 84
    new-array v3, v1, [Ljava/lang/String;

    iput-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    .line 85
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 86
    iget-object v4, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v4, v2

    .line 85
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 88
    :cond_1
    return-void
.end method

.method private createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;
    .locals 5
    .parameter "code"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/mtp/MtpPropertyGroup$Property;"
        }
    .end annotation

    .prologue
    .line 101
    .local p2, columns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 104
    .local v0, column:Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 195
    const/4 v1, 0x0

    .line 196
    .local v1, type:I
    const-string v2, "MtpPropertyGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unsupported property "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :goto_0
    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    new-instance v2, Landroid/mtp/MtpPropertyGroup$Property;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v2, p0, p1, v1, v3}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    .line 204
    :goto_1
    return-object v2

    .line 108
    .end local v1           #type:I
    :sswitch_0
    const v1, 0xffff

    .line 109
    .restart local v1       #type:I
    goto :goto_0

    .line 112
    .end local v1           #type:I
    :sswitch_1
    const/4 v1, 0x6

    .line 113
    .restart local v1       #type:I
    goto :goto_0

    .line 116
    .end local v1           #type:I
    :sswitch_2
    const-string/jumbo v0, "storage_id"

    .line 117
    const/4 v1, 0x6

    .line 118
    .restart local v1       #type:I
    goto :goto_0

    .line 120
    .end local v1           #type:I
    :sswitch_3
    const-string v0, "format"

    .line 121
    const/4 v1, 0x4

    .line 122
    .restart local v1       #type:I
    goto :goto_0

    .line 125
    .end local v1           #type:I
    :sswitch_4
    const/4 v1, 0x4

    .line 126
    .restart local v1       #type:I
    goto :goto_0

    .line 128
    .end local v1           #type:I
    :sswitch_5
    const-string v0, "_size"

    .line 129
    const/16 v1, 0x8

    .line 130
    .restart local v1       #type:I
    goto :goto_0

    .line 132
    .end local v1           #type:I
    :sswitch_6
    const-string v0, "_data"

    .line 133
    const v1, 0xffff

    .line 134
    .restart local v1       #type:I
    goto :goto_0

    .line 136
    .end local v1           #type:I
    :sswitch_7
    const-string/jumbo v0, "title"

    .line 137
    const v1, 0xffff

    .line 138
    .restart local v1       #type:I
    goto :goto_0

    .line 140
    .end local v1           #type:I
    :sswitch_8
    const-string v0, "date_modified"

    .line 141
    const v1, 0xffff

    .line 142
    .restart local v1       #type:I
    goto :goto_0

    .line 144
    .end local v1           #type:I
    :sswitch_9
    const-string v0, "date_added"

    .line 145
    const v1, 0xffff

    .line 146
    .restart local v1       #type:I
    goto :goto_0

    .line 148
    .end local v1           #type:I
    :sswitch_a
    const-string/jumbo v0, "year"

    .line 149
    const v1, 0xffff

    .line 150
    .restart local v1       #type:I
    goto :goto_0

    .line 152
    .end local v1           #type:I
    :sswitch_b
    const-string v0, "parent"

    .line 153
    const/4 v1, 0x6

    .line 154
    .restart local v1       #type:I
    goto :goto_0

    .line 157
    .end local v1           #type:I
    :sswitch_c
    const-string/jumbo v0, "storage_id"

    .line 158
    const/16 v1, 0xa

    .line 159
    .restart local v1       #type:I
    goto :goto_0

    .line 161
    .end local v1           #type:I
    :sswitch_d
    const-string v0, "duration"

    .line 162
    const/4 v1, 0x6

    .line 163
    .restart local v1       #type:I
    goto :goto_0

    .line 165
    .end local v1           #type:I
    :sswitch_e
    const-string/jumbo v0, "track"

    .line 166
    const/4 v1, 0x4

    .line 167
    .restart local v1       #type:I
    goto :goto_0

    .line 169
    .end local v1           #type:I
    :sswitch_f
    const-string v0, "_display_name"

    .line 170
    const v1, 0xffff

    .line 171
    .restart local v1       #type:I
    goto :goto_0

    .line 173
    .end local v1           #type:I
    :sswitch_10
    const v1, 0xffff

    .line 174
    .restart local v1       #type:I
    goto :goto_0

    .line 176
    .end local v1           #type:I
    :sswitch_11
    const v1, 0xffff

    .line 177
    .restart local v1       #type:I
    goto :goto_0

    .line 179
    .end local v1           #type:I
    :sswitch_12
    const-string v0, "album_artist"

    .line 180
    const v1, 0xffff

    .line 181
    .restart local v1       #type:I
    goto :goto_0

    .line 184
    .end local v1           #type:I
    :sswitch_13
    const v1, 0xffff

    .line 185
    .restart local v1       #type:I
    goto :goto_0

    .line 187
    .end local v1           #type:I
    :sswitch_14
    const-string v0, "composer"

    .line 188
    const v1, 0xffff

    .line 189
    .restart local v1       #type:I
    goto :goto_0

    .line 191
    .end local v1           #type:I
    :sswitch_15
    const-string v0, "description"

    .line 192
    const v1, 0xffff

    .line 193
    .restart local v1       #type:I
    goto :goto_0

    .line 204
    :cond_0
    new-instance v2, Landroid/mtp/MtpPropertyGroup$Property;

    const/4 v3, -0x1

    invoke-direct {v2, p0, p1, v1, v3}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    goto :goto_1

    .line 104
    nop

    :sswitch_data_0
    .sparse-switch
        0xdc01 -> :sswitch_2
        0xdc02 -> :sswitch_3
        0xdc03 -> :sswitch_4
        0xdc04 -> :sswitch_5
        0xdc07 -> :sswitch_6
        0xdc09 -> :sswitch_8
        0xdc0b -> :sswitch_b
        0xdc41 -> :sswitch_c
        0xdc44 -> :sswitch_7
        0xdc46 -> :sswitch_10
        0xdc48 -> :sswitch_15
        0xdc4e -> :sswitch_9
        0xdc89 -> :sswitch_d
        0xdc8b -> :sswitch_e
        0xdc8c -> :sswitch_13
        0xdc96 -> :sswitch_14
        0xdc99 -> :sswitch_a
        0xdc9a -> :sswitch_11
        0xdc9b -> :sswitch_12
        0xdce0 -> :sswitch_f
        0xde9b -> :sswitch_1
        0xdea1 -> :sswitch_0
    .end sparse-switch
.end method

.method public static nameFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "path"

    .prologue
    .line 292
    const/4 v2, 0x0

    .line 293
    .local v2, start:I
    const/16 v3, 0x2f

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 294
    .local v1, lastSlash:I
    if-ltz v1, :cond_0

    .line 295
    add-int/lit8 v2, v1, 0x1

    .line 297
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 298
    .local v0, end:I
    sub-int v3, v0, v2

    const/16 v4, 0xff

    if-le v3, v4, :cond_1

    .line 299
    add-int/lit16 v0, v2, 0xff

    .line 301
    :cond_1
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private queryAudio(ILjava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "id"
    .parameter "column"

    .prologue
    const/4 v8, 0x0

    .line 230
    const/4 v6, 0x0

    .line 232
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 235
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 243
    if-eqz v6, :cond_0

    .line 244
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v0

    .line 238
    :cond_1
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 243
    if-eqz v6, :cond_0

    .line 244
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 240
    :catch_0
    move-exception v7

    .line 243
    .local v7, e:Ljava/lang/Exception;
    if-eqz v6, :cond_2

    .line 244
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v8

    goto :goto_0

    .line 243
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 244
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private queryGenre(I)Ljava/lang/String;
    .locals 9
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    .line 250
    const/4 v6, 0x0

    .line 252
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/provider/MediaStore$Audio$Genres;->getContentUriForAudioId(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .line 253
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 256
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 265
    if-eqz v6, :cond_0

    .line 266
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v1           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object v0

    .line 259
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_1
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 265
    if-eqz v6, :cond_0

    .line 266
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 261
    .end local v1           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v7

    .line 262
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "MtpPropertyGroup"

    const-string v2, "queryGenre exception"

    invoke-static {v0, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 265
    if-eqz v6, :cond_2

    .line 266
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v8

    goto :goto_0

    .line 265
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 266
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private queryLong(ILjava/lang/String;)Ljava/lang/Long;
    .locals 9
    .parameter "id"
    .parameter "column"

    .prologue
    const/4 v7, 0x0

    .line 272
    const/4 v6, 0x0

    .line 275
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 278
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    new-instance v0, Ljava/lang/Long;

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    if-eqz v6, :cond_0

    .line 284
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 287
    :cond_0
    :goto_0
    return-object v0

    .line 283
    :cond_1
    if-eqz v6, :cond_2

    .line 284
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move-object v0, v7

    .line 287
    goto :goto_0

    .line 281
    :catch_0
    move-exception v0

    .line 283
    if-eqz v6, :cond_2

    .line 284
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 283
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 284
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private queryString(ILjava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "id"
    .parameter "column"

    .prologue
    const/4 v8, 0x0

    .line 209
    const/4 v6, 0x0

    .line 212
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 215
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 223
    if-eqz v6, :cond_0

    .line 224
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v0

    .line 218
    :cond_1
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 223
    if-eqz v6, :cond_0

    .line 224
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 220
    :catch_0
    move-exception v7

    .line 223
    .local v7, e:Ljava/lang/Exception;
    if-eqz v6, :cond_2

    .line 224
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v8

    goto :goto_0

    .line 223
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 224
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method


# virtual methods
.method public native format_date_time(J)Ljava/lang/String;
.end method

.method getPropertyList(III)Landroid/mtp/MtpPropertyList;
    .locals 35
    .parameter "handle"
    .parameter "format"
    .parameter "depth"

    .prologue
    .line 306
    const/4 v4, 0x1

    move/from16 v0, p3

    if-le v0, v4, :cond_1

    .line 309
    new-instance v29, Landroid/mtp/MtpPropertyList;

    const/4 v4, 0x0

    const v5, 0xa808

    move-object/from16 v0, v29

    invoke-direct {v0, v4, v5}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    .line 482
    :cond_0
    :goto_0
    return-object v29

    .line 312
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpPropertyGroup;->mDatabase:Landroid/mtp/MtpDatabase;

    invoke-virtual {v4}, Landroid/mtp/MtpDatabase;->getPropertyCacheInstance()Landroid/mtp/MtpPropertyCache;

    move-result-object v31

    .line 313
    .local v31, propertyCache:Landroid/mtp/MtpPropertyCache;
    if-eqz v31, :cond_2

    .line 314
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/mtp/MtpPropertyCache;->setProperties([Landroid/mtp/MtpPropertyGroup$Property;)V

    .line 316
    move-object/from16 v0, v31

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/mtp/MtpPropertyCache;->get(III)Landroid/mtp/MtpPropertyList;

    move-result-object v29

    .line 317
    .local v29, propList:Landroid/mtp/MtpPropertyList;
    if-nez v29, :cond_0

    .line 326
    .end local v29           #propList:Landroid/mtp/MtpPropertyList;
    :cond_2
    if-nez p2, :cond_6

    .line 327
    const/4 v4, -0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_4

    .line 329
    const/4 v7, 0x0

    .line 330
    .local v7, where:Ljava/lang/String;
    const/4 v8, 0x0

    .line 354
    .local v8, whereArgs:[Ljava/lang/String;
    :goto_1
    const/16 v21, 0x0

    .line 357
    .local v21, c:Landroid/database/Cursor;
    if-gtz p3, :cond_3

    const/4 v4, -0x1

    move/from16 v0, p1

    if-eq v0, v4, :cond_3

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    array-length v4, v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_9

    .line 358
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    const/4 v9, 0x0

    invoke-interface/range {v4 .. v9}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 359
    if-nez v21, :cond_9

    .line 360
    new-instance v29, Landroid/mtp/MtpPropertyList;

    const/4 v4, 0x0

    const/16 v5, 0x2009

    move-object/from16 v0, v29

    invoke-direct {v0, v4, v5}, Landroid/mtp/MtpPropertyList;-><init>(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    if-eqz v21, :cond_0

    .line 482
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 332
    .end local v7           #where:Ljava/lang/String;
    .end local v8           #whereArgs:[Ljava/lang/String;
    .end local v21           #c:Landroid/database/Cursor;
    :cond_4
    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    .line 333
    .restart local v8       #whereArgs:[Ljava/lang/String;
    const/4 v4, 0x1

    move/from16 v0, p3

    if-ne v0, v4, :cond_5

    .line 334
    const-string v7, "parent=?"

    .restart local v7       #where:Ljava/lang/String;
    goto :goto_1

    .line 336
    .end local v7           #where:Ljava/lang/String;
    :cond_5
    const-string v7, "_id=?"

    .restart local v7       #where:Ljava/lang/String;
    goto :goto_1

    .line 340
    .end local v7           #where:Ljava/lang/String;
    .end local v8           #whereArgs:[Ljava/lang/String;
    :cond_6
    const/4 v4, -0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_7

    .line 342
    const-string v7, "format=?"

    .line 343
    .restart local v7       #where:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    .restart local v8       #whereArgs:[Ljava/lang/String;
    goto :goto_1

    .line 345
    .end local v7           #where:Ljava/lang/String;
    .end local v8           #whereArgs:[Ljava/lang/String;
    :cond_7
    const/4 v4, 0x2

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    const/4 v4, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    .line 346
    .restart local v8       #whereArgs:[Ljava/lang/String;
    const/4 v4, 0x1

    move/from16 v0, p3

    if-ne v0, v4, :cond_8

    .line 347
    const-string v7, "parent=? AND format=?"

    .restart local v7       #where:Ljava/lang/String;
    goto :goto_1

    .line 349
    .end local v7           #where:Ljava/lang/String;
    :cond_8
    const-string v7, "_id=? AND format=?"

    .restart local v7       #where:Ljava/lang/String;
    goto :goto_1

    .line 364
    .restart local v21       #c:Landroid/database/Cursor;
    :cond_9
    if-nez v21, :cond_b

    const/16 v23, 0x1

    .line 365
    .local v23, count:I
    :goto_2
    :try_start_1
    new-instance v9, Landroid/mtp/MtpPropertyList;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    array-length v4, v4

    mul-int v4, v4, v23

    const/16 v5, 0x2001

    invoke-direct {v9, v4, v5}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    .line 369
    .local v9, result:Landroid/mtp/MtpPropertyList;
    const/16 v28, 0x0

    .local v28, objectIndex:I
    :goto_3
    move/from16 v0, v28

    move/from16 v1, v23

    if-ge v0, v1, :cond_15

    .line 370
    if-eqz v21, :cond_a

    .line 371
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    .line 372
    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    long-to-int v0, v4

    move/from16 p1, v0

    .line 376
    :cond_a
    const/16 v32, 0x0

    .local v32, propertyIndex:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    array-length v4, v4

    move/from16 v0, v32

    if-ge v0, v4, :cond_14

    .line 377
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    aget-object v30, v4, v32

    .line 378
    .local v30, property:Landroid/mtp/MtpPropertyGroup$Property;
    move-object/from16 v0, v30

    iget v11, v0, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    .line 379
    .local v11, propertyCode:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    move/from16 v22, v0

    .line 382
    .local v22, column:I
    sparse-switch v11, :sswitch_data_0

    .line 464
    move-object/from16 v0, v30

    iget v4, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    const v5, 0xffff

    if-ne v4, v5, :cond_12

    .line 465
    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v9, v0, v11, v4}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 376
    :goto_5
    add-int/lit8 v32, v32, 0x1

    goto :goto_4

    .line 364
    .end local v9           #result:Landroid/mtp/MtpPropertyList;
    .end local v11           #propertyCode:I
    .end local v22           #column:I
    .end local v23           #count:I
    .end local v28           #objectIndex:I
    .end local v30           #property:Landroid/mtp/MtpPropertyGroup$Property;
    .end local v32           #propertyIndex:I
    :cond_b
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v23

    goto :goto_2

    .line 386
    .restart local v9       #result:Landroid/mtp/MtpPropertyList;
    .restart local v11       #propertyCode:I
    .restart local v22       #column:I
    .restart local v23       #count:I
    .restart local v28       #objectIndex:I
    .restart local v30       #property:Landroid/mtp/MtpPropertyGroup$Property;
    .restart local v32       #propertyIndex:I
    :sswitch_0
    const/4 v12, 0x6

    const-wide/16 v13, 0x0

    move/from16 v10, p1

    invoke-virtual/range {v9 .. v14}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 478
    .end local v9           #result:Landroid/mtp/MtpPropertyList;
    .end local v11           #propertyCode:I
    .end local v22           #column:I
    .end local v23           #count:I
    .end local v28           #objectIndex:I
    .end local v30           #property:Landroid/mtp/MtpPropertyGroup$Property;
    .end local v32           #propertyIndex:I
    :catch_0
    move-exception v25

    .line 479
    .local v25, e:Landroid/os/RemoteException;
    :try_start_2
    new-instance v29, Landroid/mtp/MtpPropertyList;

    const/4 v4, 0x0

    const/16 v5, 0x2002

    move-object/from16 v0, v29

    invoke-direct {v0, v4, v5}, Landroid/mtp/MtpPropertyList;-><init>(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 481
    if-eqz v21, :cond_0

    .line 482
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 389
    .end local v25           #e:Landroid/os/RemoteException;
    .restart local v9       #result:Landroid/mtp/MtpPropertyList;
    .restart local v11       #propertyCode:I
    .restart local v22       #column:I
    .restart local v23       #count:I
    .restart local v28       #objectIndex:I
    .restart local v30       #property:Landroid/mtp/MtpPropertyGroup$Property;
    .restart local v32       #propertyIndex:I
    :sswitch_1
    :try_start_3
    const-string v4, ""

    move/from16 v0, p1

    invoke-virtual {v9, v0, v11, v4}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    .line 481
    .end local v9           #result:Landroid/mtp/MtpPropertyList;
    .end local v11           #propertyCode:I
    .end local v22           #column:I
    .end local v23           #count:I
    .end local v28           #objectIndex:I
    .end local v30           #property:Landroid/mtp/MtpPropertyGroup$Property;
    .end local v32           #propertyIndex:I
    :catchall_0
    move-exception v4

    if-eqz v21, :cond_c

    .line 482
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v4

    .line 394
    .restart local v9       #result:Landroid/mtp/MtpPropertyList;
    .restart local v11       #propertyCode:I
    .restart local v22       #column:I
    .restart local v23       #count:I
    .restart local v28       #objectIndex:I
    .restart local v30       #property:Landroid/mtp/MtpPropertyGroup$Property;
    .restart local v32       #propertyIndex:I
    :sswitch_2
    const/4 v12, 0x4

    const-wide/16 v13, 0x0

    move/from16 v10, p1

    :try_start_4
    invoke-virtual/range {v9 .. v14}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto :goto_5

    .line 398
    :sswitch_3
    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 399
    .local v33, value:Ljava/lang/String;
    if-eqz v33, :cond_d

    .line 400
    invoke-static/range {v33 .. v33}, Landroid/mtp/MtpPropertyGroup;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v9, v0, v11, v4}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto :goto_5

    .line 402
    :cond_d
    const/16 v4, 0x2009

    invoke-virtual {v9, v4}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto :goto_5

    .line 407
    .end local v33           #value:Ljava/lang/String;
    :sswitch_4
    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 409
    .local v27, name:Ljava/lang/String;
    if-nez v27, :cond_e

    .line 410
    const-string v4, "name"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v4}, Landroid/mtp/MtpPropertyGroup;->queryString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 413
    :cond_e
    if-nez v27, :cond_f

    .line 414
    const-string v4, "_data"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v4}, Landroid/mtp/MtpPropertyGroup;->queryString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 415
    if-eqz v27, :cond_f

    .line 416
    invoke-static/range {v27 .. v27}, Landroid/mtp/MtpPropertyGroup;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 419
    :cond_f
    if-eqz v27, :cond_10

    .line 420
    move/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v9, v0, v11, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto :goto_5

    .line 422
    :cond_10
    const/16 v4, 0x2009

    invoke-virtual {v9, v4}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto/16 :goto_5

    .line 428
    .end local v27           #name:Ljava/lang/String;
    :sswitch_5
    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/mtp/MtpPropertyGroup;->format_date_time(J)Ljava/lang/String;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v9, v0, v11, v4}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_5

    .line 432
    :sswitch_6
    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    .line 433
    .local v34, year:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "0101T000000"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 434
    .local v24, dateTime:Ljava/lang/String;
    move/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v9, v0, v11, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_5

    .line 438
    .end local v24           #dateTime:Ljava/lang/String;
    .end local v34           #year:I
    :sswitch_7
    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 439
    .local v13, puid:J
    const/16 v4, 0x20

    shl-long/2addr v13, v4

    .line 440
    move/from16 v0, p1

    int-to-long v4, v0

    add-long/2addr v13, v4

    .line 441
    const/16 v12, 0xa

    move/from16 v10, p1

    invoke-virtual/range {v9 .. v14}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_5

    .line 444
    .end local v13           #puid:J
    :sswitch_8
    const/16 v18, 0x4

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    rem-int/lit16 v4, v4, 0x3e8

    int-to-long v0, v4

    move-wide/from16 v19, v0

    move-object v15, v9

    move/from16 v16, p1

    move/from16 v17, v11

    invoke-virtual/range {v15 .. v20}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_5

    .line 448
    :sswitch_9
    const-string v4, "artist"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v4}, Landroid/mtp/MtpPropertyGroup;->queryAudio(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v9, v0, v11, v4}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_5

    .line 452
    :sswitch_a
    const-string v4, "album"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v4}, Landroid/mtp/MtpPropertyGroup;->queryAudio(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v9, v0, v11, v4}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_5

    .line 456
    :sswitch_b
    invoke-direct/range {p0 .. p1}, Landroid/mtp/MtpPropertyGroup;->queryGenre(I)Ljava/lang/String;

    move-result-object v26

    .line 457
    .local v26, genre:Ljava/lang/String;
    if-eqz v26, :cond_11

    .line 458
    move/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v9, v0, v11, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_5

    .line 460
    :cond_11
    const/16 v4, 0x2009

    invoke-virtual {v9, v4}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto/16 :goto_5

    .line 466
    .end local v26           #genre:Ljava/lang/String;
    :cond_12
    move-object/from16 v0, v30

    iget v4, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    if-nez v4, :cond_13

    .line 467
    move-object/from16 v0, v30

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move/from16 v18, v0

    const-wide/16 v19, 0x0

    move-object v15, v9

    move/from16 v16, p1

    move/from16 v17, v11

    invoke-virtual/range {v15 .. v20}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_5

    .line 469
    :cond_13
    move-object/from16 v0, v30

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move/from16 v18, v0

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    move-object v15, v9

    move/from16 v16, p1

    move/from16 v17, v11

    invoke-virtual/range {v15 .. v20}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_5

    .line 369
    .end local v11           #propertyCode:I
    .end local v22           #column:I
    .end local v30           #property:Landroid/mtp/MtpPropertyGroup$Property;
    :cond_14
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_3

    .line 481
    .end local v32           #propertyIndex:I
    :cond_15
    if-eqz v21, :cond_16

    .line 482
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_16
    move-object/from16 v29, v9

    goto/16 :goto_0

    .line 382
    nop

    :sswitch_data_0
    .sparse-switch
        0xdc03 -> :sswitch_2
        0xdc07 -> :sswitch_3
        0xdc09 -> :sswitch_5
        0xdc41 -> :sswitch_7
        0xdc44 -> :sswitch_4
        0xdc46 -> :sswitch_9
        0xdc4e -> :sswitch_5
        0xdc8b -> :sswitch_8
        0xdc8c -> :sswitch_b
        0xdc99 -> :sswitch_6
        0xdc9a -> :sswitch_a
        0xde9b -> :sswitch_0
        0xdea1 -> :sswitch_1
    .end sparse-switch
.end method
