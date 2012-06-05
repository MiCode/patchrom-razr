.class Lcom/android/server/WallpaperManagerService;
.super Landroid/app/IWallpaperManager$Stub;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WallpaperManagerService$MyPackageMonitor;,
        Lcom/android/server/WallpaperManagerService$WallpaperConnection;,
        Lcom/android/server/WallpaperManagerService$WebtopLiveWallpaperObserver;
    }
.end annotation


# static fields
.field private static final ACTION_WEBTOP_LIVE_WALLPAPER_CHANGED:Ljava/lang/String; = "android.intent.action.WEBTOP_LIVE_WALLPAPER_CHANGED"

.field static final DEBUG:Z = false

.field static final MIN_WALLPAPER_CRASH_TIME:J = 0x2710L

.field static final TAG:Ljava/lang/String; = "WallpaperService"

.field static final WALLPAPER:Ljava/lang/String; = "wallpaper"

.field static final WALLPAPER_DIR:Ljava/io/File; = null

.field static final WALLPAPER_FILE:Ljava/io/File; = null

.field static final WALLPAPER_WT:Ljava/lang/String; = "wallpaper_wt"

.field static final WALLPAPER_WT_FILE:Ljava/io/File;

.field private static mStartCopy:Z


# instance fields
.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/app/IWallpaperManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field mHeight:I

.field final mIWindowManager:Landroid/view/IWindowManager;

.field mImageWallpaperComponent:Landroid/content/ComponentName;

.field mImageWallpaperPending:Z

.field mLastDiedTime:J

.field final mLock:Ljava/lang/Object;

.field final mMonitor:Lcom/android/server/WallpaperManagerService$MyPackageMonitor;

.field mName:Ljava/lang/String;

.field mNextWallpaperComponent:Landroid/content/ComponentName;

.field private mReceiver:Lcom/android/server/WallpaperManagerService$WebtopLiveWallpaperObserver;

.field mWallpaperComponent:Landroid/content/ComponentName;

.field mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

.field private final mWallpaperObserver:Landroid/os/FileObserver;

.field mWallpaperUpdating:Z

.field private mWebtopManager:Lcom/motorola/webtop/WebtopManager;

.field mWebtopNextWallpaperComponent:Landroid/content/ComponentName;

.field mWebtopWallpaperComponent:Landroid/content/ComponentName;

.field mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 103
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.android.settings/files"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/WallpaperManagerService;->WALLPAPER_DIR:Ljava/io/File;

    .line 107
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/WallpaperManagerService;->WALLPAPER_DIR:Ljava/io/File;

    const-string v2, "wallpaper"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FILE:Ljava/io/File;

    .line 108
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/WallpaperManagerService;->WALLPAPER_DIR:Ljava/io/File;

    const-string v2, "wallpaper_wt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/WallpaperManagerService;->WALLPAPER_WT_FILE:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 535
    invoke-direct {p0}, Landroid/app/IWallpaperManager$Stub;-><init>()V

    .line 91
    new-array v1, v5, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 114
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/WallpaperManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 142
    new-instance v1, Lcom/android/server/WallpaperManagerService$1;

    sget-object v2, Lcom/android/server/WallpaperManagerService;->WALLPAPER_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x608

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/WallpaperManagerService$1;-><init>(Lcom/android/server/WallpaperManagerService;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperObserver:Landroid/os/FileObserver;

    .line 200
    iput v4, p0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    .line 201
    iput v4, p0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    .line 211
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    .line 242
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.ImageWallpaper"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/WallpaperManagerService;->mImageWallpaperComponent:Landroid/content/ComponentName;

    .line 537
    iput-object p1, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 538
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    .line 540
    new-instance v1, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;

    invoke-direct {v1, p0}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;-><init>(Lcom/android/server/WallpaperManagerService;)V

    iput-object v1, p0, Lcom/android/server/WallpaperManagerService;->mMonitor:Lcom/android/server/WallpaperManagerService$MyPackageMonitor;

    .line 541
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mMonitor:Lcom/android/server/WallpaperManagerService$MyPackageMonitor;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->register(Landroid/content/Context;Z)V

    .line 542
    sget-object v1, Lcom/android/server/WallpaperManagerService;->WALLPAPER_DIR:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 543
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->loadSettingsLocked()V

    .line 544
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperObserver:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V

    .line 546
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.WEBTOP_LIVE_WALLPAPER_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 547
    .local v0, filter:Landroid/content/IntentFilter;
    new-instance v1, Lcom/android/server/WallpaperManagerService$WebtopLiveWallpaperObserver;

    invoke-direct {v1, p0}, Lcom/android/server/WallpaperManagerService$WebtopLiveWallpaperObserver;-><init>(Lcom/android/server/WallpaperManagerService;)V

    iput-object v1, p0, Lcom/android/server/WallpaperManagerService;->mReceiver:Lcom/android/server/WallpaperManagerService$WebtopLiveWallpaperObserver;

    .line 548
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mReceiver:Lcom/android/server/WallpaperManagerService$WebtopLiveWallpaperObserver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 551
    new-instance v1, Lcom/motorola/webtop/WebtopManager;

    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/motorola/webtop/WebtopManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWebtopManager:Lcom/motorola/webtop/WebtopManager;

    .line 554
    const-string v1, "persist.sys.start.copy"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/WallpaperManagerService;->mStartCopy:Z

    .line 556
    return-void
.end method

.method private CopyFileToWebtop(Z)V
    .locals 7
    .parameter "bool"

    .prologue
    .line 680
    :try_start_0
    sget-object v5, Lcom/android/server/WallpaperManagerService;->WALLPAPER_WT_FILE:Ljava/io/File;

    const/high16 v6, 0x3800

    invoke-static {v5, v6}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 682
    .local v1, fd:Landroid/os/ParcelFileDescriptor;
    const/4 v3, 0x0

    .line 683
    .local v3, fos:Ljava/io/FileOutputStream;
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .end local v3           #fos:Ljava/io/FileOutputStream;
    invoke-direct {v3, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 684
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    if-eqz p1, :cond_1

    .line 685
    const/4 v2, 0x0

    .line 686
    .local v2, fis:Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/FileInputStream;

    .end local v2           #fis:Ljava/io/FileInputStream;
    sget-object v5, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FILE:Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 687
    .restart local v2       #fis:Ljava/io/FileInputStream;
    invoke-direct {p0, v2, v3}, Lcom/android/server/WallpaperManagerService;->doCopyWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V

    .line 704
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 689
    .restart local v1       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :cond_1
    const/4 v4, 0x0

    .line 690
    .local v4, is:Ljava/io/InputStream;
    iget-object v5, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x108021b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 692
    invoke-direct {p0, v4, v3}, Lcom/android/server/WallpaperManagerService;->doCopyWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 694
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .end local v4           #is:Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 695
    .local v0, e:Ljava/io/FileNotFoundException;
    sget-object v5, Lcom/android/server/WallpaperManagerService;->WALLPAPER_WT_FILE:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/android/server/WallpaperManagerService;->WALLPAPER_WT_FILE:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 696
    sget-object v5, Lcom/android/server/WallpaperManagerService;->WALLPAPER_WT_FILE:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 698
    :cond_2
    const-string v5, "WallpaperService"

    const-string v6, "Error copy wallpaper"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 699
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 700
    .local v0, e:Ljava/io/IOException;
    sget-object v5, Lcom/android/server/WallpaperManagerService;->WALLPAPER_WT_FILE:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/server/WallpaperManagerService;->WALLPAPER_WT_FILE:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 701
    sget-object v5, Lcom/android/server/WallpaperManagerService;->WALLPAPER_WT_FILE:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/WallpaperManagerService;)Lcom/motorola/webtop/WebtopManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWebtopManager:Lcom/motorola/webtop/WebtopManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/WallpaperManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->notifyCallbacksLocked()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/WallpaperManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->saveSettingsLocked()V

    return-void
.end method

.method private checkPermission(Ljava/lang/String;)V
    .locals 3
    .parameter "permission"

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1133
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Access denied to process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", must have permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1136
    :cond_0
    return-void
.end method

.method private doCopyWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    .locals 3
    .parameter "is"
    .parameter "fos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 708
    const v2, 0x8000

    :try_start_0
    new-array v1, v2, [B

    .line 710
    .local v1, buffer:[B
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, amt:I
    if-lez v0, :cond_1

    .line 711
    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 714
    .end local v0           #amt:I
    .end local v1           #buffer:[B
    :catchall_0
    move-exception v2

    if-eqz p2, :cond_0

    .line 715
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    .line 714
    :cond_0
    throw v2

    .restart local v0       #amt:I
    .restart local v1       #buffer:[B
    :cond_1
    if-eqz p2, :cond_2

    .line 715
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    .line 718
    :cond_2
    return-void
.end method

.method private loadSettingsLocked()V
    .locals 22

    .prologue
    .line 1193
    invoke-static {}, Lcom/android/server/WallpaperManagerService;->makeJournaledFile()Lcom/android/internal/util/JournaledFile;

    move-result-object v9

    .line 1194
    .local v9, journal:Lcom/android/internal/util/JournaledFile;
    const/4 v12, 0x0

    .line 1195
    .local v12, stream:Ljava/io/FileInputStream;
    invoke-virtual {v9}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v8

    .line 1196
    .local v8, file:Ljava/io/File;
    const/4 v14, 0x0

    .line 1198
    .local v14, success:Z
    :try_start_0
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_4

    .line 1199
    .end local v12           #stream:Ljava/io/FileInputStream;
    .local v13, stream:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v11

    .line 1200
    .local v11, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-interface {v11, v13, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1204
    :cond_0
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v16

    .line 1205
    .local v16, type:I
    const/16 v19, 0x2

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 1206
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 1207
    .local v15, tag:Ljava/lang/String;
    const-string v19, "wp"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 1208
    const/16 v19, 0x0

    const-string v20, "width"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WallpaperManagerService;->mWidth:I

    .line 1209
    const/16 v19, 0x0

    const-string v20, "height"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WallpaperManagerService;->mHeight:I

    .line 1210
    const/16 v19, 0x0

    const-string v20, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    .line 1212
    const/16 v19, 0x0

    const-string v20, "webtop_component"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1213
    .local v17, webtopcomp:Ljava/lang/String;
    if-eqz v17, :cond_9

    invoke-static/range {v17 .. v17}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v19

    :goto_0
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WallpaperManagerService;->mWebtopNextWallpaperComponent:Landroid/content/ComponentName;

    .line 1216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mWebtopNextWallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    const-string v19, "android"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mWebtopNextWallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1218
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mImageWallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WallpaperManagerService;->mWebtopNextWallpaperComponent:Landroid/content/ComponentName;

    .line 1221
    :cond_2
    const/16 v19, 0x0

    const-string v20, "component"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1222
    .local v4, comp:Ljava/lang/String;
    if-eqz v4, :cond_a

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v19

    :goto_1
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WallpaperManagerService;->mNextWallpaperComponent:Landroid/content/ComponentName;

    .line 1225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mNextWallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    const-string v19, "android"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mNextWallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 1227
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mImageWallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WallpaperManagerService;->mNextWallpaperComponent:Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_6

    .line 1239
    .end local v4           #comp:Ljava/lang/String;
    .end local v15           #tag:Ljava/lang/String;
    .end local v17           #webtopcomp:Ljava/lang/String;
    :cond_4
    const/16 v19, 0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 1240
    const/4 v14, 0x1

    move-object v12, v13

    .line 1253
    .end local v11           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v13           #stream:Ljava/io/FileInputStream;
    .end local v16           #type:I
    .restart local v12       #stream:Ljava/io/FileInputStream;
    :goto_2
    if-eqz v12, :cond_5

    .line 1254
    :try_start_2
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 1260
    :cond_5
    :goto_3
    if-nez v14, :cond_6

    .line 1261
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WallpaperManagerService;->mWidth:I

    .line 1262
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WallpaperManagerService;->mHeight:I

    .line 1263
    const-string v19, ""

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    .line 1267
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "window"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/WindowManager;

    .line 1268
    .local v18, wm:Landroid/view/WindowManager;
    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    .line 1272
    .local v5, d:Landroid/view/Display;
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1273
    .local v6, displayMetrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v5, v6}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 1274
    iget v0, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v19, v0

    iget v0, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 1275
    .local v10, minDim:I
    invoke-virtual {v5}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v2

    .line 1276
    .local v2, baseHeightSize:I
    mul-int/lit8 v19, v10, 0x2

    move/from16 v0, v19

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1277
    .local v3, baseWidthSize:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v0, v3, :cond_7

    .line 1278
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    .line 1280
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v0, v2, :cond_8

    .line 1281
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    .line 1284
    :cond_8
    return-void

    .line 1213
    .end local v2           #baseHeightSize:I
    .end local v3           #baseWidthSize:I
    .end local v5           #d:Landroid/view/Display;
    .end local v6           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v10           #minDim:I
    .end local v12           #stream:Ljava/io/FileInputStream;
    .end local v18           #wm:Landroid/view/WindowManager;
    .restart local v11       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13       #stream:Ljava/io/FileInputStream;
    .restart local v15       #tag:Ljava/lang/String;
    .restart local v16       #type:I
    .restart local v17       #webtopcomp:Ljava/lang/String;
    :cond_9
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1222
    .restart local v4       #comp:Ljava/lang/String;
    :cond_a
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 1241
    .end local v4           #comp:Ljava/lang/String;
    .end local v11           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v13           #stream:Ljava/io/FileInputStream;
    .end local v15           #tag:Ljava/lang/String;
    .end local v16           #type:I
    .end local v17           #webtopcomp:Ljava/lang/String;
    .restart local v12       #stream:Ljava/io/FileInputStream;
    :catch_0
    move-exception v7

    .line 1242
    .local v7, e:Ljava/lang/NullPointerException;
    :goto_4
    const-string v19, "WallpaperService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "failed parsing "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1243
    .end local v7           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v7

    .line 1244
    .local v7, e:Ljava/lang/NumberFormatException;
    :goto_5
    const-string v19, "WallpaperService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "failed parsing "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1245
    .end local v7           #e:Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v7

    .line 1246
    .local v7, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_6
    const-string v19, "WallpaperService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "failed parsing "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1247
    .end local v7           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v7

    .line 1248
    .local v7, e:Ljava/io/IOException;
    :goto_7
    const-string v19, "WallpaperService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "failed parsing "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1249
    .end local v7           #e:Ljava/io/IOException;
    :catch_4
    move-exception v7

    .line 1250
    .local v7, e:Ljava/lang/IndexOutOfBoundsException;
    :goto_8
    const-string v19, "WallpaperService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "failed parsing "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1256
    .end local v7           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_5
    move-exception v19

    goto/16 :goto_3

    .line 1249
    .end local v12           #stream:Ljava/io/FileInputStream;
    .restart local v13       #stream:Ljava/io/FileInputStream;
    :catch_6
    move-exception v7

    move-object v12, v13

    .end local v13           #stream:Ljava/io/FileInputStream;
    .restart local v12       #stream:Ljava/io/FileInputStream;
    goto :goto_8

    .line 1247
    .end local v12           #stream:Ljava/io/FileInputStream;
    .restart local v13       #stream:Ljava/io/FileInputStream;
    :catch_7
    move-exception v7

    move-object v12, v13

    .end local v13           #stream:Ljava/io/FileInputStream;
    .restart local v12       #stream:Ljava/io/FileInputStream;
    goto :goto_7

    .line 1245
    .end local v12           #stream:Ljava/io/FileInputStream;
    .restart local v13       #stream:Ljava/io/FileInputStream;
    :catch_8
    move-exception v7

    move-object v12, v13

    .end local v13           #stream:Ljava/io/FileInputStream;
    .restart local v12       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_6

    .line 1243
    .end local v12           #stream:Ljava/io/FileInputStream;
    .restart local v13       #stream:Ljava/io/FileInputStream;
    :catch_9
    move-exception v7

    move-object v12, v13

    .end local v13           #stream:Ljava/io/FileInputStream;
    .restart local v12       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_5

    .line 1241
    .end local v12           #stream:Ljava/io/FileInputStream;
    .restart local v13       #stream:Ljava/io/FileInputStream;
    :catch_a
    move-exception v7

    move-object v12, v13

    .end local v13           #stream:Ljava/io/FileInputStream;
    .restart local v12       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_4
.end method

.method private static makeJournaledFile()Lcom/android/internal/util/JournaledFile;
    .locals 5

    .prologue
    .line 1139
    const-string v0, "/data/system/wallpaper_info.xml"

    .line 1140
    .local v0, base:Ljava/lang/String;
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/wallpaper_info.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string v4, "/data/system/wallpaper_info.xml.tmp"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1
.end method

.method private notifyCallbacksLocked()V
    .locals 4

    .prologue
    .line 1103
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1104
    .local v2, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1106
    :try_start_0
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/app/IWallpaperManagerCallback;

    invoke-interface {v3}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1104
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1113
    :cond_0
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1117
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1118
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1121
    return-void

    .line 1107
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private notifyChangeLiveWallpaper()V
    .locals 2

    .prologue
    .line 1126
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WEBTOP_LIVE_WALLPAPER_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1127
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1128
    return-void
.end method

.method private saveSettingsLocked()V
    .locals 8

    .prologue
    .line 1144
    invoke-static {}, Lcom/android/server/WallpaperManagerService;->makeJournaledFile()Lcom/android/internal/util/JournaledFile;

    move-result-object v1

    .line 1145
    .local v1, journal:Lcom/android/internal/util/JournaledFile;
    const/4 v3, 0x0

    .line 1147
    .local v3, stream:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1148
    .end local v3           #stream:Ljava/io/FileOutputStream;
    .local v4, stream:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1149
    .local v2, out:Lorg/xmlpull/v1/XmlSerializer;
    const-string v5, "utf-8"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1150
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1152
    const/4 v5, 0x0

    const-string v6, "wp"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1153
    const/4 v5, 0x0

    const-string v6, "width"

    iget v7, p0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1154
    const/4 v5, 0x0

    const-string v6, "height"

    iget v7, p0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1155
    const/4 v5, 0x0

    const-string v6, "name"

    iget-object v7, p0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1157
    iget-object v5, p0, Lcom/android/server/WallpaperManagerService;->mWebtopWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/WallpaperManagerService;->mWebtopWallpaperComponent:Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/android/server/WallpaperManagerService;->mImageWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1159
    const/4 v5, 0x0

    const-string v6, "webtop_component"

    iget-object v7, p0, Lcom/android/server/WallpaperManagerService;->mWebtopWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1162
    :cond_0
    iget-object v5, p0, Lcom/android/server/WallpaperManagerService;->mWebtopWallpaperComponent:Landroid/content/ComponentName;

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/server/WallpaperManagerService;->mWebtopManager:Lcom/motorola/webtop/WebtopManager;

    invoke-virtual {v5}, Lcom/motorola/webtop/WebtopManager;->isWebtopMode()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/server/WallpaperManagerService;->mWebtopNextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/WallpaperManagerService;->mWebtopNextWallpaperComponent:Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/android/server/WallpaperManagerService;->mImageWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1164
    const/4 v5, 0x0

    const-string v6, "webtop_component"

    iget-object v7, p0, Lcom/android/server/WallpaperManagerService;->mWebtopNextWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1168
    :cond_1
    iget-object v5, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/android/server/WallpaperManagerService;->mImageWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1170
    const/4 v5, 0x0

    const-string v6, "component"

    iget-object v7, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1173
    :cond_2
    const/4 v5, 0x0

    const-string v6, "wp"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1175
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1176
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 1177
    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v4

    .line 1188
    .end local v2           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v4           #stream:Ljava/io/FileOutputStream;
    .restart local v3       #stream:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 1178
    :catch_0
    move-exception v0

    .line 1180
    .local v0, e:Ljava/io/IOException;
    :goto_1
    if-eqz v3, :cond_3

    .line 1181
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1186
    :cond_3
    :goto_2
    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->rollback()V

    goto :goto_0

    .line 1183
    :catch_1
    move-exception v5

    goto :goto_2

    .line 1178
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #stream:Ljava/io/FileOutputStream;
    .restart local v4       #stream:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    move-object v3, v4

    .end local v4           #stream:Ljava/io/FileOutputStream;
    .restart local v3       #stream:Ljava/io/FileOutputStream;
    goto :goto_1
.end method


# virtual methods
.method attachServiceLocked(Lcom/android/server/WallpaperManagerService$WallpaperConnection;)V
    .locals 9
    .parameter "conn"

    .prologue
    const/4 v8, 0x0

    .line 1091
    :try_start_0
    iget-object v0, p1, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    iget-object v2, p1, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    const/16 v3, 0x7dd

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    iget v6, p0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    move-object v1, p1

    invoke-interface/range {v0 .. v6}, Landroid/service/wallpaper/IWallpaperService;->attach(Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1100
    :cond_0
    :goto_0
    return-void

    .line 1094
    :catch_0
    move-exception v7

    .line 1095
    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "WallpaperService"

    const-string v1, "Failed attaching wallpaper; clearing"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1096
    iget-boolean v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperUpdating:Z

    if-nez v0, :cond_0

    .line 1097
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v8, v8}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZ)Z

    goto :goto_0
.end method

.method bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZ)Z
    .locals 18
    .parameter "componentName"
    .parameter "force"
    .parameter "fromUser"

    .prologue
    .line 887
    if-nez p2, :cond_0

    .line 888
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-eqz v12, :cond_0

    .line 891
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WallpaperManagerService;->mWebtopManager:Lcom/motorola/webtop/WebtopManager;

    invoke-virtual {v12}, Lcom/motorola/webtop/WebtopManager;->isWebtopMode()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 892
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WallpaperManagerService;->mWebtopWallpaperComponent:Landroid/content/ComponentName;

    if-nez v12, :cond_4

    .line 893
    sget-boolean v12, Lcom/android/server/WallpaperManagerService;->mStartCopy:Z

    if-nez v12, :cond_3

    if-nez p1, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WallpaperManagerService;->mImageWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v12, v13}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 895
    const/4 v12, 0x1

    sput-boolean v12, Lcom/android/server/WallpaperManagerService;->mStartCopy:Z

    .line 896
    const-string v12, "persist.sys.start.copy"

    sget-boolean v13, Lcom/android/server/WallpaperManagerService;->mStartCopy:Z

    invoke-static {v13}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 p1, v0

    .line 929
    :cond_0
    if-nez p1, :cond_2

    .line 935
    :try_start_0
    const-string v2, ""

    .line 936
    .local v2, defaultComponent:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WallpaperManagerService;->mWebtopManager:Lcom/motorola/webtop/WebtopManager;

    invoke-virtual {v12}, Lcom/motorola/webtop/WebtopManager;->isWebtopMode()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 937
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    const v13, 0x10404fa

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 945
    :goto_0
    if-eqz v2, :cond_1

    .line 947
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 950
    :cond_1
    if-nez p1, :cond_2

    .line 952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mImageWallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 p1, v0

    .line 958
    .end local v2           #defaultComponent:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const/16 v13, 0x1080

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v10

    .line 960
    .local v10, si:Landroid/content/pm/ServiceInfo;
    const-string v12, "android.permission.BIND_WALLPAPER"

    iget-object v13, v10, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 961
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Selected service does not require android.permission.BIND_WALLPAPER: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 964
    .local v6, msg:Ljava/lang/String;
    if-eqz p3, :cond_8

    .line 965
    new-instance v12, Ljava/lang/SecurityException;

    invoke-direct {v12, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1050
    .end local v6           #msg:Ljava/lang/String;
    .end local v10           #si:Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v3

    .line 1051
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown component "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1052
    .restart local v6       #msg:Ljava/lang/String;
    if-eqz p3, :cond_13

    .line 1053
    new-instance v12, Ljava/lang/IllegalArgumentException;

    invoke-direct {v12, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 898
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6           #msg:Ljava/lang/String;
    :cond_3
    if-nez p1, :cond_0

    .line 901
    const/4 v12, 0x1

    .line 1058
    :goto_1
    return v12

    .line 903
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WallpaperManagerService;->mWebtopWallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WallpaperManagerService;->mWebtopWallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v12, v13}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 907
    const/4 v12, 0x1

    goto :goto_1

    .line 910
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    if-nez v12, :cond_6

    .line 911
    if-nez p1, :cond_0

    .line 914
    const/4 v12, 0x1

    goto :goto_1

    .line 916
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WallpaperManagerService;->mWebtopWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v12, v13}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 920
    const/4 v12, 0x1

    goto :goto_1

    .line 940
    .restart local v2       #defaultComponent:Ljava/lang/String;
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    const v13, 0x104002e

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 967
    .end local v2           #defaultComponent:Ljava/lang/String;
    .restart local v6       #msg:Ljava/lang/String;
    .restart local v10       #si:Landroid/content/pm/ServiceInfo;
    :cond_8
    const-string v12, "WallpaperService"

    invoke-static {v12, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    const/4 v12, 0x0

    goto :goto_1

    .line 971
    .end local v6           #msg:Ljava/lang/String;
    :cond_9
    const/4 v11, 0x0

    .line 973
    .local v11, wi:Landroid/app/WallpaperInfo;
    new-instance v5, Landroid/content/Intent;

    const-string v12, "android.service.wallpaper.WallpaperService"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 974
    .local v5, intent:Landroid/content/Intent;
    if-eqz p1, :cond_f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WallpaperManagerService;->mImageWallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_f

    .line 976
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const/16 v13, 0x80

    invoke-virtual {v12, v5, v13}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 978
    .local v8, ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v4, v12, :cond_a

    .line 979
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    iget-object v9, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 980
    .local v9, rsi:Landroid/content/pm/ServiceInfo;
    iget-object v12, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v13, v10, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    iget-object v12, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v13, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v12

    if-eqz v12, :cond_d

    .line 983
    :try_start_2
    new-instance v11, Landroid/app/WallpaperInfo;

    .end local v11           #wi:Landroid/app/WallpaperInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    invoke-direct {v11, v13, v12}, Landroid/app/WallpaperInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1000
    .end local v9           #rsi:Landroid/content/pm/ServiceInfo;
    .restart local v11       #wi:Landroid/app/WallpaperInfo;
    :cond_a
    if-nez v11, :cond_f

    .line 1001
    :try_start_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Selected service is not a wallpaper: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1003
    .restart local v6       #msg:Ljava/lang/String;
    if-eqz p3, :cond_e

    .line 1004
    new-instance v12, Ljava/lang/SecurityException;

    invoke-direct {v12, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 984
    .end local v6           #msg:Ljava/lang/String;
    .end local v11           #wi:Landroid/app/WallpaperInfo;
    .restart local v9       #rsi:Landroid/content/pm/ServiceInfo;
    :catch_1
    move-exception v3

    .line 985
    .local v3, e:Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz p3, :cond_b

    .line 986
    new-instance v12, Ljava/lang/IllegalArgumentException;

    invoke-direct {v12, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 988
    :cond_b
    const-string v12, "WallpaperService"

    invoke-static {v12, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 989
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 990
    .end local v3           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v3

    .line 991
    .local v3, e:Ljava/io/IOException;
    if-eqz p3, :cond_c

    .line 992
    new-instance v12, Ljava/lang/IllegalArgumentException;

    invoke-direct {v12, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 994
    :cond_c
    const-string v12, "WallpaperService"

    invoke-static {v12, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 995
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 978
    .end local v3           #e:Ljava/io/IOException;
    .restart local v11       #wi:Landroid/app/WallpaperInfo;
    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1006
    .end local v9           #rsi:Landroid/content/pm/ServiceInfo;
    .restart local v6       #msg:Ljava/lang/String;
    :cond_e
    const-string v12, "WallpaperService"

    invoke-static {v12, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 1013
    .end local v4           #i:I
    .end local v6           #msg:Ljava/lang/String;
    .end local v8           #ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_f
    new-instance v7, Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v11}, Lcom/android/server/WallpaperManagerService$WallpaperConnection;-><init>(Lcom/android/server/WallpaperManagerService;Landroid/app/WallpaperInfo;)V

    .line 1014
    .local v7, newConn:Lcom/android/server/WallpaperManagerService$WallpaperConnection;
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1015
    const-string v12, "android.intent.extra.client_label"

    const v13, 0x1040454

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1017
    const-string v12, "android.intent.extra.client_intent"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    const/4 v14, 0x0

    new-instance v15, Landroid/content/Intent;

    const-string v16, "android.intent.action.SET_WALLPAPER"

    invoke-direct/range {v15 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x1040455

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v13 .. v16}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1022
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    const/4 v13, 0x1

    invoke-virtual {v12, v5, v7, v13}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v12

    if-nez v12, :cond_11

    .line 1024
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to bind service: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1026
    .restart local v6       #msg:Ljava/lang/String;
    if-eqz p3, :cond_10

    .line 1027
    new-instance v12, Ljava/lang/IllegalArgumentException;

    invoke-direct {v12, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1029
    :cond_10
    const-string v12, "WallpaperService"

    invoke-static {v12, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 1033
    .end local v6           #msg:Ljava/lang/String;
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WallpaperManagerService;->clearWallpaperComponentLocked()V

    .line 1035
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WallpaperManagerService;->mWebtopManager:Lcom/motorola/webtop/WebtopManager;

    invoke-virtual {v12}, Lcom/motorola/webtop/WebtopManager;->isWebtopMode()Z

    move-result v12

    if-eqz v12, :cond_12

    .line 1036
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WallpaperManagerService;->mWebtopWallpaperComponent:Landroid/content/ComponentName;

    .line 1041
    :goto_3
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    .line 1042
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/WallpaperManagerService;->mLastDiedTime:J
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1045
    :try_start_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v13, v7, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    const/16 v14, 0x7dd

    invoke-interface {v12, v13, v14}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1058
    :goto_4
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 1038
    :cond_12
    :try_start_5
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    .line 1055
    .end local v5           #intent:Landroid/content/Intent;
    .end local v7           #newConn:Lcom/android/server/WallpaperManagerService$WallpaperConnection;
    .end local v10           #si:Landroid/content/pm/ServiceInfo;
    .end local v11           #wi:Landroid/app/WallpaperInfo;
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6       #msg:Ljava/lang/String;
    :cond_13
    const-string v12, "WallpaperService"

    invoke-static {v12, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 1047
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6           #msg:Ljava/lang/String;
    .restart local v5       #intent:Landroid/content/Intent;
    .restart local v7       #newConn:Lcom/android/server/WallpaperManagerService$WallpaperConnection;
    .restart local v10       #si:Landroid/content/pm/ServiceInfo;
    .restart local v11       #wi:Landroid/app/WallpaperInfo;
    :catch_3
    move-exception v12

    goto :goto_4
.end method

.method public clearWallpaper()V
    .locals 2

    .prologue
    .line 593
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 594
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/WallpaperManagerService;->clearWallpaperLocked(Z)V

    .line 595
    monitor-exit v1

    .line 596
    return-void

    .line 595
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method clearWallpaperComponentLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1063
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWebtopManager:Lcom/motorola/webtop/WebtopManager;

    invoke-virtual {v0}, Lcom/motorola/webtop/WebtopManager;->isWebtopMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1064
    iput-object v2, p0, Lcom/android/server/WallpaperManagerService;->mWebtopWallpaperComponent:Landroid/content/ComponentName;

    .line 1069
    :goto_0
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_1

    .line 1070
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_0

    .line 1072
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v0}, Landroid/service/wallpaper/IWallpaperEngine;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1076
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1080
    :try_start_1
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v1, v1, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1083
    :goto_2
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iput-object v2, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 1084
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iput-object v2, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 1085
    iput-object v2, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    .line 1087
    :cond_1
    return-void

    .line 1066
    :cond_2
    iput-object v2, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    goto :goto_0

    .line 1081
    :catch_0
    move-exception v0

    goto :goto_2

    .line 1073
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public clearWallpaperLocked(Z)V
    .locals 8
    .parameter "defaultFailed"

    .prologue
    .line 601
    sget-object v2, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FILE:Ljava/io/File;

    .line 602
    .local v2, f:Ljava/io/File;
    iget-object v5, p0, Lcom/android/server/WallpaperManagerService;->mWebtopManager:Lcom/motorola/webtop/WebtopManager;

    invoke-virtual {v5}, Lcom/motorola/webtop/WebtopManager;->isWebtopMode()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 603
    sget-object v2, Lcom/android/server/WallpaperManagerService;->WALLPAPER_WT_FILE:Ljava/io/File;

    .line 605
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 606
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 611
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 612
    .local v3, ident:J
    const/4 v0, 0x0

    .line 614
    .local v0, e:Ljava/lang/RuntimeException;
    const/4 v5, 0x0

    :try_start_0
    iput-boolean v5, p0, Lcom/android/server/WallpaperManagerService;->mImageWallpaperPending:Z

    .line 615
    if-eqz p1, :cond_2

    iget-object v5, p0, Lcom/android/server/WallpaperManagerService;->mImageWallpaperComponent:Landroid/content/ComponentName;

    :goto_0
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_3

    .line 622
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 631
    :goto_1
    return-void

    .line 615
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 619
    :catch_0
    move-exception v1

    .line 620
    .local v1, e1:Ljava/lang/IllegalArgumentException;
    move-object v0, v1

    .line 622
    .end local v1           #e1:Ljava/lang/IllegalArgumentException;
    :cond_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 629
    const-string v5, "WallpaperService"

    const-string v6, "Default wallpaper component not found!"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 630
    invoke-virtual {p0}, Lcom/android/server/WallpaperManagerService;->clearWallpaperComponentLocked()V

    goto :goto_1

    .line 622
    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1449
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DUMP"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: can\'t dump wallpaper service from from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1477
    :goto_0
    return-void

    .line 1458
    :cond_0
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1459
    :try_start_0
    const-string v1, "Current Wallpaper Service state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1460
    const-string v1, "  mWidth="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1461
    const-string v1, " mHeight="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1462
    const-string v1, "  mName="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1463
    const-string v1, "  mWallpaperComponent="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1464
    const-string v1, "  mWebtopWallpaperComponent="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWebtopWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1465
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-eqz v1, :cond_1

    .line 1466
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    .line 1467
    .local v0, conn:Lcom/android/server/WallpaperManagerService$WallpaperConnection;
    const-string v1, "  Wallpaper connection "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1468
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1469
    const-string v1, "    mInfo.component="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v1}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1470
    const-string v1, "    mToken="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1471
    const-string v1, "    mService="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1472
    const-string v1, "    mEngine="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1473
    const-string v1, "    mLastDiedTime="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1474
    iget-wide v3, p0, Lcom/android/server/WallpaperManagerService;->mLastDiedTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {p2, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    .line 1476
    .end local v0           #conn:Lcom/android/server/WallpaperManagerService$WallpaperConnection;
    :cond_1
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 561
    invoke-super {p0}, Landroid/app/IWallpaperManager$Stub;->finalize()V

    .line 562
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 564
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mReceiver:Lcom/android/server/WallpaperManagerService$WebtopLiveWallpaperObserver;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mReceiver:Lcom/android/server/WallpaperManagerService$WebtopLiveWallpaperObserver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 569
    :cond_0
    sget-boolean v0, Lcom/android/server/WallpaperManagerService;->mStartCopy:Z

    if-eqz v0, :cond_1

    .line 570
    const-string v0, "persist.sys.start.copy"

    sget-boolean v1, Lcom/android/server/WallpaperManagerService;->mStartCopy:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    :cond_1
    return-void
.end method

.method public getHeightHint()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 669
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 670
    :try_start_0
    iget v0, p0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    monitor-exit v1

    return v0

    .line 671
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
    .locals 8
    .parameter "cb"
    .parameter "outParams"

    .prologue
    const/4 v4, 0x0

    .line 754
    iget-object v5, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 756
    if-eqz p2, :cond_0

    .line 757
    :try_start_0
    const-string v6, "width"

    iget v7, p0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    invoke-virtual {p2, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 758
    const-string v6, "height"

    iget v7, p0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    invoke-virtual {p2, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 760
    :cond_0
    iget-object v6, p0, Lcom/android/server/WallpaperManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 762
    iget-object v6, p0, Lcom/android/server/WallpaperManagerService;->mWebtopManager:Lcom/motorola/webtop/WebtopManager;

    invoke-virtual {v6}, Lcom/motorola/webtop/WebtopManager;->isWebtopMode()Z

    move-result v6

    if-nez v6, :cond_2

    .line 763
    sget-object v1, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FILE:Ljava/io/File;

    .line 764
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_1

    .line 765
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 809
    .end local v1           #f:Ljava/io/File;
    :goto_0
    return-object v4

    .line 767
    .restart local v1       #f:Ljava/io/File;
    :cond_1
    const/high16 v6, 0x1000

    :try_start_2
    invoke-static {v1, v6}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v4

    :try_start_3
    monitor-exit v5

    goto :goto_0

    .line 810
    .end local v1           #f:Ljava/io/File;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 769
    :cond_2
    :try_start_4
    sget-object v3, Lcom/android/server/WallpaperManagerService;->WALLPAPER_WT_FILE:Ljava/io/File;

    .line 771
    .local v3, wtWallpaper:Ljava/io/File;
    sget-object v2, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FILE:Ljava/io/File;

    .line 773
    .local v2, phoneWallPaper:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_7

    .line 775
    sget-boolean v6, Lcom/android/server/WallpaperManagerService;->mStartCopy:Z

    if-nez v6, :cond_5

    .line 776
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    .line 777
    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/server/WallpaperManagerService;->mStartCopy:Z

    .line 778
    const-string v6, "persist.sys.start.copy"

    sget-boolean v7, Lcom/android/server/WallpaperManagerService;->mStartCopy:Z

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    .line 779
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 781
    :cond_3
    const/4 v6, 0x1

    :try_start_6
    invoke-direct {p0, v6}, Lcom/android/server/WallpaperManagerService;->CopyFileToWebtop(Z)V

    .line 782
    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/server/WallpaperManagerService;->mStartCopy:Z

    .line 783
    const-string v6, "persist.sys.start.copy"

    sget-boolean v7, Lcom/android/server/WallpaperManagerService;->mStartCopy:Z

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 785
    const/high16 v6, 0x1000

    invoke-static {v3, v6}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v4

    :try_start_7
    monitor-exit v5

    goto :goto_0

    .line 787
    :cond_4
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 791
    :cond_5
    const/4 v6, 0x0

    :try_start_8
    invoke-direct {p0, v6}, Lcom/android/server/WallpaperManagerService;->CopyFileToWebtop(Z)V

    .line 792
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 793
    const/high16 v6, 0x1000

    invoke-static {v3, v6}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0

    move-result-object v4

    :try_start_9
    monitor-exit v5

    goto :goto_0

    .line 795
    :cond_6
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_0

    .line 800
    :cond_7
    const/high16 v6, 0x1000

    :try_start_a
    invoke-static {v3, v6}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0

    move-result-object v4

    :try_start_b
    monitor-exit v5

    goto :goto_0

    .line 805
    .end local v2           #phoneWallPaper:Ljava/io/File;
    .end local v3           #wtWallpaper:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 807
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v6, "WallpaperService"

    const-string v7, "Error getting wallpaper"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 809
    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_0
.end method

.method public getWallpaperInfo()Landroid/app/WallpaperInfo;
    .locals 2

    .prologue
    .line 814
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 815
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    monitor-exit v1

    .line 818
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 819
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getWidthHint()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 663
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 664
    :try_start_0
    iget v0, p0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    monitor-exit v1

    return v0

    .line 665
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method restoreNamedResourceLocked()Z
    .locals 21

    .prologue
    .line 1366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_8

    const-string v17, "res:"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x4

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 1367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 1369
    .local v14, resName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 1370
    .local v10, pkg:Ljava/lang/String;
    const/16 v17, 0x3a

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 1371
    .local v5, colon:I
    if-lez v5, :cond_0

    .line 1372
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1375
    :cond_0
    const/4 v9, 0x0

    .line 1376
    .local v9, ident:Ljava/lang/String;
    const/16 v17, 0x2f

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15

    .line 1377
    .local v15, slash:I
    if-lez v15, :cond_1

    .line 1378
    add-int/lit8 v17, v15, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 1381
    :cond_1
    const/16 v16, 0x0

    .line 1382
    .local v16, type:Ljava/lang/String;
    if-lez v5, :cond_2

    if-lez v15, :cond_2

    sub-int v17, v15, v5

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_2

    .line 1383
    add-int/lit8 v17, v5, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 1386
    :cond_2
    if-eqz v10, :cond_8

    if-eqz v9, :cond_8

    if-eqz v16, :cond_8

    .line 1387
    const/4 v13, -0x1

    .line 1388
    .local v13, resId:I
    const/4 v12, 0x0

    .line 1389
    .local v12, res:Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 1391
    .local v7, fos:Ljava/io/FileOutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    .line 1392
    .local v4, c:Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 1393
    .local v11, r:Landroid/content/res/Resources;
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v14, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 1394
    if-nez v13, :cond_5

    .line 1395
    const-string v17, "WallpaperService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "couldn\'t resolve identifier pkg="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " type="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ident="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 1397
    const/16 v17, 0x0

    .line 1430
    if-eqz v12, :cond_3

    .line 1432
    :try_start_1
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    .line 1435
    :cond_3
    :goto_0
    if-eqz v7, :cond_4

    .line 1436
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1438
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1444
    .end local v4           #c:Landroid/content/Context;
    .end local v5           #colon:I
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .end local v9           #ident:Ljava/lang/String;
    .end local v10           #pkg:Ljava/lang/String;
    .end local v11           #r:Landroid/content/res/Resources;
    .end local v12           #res:Ljava/io/InputStream;
    .end local v13           #resId:I
    .end local v14           #resName:Ljava/lang/String;
    .end local v15           #slash:I
    .end local v16           #type:Ljava/lang/String;
    :cond_4
    :goto_1
    return v17

    .line 1400
    .restart local v4       #c:Landroid/content/Context;
    .restart local v5       #colon:I
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    .restart local v9       #ident:Ljava/lang/String;
    .restart local v10       #pkg:Ljava/lang/String;
    .restart local v11       #r:Landroid/content/res/Resources;
    .restart local v12       #res:Ljava/io/InputStream;
    .restart local v13       #resId:I
    .restart local v14       #resName:Ljava/lang/String;
    .restart local v15       #slash:I
    .restart local v16       #type:Ljava/lang/String;
    :cond_5
    :try_start_3
    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v12

    .line 1402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mWebtopManager:Lcom/motorola/webtop/WebtopManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/motorola/webtop/WebtopManager;->isWebtopMode()Z

    move-result v17

    if-nez v17, :cond_9

    .line 1403
    sget-object v17, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FILE:Ljava/io/File;

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 1404
    sget-object v17, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FILE:Ljava/io/File;

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    .line 1406
    :cond_6
    new-instance v8, Ljava/io/FileOutputStream;

    sget-object v17, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FILE:Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .end local v7           #fos:Ljava/io/FileOutputStream;
    .local v8, fos:Ljava/io/FileOutputStream;
    move-object v7, v8

    .line 1414
    .end local v8           #fos:Ljava/io/FileOutputStream;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    :goto_2
    const v17, 0x8000

    move/from16 v0, v17

    new-array v3, v0, [B

    .line 1416
    .local v3, buffer:[B
    :goto_3
    invoke-virtual {v12, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, amt:I
    if-lez v2, :cond_b

    .line 1417
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v3, v0, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_3

    .line 1423
    .end local v2           #amt:I
    .end local v3           #buffer:[B
    .end local v4           #c:Landroid/content/Context;
    .end local v11           #r:Landroid/content/res/Resources;
    :catch_0
    move-exception v6

    .line 1424
    .local v6, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_4
    const-string v17, "WallpaperService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Package name "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " not found"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1430
    if-eqz v12, :cond_7

    .line 1432
    :try_start_5
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 1435
    :cond_7
    :goto_4
    if-eqz v7, :cond_8

    .line 1436
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1438
    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1444
    .end local v5           #colon:I
    .end local v6           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .end local v9           #ident:Ljava/lang/String;
    .end local v10           #pkg:Ljava/lang/String;
    .end local v12           #res:Ljava/io/InputStream;
    .end local v13           #resId:I
    .end local v14           #resName:Ljava/lang/String;
    .end local v15           #slash:I
    .end local v16           #type:Ljava/lang/String;
    :cond_8
    :goto_5
    const/16 v17, 0x0

    goto :goto_1

    .line 1408
    .restart local v4       #c:Landroid/content/Context;
    .restart local v5       #colon:I
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    .restart local v9       #ident:Ljava/lang/String;
    .restart local v10       #pkg:Ljava/lang/String;
    .restart local v11       #r:Landroid/content/res/Resources;
    .restart local v12       #res:Ljava/io/InputStream;
    .restart local v13       #resId:I
    .restart local v14       #resName:Ljava/lang/String;
    .restart local v15       #slash:I
    .restart local v16       #type:Ljava/lang/String;
    :cond_9
    :try_start_7
    sget-object v17, Lcom/android/server/WallpaperManagerService;->WALLPAPER_WT_FILE:Ljava/io/File;

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_a

    .line 1409
    sget-object v17, Lcom/android/server/WallpaperManagerService;->WALLPAPER_WT_FILE:Ljava/io/File;

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    .line 1411
    :cond_a
    new-instance v8, Ljava/io/FileOutputStream;

    sget-object v17, Lcom/android/server/WallpaperManagerService;->WALLPAPER_WT_FILE:Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .end local v7           #fos:Ljava/io/FileOutputStream;
    .restart local v8       #fos:Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8           #fos:Ljava/io/FileOutputStream;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 1421
    .restart local v2       #amt:I
    .restart local v3       #buffer:[B
    :cond_b
    const-string v17, "WallpaperService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Restored wallpaper: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 1422
    const/16 v17, 0x1

    .line 1430
    if-eqz v12, :cond_c

    .line 1432
    :try_start_8
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b

    .line 1435
    :cond_c
    :goto_6
    if-eqz v7, :cond_4

    .line 1436
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1438
    :try_start_9
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_1

    .line 1439
    .end local v2           #amt:I
    .end local v3           #buffer:[B
    :catch_1
    move-exception v18

    goto/16 :goto_1

    .line 1425
    .end local v4           #c:Landroid/content/Context;
    .end local v11           #r:Landroid/content/res/Resources;
    :catch_2
    move-exception v6

    .line 1426
    .local v6, e:Landroid/content/res/Resources$NotFoundException;
    :try_start_a
    const-string v17, "WallpaperService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Resource not found: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1430
    if-eqz v12, :cond_d

    .line 1432
    :try_start_b
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 1435
    :cond_d
    :goto_7
    if-eqz v7, :cond_8

    .line 1436
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1438
    :try_start_c
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_5

    .line 1439
    .end local v6           #e:Landroid/content/res/Resources$NotFoundException;
    :catch_3
    move-exception v17

    goto :goto_5

    .line 1427
    :catch_4
    move-exception v6

    .line 1428
    .local v6, e:Ljava/io/IOException;
    :try_start_d
    const-string v17, "WallpaperService"

    const-string v18, "IOException while restoring wallpaper "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 1430
    if-eqz v12, :cond_e

    .line 1432
    :try_start_e
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    .line 1435
    :cond_e
    :goto_8
    if-eqz v7, :cond_8

    .line 1436
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1438
    :try_start_f
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3

    goto/16 :goto_5

    .line 1430
    .end local v6           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v17

    if-eqz v12, :cond_f

    .line 1432
    :try_start_10
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5

    .line 1435
    :cond_f
    :goto_9
    if-eqz v7, :cond_10

    .line 1436
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1438
    :try_start_11
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_6

    .line 1430
    :cond_10
    :goto_a
    throw v17

    .line 1433
    :catch_5
    move-exception v18

    goto :goto_9

    .line 1439
    :catch_6
    move-exception v18

    goto :goto_a

    .line 1433
    .local v6, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_7
    move-exception v17

    goto/16 :goto_4

    .local v6, e:Landroid/content/res/Resources$NotFoundException;
    :catch_8
    move-exception v17

    goto :goto_7

    .local v6, e:Ljava/io/IOException;
    :catch_9
    move-exception v17

    goto :goto_8

    .end local v6           #e:Ljava/io/IOException;
    .restart local v4       #c:Landroid/content/Context;
    .restart local v11       #r:Landroid/content/res/Resources;
    :catch_a
    move-exception v18

    goto/16 :goto_0

    .restart local v2       #amt:I
    .restart local v3       #buffer:[B
    :catch_b
    move-exception v18

    goto :goto_6
.end method

.method public setDimensionHints(II)V
    .locals 2
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 634
    const-string v0, "android.permission.SET_WALLPAPER_HINTS"

    invoke-direct {p0, v0}, Lcom/android/server/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 636
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 637
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "width and height must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 640
    :cond_1
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 641
    :try_start_0
    iget v0, p0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    if-eq p2, v0, :cond_3

    .line 642
    :cond_2
    iput p1, p0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    .line 643
    iput p2, p0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    .line 644
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->saveSettingsLocked()V

    .line 645
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_3

    .line 646
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 648
    :try_start_1
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v0, p1, p2}, Landroid/service/wallpaper/IWallpaperEngine;->setDesiredSize(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 652
    :goto_0
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->notifyCallbacksLocked()V

    .line 654
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->notifyChangeLiveWallpaper()V

    .line 659
    :cond_3
    monitor-exit v1

    .line 660
    return-void

    .line 659
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 650
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .parameter "name"

    .prologue
    .line 825
    const-string v3, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v3}, Lcom/android/server/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 826
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 827
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 829
    .local v0, ident:J
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/WallpaperManagerService;->updateWallpaperBitmapLocked(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 830
    .local v2, pfd:Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_0

    .line 831
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/WallpaperManagerService;->mImageWallpaperPending:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 835
    :cond_0
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 833
    monitor-exit v4

    return-object v2

    .line 835
    .end local v2           #pfd:Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 837
    .end local v0           #ident:J
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method

.method public setWallpaperComponent(Landroid/content/ComponentName;)V
    .locals 5
    .parameter "name"

    .prologue
    .line 871
    const-string v2, "android.permission.SET_WALLPAPER_COMPONENT"

    invoke-direct {p0, v2}, Lcom/android/server/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 872
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 873
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 875
    .local v0, ident:J
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lcom/android/server/WallpaperManagerService;->mImageWallpaperPending:Z

    .line 876
    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, p1, v2, v4}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 878
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 880
    monitor-exit v3

    .line 881
    return-void

    .line 878
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 880
    .end local v0           #ident:J
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method settingsRestored()V
    .locals 5

    .prologue
    .line 1290
    const/4 v0, 0x0

    .line 1291
    .local v0, success:Z
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1292
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->loadSettingsLocked()V

    .line 1294
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWebtopManager:Lcom/motorola/webtop/WebtopManager;

    invoke-virtual {v1}, Lcom/motorola/webtop/WebtopManager;->isWebtopMode()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1295
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWebtopNextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWebtopNextWallpaperComponent:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mImageWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1297
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWebtopNextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1301
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZ)Z

    .line 1303
    :cond_0
    const/4 v0, 0x1

    .line 1346
    :cond_1
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1348
    if-nez v0, :cond_2

    .line 1349
    const-string v1, "WallpaperService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to restore wallpaper: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    .line 1352
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWebtopManager:Lcom/motorola/webtop/WebtopManager;

    invoke-virtual {v1}, Lcom/motorola/webtop/WebtopManager;->isWebtopMode()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1353
    sget-object v1, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FILE:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1360
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1361
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->saveSettingsLocked()V

    .line 1362
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1363
    return-void

    .line 1307
    :cond_3
    :try_start_2
    const-string v1, ""

    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1309
    const/4 v0, 0x1

    .line 1315
    :goto_2
    if-eqz v0, :cond_1

    .line 1316
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWebtopNextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZ)Z

    goto :goto_0

    .line 1346
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1312
    :cond_4
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/WallpaperManagerService;->restoreNamedResourceLocked()Z

    move-result v0

    goto :goto_2

    .line 1321
    :cond_5
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mNextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mNextWallpaperComponent:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mImageWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1323
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mNextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZ)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1327
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZ)Z

    .line 1329
    :cond_6
    const/4 v0, 0x1

    goto :goto_0

    .line 1333
    :cond_7
    const-string v1, ""

    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1335
    const/4 v0, 0x1

    .line 1341
    :goto_3
    if-eqz v0, :cond_1

    .line 1342
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mNextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZ)Z

    goto/16 :goto_0

    .line 1338
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/WallpaperManagerService;->restoreNamedResourceLocked()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    goto :goto_3

    .line 1355
    :cond_9
    sget-object v1, Lcom/android/server/WallpaperManagerService;->WALLPAPER_WT_FILE:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 1362
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public systemReady()V
    .locals 6

    .prologue
    .line 577
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 578
    const/4 v0, 0x0

    .line 580
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mNextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 581
    :try_start_1
    monitor-exit v3

    .line 589
    :goto_0
    return-void

    .line 583
    :catch_0
    move-exception v1

    .line 584
    .local v1, e1:Ljava/lang/RuntimeException;
    move-object v0, v1

    .line 586
    .end local v1           #e1:Ljava/lang/RuntimeException;
    :cond_0
    const-string v2, "WallpaperService"

    const-string v4, "Failure starting previous wallpaper"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 587
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/WallpaperManagerService;->clearWallpaperLocked(Z)V

    .line 588
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public updateLiveWallpaper()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 724
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWebtopManager:Lcom/motorola/webtop/WebtopManager;

    invoke-virtual {v0}, Lcom/motorola/webtop/WebtopManager;->isWebtopMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 725
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWebtopWallpaperComponent:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWebtopNextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWebtopNextWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZ)Z

    .line 749
    :goto_0
    return-void

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWebtopWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 730
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWebtopWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZ)Z

    goto :goto_0

    .line 732
    :cond_1
    sget-boolean v0, Lcom/android/server/WallpaperManagerService;->mStartCopy:Z

    if-nez v0, :cond_2

    .line 733
    invoke-virtual {p0, v3, v2, v1}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZ)Z

    goto :goto_0

    .line 735
    :cond_2
    invoke-virtual {p0, v3, v1, v1}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZ)Z

    goto :goto_0

    .line 742
    :cond_3
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_4

    .line 743
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZ)Z

    goto :goto_0

    .line 745
    :cond_4
    invoke-virtual {p0, v3, v1, v1}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZ)Z

    goto :goto_0
.end method

.method updateWallpaperBitmapLocked(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .parameter "name"

    .prologue
    .line 841
    if-nez p1, :cond_0

    const-string p1, ""

    .line 843
    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/server/WallpaperManagerService;->WALLPAPER_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 844
    sget-object v2, Lcom/android/server/WallpaperManagerService;->WALLPAPER_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 845
    sget-object v2, Lcom/android/server/WallpaperManagerService;->WALLPAPER_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1f9

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-static {v2, v3, v4, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 851
    :cond_1
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mWebtopManager:Lcom/motorola/webtop/WebtopManager;

    invoke-virtual {v2}, Lcom/motorola/webtop/WebtopManager;->isWebtopMode()Z

    move-result v2

    if-nez v2, :cond_2

    .line 852
    sget-object v2, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FILE:Ljava/io/File;

    const/high16 v3, 0x3800

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 854
    .local v1, fd:Landroid/os/ParcelFileDescriptor;
    iput-object p1, p0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    .line 866
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    :goto_0
    return-object v1

    .line 857
    :cond_2
    sget-object v2, Lcom/android/server/WallpaperManagerService;->WALLPAPER_WT_FILE:Ljava/io/File;

    const/high16 v3, 0x3800

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 859
    .restart local v1       #fd:Landroid/os/ParcelFileDescriptor;
    iput-object p1, p0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 863
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 864
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v2, "WallpaperService"

    const-string v3, "Error setting wallpaper"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 866
    const/4 v1, 0x0

    goto :goto_0
.end method
