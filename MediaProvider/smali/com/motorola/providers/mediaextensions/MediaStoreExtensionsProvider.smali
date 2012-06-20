.class public Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;
.super Ljava/lang/Object;
.source "MediaStoreExtensionsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Views;,
        Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Tables;
    }
.end annotation


# static fields
.field public static final ARTISTS:I = 0x384

.field public static final ARTISTS_ID:I = 0x385

.field public static final ARTIST_DETAILED_EVENT:I = 0x4b0

.field public static final ARTIST_DETAILED_EVENT_ID:I = 0x4b1

.field public static final ARTIST_NEWS:I = 0x3e8

.field public static final ARTIST_NEWS_ID:I = 0x3e9

.field public static final ATTRIBUTES_WITH_VISUAL:I = 0x2be

.field public static final ATTRIBUTES_WITH_VISUAL_ID:I = 0x2bf

.field public static final AUDIO_ALBUM:I = 0x5dc

.field public static final AUDIO_ALBUM_ID:I = 0x5dd

.field public static final AUDIO_LIBRARY_CHANGES:I = 0x7d0

.field public static final AUDIO_LIBRARY_CHANGES_ID:I = 0x7d1

.field private static final AUDIO_MEDIA:I = 0x64

.field private static final AUDIO_MEDIA_ID:I = 0x65

.field public static final AUDIO_PLAYLIST:I = 0x5de

.field public static final AUDIO_PLAYLIST_ID:I = 0x5df

.field public static final AUDIO_RECOMMENDATION:I = 0x708

.field public static final AUDIO_RECOMMENDATION_ID:I = 0x709

.field public static final AUDIO_SEARCH:I = 0x6a5

.field public static final AUDIO_SUGGESTION:I = 0x76c

.field public static final AUDIO_SUGGESTION_ID:I = 0x76d

.field private static final COLUMNS:[Ljava/lang/String; = null

.field public static final COMMON_ATTRIBUTE_TAGGED_MEDIA:I = 0x641

.field public static final COMMON_ATTRIBUTE_TAGS:I = 0x640

.field private static final IMAGES_MEDIA:I = 0x1

.field private static final IMAGES_MEDIA_ID:I = 0x2

.field private static final IMAGES_THUMBNAIL:I = 0x3

.field private static final IMAGES_THUMBNAIL_ID:I = 0x4

.field private static final LOCAL_LOGV:Z = false

.field public static final MEDIA_ALBUMS:I = 0x320

.field public static final MEDIA_ALBUMS_ID:I = 0x322

.field public static final MEDIA_ALBUMS_WITH_MEDIA:I = 0x321

.field public static final MEDIA_ALBUMS_WITH_MEDIA_ID:I = 0x323

.field public static final MEDIA_ATTRIBUTES:I = 0x2bc

.field public static final MEDIA_ATTRIBUTES_ID:I = 0x2bd

.field public static MEDIA_STORE_EXTENSIONS_DATABASE_VERSION:I = 0x0

.field private static final MOT_MUSIC_STORE_PKG:Ljava/lang/String; = "com.motorola.motmusic.musicstore"

.field public static final PLAY_HISTORY:I = 0x834

.field public static final PLAY_HISTORY_ID:I = 0x835

.field private static final SUGGEST_COLUMNS:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "MediaStoreExtensions"

.field public static final UNKNOWN_STRING:Ljava/lang/String; = "<unknown>"

.field private static final URI_MATCHER:Landroid/content/UriMatcher; = null

.field private static final VIDEO_MEDIA:I = 0xc8

.field private static final VIDEO_MEDIA_ID:I = 0xc9

.field public static final VISUAL_FOLDER:I = 0x514

.field public static final VISUAL_MEDIA:I = 0x44c

.field private static final VISUAL_MEDIA_FOLDERS_AND_ALBUMS:I = 0x258

.field public static final VISUAL_MEDIA_LOCATION:I = 0x44d

.field public static final VISUAL_SEARCH:I = 0x6a4

.field private static final audioAlbumKeyMap:Ljava/util/HashMap;
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

.field private static final audioAlbumMap:Ljava/util/HashMap;
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

.field private static final audioArtistMap:Ljava/util/HashMap;
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

.field private static final audioAttributesMap:Ljava/util/HashMap;
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

.field private static final audioPlaylistMap:Ljava/util/HashMap;
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

.field private static final dlnaAttributesMap:Ljava/util/HashMap;
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

.field private static final imageAttributesMap:Ljava/util/HashMap;
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

.field private static final imagethumbnailsMap:Ljava/util/HashMap;
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

.field private static sProvider:Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;

.field private static final videoAttributesMap:Ljava/util/HashMap;
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


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->sProvider:Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;

    .line 48
    const/16 v0, 0x1f

    sput v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->MEDIA_STORE_EXTENSIONS_DATABASE_VERSION:I

    .line 3126
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "suggest_text_1"

    aput-object v1, v0, v3

    const-string v1, "suggest_intent_data"

    aput-object v1, v0, v4

    const-string v1, "suggest_icon_1"

    aput-object v1, v0, v5

    sput-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->SUGGEST_COLUMNS:[Ljava/lang/String;

    .line 3131
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "suggest_text_1"

    aput-object v1, v0, v3

    const-string v1, "suggest_text_2"

    aput-object v1, v0, v4

    const-string v1, "suggest_intent_data"

    aput-object v1, v0, v5

    const-string v1, "suggest_icon_1"

    aput-object v1, v0, v6

    sput-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->COLUMNS:[Ljava/lang/String;

    .line 3137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->dlnaAttributesMap:Ljava/util/HashMap;

    .line 3138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->audioAttributesMap:Ljava/util/HashMap;

    .line 3139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->videoAttributesMap:Ljava/util/HashMap;

    .line 3140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->imageAttributesMap:Ljava/util/HashMap;

    .line 3141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->audioAlbumMap:Ljava/util/HashMap;

    .line 3142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->audioAlbumKeyMap:Ljava/util/HashMap;

    .line 3144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->audioPlaylistMap:Ljava/util/HashMap;

    .line 3145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->audioArtistMap:Ljava/util/HashMap;

    .line 3146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->imagethumbnailsMap:Ljava/util/HashMap;

    .line 3148
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 3152
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->audioAlbumKeyMap:Ljava/util/HashMap;

    const-string v1, "artist"

    const-string v2, "artist"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3153
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->audioAlbumMap:Ljava/util/HashMap;

    const-string v1, "date_modified"

    const-string v2, "date_modified"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3155
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->audioAlbumMap:Ljava/util/HashMap;

    const-string v1, "genre"

    const-string v2, "genre"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3157
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->audioAlbumMap:Ljava/util/HashMap;

    const-string v1, "album_art_width"

    const-string v2, "album_art_width"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3159
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->audioAlbumMap:Ljava/util/HashMap;

    const-string v1, "album_art_height"

    const-string v2, "album_art_height"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3161
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->audioAlbumMap:Ljava/util/HashMap;

    const-string v1, "album_art_format"

    const-string v2, "album_art_format"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3163
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->audioAlbumMap:Ljava/util/HashMap;

    const-string v1, "_data"

    const-string v2, "_data"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3166
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->imagethumbnailsMap:Ljava/util/HashMap;

    const-string v1, "format"

    const-string v2, "format"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3169
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v2, "*/image/media"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3172
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v2, "*/playhistory"

    const/16 v3, 0x834

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3173
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v2, "*/playhistory/#"

    const/16 v3, 0x835

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3175
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v2, "*/image/media/#"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3178
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v2, "*/media_extension_thumbnails"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3180
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v2, "*/media_extension_thumbnails/#"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3183
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v2, "*/audio/media"

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3186
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v2, "*/audio/media/#"

    const/16 v3, 0x65

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3190
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v2, "*/video/media"

    const/16 v3, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3193
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v2, "*/video/media/#"

    const/16 v3, 0xc9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3197
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v2, "*/media_folder_and_albums"

    const/16 v3, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3201
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v2, "*/media_attribute"

    const/16 v3, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3203
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v2, "*/media_attribute/#"

    const/16 v3, 0x2bd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3205
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v2, "*/visual_media_attributes"

    const/16 v3, 0x2be

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3207
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v2, "*/visual_media_attributes/#"

    const/16 v3, 0x2bf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3211
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v2, "*/media_extension_albums"

    const/16 v3, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3213
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v2, "*/media_extension_albums/#"

    const/16 v3, 0x322

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3215
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v2, "*/media_extension_albums/media"

    const/16 v3, 0x321

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3218
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v2, "*/media_extension_albums/media/#"

    const/16 v3, 0x323

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3222
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v2, "*/media_extension_artists"

    const/16 v3, 0x384

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3224
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v2, "*/media_extension_artists/#"

    const/16 v3, 0x385

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3227
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v2, "*/media_extension_artists_news"

    const/16 v3, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3229
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v2, "*/media_extension_artists_news/#"

    const/16 v3, 0x3e9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3232
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v2, "*/visual_folder"

    const/16 v3, 0x514

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3234
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v2, "*/visual_media"

    const/16 v3, 0x44c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3236
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v2, "*/visual_media/location/*"

    const/16 v3, 0x44d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3239
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v2, "*/media_extension_artists_detailed_events"

    const/16 v3, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3242
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v2, "*/media_extension_artists_detailed_events/#"

    const/16 v3, 0x4b1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3246
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v2, "*/media_extension_audio_albums"

    const/16 v3, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3248
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v2, "*/media_extension_audio_albums/#"

    const/16 v3, 0x5dd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3251
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v2, "*/common_media_attributes/tags"

    const/16 v3, 0x640

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3254
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v2, "*/common_media_attributes/tags/*"

    const/16 v3, 0x641

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3259
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v2, "*/visual_search/search_suggest_query"

    const/16 v3, 0x6a4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3261
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v2, "*/visual_search/search_suggest_query/*"

    const/16 v3, 0x6a4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3264
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v2, "*/media_extension_recommendation"

    const/16 v3, 0x708

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3266
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v2, "*/media_extension_recommendation/#"

    const/16 v3, 0x709

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3270
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v2, "*/media_extension_suggestion"

    const/16 v3, 0x76c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3272
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v2, "*/media_extension_suggestion/#"

    const/16 v3, 0x76d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3274
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v2, "*/media_extension_audio_library_changes"

    const/16 v3, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3277
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v2, "*/media_extension_audio_library_changes/#"

    const/16 v3, 0x7d1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3281
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v2, "*/audio/search_suggest_query"

    const/16 v3, 0x6a5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3283
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v2, "*/audio/search_suggest_query/*"

    const/16 v3, 0x6a5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3285
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1992
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1993
    return-void
.end method

.method private doAudioSearch(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/database/Cursor;
    .locals 56
    .parameter "context"
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
    .line 2422
    const-string v2, "motorola_view_audio_search"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2423
    const-string v2, "artist like ? or album like ? or title like ?"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2424
    const/4 v6, 0x0

    .line 2425
    .local v6, whereArgs:[Ljava/lang/String;
    const/16 v32, 0x0

    .line 2427
    .local v32, isSuggest:Z
    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/String;

    .line 2428
    if-eqz p7, :cond_5

    const/4 v2, 0x0

    aget-object v2, p7, v2

    if-eqz v2, :cond_5

    .line 2429
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v7, 0x0

    aget-object v7, p7, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "%"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v4

    aput-object v5, v6, v3

    aput-object v5, v6, v2

    .line 2430
    const/16 v32, 0x1

    .line 2435
    :goto_0
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move-object/from16 v10, p10

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 2436
    .local v20, c:Landroid/database/Cursor;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, v20

    move-object/from16 v1, p4

    invoke-interface {v0, v2, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 2438
    const/4 v2, 0x1

    move/from16 v0, v32

    if-ne v0, v2, :cond_19

    .line 2439
    const/16 v30, 0x0

    .line 2440
    .local v30, isArtist:Z
    const/16 v44, 0x0

    .line 2441
    .local v44, todisplay_artiststr:Ljava/lang/String;
    const/16 v47, 0x0

    .line 2442
    .local v47, todisplay_suggestdata_body:Ljava/lang/String;
    const/16 v48, 0x0

    .line 2443
    .local v48, todisplay_text:Ljava/lang/String;
    const/16 v49, 0x0

    .line 2444
    .local v49, todisplay_text2:Ljava/lang/String;
    const/16 v45, 0x0

    .line 2445
    .local v45, todisplay_data1:Ljava/lang/String;
    const/16 v43, 0x0

    .line 2446
    .local v43, todisplay_artist_text2:Ljava/lang/String;
    const/16 v46, 0x0

    .line 2447
    .local v46, todisplay_icon:I
    const/16 v26, 0x0

    .line 2448
    .local v26, found_grouporder:I
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v22

    .line 2450
    .local v22, count:I
    new-instance v23, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->COLUMNS:[Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2451
    .local v23, cursor:Landroid/database/MatrixCursor;
    const/4 v2, 0x0

    aget-object v2, v6, v2

    const-string v3, "%"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .line 2452
    .local v52, where_sp:Ljava/lang/String;
    const-string v2, " "

    const-string v3, ""

    move-object/from16 v0, v52

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .line 2453
    .local v54, where_trim_replace:Ljava/lang/String;
    invoke-virtual/range {v54 .. v54}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v53

    .line 2455
    .local v53, where_trim:Ljava/lang/String;
    const/16 v16, 0x3

    .line 2456
    .local v16, MAX_RESULT_LIMIT:I
    const/16 v19, 0x0

    .line 2457
    .local v19, artist_search_count:I
    const/16 v17, 0x0

    .line 2458
    .local v17, album_search_count:I
    const/16 v50, 0x0

    .line 2459
    .local v50, track_search_count:I
    const/16 v27, 0x0

    .line 2460
    .local v27, genre_search_count:I
    const/16 v34, 0x0

    .line 2462
    .local v34, playlist_search_count:I
    if-lez v22, :cond_17

    .line 2463
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2465
    :cond_0
    const/16 v31, 0x0

    .line 2467
    .local v31, isFound:Z
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 2468
    .local v18, artistStr:Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v55

    .line 2469
    .local v55, zeroColName:Ljava/lang/String;
    const-string v2, "text1"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 2470
    .local v38, text1body:Ljava/lang/String;
    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v39

    .line 2471
    .local v39, text1body_lowercase:Ljava/lang/String;
    const-string v2, " "

    const-string v3, ""

    move-object/from16 v0, v39

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v37

    .line 2473
    .local v37, text1_trim:Ljava/lang/String;
    const-string v2, "grouporder"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 2474
    .local v28, grouporder:I
    const-string v2, "suggest_intent_data"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 2475
    .local v36, suggestdata_body:Ljava/lang/String;
    const-string v2, "text2"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v42

    .line 2476
    .local v42, text2body:Ljava/lang/String;
    const-string v2, "data1"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 2478
    .local v25, data1body:Ljava/lang/String;
    move-object/from16 v0, v37

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2479
    const/16 v31, 0x1

    .line 2480
    move-object/from16 v44, v18

    .line 2481
    move-object/from16 v48, v38

    .line 2482
    move-object/from16 v47, v36

    .line 2483
    move-object/from16 v49, v42

    .line 2484
    move-object/from16 v45, v25

    .line 2485
    move/from16 v26, v28

    .line 2488
    :cond_1
    if-eqz v18, :cond_2

    const/4 v2, 0x1

    move/from16 v0, v31

    if-ne v0, v2, :cond_2

    .line 2489
    const/4 v2, 0x1

    move/from16 v0, v26

    if-ne v0, v2, :cond_7

    move/from16 v0, v19

    move/from16 v1, v16

    if-ge v0, v1, :cond_7

    .line 2490
    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_6

    .line 2491
    const-string v2, " albums"

    move-object/from16 v0, v45

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 2495
    :goto_1
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v44, v2, v3

    const/4 v3, 0x1

    aput-object v48, v2, v3

    const/4 v3, 0x2

    aput-object v43, v2, v3

    const/4 v3, 0x3

    aput-object v47, v2, v3

    const/4 v3, 0x4

    const v4, 0x7f020006

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2500
    add-int/lit8 v19, v19, 0x1

    .line 2612
    :cond_2
    :goto_2
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2614
    invoke-static/range {p1 .. p1}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->isMusicStorePackageAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2615
    const-string v2, "DEBUGROW"

    const-string v3, "MusicStore package available"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2616
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Search "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in Music Store"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, ""

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SearchMusicStoreKeyword="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const v4, 0x7f020001

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2641
    .end local v18           #artistStr:Ljava/lang/String;
    .end local v25           #data1body:Ljava/lang/String;
    .end local v28           #grouporder:I
    .end local v31           #isFound:Z
    .end local v36           #suggestdata_body:Ljava/lang/String;
    .end local v37           #text1_trim:Ljava/lang/String;
    .end local v38           #text1body:Ljava/lang/String;
    .end local v39           #text1body_lowercase:Ljava/lang/String;
    .end local v42           #text2body:Ljava/lang/String;
    .end local v55           #zeroColName:Ljava/lang/String;
    :cond_3
    :goto_3
    if-eqz v20, :cond_4

    .line 2642
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 2646
    .end local v16           #MAX_RESULT_LIMIT:I
    .end local v17           #album_search_count:I
    .end local v19           #artist_search_count:I
    .end local v22           #count:I
    .end local v23           #cursor:Landroid/database/MatrixCursor;
    .end local v26           #found_grouporder:I
    .end local v27           #genre_search_count:I
    .end local v30           #isArtist:Z
    .end local v34           #playlist_search_count:I
    .end local v43           #todisplay_artist_text2:Ljava/lang/String;
    .end local v44           #todisplay_artiststr:Ljava/lang/String;
    .end local v45           #todisplay_data1:Ljava/lang/String;
    .end local v46           #todisplay_icon:I
    .end local v47           #todisplay_suggestdata_body:Ljava/lang/String;
    .end local v48           #todisplay_text:Ljava/lang/String;
    .end local v49           #todisplay_text2:Ljava/lang/String;
    .end local v50           #track_search_count:I
    .end local v52           #where_sp:Ljava/lang/String;
    .end local v53           #where_trim:Ljava/lang/String;
    .end local v54           #where_trim_replace:Ljava/lang/String;
    :cond_4
    :goto_4
    return-object v23

    .line 2432
    .end local v20           #c:Landroid/database/Cursor;
    :cond_5
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p4 .. p4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "%"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v4

    aput-object v5, v6, v3

    aput-object v5, v6, v2

    goto/16 :goto_0

    .line 2493
    .restart local v16       #MAX_RESULT_LIMIT:I
    .restart local v17       #album_search_count:I
    .restart local v18       #artistStr:Ljava/lang/String;
    .restart local v19       #artist_search_count:I
    .restart local v20       #c:Landroid/database/Cursor;
    .restart local v22       #count:I
    .restart local v23       #cursor:Landroid/database/MatrixCursor;
    .restart local v25       #data1body:Ljava/lang/String;
    .restart local v26       #found_grouporder:I
    .restart local v27       #genre_search_count:I
    .restart local v28       #grouporder:I
    .restart local v30       #isArtist:Z
    .restart local v31       #isFound:Z
    .restart local v34       #playlist_search_count:I
    .restart local v36       #suggestdata_body:Ljava/lang/String;
    .restart local v37       #text1_trim:Ljava/lang/String;
    .restart local v38       #text1body:Ljava/lang/String;
    .restart local v39       #text1body_lowercase:Ljava/lang/String;
    .restart local v42       #text2body:Ljava/lang/String;
    .restart local v43       #todisplay_artist_text2:Ljava/lang/String;
    .restart local v44       #todisplay_artiststr:Ljava/lang/String;
    .restart local v45       #todisplay_data1:Ljava/lang/String;
    .restart local v46       #todisplay_icon:I
    .restart local v47       #todisplay_suggestdata_body:Ljava/lang/String;
    .restart local v48       #todisplay_text:Ljava/lang/String;
    .restart local v49       #todisplay_text2:Ljava/lang/String;
    .restart local v50       #track_search_count:I
    .restart local v52       #where_sp:Ljava/lang/String;
    .restart local v53       #where_trim:Ljava/lang/String;
    .restart local v54       #where_trim_replace:Ljava/lang/String;
    .restart local v55       #zeroColName:Ljava/lang/String;
    :cond_6
    const-string v2, " album"

    move-object/from16 v0, v45

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    goto/16 :goto_1

    .line 2501
    :cond_7
    const/4 v2, 0x2

    move/from16 v0, v26

    if-ne v0, v2, :cond_b

    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_b

    .line 2503
    const/16 v29, 0x0

    .line 2504
    .local v29, id:Ljava/lang/Long;
    const/4 v2, 0x3

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v9, v2

    const/4 v2, 0x1

    const-string v3, "album"

    aput-object v3, v9, v2

    const/4 v2, 0x2

    const-string v3, "numsongs"

    aput-object v3, v9, v2

    .line 2508
    .local v9, cols:[Ljava/lang/String;
    sget-object v8, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 2510
    .local v8, uri1:Landroid/net/Uri;
    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    .line 2511
    .local v51, where:Ljava/lang/StringBuilder;
    const-string v2, "_id"

    move-object/from16 v0, v51

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v44

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2513
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 2516
    .local v21, c1:Landroid/database/Cursor;
    if-eqz v21, :cond_8

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_8

    .line 2517
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2518
    const/4 v2, 0x2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    .line 2520
    .local v35, songCount:I
    const/4 v2, 0x1

    move/from16 v0, v35

    if-le v0, v2, :cond_a

    .line 2521
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, " songs"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 2525
    .end local v35           #songCount:I
    :cond_8
    :goto_5
    if-eqz v21, :cond_9

    .line 2526
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 2528
    :cond_9
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v44, v2, v3

    const/4 v3, 0x1

    aput-object v48, v2, v3

    const/4 v3, 0x2

    aput-object v49, v2, v3

    const/4 v3, 0x3

    aput-object v47, v2, v3

    const/4 v3, 0x4

    const v4, 0x7f020009

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2533
    add-int/lit8 v17, v17, 0x1

    .line 2534
    goto/16 :goto_2

    .line 2523
    .restart local v35       #songCount:I
    :cond_a
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, " song"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    goto :goto_5

    .line 2534
    .end local v8           #uri1:Landroid/net/Uri;
    .end local v9           #cols:[Ljava/lang/String;
    .end local v21           #c1:Landroid/database/Cursor;
    .end local v29           #id:Ljava/lang/Long;
    .end local v35           #songCount:I
    .end local v51           #where:Ljava/lang/StringBuilder;
    :cond_b
    const/4 v2, 0x3

    move/from16 v0, v26

    if-ne v0, v2, :cond_c

    move/from16 v0, v50

    move/from16 v1, v16

    if-ge v0, v1, :cond_c

    .line 2536
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v44, v2, v3

    const/4 v3, 0x1

    aput-object v48, v2, v3

    const/4 v3, 0x2

    aput-object v49, v2, v3

    const/4 v3, 0x3

    aput-object v47, v2, v3

    const/4 v3, 0x4

    const v4, 0x7f020009

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2541
    add-int/lit8 v50, v50, 0x1

    goto/16 :goto_2

    .line 2542
    :cond_c
    const/4 v2, 0x4

    move/from16 v0, v26

    if-ne v0, v2, :cond_12

    move/from16 v0, v27

    move/from16 v1, v16

    if-ge v0, v1, :cond_12

    .line 2544
    const/16 v29, 0x0

    .line 2546
    .restart local v29       #id:Ljava/lang/Long;
    sget-object v2, Lcom/motorola/android/provider/MediaStoreMotExtensions$Audio$Media;->CONTENT_EXTERNAL_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "distinct"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    .line 2549
    .restart local v8       #uri1:Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v2, 0x1

    new-array v12, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "artist_id"

    aput-object v3, v12, v2

    const-string v13, "_id in (Select audio_id from audio_genres_map where genre_id=?)"

    const/4 v2, 0x1

    new-array v14, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v44, v14, v2

    const/4 v15, 0x0

    move-object v11, v8

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 2555
    .restart local v21       #c1:Landroid/database/Cursor;
    const/16 v40, 0x0

    .line 2557
    .local v40, text2_Count:I
    if-eqz v21, :cond_d

    .line 2558
    :try_start_0
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v40

    .line 2560
    :cond_d
    if-eqz v21, :cond_e

    .line 2561
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 2564
    :cond_e
    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v41

    .line 2565
    .local v41, text2_CountStr:Ljava/lang/String;
    const/4 v2, 0x1

    move/from16 v0, v40

    if-ne v0, v2, :cond_11

    .line 2566
    const-string v2, " Artist"

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 2570
    :cond_f
    :goto_6
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v44, v2, v3

    const/4 v3, 0x1

    aput-object v48, v2, v3

    const/4 v3, 0x2

    aput-object v49, v2, v3

    const/4 v3, 0x3

    aput-object v47, v2, v3

    const/4 v3, 0x4

    const v4, 0x7f020007

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2575
    add-int/lit8 v27, v27, 0x1

    .line 2576
    goto/16 :goto_2

    .line 2560
    .end local v41           #text2_CountStr:Ljava/lang/String;
    :catchall_0
    move-exception v2

    if-eqz v21, :cond_10

    .line 2561
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_10
    throw v2

    .line 2567
    .restart local v41       #text2_CountStr:Ljava/lang/String;
    :cond_11
    const/4 v2, 0x1

    move/from16 v0, v40

    if-le v0, v2, :cond_f

    .line 2568
    const-string v2, " Artists"

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    goto :goto_6

    .line 2576
    .end local v8           #uri1:Landroid/net/Uri;
    .end local v21           #c1:Landroid/database/Cursor;
    .end local v29           #id:Ljava/lang/Long;
    .end local v40           #text2_Count:I
    .end local v41           #text2_CountStr:Ljava/lang/String;
    :cond_12
    const/4 v2, 0x5

    move/from16 v0, v26

    if-ne v0, v2, :cond_2

    move/from16 v0, v34

    move/from16 v1, v16

    if-ge v0, v1, :cond_2

    .line 2578
    const/16 v33, 0x0

    .line 2580
    .local v33, num_songs_playlist:I
    const/4 v2, 0x1

    new-array v12, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v12, v2

    .line 2584
    .local v12, PlaylistMemberCols:[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v2, "external"

    invoke-static/range {v44 .. v44}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 2589
    .local v24, cursor1:Landroid/database/Cursor;
    if-eqz v24, :cond_13

    .line 2590
    :try_start_1
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->getCount()I

    move-result v33

    .line 2591
    const/4 v2, 0x1

    move/from16 v0, v33

    if-le v0, v2, :cond_15

    .line 2592
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, " songs"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v49

    .line 2599
    :cond_13
    :goto_7
    if-eqz v24, :cond_14

    .line 2600
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 2603
    :cond_14
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v44, v2, v3

    const/4 v3, 0x1

    aput-object v48, v2, v3

    const/4 v3, 0x2

    aput-object v49, v2, v3

    const/4 v3, 0x3

    aput-object v47, v2, v3

    const/4 v3, 0x4

    const v4, 0x7f02000a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2608
    add-int/lit8 v34, v34, 0x1

    goto/16 :goto_2

    .line 2595
    :cond_15
    :try_start_2
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, " song"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v49

    goto :goto_7

    .line 2599
    :catchall_1
    move-exception v2

    if-eqz v24, :cond_16

    .line 2600
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    :cond_16
    throw v2

    .line 2622
    .end local v12           #PlaylistMemberCols:[Ljava/lang/String;
    .end local v18           #artistStr:Ljava/lang/String;
    .end local v24           #cursor1:Landroid/database/Cursor;
    .end local v25           #data1body:Ljava/lang/String;
    .end local v28           #grouporder:I
    .end local v31           #isFound:Z
    .end local v33           #num_songs_playlist:I
    .end local v36           #suggestdata_body:Ljava/lang/String;
    .end local v37           #text1_trim:Ljava/lang/String;
    .end local v38           #text1body:Ljava/lang/String;
    .end local v39           #text1body_lowercase:Ljava/lang/String;
    .end local v42           #text2body:Ljava/lang/String;
    .end local v55           #zeroColName:Ljava/lang/String;
    :cond_17
    invoke-static/range {p1 .. p1}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->isMusicStorePackageAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 2623
    const-string v2, "DEBUGROW"

    const-string v3, "MusicStore package available"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2624
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Search "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in Music Store"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, ""

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SearchMusicStoreKeyword="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const v4, 0x7f020001

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2629
    :cond_18
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Search "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in Podcasts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, ""

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SearchPodcasts="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const v4, 0x7f02000b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2633
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Search "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in Internet Radio"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, ""

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SearchInternetRadio="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const v4, 0x7f020008

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .end local v16           #MAX_RESULT_LIMIT:I
    .end local v17           #album_search_count:I
    .end local v19           #artist_search_count:I
    .end local v22           #count:I
    .end local v23           #cursor:Landroid/database/MatrixCursor;
    .end local v26           #found_grouporder:I
    .end local v27           #genre_search_count:I
    .end local v30           #isArtist:Z
    .end local v34           #playlist_search_count:I
    .end local v43           #todisplay_artist_text2:Ljava/lang/String;
    .end local v44           #todisplay_artiststr:Ljava/lang/String;
    .end local v45           #todisplay_data1:Ljava/lang/String;
    .end local v46           #todisplay_icon:I
    .end local v47           #todisplay_suggestdata_body:Ljava/lang/String;
    .end local v48           #todisplay_text:Ljava/lang/String;
    .end local v49           #todisplay_text2:Ljava/lang/String;
    .end local v50           #track_search_count:I
    .end local v52           #where_sp:Ljava/lang/String;
    .end local v53           #where_trim:Ljava/lang/String;
    .end local v54           #where_trim_replace:Ljava/lang/String;
    :cond_19
    move-object/from16 v23, v20

    .line 2646
    goto/16 :goto_4
.end method

.method public static isMusicStorePackageAvailable(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 2650
    const/4 v1, 0x1

    .line 2652
    .local v1, result:Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.motorola.motmusic.musicstore"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2658
    :goto_0
    return v1

    .line 2654
    :catch_0
    move-exception v0

    .line 2655
    .local v0, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "DEBUGROW"

    const-string v3, "ROW product"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2656
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private removeAndCreateValuesFromMap(Landroid/content/ContentValues;Ljava/util/HashMap;)Landroid/content/ContentValues;
    .locals 8
    .parameter "initialValues"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .prologue
    .line 2910
    .local p2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 2911
    .local v4, substituteEntries:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2912
    .local v3, newValues:Landroid/content/ContentValues;
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2913
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2914
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 2915
    .local v5, value:Ljava/lang/Object;
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2916
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2917
    if-eqz v5, :cond_1

    .line 2918
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2920
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_0

    .line 2924
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #key:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/Object;
    :cond_2
    return-object v3
.end method

.method public static declared-synchronized singleton()Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;
    .locals 2

    .prologue
    .line 52
    const-class v1, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->sProvider:Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;

    invoke-direct {v0}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;-><init>()V

    sput-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->sProvider:Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;

    .line 55
    :cond_0
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->sProvider:Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private substituteAttributes(Ljava/util/HashMap;Landroid/content/ContentValues;)V
    .locals 8
    .parameter
    .parameter "initialValues"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/ContentValues;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2889
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 2890
    .local v3, substituteEntries:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2891
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2892
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 2893
    .local v4, value:Ljava/lang/Object;
    const-string v5, "DEBUG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Testing key-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2894
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2895
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2896
    if-eqz v4, :cond_1

    .line 2897
    const-string v5, "DEBUG"

    const-string v6, "Value is not null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2898
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2900
    :cond_1
    const-string v5, "DEBUG"

    const-string v6, "Value is  null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2901
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_0

    .line 2906
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #key:Ljava/lang/String;
    .end local v4           #value:Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method private upgradeExtensionSchema(Landroid/database/sqlite/SQLiteDatabase;ZII)V
    .locals 4
    .parameter "db"
    .parameter "internal"
    .parameter "version"
    .parameter "media_store_extensions_database_version2"

    .prologue
    const/4 v3, 0x5

    .line 2043
    const-string v0, "DEBUG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upgrade version from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    if-le p3, p4, :cond_1

    .line 2046
    const-string v0, "DEBUG"

    const-string v1, "downgrade not supported !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    :cond_0
    :goto_0
    return-void

    .line 2051
    :cond_1
    const/4 v0, 0x2

    if-ge p3, v0, :cond_2

    .line 2052
    if-nez p2, :cond_2

    .line 2053
    #calls: Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Views;->createAttributesWithVisualMediaView(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {p1}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Views;->access$000(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2054
    #calls: Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Views;->createVisualMediaView(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {p1}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Views;->access$100(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2055
    #calls: Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Views;->createMediaInAlbumView(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {p1}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Views;->access$200(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2058
    :cond_2
    const/4 v0, 0x3

    if-ge p3, v0, :cond_3

    .line 2059
    if-nez p2, :cond_b

    .line 2060
    #calls: Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Views;->createAudioAlbumView(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {p1}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Views;->access$300(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2068
    :cond_3
    :goto_1
    const/4 v0, 0x4

    if-ge p3, v0, :cond_4

    .line 2069
    const-string v0, "DROP TRIGGER IF EXISTS motorola_library_change_add1"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2070
    const-string v0, "DROP TRIGGER IF EXISTS motorola_library_change_remove1"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2071
    const-string v0, "DROP TRIGGER IF EXISTS motorola_library_change_remove2"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2072
    #calls: Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Tables;->createLibraryChangesTriggers(ILandroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {p4, p1}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Tables;->access$400(ILandroid/database/sqlite/SQLiteDatabase;)V

    .line 2073
    if-nez p2, :cond_4

    .line 2074
    #calls: Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Tables;->createCleanupTriggers(ILandroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {p4, p1}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Tables;->access$500(ILandroid/database/sqlite/SQLiteDatabase;)V

    .line 2078
    :cond_4
    if-ge p3, v3, :cond_5

    .line 2079
    if-nez p2, :cond_5

    .line 2080
    #calls: Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Views;->createArtists(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {p1}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Views;->access$600(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2084
    :cond_5
    const/16 v0, 0xb

    if-ge p3, v0, :cond_6

    .line 2086
    if-eq p3, v3, :cond_6

    .line 2087
    if-nez p2, :cond_6

    .line 2088
    #calls: Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Views;->createArtists(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {p1}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Views;->access$600(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2094
    :cond_6
    const/16 v0, 0x14

    if-ge p3, v0, :cond_7

    .line 2095
    if-nez p2, :cond_7

    .line 2097
    const-string v0, "DEBUG"

    const-string v1, "upgradeExtensionSchema: Drop View before creating again"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    const-string v0, "DROP VIEW IF EXISTS motorola_view_visual_media;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2099
    #calls: Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Views;->createVisualMediaView(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {p1}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Views;->access$100(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2103
    :cond_7
    const/16 v0, 0x16

    if-ge p3, v0, :cond_8

    .line 2104
    const-string v0, "DEBUG"

    const-string v1, "upgradeExtensionSchema: Drop View before creating again"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    const-string v0, "DROP VIEW IF EXISTS motorola_view_attributes_visual_media;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2106
    #calls: Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Views;->createAttributesWithVisualMediaView(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {p1}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Views;->access$000(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2110
    :cond_8
    const/16 v0, 0x1e

    if-ge p3, v0, :cond_9

    .line 2111
    const-string v0, "MediaStoreExtensions"

    const-string v1, "upgradeExtensionSchema: move to ics"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    invoke-static {p3, p4, p1}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Tables;->updateMediaMappings(IILandroid/database/sqlite/SQLiteDatabase;)V

    .line 2115
    invoke-static {p1}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Tables;->dropMediaAttributeTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2116
    invoke-static {p4, p1}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Tables;->createMediaAttributeTriggers(ILandroid/database/sqlite/SQLiteDatabase;)V

    .line 2118
    invoke-static {p1}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Tables;->dropAudioTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2119
    invoke-static {p2, p1}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Tables;->createAudioTriggers(ZLandroid/database/sqlite/SQLiteDatabase;)V

    .line 2122
    invoke-static {p1, p2}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Views;->createViews(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 2128
    :cond_9
    const/16 v0, 0x1f

    if-ge p3, v0, :cond_0

    .line 2129
    const-string v0, "DROP TRIGGER IF EXISTS motorola_library_change_add1"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2130
    const-string v0, "DROP TRIGGER IF EXISTS motorola_library_change_remove1"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2131
    const-string v0, "DROP TRIGGER IF EXISTS motorola_library_change_remove2"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2133
    const-string v0, "DROP TRIGGER IF EXISTS blur_audio_meta_cleanup1"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2135
    invoke-static {p1}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Tables;->dropAudioTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2136
    if-nez p2, :cond_a

    .line 2137
    #calls: Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Tables;->createCleanupTriggers(ILandroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {p4, p1}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Tables;->access$500(ILandroid/database/sqlite/SQLiteDatabase;)V

    .line 2139
    :cond_a
    #calls: Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Tables;->createLibraryChangesTriggers(ILandroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {p4, p1}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Tables;->access$400(ILandroid/database/sqlite/SQLiteDatabase;)V

    .line 2141
    invoke-static {p1}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Tables;->dropMediaAttributeTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2142
    invoke-static {p4, p1}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Tables;->createMediaAttributeTriggers(ILandroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0

    .line 2063
    :cond_b
    const-string v0, "DROP VIEW IF EXISTS motorola_view_attributes_visual_media;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2064
    const-string v0, "DROP VIEW IF EXISTS motorola_view_visual_media;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2065
    const-string v0, "DROP VIEW IF EXISTS motorola_view_media_in_album;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public delete(Lcom/android/providers/media/MediaProvider;Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 26
    .parameter "mp"
    .parameter "context"
    .parameter "db"
    .parameter "uri"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    .line 2664
    sget-object v23, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, v23

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v14

    .line 2665
    .local v14, match:I
    const/4 v15, 0x0

    .line 2666
    .local v15, numDelete:I
    const/16 v22, 0x0

    .line 2667
    .local v22, where:Ljava/lang/String;
    sparse-switch v14, :sswitch_data_0

    .line 2762
    new-instance v23, Ljava/lang/UnsupportedOperationException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Unknown URI: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 2669
    :sswitch_0
    const-string v23, "blur_playhistory"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 2765
    :goto_0
    const-string v23, "DEBUG"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Deleting ...."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p4 .. p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " Deleted : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2766
    return v15

    .line 2672
    :sswitch_1
    invoke-static/range {p4 .. p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v16

    .line 2673
    .local v16, playHistoryId:J
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "_id="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2674
    if-eqz p5, :cond_0

    .line 2675
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " AND "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2677
    :cond_0
    const-string v23, "blur_playhistory"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    move-object/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 2678
    goto :goto_0

    .line 2680
    .end local v16           #playHistoryId:J
    :sswitch_2
    const-string v23, "DEBUG"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Deleting Suggestions"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p4 .. p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " Selection : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2682
    const-string v23, "motorola_suggestions"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 2683
    goto/16 :goto_0

    .line 2685
    :sswitch_3
    invoke-static/range {p4 .. p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v20

    .line 2686
    .local v20, suggestionId:J
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "_id="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2687
    if-eqz p5, :cond_1

    .line 2688
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " AND "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2690
    :cond_1
    const-string v23, "motorola_suggestions"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    move-object/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 2691
    goto/16 :goto_0

    .line 2693
    .end local v20           #suggestionId:J
    :sswitch_4
    const-string v23, "motorola_mediaAttributes"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 2694
    goto/16 :goto_0

    .line 2696
    :sswitch_5
    invoke-static/range {p4 .. p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    .line 2697
    .local v10, attributeId:J
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "_id="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2698
    if-eqz p5, :cond_2

    .line 2699
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " AND "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2701
    :cond_2
    const-string v23, "motorola_mediaAttributes"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    move-object/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 2702
    goto/16 :goto_0

    .line 2704
    .end local v10           #attributeId:J
    :sswitch_6
    const-string v23, "motorola_media_albums"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 2705
    goto/16 :goto_0

    .line 2707
    :sswitch_7
    invoke-static/range {p4 .. p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 2708
    .local v4, albumId:J
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "_id="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2709
    if-eqz p5, :cond_3

    .line 2710
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " AND "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2712
    :cond_3
    const-string v23, "motorola_media_albums"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    move-object/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 2713
    goto/16 :goto_0

    .line 2715
    .end local v4           #albumId:J
    :sswitch_8
    const-string v23, "motorola_library_changes"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 2716
    goto/16 :goto_0

    .line 2718
    :sswitch_9
    invoke-static/range {p4 .. p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v12

    .line 2719
    .local v12, library_changeId:J
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "_id="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2721
    if-eqz p5, :cond_4

    .line 2722
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " AND "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2724
    :cond_4
    const-string v23, "motorola_library_changes"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    move-object/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 2725
    goto/16 :goto_0

    .line 2727
    .end local v12           #library_changeId:J
    :sswitch_a
    const-string v23, "blur_recommendation"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 2728
    goto/16 :goto_0

    .line 2730
    :sswitch_b
    invoke-static/range {p4 .. p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v18

    .line 2731
    .local v18, recom_id:J
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "_id="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2732
    if-eqz p5, :cond_5

    .line 2733
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " AND "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2735
    :cond_5
    const-string v23, "blur_recommendation"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    move-object/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 2736
    goto/16 :goto_0

    .line 2738
    .end local v18           #recom_id:J
    :sswitch_c
    const-string v23, "motorola_artist_detailed_events"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 2739
    goto/16 :goto_0

    .line 2741
    :sswitch_d
    invoke-static/range {p4 .. p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    .line 2742
    .local v6, artist_detailed_event_id:J
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "_id="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2744
    if-eqz p5, :cond_6

    .line 2745
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " AND "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2747
    :cond_6
    const-string v23, "motorola_artist_detailed_events"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    move-object/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 2748
    goto/16 :goto_0

    .line 2750
    .end local v6           #artist_detailed_event_id:J
    :sswitch_e
    const-string v23, "blur_news"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 2751
    goto/16 :goto_0

    .line 2753
    :sswitch_f
    invoke-static/range {p4 .. p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    .line 2754
    .local v8, artist_news_id:J
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "_id="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2756
    if-eqz p5, :cond_7

    .line 2757
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " AND "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2759
    :cond_7
    const-string v23, "blur_news"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    move-object/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 2760
    goto/16 :goto_0

    .line 2667
    nop

    :sswitch_data_0
    .sparse-switch
        0x2bc -> :sswitch_4
        0x2bd -> :sswitch_5
        0x320 -> :sswitch_6
        0x322 -> :sswitch_7
        0x3e8 -> :sswitch_e
        0x3e9 -> :sswitch_f
        0x4b0 -> :sswitch_c
        0x4b1 -> :sswitch_d
        0x708 -> :sswitch_a
        0x709 -> :sswitch_b
        0x76c -> :sswitch_2
        0x76d -> :sswitch_3
        0x7d0 -> :sswitch_8
        0x7d1 -> :sswitch_9
        0x834 -> :sswitch_0
        0x835 -> :sswitch_1
    .end sparse-switch
.end method

.method public insert(Lcom/android/providers/media/MediaProvider;Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 9
    .parameter "mp"
    .parameter "context"
    .parameter "db"
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    const/4 v7, 0x0

    .line 2773
    const-wide/16 v4, -0x1

    .line 2774
    .local v4, rowId:J
    const/4 v3, 0x0

    .line 2775
    .local v3, newUri:Landroid/net/Uri;
    sget-object v6, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v6, p4}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 2776
    .local v1, match:I
    if-nez p5, :cond_0

    .line 2777
    new-instance p5, Landroid/content/ContentValues;

    .end local p5
    invoke-direct {p5}, Landroid/content/ContentValues;-><init>()V

    .line 2780
    .restart local p5
    :cond_0
    sparse-switch v1, :sswitch_data_0

    .line 2859
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown URI: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2782
    :sswitch_0
    invoke-virtual {p4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2783
    .local v2, mpUri:Landroid/net/Uri;
    invoke-virtual {p1, v2, p5}, Lcom/android/providers/media/MediaProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 2866
    .end local v2           #mpUri:Landroid/net/Uri;
    :goto_0
    return-object v6

    .line 2787
    :sswitch_1
    invoke-virtual {p4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2788
    .restart local v2       #mpUri:Landroid/net/Uri;
    invoke-virtual {p1, v2, p5}, Lcom/android/providers/media/MediaProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    goto :goto_0

    .line 2791
    .end local v2           #mpUri:Landroid/net/Uri;
    :sswitch_2
    invoke-virtual {p4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2792
    .restart local v2       #mpUri:Landroid/net/Uri;
    invoke-virtual {p1, v2, p5}, Lcom/android/providers/media/MediaProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    goto :goto_0

    .line 2795
    .end local v2           #mpUri:Landroid/net/Uri;
    :sswitch_3
    const-string v6, "motorola_mediaAttributes"

    const-string v7, "media_type_uri"

    invoke-virtual {p3, v6, v7, p5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 2862
    :goto_1
    :sswitch_4
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_1

    .line 2863
    invoke-static {p4, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    :cond_1
    move-object v6, v3

    .line 2866
    goto :goto_0

    .line 2800
    :sswitch_5
    const-string v6, "blur_playhistory"

    const-string v7, "_id"

    invoke-virtual {p3, v6, v7, p5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 2802
    goto :goto_1

    .line 2804
    :sswitch_6
    const-string v6, "motorola_media_albums"

    const-string v7, "_id"

    invoke-virtual {p3, v6, v7, p5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 2806
    goto :goto_1

    .line 2809
    :sswitch_7
    const-string v6, "blur_news"

    const-string v7, "_id"

    invoke-virtual {p3, v6, v7, p5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 2811
    goto :goto_1

    .line 2813
    :sswitch_8
    const-string v6, "blur_recommendation"

    const-string v7, "_id"

    invoke-virtual {p3, v6, v7, p5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 2815
    goto :goto_1

    .line 2818
    :sswitch_9
    const-string v6, "motorola_artist_detailed_events"

    const-string v7, "_id"

    invoke-virtual {p3, v6, v7, p5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 2821
    goto :goto_1

    .line 2823
    :sswitch_a
    const-string v6, "blur_album"

    const-string v7, "_id"

    invoke-virtual {p3, v6, v7, p5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 2824
    goto :goto_1

    .line 2826
    :sswitch_b
    const-string v6, "_data"

    invoke-virtual {p5, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2827
    const-string v6, "_data"

    invoke-virtual {p5, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2828
    .local v0, dataValue:Ljava/lang/Object;
    const-string v6, "_data"

    invoke-virtual {p5, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2829
    const-string v7, "_data"

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-virtual {p5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2833
    .end local v0           #dataValue:Ljava/lang/Object;
    :cond_2
    const-string v6, "blur_artist"

    const-string v7, "_id"

    invoke-virtual {p3, v6, v7, p5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 2835
    goto :goto_1

    .line 2829
    .restart local v0       #dataValue:Ljava/lang/Object;
    :cond_3
    const/4 v6, 0x0

    check-cast v6, Ljava/lang/String;

    goto :goto_2

    .line 2839
    .end local v0           #dataValue:Ljava/lang/Object;
    :sswitch_c
    const-string v6, "motorola_suggestions"

    const-string v7, "_id"

    invoke-virtual {p3, v6, v7, p5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 2841
    goto :goto_1

    .line 2843
    :sswitch_d
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2845
    :try_start_0
    const-string v6, "thumbnails"

    const-string v7, "_id"

    invoke-virtual {p3, v6, v7, p5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 2846
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2848
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_1

    :catchall_0
    move-exception v6

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v6

    .line 2852
    :sswitch_e
    const-string v6, "motorola_library_changes"

    const-string v7, "_id"

    invoke-virtual {p3, v6, v7, p5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 2855
    goto/16 :goto_1

    .line 2780
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_d
        0x64 -> :sswitch_1
        0xc8 -> :sswitch_2
        0x2bc -> :sswitch_3
        0x320 -> :sswitch_6
        0x384 -> :sswitch_b
        0x3e8 -> :sswitch_7
        0x4b0 -> :sswitch_9
        0x5dc -> :sswitch_a
        0x5de -> :sswitch_4
        0x708 -> :sswitch_8
        0x76c -> :sswitch_c
        0x7d0 -> :sswitch_e
        0x834 -> :sswitch_5
    .end sparse-switch
.end method

.method public isExtensionUri(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 2163
    if-eqz p1, :cond_0

    .line 2164
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 2165
    .local v0, authority:Ljava/lang/String;
    const-string v1, "com.motorola.media.extensions"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2167
    .end local v0           #authority:Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 2
    .parameter "db"
    .parameter "internal"

    .prologue
    .line 2154
    const-string v0, "DEBUG"

    const-string v1, "Creating Tables ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2155
    invoke-static {p1, p2}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Tables;->createTables(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 2156
    const-string v0, "DEBUG"

    const-string v1, "Creating Triggers ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    invoke-static {p1, p2}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Tables;->createTriggers(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 2158
    const-string v0, "DEBUG"

    const-string v1, "Creating Views ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2159
    invoke-static {p1, p2}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Views;->createViews(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 2160
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 2150
    #calls: Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Tables;->create_motorola_artist_detailed_event_cleanup_trigger(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {p1}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Tables;->access$700(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2151
    return-void
.end method

.method public openDbForExtensions(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 7
    .parameter "db"
    .parameter "internal"

    .prologue
    const/4 v6, 0x0

    .line 1996
    const/4 v2, 0x0

    .line 1997
    .local v2, version:I
    const-string v3, "DEBUG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enter openDbForExtensions internal="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    :try_start_0
    const-string v3, "select version from motorola_mediaExtensions_meta_info"

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    long-to-int v2, v3

    .line 2015
    :goto_0
    const-string v3, "DEBUG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "version is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->MEDIA_STORE_EXTENSIONS_DATABASE_VERSION:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    sget v3, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->MEDIA_STORE_EXTENSIONS_DATABASE_VERSION:I

    if-eq v2, v3, :cond_0

    .line 2017
    const-string v3, "DEBUG"

    const-string v4, "version != MEDIA_STORE_EXTENSIONS_DATABASE_VERSION"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    const-string v3, "DEBUG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "version = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", MEDIA_STORE_EXTENSIONS_DATABASE_VERSION ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->MEDIA_STORE_EXTENSIONS_DATABASE_VERSION:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2021
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2024
    :try_start_1
    const-string v3, "DEBUG"

    const-string v4, "upgradeExtensionSchema"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    sget v3, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->MEDIA_STORE_EXTENSIONS_DATABASE_VERSION:I

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->upgradeExtensionSchema(Landroid/database/sqlite/SQLiteDatabase;ZII)V

    .line 2029
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2030
    .local v0, cv:Landroid/content/ContentValues;
    const-string v3, "version"

    sget v4, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->MEDIA_STORE_EXTENSIONS_DATABASE_VERSION:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2031
    const-string v3, "motorola_mediaExtensions_meta_info"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2032
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2034
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2037
    .end local v0           #cv:Landroid/content/ContentValues;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2038
    return-void

    .line 2001
    :catch_0
    move-exception v1

    .line 2003
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    const-string v3, "DEBUG"

    const-string v4, "call onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2006
    :try_start_2
    invoke-virtual {p0, p1, p2}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->onCreate(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 2007
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2009
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2011
    const-string v3, "select version from motorola_mediaExtensions_meta_info"

    invoke-static {p1, v3, v6}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v3

    long-to-int v2, v3

    goto/16 :goto_0

    .line 2009
    :catchall_0
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 2034
    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_1
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method public query(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 30
    .parameter "context"
    .parameter "db"
    .parameter "uri"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 2173
    sget-object v3, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v12

    .line 2174
    .local v12, table:I
    const/4 v7, 0x0

    .line 2175
    .local v7, groupBy:Ljava/lang/String;
    const-string v3, "group_by"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2176
    const-string v3, "group_by"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2181
    :cond_0
    :goto_0
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2183
    .local v2, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v3, "distinct"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2184
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 2186
    :cond_1
    const-string v3, "limit"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2188
    .local v10, limit:Ljava/lang/String;
    const-string v3, "MediaStoreExtension"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query()::uri ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " table="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2190
    sparse-switch v12, :sswitch_data_0

    .line 2401
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2177
    .end local v2           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v10           #limit:Ljava/lang/String;
    :cond_2
    const-string v3, "groupby"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2178
    const-string v3, "groupby"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 2192
    .restart local v2       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v10       #limit:Ljava/lang/String;
    :sswitch_0
    const-string v3, "blur_playhistory"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2409
    :goto_1
    const/4 v8, 0x0

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 2411
    .local v18, c:Landroid/database/Cursor;
    if-eqz v18, :cond_3

    .line 2412
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-interface {v0, v3, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_3
    move-object/from16 v26, v18

    .line 2415
    .end local v7           #groupBy:Ljava/lang/String;
    .end local v10           #limit:Ljava/lang/String;
    .end local v18           #c:Landroid/database/Cursor;
    :cond_4
    :goto_2
    return-object v26

    .line 2195
    .restart local v7       #groupBy:Ljava/lang/String;
    .restart local v10       #limit:Ljava/lang/String;
    :sswitch_1
    invoke-static/range {p3 .. p3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v23

    .line 2196
    .local v23, playHistoryId:J
    const-string v3, "blur_playhistory"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2197
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v23

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2200
    .end local v23           #playHistoryId:J
    :sswitch_2
    const-string v3, "images"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_1

    .line 2207
    :sswitch_3
    const-string v3, "images"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2208
    invoke-static/range {p3 .. p3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v20

    .line 2211
    .local v20, imageId:J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2215
    .end local v20           #imageId:J
    :sswitch_4
    const-string v3, "motorola_audio"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_1

    .line 2219
    :sswitch_5
    invoke-static/range {p3 .. p3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v14

    .line 2220
    .local v14, audioId:J
    const-string v3, "motorola_audio"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2221
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 2225
    .end local v14           #audioId:J
    :sswitch_6
    const-string v3, "video"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2229
    :sswitch_7
    invoke-static/range {p3 .. p3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v28

    .line 2230
    .local v28, videoId:J
    const-string v3, "video"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2231
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v28

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 2235
    .end local v28           #videoId:J
    :sswitch_8
    const-string v3, "motorola_view_visial_media_albums_folders"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2238
    :sswitch_9
    const-string v3, "motorola_view_visual_media"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2239
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "location="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 2244
    :sswitch_a
    const-string v3, "motorola_mediaAttributes"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2248
    :sswitch_b
    const-string v3, "motorola_mediaAttributes"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2249
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 2253
    :sswitch_c
    const-string v3, "motorola_view_attributes_visual_media"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2257
    :sswitch_d
    const-string v3, "motorola_view_attributes_visual_media"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2258
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 2262
    :sswitch_e
    const-string v3, "motorola_media_albums"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2266
    :sswitch_f
    const-string v3, "motorola_media_albums"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2267
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x2

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 2271
    :sswitch_10
    const-string v3, "motorola_view_media_in_album"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2275
    :sswitch_11
    const-string v3, "motorola_view_media_in_album"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2276
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 2280
    :sswitch_12
    const-string v3, "motorola_view_visual_folders"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2284
    :sswitch_13
    const-string v3, "motorola_view_visual_media"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2287
    :sswitch_14
    const-string v3, "motorola_artist_detailed_events"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2290
    :sswitch_15
    const-string v3, "motorola_view_artists"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2291
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " _id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x2

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 2294
    :sswitch_16
    const-string v3, "motorola_view_artists"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2297
    :sswitch_17
    const-string v3, "motorola_view_audio_album"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2300
    :sswitch_18
    const-string v3, "motorola_view_audio_album"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2301
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " _id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x2

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 2304
    :sswitch_19
    const-string v3, "audio_playlists"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2307
    :sswitch_1a
    const-string v3, "audio_playlists"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2308
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " _id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x2

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 2311
    :sswitch_1b
    const-string v3, "blur_recommendation"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2314
    :sswitch_1c
    const-string v3, "motorola_suggestions"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2315
    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    .line 2316
    .local v17, audio_suggestionType:Ljava/lang/String;
    const-string v3, "suggestionType"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2317
    .local v16, audio_overideSuggestionType:Ljava/lang/String;
    if-eqz v16, :cond_5

    .line 2318
    move-object/from16 v17, v16

    .line 2320
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 2325
    .end local v16           #audio_overideSuggestionType:Ljava/lang/String;
    .end local v17           #audio_suggestionType:Ljava/lang/String;
    :sswitch_1d
    const-string v3, "motorola_suggestions"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2326
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x2

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 2330
    :sswitch_1e
    const-string v3, "motorola_view_audio_library_changes"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2333
    :sswitch_1f
    const-string v3, "thumbnails"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2336
    :sswitch_20
    const-string v3, "thumbnails"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2337
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "image_thumbnail_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x2

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 2342
    :sswitch_21
    const-string v3, "motorola_view_tags"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2345
    :sswitch_22
    const-string v3, "motorola_view_visual_tag_search"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2346
    if-eqz p6, :cond_6

    const/4 v3, 0x0

    aget-object v3, p6, v3

    if-eqz v3, :cond_6

    .line 2347
    const/4 v3, 0x0

    aget-object v25, p6, v3

    .line 2348
    .local v25, searchClause:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 p6, v0

    .line 2349
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x25

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p6, v3

    .line 2350
    const-string v3, "suggest_text_1 like ?"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2351
    const/16 p5, 0x0

    .line 2353
    goto/16 :goto_1

    .end local v25           #searchClause:Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_7

    .line 2354
    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v25

    .line 2355
    .restart local v25       #searchClause:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 p6, v0

    .line 2356
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x25

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p6, v3

    .line 2357
    const-string v3, "suggest_text_1 like ?"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2358
    const/16 p5, 0x0

    .line 2359
    goto/16 :goto_1

    .line 2360
    .end local v25           #searchClause:Ljava/lang/String;
    :cond_7
    const-string v3, "0"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2361
    const/16 p5, 0x0

    .line 2362
    const/16 p6, 0x0

    .line 2364
    goto/16 :goto_1

    .line 2366
    :sswitch_23
    if-eqz p6, :cond_c

    const/4 v3, 0x0

    aget-object v3, p6, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2367
    const-string v3, "motorola_suggestions"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2368
    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    .line 2369
    .local v27, suggestionType:Ljava/lang/String;
    const-string v3, "suggestionType"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2370
    .local v22, overideSuggestionType:Ljava/lang/String;
    if-eqz v22, :cond_8

    .line 2371
    move-object/from16 v27, v22

    .line 2373
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2375
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "date DESC"

    .end local v7           #groupBy:Ljava/lang/String;
    const/4 v10, 0x0

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v10           #limit:Ljava/lang/String;
    move-result-object v19

    .line 2377
    .local v19, cSuggest:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-interface {v0, v3, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 2378
    new-instance v26, Landroid/database/MatrixCursor;

    sget-object v3, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->SUGGEST_COLUMNS:[Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2379
    .local v26, suggestCursor:Landroid/database/MatrixCursor;
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_a

    .line 2380
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2382
    :cond_9
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "musicsuggest="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const v5, 0x7f020002

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2387
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_9

    .line 2392
    if-eqz v19, :cond_4

    .line 2393
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 2390
    :cond_a
    const/16 v26, 0x0

    .line 2392
    .end local v26           #suggestCursor:Landroid/database/MatrixCursor;
    if-eqz v19, :cond_4

    .line 2393
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 2392
    :catchall_0
    move-exception v3

    if-eqz v19, :cond_b

    .line 2393
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v3

    .line 2397
    .end local v19           #cSuggest:Landroid/database/Cursor;
    .end local v22           #overideSuggestionType:Ljava/lang/String;
    .end local v27           #suggestionType:Ljava/lang/String;
    .restart local v7       #groupBy:Ljava/lang/String;
    .restart local v10       #limit:Ljava/lang/String;
    :cond_c
    const/4 v13, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object v6, v2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-direct/range {v3 .. v13}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->doAudioSearch(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/database/Cursor;

    .end local v7           #groupBy:Ljava/lang/String;
    .end local v10           #limit:Ljava/lang/String;
    move-result-object v26

    goto/16 :goto_2

    .line 2190
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_1f
        0x4 -> :sswitch_20
        0x64 -> :sswitch_4
        0x65 -> :sswitch_5
        0xc8 -> :sswitch_6
        0xc9 -> :sswitch_7
        0x258 -> :sswitch_8
        0x2bc -> :sswitch_a
        0x2bd -> :sswitch_b
        0x2be -> :sswitch_c
        0x2bf -> :sswitch_d
        0x320 -> :sswitch_e
        0x321 -> :sswitch_10
        0x322 -> :sswitch_f
        0x323 -> :sswitch_11
        0x384 -> :sswitch_16
        0x385 -> :sswitch_15
        0x44c -> :sswitch_13
        0x44d -> :sswitch_9
        0x4b0 -> :sswitch_14
        0x514 -> :sswitch_12
        0x5dc -> :sswitch_17
        0x5dd -> :sswitch_18
        0x5de -> :sswitch_19
        0x5df -> :sswitch_1a
        0x640 -> :sswitch_21
        0x6a4 -> :sswitch_22
        0x6a5 -> :sswitch_23
        0x708 -> :sswitch_1b
        0x76c -> :sswitch_1c
        0x76d -> :sswitch_1d
        0x7d0 -> :sswitch_1e
        0x834 -> :sswitch_0
        0x835 -> :sswitch_1
    .end sparse-switch
.end method

.method public update(Lcom/android/providers/media/MediaProvider;Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 33
    .parameter "mp"
    .parameter "context"
    .parameter "db"
    .parameter "uri"
    .parameter "initialValues"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    .line 2929
    const/4 v14, -0x1

    .line 2930
    .local v14, count:I
    const/16 v28, 0x0

    .line 2932
    .local v28, where:Ljava/lang/String;
    sget-object v30, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, v30

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v18

    .line 2933
    .local v18, match:I
    sparse-switch v18, :sswitch_data_0

    .line 3059
    :goto_0
    if-gez v14, :cond_b

    .line 3060
    new-instance v30, Ljava/lang/UnsupportedOperationException;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Unknown URI: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v30

    .line 2935
    :sswitch_0
    const-string v30, "blur_playhistory"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 2936
    goto :goto_0

    .line 2939
    :sswitch_1
    invoke-static/range {p4 .. p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v20

    .line 2940
    .local v20, playHistoryId:J
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "_id = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    if-nez p6, :cond_0

    const-string v30, ""

    :goto_1
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 2943
    .local v25, selectionWithId:Ljava/lang/String;
    const-string v30, "blur_playhistory"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move-object/from16 v2, p5

    move-object/from16 v3, v25

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 2944
    goto :goto_0

    .line 2940
    .end local v25           #selectionWithId:Ljava/lang/String;
    :cond_0
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, " AND "

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    goto :goto_1

    .line 2947
    .end local v20           #playHistoryId:J
    :sswitch_2
    invoke-static/range {p4 .. p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v16

    .line 2948
    .local v16, imageId:J
    invoke-virtual/range {p4 .. p4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v30

    const/16 v31, 0x0

    invoke-interface/range {v30 .. v31}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    invoke-static/range {v30 .. v30}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v30

    move-object/from16 v0, v30

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .line 2951
    .local v19, mpUri:Landroid/net/Uri;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/providers/media/MediaProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v30

    .line 3063
    .end local v16           #imageId:J
    .end local v19           #mpUri:Landroid/net/Uri;
    :goto_2
    return v30

    .line 2954
    :sswitch_3
    invoke-static/range {p4 .. p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v26

    .line 2955
    .local v26, videoId:J
    invoke-virtual/range {p4 .. p4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v30

    const/16 v31, 0x0

    invoke-interface/range {v30 .. v31}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    invoke-static/range {v30 .. v30}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v30

    move-object/from16 v0, v30

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .line 2958
    .restart local v19       #mpUri:Landroid/net/Uri;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/providers/media/MediaProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v30

    goto :goto_2

    .line 2961
    .end local v19           #mpUri:Landroid/net/Uri;
    .end local v26           #videoId:J
    :sswitch_4
    invoke-static/range {p4 .. p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v12

    .line 2962
    .local v12, audioId:J
    invoke-virtual/range {p4 .. p4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v30

    const/16 v31, 0x0

    invoke-interface/range {v30 .. v31}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    invoke-static/range {v30 .. v30}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-static {v0, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .line 2970
    .restart local v19       #mpUri:Landroid/net/Uri;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/providers/media/MediaProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v30

    goto :goto_2

    .line 2973
    .end local v12           #audioId:J
    .end local v19           #mpUri:Landroid/net/Uri;
    :sswitch_5
    const-string v30, "motorola_mediaAttributes"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 2974
    goto/16 :goto_0

    .line 2976
    :sswitch_6
    invoke-static/range {p4 .. p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    .line 2977
    .local v10, attributeId:J
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "_id = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    if-nez p6, :cond_1

    const-string v30, ""

    :goto_3
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 2980
    .restart local v25       #selectionWithId:Ljava/lang/String;
    const-string v30, "motorola_mediaAttributes"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move-object/from16 v2, p5

    move-object/from16 v3, v25

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 2982
    goto/16 :goto_0

    .line 2977
    .end local v25           #selectionWithId:Ljava/lang/String;
    :cond_1
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, " AND "

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    goto :goto_3

    .line 2984
    .end local v10           #attributeId:J
    :sswitch_7
    invoke-static/range {p4 .. p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    .line 2985
    .local v5, albumId:J
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "_id = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    if-nez p6, :cond_2

    const-string v30, ""

    :goto_4
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2988
    .local v7, albumSelectionWithId:Ljava/lang/String;
    const-string v30, "motorola_media_albums"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    invoke-virtual {v0, v1, v2, v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 2990
    goto/16 :goto_0

    .line 2985
    .end local v7           #albumSelectionWithId:Ljava/lang/String;
    :cond_2
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, " AND "

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    goto :goto_4

    .line 2992
    .end local v5           #albumId:J
    :sswitch_8
    const-string v30, "motorola_media_albums"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 2993
    goto/16 :goto_0

    .line 2996
    :sswitch_9
    const-string v30, "_data"

    move-object/from16 v0, p5

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_3

    .line 2997
    const-string v30, "_data"

    move-object/from16 v0, p5

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    .line 2998
    .local v15, dataValue:Ljava/lang/Object;
    const-string v30, "_data"

    move-object/from16 v0, p5

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2999
    const-string v31, "_data"

    if-eqz v15, :cond_5

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v30

    :goto_5
    move-object/from16 v0, p5

    move-object/from16 v1, v31

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3003
    .end local v15           #dataValue:Ljava/lang/Object;
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v30, "artist_id"

    move-object/from16 v0, v30

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3005
    .local v9, artistsWhere:Ljava/lang/StringBuilder;
    const-string v30, "="

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {p4 .. p4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v30

    const/16 v32, 0x2

    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3006
    if-eqz p6, :cond_4

    .line 3007
    const-string v30, " AND "

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3009
    :cond_4
    const-string v30, "blur_artist"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move-object/from16 v2, p5

    move-object/from16 v3, v31

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 3010
    goto/16 :goto_0

    .line 2999
    .end local v9           #artistsWhere:Ljava/lang/StringBuilder;
    .restart local v15       #dataValue:Ljava/lang/Object;
    :cond_5
    const/16 v30, 0x0

    check-cast v30, Ljava/lang/String;

    goto :goto_5

    .line 3013
    .end local v15           #dataValue:Ljava/lang/Object;
    :sswitch_a
    const-string v30, "_data"

    move-object/from16 v0, p5

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_6

    .line 3014
    const-string v30, "_data"

    move-object/from16 v0, p5

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    .line 3015
    .restart local v15       #dataValue:Ljava/lang/Object;
    const-string v30, "_data"

    move-object/from16 v0, p5

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 3016
    const-string v31, "_data"

    if-eqz v15, :cond_7

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v30

    :goto_6
    move-object/from16 v0, p5

    move-object/from16 v1, v31

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3020
    .end local v15           #dataValue:Ljava/lang/Object;
    :cond_6
    const-string v30, "blur_artist"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 3021
    goto/16 :goto_0

    .line 3016
    .restart local v15       #dataValue:Ljava/lang/Object;
    :cond_7
    const/16 v30, 0x0

    check-cast v30, Ljava/lang/String;

    goto :goto_6

    .line 3023
    .end local v15           #dataValue:Ljava/lang/Object;
    :sswitch_b
    const-string v30, "blur_news"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 3024
    goto/16 :goto_0

    .line 3026
    :sswitch_c
    const-string v30, "motorola_artist_detailed_events"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 3027
    goto/16 :goto_0

    .line 3029
    :sswitch_d
    const-string v30, "blur_album"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 3030
    goto/16 :goto_0

    .line 3033
    :sswitch_e
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, " _id = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-static/range {p4 .. p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v31

    invoke-virtual/range {v30 .. v32}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    if-nez p6, :cond_8

    const-string v30, " "

    :goto_7
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3035
    .local v8, albumWithId:Ljava/lang/String;
    const-string v30, "blur_album"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    invoke-virtual {v0, v1, v2, v8, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 3036
    goto/16 :goto_0

    .line 3033
    .end local v8           #albumWithId:Ljava/lang/String;
    :cond_8
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, " AND "

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    goto :goto_7

    .line 3038
    :sswitch_f
    const-string v30, "blur_recommendation"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 3039
    goto/16 :goto_0

    .line 3041
    :sswitch_10
    invoke-static/range {p4 .. p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v22

    .line 3042
    .local v22, recomId:J
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "_id = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    if-nez p6, :cond_9

    const-string v30, ""

    :goto_8
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 3045
    .local v24, recomSelectionWithId:Ljava/lang/String;
    const-string v30, "motorola_media_albums"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move-object/from16 v2, p5

    move-object/from16 v3, v24

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 3048
    goto/16 :goto_0

    .line 3042
    .end local v24           #recomSelectionWithId:Ljava/lang/String;
    :cond_9
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, " AND "

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    goto :goto_8

    .line 3050
    .end local v22           #recomId:J
    :sswitch_11
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "_id = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-static/range {p4 .. p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v31

    invoke-virtual/range {v30 .. v32}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    if-nez p6, :cond_a

    const-string v30, ""

    :goto_9
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 3053
    .local v29, withId:Ljava/lang/String;
    const-string v30, "motorola_suggestions"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move-object/from16 v2, p5

    move-object/from16 v3, v29

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 3054
    goto/16 :goto_0

    .line 3050
    .end local v29           #withId:Ljava/lang/String;
    :cond_a
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, " AND "

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    goto :goto_9

    .line 3056
    :sswitch_12
    const-string v30, "motorola_suggestions"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    goto/16 :goto_0

    :cond_b
    move/from16 v30, v14

    .line 3063
    goto/16 :goto_2

    .line 2933
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x65 -> :sswitch_4
        0xc9 -> :sswitch_3
        0x2bc -> :sswitch_5
        0x2bd -> :sswitch_6
        0x320 -> :sswitch_8
        0x322 -> :sswitch_7
        0x384 -> :sswitch_a
        0x385 -> :sswitch_9
        0x3e8 -> :sswitch_b
        0x4b0 -> :sswitch_c
        0x5dc -> :sswitch_d
        0x5dd -> :sswitch_e
        0x708 -> :sswitch_f
        0x709 -> :sswitch_10
        0x76c -> :sswitch_12
        0x76d -> :sswitch_11
        0x834 -> :sswitch_0
        0x835 -> :sswitch_1
    .end sparse-switch
.end method
