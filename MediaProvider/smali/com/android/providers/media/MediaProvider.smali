.class public Lcom/android/providers/media/MediaProvider;
.super Landroid/content/ContentProvider;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/media/MediaProvider$ThumbData;,
        Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;,
        Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final ALBUMART_URI:Landroid/net/Uri; = null

.field private static final ALBUM_THUMB:I = 0x1

.field static final ALBUM_THUMB_FOLDER:Ljava/lang/String; = "Android/data/com.android.providers.media/albumthumbs"

.field private static final AUDIO_ALBUMART:I = 0x77

.field private static final AUDIO_ALBUMART_FILE_ID:I = 0x79

.field private static final AUDIO_ALBUMART_ID:I = 0x78

.field private static final AUDIO_ALBUMS:I = 0x74

.field private static final AUDIO_ALBUMS_ID:I = 0x75

.field private static final AUDIO_ARTISTS:I = 0x72

.field private static final AUDIO_ARTISTS_ID:I = 0x73

.field private static final AUDIO_ARTISTS_ID_ALBUMS:I = 0x76

.field private static final AUDIO_COLUMNSv100:Ljava/lang/String; = "_data,_display_name,_size,mime_type,date_added,date_modified,title,title_key,duration,artist_id,composer,album_id,track,year,is_ringtone,is_music,is_alarm,is_notification,is_podcast,bookmark,album_artist"

.field private static final AUDIO_COLUMNSv405:Ljava/lang/String; = "_data,_display_name,_size,mime_type,date_added,is_drm,date_modified,title,title_key,duration,artist_id,composer,album_id,track,year,is_ringtone,is_music,is_alarm,is_notification,is_podcast,bookmark,album_artist"

.field private static final AUDIO_COLUMNSv99:Ljava/lang/String; = "_data,_display_name,_size,mime_type,date_added,date_modified,title,title_key,duration,artist_id,composer,album_id,track,year,is_ringtone,is_music,is_alarm,is_notification,is_podcast,bookmark"

.field private static final AUDIO_GENRES:I = 0x6a

.field private static final AUDIO_GENRES_ALL_MEMBERS:I = 0x6d

.field private static final AUDIO_GENRES_ID:I = 0x6b

.field private static final AUDIO_GENRES_ID_MEMBERS:I = 0x6c

.field private static final AUDIO_GENRES_MAP:I = 0x7a

.field private static final AUDIO_MEDIA:I = 0x64

.field private static final AUDIO_MEDIA_ID:I = 0x65

.field private static final AUDIO_MEDIA_ID_GENRES:I = 0x66

.field private static final AUDIO_MEDIA_ID_GENRES_ID:I = 0x67

.field private static final AUDIO_MEDIA_ID_PLAYLISTS:I = 0x68

.field private static final AUDIO_MEDIA_ID_PLAYLISTS_ID:I = 0x69

.field private static final AUDIO_PLAYLISTS:I = 0x6e

.field private static final AUDIO_PLAYLISTS_ID:I = 0x6f

.field private static final AUDIO_PLAYLISTS_ID_MEMBERS:I = 0x70

.field private static final AUDIO_PLAYLISTS_ID_MEMBERS_ID:I = 0x71

.field private static final AUDIO_SEARCH_BASIC:I = 0x191

.field private static final AUDIO_SEARCH_FANCY:I = 0x192

.field private static final AUDIO_SEARCH_LEGACY:I = 0x190

.field static final DATABASE_VERSION:I = 0x18839

.field private static final EXTERNAL_DATABASE_NAME:Ljava/lang/String; = "external.db"

.field static final EXTERNAL_VOLUME:Ljava/lang/String; = "external"

.field private static final FILES:I = 0x2bc

.field private static final FILES_ID:I = 0x2bd

.field private static final FS_ID:I = 0x258

.field private static final GENRE_LOOKUP_PROJECTION:[Ljava/lang/String; = null

.field private static final ID_PROJECTION:[Ljava/lang/String; = null

.field private static final IMAGES_MEDIA:I = 0x1

.field private static final IMAGES_MEDIA_ID:I = 0x2

.field private static final IMAGES_THUMBNAILS:I = 0x3

.field private static final IMAGES_THUMBNAILS_ID:I = 0x4

.field private static final IMAGE_COLUMNS:Ljava/lang/String; = "_data,_size,_display_name,mime_type,title,date_added,date_modified,description,picasa_id,isprivate,latitude,longitude,datetaken,orientation,mini_thumb_magic,bucket_id,bucket_display_name,width,height"

.field private static final IMAGE_COLUMNSv407:Ljava/lang/String; = "_data,_size,_display_name,mime_type,title,date_added,date_modified,description,picasa_id,isprivate,latitude,longitude,datetaken,orientation,mini_thumb_magic,bucket_id,bucket_display_name"

.field private static final IMAGE_THUMB:I = 0x2

.field private static final INTERNAL_DATABASE_NAME:Ljava/lang/String; = "internal.db"

.field static final INTERNAL_VOLUME:Ljava/lang/String; = "internal"

.field private static final LOCAL_LOGV:Z = true

.field private static final MAX_EXTERNAL_DATABASES:I = 0x3

.field private static final MEDIA_REMOVE_DIR:I = 0x7b

.field private static final MEDIA_SCANNER:I = 0x1f4

.field private static final MEDIA_URI:Landroid/net/Uri; = null

.field private static final MIME_TYPE_PROJECTION:[Ljava/lang/String; = null

.field private static final MOTO_DB_BASE_VERSION:I = 0x186a0

.field private static final MTP_CONNECTED:I = 0x2c1

.field private static final MTP_OBJECTS:I = 0x2be

.field private static final MTP_OBJECTS_ID:I = 0x2bf

.field private static final MTP_OBJECT_REFERENCES:I = 0x2c0

.field private static final OBJECT_REFERENCES_QUERY:Ljava/lang/String; = "SELECT audio_id FROM audio_playlists_map WHERE playlist_id=? ORDER BY play_order"

.field private static final OBSOLETE_DATABASE_DB:J = 0x134fd9000L

.field private static final PATH_PROJECTION:[Ljava/lang/String; = null

.field private static final PLAYLIST_COLUMNS:Ljava/lang/String; = "_data,name,date_added,date_modified"

.field private static final READY_FLAG_PROJECTION:[Ljava/lang/String; = null

.field private static TAG:Ljava/lang/String; = null

.field private static final URI_MATCHER:Landroid/content/UriMatcher; = null

.field private static final VERSION:I = 0x259

.field private static final VIDEO_COLUMNS:Ljava/lang/String; = "_data,_display_name,_size,mime_type,date_added,date_modified,title,duration,artist,album,resolution,description,isprivate,tags,category,language,mini_thumb_data,latitude,longitude,datetaken,mini_thumb_magic,bucket_id,bucket_display_name,bookmark,width,height"

.field private static final VIDEO_COLUMNSv407:Ljava/lang/String; = "_data,_display_name,_size,mime_type,date_added,date_modified,title,duration,artist,album,resolution,description,isprivate,tags,category,language,mini_thumb_data,latitude,longitude,datetaken,mini_thumb_magic,bucket_id,bucket_display_name, bookmark"

.field private static final VIDEO_MEDIA:I = 0xc8

.field private static final VIDEO_MEDIA_ID:I = 0xc9

.field private static final VIDEO_THUMBNAILS:I = 0xca

.field private static final VIDEO_THUMBNAILS_ID:I = 0xcb

.field private static final VOLUMES:I = 0x12c

.field private static final VOLUMES_ID:I = 0x12d

.field private static mExternalStoragePaths:[Ljava/lang/String;

.field private static final mMediaTableColumns:[Ljava/lang/String;

.field private static final openFileColumns:[Ljava/lang/String;

.field private static final sArtistAlbumsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sDefaultFolderNames:[Ljava/lang/String;

.field private static final sFolderArtMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

.field private static final sIdOnlyColumn:[Ljava/lang/String;


# instance fields
.field private final SEARCH_COLUMN_BASIC_TEXT2:I

.field private mAlbumArtBaseUri:Landroid/net/Uri;

.field private mCaseInsensitivePaths:Z

.field private mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;

.field private mDatabases:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/providers/media/MediaProvider$DatabaseHelper;",
            ">;"
        }
    .end annotation
.end field

.field mDirectoryCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDisableMtpObjectCallbacks:Z

.field private mMediaScannerVolume:Ljava/lang/String;

.field private mMediaThumbQueue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/android/providers/media/MediaThumbRequest;",
            ">;"
        }
    .end annotation
.end field

.field public mMountedActionReceived:Z

.field private mMtpService:Lcom/android/providers/media/IMtpService;

.field private final mMtpServiceConnection:Landroid/content/ServiceConnection;

.field private final mObjectRemovedCallback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

.field private mPendingThumbs:Ljava/util/HashSet;

.field private mSearchColsBasic:[Ljava/lang/String;

.field private mSearchColsFancy:[Ljava/lang/String;

.field private mSearchColsLegacy:[Ljava/lang/String;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field mStorageManager:Landroid/os/storage/StorageManager;

.field private mTempDatabasePath:Ljava/lang/String;

.field private mThumbHandler:Landroid/os/Handler;

.field private mThumbRequestStack:Ljava/util/Stack;

.field private mTotalAlbumartCreateTime:J

.field private mTotalAudioAlbumart:J

.field private mTotalImageThumb:J

.field private mTotalThumbCreateTime:J

.field private mTotalVideoThumb:J

.field private mUnmountReceiver:Landroid/content/BroadcastReceiver;

.field private mVolumeId:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 131
    const-string v0, "content://media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/MediaProvider;->MEDIA_URI:Landroid/net/Uri;

    .line 132
    const-string v0, "content://media/external/audio/albumart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/MediaProvider;->ALBUMART_URI:Landroid/net/Uri;

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/media/MediaProvider;->sFolderArtMap:Ljava/util/HashMap;

    .line 215
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "media_type"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/providers/media/MediaProvider;->mMediaTableColumns:[Ljava/lang/String;

    .line 220
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/media/MediaProvider;->sIdOnlyColumn:[Ljava/lang/String;

    .line 565
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    aput-object v1, v0, v4

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    aput-object v1, v0, v3

    sget-object v1, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    aput-object v1, v0, v5

    sget-object v1, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    aput-object v1, v0, v6

    sget-object v1, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/media/MediaProvider;->sDefaultFolderNames:[Ljava/lang/String;

    .line 3288
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "name"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/providers/media/MediaProvider;->GENRE_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 3681
    new-instance v0, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    invoke-direct {v0}, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;-><init>()V

    sput-object v0, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    .line 4301
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/media/MediaProvider;->openFileColumns:[Ljava/lang/String;

    .line 5214
    const-string v0, "MediaProvider"

    sput-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    .line 5310
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 5313
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/media/MediaProvider;->ID_PROJECTION:[Ljava/lang/String;

    .line 5317
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/providers/media/MediaProvider;->PATH_PROJECTION:[Ljava/lang/String;

    .line 5322
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "mime_type"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/providers/media/MediaProvider;->MIME_TYPE_PROJECTION:[Ljava/lang/String;

    .line 5327
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "mini_thumb_magic"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/providers/media/MediaProvider;->READY_FLAG_PROJECTION:[Ljava/lang/String;

    .line 5340
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/images/media"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5341
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/images/media/#"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5342
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/images/thumbnails"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5343
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/images/thumbnails/#"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5345
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/media"

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5346
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/media/#"

    const/16 v3, 0x65

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5347
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/media/#/genres"

    const/16 v3, 0x66

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5348
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/media/#/genres/#"

    const/16 v3, 0x67

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5349
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/media/#/playlists"

    const/16 v3, 0x68

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5350
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/media/#/playlists/#"

    const/16 v3, 0x69

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5351
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/genres"

    const/16 v3, 0x6a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5352
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/genres/#"

    const/16 v3, 0x6b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5353
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/genres/#/members"

    const/16 v3, 0x6c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5354
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/genres/all/members"

    const/16 v3, 0x6d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5355
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/genres_map"

    const/16 v3, 0x7a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5356
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/playlists"

    const/16 v3, 0x6e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5357
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/playlists/#"

    const/16 v3, 0x6f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5358
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/playlists/#/members"

    const/16 v3, 0x70

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5359
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/playlists/#/members/#"

    const/16 v3, 0x71

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5360
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/artists"

    const/16 v3, 0x72

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5361
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/artists/#"

    const/16 v3, 0x73

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5362
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/artists/#/albums"

    const/16 v3, 0x76

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5363
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/albums"

    const/16 v3, 0x74

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5364
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/albums/#"

    const/16 v3, 0x75

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5365
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/albumart"

    const/16 v3, 0x77

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5366
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/albumart/#"

    const/16 v3, 0x78

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5367
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/media/#/albumart"

    const/16 v3, 0x79

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5369
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/video/media"

    const/16 v3, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5370
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/video/media/#"

    const/16 v3, 0xc9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5371
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/video/thumbnails"

    const/16 v3, 0xca

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5372
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/video/thumbnails/#"

    const/16 v3, 0xcb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5374
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/media_scanner"

    const/16 v3, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5376
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/fs_id"

    const/16 v3, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5377
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/version"

    const/16 v3, 0x259

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5379
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/mtp_connected"

    const/16 v3, 0x2c1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5381
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*"

    const/16 v3, 0x12d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5382
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const/4 v2, 0x0

    const/16 v3, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5385
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/file"

    const/16 v3, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5386
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/file/#"

    const/16 v3, 0x2bd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5387
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/object"

    const/16 v3, 0x2be

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5388
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/object/#"

    const/16 v3, 0x2bf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5389
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/object/#/references"

    const/16 v3, 0x2c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5394
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/search_suggest_query"

    const/16 v3, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5396
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/search_suggest_query/*"

    const/16 v3, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5400
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/search/search_suggest_query"

    const/16 v3, 0x191

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5402
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/search/search_suggest_query/*"

    const/16 v3, 0x191

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5406
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/search/fancy"

    const/16 v3, 0x192

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5407
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/search/fancy/*"

    const/16 v3, 0x192

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5408
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/removedir"

    const/16 v3, 0x7b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5410
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-static {v0}, Lcom/android/providers/media/BlurMusicStore;->registerUriMatcher(Landroid/content/UriMatcher;)V

    .line 5412
    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x5

    const-wide/16 v3, 0x0

    .line 130
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mDirectoryCache:Ljava/util/HashMap;

    .line 143
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mPendingThumbs:Ljava/util/HashSet;

    .line 146
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mThumbRequestStack:Ljava/util/Stack;

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;

    .line 150
    new-instance v0, Ljava/util/PriorityQueue;

    const/16 v1, 0xa

    invoke-static {}, Lcom/android/providers/media/MediaThumbRequest;->getComparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;

    .line 159
    iput-wide v3, p0, Lcom/android/providers/media/MediaProvider;->mTotalThumbCreateTime:J

    .line 160
    iput-wide v3, p0, Lcom/android/providers/media/MediaProvider;->mTotalVideoThumb:J

    .line 161
    iput-wide v3, p0, Lcom/android/providers/media/MediaProvider;->mTotalImageThumb:J

    .line 162
    iput-wide v3, p0, Lcom/android/providers/media/MediaProvider;->mTotalAudioAlbumart:J

    .line 163
    iput-wide v3, p0, Lcom/android/providers/media/MediaProvider;->mTotalAlbumartCreateTime:J

    .line 168
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v6

    const-string v1, "mime_type"

    aput-object v1, v0, v7

    const-string v1, "(CASE WHEN grouporder=1 THEN 2130837508 ELSE CASE WHEN grouporder=2 THEN 2130837507 ELSE 2130837509 END END) AS suggest_icon_1"

    aput-object v1, v0, v8

    const/4 v1, 0x3

    const-string v2, "0 AS suggest_icon_2"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "text1 AS suggest_text_1"

    aput-object v2, v0, v1

    const-string v1, "text1 AS suggest_intent_query"

    aput-object v1, v0, v5

    const/4 v1, 0x6

    const-string v2, "CASE when grouporder=1 THEN data1 ELSE artist END AS data1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "CASE when grouporder=1 THEN data2 ELSE CASE WHEN grouporder=2 THEN NULL ELSE album END END AS data2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "match as ar"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "suggest_intent_data"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "grouporder"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "NULL AS itemorder"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mSearchColsLegacy:[Ljava/lang/String;

    .line 187
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v6

    const-string v1, "mime_type"

    aput-object v1, v0, v7

    const-string v1, "artist"

    aput-object v1, v0, v8

    const/4 v1, 0x3

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "title"

    aput-object v2, v0, v1

    const-string v1, "data1"

    aput-object v1, v0, v5

    const/4 v1, 0x6

    const-string v2, "data2"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mSearchColsFancy:[Ljava/lang/String;

    .line 197
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v6

    const-string v1, "mime_type"

    aput-object v1, v0, v7

    const-string v1, "(CASE WHEN grouporder=1 THEN 2130837508 ELSE CASE WHEN grouporder=2 THEN 2130837507 ELSE 2130837509 END END) AS suggest_icon_1"

    aput-object v1, v0, v8

    const/4 v1, 0x3

    const-string v2, "text1 AS suggest_text_1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "text1 AS suggest_intent_query"

    aput-object v2, v0, v1

    const-string v1, "(CASE WHEN grouporder=1 THEN \'%1\' ELSE CASE WHEN grouporder=3 THEN artist || \' - \' || album ELSE CASE WHEN text2!=\'<unknown>\' THEN text2 ELSE NULL END END END) AS suggest_text_2"

    aput-object v1, v0, v5

    const/4 v1, 0x6

    const-string v2, "suggest_intent_data"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mSearchColsBasic:[Ljava/lang/String;

    .line 213
    iput v5, p0, Lcom/android/providers/media/MediaProvider;->SEARCH_COLUMN_BASIC_TEXT2:I

    .line 224
    const-string v0, "content://media/external/audio/albumart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mAlbumArtBaseUri:Landroid/net/Uri;

    .line 248
    new-instance v0, Lcom/android/providers/media/MediaProvider$1;

    invoke-direct {v0, p0}, Lcom/android/providers/media/MediaProvider$1;-><init>(Lcom/android/providers/media/MediaProvider;)V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 315
    new-instance v0, Lcom/android/providers/media/MediaProvider$2;

    invoke-direct {v0, p0}, Lcom/android/providers/media/MediaProvider$2;-><init>(Lcom/android/providers/media/MediaProvider;)V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 360
    new-instance v0, Lcom/android/providers/media/MediaProvider$3;

    invoke-direct {v0, p0}, Lcom/android/providers/media/MediaProvider$3;-><init>(Lcom/android/providers/media/MediaProvider;)V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mObjectRemovedCallback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

    .line 551
    new-instance v0, Lcom/android/providers/media/MediaProvider$4;

    invoke-direct {v0, p0}, Lcom/android/providers/media/MediaProvider$4;-><init>(Lcom/android/providers/media/MediaProvider;)V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mMtpServiceConnection:Landroid/content/ServiceConnection;

    .line 5240
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/providers/media/MediaProvider;->mVolumeId:I

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/database/sqlite/SQLiteDatabase;ZII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 130
    invoke-static {p0, p1, p2, p3}, Lcom/android/providers/media/MediaProvider;->updateDatabase(Landroid/database/sqlite/SQLiteDatabase;ZII)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/providers/media/MediaProvider;)Ljava/util/PriorityQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/providers/media/MediaProvider;Lcom/android/providers/media/MediaThumbRequest;)Lcom/android/providers/media/MediaThumbRequest;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/providers/media/MediaProvider;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/android/providers/media/MediaProvider;->mTotalThumbCreateTime:J

    return-wide v0
.end method

.method static synthetic access$1314(Lcom/android/providers/media/MediaProvider;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/android/providers/media/MediaProvider;->mTotalThumbCreateTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/providers/media/MediaProvider;->mTotalThumbCreateTime:J

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/android/providers/media/MediaProvider;)Ljava/util/Stack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mThumbRequestStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/providers/media/MediaProvider;Lcom/android/providers/media/MediaProvider$ThumbData;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->makeThumbInternal(Lcom/android/providers/media/MediaProvider$ThumbData;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/providers/media/MediaProvider;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/android/providers/media/MediaProvider;->mTotalAlbumartCreateTime:J

    return-wide v0
.end method

.method static synthetic access$1614(Lcom/android/providers/media/MediaProvider;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/android/providers/media/MediaProvider;->mTotalAlbumartCreateTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/providers/media/MediaProvider;->mTotalAlbumartCreateTime:J

    return-wide v0
.end method

.method static synthetic access$1700(Lcom/android/providers/media/MediaProvider;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mPendingThumbs:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/providers/media/MediaProvider;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->detachVolume(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$300()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/android/providers/media/MediaProvider;->sFolderArtMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/providers/media/MediaProvider;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->attachVolumeAsync(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/providers/media/MediaProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/providers/media/MediaProvider;->checkStorage()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/providers/media/MediaProvider;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->attachVolume(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/providers/media/MediaProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/providers/media/MediaProvider;->mDisableMtpObjectCallbacks:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/IMtpService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mMtpService:Lcom/android/providers/media/IMtpService;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/providers/media/MediaProvider;Lcom/android/providers/media/IMtpService;)Lcom/android/providers/media/IMtpService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider;->mMtpService:Lcom/android/providers/media/IMtpService;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/providers/media/MediaProvider;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lcom/android/providers/media/MediaProvider;->sendObjectRemoved(J)V

    return-void
.end method

.method private attachVolume(Ljava/lang/String;)Landroid/net/Uri;
    .locals 27
    .parameter "volume"

    .prologue
    .line 5048
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 5049
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Opening and closing databases not allowed."

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 5053
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 5054
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 5055
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://media/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    monitor-exit v26

    .line 5151
    :goto_0
    return-object v5

    .line 5058
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 5060
    .local v3, context:Landroid/content/Context;
    const-string v5, "internal"

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5061
    new-instance v2, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    const-string v4, "internal.db"

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/providers/media/MediaProvider;->mObjectRemovedCallback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

    invoke-direct/range {v2 .. v7}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;ZZLandroid/database/sqlite/SQLiteDatabase$CustomFunction;)V

    .line 5119
    .local v2, db:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5121
    iget-boolean v5, v2, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    if-nez v5, :cond_f

    .line 5123
    invoke-virtual {v2}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/providers/media/MediaProvider;->createDefaultFolders(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 5126
    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const-string v7, "Android/data/com.android.providers.media/albumthumbs"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v18

    .line 5127
    .local v18, files:[Ljava/io/File;
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 5128
    .local v16, fileSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/16 v19, 0x0

    .local v19, i:I
    :goto_2
    if-eqz v18, :cond_b

    move-object/from16 v0, v18

    array-length v5, v0

    move/from16 v0, v19

    if-ge v0, v5, :cond_b

    .line 5129
    aget-object v5, v18, v19

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5128
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 5063
    .end local v2           #db:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    .end local v16           #fileSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v18           #files:[Ljava/io/File;
    .end local v19           #i:I
    :cond_2
    const-string v5, "external"

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 5064
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5065
    sget-object v5, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v23, v5, v6

    .line 5066
    .local v23, path:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/os/FileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v25

    .line 5067
    .local v25, volumeID:I
    sget-object v5, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " volume ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5070
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "external-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".db"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5071
    .local v4, dbName:Ljava/lang/String;
    new-instance v2, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/providers/media/MediaProvider;->mObjectRemovedCallback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

    invoke-direct/range {v2 .. v7}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;ZZLandroid/database/sqlite/SQLiteDatabase$CustomFunction;)V

    .line 5073
    .restart local v2       #db:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/providers/media/MediaProvider;->mVolumeId:I

    goto/16 :goto_1

    .line 5149
    .end local v2           #db:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    .end local v3           #context:Landroid/content/Context;
    .end local v4           #dbName:Ljava/lang/String;
    .end local v23           #path:Ljava/lang/String;
    .end local v25           #volumeID:I
    :catchall_0
    move-exception v5

    monitor-exit v26
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 5079
    .restart local v3       #context:Landroid/content/Context;
    :cond_3
    :try_start_1
    const-string v5, "external.db"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    .line 5080
    .local v14, dbFile:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_8

    .line 5084
    const/16 v24, 0x0

    .line 5085
    .local v24, recentDbFile:Ljava/io/File;
    invoke-virtual {v3}, Landroid/content/Context;->databaseList()[Ljava/lang/String;

    move-result-object v11

    .local v11, arr$:[Ljava/lang/String;
    array-length v0, v11

    move/from16 v22, v0

    .local v22, len$:I
    const/16 v20, 0x0

    .local v20, i$:I
    :goto_3
    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    aget-object v13, v11, v20

    .line 5086
    .local v13, database:Ljava/lang/String;
    const-string v5, "external-"

    invoke-virtual {v13, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 5087
    invoke-virtual {v3, v13}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    .line 5088
    .local v15, file:Ljava/io/File;
    if-nez v24, :cond_5

    .line 5089
    move-object/from16 v24, v15

    .line 5085
    .end local v15           #file:Ljava/io/File;
    :cond_4
    :goto_4
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 5090
    .restart local v15       #file:Ljava/io/File;
    :cond_5
    invoke-virtual {v15}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_6

    .line 5091
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->delete()Z

    .line 5092
    move-object/from16 v24, v15

    goto :goto_4

    .line 5094
    :cond_6
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    goto :goto_4

    .line 5098
    .end local v13           #database:Ljava/lang/String;
    .end local v15           #file:Ljava/io/File;
    :cond_7
    if-eqz v24, :cond_8

    .line 5099
    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 5100
    sget-object v5, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "renamed database "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "external.db"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5112
    .end local v11           #arr$:[Ljava/lang/String;
    .end local v20           #i$:I
    .end local v22           #len$:I
    .end local v24           #recentDbFile:Ljava/io/File;
    :cond_8
    :goto_5
    new-instance v2, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/providers/media/MediaProvider;->mObjectRemovedCallback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

    move-object v5, v2

    move-object v6, v3

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;ZZLandroid/database/sqlite/SQLiteDatabase$CustomFunction;)V

    .line 5114
    .restart local v2       #db:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    goto/16 :goto_1

    .line 5103
    .end local v2           #db:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    .restart local v11       #arr$:[Ljava/lang/String;
    .restart local v20       #i$:I
    .restart local v22       #len$:I
    .restart local v24       #recentDbFile:Ljava/io/File;
    :cond_9
    sget-object v5, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to rename database "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "external.db"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5107
    move-object/from16 v14, v24

    goto :goto_5

    .line 5116
    .end local v11           #arr$:[Ljava/lang/String;
    .end local v14           #dbFile:Ljava/io/File;
    .end local v20           #i$:I
    .end local v22           #len$:I
    .end local v24           #recentDbFile:Ljava/io/File;
    :cond_a
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "There is no volume named "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 5132
    .restart local v2       #db:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    .restart local v16       #fileSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v18       #files:[Ljava/io/File;
    .restart local v19       #i:I
    :cond_b
    sget-object v6, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "album_art"

    aput-object v8, v7, v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/providers/media/MediaProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v12

    .line 5135
    .local v12, cursor:Landroid/database/Cursor;
    :goto_6
    if-eqz v12, :cond_d

    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 5136
    const/4 v5, 0x0

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    .line 5139
    :catchall_1
    move-exception v5

    if-eqz v12, :cond_c

    :try_start_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v5

    :cond_d
    if-eqz v12, :cond_e

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 5142
    :cond_e
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .line 5143
    .local v21, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_7
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 5144
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 5145
    .local v17, filename:Ljava/lang/String;
    sget-object v5, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleting obsolete album art "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5146
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_7

    .line 5149
    .end local v12           #cursor:Landroid/database/Cursor;
    .end local v16           #fileSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v17           #filename:Ljava/lang/String;
    .end local v18           #files:[Ljava/io/File;
    .end local v19           #i:I
    .end local v21           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_f
    monitor-exit v26
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5150
    sget-object v5, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attached volume: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5151
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://media/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    goto/16 :goto_0
.end method

.method private attachVolumeAsync(Ljava/lang/String;)V
    .locals 3
    .parameter "volumeName"

    .prologue
    .line 351
    new-instance v0, Lcom/android/providers/media/MediaProvider$1attachVolumeRunnable;

    invoke-direct {v0, p0, p1}, Lcom/android/providers/media/MediaProvider$1attachVolumeRunnable;-><init>(Lcom/android/providers/media/MediaProvider;Ljava/lang/String;)V

    .line 352
    .local v0, runnabe:Lcom/android/providers/media/MediaProvider$1attachVolumeRunnable;
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "attachVolumeThd"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 353
    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 354
    return-void
.end method

.method private checkStorage()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->isUsbMassStorageConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v1, "in mass storage mode,skip check storage"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :goto_0
    return-void

    .line 234
    :cond_0
    invoke-direct {p0}, Lcom/android/providers/media/MediaProvider;->doCheckStorage()V

    goto :goto_0
.end method

.method private combine(Ljava/util/List;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .parameter
    .parameter "userArgs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2552
    .local p1, prepend:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 2553
    .local v2, presize:I
    if-nez v2, :cond_0

    .line 2565
    .end local p2
    :goto_0
    return-object p2

    .line 2557
    .restart local p2
    :cond_0
    if-eqz p2, :cond_1

    array-length v3, p2

    .line 2558
    .local v3, usersize:I
    :goto_1
    add-int v4, v2, v3

    new-array v0, v4, [Ljava/lang/String;

    .line 2559
    .local v0, combined:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v2, :cond_2

    .line 2560
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v0, v1

    .line 2559
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2557
    .end local v0           #combined:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v3           #usersize:I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 2562
    .restart local v0       #combined:[Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v3       #usersize:I
    :cond_2
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v3, :cond_3

    .line 2563
    add-int v4, v2, v1

    aget-object v5, p2, v1

    aput-object v5, v0, v4

    .line 2562
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    move-object p2, v0

    .line 2565
    goto :goto_0
.end method

.method private static computeBucketValues(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 5
    .parameter "data"
    .parameter "values"

    .prologue
    .line 1943
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 1944
    .local v1, parentFile:Ljava/io/File;
    if-nez v1, :cond_0

    .line 1945
    new-instance v1, Ljava/io/File;

    .end local v1           #parentFile:Ljava/io/File;
    const-string v3, "/"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1951
    .restart local v1       #parentFile:Ljava/io/File;
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 1952
    .local v2, path:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1957
    .local v0, name:Ljava/lang/String;
    const-string v3, "bucket_id"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1958
    const-string v3, "bucket_display_name"

    invoke-virtual {p1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1959
    return-void
.end method

.method private static computeDisplayName(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 3
    .parameter "data"
    .parameter "values"

    .prologue
    .line 1967
    if-nez p0, :cond_1

    const-string v1, ""

    .line 1968
    .local v1, s:Ljava/lang/String;
    :goto_0
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1969
    .local v0, idx:I
    if-ltz v0, :cond_0

    .line 1970
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1972
    :cond_0
    const-string v2, "_display_name"

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1973
    return-void

    .line 1967
    .end local v0           #idx:I
    .end local v1           #s:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static computeTakenTime(Landroid/content/ContentValues;)V
    .locals 6
    .parameter "values"

    .prologue
    .line 1982
    const-string v1, "datetaken"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1985
    const-string v1, "date_modified"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 1986
    .local v0, lastModified:Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 1987
    const-string v1, "datetaken"

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1990
    .end local v0           #lastModified:Ljava/lang/Long;
    :cond_0
    return-void
.end method

.method private createDefaultFolders(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9
    .parameter "db"

    .prologue
    .line 582
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 583
    .local v6, prefs:Landroid/content/SharedPreferences;
    const-string v7, "created_default_folders"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_2

    .line 584
    sget-object v0, Lcom/android/providers/media/MediaProvider;->sDefaultFolderNames:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v3, v0, v4

    .line 585
    .local v3, folderName:Ljava/lang/String;
    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 586
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 587
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 588
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p1, v7}, Lcom/android/providers/media/MediaProvider;->insertDirectory(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    .line 584
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 592
    .end local v2           #file:Ljava/io/File;
    .end local v3           #folderName:Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 593
    .local v1, e:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 594
    const-string v7, "created_default_folders"

    const/4 v8, 0x1

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 595
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 597
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #e:Landroid/content/SharedPreferences$Editor;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_2
    return-void
.end method

.method private detachVolume(Landroid/net/Uri;)V
    .locals 10
    .parameter "uri"

    .prologue
    .line 5162
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    if-eq v6, v7, :cond_0

    .line 5163
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "Opening and closing databases not allowed."

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 5167
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 5168
    .local v5, volume:Ljava/lang/String;
    const-string v6, "internal"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 5169
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    const-string v7, "Deleting the internal volume is not allowed"

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 5171
    :cond_1
    const-string v6, "external"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 5172
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "There is no volume named "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 5176
    :cond_2
    iget-object v7, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    monitor-enter v7

    .line 5177
    :try_start_0
    iget-object v6, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    .line 5178
    .local v0, database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    if-nez v0, :cond_3

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5212
    :goto_0
    return-void

    .line 5182
    :cond_3
    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5183
    .local v2, file:Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/io/File;->setLastModified(J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 5188
    .end local v2           #file:Ljava/io/File;
    :goto_1
    :try_start_2
    iget-object v6, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5191
    const/4 v3, 0x1

    .line 5192
    .local v3, maxRetryCount:I
    const/4 v4, 0x0

    .line 5195
    .local v4, retryCount:I
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 5208
    :cond_4
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 5210
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, p1, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 5211
    sget-object v6, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Detached volume: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5184
    .end local v3           #maxRetryCount:I
    .end local v4           #retryCount:I
    :catch_0
    move-exception v1

    .line 5185
    .local v1, e:Ljava/lang/Exception;
    :try_start_5
    sget-object v6, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v8, "Can\'t touch database file"

    invoke-static {v6, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 5208
    .end local v0           #database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v6

    .line 5197
    .restart local v0       #database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    .restart local v3       #maxRetryCount:I
    .restart local v4       #retryCount:I
    :catch_1
    move-exception v1

    .line 5198
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    :try_start_6
    sget-object v6, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v8, "Database in use,can\'t close"

    invoke-static {v6, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5199
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 5201
    const/4 v6, 0x1

    if-ge v4, v6, :cond_4

    .line 5202
    sget-object v6, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Close DB retry "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 5205
    add-int/lit8 v4, v4, 0x1

    .line 5206
    goto :goto_2
.end method

.method private doAudioSearch(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/database/Cursor;
    .locals 16
    .parameter "db"
    .parameter "qb"
    .parameter "uri"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"
    .parameter "mode"
    .parameter "limit"

    .prologue
    .line 2573
    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v14, ""

    .line 2574
    .local v14, mSearchString:Ljava/lang/String;
    :goto_0
    const-string v1, "  "

    const-string v2, " "

    invoke-virtual {v14, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    .line 2576
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, " "

    invoke-virtual {v14, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 2578
    .local v15, searchWords:[Ljava/lang/String;
    :goto_1
    array-length v1, v15

    new-array v5, v1, [Ljava/lang/String;

    .line 2579
    .local v5, wildcardWords:[Ljava/lang/String;
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v10

    .line 2580
    .local v10, col:Ljava/text/Collator;
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 2581
    array-length v13, v15

    .line 2582
    .local v13, len:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    if-ge v11, v13, :cond_4

    .line 2585
    aget-object v1, v15, v11

    invoke-static {v1}, Landroid/provider/MediaStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2586
    .local v12, key:Ljava/lang/String;
    const-string v1, "\\"

    const-string v2, "\\\\"

    invoke-virtual {v12, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 2587
    const-string v1, "%"

    const-string v2, "\\%"

    invoke-virtual {v12, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 2588
    const-string v1, "_"

    const-string v2, "\\_"

    invoke-virtual {v12, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 2589
    aget-object v1, v15, v11

    const-string v2, "a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    aget-object v1, v15, v11

    const-string v2, "an"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    aget-object v1, v15, v11

    const-string v2, "the"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    const-string v1, "%"

    :goto_3
    aput-object v1, v5, v11

    .line 2582
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 2573
    .end local v5           #wildcardWords:[Ljava/lang/String;
    .end local v10           #col:Ljava/text/Collator;
    .end local v11           #i:I
    .end local v12           #key:Ljava/lang/String;
    .end local v13           #len:I
    .end local v14           #mSearchString:Ljava/lang/String;
    .end local v15           #searchWords:[Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v14

    goto :goto_0

    .line 2576
    .restart local v14       #mSearchString:Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    new-array v15, v1, [Ljava/lang/String;

    goto :goto_1

    .line 2589
    .restart local v5       #wildcardWords:[Ljava/lang/String;
    .restart local v10       #col:Ljava/text/Collator;
    .restart local v11       #i:I
    .restart local v12       #key:Ljava/lang/String;
    .restart local v13       #len:I
    .restart local v15       #searchWords:[Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 2594
    .end local v12           #key:Ljava/lang/String;
    :cond_4
    const-string v4, ""

    .line 2595
    .local v4, where:Ljava/lang/String;
    const/4 v11, 0x0

    :goto_4
    array-length v1, v15

    if-ge v11, v1, :cond_6

    .line 2596
    if-nez v11, :cond_5

    .line 2597
    const-string v4, "match LIKE ? ESCAPE \'\\\'"

    .line 2595
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 2599
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND match LIKE ? ESCAPE \'\\\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    .line 2603
    :cond_6
    const-string v1, "search"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2605
    const/16 v1, 0x192

    move/from16 v0, p8

    if-ne v0, v1, :cond_7

    .line 2606
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/MediaProvider;->mSearchColsFancy:[Ljava/lang/String;

    .line 2612
    .local v3, cols:[Ljava/lang/String;
    :goto_6
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v9, p9

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    .line 2607
    .end local v3           #cols:[Ljava/lang/String;
    :cond_7
    const/16 v1, 0x191

    move/from16 v0, p8

    if-ne v0, v1, :cond_8

    .line 2608
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/MediaProvider;->mSearchColsBasic:[Ljava/lang/String;

    .restart local v3       #cols:[Ljava/lang/String;
    goto :goto_6

    .line 2610
    .end local v3           #cols:[Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/MediaProvider;->mSearchColsLegacy:[Ljava/lang/String;

    .restart local v3       #cols:[Ljava/lang/String;
    goto :goto_6
.end method

.method private doCheckStorage()V
    .locals 4

    .prologue
    .line 240
    sget-object v2, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v3, "Inform MediaScanner to delete invalid storage from DB"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 242
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "pruneDeadStorage"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 243
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 244
    .local v1, context:Landroid/content/Context;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/providers/media/MediaScannerService;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 245
    return-void
.end method

.method private ensureFile(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 5
    .parameter "internal"
    .parameter "initialValues"
    .parameter "preferredExtension"
    .parameter "directoryName"

    .prologue
    .line 2691
    const-string v2, "_data"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2692
    .local v0, file:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2693
    invoke-direct {p0, p1, p3, p4}, Lcom/android/providers/media/MediaProvider;->generateFileName(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2694
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 2695
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "_data"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2700
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/providers/media/MediaProvider;->ensureFileExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2701
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create new file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2697
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_0
    move-object v1, p2

    .restart local v1       #values:Landroid/content/ContentValues;
    goto :goto_0

    .line 2703
    :cond_1
    return-object v1
.end method

.method private ensureFileExists(Ljava/lang/String;)Z
    .locals 9
    .parameter "path"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3650
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3651
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3672
    :goto_0
    return v6

    .line 3656
    :cond_0
    const/16 v8, 0x2f

    invoke-virtual {p1, v8, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 3657
    .local v5, secondSlash:I
    if-ge v5, v6, :cond_1

    move v6, v7

    goto :goto_0

    .line 3658
    :cond_1
    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 3659
    .local v1, directoryPath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3660
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    move v6, v7

    .line 3661
    goto :goto_0

    .line 3662
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 3664
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    goto :goto_0

    .line 3665
    :catch_0
    move-exception v4

    .line 3666
    .local v4, ioe:Ljava/io/IOException;
    sget-object v6, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v8, "File creation failed"

    invoke-static {v6, v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v4           #ioe:Ljava/io/IOException;
    :goto_1
    move v6, v7

    .line 3672
    goto :goto_0

    .line 3668
    :catch_1
    move-exception v2

    .line 3669
    .local v2, e:Ljava/lang/Exception;
    sget-object v6, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v8, "exception: "

    invoke-static {v6, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private generateFileName(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "internal"
    .parameter "preferredExtension"
    .parameter "directoryName"

    .prologue
    .line 3638
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 3640
    .local v0, name:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 3641
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Writing to internal storage is not supported."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3645
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getCompressedAlbumArt(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 22
    .parameter "context"
    .parameter "path"

    .prologue
    .line 4443
    const/4 v4, 0x0

    .line 4446
    .local v4, compressed:[B
    :try_start_0
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4447
    .local v10, f:Ljava/io/File;
    const/high16 v20, 0x1000

    move/from16 v0, v20

    invoke-static {v10, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v15

    .line 4450
    .local v15, pfd:Landroid/os/ParcelFileDescriptor;
    new-instance v16, Landroid/media/MediaScanner;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;)V

    .line 4451
    .local v16, scanner:Landroid/media/MediaScanner;
    invoke-virtual {v15}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/media/MediaScanner;->extractAlbumArt(Ljava/io/FileDescriptor;)[B

    move-result-object v4

    .line 4452
    invoke-virtual {v15}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 4463
    if-nez v4, :cond_1

    if-eqz p1, :cond_1

    .line 4464
    const/16 v20, 0x2f

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    .line 4465
    .local v13, lastSlash:I
    if-lez v13, :cond_1

    .line 4467
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 4468
    .local v2, artPath:Ljava/lang/String;
    sget-object v20, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    const/16 v21, 0x0

    aget-object v17, v20, v21

    .line 4469
    .local v17, sdroot:Ljava/lang/String;
    sget-object v20, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 4472
    .local v6, dwndir:Ljava/lang/String;
    const/4 v3, 0x0

    .line 4473
    .local v3, bestmatch:Ljava/lang/String;
    sget-object v21, Lcom/android/providers/media/MediaProvider;->sFolderArtMap:Ljava/util/HashMap;

    monitor-enter v21
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4474
    :try_start_1
    sget-object v20, Lcom/android/providers/media/MediaProvider;->sFolderArtMap:Ljava/util/HashMap;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 4475
    sget-object v20, Lcom/android/providers/media/MediaProvider;->sFolderArtMap:Ljava/util/HashMap;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 4511
    :cond_0
    :goto_0
    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4513
    if-eqz v3, :cond_1

    .line 4514
    :try_start_2
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4515
    .local v11, file:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 4516
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v4, v0, [B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 4517
    const/16 v18, 0x0

    .line 4519
    .local v18, stream:Ljava/io/FileInputStream;
    :try_start_3
    new-instance v19, Ljava/io/FileInputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 4520
    .end local v18           #stream:Ljava/io/FileInputStream;
    .local v19, stream:Ljava/io/FileInputStream;
    :try_start_4
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/io/FileInputStream;->read([B)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 4524
    if-eqz v19, :cond_1

    .line 4525
    :try_start_5
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .end local v2           #artPath:Ljava/lang/String;
    .end local v3           #bestmatch:Ljava/lang/String;
    .end local v6           #dwndir:Ljava/lang/String;
    .end local v10           #f:Ljava/io/File;
    .end local v11           #file:Ljava/io/File;
    .end local v13           #lastSlash:I
    .end local v15           #pfd:Landroid/os/ParcelFileDescriptor;
    .end local v16           #scanner:Landroid/media/MediaScanner;
    .end local v17           #sdroot:Ljava/lang/String;
    .end local v19           #stream:Ljava/io/FileInputStream;
    :cond_1
    :goto_1
    move-object/from16 v20, v4

    .line 4535
    :goto_2
    return-object v20

    .line 4476
    .restart local v2       #artPath:Ljava/lang/String;
    .restart local v3       #bestmatch:Ljava/lang/String;
    .restart local v6       #dwndir:Ljava/lang/String;
    .restart local v10       #f:Ljava/io/File;
    .restart local v13       #lastSlash:I
    .restart local v15       #pfd:Landroid/os/ParcelFileDescriptor;
    .restart local v16       #scanner:Landroid/media/MediaScanner;
    .restart local v17       #sdroot:Ljava/lang/String;
    :cond_2
    :try_start_6
    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_0

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 4478
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4479
    .local v5, dir:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v8

    .line 4480
    .local v8, entrynames:[Ljava/lang/String;
    if-nez v8, :cond_3

    .line 4481
    const/16 v20, 0x0

    monitor-exit v21

    goto :goto_2

    .line 4511
    .end local v5           #dir:Ljava/io/File;
    .end local v8           #entrynames:[Ljava/lang/String;
    :catchall_0
    move-exception v20

    monitor-exit v21
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v20
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 4532
    .end local v2           #artPath:Ljava/lang/String;
    .end local v3           #bestmatch:Ljava/lang/String;
    .end local v6           #dwndir:Ljava/lang/String;
    .end local v10           #f:Ljava/io/File;
    .end local v13           #lastSlash:I
    .end local v15           #pfd:Landroid/os/ParcelFileDescriptor;
    .end local v16           #scanner:Landroid/media/MediaScanner;
    .end local v17           #sdroot:Ljava/lang/String;
    :catch_0
    move-exception v20

    goto :goto_1

    .line 4483
    .restart local v2       #artPath:Ljava/lang/String;
    .restart local v3       #bestmatch:Ljava/lang/String;
    .restart local v5       #dir:Ljava/io/File;
    .restart local v6       #dwndir:Ljava/lang/String;
    .restart local v8       #entrynames:[Ljava/lang/String;
    .restart local v10       #f:Ljava/io/File;
    .restart local v13       #lastSlash:I
    .restart local v15       #pfd:Landroid/os/ParcelFileDescriptor;
    .restart local v16       #scanner:Landroid/media/MediaScanner;
    .restart local v17       #sdroot:Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    .line 4484
    const/16 v14, 0x3e8

    .line 4485
    .local v14, matchlevel:I
    :try_start_8
    array-length v0, v8

    move/from16 v20, v0

    add-int/lit8 v12, v20, -0x1

    .local v12, i:I
    :goto_3
    if-ltz v12, :cond_4

    .line 4486
    aget-object v20, v8, v12

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 4487
    .local v7, entry:Ljava/lang/String;
    const-string v20, "albumart.jpg"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 4488
    aget-object v3, v8, v12

    .line 4509
    .end local v7           #entry:Ljava/lang/String;
    :cond_4
    sget-object v20, Lcom/android/providers/media/MediaProvider;->sFolderArtMap:Ljava/util/HashMap;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4490
    .restart local v7       #entry:Ljava/lang/String;
    :cond_5
    const-string v20, "albumart"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_7

    const-string v20, "large.jpg"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_7

    const/16 v20, 0x1

    move/from16 v0, v20

    if-le v14, v0, :cond_7

    .line 4493
    aget-object v3, v8, v12

    .line 4494
    const/4 v14, 0x1

    .line 4485
    :cond_6
    :goto_4
    add-int/lit8 v12, v12, -0x1

    goto :goto_3

    .line 4495
    :cond_7
    const-string v20, "albumart"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_8

    const-string v20, ".jpg"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_8

    const/16 v20, 0x2

    move/from16 v0, v20

    if-le v14, v0, :cond_8

    .line 4498
    aget-object v3, v8, v12

    .line 4499
    const/4 v14, 0x2

    goto :goto_4

    .line 4500
    :cond_8
    const-string v20, ".jpg"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_9

    const/16 v20, 0x3

    move/from16 v0, v20

    if-le v14, v0, :cond_9

    .line 4501
    aget-object v3, v8, v12

    .line 4502
    const/4 v14, 0x3

    goto :goto_4

    .line 4503
    :cond_9
    const-string v20, ".png"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    const/16 v20, 0x4

    move/from16 v0, v20

    if-le v14, v0, :cond_6

    .line 4504
    aget-object v3, v8, v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 4505
    const/4 v14, 0x4

    goto :goto_4

    .line 4521
    .end local v5           #dir:Ljava/io/File;
    .end local v7           #entry:Ljava/lang/String;
    .end local v8           #entrynames:[Ljava/lang/String;
    .end local v12           #i:I
    .end local v14           #matchlevel:I
    .restart local v11       #file:Ljava/io/File;
    .restart local v18       #stream:Ljava/io/FileInputStream;
    :catch_1
    move-exception v9

    .line 4522
    .local v9, ex:Ljava/io/IOException;
    :goto_5
    const/4 v4, 0x0

    .line 4524
    if-eqz v18, :cond_1

    .line 4525
    :try_start_9
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_1

    .line 4524
    .end local v9           #ex:Ljava/io/IOException;
    :catchall_1
    move-exception v20

    :goto_6
    if-eqz v18, :cond_a

    .line 4525
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V

    :cond_a
    throw v20
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    .line 4524
    .end local v18           #stream:Ljava/io/FileInputStream;
    .restart local v19       #stream:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v20

    move-object/from16 v18, v19

    .end local v19           #stream:Ljava/io/FileInputStream;
    .restart local v18       #stream:Ljava/io/FileInputStream;
    goto :goto_6

    .line 4521
    .end local v18           #stream:Ljava/io/FileInputStream;
    .restart local v19       #stream:Ljava/io/FileInputStream;
    :catch_2
    move-exception v9

    move-object/from16 v18, v19

    .end local v19           #stream:Ljava/io/FileInputStream;
    .restart local v18       #stream:Ljava/io/FileInputStream;
    goto :goto_5
.end method

.method private getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    .locals 4
    .parameter "uri"

    .prologue
    .line 5011
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    monitor-enter v1

    .line 5012
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 5013
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    monitor-exit v1

    .line 5016
    :goto_0
    return-object v0

    .line 5015
    :cond_0
    monitor-exit v1

    .line 5016
    const/4 v0, 0x0

    goto :goto_0

    .line 5015
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getKeyIdForName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)J
    .locals 25
    .parameter "db"
    .parameter "table"
    .parameter "keyField"
    .parameter "nameField"
    .parameter "rawName"
    .parameter "cacheName"
    .parameter "path"
    .parameter "albumHash"
    .parameter "artist"
    .parameter
    .parameter "srcuri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/net/Uri;",
            ")J"
        }
    .end annotation

    .prologue
    .line 4873
    .local p10, cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-eqz p5, :cond_0

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 4874
    :cond_0
    const-string p5, "<unknown>"

    .line 4876
    :cond_1
    invoke-static/range {p5 .. p5}, Landroid/provider/MediaStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 4878
    .local v18, k:Ljava/lang/String;
    if-nez v18, :cond_3

    .line 4880
    sget-object v5, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v6, "null key"

    new-instance v7, Ljava/lang/Exception;

    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4881
    const-wide/16 v21, -0x1

    .line 4957
    :cond_2
    :goto_0
    return-wide v21

    .line 4884
    :cond_3
    const-string v5, "albums"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 4885
    .local v16, isAlbum:Z
    const-string v5, "<unknown>"

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    .line 4895
    .local v17, isUnknown:Z
    if-eqz v16, :cond_4

    .line 4896
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p8

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 4897
    if-eqz v17, :cond_4

    .line 4898
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p9

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 4902
    :cond_4
    const/4 v5, 0x1

    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v18, v9, v5

    .line 4903
    .local v9, selargs:[Ljava/lang/String;
    const/4 v7, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 4906
    .local v14, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 4946
    sget-object v5, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Multiple entries in table "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for key "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4947
    const-wide/16 v21, -0x1

    .line 4951
    .local v21, rowId:J
    :cond_5
    :goto_1
    if-eqz v14, :cond_6

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 4954
    :cond_6
    if-eqz p10, :cond_2

    if-nez v17, :cond_2

    .line 4955
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p10

    move-object/from16 v1, p6

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 4909
    .end local v21           #rowId:J
    :pswitch_0
    :try_start_1
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 4910
    .local v20, otherValues:Landroid/content/ContentValues;
    move-object/from16 v0, v20

    move-object/from16 v1, p3

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4911
    move-object/from16 v0, v20

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4912
    const-string v5, "duration"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v21

    .line 4913
    .restart local v21       #rowId:J
    if-eqz p7, :cond_7

    if-eqz v16, :cond_7

    if-nez v17, :cond_7

    .line 4915
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    move-wide/from16 v3, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/media/MediaProvider;->makeThumbAsync(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    .line 4917
    :cond_7
    const-wide/16 v5, 0x0

    cmp-long v5, v21, v5

    if-lez v5, :cond_5

    .line 4918
    invoke-virtual/range {p11 .. p11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    const/16 v7, 0x18

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    .line 4919
    .local v24, volume:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://media/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/audio/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v21

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    .line 4920
    .local v23, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 4951
    .end local v20           #otherValues:Landroid/content/ContentValues;
    .end local v21           #rowId:J
    .end local v23           #uri:Landroid/net/Uri;
    .end local v24           #volume:Ljava/lang/String;
    :catchall_0
    move-exception v5

    if-eqz v14, :cond_8

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v5

    .line 4926
    :pswitch_1
    :try_start_2
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4927
    const/4 v5, 0x0

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 4931
    .restart local v21       #rowId:J
    const/4 v5, 0x2

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 4932
    .local v15, currentFancyName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1, v15}, Lcom/android/providers/media/MediaProvider;->makeBestName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 4933
    .local v13, bestName:Ljava/lang/String;
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 4935
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 4936
    .local v19, newValues:Landroid/content/ContentValues;
    move-object/from16 v0, v19

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4937
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rowid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v21

    long-to-int v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4938
    invoke-virtual/range {p11 .. p11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    const/16 v7, 0x18

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    .line 4939
    .restart local v24       #volume:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://media/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/audio/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v21

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    .line 4940
    .restart local v23       #uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 4906
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getKeyIdForName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)J
    .locals 27
    .parameter "db"
    .parameter "table"
    .parameter "keyField"
    .parameter
    .parameter
    .parameter "cacheName"
    .parameter "path"
    .parameter "albumHash"
    .parameter "artist"
    .parameter
    .parameter "srcuri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/net/Uri;",
            ")J"
        }
    .end annotation

    .prologue
    .line 4761
    .local p4, nameField:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, rawName:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p10, cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-eqz p5, :cond_0

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 4762
    :cond_0
    const-wide/16 v23, -0x1

    .line 4846
    :cond_1
    :goto_0
    return-wide v23

    .line 4764
    :cond_2
    const/4 v5, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/provider/MediaStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 4766
    .local v19, k:Ljava/lang/String;
    if-nez v19, :cond_3

    .line 4767
    const-wide/16 v23, -0x1

    goto :goto_0

    .line 4769
    :cond_3
    const-string v5, "albums"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    .line 4770
    .local v17, isAlbum:Z
    const-string v5, "<unknown>"

    const/4 v6, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 4778
    .local v18, isUnknown:Z
    if-eqz v17, :cond_4

    .line 4779
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p8

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 4780
    if-eqz v18, :cond_4

    .line 4781
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p9

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 4785
    :cond_4
    const/4 v5, 0x1

    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v19, v9, v5

    .line 4786
    .local v9, selargs:[Ljava/lang/String;
    const/4 v7, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 4789
    .local v14, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 4835
    sget-object v5, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Multiple entries in table "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for key "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4836
    const-wide/16 v23, -0x1

    .line 4840
    .local v23, rowId:J
    :cond_5
    :goto_1
    if-eqz v14, :cond_6

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 4843
    :cond_6
    if-eqz p10, :cond_1

    if-nez v18, :cond_1

    .line 4844
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p10

    move-object/from16 v1, p6

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 4791
    .end local v23           #rowId:J
    :pswitch_0
    :try_start_1
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 4792
    .local v22, otherValues:Landroid/content/ContentValues;
    move-object/from16 v0, v22

    move-object/from16 v1, p3

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4793
    const/16 v16, 0x0

    .local v16, i:I
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v20

    .local v20, n:I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_7

    .line 4794
    move-object/from16 v0, p4

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4793
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 4797
    :cond_7
    if-eqz p7, :cond_8

    if-eqz v17, :cond_8

    if-nez v18, :cond_8

    .line 4798
    const-string v5, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v10, 0x3e8

    div-long/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4801
    :cond_8
    const-string v5, "duration"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v23

    .line 4802
    .restart local v23       #rowId:J
    if-eqz p7, :cond_9

    if-eqz v17, :cond_9

    if-nez v18, :cond_9

    .line 4804
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    move-wide/from16 v3, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/media/MediaProvider;->makeThumbAsync(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    .line 4806
    :cond_9
    const-wide/16 v5, 0x0

    cmp-long v5, v23, v5

    if-lez v5, :cond_5

    .line 4807
    invoke-virtual/range {p11 .. p11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    const/16 v7, 0x18

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    .line 4808
    .local v26, volume:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://media/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/audio/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v23

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    .line 4809
    .local v25, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 4840
    .end local v16           #i:I
    .end local v20           #n:I
    .end local v22           #otherValues:Landroid/content/ContentValues;
    .end local v23           #rowId:J
    .end local v25           #uri:Landroid/net/Uri;
    .end local v26           #volume:Ljava/lang/String;
    :catchall_0
    move-exception v5

    if-eqz v14, :cond_a

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v5

    .line 4815
    :pswitch_1
    :try_start_2
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4816
    const/4 v5, 0x0

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 4820
    .restart local v23       #rowId:J
    const/4 v5, 0x2

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 4821
    .local v15, currentFancyName:Ljava/lang/String;
    const/4 v5, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v15}, Lcom/android/providers/media/MediaProvider;->makeBestName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 4822
    .local v13, bestName:Ljava/lang/String;
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 4824
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 4825
    .local v21, newValues:Landroid/content/ContentValues;
    const/4 v5, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4826
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rowid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v23

    long-to-int v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4827
    invoke-virtual/range {p11 .. p11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    const/16 v7, 0x18

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    .line 4828
    .restart local v26       #volume:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://media/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/audio/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v23

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    .line 4829
    .restart local v25       #uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 4789
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getObjectReferences(Landroid/database/sqlite/SQLiteDatabase;I)Landroid/database/Cursor;
    .locals 12
    .parameter "db"
    .parameter "handle"

    .prologue
    const/4 v0, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 3193
    const-string v1, "files"

    sget-object v2, Lcom/android/providers/media/MediaProvider;->mMediaTableColumns:[Ljava/lang/String;

    const-string v3, "_id=?"

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3197
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3198
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 3199
    .local v10, playlistId:J
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 3200
    .local v9, mediaType:I
    const/4 v0, 0x4

    if-eq v9, v0, :cond_1

    .line 3208
    if-eqz v8, :cond_0

    .line 3209
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3212
    .end local v9           #mediaType:I
    .end local v10           #playlistId:J
    :cond_0
    :goto_0
    return-object v5

    .line 3204
    .restart local v9       #mediaType:I
    .restart local v10       #playlistId:J
    :cond_1
    :try_start_1
    const-string v0, "SELECT audio_id FROM audio_playlists_map WHERE playlist_id=? ORDER BY play_order"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 3208
    if-eqz v8, :cond_0

    .line 3209
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3208
    .end local v9           #mediaType:I
    .end local v10           #playlistId:J
    :cond_2
    if-eqz v8, :cond_0

    .line 3209
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3208
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 3209
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private getParent(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 18
    .parameter "db"
    .parameter "path"

    .prologue
    .line 2876
    const/16 v3, 0x2f

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v16

    .line 2877
    .local v16, lastSlash:I
    if-lez v16, :cond_8

    .line 2878
    const/4 v3, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 2879
    .local v17, parentPath:Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    sget-object v3, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    array-length v3, v3

    if-ge v13, v3, :cond_2

    .line 2880
    sget-object v3, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    aget-object v3, v3, v13

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2881
    const-wide/16 v14, 0x0

    .line 2917
    .end local v13           #i:I
    .end local v17           #parentPath:Ljava/lang/String;
    :cond_0
    :goto_1
    return-wide v14

    .line 2879
    .restart local v13       #i:I
    .restart local v17       #parentPath:Ljava/lang/String;
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 2884
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/MediaProvider;->mDirectoryCache:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    .line 2885
    .local v12, cid:Ljava/lang/Long;
    if-eqz v12, :cond_3

    .line 2886
    sget-object v3, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Returning cached entry for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2887
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    goto :goto_1

    .line 2894
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/providers/media/MediaProvider;->mCaseInsensitivePaths:Z

    if-eqz v3, :cond_5

    const-string v6, "_data LIKE ?AND format=12289"

    .line 2898
    .local v6, selection:Ljava/lang/String;
    :goto_2
    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v17, v7, v3

    .line 2899
    .local v7, selargs:[Ljava/lang/String;
    const-string v4, "files"

    sget-object v5, Lcom/android/providers/media/MediaProvider;->sIdOnlyColumn:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2902
    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_4

    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_6

    .line 2904
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/providers/media/MediaProvider;->insertDirectory(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v14

    .line 2905
    .local v14, id:J
    sget-object v3, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inserted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2911
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/MediaProvider;->mDirectoryCache:Ljava/util/HashMap;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2914
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 2894
    .end local v6           #selection:Ljava/lang/String;
    .end local v7           #selargs:[Ljava/lang/String;
    .end local v11           #c:Landroid/database/Cursor;
    .end local v14           #id:J
    :cond_5
    const-string v6, "_data=?"

    goto :goto_2

    .line 2907
    .restart local v6       #selection:Ljava/lang/String;
    .restart local v7       #selargs:[Ljava/lang/String;
    .restart local v11       #c:Landroid/database/Cursor;
    :cond_6
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2908
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 2909
    .restart local v14       #id:J
    sget-object v3, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Queried "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 2914
    .end local v14           #id:J
    :catchall_0
    move-exception v3

    if-eqz v11, :cond_7

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v3

    .line 2917
    .end local v6           #selection:Ljava/lang/String;
    .end local v7           #selargs:[Ljava/lang/String;
    .end local v11           #c:Landroid/database/Cursor;
    .end local v12           #cid:Ljava/lang/Long;
    .end local v13           #i:I
    .end local v17           #parentPath:Ljava/lang/String;
    :cond_8
    const-wide/16 v14, 0x0

    goto/16 :goto_1
.end method

.method private getStorageId(Ljava/lang/String;)I
    .locals 5
    .parameter "path"

    .prologue
    .line 2922
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 2923
    sget-object v3, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    aget-object v2, v3, v0

    .line 2924
    .local v2, test:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2925
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 2926
    .local v1, length:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_1

    .line 2927
    :cond_0
    invoke-static {v0}, Landroid/mtp/MtpStorage;->getStorageId(I)I

    move-result v3

    .line 2932
    .end local v1           #length:I
    .end local v2           #test:Ljava/lang/String;
    :goto_1
    return v3

    .line 2922
    .restart local v2       #test:Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2932
    .end local v2           #test:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/mtp/MtpStorage;->getStorageId(I)I

    move-result v3

    goto :goto_1
.end method

.method private getTableAndWhere(Landroid/net/Uri;ILjava/lang/String;Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;)V
    .locals 5
    .parameter "uri"
    .parameter "match"
    .parameter "userWhere"
    .parameter "out"

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x3

    .line 3693
    const/4 v0, 0x0

    .line 3694
    .local v0, where:Ljava/lang/String;
    sparse-switch p2, :sswitch_data_0

    .line 3815
    invoke-static {p1, p2, v0, p4}, Lcom/android/providers/media/BlurMusicStore;->getTableAndWhereForUpdate(Landroid/net/Uri;ILjava/lang/String;Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3816
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown or unsupported URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3696
    :sswitch_0
    const-string v1, "files"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 3697
    const-string v0, "media_type=1"

    .line 3823
    :cond_0
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3824
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3825
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    .line 3832
    :goto_1
    return-void

    .line 3701
    :sswitch_1
    const-string v1, "files"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 3702
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3703
    goto :goto_0

    .line 3706
    :sswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3708
    :sswitch_3
    const-string v1, "thumbnails"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto :goto_0

    .line 3712
    :sswitch_4
    const-string v1, "files"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 3713
    const-string v0, "media_type=2"

    .line 3714
    goto :goto_0

    .line 3717
    :sswitch_5
    const-string v1, "files"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 3718
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3719
    goto/16 :goto_0

    .line 3722
    :sswitch_6
    const-string v1, "audio_genres"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 3723
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3724
    goto/16 :goto_0

    .line 3727
    :sswitch_7
    const-string v1, "audio_genres"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 3728
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND genre_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3730
    goto/16 :goto_0

    .line 3733
    :sswitch_8
    const-string v1, "audio_playlists"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 3734
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3735
    goto/16 :goto_0

    .line 3738
    :sswitch_9
    const-string v1, "audio_playlists"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 3739
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND playlists_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3741
    goto/16 :goto_0

    .line 3744
    :sswitch_a
    const-string v1, "audio_genres"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto/16 :goto_0

    .line 3748
    :sswitch_b
    const-string v1, "audio_genres"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 3749
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3750
    goto/16 :goto_0

    .line 3753
    :sswitch_c
    const-string v1, "audio_genres"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 3754
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "genre_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3755
    goto/16 :goto_0

    .line 3758
    :sswitch_d
    const-string v1, "files"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 3759
    const-string v0, "media_type=4"

    .line 3760
    goto/16 :goto_0

    .line 3763
    :sswitch_e
    const-string v1, "files"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 3764
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3765
    goto/16 :goto_0

    .line 3768
    :sswitch_f
    const-string v1, "audio_playlists_map"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 3769
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playlist_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3770
    goto/16 :goto_0

    .line 3773
    :sswitch_10
    const-string v1, "audio_playlists_map"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 3774
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playlist_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND _id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3776
    goto/16 :goto_0

    .line 3780
    :sswitch_11
    const-string v1, "album_art"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto/16 :goto_0

    .line 3785
    :sswitch_12
    const-string v1, "album_art"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 3786
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "album_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3787
    goto/16 :goto_0

    .line 3790
    :sswitch_13
    const-string v1, "files"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 3791
    const-string v0, "media_type=3"

    .line 3792
    goto/16 :goto_0

    .line 3795
    :sswitch_14
    const-string v1, "files"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 3796
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3797
    goto/16 :goto_0

    .line 3800
    :sswitch_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3802
    :sswitch_16
    const-string v1, "videothumbnails"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto/16 :goto_0

    .line 3807
    :sswitch_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3810
    :sswitch_18
    const-string v1, "files"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto/16 :goto_0

    .line 3827
    :cond_1
    iput-object p3, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    goto/16 :goto_1

    .line 3830
    :cond_2
    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    goto/16 :goto_1

    .line 3694
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x64 -> :sswitch_4
        0x65 -> :sswitch_5
        0x66 -> :sswitch_6
        0x67 -> :sswitch_7
        0x68 -> :sswitch_8
        0x69 -> :sswitch_9
        0x6a -> :sswitch_a
        0x6b -> :sswitch_b
        0x6c -> :sswitch_c
        0x6e -> :sswitch_d
        0x6f -> :sswitch_e
        0x70 -> :sswitch_f
        0x71 -> :sswitch_10
        0x77 -> :sswitch_11
        0x78 -> :sswitch_12
        0xc8 -> :sswitch_13
        0xc9 -> :sswitch_14
        0xca -> :sswitch_16
        0xcb -> :sswitch_15
        0x2bc -> :sswitch_18
        0x2bd -> :sswitch_17
        0x2be -> :sswitch_18
        0x2bf -> :sswitch_17
    .end sparse-switch
.end method

.method private getThumb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JLandroid/net/Uri;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .parameter "db"
    .parameter "path"
    .parameter "album_id"
    .parameter "albumart_uri"

    .prologue
    .line 4617
    new-instance v0, Lcom/android/providers/media/MediaProvider$ThumbData;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/providers/media/MediaProvider$ThumbData;-><init>(Lcom/android/providers/media/MediaProvider;Lcom/android/providers/media/MediaProvider$1;)V

    .line 4618
    .local v0, d:Lcom/android/providers/media/MediaProvider$ThumbData;
    iput-object p1, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 4619
    iput-object p2, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->path:Ljava/lang/String;

    .line 4620
    iput-wide p3, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->album_id:J

    .line 4621
    iput-object p5, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->albumart_uri:Landroid/net/Uri;

    .line 4623
    const/4 v1, 0x0

    .line 4625
    .local v1, rel:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/providers/media/MediaProvider;->makeThumbInternal(Lcom/android/providers/media/MediaProvider$ThumbData;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4628
    :goto_0
    return-object v1

    .line 4626
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private insertDirectory(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 9
    .parameter "db"
    .parameter "path"

    .prologue
    .line 2861
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2862
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "format"

    const/16 v5, 0x3001

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2863
    const-string v4, "_data"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2864
    const-string v4, "parent"

    invoke-direct {p0, p1, p2}, Lcom/android/providers/media/MediaProvider;->getParent(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2865
    const-string v4, "storage_id"

    invoke-direct {p0, p2}, Lcom/android/providers/media/MediaProvider;->getStorageId(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2866
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2867
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2868
    const-string v4, "date_modified"

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2870
    :cond_0
    const-string v4, "files"

    const-string v5, "date_modified"

    invoke-virtual {p1, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 2871
    .local v1, rowId:J
    invoke-direct {p0, v1, v2}, Lcom/android/providers/media/MediaProvider;->sendObjectAdded(J)V

    .line 2872
    return-wide v1
.end method

.method private insertFile(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/net/Uri;Landroid/content/ContentValues;IZ)J
    .locals 53
    .parameter "database"
    .parameter "uri"
    .parameter "initialValues"
    .parameter "mediaType"
    .parameter "notify"

    .prologue
    .line 2937
    invoke-virtual/range {p1 .. p1}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 2938
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    const/16 v51, 0x0

    .line 2940
    .local v51, values:Landroid/content/ContentValues;
    packed-switch p4, :pswitch_data_0

    .line 3055
    :goto_0
    if-nez v51, :cond_0

    .line 3056
    new-instance v51, Landroid/content/ContentValues;

    .end local v51           #values:Landroid/content/ContentValues;
    move-object/from16 v0, v51

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 3060
    .restart local v51       #values:Landroid/content/ContentValues;
    :cond_0
    const-string v3, "_data"

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3061
    .local v10, path:Ljava/lang/String;
    if-eqz v10, :cond_1

    .line 3062
    move-object/from16 v0, v51

    invoke-static {v10, v0}, Lcom/android/providers/media/MediaProvider;->computeBucketValues(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 3064
    :cond_1
    const-string v3, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v11, 0x3e8

    div-long/2addr v5, v11

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v51

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3066
    const-wide/16 v43, 0x0

    .line 3067
    .local v43, rowId:J
    const-string v3, "media_scanner_new_object_id"

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v37

    .line 3069
    .local v37, i:Ljava/lang/Integer;
    if-eqz v37, :cond_2

    .line 3070
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v43, v0

    .line 3071
    new-instance v52, Landroid/content/ContentValues;

    move-object/from16 v0, v52

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 3072
    .end local v51           #values:Landroid/content/ContentValues;
    .local v52, values:Landroid/content/ContentValues;
    const-string v3, "media_scanner_new_object_id"

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    move-object/from16 v51, v52

    .line 3075
    .end local v52           #values:Landroid/content/ContentValues;
    .restart local v51       #values:Landroid/content/ContentValues;
    :cond_2
    const-string v3, "title"

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 3076
    .local v50, title:Ljava/lang/String;
    if-nez v50, :cond_3

    if-eqz v10, :cond_3

    .line 3078
    invoke-static {v10}, Landroid/media/MediaFile;->getFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 3080
    :cond_3
    const-string v3, "title"

    move-object/from16 v0, v51

    move-object/from16 v1, v50

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3082
    const-string v3, "mime_type"

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 3083
    .local v38, mimeType:Ljava/lang/String;
    const-string v3, "format"

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v36

    .line 3084
    .local v36, formatObject:Ljava/lang/Integer;
    if-nez v36, :cond_16

    const/16 v35, 0x0

    .line 3085
    .local v35, format:I
    :goto_1
    if-nez v35, :cond_4

    .line 3086
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3088
    const/4 v3, 0x4

    move/from16 v0, p4

    if-ne v0, v3, :cond_17

    .line 3089
    const-string v3, "format"

    const v5, 0xba05

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v51

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3091
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/Playlists/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "name"

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3093
    const-string v3, "_data"

    move-object/from16 v0, v51

    invoke-virtual {v0, v3, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3094
    const-string v3, "parent"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v10}, Lcom/android/providers/media/MediaProvider;->getParent(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v51

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3096
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/providers/media/MediaProvider;->ensureFileExists(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 3097
    sget-object v3, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error create playlist folder or file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3106
    :cond_4
    :goto_2
    if-eqz v35, :cond_5

    .line 3107
    const-string v3, "format"

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v51

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3108
    if-nez v38, :cond_5

    .line 3109
    invoke-static/range {v35 .. v35}, Landroid/media/MediaFile;->getMimeTypeForFormatCode(I)Ljava/lang/String;

    move-result-object v38

    .line 3113
    :cond_5
    if-nez v38, :cond_6

    if-eqz v10, :cond_6

    .line 3114
    invoke-static {v10}, Landroid/media/MediaFile;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 3116
    :cond_6
    if-eqz v38, :cond_7

    .line 3117
    const-string v3, "mime_type"

    move-object/from16 v0, v51

    move-object/from16 v1, v38

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3119
    if-nez p4, :cond_7

    invoke-static {v10}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 3120
    invoke-static/range {v38 .. v38}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v34

    .line 3121
    .local v34, fileType:I
    invoke-static/range {v34 .. v34}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 3122
    const/16 p4, 0x2

    .line 3132
    .end local v34           #fileType:I
    :cond_7
    :goto_3
    const-string v3, "media_type"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v51

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3134
    const-wide/16 v5, 0x0

    cmp-long v3, v43, v5

    if-nez v3, :cond_23

    .line 3135
    const/4 v3, 0x4

    move/from16 v0, p4

    if-ne v0, v3, :cond_1c

    .line 3136
    const-string v3, "name"

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 3137
    .local v39, name:Ljava/lang/String;
    if-nez v39, :cond_1d

    if-nez v10, :cond_1d

    .line 3139
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "no name was provided when inserting abstract playlist"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2942
    .end local v10           #path:Ljava/lang/String;
    .end local v35           #format:I
    .end local v36           #formatObject:Ljava/lang/Integer;
    .end local v37           #i:Ljava/lang/Integer;
    .end local v38           #mimeType:Ljava/lang/String;
    .end local v39           #name:Ljava/lang/String;
    .end local v43           #rowId:J
    .end local v50           #title:Ljava/lang/String;
    :pswitch_0
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    const-string v5, ".jpg"

    const-string v6, "DCIM/Camera"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v3, v1, v5, v6}, Lcom/android/providers/media/MediaProvider;->ensureFile(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v51

    .line 2945
    const-string v3, "datetaken"

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "datetaken"

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2947
    :cond_8
    const-string v3, "datetaken"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v51

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2950
    :cond_9
    const-string v3, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v11, 0x3e8

    div-long/2addr v5, v11

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v51

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2951
    const-string v3, "_data"

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 2952
    .local v32, data:Ljava/lang/String;
    const-string v3, "_display_name"

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 2953
    move-object/from16 v0, v32

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lcom/android/providers/media/MediaProvider;->computeDisplayName(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 2955
    :cond_a
    invoke-static/range {v51 .. v51}, Lcom/android/providers/media/MediaProvider;->computeTakenTime(Landroid/content/ContentValues;)V

    goto/16 :goto_0

    .line 2965
    .end local v32           #data:Ljava/lang/String;
    :pswitch_1
    new-instance v51, Landroid/content/ContentValues;

    .end local v51           #values:Landroid/content/ContentValues;
    move-object/from16 v0, v51

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 2967
    .restart local v51       #values:Landroid/content/ContentValues;
    const-string v3, "album_artist"

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 2968
    .local v28, albumartist:Ljava/lang/String;
    const-string v3, "compilation"

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 2969
    .local v31, compilation:Ljava/lang/String;
    const-string v3, "compilation"

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2973
    const-string v3, "artist"

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v46

    .line 2974
    .local v46, so:Ljava/lang/Object;
    if-nez v46, :cond_d

    const-string v8, ""

    .line 2975
    .local v8, s:Ljava/lang/String;
    :goto_4
    const-string v3, "artist"

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2977
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mArtistCache:Ljava/util/HashMap;

    .line 2978
    .local v13, artistCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const-string v3, "_data"

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2979
    .restart local v10       #path:Ljava/lang/String;
    monitor-enter v13

    .line 2980
    :try_start_0
    invoke-virtual {v13, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Ljava/lang/Long;

    .line 2981
    .local v49, temp:Ljava/lang/Long;
    if-nez v49, :cond_e

    .line 2982
    const-string v5, "artists"

    const-string v6, "artist_key"

    const-string v7, "artist"

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v3, p0

    move-object v9, v8

    move-object/from16 v14, p2

    invoke-direct/range {v3 .. v14}, Lcom/android/providers/media/MediaProvider;->getKeyIdForName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)J

    move-result-wide v29

    .line 2987
    .local v29, artistRowId:J
    :goto_5
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2988
    move-object/from16 v23, v8

    .line 2991
    .local v23, artist:Ljava/lang/String;
    const-string v3, "album"

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v46

    .line 2992
    if-nez v46, :cond_f

    const-string v8, ""

    .line 2993
    :goto_6
    const-string v3, "album"

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2995
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mAlbumCache:Ljava/util/HashMap;

    move-object/from16 v24, v0

    .line 2996
    .local v24, albumCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    monitor-enter v24

    .line 2997
    const/16 v22, 0x0

    .line 2998
    .local v22, albumhash:I
    if-eqz v28, :cond_10

    .line 2999
    :try_start_1
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->hashCode()I

    move-result v22

    .line 3005
    :cond_b
    :goto_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 3006
    .local v20, cacheName:Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v49

    .end local v49           #temp:Ljava/lang/Long;
    check-cast v49, Ljava/lang/Long;

    .line 3007
    .restart local v49       #temp:Ljava/lang/Long;
    if-nez v49, :cond_12

    .line 3009
    const-string v3, "album_artist"

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v46

    .line 3010
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 3011
    .local v18, nameField:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 3012
    .local v19, rawNameField:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "album"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3013
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3014
    if-eqz v46, :cond_c

    .line 3015
    const-string v3, "artist"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3016
    invoke-virtual/range {v46 .. v46}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3018
    :cond_c
    const-string v16, "albums"

    const-string v17, "album_key"

    move-object/from16 v14, p0

    move-object v15, v4

    move-object/from16 v21, v10

    move-object/from16 v25, p2

    invoke-direct/range {v14 .. v25}, Lcom/android/providers/media/MediaProvider;->getKeyIdForName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)J

    move-result-wide v26

    .line 3024
    .end local v18           #nameField:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19           #rawNameField:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v26, albumRowId:J
    :goto_8
    monitor-exit v24
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3027
    const-string v3, "artist_id"

    move-wide/from16 v0, v29

    long-to-int v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v51

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3028
    const-string v3, "album_id"

    move-wide/from16 v0, v26

    long-to-int v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v51

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3029
    const-string v3, "title"

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 3030
    .local v46, so:Ljava/lang/String;
    if-nez v46, :cond_13

    const-string v8, ""

    .line 3031
    :goto_9
    const-string v3, "title_key"

    invoke-static {v8}, Landroid/provider/MediaStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v51

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3034
    const-string v3, "title"

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 3035
    const-string v3, "title"

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v51

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3037
    const-string v3, "_data"

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v51

    invoke-static {v3, v0}, Lcom/android/providers/media/MediaProvider;->computeDisplayName(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto/16 :goto_0

    .line 2974
    .end local v8           #s:Ljava/lang/String;
    .end local v10           #path:Ljava/lang/String;
    .end local v13           #artistCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v20           #cacheName:Ljava/lang/String;
    .end local v22           #albumhash:I
    .end local v23           #artist:Ljava/lang/String;
    .end local v24           #albumCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v26           #albumRowId:J
    .end local v29           #artistRowId:J
    .end local v49           #temp:Ljava/lang/Long;
    .local v46, so:Ljava/lang/Object;
    :cond_d
    invoke-virtual/range {v46 .. v46}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4

    .line 2985
    .restart local v8       #s:Ljava/lang/String;
    .restart local v10       #path:Ljava/lang/String;
    .restart local v13       #artistCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v49       #temp:Ljava/lang/Long;
    :cond_e
    :try_start_2
    invoke-virtual/range {v49 .. v49}, Ljava/lang/Long;->longValue()J

    move-result-wide v29

    .restart local v29       #artistRowId:J
    goto/16 :goto_5

    .line 2987
    .end local v29           #artistRowId:J
    .end local v49           #temp:Ljava/lang/Long;
    :catchall_0
    move-exception v3

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 2992
    .restart local v23       #artist:Ljava/lang/String;
    .restart local v29       #artistRowId:J
    .restart local v49       #temp:Ljava/lang/Long;
    :cond_f
    invoke-virtual/range {v46 .. v46}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_6

    .line 3000
    .restart local v22       #albumhash:I
    .restart local v24       #albumCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_10
    if-eqz v31, :cond_11

    :try_start_3
    const-string v3, "1"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 3003
    :cond_11
    const/4 v3, 0x0

    const/16 v5, 0x2f

    invoke-virtual {v10, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {v10, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v22

    goto/16 :goto_7

    .line 3022
    .restart local v20       #cacheName:Ljava/lang/String;
    :cond_12
    invoke-virtual/range {v49 .. v49}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    .restart local v26       #albumRowId:J
    goto/16 :goto_8

    .line 3024
    .end local v20           #cacheName:Ljava/lang/String;
    .end local v26           #albumRowId:J
    .end local v49           #temp:Ljava/lang/Long;
    :catchall_1
    move-exception v3

    monitor-exit v24
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 3030
    .restart local v20       #cacheName:Ljava/lang/String;
    .restart local v26       #albumRowId:J
    .local v46, so:Ljava/lang/String;
    .restart local v49       #temp:Ljava/lang/Long;
    :cond_13
    invoke-virtual/range {v46 .. v46}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_9

    .line 3042
    .end local v8           #s:Ljava/lang/String;
    .end local v10           #path:Ljava/lang/String;
    .end local v13           #artistCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v20           #cacheName:Ljava/lang/String;
    .end local v22           #albumhash:I
    .end local v23           #artist:Ljava/lang/String;
    .end local v24           #albumCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v26           #albumRowId:J
    .end local v28           #albumartist:Ljava/lang/String;
    .end local v29           #artistRowId:J
    .end local v31           #compilation:Ljava/lang/String;
    .end local v46           #so:Ljava/lang/String;
    .end local v49           #temp:Ljava/lang/Long;
    :pswitch_2
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    const-string v5, ".3gp"

    const-string v6, "video"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v3, v1, v5, v6}, Lcom/android/providers/media/MediaProvider;->ensureFile(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v51

    .line 3044
    const-string v3, "datetaken"

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    const-string v3, "datetaken"

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 3046
    :cond_14
    const-string v3, "datetaken"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v51

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3048
    :cond_15
    const-string v3, "_data"

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 3049
    .restart local v32       #data:Ljava/lang/String;
    move-object/from16 v0, v32

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lcom/android/providers/media/MediaProvider;->computeDisplayName(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 3050
    invoke-static/range {v51 .. v51}, Lcom/android/providers/media/MediaProvider;->computeTakenTime(Landroid/content/ContentValues;)V

    goto/16 :goto_0

    .line 3084
    .end local v32           #data:Ljava/lang/String;
    .restart local v10       #path:Ljava/lang/String;
    .restart local v36       #formatObject:Ljava/lang/Integer;
    .restart local v37       #i:Ljava/lang/Integer;
    .restart local v38       #mimeType:Ljava/lang/String;
    .restart local v43       #rowId:J
    .restart local v50       #title:Ljava/lang/String;
    :cond_16
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v35

    goto/16 :goto_1

    .line 3100
    .restart local v35       #format:I
    :cond_17
    sget-object v3, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v5, "path is empty in insertFile()"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 3103
    :cond_18
    move-object/from16 v0, v38

    invoke-static {v10, v0}, Landroid/media/MediaFile;->getFormatCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v35

    goto/16 :goto_2

    .line 3123
    .restart local v34       #fileType:I
    :cond_19
    invoke-static/range {v34 .. v34}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 3124
    const/16 p4, 0x3

    goto/16 :goto_3

    .line 3125
    :cond_1a
    invoke-static/range {v34 .. v34}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 3126
    const/16 p4, 0x1

    goto/16 :goto_3

    .line 3127
    :cond_1b
    invoke-static/range {v34 .. v34}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3128
    const/16 p4, 0x4

    goto/16 :goto_3

    .line 3143
    .end local v34           #fileType:I
    :cond_1c
    if-nez v10, :cond_1d

    .line 3146
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "no path was provided when inserting new file"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3152
    :cond_1d
    if-eqz v10, :cond_1f

    .line 3153
    new-instance v33, Ljava/io/File;

    move-object/from16 v0, v33

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3154
    .local v33, file:Ljava/io/File;
    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 3155
    const-string v3, "date_modified"

    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    const-wide/16 v11, 0x3e8

    div-long/2addr v5, v11

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v51

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3157
    const-string v3, "_size"

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v45

    .line 3158
    .local v45, size:Ljava/lang/Long;
    if-eqz v45, :cond_1e

    invoke-virtual/range {v45 .. v45}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v11, 0x0

    cmp-long v3, v5, v11

    if-gtz v3, :cond_1f

    .line 3159
    :cond_1e
    const-string v3, "_size"

    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v51

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3165
    .end local v33           #file:Ljava/io/File;
    .end local v45           #size:Ljava/lang/Long;
    :cond_1f
    const-string v3, "parent"

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v40

    .line 3166
    .local v40, parent:Ljava/lang/Long;
    if-nez v40, :cond_20

    .line 3167
    if-eqz v10, :cond_20

    .line 3168
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v10}, Lcom/android/providers/media/MediaProvider;->getParent(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v41

    .line 3169
    .local v41, parentId:J
    const-string v3, "parent"

    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v51

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3172
    .end local v41           #parentId:J
    :cond_20
    const-string v3, "storage_id"

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v47

    .line 3173
    .local v47, storage:Ljava/lang/Integer;
    if-nez v47, :cond_21

    .line 3174
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/providers/media/MediaProvider;->getStorageId(Ljava/lang/String;)I

    move-result v48

    .line 3175
    .local v48, storageId:I
    const-string v3, "storage_id"

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v51

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3178
    .end local v48           #storageId:I
    :cond_21
    const-string v3, "files"

    const-string v5, "date_modified"

    move-object/from16 v0, v51

    invoke-virtual {v4, v3, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v43

    .line 3179
    sget-object v3, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insertFile: values="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v51

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " returned: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v43

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3181
    const-wide/16 v5, 0x0

    cmp-long v3, v43, v5

    if-eqz v3, :cond_22

    if-eqz p5, :cond_22

    .line 3182
    move-object/from16 v0, p0

    move-wide/from16 v1, v43

    invoke-direct {v0, v1, v2}, Lcom/android/providers/media/MediaProvider;->sendObjectAdded(J)V

    .line 3189
    .end local v40           #parent:Ljava/lang/Long;
    .end local v47           #storage:Ljava/lang/Integer;
    :cond_22
    :goto_a
    return-wide v43

    .line 3185
    :cond_23
    const-string v3, "files"

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {v43 .. v44}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    move-object/from16 v0, v51

    invoke-virtual {v4, v3, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_a

    .line 2940
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private insertInternal(Landroid/net/Uri;ILandroid/content/ContentValues;Z)Landroid/net/Uri;
    .locals 27
    .parameter "uri"
    .parameter "match"
    .parameter "initialValues"
    .parameter "notify"

    .prologue
    .line 3333
    invoke-static {}, Lcom/motorola/providers/mediaext/MediaExtProvider;->singleton()Lcom/motorola/providers/mediaext/MediaExtProvider;

    move-result-object v4

    .line 3334
    .local v4, extProvider:Lcom/motorola/providers/mediaext/MediaExtProvider;
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/motorola/providers/mediaext/MediaExtProvider;->isExtensionUri(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3335
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v6

    if-nez v6, :cond_1

    .line 3336
    const/16 v22, 0x0

    .line 3579
    :cond_0
    :goto_0
    return-object v22

    .line 3338
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    move-object/from16 v5, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    invoke-virtual/range {v4 .. v9}, Lcom/motorola/providers/mediaext/MediaExtProvider;->insert(Lcom/android/providers/media/MediaProvider;Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v22

    .line 3340
    .local v22, newUri:Landroid/net/Uri;
    goto :goto_0

    .line 3345
    .end local v22           #newUri:Landroid/net/Uri;
    :cond_2
    invoke-static {}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->singleton()Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;

    move-result-object v5

    .line 3346
    .local v5, extnProvider:Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->isExtensionUri(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3347
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v6

    if-nez v6, :cond_3

    .line 3348
    const/16 v22, 0x0

    goto :goto_0

    .line 3350
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    move-object/from16 v6, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    invoke-virtual/range {v5 .. v10}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->insert(Lcom/android/providers/media/MediaProvider;Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v22

    .line 3352
    .restart local v22       #newUri:Landroid/net/Uri;
    goto :goto_0

    .line 3356
    .end local v22           #newUri:Landroid/net/Uri;
    :cond_4
    sget-object v6, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "insertInternal: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", initValues="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3358
    const/16 v6, 0x1f4

    move/from16 v0, p2

    if-ne v0, v6, :cond_5

    .line 3359
    const-string v6, "volume"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/providers/media/MediaProvider;->mMediaScannerVolume:Ljava/lang/String;

    .line 3360
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v22

    goto :goto_0

    .line 3363
    :cond_5
    const/16 v20, 0x0

    .line 3364
    .local v20, genre:Ljava/lang/String;
    if-eqz p3, :cond_6

    .line 3365
    const-string v6, "genre"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 3366
    const-string v6, "genre"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 3369
    :cond_6
    const/16 v22, 0x0

    .line 3370
    .restart local v22       #newUri:Landroid/net/Uri;
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v7

    .line 3371
    .local v7, database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    if-nez v7, :cond_7

    const/16 v6, 0x12c

    move/from16 v0, p2

    if-eq v0, v6, :cond_7

    const/16 v6, 0x2c1

    move/from16 v0, p2

    if-eq v0, v6, :cond_7

    .line 3372
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown URI: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3375
    :cond_7
    const/16 v6, 0x12c

    move/from16 v0, p2

    if-eq v0, v6, :cond_8

    const/16 v6, 0x2c1

    move/from16 v0, p2

    if-ne v0, v6, :cond_9

    :cond_8
    const/16 v18, 0x0

    .line 3378
    .local v18, db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_1
    sparse-switch p2, :sswitch_data_0

    .line 3572
    move/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/android/providers/media/BlurMusicStore;->insert(ILandroid/net/Uri;Landroid/content/ContentValues;Landroid/database/sqlite/SQLiteDatabase;)Landroid/net/Uri;

    move-result-object v22

    .line 3573
    if-nez v22, :cond_0

    .line 3574
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid URI "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3375
    .end local v18           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_9
    invoke-virtual {v7}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v18

    goto :goto_1

    .line 3380
    .restart local v18       #db:Landroid/database/sqlite/SQLiteDatabase;
    :sswitch_0
    const/4 v10, 0x1

    move-object/from16 v6, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move/from16 v11, p4

    invoke-direct/range {v6 .. v11}, Lcom/android/providers/media/MediaProvider;->insertFile(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/net/Uri;Landroid/content/ContentValues;IZ)J

    move-result-wide v24

    .line 3381
    .local v24, rowId:J
    const-wide/16 v10, 0x0

    cmp-long v6, v24, v10

    if-lez v6, :cond_0

    .line 3382
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-wide/from16 v0, v24

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v22

    goto/16 :goto_0

    .line 3390
    .end local v24           #rowId:J
    :sswitch_1
    iget-boolean v6, v7, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    const-string v8, ".jpg"

    const-string v10, "DCIM/.thumbnails"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v6, v1, v8, v10}, Lcom/android/providers/media/MediaProvider;->ensureFile(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v9

    .line 3393
    .local v9, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/providers/media/MediaProvider;->mTotalImageThumb:J

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/providers/media/MediaProvider;->mTotalImageThumb:J

    .line 3394
    sget-object v6, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "current image thumbnail number created successfully is:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/providers/media/MediaProvider;->mTotalImageThumb:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3396
    const-string v6, "thumbnails"

    const-string v8, "name"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v24

    .line 3397
    .restart local v24       #rowId:J
    const-wide/16 v10, 0x0

    cmp-long v6, v24, v10

    if-lez v6, :cond_0

    .line 3398
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Landroid/provider/MediaStore$Images$Thumbnails;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-wide/from16 v0, v24

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v22

    goto/16 :goto_0

    .line 3406
    .end local v9           #values:Landroid/content/ContentValues;
    .end local v24           #rowId:J
    :sswitch_2
    iget-boolean v6, v7, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    const-string v8, ".jpg"

    const-string v10, "DCIM/.thumbnails"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v6, v1, v8, v10}, Lcom/android/providers/media/MediaProvider;->ensureFile(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v9

    .line 3409
    .restart local v9       #values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/providers/media/MediaProvider;->mTotalVideoThumb:J

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/providers/media/MediaProvider;->mTotalVideoThumb:J

    .line 3410
    sget-object v6, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "current video thumbnail number created successfully is:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/providers/media/MediaProvider;->mTotalVideoThumb:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3412
    const-string v6, "videothumbnails"

    const-string v8, "name"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v24

    .line 3413
    .restart local v24       #rowId:J
    const-wide/16 v10, 0x0

    cmp-long v6, v24, v10

    if-lez v6, :cond_0

    .line 3414
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Landroid/provider/MediaStore$Video$Thumbnails;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-wide/from16 v0, v24

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v22

    goto/16 :goto_0

    .line 3421
    .end local v9           #values:Landroid/content/ContentValues;
    .end local v24           #rowId:J
    :sswitch_3
    const/4 v10, 0x2

    move-object/from16 v6, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move/from16 v11, p4

    invoke-direct/range {v6 .. v11}, Lcom/android/providers/media/MediaProvider;->insertFile(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/net/Uri;Landroid/content/ContentValues;IZ)J

    move-result-wide v24

    .line 3422
    .restart local v24       #rowId:J
    const-wide/16 v10, 0x0

    cmp-long v6, v24, v10

    if-lez v6, :cond_0

    .line 3423
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-wide/from16 v0, v24

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v22

    .line 3424
    if-eqz v20, :cond_0

    .line 3425
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/media/MediaProvider;->updateGenre(JLjava/lang/String;)V

    goto/16 :goto_0

    .line 3431
    .end local v24           #rowId:J
    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x2

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .line 3432
    .local v16, audioId:Ljava/lang/Long;
    new-instance v9, Landroid/content/ContentValues;

    move-object/from16 v0, p3

    invoke-direct {v9, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 3433
    .restart local v9       #values:Landroid/content/ContentValues;
    const-string v6, "audio_id"

    move-object/from16 v0, v16

    invoke-virtual {v9, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3434
    const-string v6, "audio_genres_map"

    const-string v8, "genre_id"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v24

    .line 3435
    .restart local v24       #rowId:J
    const-wide/16 v10, 0x0

    cmp-long v6, v24, v10

    if-lez v6, :cond_0

    .line 3436
    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v22

    goto/16 :goto_0

    .line 3442
    .end local v9           #values:Landroid/content/ContentValues;
    .end local v16           #audioId:Ljava/lang/Long;
    .end local v24           #rowId:J
    :sswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x2

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .line 3443
    .restart local v16       #audioId:Ljava/lang/Long;
    new-instance v9, Landroid/content/ContentValues;

    move-object/from16 v0, p3

    invoke-direct {v9, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 3444
    .restart local v9       #values:Landroid/content/ContentValues;
    const-string v6, "audio_id"

    move-object/from16 v0, v16

    invoke-virtual {v9, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3445
    const-string v6, "audio_playlists_map"

    const-string v8, "playlist_id"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v24

    .line 3447
    .restart local v24       #rowId:J
    const-wide/16 v10, 0x0

    cmp-long v6, v24, v10

    if-lez v6, :cond_0

    .line 3448
    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v22

    goto/16 :goto_0

    .line 3454
    .end local v9           #values:Landroid/content/ContentValues;
    .end local v16           #audioId:Ljava/lang/Long;
    .end local v24           #rowId:J
    :sswitch_6
    const-string v6, "audio_genres"

    const-string v8, "audio_id"

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v6, v8, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v24

    .line 3455
    .restart local v24       #rowId:J
    const-wide/16 v10, 0x0

    cmp-long v6, v24, v10

    if-lez v6, :cond_0

    .line 3456
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Landroid/provider/MediaStore$Audio$Genres;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-wide/from16 v0, v24

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v22

    goto/16 :goto_0

    .line 3462
    .end local v24           #rowId:J
    :sswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x3

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    .line 3463
    .local v21, genreId:Ljava/lang/Long;
    new-instance v9, Landroid/content/ContentValues;

    move-object/from16 v0, p3

    invoke-direct {v9, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 3464
    .restart local v9       #values:Landroid/content/ContentValues;
    const-string v6, "genre_id"

    move-object/from16 v0, v21

    invoke-virtual {v9, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3465
    const-string v6, "audio_genres_map"

    const-string v8, "genre_id"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v24

    .line 3466
    .restart local v24       #rowId:J
    const-wide/16 v10, 0x0

    cmp-long v6, v24, v10

    if-lez v6, :cond_0

    .line 3467
    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v22

    goto/16 :goto_0

    .line 3473
    .end local v9           #values:Landroid/content/ContentValues;
    .end local v21           #genreId:Ljava/lang/Long;
    .end local v24           #rowId:J
    :sswitch_8
    new-instance v9, Landroid/content/ContentValues;

    move-object/from16 v0, p3

    invoke-direct {v9, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 3476
    .restart local v9       #values:Landroid/content/ContentValues;
    const-string v6, "date_modified"

    invoke-virtual {v9, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    .line 3477
    .local v26, so:Ljava/lang/Object;
    if-nez v26, :cond_a

    .line 3478
    const-string v6, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v9, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3481
    :cond_a
    const-string v6, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v9, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3482
    const/4 v10, 0x4

    move-object/from16 v6, p0

    move-object/from16 v8, p1

    move/from16 v11, p4

    invoke-direct/range {v6 .. v11}, Lcom/android/providers/media/MediaProvider;->insertFile(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/net/Uri;Landroid/content/ContentValues;IZ)J

    move-result-wide v24

    .line 3483
    .restart local v24       #rowId:J
    const-wide/16 v10, 0x0

    cmp-long v6, v24, v10

    if-lez v6, :cond_0

    .line 3484
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-wide/from16 v0, v24

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v22

    goto/16 :goto_0

    .line 3491
    .end local v9           #values:Landroid/content/ContentValues;
    .end local v24           #rowId:J
    .end local v26           #so:Ljava/lang/Object;
    :sswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x3

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    .line 3492
    .local v23, playlistId:Ljava/lang/Long;
    new-instance v9, Landroid/content/ContentValues;

    move-object/from16 v0, p3

    invoke-direct {v9, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 3493
    .restart local v9       #values:Landroid/content/ContentValues;
    const-string v6, "playlist_id"

    move-object/from16 v0, v23

    invoke-virtual {v9, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3494
    const-string v6, "audio_playlists_map"

    const-string v8, "playlist_id"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v24

    .line 3495
    .restart local v24       #rowId:J
    const-wide/16 v10, 0x0

    cmp-long v6, v24, v10

    if-lez v6, :cond_0

    .line 3496
    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v22

    goto/16 :goto_0

    .line 3502
    .end local v9           #values:Landroid/content/ContentValues;
    .end local v23           #playlistId:Ljava/lang/Long;
    .end local v24           #rowId:J
    :sswitch_a
    const/4 v14, 0x3

    move-object/from16 v10, p0

    move-object v11, v7

    move-object/from16 v12, p1

    move-object/from16 v13, p3

    move/from16 v15, p4

    invoke-direct/range {v10 .. v15}, Lcom/android/providers/media/MediaProvider;->insertFile(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/net/Uri;Landroid/content/ContentValues;IZ)J

    move-result-wide v24

    .line 3503
    .restart local v24       #rowId:J
    const-wide/16 v10, 0x0

    cmp-long v6, v24, v10

    if-lez v6, :cond_0

    .line 3504
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-wide/from16 v0, v24

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v22

    goto/16 :goto_0

    .line 3511
    .end local v24           #rowId:J
    :sswitch_b
    iget-boolean v6, v7, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    if-eqz v6, :cond_b

    .line 3512
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    const-string v8, "no internal album art allowed"

    invoke-direct {v6, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3514
    :cond_b
    const/4 v9, 0x0

    .line 3516
    .restart local v9       #values:Landroid/content/ContentValues;
    const/4 v6, 0x0

    :try_start_0
    const-string v8, ""

    const-string v10, "Android/data/com.android.providers.media/albumthumbs"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v6, v1, v8, v10}, Lcom/android/providers/media/MediaProvider;->ensureFile(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 3522
    :goto_2
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/providers/media/MediaProvider;->mTotalAudioAlbumart:J

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/providers/media/MediaProvider;->mTotalAudioAlbumart:J

    .line 3523
    sget-object v6, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "current video thumbnail number created successfully is:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/providers/media/MediaProvider;->mTotalAudioAlbumart:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3525
    const-string v6, "album_art"

    const-string v8, "_data"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v24

    .line 3526
    .restart local v24       #rowId:J
    const-wide/16 v10, 0x0

    cmp-long v6, v24, v10

    if-lez v6, :cond_0

    .line 3527
    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v22

    goto/16 :goto_0

    .line 3517
    .end local v24           #rowId:J
    :catch_0
    move-exception v19

    .line 3519
    .local v19, ex:Ljava/lang/IllegalStateException;
    move-object/from16 v9, p3

    goto :goto_2

    .line 3534
    .end local v9           #values:Landroid/content/ContentValues;
    .end local v19           #ex:Ljava/lang/IllegalStateException;
    :sswitch_c
    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/providers/media/MediaProvider;->mTotalThumbCreateTime:J

    .line 3535
    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/providers/media/MediaProvider;->mTotalVideoThumb:J

    .line 3536
    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/providers/media/MediaProvider;->mTotalImageThumb:J

    .line 3537
    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/providers/media/MediaProvider;->mTotalAudioAlbumart:J

    .line 3538
    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/providers/media/MediaProvider;->mTotalAlbumartCreateTime:J

    .line 3540
    const-string v6, "name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/providers/media/MediaProvider;->attachVolume(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    goto/16 :goto_0

    .line 3543
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/providers/media/MediaProvider;->mMtpServiceConnection:Landroid/content/ServiceConnection;

    monitor-enter v8

    .line 3544
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/media/MediaProvider;->mMtpService:Lcom/android/providers/media/IMtpService;

    if-nez v6, :cond_c

    .line 3545
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v17

    .line 3547
    .local v17, context:Landroid/content/Context;
    new-instance v6, Landroid/content/Intent;

    const-class v10, Lcom/android/providers/media/MtpService;

    move-object/from16 v0, v17

    invoke-direct {v6, v0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/providers/media/MediaProvider;->mMtpServiceConnection:Landroid/content/ServiceConnection;

    const/4 v11, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v10, v11}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 3550
    .end local v17           #context:Landroid/content/Context;
    :cond_c
    monitor-exit v8

    goto/16 :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 3554
    :sswitch_e
    const/4 v14, 0x0

    move-object/from16 v10, p0

    move-object v11, v7

    move-object/from16 v12, p1

    move-object/from16 v13, p3

    move/from16 v15, p4

    invoke-direct/range {v10 .. v15}, Lcom/android/providers/media/MediaProvider;->insertFile(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/net/Uri;Landroid/content/ContentValues;IZ)J

    move-result-wide v24

    .line 3556
    .restart local v24       #rowId:J
    const-wide/16 v10, 0x0

    cmp-long v6, v24, v10

    if-lez v6, :cond_0

    .line 3557
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-wide/from16 v0, v24

    invoke-static {v6, v0, v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v22

    goto/16 :goto_0

    .line 3563
    .end local v24           #rowId:J
    :sswitch_f
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    move-object v11, v7

    move-object/from16 v12, p1

    move-object/from16 v13, p3

    invoke-direct/range {v10 .. v15}, Lcom/android/providers/media/MediaProvider;->insertFile(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/net/Uri;Landroid/content/ContentValues;IZ)J

    move-result-wide v24

    .line 3565
    .restart local v24       #rowId:J
    const-wide/16 v10, 0x0

    cmp-long v6, v24, v10

    if-lez v6, :cond_0

    .line 3566
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-wide/from16 v0, v24

    invoke-static {v6, v0, v1}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v22

    goto/16 :goto_0

    .line 3378
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x64 -> :sswitch_3
        0x66 -> :sswitch_4
        0x68 -> :sswitch_5
        0x6a -> :sswitch_6
        0x6c -> :sswitch_7
        0x6e -> :sswitch_8
        0x6f -> :sswitch_9
        0x70 -> :sswitch_9
        0x77 -> :sswitch_b
        0xc8 -> :sswitch_a
        0xca -> :sswitch_2
        0x12c -> :sswitch_c
        0x2bc -> :sswitch_e
        0x2be -> :sswitch_f
        0x2c1 -> :sswitch_d
    .end sparse-switch
.end method

.method static isInternalMediaDatabaseName(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 5033
    const-string v0, "internal.db"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5034
    const/4 v0, 0x1

    .line 5036
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isMediaDatabaseName(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    const/4 v0, 0x1

    .line 5020
    const-string v1, "internal.db"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5029
    :cond_0
    :goto_0
    return v0

    .line 5023
    :cond_1
    const-string v1, "external.db"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5026
    const-string v1, "external-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5029
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeThumbAsync(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V
    .locals 4
    .parameter "db"
    .parameter "path"
    .parameter "album_id"

    .prologue
    .line 4410
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider;->mPendingThumbs:Ljava/util/HashSet;

    monitor-enter v3

    .line 4411
    :try_start_0
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mPendingThumbs:Ljava/util/HashSet;

    invoke-virtual {v2, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4414
    monitor-exit v3

    .line 4438
    :goto_0
    return-void

    .line 4417
    :cond_0
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mPendingThumbs:Ljava/util/HashSet;

    invoke-virtual {v2, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4418
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4420
    new-instance v0, Lcom/android/providers/media/MediaProvider$ThumbData;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/providers/media/MediaProvider$ThumbData;-><init>(Lcom/android/providers/media/MediaProvider;Lcom/android/providers/media/MediaProvider$1;)V

    .line 4421
    .local v0, d:Lcom/android/providers/media/MediaProvider$ThumbData;
    iput-object p1, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 4422
    iput-object p2, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->path:Ljava/lang/String;

    .line 4423
    iput-wide p3, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->album_id:J

    .line 4424
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mAlbumArtBaseUri:Landroid/net/Uri;

    invoke-static {v2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->albumart_uri:Landroid/net/Uri;

    .line 4431
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider;->mThumbRequestStack:Ljava/util/Stack;

    monitor-enter v3

    .line 4432
    :try_start_1
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mThumbRequestStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4433
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4436
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mThumbHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4437
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 4418
    .end local v0           #d:Lcom/android/providers/media/MediaProvider$ThumbData;
    .end local v1           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 4433
    .restart local v0       #d:Lcom/android/providers/media/MediaProvider$ThumbData;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method private makeThumbInternal(Lcom/android/providers/media/MediaProvider$ThumbData;)Landroid/os/ParcelFileDescriptor;
    .locals 17
    .parameter "d"

    .prologue
    .line 4633
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->path:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/providers/media/MediaProvider;->getCompressedAlbumArt(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v9

    .line 4635
    .local v9, compressed:[B
    if-eqz v9, :cond_0

    array-length v1, v9

    if-nez v1, :cond_2

    .line 4636
    :cond_0
    const/4 v15, 0x0

    .line 4734
    :cond_1
    :goto_0
    return-object v15

    .line 4640
    :cond_2
    const/4 v6, 0x0

    .line 4641
    .local v6, width:I
    const/4 v7, 0x0

    .line 4644
    .local v7, height:I
    const/4 v8, 0x0

    .line 4645
    .local v8, bm:Landroid/graphics/Bitmap;
    const/4 v12, 0x1

    .line 4649
    .local v12, need_to_recompress:Z
    :try_start_0
    new-instance v13, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v13}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 4650
    .local v13, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v13, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 4651
    const/4 v1, 0x1

    iput v1, v13, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 4652
    const/4 v1, 0x0

    array-length v2, v9

    invoke-static {v9, v1, v2, v13}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 4655
    iget v1, v13, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    iget v1, v13, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    .line 4656
    :cond_3
    sget-object v1, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v2, "Could not get the decoded sizes. Cannot continue..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4657
    const/4 v15, 0x0

    goto :goto_0

    .line 4662
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 4663
    .local v16, r:Landroid/content/res/Resources;
    const/high16 v1, 0x7f04

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 4664
    .local v10, maximumThumbSize:I
    :goto_1
    iget v1, v13, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt v1, v10, :cond_5

    iget v1, v13, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v1, v10, :cond_6

    .line 4665
    :cond_5
    iget v1, v13, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/lit8 v1, v1, 0x2

    iput v1, v13, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 4666
    iget v1, v13, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/lit8 v1, v1, 0x2

    iput v1, v13, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 4667
    iget v1, v13, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, v13, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 4692
    .end local v10           #maximumThumbSize:I
    .end local v13           #opts:Landroid/graphics/BitmapFactory$Options;
    .end local v16           #r:Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 4695
    :goto_2
    if-eqz v12, :cond_9

    if-nez v8, :cond_9

    .line 4696
    sget-object v1, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v2, "Failed to decode. Cannot continue..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4697
    const/4 v15, 0x0

    goto :goto_0

    .line 4670
    .restart local v10       #maximumThumbSize:I
    .restart local v13       #opts:Landroid/graphics/BitmapFactory$Options;
    .restart local v16       #r:Landroid/content/res/Resources;
    :cond_6
    :try_start_1
    iget v1, v13, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 4673
    const/4 v12, 0x0

    .line 4689
    :cond_7
    :goto_3
    iget v6, v13, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 4690
    iget v7, v13, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_2

    .line 4676
    :cond_8
    const/4 v1, 0x0

    iput-boolean v1, v13, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 4677
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v13, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 4678
    const/4 v1, 0x0

    array-length v2, v9

    invoke-static {v9, v1, v2, v13}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 4680
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-nez v1, :cond_7

    .line 4681
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 4682
    .local v11, nbm:Landroid/graphics/Bitmap;
    if-eqz v11, :cond_7

    if-eq v11, v8, :cond_7

    .line 4683
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4684
    move-object v8, v11

    goto :goto_3

    .line 4700
    .end local v10           #maximumThumbSize:I
    .end local v11           #nbm:Landroid/graphics/Bitmap;
    .end local v13           #opts:Landroid/graphics/BitmapFactory$Options;
    .end local v16           #r:Landroid/content/res/Resources;
    :cond_9
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->albumart_uri:Landroid/net/Uri;

    if-nez v1, :cond_a

    .line 4704
    :try_start_2
    const-string v1, "albumthumb"

    invoke-static {v9, v1}, Landroid/os/ParcelFileDescriptor;->fromData([BLjava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v15

    goto/16 :goto_0

    .line 4712
    :cond_a
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 4714
    :try_start_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->album_id:J

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->albumart_uri:Landroid/net/Uri;

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/providers/media/MediaProvider;->getAlbumArtOutputUri(Landroid/database/sqlite/SQLiteDatabase;JLandroid/net/Uri;II)Landroid/net/Uri;

    move-result-object v14

    .line 4716
    .local v14, out:Landroid/net/Uri;
    if-eqz v14, :cond_b

    .line 4717
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v14, v9, v8}, Lcom/android/providers/media/MediaProvider;->writeAlbumArt(ZLandroid/net/Uri;[BLandroid/graphics/Bitmap;)V

    .line 4718
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/providers/media/MediaProvider;->MEDIA_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 4719
    const-string v1, "r"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v1}, Lcom/android/providers/media/MediaProvider;->openFileHelper(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v15

    .line 4720
    .local v15, pfd:Landroid/os/ParcelFileDescriptor;
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_2

    .line 4728
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 4729
    if-eqz v8, :cond_1

    .line 4730
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    .line 4728
    .end local v15           #pfd:Landroid/os/ParcelFileDescriptor;
    :cond_b
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 4729
    if-eqz v8, :cond_c

    .line 4730
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 4734
    .end local v14           #out:Landroid/net/Uri;
    :cond_c
    :goto_4
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 4723
    :catch_1
    move-exception v1

    .line 4728
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 4729
    if-eqz v8, :cond_c

    .line 4730
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_4

    .line 4725
    :catch_2
    move-exception v1

    .line 4728
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 4729
    if-eqz v8, :cond_c

    .line 4730
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_4

    .line 4728
    :catchall_0
    move-exception v1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 4729
    if-eqz v8, :cond_d

    .line 4730
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    :cond_d
    throw v1

    .line 4705
    :catch_3
    move-exception v1

    goto :goto_4
.end method

.method private matchThumbRequest(Lcom/android/providers/media/MediaThumbRequest;IJJZ)Z
    .locals 7
    .parameter "req"
    .parameter "pid"
    .parameter "id"
    .parameter "gid"
    .parameter "isVideo"

    .prologue
    const-wide/16 v5, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2035
    cmp-long v4, p3, v5

    if-nez v4, :cond_2

    move v1, v2

    .line 2036
    .local v1, cancelAllOrigId:Z
    :goto_0
    cmp-long v4, p5, v5

    if-nez v4, :cond_3

    move v0, v2

    .line 2037
    .local v0, cancelAllGroupId:Z
    :goto_1
    iget v4, p1, Lcom/android/providers/media/MediaThumbRequest;->mCallingPid:I

    if-ne v4, p2, :cond_4

    if-nez v0, :cond_0

    iget-wide v4, p1, Lcom/android/providers/media/MediaThumbRequest;->mGroupId:J

    cmp-long v4, v4, p5

    if-nez v4, :cond_4

    :cond_0
    if-nez v1, :cond_1

    iget-wide v4, p1, Lcom/android/providers/media/MediaThumbRequest;->mOrigId:J

    cmp-long v4, v4, p3

    if-nez v4, :cond_4

    :cond_1
    iget-boolean v4, p1, Lcom/android/providers/media/MediaThumbRequest;->mIsVideo:Z

    if-ne v4, p7, :cond_4

    :goto_2
    return v2

    .end local v0           #cancelAllGroupId:Z
    .end local v1           #cancelAllOrigId:Z
    :cond_2
    move v1, v3

    .line 2035
    goto :goto_0

    .restart local v1       #cancelAllOrigId:Z
    :cond_3
    move v0, v3

    .line 2036
    goto :goto_1

    .restart local v0       #cancelAllGroupId:Z
    :cond_4
    move v2, v3

    .line 2037
    goto :goto_2
.end method

.method private movePlaylistEntry(Landroid/database/sqlite/SQLiteDatabase;JII)I
    .locals 4
    .parameter "db"
    .parameter "playlist"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 4266
    if-ne p4, p5, :cond_0

    .line 4267
    const/4 v0, 0x0

    .line 4297
    :goto_0
    return v0

    .line 4269
    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 4271
    const/4 v0, 0x0

    .line 4272
    .local v0, numlines:I
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE audio_playlists_map SET play_order=-1 WHERE play_order="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND playlist_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4278
    if-ge p4, p5, :cond_1

    .line 4279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE audio_playlists_map SET play_order=play_order-1 WHERE play_order<="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND play_order>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND playlist_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4282
    sub-int v2, p5, p4

    add-int/lit8 v0, v2, 0x1

    .line 4289
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE audio_playlists_map SET play_order="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE play_order=-1 AND playlist_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4291
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 4292
    sget-object v2, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 4294
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4297
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 4284
    .end local v1           #uri:Landroid/net/Uri;
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE audio_playlists_map SET play_order=play_order+1 WHERE play_order>="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND play_order<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND playlist_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4287
    sub-int v2, p4, p5

    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    .line 4297
    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method private playlistBulkInsert(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 15
    .parameter "db"
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 2824
    new-instance v4, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v13, "audio_playlists_map"

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v13}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 2826
    .local v4, helper:Landroid/database/DatabaseUtils$InsertHelper;
    const-string v13, "audio_id"

    invoke-virtual {v4, v13}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 2827
    .local v3, audioidcolidx:I
    const-string v13, "playlist_id"

    invoke-virtual {v4, v13}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 2828
    .local v10, playlistididx:I
    const-string v13, "play_order"

    invoke-virtual {v4, v13}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 2829
    .local v12, playorderidx:I
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x3

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 2831
    .local v8, playlistId:J
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2832
    const/4 v7, 0x0

    .line 2834
    .local v7, numInserted:I
    :try_start_0
    move-object/from16 v0, p3

    array-length v6, v0

    .line 2835
    .local v6, len:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v6, :cond_0

    .line 2836
    invoke-virtual {v4}, Landroid/database/DatabaseUtils$InsertHelper;->prepareForInsert()V

    .line 2840
    aget-object v13, p3, v5

    const-string v14, "audio_id"

    invoke-virtual {v13, v14}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 2842
    .local v1, audioid:J
    invoke-virtual {v4, v3, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(IJ)V

    .line 2843
    invoke-virtual {v4, v10, v8, v9}, Landroid/database/DatabaseUtils$InsertHelper;->bind(IJ)V

    .line 2845
    aget-object v13, p3, v5

    const-string v14, "play_order"

    invoke-virtual {v13, v14}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v11

    .line 2847
    .local v11, playorder:I
    invoke-virtual {v4, v12, v11}, Landroid/database/DatabaseUtils$InsertHelper;->bind(II)V

    .line 2848
    invoke-virtual {v4}, Landroid/database/DatabaseUtils$InsertHelper;->execute()J

    .line 2835
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2850
    .end local v1           #audioid:J
    .end local v11           #playorder:I
    :cond_0
    move v7, v6

    .line 2851
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2853
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2854
    invoke-virtual {v4}, Landroid/database/DatabaseUtils$InsertHelper;->close()V

    .line 2856
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v13, v0, v14}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2857
    return v7

    .line 2853
    .end local v5           #i:I
    .end local v6           #len:I
    :catchall_0
    move-exception v13

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2854
    invoke-virtual {v4}, Landroid/database/DatabaseUtils$InsertHelper;->close()V

    throw v13
.end method

.method private queryThumbnail(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 20
    .parameter "qb"
    .parameter "uri"
    .parameter "table"
    .parameter "column"
    .parameter "hasThumbnailId"

    .prologue
    .line 2045
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2046
    if-eqz p5, :cond_0

    .line 2049
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "_id = "

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/16 v18, 0x3

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2051
    const/4 v2, 0x1

    .line 2108
    :goto_0
    return v2

    .line 2053
    :cond_0
    const-string v2, "orig_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2055
    .local v15, origId:Ljava/lang/String;
    if-nez v15, :cond_1

    .line 2057
    const/4 v2, 0x1

    goto :goto_0

    .line 2060
    :cond_1
    const-string v2, "1"

    const-string v17, "blocking"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 2061
    .local v14, needBlocking:Z
    const-string v2, "1"

    const-string v17, "cancel"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 2062
    .local v10, cancelRequest:Z
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v17

    const-string v18, "thumbnails"

    const-string v19, "media"

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v16

    .line 2066
    .local v16, origUri:Landroid/net/Uri;
    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/providers/media/MediaProvider;->waitForThumbnailReady(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2067
    sget-object v2, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v17, "original media doesn\'t exist or it\'s canceled."

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    const/4 v2, 0x0

    goto :goto_0

    .line 2069
    :cond_2
    if-eqz v10, :cond_6

    .line 2070
    const-string v2, "group_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2071
    .local v12, groupId:Ljava/lang/String;
    const-string v2, "video"

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v17

    const/16 v18, 0x1

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 2072
    .local v9, isVideo:Z
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 2073
    .local v4, pid:I
    const-wide/16 v5, -0x1

    .line 2074
    .local v5, id:J
    const-wide/16 v7, -0x1

    .line 2077
    .local v7, gid:J
    :try_start_0
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 2078
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v7

    .line 2084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 2085
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/providers/media/MediaProvider;->matchThumbRequest(Lcom/android/providers/media/MediaThumbRequest;IJJZ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;

    move-object/from16 v18, v0

    monitor-enter v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2088
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;

    sget-object v19, Lcom/android/providers/media/MediaThumbRequest$State;->CANCEL:Lcom/android/providers/media/MediaThumbRequest$State;

    move-object/from16 v0, v19

    iput-object v0, v2, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    .line 2089
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 2090
    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2092
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/media/MediaThumbRequest;

    .local v3, mtq:Lcom/android/providers/media/MediaThumbRequest;
    move-object/from16 v2, p0

    .line 2093
    invoke-direct/range {v2 .. v9}, Lcom/android/providers/media/MediaProvider;->matchThumbRequest(Lcom/android/providers/media/MediaThumbRequest;IJJZ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2094
    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2095
    :try_start_4
    sget-object v2, Lcom/android/providers/media/MediaThumbRequest$State;->CANCEL:Lcom/android/providers/media/MediaThumbRequest$State;

    iput-object v2, v3, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    .line 2096
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 2097
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2099
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v2, v3}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2102
    .end local v3           #mtq:Lcom/android/providers/media/MediaThumbRequest;
    .end local v13           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2

    .line 2079
    :catch_0
    move-exception v11

    .line 2081
    .local v11, ex:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2090
    .end local v11           #ex:Ljava/lang/NumberFormatException;
    :catchall_1
    move-exception v2

    :try_start_6
    monitor-exit v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2097
    .restart local v3       #mtq:Lcom/android/providers/media/MediaThumbRequest;
    .restart local v13       #i$:Ljava/util/Iterator;
    :catchall_2
    move-exception v2

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v2

    .line 2102
    .end local v3           #mtq:Lcom/android/providers/media/MediaThumbRequest;
    :cond_5
    monitor-exit v17
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2105
    .end local v4           #pid:I
    .end local v5           #id:J
    .end local v7           #gid:J
    .end local v9           #isVideo:Z
    .end local v12           #groupId:Ljava/lang/String;
    .end local v13           #i$:Ljava/util/Iterator;
    :cond_6
    if-eqz v15, :cond_7

    .line 2106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v17, " = "

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2108
    :cond_7
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method private static recreateAudioView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1851
    const-string v0, "DROP VIEW IF EXISTS audio"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1852
    const-string v0, "DROP TRIGGER IF EXISTS audio_delete"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1853
    const-string v0, "CREATE VIEW IF NOT EXISTS audio as SELECT * FROM audio_meta LEFT OUTER JOIN artists ON audio_meta.artist_id=artists.artist_id LEFT OUTER JOIN albums ON audio_meta.album_id=albums.album_id;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1857
    const-string v0, "CREATE TRIGGER IF NOT EXISTS audio_delete INSTEAD OF DELETE ON audio BEGIN DELETE from audio_meta where _id=old._id;DELETE from audio_playlists_map where audio_id=old._id;DELETE from audio_genres_map where audio_id=old._id;END"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1863
    return-void
.end method

.method public static recreateView(Landroid/database/sqlite/SQLiteDatabase;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "db"
    .parameter "internal"
    .parameter "viewName"
    .parameter "columeAdded"

    .prologue
    .line 803
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP VIEW IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 804
    const-string v0, "images"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE VIEW images AS SELECT _id,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_data,_size,_display_name,mime_type,title,date_added,date_modified,description,picasa_id,isprivate,latitude,longitude,datetaken,orientation,mini_thumb_magic,bucket_id,bucket_display_name,width,height,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FROM files WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "media_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 831
    :cond_0
    :goto_0
    return-void

    .line 808
    :cond_1
    const-string v0, "video"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE VIEW video AS SELECT _id,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_data,_display_name,_size,mime_type,date_added,date_modified,title,duration,artist,album,resolution,description,isprivate,tags,category,language,mini_thumb_data,latitude,longitude,datetaken,mini_thumb_magic,bucket_id,bucket_display_name,bookmark,width,height,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FROM files WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "media_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 812
    :cond_2
    const-string v0, "audio_meta"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE VIEW audio_meta AS SELECT _id,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_data,_display_name,_size,mime_type,date_added,is_drm,date_modified,title,title_key,duration,artist_id,composer,album_id,track,year,is_ringtone,is_music,is_alarm,is_notification,is_podcast,bookmark,album_artist,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FROM files WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "media_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 818
    const-string v0, "CREATE TRIGGER IF NOT EXISTS audio_meta_delete INSTEAD OF DELETE ON audio_meta BEGIN DELETE FROM files WHERE _id=old._id;END"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 823
    invoke-static {p0}, Lcom/android/providers/media/MediaProvider;->recreateAudioView(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0

    .line 824
    :cond_3
    const-string v0, "audio_playlists"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 825
    if-nez p1, :cond_0

    .line 826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE VIEW audio_playlists AS SELECT _id,_data,name,date_added,date_modified,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FROM files WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "media_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private requestMediaThumbnail(Ljava/lang/String;Landroid/net/Uri;IJ)Lcom/android/providers/media/MediaThumbRequest;
    .locals 11
    .parameter "path"
    .parameter "uri"
    .parameter "priority"
    .parameter "magic"

    .prologue
    .line 3619
    iget-object v10, p0, Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;

    monitor-enter v10

    .line 3620
    const/4 v8, 0x0

    .line 3622
    .local v8, req:Lcom/android/providers/media/MediaThumbRequest;
    :try_start_0
    new-instance v0, Lcom/android/providers/media/MediaThumbRequest;

    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/media/MediaThumbRequest;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3624
    .end local v8           #req:Lcom/android/providers/media/MediaThumbRequest;
    .local v0, req:Lcom/android/providers/media/MediaThumbRequest;
    :try_start_1
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 3626
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mThumbHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 3627
    .local v7, msg:Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 3631
    .end local v7           #msg:Landroid/os/Message;
    :goto_0
    :try_start_2
    monitor-exit v10

    return-object v0

    .line 3628
    .end local v0           #req:Lcom/android/providers/media/MediaThumbRequest;
    .restart local v8       #req:Lcom/android/providers/media/MediaThumbRequest;
    :catch_0
    move-exception v9

    move-object v0, v8

    .line 3629
    .end local v8           #req:Lcom/android/providers/media/MediaThumbRequest;
    .restart local v0       #req:Lcom/android/providers/media/MediaThumbRequest;
    .local v9, t:Ljava/lang/Throwable;
    :goto_1
    sget-object v1, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    invoke-static {v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3632
    .end local v9           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    :goto_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .end local v0           #req:Lcom/android/providers/media/MediaThumbRequest;
    .restart local v8       #req:Lcom/android/providers/media/MediaThumbRequest;
    :catchall_1
    move-exception v1

    move-object v0, v8

    .end local v8           #req:Lcom/android/providers/media/MediaThumbRequest;
    .restart local v0       #req:Lcom/android/providers/media/MediaThumbRequest;
    goto :goto_2

    .line 3628
    :catch_1
    move-exception v9

    goto :goto_1
.end method

.method private static sanityCheck(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 14
    .parameter "db"
    .parameter "fromVersion"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v3, 0x0

    .line 1830
    const-string v1, "audio_meta"

    new-array v2, v13, [Ljava/lang/String;

    const-string v0, "count(*)"

    aput-object v0, v2, v12

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1832
    .local v8, c1:Landroid/database/Cursor;
    const-string v1, "audio_meta"

    new-array v2, v13, [Ljava/lang/String;

    const-string v0, "count(distinct _data)"

    aput-object v0, v2, v12

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1834
    .local v9, c2:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1835
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1836
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1837
    .local v10, num1:I
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1838
    .local v11, num2:I
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1839
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1840
    if-eq v10, v11, :cond_0

    .line 1841
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio_meta._data column is not unique while upgrading from schema "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    const-string v0, "DELETE FROM audio_meta;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1846
    :cond_0
    return-void
.end method

.method private sendObjectAdded(J)V
    .locals 4
    .parameter "objectHandle"

    .prologue
    .line 2716
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mMtpServiceConnection:Landroid/content/ServiceConnection;

    monitor-enter v2

    .line 2717
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mMtpService:Lcom/android/providers/media/IMtpService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2719
    :try_start_1
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mMtpService:Lcom/android/providers/media/IMtpService;

    long-to-int v3, p1

    invoke-interface {v1, v3}, Lcom/android/providers/media/IMtpService;->sendObjectAdded(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2725
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 2726
    return-void

    .line 2720
    :catch_0
    move-exception v0

    .line 2721
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException in sendObjectAdded"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2722
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/providers/media/MediaProvider;->mMtpService:Lcom/android/providers/media/IMtpService;

    goto :goto_0

    .line 2725
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private sendObjectRemoved(J)V
    .locals 4
    .parameter "objectHandle"

    .prologue
    .line 2729
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mMtpServiceConnection:Landroid/content/ServiceConnection;

    monitor-enter v2

    .line 2730
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mMtpService:Lcom/android/providers/media/IMtpService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2732
    :try_start_1
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mMtpService:Lcom/android/providers/media/IMtpService;

    long-to-int v3, p1

    invoke-interface {v1, v3}, Lcom/android/providers/media/IMtpService;->sendObjectRemoved(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2738
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 2739
    return-void

    .line 2733
    :catch_0
    move-exception v0

    .line 2734
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException in sendObjectRemoved"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2735
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/providers/media/MediaProvider;->mMtpService:Lcom/android/providers/media/IMtpService;

    goto :goto_0

    .line 2738
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setObjectReferences(Landroid/database/sqlite/SQLiteDatabase;I[Landroid/content/ContentValues;)I
    .locals 26
    .parameter "db"
    .parameter "handle"
    .parameter "values"

    .prologue
    .line 3217
    const-wide/16 v22, 0x0

    .line 3218
    .local v22, playlistId:J
    const-string v4, "files"

    sget-object v5, Lcom/android/providers/media/MediaProvider;->mMediaTableColumns:[Ljava/lang/String;

    const-string v6, "_id=?"

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 3222
    .local v15, c:Landroid/database/Cursor;
    if-eqz v15, :cond_2

    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3223
    const/4 v3, 0x1

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v18

    .line 3224
    .local v18, mediaType:I
    const/4 v3, 0x4

    move/from16 v0, v18

    if-eq v0, v3, :cond_1

    .line 3226
    const/4 v3, 0x0

    .line 3231
    if-eqz v15, :cond_0

    .line 3232
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 3283
    .end local v18           #mediaType:I
    :cond_0
    :goto_0
    return v3

    .line 3228
    .restart local v18       #mediaType:I
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v22

    .line 3231
    .end local v18           #mediaType:I
    :cond_2
    if-eqz v15, :cond_3

    .line 3232
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 3235
    :cond_3
    const-wide/16 v3, 0x0

    cmp-long v3, v22, v3

    if-nez v3, :cond_5

    .line 3236
    const/4 v3, 0x0

    goto :goto_0

    .line 3231
    :catchall_0
    move-exception v3

    if-eqz v15, :cond_4

    .line 3232
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v3

    .line 3240
    :cond_5
    const-string v3, "audio_playlists_map"

    const-string v4, "playlist_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3244
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v16, v0

    .line 3245
    .local v16, count:I
    const/4 v11, 0x0

    .line 3246
    .local v11, added:I
    move/from16 v0, v16

    new-array v0, v0, [Landroid/content/ContentValues;

    move-object/from16 v25, v0

    .line 3247
    .local v25, valuesList:[Landroid/content/ContentValues;
    const/16 v17, 0x0

    .local v17, i:I
    move v12, v11

    .end local v11           #added:I
    .local v12, added:I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_a

    .line 3249
    const-wide/16 v13, 0x0

    .line 3250
    .local v13, audioId:J
    aget-object v3, p3, v17

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 3251
    .local v20, objectId:J
    const-string v4, "files"

    sget-object v5, Lcom/android/providers/media/MediaProvider;->mMediaTableColumns:[Ljava/lang/String;

    const-string v6, "_id=?"

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 3255
    if-eqz v15, :cond_7

    :try_start_2
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3256
    const/4 v3, 0x1

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v18

    .line 3257
    .restart local v18       #mediaType:I
    const/4 v3, 0x2

    move/from16 v0, v18

    if-eq v0, v3, :cond_6

    .line 3264
    if-eqz v15, :cond_c

    .line 3265
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    move v11, v12

    .line 3247
    .end local v12           #added:I
    .end local v18           #mediaType:I
    .restart local v11       #added:I
    :goto_2
    add-int/lit8 v17, v17, 0x1

    move v12, v11

    .end local v11           #added:I
    .restart local v12       #added:I
    goto :goto_1

    .line 3261
    .restart local v18       #mediaType:I
    :cond_6
    const/4 v3, 0x0

    :try_start_3
    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v13

    .line 3264
    .end local v18           #mediaType:I
    :cond_7
    if-eqz v15, :cond_8

    .line 3265
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 3268
    :cond_8
    const-wide/16 v3, 0x0

    cmp-long v3, v13, v3

    if-eqz v3, :cond_c

    .line 3269
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .line 3270
    .local v24, v:Landroid/content/ContentValues;
    const-string v3, "playlist_id"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3271
    const-string v3, "audio_id"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3272
    const-string v3, "play_order"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3273
    add-int/lit8 v11, v12, 0x1

    .end local v12           #added:I
    .restart local v11       #added:I
    aput-object v24, v25, v12

    goto :goto_2

    .line 3264
    .end local v11           #added:I
    .end local v24           #v:Landroid/content/ContentValues;
    .restart local v12       #added:I
    :catchall_1
    move-exception v3

    if-eqz v15, :cond_9

    .line 3265
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v3

    .line 3276
    .end local v13           #audioId:J
    .end local v20           #objectId:J
    :cond_a
    move/from16 v0, v16

    if-ge v12, v0, :cond_b

    .line 3279
    new-array v0, v12, [Landroid/content/ContentValues;

    move-object/from16 v19, v0

    .line 3280
    .local v19, newValues:[Landroid/content/ContentValues;
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-static {v0, v3, v1, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3281
    move-object/from16 v25, v19

    .line 3283
    .end local v19           #newValues:[Landroid/content/ContentValues;
    :cond_b
    const-string v3, "external"

    move-wide/from16 v0, v22

    invoke-static {v3, v0, v1}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v3, v2}, Lcom/android/providers/media/MediaProvider;->playlistBulkInsert(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v3

    goto/16 :goto_0

    .restart local v13       #audioId:J
    .restart local v20       #objectId:J
    :cond_c
    move v11, v12

    .end local v12           #added:I
    .restart local v11       #added:I
    goto :goto_2
.end method

.method private static updateBucketNames(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 14
    .parameter "db"
    .parameter "tableName"

    .prologue
    .line 1873
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1875
    const/4 v0, 0x2

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 1876
    .local v2, columns:[Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    .line 1878
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_1
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 1879
    .local v11, idColumnIndex:I
    const-string v0, "_data"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1880
    .local v10, dataColumnIndex:I
    const/4 v0, 0x1

    new-array v12, v0, [Ljava/lang/String;

    .line 1881
    .local v12, rowId:[Ljava/lang/String;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1882
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1883
    .local v9, data:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v12, v0

    .line 1884
    if-eqz v9, :cond_0

    .line 1885
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1886
    .local v13, values:Landroid/content/ContentValues;
    invoke-static {v9, v13}, Lcom/android/providers/media/MediaProvider;->computeBucketValues(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1887
    const-string v0, "_id=?"

    invoke-virtual {p0, p1, v13, v0, v12}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1893
    .end local v9           #data:Ljava/lang/String;
    .end local v10           #dataColumnIndex:I
    .end local v11           #idColumnIndex:I
    .end local v12           #rowId:[Ljava/lang/String;
    .end local v13           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1897
    .end local v2           #columns:[Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 1889
    .restart local v2       #columns:[Ljava/lang/String;
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v9       #data:Ljava/lang/String;
    .restart local v10       #dataColumnIndex:I
    .restart local v11       #idColumnIndex:I
    .restart local v12       #rowId:[Ljava/lang/String;
    :cond_0
    :try_start_3
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "null data at id "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1893
    .end local v9           #data:Ljava/lang/String;
    :cond_1
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1895
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1897
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1899
    return-void
.end method

.method private static updateDatabase(Landroid/database/sqlite/SQLiteDatabase;ZII)V
    .locals 8
    .parameter "db"
    .parameter "internal"
    .parameter "fromVersion"
    .parameter "toVersion"

    .prologue
    .line 845
    const v5, 0x18839

    if-eq p3, v5, :cond_0

    .line 846
    sget-object v5, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal update request. Got "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", expected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x18839

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 849
    :cond_0
    if-le p2, p3, :cond_1

    .line 850
    sget-object v5, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal update request: can\'t downgrade from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". Did you forget to wipe data?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 856
    :cond_1
    const v5, 0x186a0

    if-le p2, v5, :cond_2

    .line 857
    const v5, 0x186a0

    sub-int/2addr p2, v5

    .line 859
    const-string v5, "DROP TRIGGER IF EXISTS motorola_artist_detailed_event_cleanup"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 860
    const-string v5, "DROP TRIGGER IF EXISTS motorola_artist_news_cleanup"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 861
    const-string v5, "DROP TRIGGER IF EXISTS motorola_artist_extension_cleanup"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 874
    :cond_2
    const/16 v5, 0x3f

    if-lt p2, v5, :cond_4

    const/16 v5, 0x54

    if-lt p2, v5, :cond_3

    const/16 v5, 0x59

    if-le p2, v5, :cond_4

    :cond_3
    const/16 v5, 0x5c

    if-lt p2, v5, :cond_6

    const/16 v5, 0x5e

    if-gt p2, v5, :cond_6

    .line 877
    :cond_4
    sget-object v5, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Upgrading media database from version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", which will destroy all old data"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    const/16 p2, 0x3f

    .line 881
    invoke-static {p0, p1, p2, p3}, Lcom/android/providers/media/BlurMusicStore;->cleanupDatabase(Landroid/database/sqlite/SQLiteDatabase;ZII)V

    .line 883
    const-string v5, "DROP TABLE IF EXISTS images"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 884
    const-string v5, "DROP TRIGGER IF EXISTS images_cleanup"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 885
    const-string v5, "DROP TABLE IF EXISTS thumbnails"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 886
    const-string v5, "DROP TRIGGER IF EXISTS thumbnails_cleanup"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 887
    const-string v5, "DROP TABLE IF EXISTS audio_meta"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 888
    const-string v5, "DROP TABLE IF EXISTS artists"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 889
    const-string v5, "DROP TABLE IF EXISTS albums"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 890
    const-string v5, "DROP TABLE IF EXISTS album_art"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 891
    const-string v5, "DROP VIEW IF EXISTS artist_info"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 892
    const-string v5, "DROP VIEW IF EXISTS album_info"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 893
    const-string v5, "DROP VIEW IF EXISTS artists_albums_map"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 894
    const-string v5, "DROP TRIGGER IF EXISTS audio_meta_cleanup"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 895
    const-string v5, "DROP TABLE IF EXISTS audio_genres"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 896
    const-string v5, "DROP TABLE IF EXISTS audio_genres_map"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 897
    const-string v5, "DROP TRIGGER IF EXISTS audio_genres_cleanup"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 898
    const-string v5, "DROP TABLE IF EXISTS audio_playlists"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 899
    const-string v5, "DROP TABLE IF EXISTS audio_playlists_map"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 900
    const-string v5, "DROP TRIGGER IF EXISTS audio_playlists_cleanup"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 901
    const-string v5, "DROP TRIGGER IF EXISTS albumart_cleanup1"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 902
    const-string v5, "DROP TRIGGER IF EXISTS albumart_cleanup2"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 903
    const-string v5, "DROP TABLE IF EXISTS video"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 904
    const-string v5, "DROP TRIGGER IF EXISTS video_cleanup"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 905
    const-string v5, "DROP TABLE IF EXISTS objects"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 906
    const-string v5, "DROP TRIGGER IF EXISTS images_objects_cleanup"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 907
    const-string v5, "DROP TRIGGER IF EXISTS audio_objects_cleanup"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 908
    const-string v5, "DROP TRIGGER IF EXISTS video_objects_cleanup"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 909
    const-string v5, "DROP TRIGGER IF EXISTS playlists_objects_cleanup"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 911
    const-string v5, "CREATE TABLE IF NOT EXISTS images (_id INTEGER PRIMARY KEY,_data TEXT,_size INTEGER,_display_name TEXT,mime_type TEXT,title TEXT,date_added INTEGER,date_modified INTEGER,description TEXT,picasa_id TEXT,isprivate INTEGER,latitude DOUBLE,longitude DOUBLE,datetaken INTEGER,orientation INTEGER,mini_thumb_magic INTEGER,bucket_id TEXT,bucket_display_name TEXT);"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 932
    const-string v5, "CREATE INDEX IF NOT EXISTS mini_thumb_magic_index on images(mini_thumb_magic);"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 934
    const-string v5, "CREATE TRIGGER IF NOT EXISTS images_cleanup DELETE ON images BEGIN DELETE FROM thumbnails WHERE image_id = old._id;SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 941
    const-string v5, "CREATE TABLE IF NOT EXISTS thumbnails (_id INTEGER PRIMARY KEY,_data TEXT,image_id INTEGER,kind INTEGER,width INTEGER,height INTEGER);"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 950
    const-string v5, "CREATE INDEX IF NOT EXISTS image_id_index on thumbnails(image_id);"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 952
    const-string v5, "CREATE TRIGGER IF NOT EXISTS thumbnails_cleanup DELETE ON thumbnails BEGIN SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 958
    const-string v5, "CREATE TABLE IF NOT EXISTS audio_meta (_id INTEGER PRIMARY KEY,_data TEXT UNIQUE NOT NULL,_display_name TEXT,_size INTEGER,mime_type TEXT,date_added INTEGER,date_modified INTEGER,title TEXT NOT NULL,title_key TEXT NOT NULL,duration INTEGER,artist_id INTEGER,composer TEXT,album_id INTEGER,track INTEGER,year INTEGER CHECK(year!=0),is_ringtone INTEGER,is_music INTEGER,is_alarm INTEGER,is_notification INTEGER);"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 981
    const-string v5, "CREATE TABLE IF NOT EXISTS artists (artist_id INTEGER PRIMARY KEY,artist_key TEXT NOT NULL UNIQUE,artist TEXT NOT NULL);"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 988
    const-string v5, "CREATE TABLE IF NOT EXISTS albums (album_id INTEGER PRIMARY KEY,album_key TEXT NOT NULL UNIQUE,album TEXT NOT NULL);"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 994
    const-string v5, "CREATE TABLE IF NOT EXISTS album_art (album_id INTEGER PRIMARY KEY,_data TEXT);"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 999
    invoke-static {p0}, Lcom/android/providers/media/MediaProvider;->recreateAudioView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1004
    const-string v5, "CREATE VIEW IF NOT EXISTS artist_info AS SELECT artist_id AS _id, artist, artist_key, COUNT(DISTINCT album) AS number_of_albums, COUNT(*) AS number_of_tracks FROM audio WHERE is_music=1 GROUP BY artist_key;"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1011
    const-string v5, "CREATE VIEW IF NOT EXISTS album_info AS SELECT audio.album_id AS _id, album, album_key, MIN(year) AS minyear, MAX(year) AS maxyear, artist, artist_id, artist_key, count(*) AS numsongs,album_art._data AS album_art FROM audio LEFT OUTER JOIN album_art ON audio.album_id=album_art.album_id WHERE is_music=1 GROUP BY audio.album_id;"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1022
    const-string v5, "CREATE VIEW IF NOT EXISTS artists_albums_map AS SELECT DISTINCT artist_id, album_id FROM audio_meta;"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1028
    if-nez p1, :cond_5

    .line 1030
    const-string v5, "CREATE TRIGGER IF NOT EXISTS audio_meta_cleanup DELETE ON audio_meta BEGIN DELETE FROM audio_genres_map WHERE audio_id = old._id;DELETE FROM audio_playlists_map WHERE audio_id = old._id;END"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1037
    const-string v5, "CREATE TABLE IF NOT EXISTS audio_genres (_id INTEGER PRIMARY KEY,name TEXT NOT NULL);"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1043
    const-string v5, "CREATE TABLE IF NOT EXISTS audio_genres_map (_id INTEGER PRIMARY KEY,audio_id INTEGER NOT NULL,genre_id INTEGER NOT NULL);"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1050
    const-string v5, "CREATE TRIGGER IF NOT EXISTS audio_genres_cleanup DELETE ON audio_genres BEGIN DELETE FROM audio_genres_map WHERE genre_id = old._id;END"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1056
    const-string v5, "CREATE TABLE IF NOT EXISTS audio_playlists (_id INTEGER PRIMARY KEY,_data TEXT,name TEXT NOT NULL,date_added INTEGER,date_modified INTEGER);"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1065
    const-string v5, "CREATE TABLE IF NOT EXISTS audio_playlists_map (_id INTEGER PRIMARY KEY,audio_id INTEGER NOT NULL,playlist_id INTEGER NOT NULL,play_order INTEGER NOT NULL);"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1073
    const-string v5, "CREATE TRIGGER IF NOT EXISTS audio_playlists_cleanup DELETE ON audio_playlists BEGIN DELETE FROM audio_playlists_map WHERE playlist_id = old._id;SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1080
    const-string v5, "CREATE TRIGGER IF NOT EXISTS albumart_cleanup1 DELETE ON albums BEGIN DELETE FROM album_art WHERE album_id = old.album_id;END"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1086
    const-string v5, "CREATE TRIGGER IF NOT EXISTS albumart_cleanup2 DELETE ON album_art BEGIN SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1093
    :cond_5
    const-string v5, "CREATE TABLE IF NOT EXISTS video (_id INTEGER PRIMARY KEY,_data TEXT NOT NULL,_display_name TEXT,_size INTEGER,mime_type TEXT,date_added INTEGER,date_modified INTEGER,title TEXT,duration INTEGER,artist TEXT,album TEXT,resolution TEXT,description TEXT,isprivate INTEGER,tags TEXT,category TEXT,language TEXT,mini_thumb_data TEXT,latitude DOUBLE,longitude DOUBLE,datetaken INTEGER,mini_thumb_magic INTEGER);"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1118
    const-string v5, "CREATE TRIGGER IF NOT EXISTS video_cleanup DELETE ON video BEGIN SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1128
    :cond_6
    const/16 v5, 0x40

    if-ge p2, v5, :cond_7

    .line 1130
    const-string v5, "CREATE INDEX IF NOT EXISTS sort_index on images(datetaken ASC, _id ASC);"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1137
    :cond_7
    const/16 v5, 0x41

    if-ge p2, v5, :cond_8

    .line 1139
    const-string v5, "CREATE INDEX IF NOT EXISTS titlekey_index on audio_meta(title_key);"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1145
    :cond_8
    const/16 v5, 0x43

    if-ge p2, v5, :cond_9

    .line 1147
    const-string v5, "CREATE INDEX IF NOT EXISTS albumkey_index on albums(album_key);"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1148
    const-string v5, "CREATE INDEX IF NOT EXISTS artistkey_index on artists(artist_key);"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1151
    :cond_9
    const/16 v5, 0x44

    if-ge p2, v5, :cond_a

    .line 1153
    const-string v5, "ALTER TABLE video ADD COLUMN bucket_id TEXT;"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1154
    const-string v5, "ALTER TABLE video ADD COLUMN bucket_display_name TEXT"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1160
    :cond_a
    const/16 v5, 0x45

    if-ge p2, v5, :cond_b

    .line 1161
    const-string v5, "images"

    invoke-static {p0, v5}, Lcom/android/providers/media/MediaProvider;->updateDisplayName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1164
    :cond_b
    const/16 v5, 0x46

    if-ge p2, v5, :cond_c

    .line 1166
    const-string v5, "ALTER TABLE video ADD COLUMN bookmark INTEGER;"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1169
    :cond_c
    const/16 v5, 0x47

    if-ge p2, v5, :cond_d

    .line 1176
    const-string v5, "UPDATE audio_meta SET date_modified=0 WHERE _id IN (SELECT _id FROM audio where mime_type=\'audio/mp4\' AND artist=\'<unknown>\' AND album=\'<unknown>\');"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1183
    :cond_d
    const/16 v5, 0x48

    if-ge p2, v5, :cond_e

    .line 1185
    const-string v5, "ALTER TABLE audio_meta ADD COLUMN is_podcast INTEGER;"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1186
    const-string v5, "UPDATE audio_meta SET is_podcast=1 WHERE _data LIKE \'%/podcasts/%\';"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1187
    const-string v5, "UPDATE audio_meta SET is_music=0 WHERE is_podcast=1 AND _data NOT LIKE \'%/music/%\';"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1189
    const-string v5, "ALTER TABLE audio_meta ADD COLUMN bookmark INTEGER;"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1195
    invoke-static {p0}, Lcom/android/providers/media/MediaProvider;->recreateAudioView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1202
    :cond_e
    const/16 v5, 0x49

    if-ge p2, v5, :cond_f

    .line 1206
    const-string v5, "UPDATE audio_meta SET is_music=1 WHERE is_music=0 AND _data LIKE \'%/music/%\';"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1208
    const-string v5, "UPDATE audio_meta SET is_ringtone=1 WHERE is_ringtone=0 AND _data LIKE \'%/ringtones/%\';"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1210
    const-string v5, "UPDATE audio_meta SET is_notification=1 WHERE is_notification=0 AND _data LIKE \'%/notifications/%\';"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1212
    const-string v5, "UPDATE audio_meta SET is_alarm=1 WHERE is_alarm=0 AND _data LIKE \'%/alarms/%\';"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1214
    const-string v5, "UPDATE audio_meta SET is_podcast=1 WHERE is_podcast=0 AND _data LIKE \'%/podcasts/%\';"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1218
    :cond_f
    const/16 v5, 0x4a

    if-ge p2, v5, :cond_10

    .line 1223
    const-string v5, "CREATE VIEW IF NOT EXISTS searchhelpertitle AS SELECT * FROM audio ORDER BY title_key;"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1226
    const-string v5, "CREATE VIEW IF NOT EXISTS search AS SELECT _id,\'artist\' AS mime_type,artist,NULL AS album,NULL AS title,artist AS text1,NULL AS text2,number_of_albums AS data1,number_of_tracks AS data2,artist_key AS match,\'content://media/external/audio/artists/\'||_id AS suggest_intent_data,1 AS grouporder FROM artist_info WHERE (artist!=\'<unknown>\') UNION ALL SELECT _id,\'album\' AS mime_type,artist,album,NULL AS title,album AS text1,artist AS text2,NULL AS data1,NULL AS data2,artist_key||\' \'||album_key AS match,\'content://media/external/audio/albums/\'||_id AS suggest_intent_data,2 AS grouporder FROM album_info WHERE (album!=\'<unknown>\') UNION ALL SELECT searchhelpertitle._id AS _id,mime_type,artist,album,title,title AS text1,artist AS text2,NULL AS data1,NULL AS data2,artist_key||\' \'||album_key||\' \'||title_key AS match,\'content://media/external/audio/media/\'||searchhelpertitle._id AS suggest_intent_data,3 AS grouporder FROM searchhelpertitle WHERE (title != \'\') "

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1272
    :cond_10
    const/16 v5, 0x4b

    if-ge p2, v5, :cond_11

    .line 1275
    const-string v5, "UPDATE audio_meta SET date_modified=0;"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1276
    const-string v5, "DELETE FROM albums"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1279
    :cond_11
    const/16 v5, 0x4c

    if-ge p2, v5, :cond_12

    .line 1282
    const-string v5, "UPDATE audio_meta SET title_key=REPLACE(title_key,x\'081D08C29F081D\',x\'081D\') WHERE title_key LIKE \'%\'||x\'081D08C29F081D\'||\'%\';"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1285
    const-string v5, "UPDATE albums SET album_key=REPLACE(album_key,x\'081D08C29F081D\',x\'081D\') WHERE album_key LIKE \'%\'||x\'081D08C29F081D\'||\'%\';"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1288
    const-string v5, "UPDATE artists SET artist_key=REPLACE(artist_key,x\'081D08C29F081D\',x\'081D\') WHERE artist_key LIKE \'%\'||x\'081D08C29F081D\'||\'%\';"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1291
    invoke-static {p0, p1, p2, p3}, Lcom/motorola/android/media/MediaUtil;->updateDatabase(Landroid/database/sqlite/SQLiteDatabase;ZII)V

    .line 1298
    :cond_12
    const/16 v5, 0x4d

    if-ge p2, v5, :cond_13

    .line 1300
    const-string v5, "CREATE TABLE IF NOT EXISTS videothumbnails (_id INTEGER PRIMARY KEY,_data TEXT,video_id INTEGER,kind INTEGER,width INTEGER,height INTEGER);"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1309
    const-string v5, "CREATE INDEX IF NOT EXISTS video_id_index on videothumbnails(video_id);"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1311
    const-string v5, "CREATE TRIGGER IF NOT EXISTS videothumbnails_cleanup DELETE ON videothumbnails BEGIN SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1321
    :cond_13
    const/16 v5, 0x4e

    if-ge p2, v5, :cond_14

    .line 1324
    const-string v5, "UPDATE video SET date_modified=0;"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1331
    :cond_14
    const/16 v5, 0x4f

    if-ge p2, v5, :cond_16

    if-nez p1, :cond_16

    .line 1336
    const-string v0, "/mnt/sdcard"

    .line 1337
    .local v0, basePath:Ljava/lang/String;
    sget-object v5, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    if-eqz v5, :cond_15

    sget-object v5, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_15

    .line 1338
    sget-object v5, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v0, v5, v6

    .line 1339
    :cond_15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/albumthumbs"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1340
    .local v3, oldthumbspath:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Android/data/com.android.providers.media/albumthumbs"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1342
    .local v2, newthumbspath:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1343
    .local v4, thumbsfolder:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1345
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1346
    .local v1, newthumbsfolder:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 1347
    invoke-virtual {v4, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1349
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UPDATE album_art SET _data=REPLACE(_data, \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\',\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\');"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1355
    .end local v0           #basePath:Ljava/lang/String;
    .end local v1           #newthumbsfolder:Ljava/io/File;
    .end local v2           #newthumbspath:Ljava/lang/String;
    .end local v3           #oldthumbspath:Ljava/lang/String;
    .end local v4           #thumbsfolder:Ljava/io/File;
    :cond_16
    const/16 v5, 0x50

    if-ge p2, v5, :cond_17

    .line 1357
    const-string v5, "UPDATE images SET date_modified=0;"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1360
    :cond_17
    const/16 v5, 0x51

    if-ge p2, v5, :cond_18

    if-nez p1, :cond_18

    .line 1368
    const-string v5, "UPDATE audio_playlists SET _data=\'////\' WHERE _data LIKE \'/mnt/sdcard/%\';"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1369
    const-string v5, "UPDATE images SET _data=\'////\' WHERE _data LIKE \'/mnt/sdcard/%\';"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1370
    const-string v5, "UPDATE video SET _data=\'////\' WHERE _data LIKE \'/mnt/sdcard/%\';"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1371
    const-string v5, "UPDATE videothumbnails SET _data=\'////\' WHERE _data LIKE \'/mnt/sdcard/%\';"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1372
    const-string v5, "UPDATE thumbnails SET _data=\'////\' WHERE _data LIKE \'/mnt/sdcard/%\';"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1373
    const-string v5, "UPDATE album_art SET _data=\'////\' WHERE _data LIKE \'/mnt/sdcard/%\';"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1374
    const-string v5, "UPDATE audio_meta SET _data=\'////\' WHERE _data LIKE \'/mnt/sdcard/%\';"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1376
    const-string v5, "DELETE FROM audio_playlists WHERE _data IS \'////\';"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1377
    const-string v5, "DELETE FROM images WHERE _data IS \'////\';"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1378
    const-string v5, "DELETE FROM video WHERE _data IS \'////\';"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1379
    const-string v5, "DELETE FROM videothumbnails WHERE _data IS \'////\';"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1380
    const-string v5, "DELETE FROM thumbnails WHERE _data IS \'////\';"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1381
    const-string v5, "DELETE FROM audio_meta WHERE _data  IS \'////\';"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1382
    const-string v5, "DELETE FROM album_art WHERE _data  IS \'////\';"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1385
    const-string v5, "UPDATE audio_meta SET _data=\'/mnt/sdcard\'||SUBSTR(_data,8) WHERE _data LIKE \'/sdcard/%\';"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1387
    const-string v5, "UPDATE audio_playlists SET _data=\'/mnt/sdcard\'||SUBSTR(_data,8) WHERE _data LIKE \'/sdcard/%\';"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1389
    const-string v5, "UPDATE images SET _data=\'/mnt/sdcard\'||SUBSTR(_data,8) WHERE _data LIKE \'/sdcard/%\';"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1391
    const-string v5, "UPDATE video SET _data=\'/mnt/sdcard\'||SUBSTR(_data,8) WHERE _data LIKE \'/sdcard/%\';"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1393
    const-string v5, "UPDATE videothumbnails SET _data=\'/mnt/sdcard\'||SUBSTR(_data,8) WHERE _data LIKE \'/sdcard/%\';"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1395
    const-string v5, "UPDATE thumbnails SET _data=\'/mnt/sdcard\'||SUBSTR(_data,8) WHERE _data LIKE \'/sdcard/%\';"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1397
    const-string v5, "UPDATE album_art SET _data=\'/mnt/sdcard\'||SUBSTR(_data,8) WHERE _data LIKE \'/sdcard/%\';"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1405
    const-string v5, "DELETE from albums"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1406
    const-string v5, "DELETE from artists"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1407
    const-string v5, "UPDATE audio_meta SET date_modified=0;"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1410
    :cond_18
    const/16 v5, 0x52

    if-ge p2, v5, :cond_19

    .line 1412
    const-string v5, "DROP VIEW IF EXISTS artist_info"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1413
    const-string v5, "CREATE VIEW IF NOT EXISTS artist_info AS SELECT artist_id AS _id, artist, artist_key, COUNT(DISTINCT album_key) AS number_of_albums, COUNT(*) AS number_of_tracks FROM audio WHERE is_music=1 GROUP BY artist_key;"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1422
    :cond_19
    const/16 v5, 0x57

    if-ge p2, v5, :cond_1a

    .line 1426
    const-string v5, "CREATE INDEX IF NOT EXISTS title_idx on audio_meta(title);"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1427
    const-string v5, "CREATE INDEX IF NOT EXISTS artist_idx on artists(artist);"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1428
    const-string v5, "CREATE INDEX IF NOT EXISTS album_idx on albums(album);"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1431
    :cond_1a
    const/16 v5, 0x58

    if-ge p2, v5, :cond_1b

    .line 1434
    const-string v5, "DROP TRIGGER IF EXISTS albums_update1;"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1435
    const-string v5, "DROP TRIGGER IF EXISTS albums_update2;"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1436
    const-string v5, "DROP TRIGGER IF EXISTS albums_update3;"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1437
    const-string v5, "DROP TRIGGER IF EXISTS albums_update4;"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1438
    const-string v5, "DROP TRIGGER IF EXISTS artist_update1;"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1439
    const-string v5, "DROP TRIGGER IF EXISTS artist_update2;"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1440
    const-string v5, "DROP TRIGGER IF EXISTS artist_update3;"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1441
    const-string v5, "DROP TRIGGER IF EXISTS artist_update4;"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1442
    const-string v5, "DROP VIEW IF EXISTS album_artists;"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1443
    const-string v5, "CREATE INDEX IF NOT EXISTS album_id_idx on audio_meta(album_id);"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1444
    const-string v5, "CREATE INDEX IF NOT EXISTS artist_id_idx on audio_meta(artist_id);"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1447
    const-string v5, "CREATE VIEW IF NOT EXISTS artists_albums_map AS SELECT DISTINCT artist_id, album_id FROM audio_meta;"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1455
    :cond_1b
    const/16 v5, 0x5b

    if-ge p2, v5, :cond_1d

    .line 1459
    const/16 v5, 0x4e

    if-lt p2, v5, :cond_1c

    .line 1460
    const-string v5, "DROP TRIGGER IF EXISTS blur_event_cleanup1"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1464
    :cond_1c
    const-string v5, "DROP INDEX IF EXISTS mini_thumb_magic_index"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1467
    const-string v5, "CREATE INDEX IF NOT EXISTS image_bucket_index ON images(bucket_id, datetaken)"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1468
    const-string v5, "CREATE INDEX IF NOT EXISTS video_bucket_index ON video(bucket_id, datetaken)"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1475
    :cond_1d
    const/16 v5, 0x64

    if-gt p2, v5, :cond_21

    .line 1477
    const-string v5, "DROP TABLE IF EXISTS objects"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1478
    const-string v5, "DROP TABLE IF EXISTS files"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1479
    const-string v5, "DROP TRIGGER IF EXISTS images_objects_cleanup;"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1480
    const-string v5, "DROP TRIGGER IF EXISTS audio_objects_cleanup;"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1481
    const-string v5, "DROP TRIGGER IF EXISTS video_objects_cleanup;"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1482
    const-string v5, "DROP TRIGGER IF EXISTS playlists_objects_cleanup;"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1483
    const-string v5, "DROP TRIGGER IF EXISTS files_cleanup_images;"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1484
    const-string v5, "DROP TRIGGER IF EXISTS files_cleanup_audio;"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1485
    const-string v5, "DROP TRIGGER IF EXISTS files_cleanup_video;"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1486
    const-string v5, "DROP TRIGGER IF EXISTS files_cleanup_playlists;"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1487
    const-string v5, "DROP TRIGGER IF EXISTS media_cleanup;"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1492
    const-string v5, "CREATE TABLE files (_id INTEGER PRIMARY KEY AUTOINCREMENT,_data TEXT,_size INTEGER,format INTEGER,parent INTEGER,date_added INTEGER,date_modified INTEGER,mime_type TEXT,title TEXT,description TEXT,_display_name TEXT,picasa_id TEXT,orientation INTEGER,latitude DOUBLE,longitude DOUBLE,datetaken INTEGER,mini_thumb_magic INTEGER,bucket_id TEXT,bucket_display_name TEXT,isprivate INTEGER,title_key TEXT,artist_id INTEGER,album_id INTEGER,composer TEXT,track INTEGER,year INTEGER CHECK(year!=0),is_ringtone INTEGER,is_music INTEGER,is_alarm INTEGER,is_notification INTEGER,is_podcast INTEGER,album_artist TEXT,duration INTEGER,bookmark INTEGER,artist TEXT,album TEXT,resolution TEXT,tags TEXT,category TEXT,language TEXT,mini_thumb_data TEXT,name TEXT,media_type INTEGER,old_id INTEGER);"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1557
    const-string v5, "CREATE INDEX path_index ON files(_data);"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1558
    const-string v5, "CREATE INDEX media_type_index ON files(media_type);"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1567
    const-string v5, "INSERT INTO files (_id,_data,_display_name,_size,mime_type,date_added,date_modified,title,title_key,duration,artist_id,composer,album_id,track,year,is_ringtone,is_music,is_alarm,is_notification,is_podcast,bookmark,old_id,media_type) SELECT _id,_data,_display_name,_size,mime_type,date_added,date_modified,title,title_key,duration,artist_id,composer,album_id,track,year,is_ringtone,is_music,is_alarm,is_notification,is_podcast,bookmark,_id,2 FROM audio_meta;"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1571
    const-string v5, "INSERT INTO files (_data,_size,_display_name,mime_type,title,date_added,date_modified,description,picasa_id,isprivate,latitude,longitude,datetaken,orientation,mini_thumb_magic,bucket_id,bucket_display_name,old_id,media_type) SELECT _data,_size,_display_name,mime_type,title,date_added,date_modified,description,picasa_id,isprivate,latitude,longitude,datetaken,orientation,mini_thumb_magic,bucket_id,bucket_display_name,_id,1 FROM images;"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1573
    const-string v5, "INSERT INTO files (_data,_display_name,_size,mime_type,date_added,date_modified,title,duration,artist,album,resolution,description,isprivate,tags,category,language,mini_thumb_data,latitude,longitude,datetaken,mini_thumb_magic,bucket_id,bucket_display_name, bookmark,old_id,media_type) SELECT _data,_display_name,_size,mime_type,date_added,date_modified,title,duration,artist,album,resolution,description,isprivate,tags,category,language,mini_thumb_data,latitude,longitude,datetaken,mini_thumb_magic,bucket_id,bucket_display_name, bookmark,_id,3 FROM video;"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1575
    if-nez p1, :cond_1e

    .line 1576
    const-string v5, "INSERT INTO files (_data,name,date_added,date_modified,old_id,media_type) SELECT _data,name,date_added,date_modified,_id,4 FROM audio_playlists;"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1584
    :cond_1e
    const-string v5, "ALTER TABLE images rename to images_obsolete"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1585
    const-string v5, "ALTER TABLE audio_meta rename to audio_meta_obsolete"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1586
    const-string v5, "ALTER TABLE video rename to video_obsolete"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1588
    const-string v5, "DROP TABLE IF EXISTS audio_playlists"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1591
    const-string v5, "CREATE VIEW images AS SELECT _id,_data,_size,_display_name,mime_type,title,date_added,date_modified,description,picasa_id,isprivate,latitude,longitude,datetaken,orientation,mini_thumb_magic,bucket_id,bucket_display_name FROM files WHERE media_type=1;"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1594
    const-string v5, "CREATE VIEW audio_meta AS SELECT _id,_data,_display_name,_size,mime_type,date_added,date_modified,title,title_key,duration,artist_id,composer,album_id,track,year,is_ringtone,is_music,is_alarm,is_notification,is_podcast,bookmark,album_artist FROM files WHERE media_type=2;"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1597
    const-string v5, "CREATE VIEW video AS SELECT _id,_data,_display_name,_size,mime_type,date_added,date_modified,title,duration,artist,album,resolution,description,isprivate,tags,category,language,mini_thumb_data,latitude,longitude,datetaken,mini_thumb_magic,bucket_id,bucket_display_name, bookmark FROM files WHERE media_type=3;"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1600
    if-nez p1, :cond_1f

    .line 1601
    const-string v5, "CREATE VIEW audio_playlists AS SELECT _id,_data,name,date_added,date_modified FROM files WHERE media_type=4;"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1607
    :cond_1f
    const-string v5, "CREATE INDEX tmp ON files(old_id);"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1610
    const-string v5, "UPDATE thumbnails SET image_id = (SELECT _id FROM files WHERE files.old_id = thumbnails.image_id AND files.media_type = 1);"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1614
    if-nez p1, :cond_20

    .line 1617
    const-string v5, "UPDATE audio_genres_map SET audio_id = (SELECT _id FROM files WHERE files.old_id = audio_genres_map.audio_id AND files.media_type = 2);"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1620
    const-string v5, "UPDATE audio_playlists_map SET audio_id = (SELECT _id FROM files WHERE files.old_id = audio_playlists_map.audio_id AND files.media_type = 2);"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1623
    const-string v5, "UPDATE audio_playlists_map SET playlist_id = (SELECT _id FROM files WHERE files.old_id = audio_playlists_map.playlist_id AND files.media_type = 4);"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1629
    :cond_20
    const-string v5, "UPDATE videothumbnails SET video_id = (SELECT _id FROM files WHERE files.old_id = videothumbnails.video_id AND files.media_type = 3);"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1634
    const-string v5, "DROP INDEX tmp;"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1637
    const-string v5, "DROP INDEX IF EXISTS title_idx"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1638
    const-string v5, "DROP INDEX IF EXISTS album_id_idx"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1639
    const-string v5, "DROP INDEX IF EXISTS image_bucket_index"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1640
    const-string v5, "DROP INDEX IF EXISTS video_bucket_index"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1641
    const-string v5, "DROP INDEX IF EXISTS sort_index"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1642
    const-string v5, "DROP INDEX IF EXISTS titlekey_index"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1643
    const-string v5, "DROP INDEX IF EXISTS artist_id_idx"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1644
    const-string v5, "CREATE INDEX title_idx ON files(title);"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1645
    const-string v5, "CREATE INDEX album_id_idx ON files(album_id);"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1646
    const-string v5, "CREATE INDEX bucket_index ON files(bucket_id, datetaken);"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1647
    const-string v5, "CREATE INDEX sort_index ON files(datetaken ASC, _id ASC);"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1648
    const-string v5, "CREATE INDEX titlekey_index ON files(title_key);"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1649
    const-string v5, "CREATE INDEX artist_id_idx ON files(artist_id);"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1652
    const-string v5, "DROP TRIGGER IF EXISTS images_cleanup"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1653
    const-string v5, "DROP TRIGGER IF EXISTS audio_meta_cleanup"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1654
    const-string v5, "DROP TRIGGER IF EXISTS video_cleanup"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1655
    const-string v5, "DROP TRIGGER IF EXISTS audio_playlists_cleanup"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1656
    const-string v5, "DROP TRIGGER IF EXISTS audio_delete"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1658
    const-string v5, "CREATE TRIGGER IF NOT EXISTS images_cleanup DELETE ON files WHEN old.media_type = 1 BEGIN DELETE FROM thumbnails WHERE image_id = old._id;SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1665
    const-string v5, "CREATE TRIGGER IF NOT EXISTS video_cleanup DELETE ON files WHEN old.media_type = 3 BEGIN SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1671
    if-nez p1, :cond_21

    .line 1672
    const-string v5, "CREATE TRIGGER IF NOT EXISTS audio_meta_cleanup DELETE ON files WHEN old.media_type = 2 BEGIN DELETE FROM audio_genres_map WHERE audio_id = old._id;DELETE FROM audio_playlists_map WHERE audio_id = old._id;END"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1679
    const-string v5, "CREATE TRIGGER IF NOT EXISTS audio_playlists_cleanup DELETE ON files WHEN old.media_type = 4 BEGIN DELETE FROM audio_playlists_map WHERE playlist_id = old._id;SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1686
    const-string v5, "CREATE TRIGGER IF NOT EXISTS audio_delete INSTEAD OF DELETE ON audio BEGIN DELETE from files where _id=old._id;DELETE from audio_playlists_map where audio_id=old._id;DELETE from audio_genres_map where audio_id=old._id;END"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1695
    :cond_21
    const/16 v5, 0x12c

    if-ge p2, v5, :cond_22

    .line 1698
    const-string v5, "files"

    invoke-static {p0, v5}, Lcom/android/providers/media/MediaProvider;->updateBucketNames(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1701
    :cond_22
    const/16 v5, 0x12d

    if-ge p2, v5, :cond_23

    .line 1702
    const-string v5, "DROP INDEX IF EXISTS bucket_index"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1703
    const-string v5, "CREATE INDEX bucket_index on files(bucket_id, media_type, datetaken, _id)"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1704
    const-string v5, "CREATE INDEX bucket_name on files(bucket_id, media_type, bucket_display_name)"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1707
    :cond_23
    const/16 v5, 0x12e

    if-ge p2, v5, :cond_24

    .line 1708
    const-string v5, "CREATE INDEX parent_index ON files(parent);"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1709
    const-string v5, "CREATE INDEX format_index ON files(format);"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1712
    :cond_24
    const/16 v5, 0x12f

    if-ge p2, v5, :cond_25

    .line 1715
    const-string v5, "DELETE from albums"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1716
    const-string v5, "UPDATE files SET date_modified=0 WHERE media_type=2;"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1720
    :cond_25
    const/16 v5, 0x130

    if-ge p2, v5, :cond_26

    if-nez p1, :cond_26

    .line 1722
    const-string v5, "CREATE TRIGGER IF NOT EXISTS files_cleanup DELETE ON files BEGIN SELECT _OBJECT_REMOVED(old._id);END"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1729
    :cond_26
    const/16 v5, 0x131

    if-ge p2, v5, :cond_27

    if-eqz p1, :cond_27

    .line 1731
    const-string v5, "DROP TRIGGER IF EXISTS files_cleanup"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1734
    :cond_27
    const/16 v5, 0x132

    if-ge p2, v5, :cond_28

    if-nez p1, :cond_28

    .line 1737
    const-string v5, "UPDATE files SET date_modified=0 WHERE media_type=2;"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1739
    const-string v5, "DELETE FROM audio_genres_map"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1740
    const-string v5, "DELETE FROM audio_genres"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1743
    :cond_28
    const/16 v5, 0x133

    if-ge p2, v5, :cond_29

    if-nez p1, :cond_29

    .line 1746
    const-string v5, "UPDATE files SET date_modified=0 WHERE media_type=1;"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1752
    :cond_29
    const/16 v5, 0x191

    if-lt p2, v5, :cond_2a

    const/16 v5, 0x191

    if-ne p2, v5, :cond_2b

    if-eqz p1, :cond_2b

    .line 1754
    :cond_2a
    const-string v5, "ALTER TABLE files ADD COLUMN storage_id INTEGER;"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1756
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UPDATE files SET storage_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Landroid/mtp/MtpStorage;->getStorageId(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1759
    :cond_2b
    const/16 v5, 0x193

    if-ge p2, v5, :cond_2c

    if-nez p1, :cond_2c

    .line 1760
    const-string v5, "CREATE VIEW audio_genres_map_noid AS SELECT audio_id,genre_id from audio_genres_map;"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1764
    :cond_2c
    const/16 v5, 0x194

    if-ge p2, v5, :cond_2d

    .line 1767
    const-string v5, "DELETE from albums"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1768
    const-string v5, "UPDATE files SET date_modified=0 WHERE media_type=2;"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1772
    :cond_2d
    const/16 v5, 0x195

    if-ge p2, v5, :cond_2e

    .line 1774
    const-string v5, "ALTER TABLE files ADD COLUMN is_drm INTEGER;"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1776
    const-string v5, "DROP VIEW IF EXISTS audio_meta"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1777
    const-string v5, "CREATE VIEW audio_meta AS SELECT _id,_data,_display_name,_size,mime_type,date_added,is_drm,date_modified,title,title_key,duration,artist_id,composer,album_id,track,year,is_ringtone,is_music,is_alarm,is_notification,is_podcast,bookmark,album_artist FROM files WHERE media_type=2;"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1781
    invoke-static {p0}, Lcom/android/providers/media/MediaProvider;->recreateAudioView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1784
    :cond_2e
    const/16 v5, 0x197

    if-ge p2, v5, :cond_2f

    .line 1788
    const-string v5, "UPDATE files SET date_modified=0;"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1791
    :cond_2f
    const/16 v5, 0x198

    if-ge p2, v5, :cond_30

    .line 1793
    const-string v5, "ALTER TABLE files ADD COLUMN width INTEGER;"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1794
    const-string v5, "ALTER TABLE files ADD COLUMN height INTEGER;"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1797
    const-string v5, "UPDATE files SET date_modified=0;"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1800
    const-string v5, "DROP VIEW IF EXISTS images"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1801
    const-string v5, "DROP VIEW IF EXISTS video"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1802
    const-string v5, "CREATE VIEW images AS SELECT _id,_data,_size,_display_name,mime_type,title,date_added,date_modified,description,picasa_id,isprivate,latitude,longitude,datetaken,orientation,mini_thumb_magic,bucket_id,bucket_display_name,width,height FROM files WHERE media_type=1;"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1805
    const-string v5, "CREATE VIEW video AS SELECT _id,_data,_display_name,_size,mime_type,date_added,date_modified,title,duration,artist,album,resolution,description,isprivate,tags,category,language,mini_thumb_data,latitude,longitude,datetaken,mini_thumb_magic,bucket_id,bucket_display_name,bookmark,width,height FROM files WHERE media_type=3;"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1810
    const-string v5, "CREATE TRIGGER IF NOT EXISTS audio_meta_delete INSTEAD OF DELETE ON audio_meta BEGIN DELETE FROM files WHERE _id=old._id;END"

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1817
    :cond_30
    invoke-static {p0, p2}, Lcom/android/providers/media/MediaProvider;->sanityCheck(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 1820
    const v5, 0x186a0

    if-le p3, v5, :cond_31

    const v5, 0x186a0

    sub-int/2addr p3, v5

    .end local p3
    :cond_31
    invoke-static {p0, p1, p2, p3}, Lcom/android/providers/media/BlurMusicStore;->updateDatabase(Landroid/database/sqlite/SQLiteDatabase;ZII)V

    .line 1823
    return-void
.end method

.method private static updateDisplayName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 19
    .parameter "db"
    .parameter "tableName"

    .prologue
    .line 1909
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1911
    const/4 v3, 0x3

    :try_start_0
    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v5, v3

    const/4 v3, 0x1

    const-string v4, "_data"

    aput-object v4, v5, v3

    const/4 v3, 0x2

    const-string v4, "_display_name"

    aput-object v4, v5, v3

    .line 1912
    .local v5, columns:[Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v11

    .line 1914
    .local v11, cursor:Landroid/database/Cursor;
    :try_start_1
    const-string v3, "_id"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 1915
    .local v16, idColumnIndex:I
    const-string v3, "_data"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 1916
    .local v13, dataColumnIndex:I
    const-string v3, "_display_name"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 1917
    .local v15, displayNameIndex:I
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 1918
    .local v18, values:Landroid/content/ContentValues;
    :cond_0
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1919
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1920
    .local v14, displayName:Ljava/lang/String;
    if-nez v14, :cond_0

    .line 1921
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1922
    .local v12, data:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentValues;->clear()V

    .line 1923
    move-object/from16 v0, v18

    invoke-static {v12, v0}, Lcom/android/providers/media/MediaProvider;->computeDisplayName(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1924
    move/from16 v0, v16

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 1925
    .local v17, rowId:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1929
    .end local v12           #data:Ljava/lang/String;
    .end local v13           #dataColumnIndex:I
    .end local v14           #displayName:Ljava/lang/String;
    .end local v15           #displayNameIndex:I
    .end local v16           #idColumnIndex:I
    .end local v17           #rowId:I
    .end local v18           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1933
    .end local v5           #columns:[Ljava/lang/String;
    .end local v11           #cursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v3

    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 1929
    .restart local v5       #columns:[Ljava/lang/String;
    .restart local v11       #cursor:Landroid/database/Cursor;
    .restart local v13       #dataColumnIndex:I
    .restart local v15       #displayNameIndex:I
    .restart local v16       #idColumnIndex:I
    .restart local v18       #values:Landroid/content/ContentValues;
    :cond_1
    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1931
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1933
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1935
    return-void
.end method

.method private updateGenre(JLjava/lang/String;)V
    .locals 9
    .parameter "rowId"
    .parameter "genre"

    .prologue
    .line 3294
    const/4 v7, 0x0

    .line 3295
    .local v7, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 3296
    .local v6, cursor:Landroid/database/Cursor;
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Genres;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3299
    .local v1, genresUri:Landroid/net/Uri;
    :try_start_0
    sget-object v2, Lcom/android/providers/media/MediaProvider;->GENRE_LOOKUP_PROJECTION:[Ljava/lang/String;

    const-string v3, "name=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/media/MediaProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3301
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 3303
    :cond_0
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 3304
    .local v8, values:Landroid/content/ContentValues;
    const-string v0, "name"

    invoke-virtual {v8, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3305
    invoke-virtual {p0, v1, v8}, Lcom/android/providers/media/MediaProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    .line 3311
    .end local v8           #values:Landroid/content/ContentValues;
    :goto_0
    if-eqz v7, :cond_1

    .line 3312
    const-string v0, "members"

    invoke-static {v7, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 3316
    :cond_1
    if-eqz v6, :cond_2

    .line 3317
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3321
    :cond_2
    if-eqz v7, :cond_3

    .line 3323
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 3324
    .restart local v8       #values:Landroid/content/ContentValues;
    const-string v0, "audio_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3325
    invoke-virtual {p0, v7, v8}, Lcom/android/providers/media/MediaProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 3327
    .end local v8           #values:Landroid/content/ContentValues;
    :cond_3
    return-void

    .line 3308
    :cond_4
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 3309
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    goto :goto_0

    .line 3316
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 3317
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method private waitForThumbnailReady(Landroid/net/Uri;)Z
    .locals 12
    .parameter "origUri"

    .prologue
    .line 1999
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "_data"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "mini_thumb_magic"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/media/MediaProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2001
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    const/4 v11, 0x0

    .line 2030
    :goto_0
    return v11

    .line 2003
    :cond_0
    const/4 v11, 0x0

    .line 2005
    .local v11, result:Z
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2006
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 2007
    .local v8, id:J
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2008
    .local v1, path:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 2010
    .local v4, magic:J
    const/4 v3, 0x5

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/media/MediaProvider;->requestMediaThumbnail(Ljava/lang/String;Landroid/net/Uri;IJ)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v10

    .line 2012
    .local v10, req:Lcom/android/providers/media/MediaThumbRequest;
    if-nez v10, :cond_1

    .line 2013
    const/4 v11, 0x0

    goto :goto_0

    .line 2015
    :cond_1
    monitor-enter v10

    .line 2017
    :goto_1
    :try_start_0
    iget-object v0, v10, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    sget-object v2, Lcom/android/providers/media/MediaThumbRequest$State;->WAIT:Lcom/android/providers/media/MediaThumbRequest$State;

    if-ne v0, v2, :cond_2

    .line 2018
    invoke-virtual {v10}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2020
    :catch_0
    move-exception v7

    .line 2021
    .local v7, e:Ljava/lang/InterruptedException;
    :try_start_1
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2023
    .end local v7           #e:Ljava/lang/InterruptedException;
    :cond_2
    iget-object v0, v10, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    sget-object v2, Lcom/android/providers/media/MediaThumbRequest$State;->DONE:Lcom/android/providers/media/MediaThumbRequest$State;

    if-ne v0, v2, :cond_3

    .line 2024
    const/4 v11, 0x1

    .line 2026
    :cond_3
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2028
    .end local v1           #path:Ljava/lang/String;
    .end local v4           #magic:J
    .end local v8           #id:J
    .end local v10           #req:Lcom/android/providers/media/MediaThumbRequest;
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2026
    .restart local v1       #path:Ljava/lang/String;
    .restart local v4       #magic:J
    .restart local v8       #id:J
    .restart local v10       #req:Lcom/android/providers/media/MediaThumbRequest;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private writeAlbumArt(ZLandroid/net/Uri;[BLandroid/graphics/Bitmap;)V
    .locals 6
    .parameter "need_to_recompress"
    .parameter "out"
    .parameter "compressed"
    .parameter "bm"

    .prologue
    const/4 v5, 0x0

    .line 4590
    const/4 v2, 0x0

    .line 4592
    .local v2, success:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    .line 4594
    .local v1, outstream:Ljava/io/OutputStream;
    if-nez p1, :cond_1

    .line 4597
    invoke-virtual {v1, p3}, Ljava/io/OutputStream;->write([B)V

    .line 4598
    const/4 v2, 0x1

    .line 4603
    :goto_0
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4609
    .end local v1           #outstream:Ljava/io/OutputStream;
    :goto_1
    if-nez v2, :cond_0

    .line 4611
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p2, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4613
    :cond_0
    return-void

    .line 4600
    .restart local v1       #outstream:Ljava/io/OutputStream;
    :cond_1
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x55

    invoke-virtual {p4, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_0

    .line 4604
    .end local v1           #outstream:Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 4605
    .local v0, ex:Ljava/io/FileNotFoundException;
    sget-object v3, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v4, "error creating file"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 4606
    .end local v0           #ex:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 4607
    .local v0, ex:Ljava/io/IOException;
    sget-object v3, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v4, "error creating file"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 3588
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v6}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v3

    .line 3589
    .local v3, ihelper:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v6}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v1

    .line 3590
    .local v1, ehelper:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    invoke-virtual {v3}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 3591
    .local v2, idb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3592
    const/4 v0, 0x0

    .line 3593
    .local v0, edb:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v1, :cond_0

    .line 3594
    invoke-virtual {v1}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3595
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3598
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v5

    .line 3599
    .local v5, result:[Landroid/content/ContentProviderResult;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 3600
    if-eqz v0, :cond_1

    .line 3601
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 3606
    :cond_1
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 3607
    .local v4, res:Landroid/content/ContentResolver;
    const-string v6, "content://media/"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3610
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3611
    if-eqz v0, :cond_2

    .line 3612
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_2
    return-object v5

    .line 3610
    .end local v4           #res:Landroid/content/ContentResolver;
    .end local v5           #result:[Landroid/content/ContentProviderResult;
    :catchall_0
    move-exception v6

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3611
    if-eqz v0, :cond_3

    .line 3612
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_3
    throw v6
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 18
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 2743
    sget-object v15, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 2744
    .local v9, match:I
    const/16 v15, 0x12c

    if-ne v9, v15, :cond_0

    .line 2745
    invoke-super/range {p0 .. p2}, Landroid/content/ContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v11

    .line 2808
    :goto_0
    return v11

    .line 2747
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v3

    .line 2748
    .local v3, database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    if-nez v3, :cond_1

    .line 2749
    new-instance v15, Ljava/lang/UnsupportedOperationException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unknown URI: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 2752
    :cond_1
    invoke-virtual {v3}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 2753
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v4, :cond_2

    .line 2754
    new-instance v15, Ljava/lang/IllegalStateException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Couldn\'t open database for "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 2757
    :cond_2
    const/16 v15, 0x6f

    if-eq v9, v15, :cond_3

    const/16 v15, 0x70

    if-ne v9, v15, :cond_4

    .line 2758
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v4, v1, v2}, Lcom/android/providers/media/MediaProvider;->playlistBulkInsert(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v11

    goto :goto_0

    .line 2759
    :cond_4
    const/16 v15, 0x2c0

    if-ne v9, v15, :cond_5

    .line 2760
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x2

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2761
    .local v5, handle:I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v5, v1}, Lcom/android/providers/media/MediaProvider;->setObjectReferences(Landroid/database/sqlite/SQLiteDatabase;I[Landroid/content/ContentValues;)I

    move-result v11

    goto :goto_0

    .line 2764
    .end local v5           #handle:I
    :cond_5
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2765
    const/4 v11, 0x0

    .line 2767
    .local v11, numInserted:I
    const/4 v7, 0x0

    .line 2768
    .local v7, ids:[J
    const/4 v15, 0x1

    if-eq v9, v15, :cond_6

    const/16 v15, 0x64

    if-eq v9, v15, :cond_6

    const/16 v15, 0x6e

    if-eq v9, v15, :cond_6

    const/16 v15, 0xc8

    if-eq v9, v15, :cond_6

    const/16 v15, 0x2bc

    if-ne v9, v15, :cond_8

    :cond_6
    const/4 v10, 0x1

    .line 2772
    .local v10, needSendNotify:Z
    :goto_1
    :try_start_0
    move-object/from16 v0, p2

    array-length v8, v0

    .line 2774
    .local v8, len:I
    if-nez v10, :cond_9

    .line 2775
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    if-ge v6, v8, :cond_b

    .line 2776
    aget-object v15, p2, v6

    if-eqz v15, :cond_7

    .line 2777
    aget-object v15, p2, v6

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v9, v15, v2}, Lcom/android/providers/media/MediaProvider;->insertInternal(Landroid/net/Uri;ILandroid/content/ContentValues;Z)Landroid/net/Uri;

    .line 2775
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2768
    .end local v6           #i:I
    .end local v8           #len:I
    .end local v10           #needSendNotify:Z
    :cond_8
    const/4 v10, 0x0

    goto :goto_1

    .line 2780
    .restart local v8       #len:I
    .restart local v10       #needSendNotify:Z
    :cond_9
    new-array v7, v8, [J

    .line 2781
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_3
    if-ge v6, v8, :cond_b

    .line 2782
    const-wide/16 v15, 0x0

    aput-wide v15, v7, v6

    .line 2783
    aget-object v15, p2, v6

    if-eqz v15, :cond_a

    .line 2784
    aget-object v15, p2, v6

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v9, v15, v2}, Lcom/android/providers/media/MediaProvider;->insertInternal(Landroid/net/Uri;ILandroid/content/ContentValues;Z)Landroid/net/Uri;

    move-result-object v12

    .line 2785
    .local v12, retUri:Landroid/net/Uri;
    if-eqz v12, :cond_a

    .line 2786
    invoke-static {v12}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v15

    aput-wide v15, v7, v6

    .line 2781
    .end local v12           #retUri:Landroid/net/Uri;
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 2792
    :cond_b
    move v11, v8

    .line 2793
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2795
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2798
    if-eqz v10, :cond_d

    if-eqz v7, :cond_d

    .line 2799
    const/4 v6, 0x0

    :goto_4
    if-ge v6, v11, :cond_d

    .line 2800
    aget-wide v13, v7, v6

    .line 2801
    .local v13, rowId:J
    const-wide/16 v15, 0x0

    cmp-long v15, v13, v15

    if-lez v15, :cond_c

    .line 2802
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/providers/media/MediaProvider;->sendObjectAdded(J)V

    .line 2799
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 2795
    .end local v6           #i:I
    .end local v8           #len:I
    .end local v13           #rowId:J
    :catchall_0
    move-exception v15

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v15

    .line 2807
    .restart local v6       #i:I
    .restart local v8       #len:I
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 27
    .parameter "uri"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    .line 3871
    sget-object v6, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enter delete, uri: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3872
    invoke-static {}, Lcom/motorola/providers/mediaext/MediaExtProvider;->singleton()Lcom/motorola/providers/mediaext/MediaExtProvider;

    move-result-object v4

    .line 3873
    .local v4, extProvider:Lcom/motorola/providers/mediaext/MediaExtProvider;
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/motorola/providers/mediaext/MediaExtProvider;->isExtensionUri(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3874
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v6

    if-nez v6, :cond_0

    .line 3875
    const/16 v18, 0x0

    .line 3983
    :goto_0
    return v18

    .line 3877
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    move-object/from16 v5, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    invoke-virtual/range {v4 .. v10}, Lcom/motorola/providers/mediaext/MediaExtProvider;->delete(Lcom/android/providers/media/MediaProvider;Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    goto :goto_0

    .line 3882
    :cond_1
    invoke-static {}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->singleton()Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;

    move-result-object v5

    .line 3883
    .local v5, extnProvider:Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->isExtensionUri(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3884
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v6

    if-nez v6, :cond_2

    .line 3885
    const/16 v18, 0x0

    goto :goto_0

    .line 3887
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    move-object/from16 v6, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-virtual/range {v5 .. v11}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->delete(Lcom/android/providers/media/MediaProvider;Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    goto :goto_0

    .line 3892
    :cond_3
    const/16 v18, 0x0

    .line 3893
    .local v18, count:I
    sget-object v6, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v23

    .line 3896
    .local v23, match:I
    const/16 v6, 0x1f4

    move/from16 v0, v23

    if-ne v0, v6, :cond_5

    .line 3897
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/media/MediaProvider;->mMediaScannerVolume:Ljava/lang/String;

    if-nez v6, :cond_4

    .line 3898
    const/16 v18, 0x0

    goto :goto_0

    .line 3900
    :cond_4
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/providers/media/MediaProvider;->mMediaScannerVolume:Ljava/lang/String;

    .line 3901
    const/16 v18, 0x1

    goto :goto_0

    .line 3904
    :cond_5
    const/16 v6, 0x12d

    move/from16 v0, v23

    if-ne v0, v6, :cond_6

    .line 3905
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->detachVolume(Landroid/net/Uri;)V

    .line 3906
    const/16 v18, 0x1

    goto :goto_0

    .line 3907
    :cond_6
    const/16 v6, 0x2c1

    move/from16 v0, v23

    if-ne v0, v6, :cond_8

    .line 3908
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/providers/media/MediaProvider;->mMtpServiceConnection:Landroid/content/ServiceConnection;

    monitor-enter v7

    .line 3909
    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/media/MediaProvider;->mMtpService:Lcom/android/providers/media/IMtpService;

    if-eqz v6, :cond_7

    .line 3911
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/providers/media/MediaProvider;->mMtpServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v6, v8}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 3912
    const/16 v18, 0x1

    .line 3915
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/providers/media/MediaProvider;->mMtpService:Lcom/android/providers/media/IMtpService;

    .line 3919
    :goto_1
    monitor-exit v7

    goto/16 :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 3917
    :cond_7
    const/16 v18, 0x0

    goto :goto_1

    .line 3921
    :cond_8
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v19

    .line 3922
    .local v19, database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    if-nez v19, :cond_9

    .line 3923
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown URI: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " match: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3926
    :cond_9
    invoke-virtual/range {v19 .. v19}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v20

    .line 3928
    .local v20, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v26, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    monitor-enter v26

    .line 3929
    :try_start_1
    sget-object v6, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/android/providers/media/MediaProvider;->getTableAndWhere(Landroid/net/Uri;ILjava/lang/String;Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;)V

    .line 3932
    const-string v6, "files"

    sget-object v7, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v7, v7, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 3933
    const/16 v22, 0x1

    .line 3934
    .local v22, deleteFile:Z
    const-string v6, "delete_file"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 3935
    .local v21, delFileStr:Ljava/lang/String;
    if-eqz v21, :cond_a

    const-string v6, "0"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 3936
    const/16 v22, 0x0

    .line 3937
    :cond_a
    if-nez v22, :cond_b

    .line 3938
    sget-object v6, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v6, v6, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v7, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v7, v7, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v6, v7, v2}, Lcom/android/providers/media/MediaProvider;->deleteDBItemOnly(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    monitor-exit v26

    move/from16 v18, v6

    goto/16 :goto_0

    .line 3942
    .end local v21           #delFileStr:Ljava/lang/String;
    .end local v22           #deleteFile:Z
    :cond_b
    sparse-switch v23, :sswitch_data_0

    .line 3969
    sget-object v6, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v6, v6, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v7, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v7, v7, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v6, v7, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    .line 3977
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 3978
    .local v25, volume:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://media/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    .line 3979
    .local v24, notifyUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v6, v0, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3980
    monitor-exit v26

    goto/16 :goto_0

    .end local v24           #notifyUri:Landroid/net/Uri;
    .end local v25           #volume:Ljava/lang/String;
    :catchall_1
    move-exception v6

    monitor-exit v26
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v6

    .line 3945
    :sswitch_0
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/motorola/android/provider/MediaStoreExt$Images$MultishotsInfo;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 3946
    .local v10, multishotsImageUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    move-object v6, v4

    move-object/from16 v7, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-virtual/range {v6 .. v12}, Lcom/motorola/providers/mediaext/MediaExtProvider;->delete(Lcom/android/providers/media/MediaProvider;Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    .line 3947
    goto :goto_2

    .line 3949
    .end local v10           #multishotsImageUri:Landroid/net/Uri;
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/motorola/android/provider/MediaStoreExt$Images$MultishotsInfo;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v15

    .line 3950
    .local v15, multishotsImageIDUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    move-object v11, v4

    move-object/from16 v12, p0

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    invoke-virtual/range {v11 .. v17}, Lcom/motorola/providers/mediaext/MediaExtProvider;->delete(Lcom/android/providers/media/MediaProvider;Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v18

    .line 3951
    goto/16 :goto_2

    .line 3958
    .end local v15           #multishotsImageIDUri:Landroid/net/Uri;
    :sswitch_2
    const/4 v6, 0x1

    :try_start_3
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/providers/media/MediaProvider;->mDisableMtpObjectCallbacks:Z

    .line 3959
    const-string v6, "files"

    sget-object v7, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v7, v7, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v6, v7, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v18

    .line 3961
    const/4 v6, 0x0

    :try_start_4
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/providers/media/MediaProvider;->mDisableMtpObjectCallbacks:Z

    goto/16 :goto_2

    :catchall_2
    move-exception v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/android/providers/media/MediaProvider;->mDisableMtpObjectCallbacks:Z

    throw v6

    .line 3965
    :sswitch_3
    const-string v6, "audio_genres_map"

    sget-object v7, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v7, v7, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v6, v7, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v18

    .line 3967
    goto/16 :goto_2

    .line 3942
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x6c -> :sswitch_3
        0x2be -> :sswitch_2
        0x2bf -> :sswitch_2
    .end sparse-switch
.end method

.method deleteDBItemOnly(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 11
    .parameter "db"
    .parameter "updateTbl"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    const/4 v10, 0x0

    .line 3836
    const/4 v0, 0x0

    .line 3837
    .local v0, count:I
    const/4 v3, 0x0

    .line 3840
    .local v3, needNotify:Z
    sget-object v7, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "enter deleteDBItemOnly "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " where="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3841
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3843
    :try_start_0
    const-string v6, "////"

    .line 3844
    .local v6, toDelId:Ljava/lang/String;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 3845
    .local v4, newValues:Landroid/content/ContentValues;
    const-string v7, "_data"

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3846
    invoke-virtual {p1, p2, v4, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 3847
    .local v2, expectedToDel:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_data=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 3848
    const/4 v7, 0x0

    invoke-virtual {p1, p2, p3, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3849
    if-lez v0, :cond_1

    if-lt v0, v2, :cond_1

    .line 3850
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3851
    const/4 v3, 0x1

    .line 3857
    :goto_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3859
    .end local v2           #expectedToDel:I
    .end local v4           #newValues:Landroid/content/ContentValues;
    .end local v6           #toDelId:Ljava/lang/String;
    :goto_1
    if-eqz v3, :cond_0

    .line 3860
    const-string v7, "content://media/external"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 3861
    .local v5, notifyUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v5, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3864
    .end local v5           #notifyUri:Landroid/net/Uri;
    :cond_0
    return v0

    .line 3853
    .restart local v2       #expectedToDel:I
    .restart local v4       #newValues:Landroid/content/ContentValues;
    .restart local v6       #toDelId:Ljava/lang/String;
    :cond_1
    :try_start_1
    sget-object v7, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cancel transaction,update="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " deleted="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3854
    .end local v2           #expectedToDel:I
    .end local v4           #newValues:Landroid/content/ContentValues;
    .end local v6           #toDelId:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 3855
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    sget-object v7, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3857
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7
.end method

.method public ensureFileExt(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 1
    .parameter "internal"
    .parameter "initialValues"
    .parameter "preferredExtension"
    .parameter "directoryName"

    .prologue
    .line 2710
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/media/MediaProvider;->ensureFile(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 2711
    .local v0, values:Landroid/content/ContentValues;
    return-object v0
.end method

.method getAlbumArtOutputUri(Landroid/database/sqlite/SQLiteDatabase;JLandroid/net/Uri;II)Landroid/net/Uri;
    .locals 16
    .parameter "db"
    .parameter "album_id"
    .parameter "albumart_uri"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 4540
    const/4 v12, 0x0

    .line 4543
    .local v12, out:Landroid/net/Uri;
    if-eqz p4, :cond_1

    .line 4544
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_data"

    aput-object v2, v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/providers/media/MediaProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 4547
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_3

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4548
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 4549
    .local v7, albumart_path:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/providers/media/MediaProvider;->ensureFileExists(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 4550
    move-object/from16 v12, p4

    .line 4560
    .end local v7           #albumart_path:Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v8, :cond_1

    .line 4561
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 4565
    .end local v8           #c:Landroid/database/Cursor;
    :cond_1
    :goto_1
    if-nez p4, :cond_2

    .line 4566
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 4567
    .local v11, initialValues:Landroid/content/ContentValues;
    const-string v1, "album_id"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4569
    const-string v1, "width"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4570
    const-string v1, "height"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4571
    const-string v1, "format"

    const-string v2, "JPEG"

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4574
    const/4 v1, 0x0

    :try_start_1
    const-string v2, ""

    const-string v3, "Android/data/com.android.providers.media/albumthumbs"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11, v2, v3}, Lcom/android/providers/media/MediaProvider;->ensureFile(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v15

    .line 4575
    .local v15, values:Landroid/content/ContentValues;
    const-string v1, "album_art"

    const-string v2, "_data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v15}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v13

    .line 4576
    .local v13, rowId:J
    const-wide/16 v1, 0x0

    cmp-long v1, v13, v1

    if-lez v1, :cond_2

    .line 4577
    sget-object v1, Lcom/android/providers/media/MediaProvider;->ALBUMART_URI:Landroid/net/Uri;

    invoke-static {v1, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v12

    .line 4583
    .end local v11           #initialValues:Landroid/content/ContentValues;
    .end local v13           #rowId:J
    .end local v15           #values:Landroid/content/ContentValues;
    :cond_2
    :goto_2
    return-object v12

    .line 4553
    .restart local v8       #c:Landroid/database/Cursor;
    :cond_3
    const/16 p4, 0x0

    goto :goto_0

    .line 4556
    :catch_0
    move-exception v9

    .line 4557
    .local v9, e:Ljava/lang/Exception;
    :try_start_2
    sget-object v1, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v2, "cursor issue"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4560
    if-eqz v8, :cond_1

    .line 4561
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 4560
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_4

    .line 4561
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1

    .line 4579
    .end local v8           #c:Landroid/database/Cursor;
    .restart local v11       #initialValues:Landroid/content/ContentValues;
    :catch_1
    move-exception v10

    .line 4580
    .local v10, ex:Ljava/lang/IllegalStateException;
    sget-object v1, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v2, "error creating album thumb file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public getTableAndWhereExt(Landroid/net/Uri;Ljava/lang/String;Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;)V
    .locals 2
    .parameter "uri"
    .parameter "userWhere"
    .parameter "out"

    .prologue
    .line 3686
    sget-object v1, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 3687
    .local v0, match:I
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/providers/media/MediaProvider;->getTableAndWhere(Landroid/net/Uri;ILjava/lang/String;Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;)V

    .line 3688
    return-void
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 11
    .parameter "url"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2619
    invoke-static {}, Lcom/motorola/providers/mediaext/MediaExtProvider;->singleton()Lcom/motorola/providers/mediaext/MediaExtProvider;

    move-result-object v8

    .line 2620
    .local v8, extnProvider:Lcom/motorola/providers/mediaext/MediaExtProvider;
    invoke-virtual {v8, p1}, Lcom/motorola/providers/mediaext/MediaExtProvider;->isExtensionUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2621
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v7

    .line 2622
    .local v7, database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    if-nez v7, :cond_1

    .line 2676
    .end local v7           #database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    :cond_0
    :goto_0
    return-object v9

    .line 2625
    .restart local v7       #database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    :cond_1
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v7}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v8, p0, v0, v1, p1}, Lcom/motorola/providers/mediaext/MediaExtProvider;->getType(Lcom/android/providers/media/MediaProvider;Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 2628
    .end local v7           #database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    :cond_2
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 2678
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2634
    :sswitch_0
    const/4 v6, 0x0

    .line 2636
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Lcom/android/providers/media/MediaProvider;->MIME_TYPE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/media/MediaProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2637
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_4

    .line 2638
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2639
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2640
    .local v9, mimeType:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->deactivate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2644
    if-eqz v6, :cond_0

    .line 2645
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2644
    .end local v9           #mimeType:Ljava/lang/String;
    :cond_4
    if-eqz v6, :cond_3

    .line 2645
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2644
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 2645
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 2652
    .end local v6           #c:Landroid/database/Cursor;
    :sswitch_1
    const-string v9, "vnd.android.cursor.dir/image"

    goto :goto_0

    .line 2655
    :sswitch_2
    const-string v9, "image/jpeg"

    goto :goto_0

    .line 2660
    :sswitch_3
    const-string v9, "vnd.android.cursor.dir/audio"

    goto :goto_0

    .line 2664
    :sswitch_4
    const-string v9, "vnd.android.cursor.dir/genre"

    goto :goto_0

    .line 2667
    :sswitch_5
    const-string v9, "vnd.android.cursor.item/genre"

    goto :goto_0

    .line 2670
    :sswitch_6
    const-string v9, "vnd.android.cursor.dir/playlist"

    goto :goto_0

    .line 2673
    :sswitch_7
    const-string v9, "vnd.android.cursor.item/playlist"

    goto :goto_0

    .line 2676
    :sswitch_8
    const-string v9, "vnd.android.cursor.dir/video"

    goto :goto_0

    .line 2628
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x64 -> :sswitch_3
        0x65 -> :sswitch_0
        0x66 -> :sswitch_4
        0x67 -> :sswitch_5
        0x68 -> :sswitch_6
        0x69 -> :sswitch_7
        0x6a -> :sswitch_4
        0x6b -> :sswitch_5
        0x6c -> :sswitch_3
        0x6e -> :sswitch_6
        0x6f -> :sswitch_7
        0x70 -> :sswitch_3
        0x71 -> :sswitch_0
        0x78 -> :sswitch_2
        0xc8 -> :sswitch_8
        0xc9 -> :sswitch_0
        0x2bd -> :sswitch_0
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    .line 2813
    sget-object v2, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 2814
    .local v0, match:I
    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, p2, v2}, Lcom/android/providers/media/MediaProvider;->insertInternal(Landroid/net/Uri;ILandroid/content/ContentValues;Z)Landroid/net/Uri;

    move-result-object v1

    .line 2817
    .local v1, newUri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    const/16 v2, 0x2be

    if-eq v0, v2, :cond_0

    .line 2818
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2820
    :cond_0
    return-object v1
.end method

.method makeBestName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "one"
    .parameter "two"

    .prologue
    const/16 v4, 0x2c

    .line 4980
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 4981
    move-object v1, p1

    .line 4992
    .local v1, name:Ljava/lang/String;
    :goto_0
    const-string v2, ", the"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ",the"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ", an"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ",an"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ", a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ",a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4995
    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 4996
    .local v0, fix:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5000
    .end local v0           #fix:Ljava/lang/String;
    :cond_1
    return-object v1

    .line 4984
    .end local v1           #name:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_3

    .line 4985
    move-object v1, p1

    .restart local v1       #name:Ljava/lang/String;
    goto :goto_0

    .line 4987
    .end local v1           #name:Ljava/lang/String;
    :cond_3
    move-object v1, p2

    .restart local v1       #name:Ljava/lang/String;
    goto :goto_0
.end method

.method public onCreate()Z
    .locals 17

    .prologue
    .line 601
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 602
    .local v2, context:Landroid/content/Context;
    sget-object v12, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v13, "_id"

    const-string v14, "audio.album_id AS _id"

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    sget-object v12, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v13, "album"

    const-string v14, "album"

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    sget-object v12, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v13, "album_key"

    const-string v14, "album_key"

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    sget-object v12, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v13, "minyear"

    const-string v14, "MIN(year) AS minyear"

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    sget-object v12, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v13, "maxyear"

    const-string v14, "MAX(year) AS maxyear"

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    sget-object v12, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v13, "artist"

    const-string v14, "artist"

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    sget-object v12, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v13, "artist_id"

    const-string v14, "artist"

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    sget-object v12, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v13, "artist_key"

    const-string v14, "artist_key"

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    sget-object v12, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v13, "numsongs"

    const-string v14, "count(*) AS numsongs"

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    sget-object v12, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v13, "album_art"

    const-string v14, "album_art._data AS album_art"

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/providers/media/MediaProvider;->mSearchColsBasic:[Ljava/lang/String;

    const/4 v13, 0x5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/providers/media/MediaProvider;->mSearchColsBasic:[Ljava/lang/String;

    const/4 v15, 0x5

    aget-object v14, v14, v15

    const-string v15, "%1"

    const v16, 0x7f050003

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    .line 621
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    .line 622
    const-string v12, "internal"

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/providers/media/MediaProvider;->attachVolumeAsync(Ljava/lang/String;)V

    .line 624
    new-instance v5, Landroid/content/IntentFilter;

    const-string v12, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v5, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 625
    .local v5, iFilter:Landroid/content/IntentFilter;
    const-string v12, "file"

    invoke-virtual {v5, v12}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 626
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/providers/media/MediaProvider;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v12, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 628
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/providers/media/MediaProvider;->mCaseInsensitivePaths:Z

    .line 630
    const-string v12, "storage"

    invoke-virtual {v2, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/storage/StorageManager;

    .line 634
    .local v10, storageManager:Landroid/os/storage/StorageManager;
    invoke-virtual {v10}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v11

    .line 635
    .local v11, storagePaths:[Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    array-length v12, v11

    invoke-direct {v8, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 636
    .local v8, scanPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v1, v11

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v7, v1, v4

    .line 637
    .local v7, path:Ljava/lang/String;
    const-string v12, "/mnt/usbdisk"

    invoke-virtual {v7, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 638
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 641
    .end local v7           #path:Ljava/lang/String;
    :cond_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/String;

    sput-object v12, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    .line 642
    sget-object v12, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    sput-object v12, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    .line 643
    sget-object v12, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "external storage supported is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    array-length v14, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/providers/media/MediaProvider;->mMountedActionReceived:Z

    .line 648
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/providers/media/MediaProvider;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v12, :cond_2

    .line 649
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/providers/media/MediaProvider;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 650
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/providers/media/MediaProvider;->mStorageManager:Landroid/os/storage/StorageManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/media/MediaProvider;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v12, v13}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 655
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    .line 656
    .local v9, state:Ljava/lang/String;
    const-string v12, "mounted"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    const-string v12, "mounted_ro"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 658
    :cond_3
    const-string v12, "external"

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/providers/media/MediaProvider;->attachVolumeAsync(Ljava/lang/String;)V

    .line 659
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->checkStorage()V

    .line 662
    :cond_4
    new-instance v3, Landroid/os/HandlerThread;

    const-string v12, "thumbs thread"

    const/16 v13, 0xa

    invoke-direct {v3, v12, v13}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 663
    .local v3, ht:Landroid/os/HandlerThread;
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 664
    new-instance v12, Lcom/android/providers/media/MediaProvider$5;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v13}, Lcom/android/providers/media/MediaProvider$5;-><init>(Lcom/android/providers/media/MediaProvider;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/providers/media/MediaProvider;->mThumbHandler:Landroid/os/Handler;

    .line 754
    const/4 v12, 0x1

    return v12
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 24
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 4309
    sget-object v6, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "openFile()::uri ="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4310
    invoke-static {}, Lcom/motorola/providers/mediaext/MediaExtProvider;->singleton()Lcom/motorola/providers/mediaext/MediaExtProvider;

    move-result-object v3

    .line 4311
    .local v3, extnProvider:Lcom/motorola/providers/mediaext/MediaExtProvider;
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/motorola/providers/mediaext/MediaExtProvider;->isExtensionUri(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4312
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v19

    .line 4313
    .local v19, database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    if-nez v19, :cond_1

    .line 4314
    const/16 v22, 0x0

    .line 4399
    .end local v19           #database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    :cond_0
    :goto_0
    return-object v22

    .line 4316
    .restart local v19       #database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    move-object/from16 v4, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-virtual/range {v3 .. v8}, Lcom/motorola/providers/mediaext/MediaExtProvider;->openFile(Lcom/android/providers/media/MediaProvider;Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v22

    goto :goto_0

    .line 4320
    .end local v19           #database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    :cond_2
    const/16 v22, 0x0

    .line 4322
    .local v22, pfd:Landroid/os/ParcelFileDescriptor;
    sget-object v6, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    const/16 v7, 0x79

    if-ne v6, v7, :cond_6

    .line 4324
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v19

    .line 4325
    .restart local v19       #database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    if-nez v19, :cond_3

    .line 4326
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t open database for "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4328
    :cond_3
    invoke-virtual/range {v19 .. v19}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 4329
    .local v5, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v5, :cond_4

    .line 4330
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t open database for "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4332
    :cond_4
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 4333
    .local v4, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 4334
    .local v23, songid:I
    const-string v6, "audio_meta"

    invoke-virtual {v4, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 4335
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 4336
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v9, "_data"

    aput-object v9, v6, v7

    const/4 v7, 0x1

    const-string v9, "album_id"

    aput-object v9, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 4341
    .local v18, c:Landroid/database/Cursor;
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 4342
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 4343
    .local v8, audiopath:Ljava/lang/String;
    const/4 v6, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 4347
    .local v17, albumid:I
    sget-object v6, Lcom/android/providers/media/MediaProvider;->ALBUMART_URI:Landroid/net/Uri;

    move/from16 v0, v17

    int-to-long v9, v0

    invoke-static {v6, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v21

    .line 4349
    .local v21, newUri:Landroid/net/Uri;
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/media/MediaProvider;->openFileHelper(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v22

    .line 4355
    .end local v8           #audiopath:Ljava/lang/String;
    .end local v17           #albumid:I
    .end local v21           #newUri:Landroid/net/Uri;
    :cond_5
    :goto_1
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 4350
    .restart local v8       #audiopath:Ljava/lang/String;
    .restart local v17       #albumid:I
    .restart local v21       #newUri:Landroid/net/Uri;
    :catch_0
    move-exception v20

    .line 4352
    .local v20, ex:Ljava/io/FileNotFoundException;
    move/from16 v0, v17

    int-to-long v9, v0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object v7, v5

    invoke-direct/range {v6 .. v11}, Lcom/android/providers/media/MediaProvider;->getThumb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JLandroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v22

    goto :goto_1

    .line 4360
    .end local v4           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v5           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #audiopath:Ljava/lang/String;
    .end local v17           #albumid:I
    .end local v18           #c:Landroid/database/Cursor;
    .end local v19           #database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    .end local v20           #ex:Ljava/io/FileNotFoundException;
    .end local v21           #newUri:Landroid/net/Uri;
    .end local v23           #songid:I
    :cond_6
    :try_start_1
    invoke-virtual/range {p0 .. p2}, Lcom/android/providers/media/MediaProvider;->openFileHelper(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v22

    goto/16 :goto_0

    .line 4361
    :catch_1
    move-exception v20

    .line 4362
    .restart local v20       #ex:Ljava/io/FileNotFoundException;
    const-string v6, "w"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 4364
    throw v20

    .line 4367
    :cond_7
    sget-object v6, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    const/16 v7, 0x78

    if-ne v6, v7, :cond_b

    .line 4369
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v19

    .line 4370
    .restart local v19       #database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    if-nez v19, :cond_8

    .line 4371
    throw v20

    .line 4373
    :cond_8
    invoke-virtual/range {v19 .. v19}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 4374
    .restart local v5       #db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v5, :cond_9

    .line 4375
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t open database for "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4377
    :cond_9
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 4378
    .restart local v4       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 4379
    .restart local v17       #albumid:I
    const-string v6, "audio_meta"

    invoke-virtual {v4, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 4380
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "album_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 4381
    const/4 v6, 0x1

    new-array v11, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_data"

    aput-object v7, v11, v6

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v16, "track"

    move-object v9, v4

    move-object v10, v5

    invoke-virtual/range {v9 .. v16}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 4385
    .restart local v18       #c:Landroid/database/Cursor;
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 4386
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 4387
    .restart local v8       #audiopath:Ljava/lang/String;
    move/from16 v0, v17

    int-to-long v9, v0

    move-object/from16 v6, p0

    move-object v7, v5

    move-object/from16 v11, p1

    invoke-direct/range {v6 .. v11}, Lcom/android/providers/media/MediaProvider;->getThumb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JLandroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v22

    .line 4389
    .end local v8           #audiopath:Ljava/lang/String;
    :cond_a
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 4391
    .end local v4           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v5           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v17           #albumid:I
    .end local v18           #c:Landroid/database/Cursor;
    .end local v19           #database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    :cond_b
    if-nez v22, :cond_0

    .line 4392
    throw v20

    .line 4395
    .end local v20           #ex:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v20

    .line 4396
    .local v20, ex:Ljava/lang/IllegalStateException;
    new-instance v6, Ljava/io/FileNotFoundException;

    invoke-direct {v6}, Ljava/io/FileNotFoundException;-><init>()V

    throw v6
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 43
    .parameter "uri"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 2115
    invoke-static {}, Lcom/motorola/providers/mediaext/MediaExtProvider;->singleton()Lcom/motorola/providers/mediaext/MediaExtProvider;

    move-result-object v3

    .line 2116
    .local v3, extProvider:Lcom/motorola/providers/mediaext/MediaExtProvider;
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/motorola/providers/mediaext/MediaExtProvider;->isExtensionUri(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2117
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v5

    if-nez v5, :cond_1

    .line 2118
    const/16 v31, 0x0

    .line 2548
    :cond_0
    :goto_0
    return-object v31

    .line 2120
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v3 .. v10}, Lcom/motorola/providers/mediaext/MediaExtProvider;->query(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v31

    goto :goto_0

    .line 2125
    :cond_2
    invoke-static {}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->singleton()Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;

    move-result-object v4

    .line 2126
    .local v4, extnProvider:Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->isExtensionUri(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2127
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v5

    if-nez v5, :cond_3

    .line 2128
    const/16 v31, 0x0

    goto :goto_0

    .line 2130
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-virtual/range {v4 .. v11}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->query(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v31

    goto :goto_0

    .line 2134
    :cond_4
    sget-object v5, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v19

    .line 2135
    .local v19, table:I
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    .line 2139
    .local v40, prependArgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/16 v5, 0x1f4

    move/from16 v0, v19

    if-ne v0, v5, :cond_6

    .line 2140
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/media/MediaProvider;->mMediaScannerVolume:Ljava/lang/String;

    if-nez v5, :cond_5

    .line 2141
    const/16 v31, 0x0

    goto :goto_0

    .line 2144
    :cond_5
    new-instance v31, Landroid/database/MatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "volume"

    aput-object v8, v5, v7

    move-object/from16 v0, v31

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2145
    .local v31, c:Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/providers/media/MediaProvider;->mMediaScannerVolume:Ljava/lang/String;

    aput-object v8, v5, v7

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2153
    .end local v31           #c:Landroid/database/MatrixCursor;
    :cond_6
    const/16 v5, 0x258

    move/from16 v0, v19

    if-ne v0, v5, :cond_7

    .line 2154
    new-instance v31, Landroid/database/MatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "fsid"

    aput-object v8, v5, v7

    move-object/from16 v0, v31

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2155
    .restart local v31       #c:Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/providers/media/MediaProvider;->mVolumeId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2159
    .end local v31           #c:Landroid/database/MatrixCursor;
    :cond_7
    const/16 v5, 0x259

    move/from16 v0, v19

    if-ne v0, v5, :cond_8

    .line 2160
    new-instance v31, Landroid/database/MatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "version"

    aput-object v8, v5, v7

    move-object/from16 v0, v31

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2161
    .restart local v31       #c:Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v7, 0x0

    const v8, 0x18839

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2165
    .end local v31           #c:Landroid/database/MatrixCursor;
    :cond_8
    const-string v5, "group_by"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 2166
    .local v26, groupBy:Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v33

    .line 2167
    .local v33, database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    if-nez v33, :cond_9

    .line 2168
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 2170
    :cond_9
    invoke-virtual/range {v33 .. v33}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    .line 2171
    .local v12, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v12, :cond_a

    const/16 v31, 0x0

    goto/16 :goto_0

    .line 2172
    :cond_a
    new-instance v6, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v6}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2173
    .local v6, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v5, "limit"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2174
    .local v20, limit:Ljava/lang/String;
    const-string v5, "filter"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 2175
    .local v34, filter:Ljava/lang/String;
    const/16 v38, 0x0

    .line 2176
    .local v38, keywords:[Ljava/lang/String;
    if-eqz v34, :cond_b

    .line 2177
    invoke-static/range {v34 .. v34}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v34

    .line 2178
    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 2179
    const-string v5, " "

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v41

    .line 2180
    .local v41, searchWords:[Ljava/lang/String;
    move-object/from16 v0, v41

    array-length v5, v0

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v38, v0

    .line 2181
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v32

    .line 2182
    .local v32, col:Ljava/text/Collator;
    const/4 v5, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/text/Collator;->setStrength(I)V

    .line 2183
    const/16 v36, 0x0

    .local v36, i:I
    :goto_1
    move-object/from16 v0, v41

    array-length v5, v0

    move/from16 v0, v36

    if-ge v0, v5, :cond_b

    .line 2184
    aget-object v5, v41, v36

    invoke-static {v5}, Landroid/provider/MediaStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 2185
    .local v37, key:Ljava/lang/String;
    const-string v5, "\\"

    const-string v7, "\\\\"

    move-object/from16 v0, v37

    invoke-virtual {v0, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v37

    .line 2186
    const-string v5, "%"

    const-string v7, "\\%"

    move-object/from16 v0, v37

    invoke-virtual {v0, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v37

    .line 2187
    const-string v5, "_"

    const-string v7, "\\_"

    move-object/from16 v0, v37

    invoke-virtual {v0, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v37

    .line 2188
    aput-object v37, v38, v36

    .line 2183
    add-int/lit8 v36, v36, 0x1

    goto :goto_1

    .line 2192
    .end local v32           #col:Ljava/text/Collator;
    .end local v36           #i:I
    .end local v37           #key:Ljava/lang/String;
    .end local v41           #searchWords:[Ljava/lang/String;
    :cond_b
    const-string v5, "distinct"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 2193
    const/4 v5, 0x1

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 2196
    :cond_c
    const/4 v10, 0x0

    .line 2198
    .local v10, hasThumbnailId:Z
    sparse-switch v19, :sswitch_data_0

    .line 2533
    move/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v6, v0, v1}, Lcom/android/providers/media/BlurMusicStore;->populateQueryBuilder(Landroid/database/sqlite/SQLiteQueryBuilder;ILandroid/net/Uri;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 2534
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown URL: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2200
    :sswitch_0
    const-string v5, "images"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2541
    :cond_d
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/android/providers/media/MediaProvider;->combine(Ljava/util/List;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    const/16 v27, 0x0

    move-object/from16 v21, v6

    move-object/from16 v22, v12

    move-object/from16 v23, p2

    move-object/from16 v24, p3

    move-object/from16 v28, p5

    move-object/from16 v29, v20

    invoke-virtual/range {v21 .. v29}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v31

    .line 2544
    .local v31, c:Landroid/database/Cursor;
    if-eqz v31, :cond_0

    .line 2545
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-interface {v0, v5, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 2211
    .end local v31           #c:Landroid/database/Cursor;
    :sswitch_1
    const-string v5, "images"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2219
    const-string v5, "_id=?"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2220
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x3

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2224
    :sswitch_2
    const/4 v10, 0x1

    .line 2226
    :sswitch_3
    const-string v8, "thumbnails"

    const-string v9, "image_id"

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/media/MediaProvider;->queryThumbnail(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_d

    .line 2227
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 2232
    :sswitch_4
    if-eqz p2, :cond_f

    move-object/from16 v0, p2

    array-length v5, v0

    const/4 v7, 0x1

    if-ne v5, v7, :cond_f

    if-nez p4, :cond_f

    if-eqz p3, :cond_e

    const-string v5, "is_music=1"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_e

    const-string v5, "is_podcast=1"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    :cond_e
    const/4 v5, 0x0

    aget-object v5, p2, v5

    const-string v7, "count(*)"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    if-eqz v38, :cond_f

    .line 2238
    const-string v5, "audio_meta"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2240
    :cond_f
    const-string v5, "audio"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2241
    const/16 v36, 0x0

    .restart local v36       #i:I
    :goto_3
    if-eqz v38, :cond_d

    move-object/from16 v0, v38

    array-length v5, v0

    move/from16 v0, v36

    if-ge v0, v5, :cond_d

    .line 2242
    if-lez v36, :cond_10

    .line 2243
    const-string v5, " AND "

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2245
    :cond_10
    const-string v5, "artist_key||album_key||title_key LIKE ? ESCAPE \'\\\'"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2248
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v7, v38, v36

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "%"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2241
    add-int/lit8 v36, v36, 0x1

    goto :goto_3

    .line 2254
    .end local v36           #i:I
    :sswitch_5
    const-string v5, "audio"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2255
    const-string v5, "_id=?"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2256
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x3

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2260
    :sswitch_6
    const-string v5, "audio_genres"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2261
    const-string v5, "_id IN (SELECT genre_id FROM audio_genres_map WHERE audio_id=?)"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2263
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x3

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2267
    :sswitch_7
    const-string v5, "audio_genres"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2268
    const-string v5, "_id=?"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2269
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x5

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2273
    :sswitch_8
    const-string v5, "audio_playlists"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2274
    const-string v5, "_id IN (SELECT playlist_id FROM audio_playlists_map WHERE audio_id=?)"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2276
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x3

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2280
    :sswitch_9
    const-string v5, "audio_playlists"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2281
    const-string v5, "_id=?"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2282
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x5

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2286
    :sswitch_a
    const-string v5, "audio_genres_map"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2291
    :sswitch_b
    const-string v5, "audio_genres"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2295
    :sswitch_c
    const-string v5, "audio_genres"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2296
    const-string v5, "_id=?"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2297
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x3

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2306
    :sswitch_d
    if-nez v38, :cond_14

    if-eqz p2, :cond_14

    if-eqz p3, :cond_11

    const-string v5, "genre_id=?"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    :cond_11
    const/16 v42, 0x1

    .line 2308
    .local v42, simpleQuery:Z
    :goto_4
    if-eqz p2, :cond_15

    .line 2309
    const/16 v36, 0x0

    .restart local v36       #i:I
    :goto_5
    move-object/from16 v0, p2

    array-length v5, v0

    move/from16 v0, v36

    if-ge v0, v5, :cond_15

    .line 2310
    aget-object v39, p2, v36

    .line 2311
    .local v39, p:Ljava/lang/String;
    const-string v5, "_id"

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 2316
    const/16 v42, 0x0

    .line 2318
    :cond_12
    if-eqz v42, :cond_13

    const-string v5, "audio_id"

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    const-string v5, "genre_id"

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 2320
    const/16 v42, 0x0

    .line 2309
    :cond_13
    add-int/lit8 v36, v36, 0x1

    goto :goto_5

    .line 2306
    .end local v36           #i:I
    .end local v39           #p:Ljava/lang/String;
    .end local v42           #simpleQuery:Z
    :cond_14
    const/16 v42, 0x0

    goto :goto_4

    .line 2324
    .restart local v42       #simpleQuery:Z
    :cond_15
    if-eqz v42, :cond_16

    .line 2325
    const-string v5, "audio_genres_map_noid"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2326
    const/16 v5, 0x6c

    move/from16 v0, v19

    if-ne v0, v5, :cond_d

    .line 2327
    const-string v5, "genre_id=?"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2328
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x3

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2331
    :cond_16
    const-string v5, "audio_genres_map_noid, audio"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2332
    const-string v5, "audio._id = audio_id"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2333
    const/16 v5, 0x6c

    move/from16 v0, v19

    if-ne v0, v5, :cond_17

    .line 2334
    const-string v5, " AND genre_id=?"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2335
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x3

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2337
    :cond_17
    const/16 v36, 0x0

    .restart local v36       #i:I
    :goto_6
    if-eqz v38, :cond_d

    move-object/from16 v0, v38

    array-length v5, v0

    move/from16 v0, v36

    if-ge v0, v5, :cond_d

    .line 2338
    const-string v5, " AND "

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2339
    const-string v5, "artist_key||album_key||title_key LIKE ? ESCAPE \'\\\'"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2343
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v7, v38, v36

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "%"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2337
    add-int/lit8 v36, v36, 0x1

    goto :goto_6

    .line 2350
    .end local v36           #i:I
    .end local v42           #simpleQuery:Z
    :sswitch_e
    const-string v5, "audio_playlists"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2354
    :sswitch_f
    const-string v5, "audio_playlists"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2355
    const-string v5, "_id=?"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2356
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x3

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2364
    :sswitch_10
    if-nez v38, :cond_1b

    if-eqz p2, :cond_1b

    if-eqz p3, :cond_18

    const-string v5, "playlist_id=?"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    :cond_18
    const/16 v42, 0x1

    .line 2366
    .restart local v42       #simpleQuery:Z
    :goto_7
    if-eqz p2, :cond_1c

    .line 2367
    const/16 v36, 0x0

    .restart local v36       #i:I
    :goto_8
    move-object/from16 v0, p2

    array-length v5, v0

    move/from16 v0, v36

    if-ge v0, v5, :cond_1c

    .line 2368
    aget-object v39, p2, v36

    .line 2369
    .restart local v39       #p:Ljava/lang/String;
    if-eqz v42, :cond_19

    const-string v5, "audio_id"

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_19

    const-string v5, "playlist_id"

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_19

    const-string v5, "play_order"

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_19

    .line 2371
    const/16 v42, 0x0

    .line 2373
    :cond_19
    const-string v5, "_id"

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 2374
    const-string v5, "audio_playlists_map._id AS _id"

    aput-object v5, p2, v36

    .line 2367
    :cond_1a
    add-int/lit8 v36, v36, 0x1

    goto :goto_8

    .line 2364
    .end local v36           #i:I
    .end local v39           #p:Ljava/lang/String;
    .end local v42           #simpleQuery:Z
    :cond_1b
    const/16 v42, 0x0

    goto :goto_7

    .line 2378
    .restart local v42       #simpleQuery:Z
    :cond_1c
    if-eqz v42, :cond_1e

    .line 2379
    const-string v5, "audio_playlists_map"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2380
    const-string v5, "playlist_id=?"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2381
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x3

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2395
    :cond_1d
    const/16 v5, 0x71

    move/from16 v0, v19

    if-ne v0, v5, :cond_d

    .line 2396
    const-string v5, " AND audio_playlists_map._id=?"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2397
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x5

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2383
    :cond_1e
    const-string v5, "audio_playlists_map, audio"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2384
    const-string v5, "audio._id = audio_id AND playlist_id=?"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2385
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x3

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2386
    const/16 v36, 0x0

    .restart local v36       #i:I
    :goto_9
    if-eqz v38, :cond_1d

    move-object/from16 v0, v38

    array-length v5, v0

    move/from16 v0, v36

    if-ge v0, v5, :cond_1d

    .line 2387
    const-string v5, " AND "

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2388
    const-string v5, "artist_key||album_key||title_key LIKE ? ESCAPE \'\\\'"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2392
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v7, v38, v36

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "%"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2386
    add-int/lit8 v36, v36, 0x1

    goto :goto_9

    .line 2402
    .end local v36           #i:I
    .end local v42           #simpleQuery:Z
    :sswitch_11
    const-string v5, "video"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2405
    :sswitch_12
    const-string v5, "video"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2406
    const-string v5, "_id=?"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2407
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x3

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2411
    :sswitch_13
    const/4 v10, 0x1

    .line 2413
    :sswitch_14
    const-string v8, "videothumbnails"

    const-string v9, "video_id"

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/media/MediaProvider;->queryThumbnail(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_d

    .line 2414
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 2419
    :sswitch_15
    if-eqz p2, :cond_20

    move-object/from16 v0, p2

    array-length v5, v0

    const/4 v7, 0x1

    if-ne v5, v7, :cond_20

    if-nez p4, :cond_20

    if-eqz p3, :cond_1f

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_20

    :cond_1f
    const/4 v5, 0x0

    aget-object v5, p2, v5

    const-string v7, "count(*)"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_20

    if-eqz v38, :cond_20

    .line 2424
    const-string v5, "audio_meta"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2425
    const/4 v5, 0x0

    const-string v7, "count(distinct artist_id)"

    aput-object v7, p2, v5

    .line 2426
    const-string v5, "is_music=1"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 2428
    :cond_20
    const-string v5, "artist_info"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2429
    const/16 v36, 0x0

    .restart local v36       #i:I
    :goto_a
    if-eqz v38, :cond_d

    move-object/from16 v0, v38

    array-length v5, v0

    move/from16 v0, v36

    if-ge v0, v5, :cond_d

    .line 2430
    if-lez v36, :cond_21

    .line 2431
    const-string v5, " AND "

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2433
    :cond_21
    const-string v5, "artist_key LIKE ? ESCAPE \'\\\'"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2435
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v7, v38, v36

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "%"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2429
    add-int/lit8 v36, v36, 0x1

    goto :goto_a

    .line 2441
    .end local v36           #i:I
    :sswitch_16
    const-string v5, "artist_info"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2442
    const-string v5, "_id=?"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2443
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x3

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2447
    :sswitch_17
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x3

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 2448
    .local v30, aid:Ljava/lang/String;
    const-string v5, "audio LEFT OUTER JOIN album_art ON audio.album_id=album_art.album_id"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2450
    const-string v5, "is_music=1 AND audio.album_id IN (SELECT album_id FROM artists_albums_map WHERE artist_id=?)"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2452
    move-object/from16 v0, v40

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2453
    const/16 v36, 0x0

    .restart local v36       #i:I
    :goto_b
    if-eqz v38, :cond_22

    move-object/from16 v0, v38

    array-length v5, v0

    move/from16 v0, v36

    if-ge v0, v5, :cond_22

    .line 2454
    const-string v5, " AND "

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2455
    const-string v5, "artist_key||album_key LIKE ? ESCAPE \'\\\'"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2458
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v7, v38, v36

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "%"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2453
    add-int/lit8 v36, v36, 0x1

    goto :goto_b

    .line 2460
    :cond_22
    const-string v26, "audio.album_id"

    .line 2461
    sget-object v5, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v7, "numsongs_by_artist"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "count(CASE WHEN artist_id=="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " THEN \'foo\' ELSE NULL END) AS "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "numsongs_by_artist"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2464
    sget-object v5, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto/16 :goto_2

    .line 2468
    .end local v30           #aid:Ljava/lang/String;
    .end local v36           #i:I
    :sswitch_18
    if-eqz p2, :cond_24

    move-object/from16 v0, p2

    array-length v5, v0

    const/4 v7, 0x1

    if-ne v5, v7, :cond_24

    if-nez p4, :cond_24

    if-eqz p3, :cond_23

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_24

    :cond_23
    const/4 v5, 0x0

    aget-object v5, p2, v5

    const-string v7, "count(*)"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    if-eqz v38, :cond_24

    .line 2473
    const-string v5, "audio_meta"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2474
    const/4 v5, 0x0

    const-string v7, "count(distinct album_id)"

    aput-object v7, p2, v5

    .line 2475
    const-string v5, "is_music=1"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 2477
    :cond_24
    const-string v5, "album_info"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2478
    const/16 v36, 0x0

    .restart local v36       #i:I
    :goto_c
    if-eqz v38, :cond_d

    move-object/from16 v0, v38

    array-length v5, v0

    move/from16 v0, v36

    if-ge v0, v5, :cond_d

    .line 2479
    if-lez v36, :cond_25

    .line 2480
    const-string v5, " AND "

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2482
    :cond_25
    const-string v5, "artist_key||album_key LIKE ? ESCAPE \'\\\'"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2485
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v7, v38, v36

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "%"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2478
    add-int/lit8 v36, v36, 0x1

    goto :goto_c

    .line 2491
    .end local v36           #i:I
    :sswitch_19
    const-string v5, "album_info"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2492
    const-string v5, "_id=?"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2493
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x3

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2497
    :sswitch_1a
    const-string v5, "album_art"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2498
    const-string v5, "album_id=?"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2499
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x3

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2504
    :sswitch_1b
    const-string v5, "album_art"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2509
    :sswitch_1c
    sget-object v5, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v7, "Legacy media search Uri used. Please update your code."

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2513
    :sswitch_1d
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/android/providers/media/MediaProvider;->combine(Ljava/util/List;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    move-object/from16 v11, p0

    move-object v13, v6

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move-object/from16 v18, p5

    invoke-direct/range {v11 .. v20}, Lcom/android/providers/media/MediaProvider;->doAudioSearch(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v31

    goto/16 :goto_0

    .line 2518
    :sswitch_1e
    const-string v5, "_id=?"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2519
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x2

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2523
    :sswitch_1f
    const-string v5, "files"

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2527
    :sswitch_20
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x2

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    .line 2528
    .local v35, handle:I
    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v12, v1}, Lcom/android/providers/media/MediaProvider;->getObjectReferences(Landroid/database/sqlite/SQLiteDatabase;I)Landroid/database/Cursor;

    move-result-object v31

    goto/16 :goto_0

    .line 2198
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x64 -> :sswitch_4
        0x65 -> :sswitch_5
        0x66 -> :sswitch_6
        0x67 -> :sswitch_7
        0x68 -> :sswitch_8
        0x69 -> :sswitch_9
        0x6a -> :sswitch_b
        0x6b -> :sswitch_c
        0x6c -> :sswitch_d
        0x6d -> :sswitch_d
        0x6e -> :sswitch_e
        0x6f -> :sswitch_f
        0x70 -> :sswitch_10
        0x71 -> :sswitch_10
        0x72 -> :sswitch_15
        0x73 -> :sswitch_16
        0x74 -> :sswitch_18
        0x75 -> :sswitch_19
        0x76 -> :sswitch_17
        0x77 -> :sswitch_1b
        0x78 -> :sswitch_1a
        0x7a -> :sswitch_a
        0xc8 -> :sswitch_11
        0xc9 -> :sswitch_12
        0xca -> :sswitch_14
        0xcb -> :sswitch_13
        0x190 -> :sswitch_1c
        0x191 -> :sswitch_1d
        0x192 -> :sswitch_1d
        0x2bc -> :sswitch_1f
        0x2bd -> :sswitch_1e
        0x2be -> :sswitch_1f
        0x2bf -> :sswitch_1e
        0x2c0 -> :sswitch_20
    .end sparse-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 66
    .parameter "uri"
    .parameter "initialValues"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    .line 3990
    sget-object v7, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "enter update, uri: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3991
    invoke-static {}, Lcom/motorola/providers/mediaext/MediaExtProvider;->singleton()Lcom/motorola/providers/mediaext/MediaExtProvider;

    move-result-object v4

    .line 3992
    .local v4, extProvider:Lcom/motorola/providers/mediaext/MediaExtProvider;
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/motorola/providers/mediaext/MediaExtProvider;->isExtensionUri(Landroid/net/Uri;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3993
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v7

    if-nez v7, :cond_1

    .line 3994
    const/16 v45, 0x0

    .line 4262
    :cond_0
    :goto_0
    return v45

    .line 3995
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    move-object/from16 v5, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-virtual/range {v4 .. v11}, Lcom/motorola/providers/mediaext/MediaExtProvider;->update(Lcom/android/providers/media/MediaProvider;Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v45

    goto :goto_0

    .line 4000
    :cond_2
    invoke-static {}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->singleton()Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;

    move-result-object v5

    .line 4001
    .local v5, extnProvider:Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->isExtensionUri(Landroid/net/Uri;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 4002
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v7

    if-nez v7, :cond_3

    .line 4003
    const/16 v45, 0x0

    goto :goto_0

    .line 4005
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    move-object/from16 v6, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-virtual/range {v5 .. v12}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->update(Lcom/android/providers/media/MediaProvider;Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v45

    goto :goto_0

    .line 4011
    :cond_4
    sget-object v7, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v54

    .line 4012
    .local v54, match:I
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v48

    .line 4013
    .local v48, database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    if-nez v48, :cond_5

    .line 4014
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown URI: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 4017
    :cond_5
    invoke-virtual/range {v48 .. v48}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 4019
    .local v6, db:Landroid/database/sqlite/SQLiteDatabase;
    const/16 v50, 0x0

    .line 4020
    .local v50, genre:Ljava/lang/String;
    if-eqz p2, :cond_6

    .line 4021
    const-string v7, "genre"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 4022
    const-string v7, "genre"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4025
    :cond_6
    sget-object v65, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    monitor-enter v65

    .line 4026
    :try_start_0
    sget-object v7, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v54

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/android/providers/media/MediaProvider;->getTableAndWhere(Landroid/net/Uri;ILjava/lang/String;Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;)V

    .line 4031
    const/16 v7, 0x2be

    move/from16 v0, v54

    if-eq v0, v7, :cond_7

    const/16 v7, 0x2bf

    move/from16 v0, v54

    if-ne v0, v7, :cond_d

    :cond_7
    if-eqz p2, :cond_d

    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_d

    .line 4033
    const/16 v58, 0x0

    .line 4034
    .local v58, oldPath:Ljava/lang/String;
    const-string v7, "_data"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    .line 4035
    .local v56, newPath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/providers/media/MediaProvider;->mDirectoryCache:Ljava/util/HashMap;

    move-object/from16 v0, v56

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4037
    if-eqz v56, :cond_d

    new-instance v7, Ljava/io/File;

    move-object/from16 v0, v56

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 4038
    sget-object v7, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v7, v7, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v8, Lcom/android/providers/media/MediaProvider;->PATH_PROJECTION:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v46

    .line 4041
    .local v46, cursor:Landroid/database/Cursor;
    if-eqz v46, :cond_8

    :try_start_1
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 4042
    const/4 v7, 0x1

    move-object/from16 v0, v46

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v58

    .line 4045
    :cond_8
    if-eqz v46, :cond_9

    :try_start_2
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->close()V

    .line 4047
    :cond_9
    if-eqz v58, :cond_d

    .line 4048
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/providers/media/MediaProvider;->mDirectoryCache:Ljava/util/HashMap;

    move-object/from16 v0, v58

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4050
    sget-object v7, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v7, v7, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v8, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v8, v8, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v6, v7, v0, v8, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v45

    .line 4052
    .local v45, count:I
    if-lez v45, :cond_a

    .line 4054
    const/4 v7, 0x2

    new-array v0, v7, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v58

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v42, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v56

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v42, v7

    .line 4055
    .local v42, bindArgs:[Ljava/lang/Object;
    const-string v7, "UPDATE files SET _data=REPLACE(_data, ?1, ?2);"

    move-object/from16 v0, v42

    invoke-virtual {v6, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4058
    .end local v42           #bindArgs:[Ljava/lang/Object;
    :cond_a
    if-lez v45, :cond_b

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v7

    if-nez v7, :cond_b

    .line 4059
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v7, v0, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 4061
    :cond_b
    monitor-exit v65

    goto/16 :goto_0

    .line 4256
    .end local v45           #count:I
    .end local v46           #cursor:Landroid/database/Cursor;
    .end local v56           #newPath:Ljava/lang/String;
    .end local v58           #oldPath:Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit v65
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 4045
    .restart local v46       #cursor:Landroid/database/Cursor;
    .restart local v56       #newPath:Ljava/lang/String;
    .restart local v58       #oldPath:Ljava/lang/String;
    :catchall_1
    move-exception v7

    if-eqz v46, :cond_c

    :try_start_3
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v7

    .line 4067
    .end local v46           #cursor:Landroid/database/Cursor;
    .end local v56           #newPath:Ljava/lang/String;
    .end local v58           #oldPath:Ljava/lang/String;
    :cond_d
    const-string v7, "_data_tmp"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 4068
    .local v49, fullpath:Ljava/lang/String;
    if-eqz v49, :cond_e

    .line 4069
    const-string v7, "parent"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-direct {v0, v6, v1}, Lcom/android/providers/media/MediaProvider;->getParent(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4070
    const-string v7, "_data_tmp"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4074
    :cond_e
    sparse-switch v54, :sswitch_data_0

    .line 4252
    :cond_f
    sget-object v7, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v7, v7, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v8, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v8, v8, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v6, v7, v0, v8, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v45

    .line 4256
    .restart local v45       #count:I
    :cond_10
    :goto_1
    monitor-exit v65
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4259
    if-lez v45, :cond_0

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v7

    if-nez v7, :cond_0

    .line 4260
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v7, v0, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 4078
    .end local v45           #count:I
    :sswitch_0
    :try_start_4
    new-instance v64, Landroid/content/ContentValues;

    move-object/from16 v0, v64

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 4079
    .local v64, values:Landroid/content/ContentValues;
    const-string v7, "album_artist"

    move-object/from16 v0, v64

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 4080
    .local v39, albumartist:Ljava/lang/String;
    const-string v7, "compilation"

    move-object/from16 v0, v64

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 4081
    .local v44, compilation:Ljava/lang/String;
    const-string v7, "compilation"

    move-object/from16 v0, v64

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4085
    const-string v7, "artist"

    move-object/from16 v0, v64

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 4086
    .local v12, artist:Ljava/lang/String;
    const-string v7, "artist"

    move-object/from16 v0, v64

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4087
    if-eqz v12, :cond_11

    .line 4089
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mArtistCache:Ljava/util/HashMap;

    move-object/from16 v17, v0

    .line 4090
    .local v17, artistCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    monitor-enter v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4091
    :try_start_5
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/lang/Long;

    .line 4092
    .local v63, temp:Ljava/lang/Long;
    if-nez v63, :cond_16

    .line 4093
    const-string v9, "artists"

    const-string v10, "artist_key"

    const-string v11, "artist"

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v7, p0

    move-object v8, v6

    move-object v13, v12

    move-object/from16 v18, p1

    invoke-direct/range {v7 .. v18}, Lcom/android/providers/media/MediaProvider;->getKeyIdForName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)J

    move-result-wide v40

    .line 4098
    .local v40, artistRowId:J
    :goto_2
    monitor-exit v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 4099
    :try_start_6
    const-string v7, "artist_id"

    move-wide/from16 v0, v40

    long-to-int v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v64

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4103
    .end local v17           #artistCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v40           #artistRowId:J
    .end local v63           #temp:Ljava/lang/Long;
    :cond_11
    const-string v7, "album"

    move-object/from16 v0, v64

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v62

    .line 4104
    .local v62, so:Ljava/lang/String;
    const-string v7, "album"

    move-object/from16 v0, v64

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4105
    if-eqz v62, :cond_13

    .line 4106
    const-string v7, "_data"

    move-object/from16 v0, v64

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 4107
    .local v25, path:Ljava/lang/String;
    const/16 v26, 0x0

    .line 4108
    .local v26, albumHash:I
    if-eqz v39, :cond_17

    .line 4109
    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->hashCode()I

    move-result v26

    .line 4142
    :cond_12
    :goto_3
    invoke-virtual/range {v62 .. v62}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v23

    .line 4144
    .local v23, s:Ljava/lang/String;
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mAlbumCache:Ljava/util/HashMap;

    move-object/from16 v28, v0

    .line 4145
    .local v28, albumCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    monitor-enter v28
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 4146
    :try_start_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 4147
    .local v24, cacheName:Ljava/lang/String;
    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/lang/Long;

    .line 4148
    .restart local v63       #temp:Ljava/lang/Long;
    if-nez v63, :cond_1c

    .line 4149
    const-string v20, "albums"

    const-string v21, "album_key"

    const-string v22, "album"

    move-object/from16 v18, p0

    move-object/from16 v19, v6

    move-object/from16 v27, v12

    move-object/from16 v29, p1

    invoke-direct/range {v18 .. v29}, Lcom/android/providers/media/MediaProvider;->getKeyIdForName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)J

    move-result-wide v37

    .line 4154
    .local v37, albumRowId:J
    :goto_4
    monitor-exit v28
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 4155
    :try_start_8
    const-string v7, "album_id"

    move-wide/from16 v0, v37

    long-to-int v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v64

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4159
    .end local v23           #s:Ljava/lang/String;
    .end local v24           #cacheName:Ljava/lang/String;
    .end local v25           #path:Ljava/lang/String;
    .end local v26           #albumHash:I
    .end local v28           #albumCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v37           #albumRowId:J
    .end local v63           #temp:Ljava/lang/Long;
    :cond_13
    const-string v7, "title_key"

    move-object/from16 v0, v64

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4161
    const-string v7, "title"

    move-object/from16 v0, v64

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v62

    .line 4162
    if-eqz v62, :cond_14

    .line 4163
    invoke-virtual/range {v62 .. v62}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v23

    .line 4164
    .restart local v23       #s:Ljava/lang/String;
    const-string v7, "title_key"

    invoke-static/range {v23 .. v23}, Landroid/provider/MediaStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v64

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4167
    const-string v7, "title"

    move-object/from16 v0, v64

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4168
    const-string v7, "title"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v64

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4171
    .end local v23           #s:Ljava/lang/String;
    :cond_14
    const-string v7, "bucket_id"

    move-object/from16 v0, v64

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4172
    const-string v7, "bucket_display_name"

    move-object/from16 v0, v64

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4173
    const-string v7, "_data"

    move-object/from16 v0, v64

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 4174
    .local v47, data:Ljava/lang/String;
    if-eqz v47, :cond_15

    .line 4175
    move-object/from16 v0, v47

    move-object/from16 v1, v64

    invoke-static {v0, v1}, Lcom/android/providers/media/MediaProvider;->computeBucketValues(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4179
    :cond_15
    sget-object v7, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v7, v7, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v8, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v8, v8, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    move-object/from16 v0, v64

    move-object/from16 v1, p4

    invoke-virtual {v6, v7, v0, v8, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v45

    .line 4181
    .restart local v45       #count:I
    if-eqz v50, :cond_10

    .line 4182
    const/4 v7, 0x1

    move/from16 v0, v45

    if-ne v0, v7, :cond_1d

    const/16 v7, 0x65

    move/from16 v0, v54

    if-ne v0, v7, :cond_1d

    .line 4183
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x3

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v59

    .line 4184
    .local v59, rowId:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v59

    move-object/from16 v3, v50

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/media/MediaProvider;->updateGenre(JLjava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 4096
    .end local v45           #count:I
    .end local v47           #data:Ljava/lang/String;
    .end local v59           #rowId:J
    .end local v62           #so:Ljava/lang/String;
    .restart local v17       #artistCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v63       #temp:Ljava/lang/Long;
    :cond_16
    :try_start_9
    invoke-virtual/range {v63 .. v63}, Ljava/lang/Long;->longValue()J

    move-result-wide v40

    .restart local v40       #artistRowId:J
    goto/16 :goto_2

    .line 4098
    .end local v40           #artistRowId:J
    .end local v63           #temp:Ljava/lang/Long;
    :catchall_2
    move-exception v7

    monitor-exit v17
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v7

    .line 4110
    .end local v17           #artistCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v25       #path:Ljava/lang/String;
    .restart local v26       #albumHash:I
    .restart local v62       #so:Ljava/lang/String;
    :cond_17
    if-eqz v44, :cond_18

    const-string v7, "1"

    move-object/from16 v0, v44

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12

    .line 4113
    :cond_18
    if-nez v25, :cond_19

    .line 4114
    const/16 v7, 0x64

    move/from16 v0, v54

    if-ne v0, v7, :cond_1a

    .line 4115
    sget-object v7, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v8, "Possible multi row album name update without path could give wrong album key"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4137
    :cond_19
    :goto_5
    if-eqz v25, :cond_12

    .line 4138
    const/4 v7, 0x0

    const/16 v8, 0x2f

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    move-object/from16 v0, v25

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v26

    goto/16 :goto_3

    .line 4119
    :cond_1a
    const/4 v7, 0x1

    new-array v0, v7, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/4 v7, 0x0

    const-string v8, "_data"

    aput-object v8, v20, v7

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    invoke-virtual/range {v18 .. v23}, Lcom/android/providers/media/MediaProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v43

    .line 4122
    .local v43, c:Landroid/database/Cursor;
    if-eqz v43, :cond_19

    .line 4124
    :try_start_b
    invoke-interface/range {v43 .. v43}, Landroid/database/Cursor;->getCount()I

    move-result v57

    .line 4125
    .local v57, numrows:I
    const/4 v7, 0x1

    move/from16 v0, v57

    if-ne v0, v7, :cond_1b

    .line 4126
    invoke-interface/range {v43 .. v43}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4127
    const/4 v7, 0x0

    move-object/from16 v0, v43

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move-result-object v25

    .line 4132
    :goto_6
    :try_start_c
    invoke-interface/range {v43 .. v43}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_5

    .line 4129
    :cond_1b
    :try_start_d
    sget-object v7, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v57

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " rows for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto :goto_6

    .line 4132
    .end local v57           #numrows:I
    :catchall_3
    move-exception v7

    :try_start_e
    invoke-interface/range {v43 .. v43}, Landroid/database/Cursor;->close()V

    throw v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 4152
    .end local v43           #c:Landroid/database/Cursor;
    .restart local v23       #s:Ljava/lang/String;
    .restart local v24       #cacheName:Ljava/lang/String;
    .restart local v28       #albumCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v63       #temp:Ljava/lang/Long;
    :cond_1c
    :try_start_f
    invoke-virtual/range {v63 .. v63}, Ljava/lang/Long;->longValue()J

    move-result-wide v37

    .restart local v37       #albumRowId:J
    goto/16 :goto_4

    .line 4154
    .end local v24           #cacheName:Ljava/lang/String;
    .end local v37           #albumRowId:J
    .end local v63           #temp:Ljava/lang/Long;
    :catchall_4
    move-exception v7

    monitor-exit v28
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :try_start_10
    throw v7

    .line 4187
    .end local v23           #s:Ljava/lang/String;
    .end local v25           #path:Ljava/lang/String;
    .end local v26           #albumHash:I
    .end local v28           #albumCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v45       #count:I
    .restart local v47       #data:Ljava/lang/String;
    :cond_1d
    sget-object v7, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ignoring genre in update: count = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v45

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " match = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v54

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4198
    .end local v12           #artist:Ljava/lang/String;
    .end local v39           #albumartist:Ljava/lang/String;
    .end local v44           #compilation:Ljava/lang/String;
    .end local v45           #count:I
    .end local v47           #data:Ljava/lang/String;
    .end local v62           #so:Ljava/lang/String;
    .end local v64           #values:Landroid/content/ContentValues;
    :sswitch_1
    new-instance v64, Landroid/content/ContentValues;

    move-object/from16 v0, v64

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 4202
    .restart local v64       #values:Landroid/content/ContentValues;
    const-string v7, "bucket_id"

    move-object/from16 v0, v64

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4203
    const-string v7, "bucket_display_name"

    move-object/from16 v0, v64

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4205
    const-string v7, "_data"

    move-object/from16 v0, v64

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 4206
    .restart local v47       #data:Ljava/lang/String;
    if-eqz v47, :cond_1e

    .line 4207
    move-object/from16 v0, v47

    move-object/from16 v1, v64

    invoke-static {v0, v1}, Lcom/android/providers/media/MediaProvider;->computeBucketValues(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4210
    :cond_1e
    sget-object v7, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v7, v7, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v8, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v8, v8, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    move-object/from16 v0, v64

    move-object/from16 v1, p4

    invoke-virtual {v6, v7, v0, v8, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v45

    .line 4215
    .restart local v45       #count:I
    if-lez v45, :cond_10

    const-string v7, "_data"

    move-object/from16 v0, v64

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_10

    .line 4216
    sget-object v7, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v0, v7, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    move-object/from16 v30, v0

    sget-object v31, Lcom/android/providers/media/MediaProvider;->READY_FLAG_PROJECTION:[Ljava/lang/String;

    sget-object v7, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v0, v7, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    move-object/from16 v32, v0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v29, v6

    move-object/from16 v33, p4

    invoke-virtual/range {v29 .. v36}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-result-object v43

    .line 4219
    .restart local v43       #c:Landroid/database/Cursor;
    if-eqz v43, :cond_10

    .line 4221
    :cond_1f
    :goto_7
    :try_start_11
    invoke-interface/range {v43 .. v43}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_20

    .line 4222
    const/4 v7, 0x2

    move-object/from16 v0, v43

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v52

    .line 4223
    .local v52, magic:J
    const-wide/16 v7, 0x0

    cmp-long v7, v52, v7

    if-nez v7, :cond_1f

    .line 4224
    const/4 v7, 0x1

    move-object/from16 v0, v43

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    const/16 v32, 0xa

    const-wide/16 v33, 0x0

    move-object/from16 v29, p0

    move-object/from16 v31, p1

    invoke-direct/range {v29 .. v34}, Lcom/android/providers/media/MediaProvider;->requestMediaThumbnail(Ljava/lang/String;Landroid/net/Uri;IJ)Lcom/android/providers/media/MediaThumbRequest;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    goto :goto_7

    .line 4229
    .end local v52           #magic:J
    :catchall_5
    move-exception v7

    :try_start_12
    invoke-interface/range {v43 .. v43}, Landroid/database/Cursor;->close()V

    throw v7

    :cond_20
    invoke-interface/range {v43 .. v43}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 4237
    .end local v43           #c:Landroid/database/Cursor;
    .end local v45           #count:I
    .end local v47           #data:Ljava/lang/String;
    .end local v64           #values:Landroid/content/ContentValues;
    :sswitch_2
    const-string v7, "move"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v55

    .line 4238
    .local v55, moveit:Ljava/lang/String;
    if-eqz v55, :cond_f

    .line 4239
    const-string v51, "play_order"

    .line 4240
    .local v51, key:Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 4241
    move-object/from16 v0, p2

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v34

    .line 4242
    .local v34, newpos:I
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v61

    .line 4243
    .local v61, segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x3

    move-object/from16 v0, v61

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v31

    .line 4244
    .local v31, playlist:J
    const/4 v7, 0x5

    move-object/from16 v0, v61

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v33

    .local v33, oldpos:I
    move-object/from16 v29, p0

    move-object/from16 v30, v6

    .line 4245
    invoke-direct/range {v29 .. v34}, Lcom/android/providers/media/MediaProvider;->movePlaylistEntry(Landroid/database/sqlite/SQLiteDatabase;JII)I

    move-result v45

    monitor-exit v65

    goto/16 :goto_0

    .line 4247
    .end local v31           #playlist:J
    .end local v33           #oldpos:I
    .end local v34           #newpos:I
    .end local v61           #segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_21
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Need to specify "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v51

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " when using \'move\' parameter"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 4074
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0x71 -> :sswitch_2
        0xc8 -> :sswitch_1
        0xc9 -> :sswitch_1
    .end sparse-switch
.end method
