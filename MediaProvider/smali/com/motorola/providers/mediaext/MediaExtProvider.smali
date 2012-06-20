.class public Lcom/motorola/providers/mediaext/MediaExtProvider;
.super Ljava/lang/Object;
.source "MediaExtProvider.java"


# static fields
.field private static final ASSOCIATION:I = 0x89a

.field private static final ASSOCIATION_ID:I = 0x89b

.field private static final IMAGES_MULTISHOTS:I = 0xa

.field private static final IMAGES_MULTISHOTS_ID:I = 0xb

.field private static final IMAGES_MULTISHOTS_INFO:I = 0xc

.field private static final IMAGES_MULTISHOTS_INFO_ID:I = 0xd

.field private static final IMAGES_SPEEDDATA:I = 0x7

.field private static final IMAGES_SPEEDDATA_ID:I = 0x8

.field private static final IMAGES_WITHOUT_LOCINFO_ID:I = 0x9

.field static final INTERNAL_VOLUME:Ljava/lang/String; = "internal"

.field private static final KEYWORDS:I = 0x898

.field private static final KEYWORDS_ID:I = 0x899

.field public static MEDIA_EXT_DATABASE_VERSION:I = 0x0

.field public static final META_INFO:Ljava/lang/String; = "mediaext_db_vserion"

.field private static final MIME_TYPE_PROJECTION:[Ljava/lang/String; = null

.field public static final MULTISHOTS:Ljava/lang/String; = "multishots"

.field public static final MULTISHOTS_INFO:Ljava/lang/String; = "multishots_info"

.field public static final TAG:Ljava/lang/String; = "MediaExtProvider"

.field private static final TAG_IMAGE_INFO:I = 0x89e

.field private static final TAG_IMAGE_INFO_ID:I = 0x89f

.field private static final TAG_VIDEO_INFO:I = 0x89c

.field private static final TAG_VIDEO_INFO_ID:I = 0x89d

.field private static final TAG_VISUAL_INFO:I = 0x8a2

.field private static final TAG_VISUAL_INFO_ID:I = 0x8a3

.field public static final UNKNOWN_STRING:Ljava/lang/String; = "<unknown>"

.field private static final URI_MATCHER:Landroid/content/UriMatcher; = null

.field private static final VISUAL_INFO:I = 0x8a0

.field private static final VISUAL_INFO_ID:I = 0x8a1

.field private static sProvider:Lcom/motorola/providers/mediaext/MediaExtProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/providers/mediaext/MediaExtProvider;->sProvider:Lcom/motorola/providers/mediaext/MediaExtProvider;

    .line 45
    sput v4, Lcom/motorola/providers/mediaext/MediaExtProvider;->MEDIA_EXT_DATABASE_VERSION:I

    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/providers/mediaext/MediaExtProvider;->MIME_TYPE_PROJECTION:[Ljava/lang/String;

    .line 952
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/motorola/providers/mediaext/MediaExtProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 960
    sget-object v0, Lcom/motorola/providers/mediaext/MediaExtProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    sget-object v1, Lcom/motorola/android/provider/MediaStoreExt;->AUTHORITY:Ljava/lang/String;

    const-string v2, "*/images/loc_info_removed/#"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 963
    sget-object v0, Lcom/motorola/providers/mediaext/MediaExtProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    sget-object v1, Lcom/motorola/android/provider/MediaStoreExt;->AUTHORITY:Ljava/lang/String;

    const-string v2, "*/images/multishots"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 964
    sget-object v0, Lcom/motorola/providers/mediaext/MediaExtProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    sget-object v1, Lcom/motorola/android/provider/MediaStoreExt;->AUTHORITY:Ljava/lang/String;

    const-string v2, "*/images/multishots/#"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 965
    sget-object v0, Lcom/motorola/providers/mediaext/MediaExtProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    sget-object v1, Lcom/motorola/android/provider/MediaStoreExt;->AUTHORITY:Ljava/lang/String;

    const-string v2, "*/images/multishots_info"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 966
    sget-object v0, Lcom/motorola/providers/mediaext/MediaExtProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    sget-object v1, Lcom/motorola/android/provider/MediaStoreExt;->AUTHORITY:Ljava/lang/String;

    const-string v2, "*/images/multishots_info/#"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 969
    sget-object v0, Lcom/motorola/providers/mediaext/MediaExtProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    sget-object v1, Lcom/motorola/android/provider/MediaStoreExt;->AUTHORITY:Ljava/lang/String;

    const-string v2, "*/images/speed_data"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 970
    sget-object v0, Lcom/motorola/providers/mediaext/MediaExtProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    sget-object v1, Lcom/motorola/android/provider/MediaStoreExt;->AUTHORITY:Ljava/lang/String;

    const-string v2, "*/images/speed_data/#"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 972
    sget-object v0, Lcom/motorola/providers/mediaext/MediaExtProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    sget-object v1, Lcom/motorola/android/provider/MediaStoreExt;->AUTHORITY:Ljava/lang/String;

    const-string v2, "*/tag"

    const/16 v3, 0x898

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 973
    sget-object v0, Lcom/motorola/providers/mediaext/MediaExtProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    sget-object v1, Lcom/motorola/android/provider/MediaStoreExt;->AUTHORITY:Ljava/lang/String;

    const-string v2, "*/tag/#"

    const/16 v3, 0x899

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 974
    sget-object v0, Lcom/motorola/providers/mediaext/MediaExtProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    sget-object v1, Lcom/motorola/android/provider/MediaStoreExt;->AUTHORITY:Ljava/lang/String;

    const-string v2, "*/association"

    const/16 v3, 0x89a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 975
    sget-object v0, Lcom/motorola/providers/mediaext/MediaExtProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    sget-object v1, Lcom/motorola/android/provider/MediaStoreExt;->AUTHORITY:Ljava/lang/String;

    const-string v2, "*/association/#"

    const/16 v3, 0x89b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 976
    sget-object v0, Lcom/motorola/providers/mediaext/MediaExtProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    sget-object v1, Lcom/motorola/android/provider/MediaStoreExt;->AUTHORITY:Ljava/lang/String;

    const-string v2, "*/taginfo_image"

    const/16 v3, 0x89e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 977
    sget-object v0, Lcom/motorola/providers/mediaext/MediaExtProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    sget-object v1, Lcom/motorola/android/provider/MediaStoreExt;->AUTHORITY:Ljava/lang/String;

    const-string v2, "*/taginfo_image/#"

    const/16 v3, 0x89f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 978
    sget-object v0, Lcom/motorola/providers/mediaext/MediaExtProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    sget-object v1, Lcom/motorola/android/provider/MediaStoreExt;->AUTHORITY:Ljava/lang/String;

    const-string v2, "*/taginfo_video"

    const/16 v3, 0x89c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 979
    sget-object v0, Lcom/motorola/providers/mediaext/MediaExtProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    sget-object v1, Lcom/motorola/android/provider/MediaStoreExt;->AUTHORITY:Ljava/lang/String;

    const-string v2, "*/taginfo_video/#"

    const/16 v3, 0x89d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 980
    sget-object v0, Lcom/motorola/providers/mediaext/MediaExtProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    sget-object v1, Lcom/motorola/android/provider/MediaStoreExt;->AUTHORITY:Ljava/lang/String;

    const-string v2, "*/visual"

    const/16 v3, 0x8a0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 981
    sget-object v0, Lcom/motorola/providers/mediaext/MediaExtProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    sget-object v1, Lcom/motorola/android/provider/MediaStoreExt;->AUTHORITY:Ljava/lang/String;

    const-string v2, "*/visual/#"

    const/16 v3, 0x8a1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 982
    sget-object v0, Lcom/motorola/providers/mediaext/MediaExtProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    sget-object v1, Lcom/motorola/android/provider/MediaStoreExt;->AUTHORITY:Ljava/lang/String;

    const-string v2, "*/taginfo_visual"

    const/16 v3, 0x8a2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 983
    sget-object v0, Lcom/motorola/providers/mediaext/MediaExtProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    sget-object v1, Lcom/motorola/android/provider/MediaStoreExt;->AUTHORITY:Ljava/lang/String;

    const-string v2, "*/taginfo_visual/#"

    const/16 v3, 0x8a3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 986
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createTableMetaInfo(ILandroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "dbVersion"
    .parameter "db"

    .prologue
    .line 65
    const-string v1, "CREATE TABLE mediaext_db_vserion (version INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 67
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 68
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "version"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 69
    const-string v1, "mediaext_db_vserion"

    const-string v2, "version"

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 71
    return-void
.end method

.method private delete(Lcom/android/providers/media/MediaProvider;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "mp"
    .parameter "db"
    .parameter "tbl"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 583
    const/4 v0, 0x0

    .line 585
    .local v0, numDelete:I
    const-string v2, "images"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 586
    new-instance v1, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    invoke-direct {v1}, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;-><init>()V

    .line 588
    .local v1, out:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v2, p4, v1}, Lcom/android/providers/media/MediaProvider;->getTableAndWhereExt(Landroid/net/Uri;Ljava/lang/String;Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;)V

    .line 589
    iget-object v2, v1, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    invoke-virtual {p2, v2, v3, p5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 592
    .end local v1           #out:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;
    :cond_0
    return v0
.end method

.method static getBlurVersion(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 4
    .parameter "db"

    .prologue
    .line 353
    const/4 v0, 0x0

    .line 356
    .local v0, blurVersion:I
    :try_start_0
    const-string v2, "select version from mediaext_db_vserion"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    long-to-int v0, v2

    .line 362
    :goto_0
    return v0

    .line 359
    :catch_0
    move-exception v1

    .line 360
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getVersion(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 4
    .parameter "db"

    .prologue
    .line 339
    const/4 v1, 0x0

    .line 342
    .local v1, version:I
    :try_start_0
    const-string v2, "select version from mediaext_db_vserion"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    long-to-int v1, v2

    .line 349
    :goto_0
    return v1

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const/4 v1, 0x0

    .line 346
    invoke-static {v1, p0}, Lcom/motorola/providers/mediaext/MediaExtProvider;->createTableMetaInfo(ILandroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method

.method private orphanMultishotsHandler(Lcom/android/providers/media/MediaProvider;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 20
    .parameter "mp"
    .parameter "db"
    .parameter "groupID"

    .prologue
    .line 543
    const/4 v8, 0x0

    .line 544
    .local v8, sort:Ljava/lang/String;
    const/4 v5, 0x0

    .line 545
    .local v5, selectionArgs:[Ljava/lang/String;
    const/16 v17, 0x0

    .line 547
    .local v17, findMain:Z
    const/4 v4, 0x0

    .line 550
    .local v4, where:Ljava/lang/String;
    const-string v4, "multiburst_group_id=?"

    .line 551
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    .end local v5           #selectionArgs:[Ljava/lang/String;
    const/4 v1, 0x0

    aput-object p3, v5, v1

    .line 552
    .restart local v5       #selectionArgs:[Ljava/lang/String;
    const-string v8, "sequence_number ASC "

    .line 553
    const-string v2, "multishots_info"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v1

    const/4 v1, 0x1

    const-string v6, "shooting_mode"

    aput-object v6, v3, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 560
    .local v16, c:Landroid/database/Cursor;
    if-eqz v16, :cond_1

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 562
    :cond_0
    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 563
    .local v19, shootingMode:I
    const/4 v1, 0x2

    move/from16 v0, v19

    if-ne v0, v1, :cond_3

    .line 565
    const/16 v17, 0x1

    .line 569
    :goto_0
    if-nez v17, :cond_1

    .line 570
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 571
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 572
    .local v18, imageID:I
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 573
    .local v13, values:Landroid/content/ContentValues;
    const-string v1, "shooting_mode"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 574
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 575
    const-string v12, "images"

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object v14, v4

    invoke-direct/range {v9 .. v15}, Lcom/motorola/providers/mediaext/MediaExtProvider;->update(Lcom/android/providers/media/MediaProvider;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 578
    .end local v13           #values:Landroid/content/ContentValues;
    .end local v18           #imageID:I
    .end local v19           #shootingMode:I
    :cond_1
    if-eqz v16, :cond_2

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 579
    :cond_2
    return-void

    .line 568
    .restart local v19       #shootingMode:I
    :cond_3
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public static declared-synchronized singleton()Lcom/motorola/providers/mediaext/MediaExtProvider;
    .locals 2

    .prologue
    .line 58
    const-class v1, Lcom/motorola/providers/mediaext/MediaExtProvider;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/motorola/providers/mediaext/MediaExtProvider;->sProvider:Lcom/motorola/providers/mediaext/MediaExtProvider;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/motorola/providers/mediaext/MediaExtProvider;

    invoke-direct {v0}, Lcom/motorola/providers/mediaext/MediaExtProvider;-><init>()V

    sput-object v0, Lcom/motorola/providers/mediaext/MediaExtProvider;->sProvider:Lcom/motorola/providers/mediaext/MediaExtProvider;

    .line 61
    :cond_0
    sget-object v0, Lcom/motorola/providers/mediaext/MediaExtProvider;->sProvider:Lcom/motorola/providers/mediaext/MediaExtProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private update(Lcom/android/providers/media/MediaProvider;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "mp"
    .parameter "db"
    .parameter "tbl"
    .parameter "initialValues"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 596
    const/4 v0, 0x0

    .line 598
    .local v0, numUpdated:I
    const-string v2, "images"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 599
    new-instance v1, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    invoke-direct {v1}, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;-><init>()V

    .line 601
    .local v1, out:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v2, p5, v1}, Lcom/android/providers/media/MediaProvider;->getTableAndWhereExt(Landroid/net/Uri;Ljava/lang/String;Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;)V

    .line 602
    iget-object v2, v1, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    invoke-virtual {p2, v2, p4, v3, p6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 605
    .end local v1           #out:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;
    :cond_0
    return v0
.end method

.method private updateDatabase(Landroid/database/sqlite/SQLiteDatabase;ZII)V
    .locals 8
    .parameter "db"
    .parameter "internal"
    .parameter "fromVersion"
    .parameter "toVersion"

    .prologue
    const/4 v7, 0x2

    const/16 v6, 0xa

    const/4 v5, 0x1

    .line 107
    const-string v2, "MediaExtProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "upgrade mediaext from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " internal="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    if-le p3, p4, :cond_1

    .line 109
    const-string v2, "MediaExtProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downgrade DB from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not supported !"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    invoke-static {p1}, Lcom/motorola/providers/mediaext/MediaExtProvider;->getBlurVersion(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v0

    .line 115
    .local v0, blurVersion:I
    if-ge p3, v6, :cond_2

    .line 116
    invoke-static {p1, p2}, Lcom/motorola/android/media/MediaUtil;->updateDatabase(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 117
    const-string v2, "images"

    const-string v3, "date_used,rating,dlna_profile,dlna_share,maker,file_type,location,resolution,shooting_mode,multiburst_group_id"

    invoke-static {p1, p2, v2, v3}, Lcom/android/providers/media/MediaProvider;->recreateView(Landroid/database/sqlite/SQLiteDatabase;ZLjava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v2, "video"

    const-string v3, "date_used,orientation,rating,drm_type,dlna_profile,dlna_share,maker,file_type,location,drm_expire"

    invoke-static {p1, p2, v2, v3}, Lcom/android/providers/media/MediaProvider;->recreateView(Landroid/database/sqlite/SQLiteDatabase;ZLjava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v2, "audio_meta"

    const-string v3, "date_used,drm_type,rating,dlna_profile,dlna_share,file_type,orientation,drm_expire,bucket_id,bucket_display_name"

    invoke-static {p1, p2, v2, v3}, Lcom/android/providers/media/MediaProvider;->recreateView(Landroid/database/sqlite/SQLiteDatabase;ZLjava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_2
    if-ge p3, v5, :cond_6

    .line 122
    if-ge v0, v5, :cond_3

    .line 123
    const-string v2, "MediaExtProvider"

    const-string v3, "create for blurVerions < 1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string v2, "CREATE TABLE IF NOT EXISTS keywords (_id INTEGER PRIMARY KEY,_data TEXT);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 129
    const-string v2, "CREATE TABLE IF NOT EXISTS association (_id INTEGER PRIMARY KEY,media_id INTEGER,media_type INTEGER,keyword_id INTEGER);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 136
    const-string v2, "CREATE TRIGGER IF NOT EXISTS keywords_clean AFTER DELETE ON keywords BEGIN DELETE FROM association WHERE keyword_id=old._id; END;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 142
    const-string v2, "CREATE TRIGGER IF NOT EXISTS association_clean AFTER DELETE ON association BEGIN DELETE FROM keywords WHERE _id=old.keyword_id AND (SELECT _id FROM association WHERE keyword_id=old.keyword_id) IS NULL;END;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 149
    const-string v2, "CREATE TABLE IF NOT EXISTS speed_data (_id INTEGER PRIMARY KEY,_data TEXT,image_id INTEGER);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 154
    const-string v2, "CREATE INDEX IF NOT EXISTS speeddata_id_index on speed_data(image_id);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 155
    const-string v2, "CREATE TRIGGER IF NOT EXISTS speeddata_cleanup DELETE ON speed_data BEGIN SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 160
    const-string v2, "CREATE VIEW IF NOT EXISTS taginfo_image AS  SELECT DISTINCT  i._id _id, i._data _data, i.datetaken datetaken, i.date_added date_added,  i.date_modified date_modified, i.mini_thumb_magic mini_thumb_magic, i.orientation orientation, i.mime_type mime_type,  i.latitude latitude,i.longitude longitude, i.bucket_id bucket_id,i.bucket_display_name bucket_display_name,  k._id tag_id, k._data tag_data  FROM images i, association a,keywords k  where i._id=a.media_id AND a.media_type=1 AND a.keyword_id=k._id;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 170
    const-string v2, "CREATE VIEW IF NOT EXISTS taginfo_video AS  SELECT DISTINCT  v._id _id , v._data _data, v.datetaken datetaken, v.date_added date_added, v.resolution resolution,  v.date_modified date_modified, v.title title, v.duration duration, v._display_name _display_name, v.description description,  v.isprivate isprivate, v.tags tags, v.category category, v.language language, v.latitude latitude, v.longitude longitude,  v.mini_thumb_magic mini_thumb_magic, v.mime_type mime_type, v.bucket_id bucket_id, v.bucket_display_name bucket_display_name,  k._id tag_id, k._data tag_data  FROM video v, association a,keywords k  where v._id=a.media_id AND a.media_type=2 AND a.keyword_id=k._id;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 181
    const-string v2, "CREATE VIEW IF NOT EXISTS image_search  AS  select _id as _id,_data as name,lower(_data) as xname,0 as suggestiontype,\'content://media/external/image/tags/\'||_id||\'/\'||_data AS suggest_intent_data  from  keywords   union   select distinct bucket_id as _id , bucket_display_name as name,lower(bucket_display_name) as xname, 1 as suggestiontype,  \'content://media/external/image/folders/\'||bucket_id||\'/\'||bucket_display_name AS suggest_intent_data  from images   union   select distinct v.bucket_id as _id, v.bucket_display_name as name ,lower(v.bucket_display_name) as xname,1 as suggestiontype,  \'content://media/external/image/folders/\'||v.bucket_id||\'/\'||v.bucket_display_name AS suggest_intent_data  from video v where  not exists (select distinct i.bucket_display_name  from images i where i.bucket_display_name = v.bucket_display_name ) order by  suggestiontype,xname;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 193
    const-string v2, "CREATE VIEW IF NOT EXISTS taginfo_visual AS  SELECT * FROM (  SELECT i._id _id, i._data _data, i._size _size, i._display_name _display_name, i.mime_type mime_type,  i.title title, i.date_added date_added, i.date_modified date_modified,  i.latitude latitude, i.longitude longitude, i.datetaken datetaken, i.mini_thumb_magic mini_thumb_magic,  i.bucket_id bucket_id, i.bucket_display_name bucket_display_name, 0 as drm_type, i.isprivate isprivate,  i.description description, i.orientation orientation, k1._id tag_id, k1._data tag_data  FROM images i, keywords k1, association a1  WHERE i._id=a1.media_id AND a1.keyword_id=k1._id AND a1.media_type=1 UNION  SELECT v._id _id, v._data _data, v._size _size, v._display_name _display_name, v.mime_type mime_type,  v.title title, v.date_added date_added, v.date_modified  date_modified,  v.latitude latitude, v.longitude longitude, v.datetaken datetaken, v.mini_thumb_magic mini_thumb_magic,  v.bucket_id bucket_id, v.bucket_display_name bucket_display_name, v.drm_type drm_type, v.isprivate isprivate,  v.description description, 0 as orientation, k2._id tag_id, k2._data tag_data  FROM video v, keywords k2, association a2  WHERE v._id=a2.media_id AND a2.keyword_id=k2._id AND a2.media_type=2);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 212
    const-string v2, "CREATE VIEW IF NOT EXISTS visual_info AS SELECT * FROM ( SELECT _id, _data, _size, _display_name, mime_type, title, date_added, date_modified, latitude, longitude, datetaken, mini_thumb_magic, bucket_id, bucket_display_name, 0 as drm_type, isprivate, description, orientation  FROM images  UNION SELECT _id, _data, _size, _display_name, mime_type, title, date_added, date_modified, latitude, longitude, datetaken, mini_thumb_magic, bucket_id, bucket_display_name, drm_type, isprivate, description, 0 as orientation  FROM video );"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 225
    :cond_3
    if-ge v0, v6, :cond_4

    .line 226
    const-string v2, "MediaExtProvider"

    const-string v3, "create for blurVerions < 10"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const-string v2, "CREATE TABLE IF NOT EXISTS multishots (_id INTEGER PRIMARY KEY,image_id INTEGER,multiburst_group_id TEXT,sequence_number INTEGER,sequence_frequency INTEGER);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 234
    const-string v2, "CREATE INDEX IF NOT EXISTS multishots_id_index on multishots(image_id);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 235
    const-string v2, "CREATE INDEX IF NOT EXISTS multishots_group_index on multishots(multiburst_group_id);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 237
    :try_start_0
    const-string v2, "ALTER TABLE images ADD COLUMN shooting_mode INTEGER DEFAULT 0;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 238
    const-string v2, "ALTER TABLE images ADD COLUMN multiburst_group_id TEXT;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :goto_1
    const-string v2, "CREATE TRIGGER IF NOT EXISTS images_multishots_cleanup DELETE ON files BEGIN DELETE FROM multishots WHERE image_id = old._id;END"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 246
    const-string v2, "CREATE VIEW IF NOT EXISTS multishots_info AS  SELECT DISTINCT  i.*, m.sequence_number sequence_number, m.sequence_frequency sequence_frequency  FROM images i, multishots m  WHERE i._id=m.image_id;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 254
    :cond_4
    const/16 v2, 0x15

    if-ge v0, v2, :cond_5

    .line 255
    const-string v2, "MediaExtProvider"

    const-string v3, "create for blurVerions < 21"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_5
    const/16 v2, 0x17

    if-ge v0, v2, :cond_6

    .line 258
    const-string v2, "MediaExtProvider"

    const-string v3, "create for blurVerions < 23"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_6
    if-ge p3, v7, :cond_7

    .line 268
    :cond_7
    if-ge p3, v6, :cond_0

    .line 269
    const-string v2, "DROP TRIGGER IF EXISTS images_association_cleanup"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 270
    const-string v2, "DROP TRIGGER IF EXISTS video_association_cleanup"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 271
    const-string v2, "DROP TRIGGER IF EXISTS video_cleanup_1"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 272
    const-string v2, "DROP TRIGGER IF EXISTS images_speeddata_cleanup"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 274
    const-string v2, "CREATE TRIGGER IF NOT EXISTS mot_video_thumb__cleanup DELETE ON files BEGIN DELETE FROM videothumbnails WHERE video_id = old._id;END"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 278
    const-string v2, "CREATE TRIGGER IF NOT EXISTS mot_images_speeddata_cleanup DELETE ON files BEGIN delete from speed_data where image_id=old._id;END"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 282
    const-string v2, "CREATE TRIGGER IF NOT EXISTS mot_images_association_cleanup DELETE ON files BEGIN DELETE FROM association where media_id = old._id and media_type=1;END"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 287
    const-string v2, "CREATE TRIGGER IF NOT EXISTS mot_video_association_cleanup DELETE ON files BEGIN DELETE FROM association where media_id = old._id and media_type=2;END"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 294
    const-string v2, "UPDATE multishots SET image_id = (SELECT _id FROM files where files.old_id = multishots.image_id AND files.media_type = 1);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 297
    const-string v2, "UPDATE speed_data SET image_id = (SELECT _id FROM files where files.old_id = speed_data.image_id AND files.media_type = 1);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 300
    const-string v2, "UPDATE association SET media_id = (SELECT _id FROM files where files.old_id = association.media_id AND files.media_type = 1) WHERE media_type = 1;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 304
    const-string v2, "UPDATE association SET media_id = (SELECT _id FROM files where files.old_id = association.media_id AND files.media_type = 3) WHERE media_type = 2;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 310
    const-string v2, "images_obsolete"

    const-string v3, "date_used,rating,dlna_profile,dlna_share,maker,file_type,location,resolution,shooting_mode,multiburst_group_id"

    invoke-virtual {p0, p1, v2, v3, v5}, Lcom/motorola/providers/mediaext/MediaExtProvider;->restoreColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V

    .line 311
    const-string v2, "video_obsolete"

    const-string v3, "date_used,orientation,rating,drm_type,dlna_profile,dlna_share,maker,file_type,location,drm_expire"

    const/4 v4, 0x3

    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/motorola/providers/mediaext/MediaExtProvider;->restoreColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V

    .line 312
    const-string v2, "audio_meta_obsolete"

    const-string v3, "date_used,drm_type,rating,dlna_profile,dlna_share,file_type,orientation,drm_expire,bucket_id,bucket_display_name"

    invoke-virtual {p0, p1, v2, v3, v7}, Lcom/motorola/providers/mediaext/MediaExtProvider;->restoreColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V

    .line 315
    const-string v2, "DROP TABLE IF EXISTS images_obsolete"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 316
    const-string v2, "DROP TABLE IF EXISTS audio_meta_obsolete"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 317
    const-string v2, "DROP TABLE IF EXISTS video_obsolete"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 239
    :catch_0
    move-exception v1

    .line 240
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    const-string v2, "MediaExtProvider"

    const-string v3, "shooting info already exist in images table!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method


# virtual methods
.method public delete(Lcom/android/providers/media/MediaProvider;Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 25
    .parameter "mp"
    .parameter "context"
    .parameter "db"
    .parameter "uri"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    .line 611
    sget-object v4, Lcom/motorola/providers/mediaext/MediaExtProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v21

    .line 612
    .local v21, match:I
    const/16 v22, 0x0

    .line 613
    .local v22, numDelete:I
    const/4 v8, 0x0

    .line 615
    .local v8, where:Ljava/lang/String;
    const-string v4, "MediaExtProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " userWhere="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    sparse-switch v21, :sswitch_data_0

    .line 723
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 619
    :sswitch_0
    const-string v4, "speed_data"

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual {v0, v4, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v22

    .line 727
    :cond_0
    :goto_0
    const-string v4, "MediaExtProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleting ...."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p4 .. p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Deleted : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    return v22

    .line 623
    :sswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p4 .. p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p5, :cond_1

    const-string v4, ""

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 625
    const-string v4, "speed_data"

    move-object/from16 v0, p3

    move-object/from16 v1, p6

    invoke-virtual {v0, v4, v8, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v22

    .line 626
    goto :goto_0

    .line 623
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 630
    :sswitch_2
    const-string v4, "keywords"

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual {v0, v4, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v22

    .line 631
    goto :goto_0

    .line 634
    :sswitch_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p4 .. p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p5, :cond_2

    const-string v4, ""

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 636
    const-string v4, "keywords"

    move-object/from16 v0, p3

    move-object/from16 v1, p6

    invoke-virtual {v0, v4, v8, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v22

    .line 637
    goto/16 :goto_0

    .line 634
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 640
    :sswitch_4
    const-string v4, "association"

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual {v0, v4, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v22

    .line 641
    goto/16 :goto_0

    .line 644
    :sswitch_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p4 .. p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p5, :cond_3

    const-string v4, ""

    :goto_3
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 646
    const-string v4, "association"

    move-object/from16 v0, p3

    move-object/from16 v1, p6

    invoke-virtual {v0, v4, v8, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v22

    .line 647
    goto/16 :goto_0

    .line 644
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 652
    :sswitch_6
    const-string v4, "multishots"

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual {v0, v4, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v22

    .line 653
    goto/16 :goto_0

    .line 656
    :sswitch_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p4 .. p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p5, :cond_4

    const-string v4, ""

    :goto_4
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 658
    const-string v4, "multishots"

    move-object/from16 v0, p3

    move-object/from16 v1, p6

    invoke-virtual {v0, v4, v8, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v22

    .line 659
    goto/16 :goto_0

    .line 656
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 662
    :sswitch_8
    const/16 v20, 0x0

    .line 666
    .local v20, mGroups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shooting_mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p5, :cond_8

    const-string v4, ""

    :goto_5
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 669
    const/4 v5, 0x1

    const-string v6, "images"

    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v9, "multiburst_group_id"

    aput-object v9, v7, v4

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v4, p3

    move-object/from16 v9, p6

    invoke-virtual/range {v4 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 672
    .local v15, c1:Landroid/database/Cursor;
    if-eqz v15, :cond_6

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 673
    new-instance v20, Ljava/util/ArrayList;

    .end local v20           #mGroups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 675
    .restart local v20       #mGroups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    const/4 v4, 0x0

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 676
    .local v19, mGroupID:Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_5

    .line 679
    .end local v19           #mGroupID:Ljava/lang/String;
    :cond_6
    if-eqz v15, :cond_7

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 682
    :cond_7
    const-string v12, "images"

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    invoke-direct/range {v9 .. v14}, Lcom/motorola/providers/mediaext/MediaExtProvider;->delete(Lcom/android/providers/media/MediaProvider;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v22

    .line 685
    if-eqz v20, :cond_0

    .line 686
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 687
    .local v24, size:I
    const/16 v18, 0x0

    .local v18, i:I
    :goto_6
    move/from16 v0, v18

    move/from16 v1, v24

    if-ge v0, v1, :cond_0

    .line 689
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 690
    .restart local v19       #mGroupID:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/providers/mediaext/MediaExtProvider;->orphanMultishotsHandler(Lcom/android/providers/media/MediaProvider;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 687
    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    .line 666
    .end local v15           #c1:Landroid/database/Cursor;
    .end local v18           #i:I
    .end local v19           #mGroupID:Ljava/lang/String;
    .end local v24           #size:I
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_5

    .line 695
    .end local v20           #mGroups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    const/16 v17, 0x0

    .line 696
    .local v17, groupID:Ljava/lang/String;
    const/16 v23, 0x0

    .line 698
    .local v23, shootingMode:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p4 .. p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p5, :cond_b

    const-string v4, ""

    :goto_7
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 702
    const-string v6, "images"

    const/4 v4, 0x2

    new-array v7, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "multiburst_group_id"

    aput-object v5, v7, v4

    const/4 v4, 0x1

    const-string v5, "shooting_mode"

    aput-object v5, v7, v4

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, p3

    move-object/from16 v9, p6

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 706
    .local v16, c2:Landroid/database/Cursor;
    if-eqz v16, :cond_9

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 707
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 708
    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 710
    :cond_9
    if-eqz v16, :cond_a

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 713
    :cond_a
    const-string v7, "images"

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v9, p6

    invoke-direct/range {v4 .. v9}, Lcom/motorola/providers/mediaext/MediaExtProvider;->delete(Lcom/android/providers/media/MediaProvider;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v22

    .line 716
    const/4 v4, 0x2

    move/from16 v0, v23

    if-ne v0, v4, :cond_0

    .line 718
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/providers/mediaext/MediaExtProvider;->orphanMultishotsHandler(Lcom/android/providers/media/MediaProvider;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 698
    .end local v16           #c2:Landroid/database/Cursor;
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    .line 616
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x8 -> :sswitch_1
        0xa -> :sswitch_6
        0xb -> :sswitch_7
        0xc -> :sswitch_8
        0xd -> :sswitch_9
        0x898 -> :sswitch_2
        0x899 -> :sswitch_3
        0x89a -> :sswitch_4
        0x89b -> :sswitch_5
    .end sparse-switch
.end method

.method public getType(Lcom/android/providers/media/MediaProvider;Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)Ljava/lang/String;
    .locals 11
    .parameter "mp"
    .parameter "context"
    .parameter "db"
    .parameter "url"

    .prologue
    .line 863
    const/4 v6, 0x0

    .line 864
    .local v6, c:Landroid/database/Cursor;
    sget-object v0, Lcom/motorola/providers/mediaext/MediaExtProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p4}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 884
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Unknown URL"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 866
    :pswitch_0
    invoke-static {p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    .line 867
    .local v7, imageId:J
    invoke-virtual {p4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 868
    .local v10, volume:Ljava/lang/String;
    invoke-static {v10}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 870
    .local v1, imageUri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/motorola/providers/mediaext/MediaExtProvider;->MIME_TYPE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 871
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 872
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 873
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 874
    .local v9, mimeType:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->deactivate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 878
    if-eqz v6, :cond_1

    .line 879
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v9

    .line 878
    .end local v9           #mimeType:Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_0

    .line 879
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 878
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 879
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 864
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Lcom/android/providers/media/MediaProvider;Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 14
    .parameter "mp"
    .parameter "context"
    .parameter "db"
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    .line 735
    const-string v11, "MediaExtProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "insert "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p4 .. p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    const-wide/16 v6, -0x1

    .line 737
    .local v6, rowId:J
    const/4 v5, 0x0

    .line 738
    .local v5, newUri:Landroid/net/Uri;
    sget-object v11, Lcom/motorola/providers/mediaext/MediaExtProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    .line 739
    .local v4, match:I
    if-nez p5, :cond_0

    .line 740
    new-instance p5, Landroid/content/ContentValues;

    .end local p5
    invoke-direct/range {p5 .. p5}, Landroid/content/ContentValues;-><init>()V

    .line 743
    .restart local p5
    :cond_0
    sparse-switch v4, :sswitch_data_0

    .line 787
    new-instance v11, Ljava/lang/UnsupportedOperationException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown URI: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 745
    :sswitch_0
    const-string v11, "_data"

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 746
    .local v8, s:Ljava/lang/String;
    const-string v11, "_data"

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {v0, v11, v8, v1, p1}, Lcom/motorola/android/media/MediaUtil;->getTagIdForName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentProvider;)J

    move-result-wide v6

    .line 791
    .end local v8           #s:Ljava/lang/String;
    :goto_0
    const-wide/16 v11, 0x0

    cmp-long v11, v6, v11

    if-lez v11, :cond_1

    .line 792
    move-object/from16 v0, p4

    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 795
    :cond_1
    return-object v5

    .line 752
    :sswitch_1
    new-instance v10, Landroid/content/ContentValues;

    move-object/from16 v0, p5

    invoke-direct {v10, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 757
    .local v10, values:Landroid/content/ContentValues;
    const-string v11, "_data"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 758
    .local v9, so:Ljava/lang/Object;
    if-eqz v9, :cond_2

    .line 760
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 761
    .restart local v8       #s:Ljava/lang/String;
    const-string v11, "_data"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 763
    const-string v11, "_data"

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {v0, v11, v8, v1, p1}, Lcom/motorola/android/media/MediaUtil;->getTagIdForName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentProvider;)J

    move-result-wide v2

    .line 765
    .local v2, keywordsRowId:J
    const-string v11, "keyword_id"

    long-to-int v12, v2

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    .end local v2           #keywordsRowId:J
    .end local v8           #s:Ljava/lang/String;
    :cond_2
    const-string v11, "association"

    const-string v12, "dummy"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v12, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    .line 770
    goto :goto_0

    .line 774
    .end local v9           #so:Ljava/lang/Object;
    .end local v10           #values:Landroid/content/ContentValues;
    :sswitch_2
    const/4 v11, 0x0

    const-string v12, ".spm"

    const-string v13, "DCIM/.speeddata"

    move-object/from16 v0, p5

    invoke-virtual {p1, v11, v0, v12, v13}, Lcom/android/providers/media/MediaProvider;->ensureFileExt(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v10

    .line 775
    .restart local v10       #values:Landroid/content/ContentValues;
    const-string v11, "speed_data"

    const-string v12, "name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v12, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    .line 776
    goto :goto_0

    .line 783
    .end local v10           #values:Landroid/content/ContentValues;
    :sswitch_3
    const-string v11, "multishots"

    const-string v12, "_id"

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-virtual {v0, v11, v12, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    .line 784
    goto :goto_0

    .line 743
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_2
        0xa -> :sswitch_3
        0x898 -> :sswitch_0
        0x89a -> :sswitch_1
    .end sparse-switch
.end method

.method public isExtensionUri(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 374
    if-eqz p1, :cond_0

    .line 375
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, authority:Ljava/lang/String;
    sget-object v1, Lcom/motorola/android/provider/MediaStoreExt;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 378
    .end local v0           #authority:Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 0
    .parameter "db"
    .parameter "internal"

    .prologue
    .line 370
    invoke-virtual {p0, p1, p2}, Lcom/motorola/providers/mediaext/MediaExtProvider;->openDbForExtensions(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 371
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 367
    return-void
.end method

.method public openDbForExtensions(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 5
    .parameter "db"
    .parameter "internal"

    .prologue
    .line 83
    const-string v2, "MediaExtProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call openDbForExtensions internal="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-static {p1}, Lcom/motorola/providers/mediaext/MediaExtProvider;->getVersion(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v1

    .line 86
    .local v1, version:I
    sget v2, Lcom/motorola/providers/mediaext/MediaExtProvider;->MEDIA_EXT_DATABASE_VERSION:I

    if-eq v1, v2, :cond_0

    .line 88
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 90
    :try_start_0
    sget v2, Lcom/motorola/providers/mediaext/MediaExtProvider;->MEDIA_EXT_DATABASE_VERSION:I

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/motorola/providers/mediaext/MediaExtProvider;->updateDatabase(Landroid/database/sqlite/SQLiteDatabase;ZII)V

    .line 93
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 94
    .local v0, cv:Landroid/content/ContentValues;
    const-string v2, "version"

    sget v3, Lcom/motorola/providers/mediaext/MediaExtProvider;->MEDIA_EXT_DATABASE_VERSION:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 95
    const-string v2, "mediaext_db_vserion"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 96
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 101
    .end local v0           #cv:Landroid/content/ContentValues;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/providers/mediaext/MediaExtProvider;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 102
    return-void

    .line 98
    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method public openFile(Lcom/android/providers/media/MediaProvider;Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 17
    .parameter "mp"
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
    .line 890
    const-string v4, "MediaExtProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "openFile()::uri ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    sget-object v4, Lcom/motorola/providers/mediaext/MediaExtProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_3

    .line 892
    invoke-virtual/range {p4 .. p4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 893
    .local v16, volume:Ljava/lang/String;
    const-string v4, "internal"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 894
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "Internal volume not supported"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 897
    :cond_0
    const/4 v15, 0x0

    .line 898
    .local v15, pNonGeoImageFd:Landroid/os/ParcelFileDescriptor;
    invoke-static/range {p4 .. p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v12

    .line 899
    .local v12, imageId:J
    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 900
    .local v3, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v4, "images"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 901
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 903
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

    move-object/from16 v4, p3

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 908
    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 909
    const/4 v4, 0x0

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 910
    .local v14, imagePath:Ljava/lang/String;
    if-eqz v14, :cond_1

    .line 911
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-static {v0, v1, v14, v2}, Lcom/motorola/providers/mediaext/GeoTagHandler;->getNonGeoFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v15

    .line 913
    .end local v14           #imagePath:Ljava/lang/String;
    :cond_1
    if-eqz v11, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 914
    :cond_2
    return-object v15

    .line 917
    .end local v3           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v11           #c:Landroid/database/Cursor;
    .end local v12           #imageId:J
    .end local v15           #pNonGeoImageFd:Landroid/os/ParcelFileDescriptor;
    .end local v16           #volume:Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/io/FileNotFoundException;

    invoke-direct {v4}, Ljava/io/FileNotFoundException;-><init>()V

    throw v4
.end method

.method public query(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 21
    .parameter "context"
    .parameter "db"
    .parameter "uri"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 385
    sget-object v4, Lcom/motorola/providers/mediaext/MediaExtProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v17

    .line 386
    .local v17, table:I
    const/4 v8, 0x0

    .line 387
    .local v8, groupBy:Ljava/lang/String;
    const-string v4, "MediaExtProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "query "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " selection="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const-string v4, "group_by"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 389
    const-string v4, "group_by"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 394
    :cond_0
    :goto_0
    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 396
    .local v3, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v4, "distinct"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 397
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 399
    :cond_1
    const-string v4, "limit"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 401
    .local v11, limit:Ljava/lang/String;
    const-string v4, "MediaExtProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "query()::uri ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " table="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    sparse-switch v17, :sswitch_data_0

    .line 522
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 390
    .end local v3           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v11           #limit:Ljava/lang/String;
    :cond_2
    const-string v4, "groupby"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 391
    const-string v4, "groupby"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 407
    .restart local v3       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v11       #limit:Ljava/lang/String;
    :sswitch_0
    const-string v4, "speed_data"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 528
    :cond_3
    :goto_1
    const-string v19, "MediaExtProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/4 v9, 0x0

    move-object v4, v3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const/4 v9, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 532
    .local v12, c:Landroid/database/Cursor;
    if-eqz v12, :cond_4

    .line 533
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-interface {v12, v4, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 536
    .end local v12           #c:Landroid/database/Cursor;
    :cond_4
    :goto_2
    return-object v12

    .line 411
    :sswitch_1
    const-string v4, "speed_data"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 412
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x3

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 416
    :sswitch_2
    const-string v4, "keywords"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_1

    .line 420
    :sswitch_3
    const-string v4, "keywords"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 421
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 425
    :sswitch_4
    const-string v4, "association"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 429
    :sswitch_5
    const-string v4, "association"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 430
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 434
    :sswitch_6
    const-string v4, "taginfo_video"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 437
    :sswitch_7
    const-string v4, "taginfo_video"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 438
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 441
    :sswitch_8
    const-string v4, "taginfo_image"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 444
    :sswitch_9
    const-string v4, "taginfo_image"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 445
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 448
    :sswitch_a
    const-string v4, "visual_info"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 451
    :sswitch_b
    const-string v4, "visual_info"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 452
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 455
    :sswitch_c
    const-string v4, "taginfo_visual"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 458
    :sswitch_d
    const-string v4, "taginfo_visual"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 459
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 466
    :sswitch_e
    const/4 v14, 0x0

    .line 467
    .local v14, needToGetSizeUpdatedCursor:Z
    const/4 v13, 0x0

    .line 468
    .local v13, index:I
    const/4 v15, 0x0

    .line 469
    .local v15, projection:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 470
    .local v18, volume:Ljava/lang/String;
    const-string v4, "internal"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 471
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "Internal volume not supported"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 473
    :cond_5
    const-string v4, "images"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 475
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p3 .. p3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 476
    if-eqz p4, :cond_9

    .line 477
    const/4 v13, 0x0

    :goto_3
    move-object/from16 v0, p4

    array-length v4, v0

    if-ge v13, v4, :cond_7

    .line 478
    aget-object v4, p4, v13

    const-string v5, "_size"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    aget-object v4, p4, v13

    const-string v5, "_data"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 480
    :cond_6
    const/4 v14, 0x1

    .line 488
    :cond_7
    :goto_4
    if-eqz v14, :cond_3

    .line 490
    const/4 v9, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 491
    .restart local v12       #c:Landroid/database/Cursor;
    if-eqz v12, :cond_3

    .line 492
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-interface {v12, v4, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 493
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-eqz v4, :cond_4

    .line 495
    invoke-interface {v12}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v15

    .line 496
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2, v12, v15}, Lcom/motorola/providers/mediaext/GeoTagHandler;->getSizeUpdatedCursor(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/database/Cursor;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 497
    .local v16, sizeUpdatedCursor:Landroid/database/Cursor;
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    move-object/from16 v12, v16

    .line 498
    goto/16 :goto_2

    .line 477
    .end local v12           #c:Landroid/database/Cursor;
    .end local v16           #sizeUpdatedCursor:Landroid/database/Cursor;
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 486
    :cond_9
    const/4 v14, 0x1

    goto :goto_4

    .line 507
    .end local v13           #index:I
    .end local v14           #needToGetSizeUpdatedCursor:Z
    .end local v15           #projection:[Ljava/lang/String;
    .end local v18           #volume:Ljava/lang/String;
    :sswitch_f
    const-string v4, "multishots"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 510
    :sswitch_10
    const-string v4, "multishots"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 511
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x3

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 514
    :sswitch_11
    const-string v4, "multishots_info"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 517
    :sswitch_12
    const-string v4, "multishots_info"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 518
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x3

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 403
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x8 -> :sswitch_1
        0x9 -> :sswitch_e
        0xa -> :sswitch_f
        0xb -> :sswitch_10
        0xc -> :sswitch_11
        0xd -> :sswitch_12
        0x898 -> :sswitch_2
        0x899 -> :sswitch_3
        0x89a -> :sswitch_4
        0x89b -> :sswitch_5
        0x89c -> :sswitch_6
        0x89d -> :sswitch_7
        0x89e -> :sswitch_8
        0x89f -> :sswitch_9
        0x8a0 -> :sswitch_a
        0x8a1 -> :sswitch_b
        0x8a2 -> :sswitch_c
        0x8a3 -> :sswitch_d
    .end sparse-switch
.end method

.method restoreColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .parameter "db"
    .parameter "oldTable"
    .parameter "columnsFlatterned"
    .parameter "type"

    .prologue
    .line 322
    const-string v4, "update files set "

    .line 323
    .local v4, sqlCmd:Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {p3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, columns:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, v1

    if-ge v3, v5, :cond_1

    .line 325
    aget-object v0, v1, v3

    .line 326
    .local v0, column:Ljava/lang/String;
    if-lez v3, :cond_0

    .line 327
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 328
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=(select "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " where files.old_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "._id) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 324
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 330
    .end local v0           #column:Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " where files.media_type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 332
    :try_start_0
    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :goto_1
    return-void

    .line 333
    :catch_0
    move-exception v2

    .line 334
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "MediaExtProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception thrown while upgrade moto columns in files table "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public update(Lcom/android/providers/media/MediaProvider;Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "mp"
    .parameter "context"
    .parameter "db"
    .parameter "uri"
    .parameter "initialValues"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    .line 803
    const/4 v0, -0x1

    .line 804
    .local v0, count:I
    const/4 v2, 0x0

    .line 806
    .local v2, where:Ljava/lang/String;
    sget-object v3, Lcom/motorola/providers/mediaext/MediaExtProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, p4}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 808
    .local v1, match:I
    const-string v3, "MediaExtProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " userWhere="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    sparse-switch v1, :sswitch_data_0

    .line 854
    :goto_0
    if-gez v0, :cond_4

    .line 855
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 812
    :sswitch_0
    const-string v3, "speed_data"

    invoke-virtual {p3, v3, p5, p6, p7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 813
    goto :goto_0

    .line 816
    :sswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p6, :cond_0

    const-string v3, ""

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 818
    const-string v3, "speed_data"

    invoke-virtual {p3, v3, p5, v2, p7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 819
    goto :goto_0

    .line 816
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 823
    :sswitch_2
    const-string v3, "keywords"

    invoke-virtual {p3, v3, p5, p6, p7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 824
    goto :goto_0

    .line 827
    :sswitch_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p6, :cond_1

    const-string v3, ""

    :goto_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 829
    const-string v3, "keywords"

    invoke-virtual {p3, v3, p5, v2, p7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 830
    goto/16 :goto_0

    .line 827
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 833
    :sswitch_4
    const-string v3, "association"

    invoke-virtual {p3, v3, p5, p6, p7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 834
    goto/16 :goto_0

    .line 837
    :sswitch_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p6, :cond_2

    const-string v3, ""

    :goto_3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 839
    const-string v3, "association"

    invoke-virtual {p3, v3, p5, v2, p7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 840
    goto/16 :goto_0

    .line 837
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 844
    :sswitch_6
    const-string v3, "multishots"

    invoke-virtual {p3, v3, p5, p6, p7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 845
    goto/16 :goto_0

    .line 848
    :sswitch_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p6, :cond_3

    const-string v3, ""

    :goto_4
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 850
    const-string v3, "multishots"

    invoke-virtual {p3, v3, p5, v2, p7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 848
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 859
    :cond_4
    return v0

    .line 809
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x8 -> :sswitch_1
        0xa -> :sswitch_6
        0xb -> :sswitch_7
        0x898 -> :sswitch_2
        0x899 -> :sswitch_3
        0x89a -> :sswitch_4
        0x89b -> :sswitch_5
    .end sparse-switch
.end method
