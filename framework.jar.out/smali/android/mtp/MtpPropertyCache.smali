.class Landroid/mtp/MtpPropertyCache;
.super Ljava/lang/Object;
.source "MtpPropertyCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpPropertyCache$fileTableCache;
    }
.end annotation


# static fields
.field private static final ALL_PROPERTY_PROJECTION:[Ljava/lang/String; = null

.field private static final AUDIO_ARTIST_ALBUM_PROJECTION:[Ljava/lang/String; = null

.field private static final AUDIO_GENRE_PROJECTION:[Ljava/lang/String; = null

.field private static final GENRE_MAP_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "MtpPropertyCache"

.field public static final UPDATE_REASON_ADDITION:I = 0x4

.field public static final UPDATE_REASON_FORCE_REBUILD:I = 0x40

.field public static final UPDATE_REASON_MULTI_DELETION:I = 0x2

.field public static final UPDATE_REASON_NONE:I = 0x0

.field public static final UPDATE_REASON_RENAME:I = 0x8

.field public static final UPDATE_REASON_SINGLE_DELETION:I = 0x1

.field public static final UPDATE_REASON_STORE_ADDED:I = 0x20

.field public static final UPDATE_REASON_STORE_REMOVED:I = 0x10


# instance fields
.field private mAudioCursor:Landroid/database/Cursor;

.field private mAudioGenreCursor:Landroid/database/Cursor;

.field private final mAudioGenreMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mAudioMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDatabase:Landroid/mtp/MtpDatabase;

.field private mFileCursor:Landroid/database/Cursor;

.field private final mFileMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/mtp/MtpPropertyCache$fileTableCache;",
            ">;"
        }
    .end annotation
.end field

.field private mGenreMapCursor:Landroid/database/Cursor;

.field private final mGenreMapMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsUpdate:Z

.field private final mLock:Ljava/lang/Object;

.field private mNumOfAddedFiles:I

.field private mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

.field private final mProvider:Landroid/content/IContentProvider;

.field private mUpdateReason:I

.field private final mUri:Landroid/net/Uri;

.field private final mVolumeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 72
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "format"

    aput-object v1, v0, v4

    const-string v1, "_size"

    aput-object v1, v0, v5

    const-string v1, "_data"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "year"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "parent"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "track"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "album_artist"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "composer"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "description"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "name"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "storage_id"

    aput-object v2, v0, v1

    sput-object v0, Landroid/mtp/MtpPropertyCache;->ALL_PROPERTY_PROJECTION:[Ljava/lang/String;

    .line 91
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "artist"

    aput-object v1, v0, v4

    const-string v1, "album"

    aput-object v1, v0, v5

    sput-object v0, Landroid/mtp/MtpPropertyCache;->AUDIO_ARTIST_ALBUM_PROJECTION:[Ljava/lang/String;

    .line 96
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    sput-object v0, Landroid/mtp/MtpPropertyCache;->AUDIO_GENRE_PROJECTION:[Ljava/lang/String;

    .line 100
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "audio_id"

    aput-object v1, v0, v3

    const-string v1, "genre_id"

    aput-object v1, v0, v4

    sput-object v0, Landroid/mtp/MtpPropertyCache;->GENRE_MAP_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/mtp/MtpDatabase;Landroid/content/IContentProvider;Ljava/lang/String;)V
    .locals 3
    .parameter "database"
    .parameter "provider"
    .parameter "volume"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 154
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/mtp/MtpPropertyCache;->mLock:Ljava/lang/Object;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/mtp/MtpPropertyCache;->mFileMap:Ljava/util/HashMap;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/mtp/MtpPropertyCache;->mAudioMap:Ljava/util/HashMap;

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/mtp/MtpPropertyCache;->mAudioGenreMap:Ljava/util/HashMap;

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/mtp/MtpPropertyCache;->mGenreMapMap:Ljava/util/HashMap;

    .line 124
    iput-object v1, p0, Landroid/mtp/MtpPropertyCache;->mFileCursor:Landroid/database/Cursor;

    .line 125
    iput-object v1, p0, Landroid/mtp/MtpPropertyCache;->mAudioCursor:Landroid/database/Cursor;

    .line 126
    iput-object v1, p0, Landroid/mtp/MtpPropertyCache;->mAudioGenreCursor:Landroid/database/Cursor;

    .line 127
    iput-object v1, p0, Landroid/mtp/MtpPropertyCache;->mGenreMapCursor:Landroid/database/Cursor;

    .line 129
    iput-boolean v2, p0, Landroid/mtp/MtpPropertyCache;->mIsUpdate:Z

    .line 140
    iput v2, p0, Landroid/mtp/MtpPropertyCache;->mUpdateReason:I

    .line 141
    iput v2, p0, Landroid/mtp/MtpPropertyCache;->mNumOfAddedFiles:I

    .line 155
    iput-object p1, p0, Landroid/mtp/MtpPropertyCache;->mDatabase:Landroid/mtp/MtpDatabase;

    .line 156
    iput-object p2, p0, Landroid/mtp/MtpPropertyCache;->mProvider:Landroid/content/IContentProvider;

    .line 157
    iput-object p3, p0, Landroid/mtp/MtpPropertyCache;->mVolumeName:Ljava/lang/String;

    .line 158
    invoke-static {p3}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/mtp/MtpPropertyCache;->mUri:Landroid/net/Uri;

    .line 159
    iput-object v1, p0, Landroid/mtp/MtpPropertyCache;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    .line 160
    return-void
.end method

.method private buildAudioCacheLocked(Z)V
    .locals 10
    .parameter "update"

    .prologue
    .line 812
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 814
    .local v8, start:J
    iget-object v0, p0, Landroid/mtp/MtpPropertyCache;->mAudioCursor:Landroid/database/Cursor;

    if-nez v0, :cond_2

    .line 816
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyCache;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyCache;->mVolumeName:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Landroid/mtp/MtpPropertyCache;->AUDIO_ARTIST_ALBUM_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 820
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 821
    const-string v0, "MtpPropertyCache"

    const-string v1, "Cursor is null in buildAudioCache"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    .end local v6           #c:Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-void

    .line 824
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_1
    iput-object v6, p0, Landroid/mtp/MtpPropertyCache;->mAudioCursor:Landroid/database/Cursor;

    .line 825
    invoke-direct {p0}, Landroid/mtp/MtpPropertyCache;->fillAudioCacheLocked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 826
    .end local v6           #c:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 827
    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "MtpPropertyCache"

    const-string v1, "RemoteException in buildAudioCache"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 829
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_2
    if-eqz p1, :cond_0

    .line 830
    iget-object v0, p0, Landroid/mtp/MtpPropertyCache;->mAudioCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 831
    invoke-direct {p0}, Landroid/mtp/MtpPropertyCache;->fillAudioCacheLocked()V

    goto :goto_0
.end method

.method private buildAudioGenreCacheLocked(Z)V
    .locals 8
    .parameter "update"

    .prologue
    .line 838
    iget-object v0, p0, Landroid/mtp/MtpPropertyCache;->mAudioGenreCursor:Landroid/database/Cursor;

    if-nez v0, :cond_2

    .line 840
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyCache;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyCache;->mVolumeName:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/MediaStore$Audio$Genres;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Landroid/mtp/MtpPropertyCache;->AUDIO_GENRE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 844
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 858
    .end local v6           #c:Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-void

    .line 847
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_1
    iput-object v6, p0, Landroid/mtp/MtpPropertyCache;->mAudioGenreCursor:Landroid/database/Cursor;

    .line 848
    invoke-direct {p0}, Landroid/mtp/MtpPropertyCache;->fillAudioGenreCacheLocked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 849
    .end local v6           #c:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 850
    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "MtpPropertyCache"

    const-string v1, "RemoteException in buildAudioGenreCache"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 853
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_2
    if-eqz p1, :cond_0

    .line 854
    iget-object v0, p0, Landroid/mtp/MtpPropertyCache;->mAudioGenreCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 855
    invoke-direct {p0}, Landroid/mtp/MtpPropertyCache;->fillAudioGenreCacheLocked()V

    goto :goto_0
.end method

.method private buildFileCacheLocked(Z)V
    .locals 8
    .parameter "update"

    .prologue
    .line 788
    iget-object v0, p0, Landroid/mtp/MtpPropertyCache;->mFileCursor:Landroid/database/Cursor;

    if-nez v0, :cond_2

    .line 789
    const/4 v6, 0x0

    .line 791
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyCache;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyCache;->mUri:Landroid/net/Uri;

    sget-object v2, Landroid/mtp/MtpPropertyCache;->ALL_PROPERTY_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 795
    if-nez v6, :cond_1

    .line 796
    const-string v0, "MtpPropertyCache"

    const-string v1, "Cursor is null in buildFileCache"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    .end local v6           #c:Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-void

    .line 799
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_1
    iput-object v6, p0, Landroid/mtp/MtpPropertyCache;->mFileCursor:Landroid/database/Cursor;

    .line 800
    invoke-direct {p0}, Landroid/mtp/MtpPropertyCache;->fillFileCacheLocked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 801
    :catch_0
    move-exception v7

    .line 802
    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "MtpPropertyCache"

    const-string v1, "RemoteException in buildFileCache"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 805
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_2
    if-eqz p1, :cond_0

    .line 806
    iget-object v0, p0, Landroid/mtp/MtpPropertyCache;->mFileCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 807
    invoke-direct {p0}, Landroid/mtp/MtpPropertyCache;->fillFileCacheLocked()V

    goto :goto_0
.end method

.method private buildGenreMapCacheLocked(Z)V
    .locals 8
    .parameter "update"

    .prologue
    .line 862
    iget-object v0, p0, Landroid/mtp/MtpPropertyCache;->mGenreMapCursor:Landroid/database/Cursor;

    if-nez v0, :cond_2

    .line 864
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyCache;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyCache;->mVolumeName:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/MediaStore$Audio$GenresMap;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Landroid/mtp/MtpPropertyCache;->GENRE_MAP_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 868
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 869
    const-string v0, "MtpPropertyCache"

    const-string v1, "Cursor is null in buildGenreMapCahe"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    .end local v6           #c:Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-void

    .line 872
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_1
    iput-object v6, p0, Landroid/mtp/MtpPropertyCache;->mGenreMapCursor:Landroid/database/Cursor;

    .line 873
    invoke-direct {p0}, Landroid/mtp/MtpPropertyCache;->fillGenreMapCacheLocked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 874
    .end local v6           #c:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 875
    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "MtpPropertyCache"

    const-string v1, "RemoteException in buildGenreMapCahe"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 878
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_2
    if-eqz p1, :cond_0

    .line 879
    iget-object v0, p0, Landroid/mtp/MtpPropertyCache;->mGenreMapCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 880
    invoke-direct {p0}, Landroid/mtp/MtpPropertyCache;->fillGenreMapCacheLocked()V

    goto :goto_0
.end method

.method private buildLocked()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 664
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 666
    .local v2, start:J
    :try_start_0
    invoke-direct {p0}, Landroid/mtp/MtpPropertyCache;->needRebuildLocked()Z

    move-result v1

    .line 667
    .local v1, needUpdate:Z
    invoke-direct {p0, v1}, Landroid/mtp/MtpPropertyCache;->buildFileCacheLocked(Z)V

    .line 668
    invoke-direct {p0, v1}, Landroid/mtp/MtpPropertyCache;->buildAudioCacheLocked(Z)V

    .line 669
    invoke-direct {p0, v1}, Landroid/mtp/MtpPropertyCache;->buildAudioGenreCacheLocked(Z)V

    .line 670
    invoke-direct {p0, v1}, Landroid/mtp/MtpPropertyCache;->buildGenreMapCacheLocked(Z)V

    .line 671
    if-eqz v1, :cond_0

    .line 672
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/mtp/MtpPropertyCache;->mIsUpdate:Z

    .line 673
    const/4 v4, 0x0

    iput v4, p0, Landroid/mtp/MtpPropertyCache;->mNumOfAddedFiles:I

    .line 674
    const/4 v4, 0x0

    iput v4, p0, Landroid/mtp/MtpPropertyCache;->mUpdateReason:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    .end local v1           #needUpdate:Z
    :cond_0
    :goto_0
    const-string v4, "buildPropertiesCache"

    invoke-direct {p0, v4, v7, v2, v3}, Landroid/mtp/MtpPropertyCache;->printTime(Ljava/lang/String;IJ)V

    .line 683
    return-void

    .line 676
    :catch_0
    move-exception v0

    .line 677
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "MtpPropertyCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception in build():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    invoke-direct {p0}, Landroid/mtp/MtpPropertyCache;->destroyLocked()V

    goto :goto_0
.end method

.method private destroyLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 618
    iget-object v0, p0, Landroid/mtp/MtpPropertyCache;->mFileCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 620
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyCache;->mFileCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 623
    :goto_0
    iput-object v1, p0, Landroid/mtp/MtpPropertyCache;->mFileCursor:Landroid/database/Cursor;

    .line 625
    :cond_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyCache;->mAudioCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 627
    :try_start_1
    iget-object v0, p0, Landroid/mtp/MtpPropertyCache;->mAudioCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 630
    :goto_1
    iput-object v1, p0, Landroid/mtp/MtpPropertyCache;->mAudioCursor:Landroid/database/Cursor;

    .line 632
    :cond_1
    iget-object v0, p0, Landroid/mtp/MtpPropertyCache;->mAudioGenreCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 634
    :try_start_2
    iget-object v0, p0, Landroid/mtp/MtpPropertyCache;->mAudioGenreCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 637
    :goto_2
    iput-object v1, p0, Landroid/mtp/MtpPropertyCache;->mAudioGenreCursor:Landroid/database/Cursor;

    .line 639
    :cond_2
    iget-object v0, p0, Landroid/mtp/MtpPropertyCache;->mGenreMapCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 641
    :try_start_3
    iget-object v0, p0, Landroid/mtp/MtpPropertyCache;->mGenreMapCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 644
    :goto_3
    iput-object v1, p0, Landroid/mtp/MtpPropertyCache;->mGenreMapCursor:Landroid/database/Cursor;

    .line 646
    :cond_3
    iput-boolean v2, p0, Landroid/mtp/MtpPropertyCache;->mIsUpdate:Z

    .line 647
    iput v2, p0, Landroid/mtp/MtpPropertyCache;->mNumOfAddedFiles:I

    .line 648
    iput v2, p0, Landroid/mtp/MtpPropertyCache;->mUpdateReason:I

    .line 649
    iget-object v0, p0, Landroid/mtp/MtpPropertyCache;->mFileMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 650
    iget-object v0, p0, Landroid/mtp/MtpPropertyCache;->mAudioMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 651
    iget-object v0, p0, Landroid/mtp/MtpPropertyCache;->mAudioGenreMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 652
    iget-object v0, p0, Landroid/mtp/MtpPropertyCache;->mGenreMapMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 653
    return-void

    .line 642
    :catch_0
    move-exception v0

    goto :goto_3

    .line 635
    :catch_1
    move-exception v0

    goto :goto_2

    .line 628
    :catch_2
    move-exception v0

    goto :goto_1

    .line 621
    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method private fillAudioCacheLocked()V
    .locals 6

    .prologue
    .line 911
    iget-object v3, p0, Landroid/mtp/MtpPropertyCache;->mAudioMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 912
    iget-object v0, p0, Landroid/mtp/MtpPropertyCache;->mAudioCursor:Landroid/database/Cursor;

    .line 913
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 914
    .local v1, count:I
    if-lez v1, :cond_0

    .line 915
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 916
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 917
    iget-object v3, p0, Landroid/mtp/MtpPropertyCache;->mAudioMap:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 916
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 921
    .end local v2           #i:I
    :cond_0
    return-void
.end method

.method private fillAudioGenreCacheLocked()V
    .locals 6

    .prologue
    .line 898
    iget-object v3, p0, Landroid/mtp/MtpPropertyCache;->mAudioGenreMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 899
    iget-object v0, p0, Landroid/mtp/MtpPropertyCache;->mAudioGenreCursor:Landroid/database/Cursor;

    .line 900
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 901
    .local v1, count:I
    if-lez v1, :cond_0

    .line 902
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 903
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 904
    iget-object v3, p0, Landroid/mtp/MtpPropertyCache;->mAudioGenreMap:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 903
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 908
    .end local v2           #i:I
    :cond_0
    return-void
.end method

.method private fillFileCacheLocked()V
    .locals 12

    .prologue
    .line 924
    iget-object v1, p0, Landroid/mtp/MtpPropertyCache;->mFileMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 925
    iget-object v7, p0, Landroid/mtp/MtpPropertyCache;->mFileCursor:Landroid/database/Cursor;

    .line 926
    .local v7, c:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 927
    .local v8, count:I
    if-lez v8, :cond_0

    .line 928
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 929
    const-string v1, "format"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 930
    .local v9, formatIdx:I
    const-string v1, "_size"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 931
    .local v11, sizeIdx:I
    const-string v1, "parent"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 932
    .local v10, parentIdx:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v8, :cond_0

    .line 933
    new-instance v0, Landroid/mtp/MtpPropertyCache$fileTableCache;

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/mtp/MtpPropertyCache$fileTableCache;-><init>(Landroid/mtp/MtpPropertyCache;IJII)V

    .line 935
    .local v0, ftc:Landroid/mtp/MtpPropertyCache$fileTableCache;
    iget-object v1, p0, Landroid/mtp/MtpPropertyCache;->mFileMap:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 932
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 939
    .end local v0           #ftc:Landroid/mtp/MtpPropertyCache$fileTableCache;
    .end local v6           #i:I
    .end local v9           #formatIdx:I
    .end local v10           #parentIdx:I
    .end local v11           #sizeIdx:I
    :cond_0
    return-void
.end method

.method private fillGenreMapCacheLocked()V
    .locals 7

    .prologue
    .line 885
    iget-object v3, p0, Landroid/mtp/MtpPropertyCache;->mGenreMapMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 886
    iget-object v0, p0, Landroid/mtp/MtpPropertyCache;->mGenreMapCursor:Landroid/database/Cursor;

    .line 887
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 888
    .local v1, count:I
    if-lez v1, :cond_0

    .line 889
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 890
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 891
    iget-object v3, p0, Landroid/mtp/MtpPropertyCache;->mGenreMapMap:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 890
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 895
    .end local v2           #i:I
    :cond_0
    return-void
.end method

.method private formatDateTime(J)Ljava/lang/String;
    .locals 2
    .parameter "seconds"

    .prologue
    .line 941
    new-instance v0, Landroid/mtp/MtpPropertyGroup;

    invoke-direct {v0}, Landroid/mtp/MtpPropertyGroup;-><init>()V

    .line 942
    .local v0, pg:Landroid/mtp/MtpPropertyGroup;
    invoke-virtual {v0, p1, p2}, Landroid/mtp/MtpPropertyGroup;->format_date_time(J)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getCursorPositionLocked(III)[I
    .locals 11
    .parameter "handle"
    .parameter "format"
    .parameter "depth"

    .prologue
    .line 163
    const/4 v1, 0x0

    .line 164
    .local v1, curArr:[I
    const/4 v2, 0x0

    .line 165
    .local v2, curArr1:[I
    const/4 v0, 0x0

    .line 166
    .local v0, count:I
    iget-object v7, p0, Landroid/mtp/MtpPropertyCache;->mFileMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v6

    .line 167
    .local v6, size:I
    if-nez v6, :cond_0

    .line 168
    const/4 v7, 0x0

    .line 279
    :goto_0
    return-object v7

    .line 171
    :cond_0
    if-nez p2, :cond_9

    .line 172
    int-to-long v7, p1

    const-wide v9, 0xffffffffL

    cmp-long v7, v7, v9

    if-nez v7, :cond_3

    .line 174
    new-array v1, v6, [I

    .line 175
    invoke-direct {p0}, Landroid/mtp/MtpPropertyCache;->getValuesFromCacheLocked()[Landroid/mtp/MtpPropertyCache$fileTableCache;

    move-result-object v5

    .line 176
    .local v5, propCacheArry:[Landroid/mtp/MtpPropertyCache$fileTableCache;
    if-nez v5, :cond_1

    .line 177
    const/4 v7, 0x0

    goto :goto_0

    .line 179
    :cond_1
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v7, v5

    if-ge v4, v7, :cond_8

    .line 180
    aget-object v7, v5, v4

    if-nez v7, :cond_2

    .line 181
    const-string v7, "MtpPropertyCache"

    const-string v8, "propCacheArry contains null pointer: format = 0, handle = 0xffffffff"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/4 v7, 0x0

    goto :goto_0

    .line 184
    :cond_2
    aget-object v7, v5, v4

    iget v7, v7, Landroid/mtp/MtpPropertyCache$fileTableCache;->mPosition:I

    aput v7, v1, v0

    .line 185
    add-int/lit8 v0, v0, 0x1

    .line 179
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 189
    .end local v4           #i:I
    .end local v5           #propCacheArry:[Landroid/mtp/MtpPropertyCache$fileTableCache;
    :cond_3
    const/4 v7, 0x1

    if-ne p3, v7, :cond_7

    .line 191
    new-array v1, v6, [I

    .line 192
    invoke-direct {p0}, Landroid/mtp/MtpPropertyCache;->getValuesFromCacheLocked()[Landroid/mtp/MtpPropertyCache$fileTableCache;

    move-result-object v5

    .line 193
    .restart local v5       #propCacheArry:[Landroid/mtp/MtpPropertyCache$fileTableCache;
    if-nez v5, :cond_4

    .line 194
    const/4 v7, 0x0

    goto :goto_0

    .line 196
    :cond_4
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_2
    array-length v7, v5

    if-ge v4, v7, :cond_8

    .line 197
    aget-object v7, v5, v4

    if-nez v7, :cond_5

    .line 198
    const-string v7, "MtpPropertyCache"

    const-string v8, "propCacheArry contains null pointer: format = 0, depth =1, handle != 0xffffffff"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v7, 0x0

    goto :goto_0

    .line 202
    :cond_5
    aget-object v7, v5, v4

    iget v7, v7, Landroid/mtp/MtpPropertyCache$fileTableCache;->mParent:I

    if-ne v7, p1, :cond_6

    .line 203
    aget-object v7, v5, v4

    iget v7, v7, Landroid/mtp/MtpPropertyCache$fileTableCache;->mPosition:I

    aput v7, v1, v0

    .line 204
    add-int/lit8 v0, v0, 0x1

    .line 196
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 209
    .end local v4           #i:I
    .end local v5           #propCacheArry:[Landroid/mtp/MtpPropertyCache$fileTableCache;
    :cond_7
    const/4 v7, 0x1

    new-array v1, v7, [I

    .line 210
    iget-object v7, p0, Landroid/mtp/MtpPropertyCache;->mFileMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/mtp/MtpPropertyCache$fileTableCache;

    .line 211
    .local v3, ftc:Landroid/mtp/MtpPropertyCache$fileTableCache;
    if-eqz v3, :cond_8

    iget-object v7, p0, Landroid/mtp/MtpPropertyCache;->mFileCursor:Landroid/database/Cursor;

    iget v8, v3, Landroid/mtp/MtpPropertyCache$fileTableCache;->mPosition:I

    invoke-interface {v7, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 212
    iget v7, v3, Landroid/mtp/MtpPropertyCache$fileTableCache;->mPosition:I

    aput v7, v1, v0

    .line 213
    const/4 v0, 0x1

    .line 273
    .end local v3           #ftc:Landroid/mtp/MtpPropertyCache$fileTableCache;
    :cond_8
    :goto_3
    if-lez v0, :cond_12

    .line 274
    new-array v2, v0, [I

    .line 275
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_4
    if-ge v4, v0, :cond_12

    .line 276
    aget v7, v1, v4

    aput v7, v2, v4

    .line 275
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 218
    .end local v4           #i:I
    :cond_9
    int-to-long v7, p1

    const-wide v9, 0xffffffffL

    cmp-long v7, v7, v9

    if-nez v7, :cond_d

    .line 220
    new-array v1, v6, [I

    .line 221
    invoke-direct {p0}, Landroid/mtp/MtpPropertyCache;->getValuesFromCacheLocked()[Landroid/mtp/MtpPropertyCache$fileTableCache;

    move-result-object v5

    .line 222
    .restart local v5       #propCacheArry:[Landroid/mtp/MtpPropertyCache$fileTableCache;
    if-nez v5, :cond_a

    .line 223
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 226
    :cond_a
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_5
    array-length v7, v5

    if-ge v4, v7, :cond_8

    .line 227
    aget-object v7, v5, v4

    if-nez v7, :cond_b

    .line 228
    const-string v7, "MtpPropertyCache"

    const-string v8, "propCacheArry contains null pointer: format!=0, depth!=1, handle=0xffffffff"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 231
    :cond_b
    iget-object v7, p0, Landroid/mtp/MtpPropertyCache;->mFileCursor:Landroid/database/Cursor;

    aget-object v8, v5, v4

    iget v8, v8, Landroid/mtp/MtpPropertyCache$fileTableCache;->mPosition:I

    invoke-interface {v7, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 232
    aget-object v7, v5, v4

    iget v7, v7, Landroid/mtp/MtpPropertyCache$fileTableCache;->mFormat:I

    if-ne v7, p2, :cond_c

    .line 233
    aget-object v7, v5, v4

    iget v7, v7, Landroid/mtp/MtpPropertyCache$fileTableCache;->mPosition:I

    aput v7, v1, v0

    .line 234
    add-int/lit8 v0, v0, 0x1

    .line 226
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 240
    .end local v4           #i:I
    .end local v5           #propCacheArry:[Landroid/mtp/MtpPropertyCache$fileTableCache;
    :cond_d
    const/4 v7, 0x1

    if-ne p3, v7, :cond_11

    .line 242
    new-array v1, v6, [I

    .line 243
    invoke-direct {p0}, Landroid/mtp/MtpPropertyCache;->getValuesFromCacheLocked()[Landroid/mtp/MtpPropertyCache$fileTableCache;

    move-result-object v5

    .line 244
    .restart local v5       #propCacheArry:[Landroid/mtp/MtpPropertyCache$fileTableCache;
    if-nez v5, :cond_e

    .line 245
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 247
    :cond_e
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_6
    array-length v7, v5

    if-ge v4, v7, :cond_8

    .line 248
    aget-object v7, v5, v4

    if-nez v7, :cond_f

    .line 249
    const-string v7, "MtpPropertyCache"

    const-string v8, "propCacheArry contains null pointer: format!=0, depth=1, handle!=0xffffffff"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 252
    :cond_f
    aget-object v7, v5, v4

    iget v7, v7, Landroid/mtp/MtpPropertyCache$fileTableCache;->mParent:I

    if-ne v7, p1, :cond_10

    aget-object v7, v5, v4

    iget v7, v7, Landroid/mtp/MtpPropertyCache$fileTableCache;->mFormat:I

    if-ne v7, p2, :cond_10

    .line 253
    iget-object v7, p0, Landroid/mtp/MtpPropertyCache;->mFileCursor:Landroid/database/Cursor;

    aget-object v8, v5, v4

    iget v8, v8, Landroid/mtp/MtpPropertyCache$fileTableCache;->mPosition:I

    invoke-interface {v7, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 254
    aget-object v7, v5, v4

    iget v7, v7, Landroid/mtp/MtpPropertyCache$fileTableCache;->mPosition:I

    aput v7, v1, v0

    .line 255
    add-int/lit8 v0, v0, 0x1

    .line 247
    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 262
    .end local v4           #i:I
    .end local v5           #propCacheArry:[Landroid/mtp/MtpPropertyCache$fileTableCache;
    :cond_11
    const/4 v7, 0x1

    new-array v1, v7, [I

    .line 263
    iget-object v7, p0, Landroid/mtp/MtpPropertyCache;->mFileMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/mtp/MtpPropertyCache$fileTableCache;

    .line 264
    .restart local v3       #ftc:Landroid/mtp/MtpPropertyCache$fileTableCache;
    if-eqz v3, :cond_8

    iget v7, v3, Landroid/mtp/MtpPropertyCache$fileTableCache;->mFormat:I

    if-ne v7, p2, :cond_8

    iget-object v7, p0, Landroid/mtp/MtpPropertyCache;->mFileCursor:Landroid/database/Cursor;

    iget v8, v3, Landroid/mtp/MtpPropertyCache$fileTableCache;->mPosition:I

    invoke-interface {v7, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 266
    iget v7, v3, Landroid/mtp/MtpPropertyCache$fileTableCache;->mPosition:I

    aput v7, v1, v0

    .line 267
    const/4 v0, 0x1

    goto/16 :goto_3

    .end local v3           #ftc:Landroid/mtp/MtpPropertyCache$fileTableCache;
    :cond_12
    move-object v7, v2

    .line 279
    goto/16 :goto_0
.end method

.method private getPropertyListLocked(III)Landroid/mtp/MtpPropertyList;
    .locals 28
    .parameter "handle"
    .parameter "format"
    .parameter "depth"

    .prologue
    .line 394
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyCache;->getPropertyLocked(II)Landroid/mtp/MtpPropertyList;

    move-result-object v3

    .line 395
    .local v3, result:Landroid/mtp/MtpPropertyList;
    if-eqz v3, :cond_0

    move-object v4, v3

    .line 543
    :goto_0
    return-object v4

    .line 398
    :cond_0
    invoke-direct/range {p0 .. p3}, Landroid/mtp/MtpPropertyCache;->getCursorPositionLocked(III)[I

    move-result-object v19

    .line 399
    .local v19, curArr:[I
    if-nez v19, :cond_1

    .line 400
    const/4 v4, 0x0

    goto :goto_0

    .line 402
    :cond_1
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v18, v0

    .line 404
    .local v18, count:I
    new-instance v3, Landroid/mtp/MtpPropertyList;

    .end local v3           #result:Landroid/mtp/MtpPropertyList;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpPropertyCache;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    array-length v4, v4

    mul-int v4, v4, v18

    const/16 v6, 0x2001

    invoke-direct {v3, v4, v6}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    .line 405
    .restart local v3       #result:Landroid/mtp/MtpPropertyList;
    const/16 v22, 0x0

    .local v22, i:I
    :goto_1
    move/from16 v0, v22

    move/from16 v1, v18

    if-ge v0, v1, :cond_9

    .line 406
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpPropertyCache;->mFileCursor:Landroid/database/Cursor;

    aget v6, v19, v22

    invoke-interface {v4, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/mtp/MtpPropertyCache;->mFileCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    .line 408
    .local v17, c:Landroid/database/Cursor;
    const/16 v23, 0x0

    .local v23, j:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpPropertyCache;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    array-length v4, v4

    move/from16 v0, v23

    if-ge v0, v4, :cond_8

    .line 409
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpPropertyCache;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    aget-object v25, v4, v23

    .line 410
    .local v25, prop:Landroid/mtp/MtpPropertyGroup$Property;
    move-object/from16 v0, v25

    iget v5, v0, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    .line 412
    .local v5, propertyCode:I
    if-eqz v17, :cond_2

    .line 413
    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    long-to-int v0, v9

    move/from16 p1, v0

    .line 414
    sparse-switch v5, :sswitch_data_0

    .line 537
    const-string v4, "MtpPropertyCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unsupported properties: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_2
    :goto_3
    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    .line 418
    :sswitch_0
    const/4 v6, 0x6

    const-wide/16 v7, 0x0

    move/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto :goto_3

    .line 421
    :sswitch_1
    const-string v4, ""

    move/from16 v0, p1

    invoke-virtual {v3, v0, v5, v4}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto :goto_3

    .line 425
    :sswitch_2
    const/4 v6, 0x6

    const-string/jumbo v4, "storage_id"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v7, v4

    move/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto :goto_3

    .line 430
    :sswitch_3
    const/4 v6, 0x4

    const-wide/16 v7, 0x0

    move/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto :goto_3

    .line 434
    :sswitch_4
    const-string v4, "_data"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 435
    .local v26, value:Ljava/lang/String;
    if-eqz v26, :cond_3

    .line 436
    invoke-static/range {v26 .. v26}, Landroid/mtp/MtpPropertyGroup;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v3, v0, v5, v4}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto :goto_3

    .line 438
    :cond_3
    const/16 v4, 0x2009

    invoke-virtual {v3, v4}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto :goto_3

    .line 443
    .end local v26           #value:Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v4, "title"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 445
    .local v24, name:Ljava/lang/String;
    if-nez v24, :cond_4

    .line 446
    const-string v4, "name"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 449
    :cond_4
    if-nez v24, :cond_5

    .line 450
    const-string v4, "_data"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 451
    if-eqz v24, :cond_5

    .line 452
    invoke-static/range {v24 .. v24}, Landroid/mtp/MtpPropertyGroup;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 455
    :cond_5
    if-eqz v24, :cond_6

    .line 456
    move/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v3, v0, v5, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_3

    .line 458
    :cond_6
    const/16 v4, 0x2009

    invoke-virtual {v3, v4}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto/16 :goto_3

    .line 462
    .end local v24           #name:Ljava/lang/String;
    :sswitch_6
    const-string v4, "date_modified"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v9, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Landroid/mtp/MtpPropertyCache;->formatDateTime(J)Ljava/lang/String;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v3, v0, v5, v4}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_3

    .line 467
    :sswitch_7
    const-string v4, "date_added"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v9, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Landroid/mtp/MtpPropertyCache;->formatDateTime(J)Ljava/lang/String;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v3, v0, v5, v4}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_3

    .line 472
    :sswitch_8
    const-string/jumbo v4, "year"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 473
    .local v27, year:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "0101T000000"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 474
    .local v20, dateTime:Ljava/lang/String;
    move/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v3, v0, v5, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_3

    .line 478
    .end local v20           #dateTime:Ljava/lang/String;
    .end local v27           #year:I
    :sswitch_9
    const-string/jumbo v4, "storage_id"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 479
    .local v7, puid:J
    const/16 v4, 0x20

    shl-long/2addr v7, v4

    .line 480
    move/from16 v0, p1

    int-to-long v9, v0

    add-long/2addr v7, v9

    .line 481
    const/16 v6, 0xa

    move/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_3

    .line 484
    .end local v7           #puid:J
    :sswitch_a
    const/4 v12, 0x4

    const-string/jumbo v4, "track"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    rem-int/lit16 v4, v4, 0x3e8

    int-to-long v13, v4

    move-object v9, v3

    move/from16 v10, p1

    move v11, v5

    invoke-virtual/range {v9 .. v14}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_3

    .line 488
    :sswitch_b
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v4}, Landroid/mtp/MtpPropertyCache;->queryAudioLocked(II)Ljava/lang/String;

    move-result-object v16

    .line 489
    .local v16, artist:Ljava/lang/String;
    move/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v3, v0, v5, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_3

    .line 492
    .end local v16           #artist:Ljava/lang/String;
    :sswitch_c
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v4}, Landroid/mtp/MtpPropertyCache;->queryAudioLocked(II)Ljava/lang/String;

    move-result-object v15

    .line 493
    .local v15, album:Ljava/lang/String;
    move/from16 v0, p1

    invoke-virtual {v3, v0, v5, v15}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_3

    .line 496
    .end local v15           #album:Ljava/lang/String;
    :sswitch_d
    invoke-direct/range {p0 .. p1}, Landroid/mtp/MtpPropertyCache;->queryGenreLocked(I)Ljava/lang/String;

    move-result-object v21

    .line 497
    .local v21, genre:Ljava/lang/String;
    if-eqz v21, :cond_7

    .line 498
    move/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v5, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_3

    .line 500
    :cond_7
    const/16 v4, 0x2009

    invoke-virtual {v3, v4}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto/16 :goto_3

    .line 504
    .end local v21           #genre:Ljava/lang/String;
    :sswitch_e
    const/4 v12, 0x4

    const-string v4, "format"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v13, v4

    move-object v9, v3

    move/from16 v10, p1

    move v11, v5

    invoke-virtual/range {v9 .. v14}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_3

    .line 508
    :sswitch_f
    const/16 v12, 0x8

    const-string v4, "_size"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    move-object v9, v3

    move/from16 v10, p1

    move v11, v5

    invoke-virtual/range {v9 .. v14}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_3

    .line 512
    :sswitch_10
    const/4 v12, 0x6

    const-string v4, "parent"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v13, v4

    move-object v9, v3

    move/from16 v10, p1

    move v11, v5

    invoke-virtual/range {v9 .. v14}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_3

    .line 516
    :sswitch_11
    const/4 v12, 0x6

    const-string v4, "duration"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v13, v4

    move-object v9, v3

    move/from16 v10, p1

    move v11, v5

    invoke-virtual/range {v9 .. v14}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_3

    .line 520
    :sswitch_12
    const v12, 0xffff

    const-string v4, "_display_name"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v13, v4

    move-object v9, v3

    move/from16 v10, p1

    move v11, v5

    invoke-virtual/range {v9 .. v14}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_3

    .line 524
    :sswitch_13
    const v12, 0xffff

    const-string v4, "description"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v13, v4

    move-object v9, v3

    move/from16 v10, p1

    move v11, v5

    invoke-virtual/range {v9 .. v14}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_3

    .line 528
    :sswitch_14
    const v12, 0xffff

    const-string v4, "composer"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v13, v4

    move-object v9, v3

    move/from16 v10, p1

    move v11, v5

    invoke-virtual/range {v9 .. v14}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_3

    .line 532
    :sswitch_15
    const v12, 0xffff

    const-string v4, "album_artist"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v13, v4

    move-object v9, v3

    move/from16 v10, p1

    move v11, v5

    invoke-virtual/range {v9 .. v14}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_3

    .line 405
    .end local v5           #propertyCode:I
    .end local v25           #prop:Landroid/mtp/MtpPropertyGroup$Property;
    :cond_8
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_1

    .end local v17           #c:Landroid/database/Cursor;
    .end local v23           #j:I
    :cond_9
    move-object v4, v3

    .line 543
    goto/16 :goto_0

    .line 414
    nop

    :sswitch_data_0
    .sparse-switch
        0xdc01 -> :sswitch_2
        0xdc02 -> :sswitch_e
        0xdc03 -> :sswitch_3
        0xdc04 -> :sswitch_f
        0xdc07 -> :sswitch_4
        0xdc09 -> :sswitch_6
        0xdc0b -> :sswitch_10
        0xdc41 -> :sswitch_9
        0xdc44 -> :sswitch_5
        0xdc46 -> :sswitch_b
        0xdc48 -> :sswitch_13
        0xdc4e -> :sswitch_7
        0xdc89 -> :sswitch_11
        0xdc8b -> :sswitch_a
        0xdc8c -> :sswitch_d
        0xdc96 -> :sswitch_14
        0xdc99 -> :sswitch_8
        0xdc9a -> :sswitch_c
        0xdc9b -> :sswitch_15
        0xdce0 -> :sswitch_12
        0xde9b -> :sswitch_0
        0xdea1 -> :sswitch_1
    .end sparse-switch
.end method

.method private getPropertyLocked(II)Landroid/mtp/MtpPropertyList;
    .locals 10
    .parameter "handle"
    .parameter "depth"

    .prologue
    const/4 v0, 0x0

    const/16 v9, 0x2001

    const/4 v8, 0x1

    .line 740
    iget-object v1, p0, Landroid/mtp/MtpPropertyCache;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    array-length v1, v1

    if-le v1, v8, :cond_1

    .line 764
    :cond_0
    :goto_0
    return-object v0

    .line 743
    :cond_1
    iget-object v1, p0, Landroid/mtp/MtpPropertyCache;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    iget v2, v1, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    .line 744
    .local v2, property:I
    iget-object v1, p0, Landroid/mtp/MtpPropertyCache;->mFileMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 746
    iget-object v1, p0, Landroid/mtp/MtpPropertyCache;->mFileMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/mtp/MtpPropertyCache$fileTableCache;

    .line 747
    .local v7, ftc:Landroid/mtp/MtpPropertyCache$fileTableCache;
    if-eqz v7, :cond_0

    .line 748
    iget v6, v7, Landroid/mtp/MtpPropertyCache$fileTableCache;->mFormat:I

    .line 749
    .local v6, format:I
    iget-wide v4, v7, Landroid/mtp/MtpPropertyCache$fileTableCache;->mSize:J

    .line 750
    .local v4, size:J
    if-eqz v6, :cond_0

    .line 751
    const v1, 0xdc02

    if-ne v2, v1, :cond_2

    if-nez p2, :cond_2

    .line 752
    new-instance v0, Landroid/mtp/MtpPropertyList;

    invoke-direct {v0, v8, v9}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    .line 753
    .local v0, result:Landroid/mtp/MtpPropertyList;
    const/4 v3, 0x4

    int-to-long v4, v6

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto :goto_0

    .line 756
    .end local v0           #result:Landroid/mtp/MtpPropertyList;
    :cond_2
    const v1, 0xdc04

    if-ne v2, v1, :cond_0

    if-nez p2, :cond_0

    .line 757
    new-instance v0, Landroid/mtp/MtpPropertyList;

    invoke-direct {v0, v8, v9}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    .line 758
    .restart local v0       #result:Landroid/mtp/MtpPropertyList;
    const/16 v3, 0x8

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto :goto_0
.end method

.method private getValuesFromCacheLocked()[Landroid/mtp/MtpPropertyCache$fileTableCache;
    .locals 5

    .prologue
    .line 725
    iget-object v4, p0, Landroid/mtp/MtpPropertyCache;->mFileMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 726
    .local v0, cl:Ljava/util/Collection;
    const/4 v3, 0x0

    .line 727
    .local v3, propCacheArry:[Landroid/mtp/MtpPropertyCache$fileTableCache;
    if-eqz v0, :cond_0

    .line 728
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v4

    new-array v3, v4, [Landroid/mtp/MtpPropertyCache$fileTableCache;

    .line 729
    const/4 v1, 0x0

    .line 730
    .local v1, count:I
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 731
    .local v2, itr:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 732
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/mtp/MtpPropertyCache$fileTableCache;

    check-cast v4, Landroid/mtp/MtpPropertyCache$fileTableCache;

    aput-object v4, v3, v1

    .line 733
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 736
    .end local v1           #count:I
    .end local v2           #itr:Ljava/util/Iterator;
    :cond_0
    return-object v3
.end method

.method private isForMultipleObjects(JI)Z
    .locals 2
    .parameter "handle"
    .parameter "depth"

    .prologue
    .line 282
    if-gtz p3, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 283
    :cond_0
    const/4 v0, 0x1

    .line 286
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needRebuildLocked()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 769
    iget-boolean v2, p0, Landroid/mtp/MtpPropertyCache;->mIsUpdate:Z

    if-eqz v2, :cond_1

    .line 770
    const/16 v0, 0x5a

    .line 774
    .local v0, filter:I
    iget v2, p0, Landroid/mtp/MtpPropertyCache;->mUpdateReason:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_1

    .line 783
    .end local v0           #filter:I
    :cond_0
    :goto_0
    return v1

    .line 779
    :cond_1
    iget-object v2, p0, Landroid/mtp/MtpPropertyCache;->mFileCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/mtp/MtpPropertyCache;->mAudioCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/mtp/MtpPropertyCache;->mAudioGenreCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/mtp/MtpPropertyCache;->mGenreMapCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    .line 783
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private printTime(Ljava/lang/String;IJ)V
    .locals 2
    .parameter "logger"
    .parameter "handle"
    .parameter "start"

    .prologue
    .line 686
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 688
    .local v0, end:J
    return-void
.end method

.method private queryAudioLocked(II)Ljava/lang/String;
    .locals 3
    .parameter "id"
    .parameter "column"

    .prologue
    .line 692
    iget-object v1, p0, Landroid/mtp/MtpPropertyCache;->mAudioMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 693
    iget-object v1, p0, Landroid/mtp/MtpPropertyCache;->mAudioMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 694
    .local v0, obj:Ljava/lang/Object;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/mtp/MtpPropertyCache;->mAudioCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 695
    iget-object v1, p0, Landroid/mtp/MtpPropertyCache;->mAudioCursor:Landroid/database/Cursor;

    check-cast v0, Ljava/lang/Number;

    .end local v0           #obj:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 696
    iget-object v1, p0, Landroid/mtp/MtpPropertyCache;->mAudioCursor:Landroid/database/Cursor;

    invoke-interface {v1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 700
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private queryGenreLocked(I)Ljava/lang/String;
    .locals 8
    .parameter "id"

    .prologue
    .line 704
    const/4 v0, 0x0

    .line 705
    .local v0, c:Landroid/database/Cursor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 706
    .local v1, end:J
    const-string v5, ""

    .line 710
    .local v5, str:Ljava/lang/String;
    iget-object v6, p0, Landroid/mtp/MtpPropertyCache;->mGenreMapMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 711
    .local v4, obj:Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 712
    check-cast v4, Ljava/lang/Integer;

    .end local v4           #obj:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 713
    .local v3, genre_id:I
    iget-object v6, p0, Landroid/mtp/MtpPropertyCache;->mAudioGenreMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 714
    .restart local v4       #obj:Ljava/lang/Object;
    if-eqz v4, :cond_0

    iget-object v6, p0, Landroid/mtp/MtpPropertyCache;->mAudioGenreCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_0

    .line 715
    iget-object v7, p0, Landroid/mtp/MtpPropertyCache;->mAudioGenreCursor:Landroid/database/Cursor;

    move-object v6, v4

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-interface {v7, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 716
    iget-object v6, p0, Landroid/mtp/MtpPropertyCache;->mAudioGenreCursor:Landroid/database/Cursor;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 720
    .end local v3           #genre_id:I
    :cond_0
    return-object v5
.end method

.method private rebuildLocked(II)Z
    .locals 6
    .parameter "handle"
    .parameter "depth"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 290
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 302
    .local v0, start:J
    iget v4, p0, Landroid/mtp/MtpPropertyCache;->mNumOfAddedFiles:I

    if-lez v4, :cond_0

    int-to-long v4, p1

    invoke-direct {p0, v4, v5, p2}, Landroid/mtp/MtpPropertyCache;->isForMultipleObjects(JI)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 303
    invoke-direct {p0, v2}, Landroid/mtp/MtpPropertyCache;->buildFileCacheLocked(Z)V

    .line 304
    invoke-direct {p0, v2}, Landroid/mtp/MtpPropertyCache;->buildAudioCacheLocked(Z)V

    .line 305
    invoke-direct {p0, v2}, Landroid/mtp/MtpPropertyCache;->buildAudioGenreCacheLocked(Z)V

    .line 306
    invoke-direct {p0, v2}, Landroid/mtp/MtpPropertyCache;->buildGenreMapCacheLocked(Z)V

    .line 307
    iput-boolean v3, p0, Landroid/mtp/MtpPropertyCache;->mIsUpdate:Z

    .line 308
    iput v3, p0, Landroid/mtp/MtpPropertyCache;->mNumOfAddedFiles:I

    .line 309
    iput v3, p0, Landroid/mtp/MtpPropertyCache;->mUpdateReason:I

    .line 310
    const-string v4, "rebuildCache"

    invoke-direct {p0, v4, v3, v0, v1}, Landroid/mtp/MtpPropertyCache;->printTime(Ljava/lang/String;IJ)V

    .line 313
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 658
    iget-object v1, p0, Landroid/mtp/MtpPropertyCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 659
    :try_start_0
    invoke-direct {p0}, Landroid/mtp/MtpPropertyCache;->destroyLocked()V

    .line 660
    monitor-exit v1

    .line 661
    return-void

    .line 660
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public get(III)Landroid/mtp/MtpPropertyList;
    .locals 4
    .parameter "handle"
    .parameter "format"
    .parameter "depth"

    .prologue
    .line 348
    :try_start_0
    iget-object v2, p0, Landroid/mtp/MtpPropertyCache;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :try_start_1
    invoke-direct {p0, p1, p3}, Landroid/mtp/MtpPropertyCache;->rebuildLocked(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 352
    invoke-direct {p0}, Landroid/mtp/MtpPropertyCache;->buildLocked()V

    .line 354
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MtpPropertyCache;->getPropertyListLocked(III)Landroid/mtp/MtpPropertyList;

    move-result-object v1

    monitor-exit v2

    .line 358
    :goto_0
    return-object v1

    .line 355
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MtpPropertyCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MtpPropertyCache.get exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFormatForHandle(I)I
    .locals 7
    .parameter "handle"

    .prologue
    const/4 v3, 0x0

    .line 602
    const/4 v1, 0x0

    .line 604
    .local v1, format:I
    :try_start_0
    iget-object v5, p0, Landroid/mtp/MtpPropertyCache;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    :try_start_1
    invoke-direct {p0}, Landroid/mtp/MtpPropertyCache;->buildLocked()V

    .line 606
    iget-object v4, p0, Landroid/mtp/MtpPropertyCache;->mFileMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/mtp/MtpPropertyCache$fileTableCache;

    .line 607
    .local v2, ftc:Landroid/mtp/MtpPropertyCache$fileTableCache;
    if-eqz v2, :cond_0

    iget v1, v2, Landroid/mtp/MtpPropertyCache$fileTableCache;->mFormat:I

    .line 608
    :goto_0
    monitor-exit v5

    move v3, v1

    .line 613
    .end local v2           #ftc:Landroid/mtp/MtpPropertyCache$fileTableCache;
    :goto_1
    return v3

    .restart local v2       #ftc:Landroid/mtp/MtpPropertyCache$fileTableCache;
    :cond_0
    move v1, v3

    .line 607
    goto :goto_0

    .line 608
    .end local v2           #ftc:Landroid/mtp/MtpPropertyCache$fileTableCache;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 609
    :catch_0
    move-exception v0

    .line 610
    .local v0, e:Ljava/lang/Exception;
    goto :goto_1
.end method

.method public getObjectInfo(I[I[C[J)Z
    .locals 11
    .parameter "handle"
    .parameter "outStorageFormatParent"
    .parameter "outName"
    .parameter "outSizeModified"

    .prologue
    .line 364
    :try_start_0
    iget-object v8, p0, Landroid/mtp/MtpPropertyCache;->mLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :try_start_1
    invoke-direct {p0}, Landroid/mtp/MtpPropertyCache;->buildLocked()V

    .line 366
    iget-object v7, p0, Landroid/mtp/MtpPropertyCache;->mFileMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/mtp/MtpPropertyCache$fileTableCache;

    .line 367
    .local v3, ftc:Landroid/mtp/MtpPropertyCache$fileTableCache;
    if-eqz v3, :cond_2

    iget-object v7, p0, Landroid/mtp/MtpPropertyCache;->mFileCursor:Landroid/database/Cursor;

    iget v9, v3, Landroid/mtp/MtpPropertyCache$fileTableCache;->mPosition:I

    invoke-interface {v7, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 368
    iget-object v0, p0, Landroid/mtp/MtpPropertyCache;->mFileCursor:Landroid/database/Cursor;

    .line 369
    .local v0, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    const-string/jumbo v9, "storage_id"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    aput v9, p2, v7

    .line 370
    const/4 v7, 0x1

    iget v9, v3, Landroid/mtp/MtpPropertyCache$fileTableCache;->mFormat:I

    aput v9, p2, v7

    .line 371
    const/4 v7, 0x2

    iget v9, v3, Landroid/mtp/MtpPropertyCache$fileTableCache;->mParent:I

    aput v9, p2, v7

    .line 373
    const-string v7, "_data"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 374
    .local v5, path:Ljava/lang/String;
    const/16 v7, 0x2f

    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 375
    .local v4, lastSlash:I
    if-ltz v4, :cond_1

    add-int/lit8 v6, v4, 0x1

    .line 376
    .local v6, start:I
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    .line 377
    .local v2, end:I
    sub-int v7, v2, v6

    const/16 v9, 0xff

    if-le v7, v9, :cond_0

    .line 378
    add-int/lit16 v2, v6, 0xff

    .line 380
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v5, v6, v2, p3, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 381
    sub-int v7, v2, v6

    const/4 v9, 0x0

    aput-char v9, p3, v7

    .line 383
    const/4 v7, 0x0

    const-string v9, "_size"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    aput-wide v9, p4, v7

    .line 384
    const/4 v7, 0x1

    const-string v9, "date_modified"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    aput-wide v9, p4, v7

    .line 385
    const/4 v7, 0x1

    monitor-exit v8

    .line 391
    .end local v0           #c:Landroid/database/Cursor;
    .end local v2           #end:I
    .end local v3           #ftc:Landroid/mtp/MtpPropertyCache$fileTableCache;
    .end local v4           #lastSlash:I
    .end local v5           #path:Ljava/lang/String;
    .end local v6           #start:I
    :goto_1
    return v7

    .line 375
    .restart local v0       #c:Landroid/database/Cursor;
    .restart local v3       #ftc:Landroid/mtp/MtpPropertyCache$fileTableCache;
    .restart local v4       #lastSlash:I
    .restart local v5       #path:Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 387
    .end local v0           #c:Landroid/database/Cursor;
    .end local v4           #lastSlash:I
    .end local v5           #path:Ljava/lang/String;
    :cond_2
    monitor-exit v8

    .line 391
    .end local v3           #ftc:Landroid/mtp/MtpPropertyCache$fileTableCache;
    :goto_2
    const/4 v7, 0x0

    goto :goto_1

    .line 387
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 388
    :catch_0
    move-exception v1

    .line 389
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "MtpPropertyCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exception in getObjectInfo:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public getUpdateFlag()Z
    .locals 2

    .prologue
    .line 595
    iget-object v1, p0, Landroid/mtp/MtpPropertyCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 596
    :try_start_0
    iget-boolean v0, p0, Landroid/mtp/MtpPropertyCache;->mIsUpdate:Z

    monitor-exit v1

    return v0

    .line 597
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isPlaylist(I)Z
    .locals 7
    .parameter "handle"

    .prologue
    const/4 v4, 0x1

    .line 322
    :try_start_0
    iget-object v5, p0, Landroid/mtp/MtpPropertyCache;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :try_start_1
    invoke-direct {p0}, Landroid/mtp/MtpPropertyCache;->buildLocked()V

    .line 324
    iget-object v3, p0, Landroid/mtp/MtpPropertyCache;->mFileMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/mtp/MtpPropertyCache$fileTableCache;

    .line 325
    .local v2, ftc:Landroid/mtp/MtpPropertyCache$fileTableCache;
    if-eqz v2, :cond_2

    .line 326
    iget v1, v2, Landroid/mtp/MtpPropertyCache$fileTableCache;->mFormat:I

    .line 327
    .local v1, format:I
    const v3, 0xba05

    if-eq v1, v3, :cond_0

    const v3, 0xba10

    if-eq v1, v3, :cond_0

    const v3, 0xba11

    if-eq v1, v3, :cond_0

    const v3, 0xba14

    if-ne v1, v3, :cond_1

    .line 331
    :cond_0
    monitor-exit v5

    move v3, v4

    .line 343
    .end local v1           #format:I
    .end local v2           #ftc:Landroid/mtp/MtpPropertyCache$fileTableCache;
    :goto_0
    return v3

    .line 335
    .restart local v1       #format:I
    .restart local v2       #ftc:Landroid/mtp/MtpPropertyCache$fileTableCache;
    :cond_1
    const/4 v3, 0x0

    monitor-exit v5

    goto :goto_0

    .line 338
    .end local v1           #format:I
    .end local v2           #ftc:Landroid/mtp/MtpPropertyCache$fileTableCache;
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 339
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move v3, v4

    .line 340
    goto :goto_0

    .line 338
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #ftc:Landroid/mtp/MtpPropertyCache$fileTableCache;
    :cond_2
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v3, v4

    .line 343
    goto :goto_0
.end method

.method public setProperties([Landroid/mtp/MtpPropertyGroup$Property;)V
    .locals 0
    .parameter "props"

    .prologue
    .line 316
    iput-object p1, p0, Landroid/mtp/MtpPropertyCache;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    .line 317
    return-void
.end method

.method public setUpdateFlag(Z)V
    .locals 2
    .parameter "update"

    .prologue
    .line 589
    iget-object v1, p0, Landroid/mtp/MtpPropertyCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 590
    :try_start_0
    iput-boolean p1, p0, Landroid/mtp/MtpPropertyCache;->mIsUpdate:Z

    .line 591
    monitor-exit v1

    .line 592
    return-void

    .line 591
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public update(II)V
    .locals 4
    .parameter "reason"
    .parameter "handle"

    .prologue
    const/4 v1, 0x1

    .line 560
    :try_start_0
    iget-object v2, p0, Landroid/mtp/MtpPropertyCache;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    if-ne p1, v1, :cond_1

    .line 562
    :try_start_1
    iget-object v1, p0, Landroid/mtp/MtpPropertyCache;->mFileMap:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    iget-object v1, p0, Landroid/mtp/MtpPropertyCache;->mAudioMap:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    iget-object v1, p0, Landroid/mtp/MtpPropertyCache;->mGenreMapMap:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    :cond_0
    :goto_0
    monitor-exit v2

    .line 584
    :goto_1
    return-void

    .line 566
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/mtp/MtpPropertyCache;->mIsUpdate:Z

    .line 567
    iget v1, p0, Landroid/mtp/MtpPropertyCache;->mUpdateReason:I

    or-int/2addr v1, p1

    iput v1, p0, Landroid/mtp/MtpPropertyCache;->mUpdateReason:I

    .line 568
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 570
    iget v1, p0, Landroid/mtp/MtpPropertyCache;->mNumOfAddedFiles:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/mtp/MtpPropertyCache;->mNumOfAddedFiles:I

    goto :goto_0

    .line 580
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 581
    :catch_0
    move-exception v0

    .line 582
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MtpPropertyCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception in update():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
