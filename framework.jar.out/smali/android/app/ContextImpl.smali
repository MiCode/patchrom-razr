.class Landroid/app/ContextImpl;
.super Landroid/content/Context;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ContextImpl$ApplicationContentResolver;,
        Landroid/app/ContextImpl$StaticServiceFetcher;,
        Landroid/app/ContextImpl$ServiceFetcher;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EMPTY_FILE_LIST:[Ljava/lang/String; = null

.field private static final SYSTEM_SERVICE_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/ContextImpl$ServiceFetcher;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ApplicationContext"

.field private static WALLPAPER_FETCHER:Landroid/app/ContextImpl$ServiceFetcher;

.field private static sEncryptionAdminManager:Lcom/motorola/android/internal/encryption/EncryptionAdminManager;

.field private static sNextPerContextServiceCacheIndex:I

.field private static final sSharedPrefs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/SharedPreferencesImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static sVzwConnectivityManager:Lcom/verizon/net/VzwConnectivityManager;

.field private static sVzwLocationManager:Lcom/vzw/location/VzwLocationManager;


# instance fields
.field private mActivityToken:Landroid/os/IBinder;

.field private mBasePackageName:Ljava/lang/String;

.field private mCacheDir:Ljava/io/File;

.field private mContentResolver:Landroid/app/ContextImpl$ApplicationContentResolver;

.field private mDatabasesDir:Ljava/io/File;

.field private mEncryptionManager:Lcom/motorola/android/internal/encryption/EncryptionManager;

.field private mExternalCacheDir:Ljava/io/File;

.field private mExternalFilesDir:Ljava/io/File;

.field private mFilesDir:Ljava/io/File;

.field mMainThread:Landroid/app/ActivityThread;

.field private mObbDir:Ljava/io/File;

.field private mOuterContext:Landroid/content/Context;

.field mPackageInfo:Landroid/app/LoadedApk;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPreferencesDir:Ljava/io/File;

.field private mReceiverRestrictedContext:Landroid/content/Context;

.field private mResources:Landroid/content/res/Resources;

.field private mRestricted:Z

.field final mServiceCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mSync:Ljava/lang/Object;

.field private mTheme:Landroid/content/res/Resources$Theme;

.field private mThemeResource:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/app/ContextImpl;->sSharedPrefs:Ljava/util/HashMap;

    .line 222
    const/4 v0, 0x0

    sput-object v0, Landroid/app/ContextImpl;->sEncryptionAdminManager:Lcom/motorola/android/internal/encryption/EncryptionAdminManager;

    .line 233
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Landroid/app/ContextImpl;->EMPTY_FILE_LIST:[Ljava/lang/String;

    .line 298
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/app/ContextImpl;->SYSTEM_SERVICE_MAP:Ljava/util/HashMap;

    .line 301
    sput v2, Landroid/app/ContextImpl;->sNextPerContextServiceCacheIndex:I

    .line 312
    new-instance v0, Landroid/app/ContextImpl$1;

    invoke-direct {v0}, Landroid/app/ContextImpl$1;-><init>()V

    sput-object v0, Landroid/app/ContextImpl;->WALLPAPER_FETCHER:Landroid/app/ContextImpl$ServiceFetcher;

    .line 319
    const-string v0, "accessibility"

    new-instance v1, Landroid/app/ContextImpl$2;

    invoke-direct {v1}, Landroid/app/ContextImpl$2;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 324
    const-string v0, "account"

    new-instance v1, Landroid/app/ContextImpl$3;

    invoke-direct {v1}, Landroid/app/ContextImpl$3;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 331
    const-string v0, "activity"

    new-instance v1, Landroid/app/ContextImpl$4;

    invoke-direct {v1}, Landroid/app/ContextImpl$4;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 336
    const-string v0, "alarm"

    new-instance v1, Landroid/app/ContextImpl$5;

    invoke-direct {v1}, Landroid/app/ContextImpl$5;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 343
    const-string v0, "audio"

    new-instance v1, Landroid/app/ContextImpl$6;

    invoke-direct {v1}, Landroid/app/ContextImpl$6;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 348
    const-string v0, "clipboard"

    new-instance v1, Landroid/app/ContextImpl$7;

    invoke-direct {v1}, Landroid/app/ContextImpl$7;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 354
    const-string v0, "connectivity"

    new-instance v1, Landroid/app/ContextImpl$8;

    invoke-direct {v1}, Landroid/app/ContextImpl$8;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 360
    const-string v0, "country_detector"

    new-instance v1, Landroid/app/ContextImpl$9;

    invoke-direct {v1}, Landroid/app/ContextImpl$9;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 366
    const-string v0, "device_policy"

    new-instance v1, Landroid/app/ContextImpl$10;

    invoke-direct {v1}, Landroid/app/ContextImpl$10;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 372
    const-string v0, "mot_device_policy"

    new-instance v1, Landroid/app/ContextImpl$11;

    invoke-direct {v1}, Landroid/app/ContextImpl$11;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 378
    const-string v0, "download"

    new-instance v1, Landroid/app/ContextImpl$12;

    invoke-direct {v1}, Landroid/app/ContextImpl$12;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 383
    const-string v0, "nfc"

    new-instance v1, Landroid/app/ContextImpl$13;

    invoke-direct {v1}, Landroid/app/ContextImpl$13;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 388
    const-string v0, "dropbox"

    new-instance v1, Landroid/app/ContextImpl$14;

    invoke-direct {v1}, Landroid/app/ContextImpl$14;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 393
    const-string v0, "input_method"

    new-instance v1, Landroid/app/ContextImpl$15;

    invoke-direct {v1}, Landroid/app/ContextImpl$15;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 398
    const-string/jumbo v0, "textservices"

    new-instance v1, Landroid/app/ContextImpl$16;

    invoke-direct {v1}, Landroid/app/ContextImpl$16;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 403
    const-string v0, "keyguard"

    new-instance v1, Landroid/app/ContextImpl$17;

    invoke-direct {v1}, Landroid/app/ContextImpl$17;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 412
    const-string v0, "layout_inflater"

    new-instance v1, Landroid/app/ContextImpl$18;

    invoke-direct {v1}, Landroid/app/ContextImpl$18;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 417
    const-string v0, "location"

    new-instance v1, Landroid/app/ContextImpl$19;

    invoke-direct {v1}, Landroid/app/ContextImpl$19;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 424
    const-string v0, "VZW_LOCATION_SERVICE"

    new-instance v1, Landroid/app/ContextImpl$20;

    invoke-direct {v1}, Landroid/app/ContextImpl$20;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 436
    const-string/jumbo v0, "vzwconnectivity"

    new-instance v1, Landroid/app/ContextImpl$21;

    invoke-direct {v1}, Landroid/app/ContextImpl$21;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 448
    const-string v0, "netpolicy"

    new-instance v1, Landroid/app/ContextImpl$22;

    invoke-direct {v1}, Landroid/app/ContextImpl$22;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 456
    const-string v0, "notification"

    new-instance v1, Landroid/app/ContextImpl$23;

    invoke-direct {v1}, Landroid/app/ContextImpl$23;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 472
    const-string v0, "power"

    new-instance v1, Landroid/app/ContextImpl$24;

    invoke-direct {v1}, Landroid/app/ContextImpl$24;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 479
    const-string v0, "search"

    new-instance v1, Landroid/app/ContextImpl$25;

    invoke-direct {v1}, Landroid/app/ContextImpl$25;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 485
    const-string/jumbo v0, "sensor"

    new-instance v1, Landroid/app/ContextImpl$26;

    invoke-direct {v1}, Landroid/app/ContextImpl$26;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 490
    const-string/jumbo v0, "statusbar"

    new-instance v1, Landroid/app/ContextImpl$27;

    invoke-direct {v1}, Landroid/app/ContextImpl$27;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 495
    const-string/jumbo v0, "storage"

    new-instance v1, Landroid/app/ContextImpl$28;

    invoke-direct {v1}, Landroid/app/ContextImpl$28;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 505
    const-string v0, "phone"

    new-instance v1, Landroid/app/ContextImpl$29;

    invoke-direct {v1}, Landroid/app/ContextImpl$29;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 510
    const-string/jumbo v0, "throttle"

    new-instance v1, Landroid/app/ContextImpl$30;

    invoke-direct {v1}, Landroid/app/ContextImpl$30;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 516
    const-string/jumbo v0, "uimode"

    new-instance v1, Landroid/app/ContextImpl$31;

    invoke-direct {v1}, Landroid/app/ContextImpl$31;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 521
    const-string/jumbo v0, "usb"

    new-instance v1, Landroid/app/ContextImpl$32;

    invoke-direct {v1}, Landroid/app/ContextImpl$32;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 527
    const-string/jumbo v0, "vibrator"

    new-instance v1, Landroid/app/ContextImpl$33;

    invoke-direct {v1}, Landroid/app/ContextImpl$33;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 532
    const-string/jumbo v0, "wallpaper"

    sget-object v1, Landroid/app/ContextImpl;->WALLPAPER_FETCHER:Landroid/app/ContextImpl$ServiceFetcher;

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 535
    const-string v0, "mot_encryption_service"

    new-instance v1, Landroid/app/ContextImpl$34;

    invoke-direct {v1}, Landroid/app/ContextImpl$34;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 542
    const-string v0, "mot_encryption_admin"

    new-instance v1, Landroid/app/ContextImpl$35;

    invoke-direct {v1}, Landroid/app/ContextImpl$35;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 552
    const-string v0, "ethernet"

    new-instance v1, Landroid/app/ContextImpl$36;

    invoke-direct {v1}, Landroid/app/ContextImpl$36;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 561
    const-string/jumbo v0, "wifi"

    new-instance v1, Landroid/app/ContextImpl$37;

    invoke-direct {v1}, Landroid/app/ContextImpl$37;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 568
    const-string/jumbo v0, "wifip2p"

    new-instance v1, Landroid/app/ContextImpl$38;

    invoke-direct {v1}, Landroid/app/ContextImpl$38;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 575
    const-string/jumbo v0, "window"

    new-instance v1, Landroid/app/ContextImpl$39;

    invoke-direct {v1}, Landroid/app/ContextImpl$39;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 581
    const-string v0, "ro.mot.deep.sleep.supported"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    const-string v0, "deepsleep_manager"

    new-instance v1, Landroid/app/ContextImpl$40;

    invoke-direct {v1}, Landroid/app/ContextImpl$40;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 589
    :cond_0
    const-string v0, "phone"

    new-instance v1, Landroid/app/ContextImpl$41;

    invoke-direct {v1}, Landroid/app/ContextImpl$41;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 604
    const-string/jumbo v0, "sensorhub"

    new-instance v1, Landroid/app/ContextImpl$42;

    invoke-direct {v1}, Landroid/app/ContextImpl$42;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 618
    sget-object v0, Lcom/motorola/android/telephony/SimAuthenticationManagerFactory;->SERVICE_NAME:Ljava/lang/String;

    new-instance v1, Landroid/app/ContextImpl$43;

    invoke-direct {v1}, Landroid/app/ContextImpl$43;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 624
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1677
    invoke-direct {p0}, Landroid/content/Context;-><init>()V

    .line 212
    iput-object v1, p0, Landroid/app/ContextImpl;->mActivityToken:Landroid/os/IBinder;

    .line 214
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ContextImpl;->mThemeResource:I

    .line 215
    iput-object v1, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    .line 217
    iput-object v1, p0, Landroid/app/ContextImpl;->mReceiverRestrictedContext:Landroid/content/Context;

    .line 221
    iput-object v1, p0, Landroid/app/ContextImpl;->mEncryptionManager:Lcom/motorola/android/internal/encryption/EncryptionManager;

    .line 224
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    .line 638
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ContextImpl;->mServiceCache:Ljava/util/ArrayList;

    .line 1678
    iput-object p0, p0, Landroid/app/ContextImpl;->mOuterContext:Landroid/content/Context;

    .line 1679
    return-void
.end method

.method public constructor <init>(Landroid/app/ContextImpl;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 1687
    invoke-direct {p0}, Landroid/content/Context;-><init>()V

    .line 212
    iput-object v1, p0, Landroid/app/ContextImpl;->mActivityToken:Landroid/os/IBinder;

    .line 214
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ContextImpl;->mThemeResource:I

    .line 215
    iput-object v1, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    .line 217
    iput-object v1, p0, Landroid/app/ContextImpl;->mReceiverRestrictedContext:Landroid/content/Context;

    .line 221
    iput-object v1, p0, Landroid/app/ContextImpl;->mEncryptionManager:Lcom/motorola/android/internal/encryption/EncryptionManager;

    .line 224
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    .line 638
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ContextImpl;->mServiceCache:Ljava/util/ArrayList;

    .line 1688
    iget-object v0, p1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iput-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 1689
    iget-object v0, p1, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    .line 1690
    iget-object v0, p1, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    iput-object v0, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    .line 1691
    iget-object v0, p1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iput-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1692
    iget-object v0, p1, Landroid/app/ContextImpl;->mContentResolver:Landroid/app/ContextImpl$ApplicationContentResolver;

    iput-object v0, p0, Landroid/app/ContextImpl;->mContentResolver:Landroid/app/ContextImpl$ApplicationContentResolver;

    .line 1693
    iput-object p0, p0, Landroid/app/ContextImpl;->mOuterContext:Landroid/content/Context;

    .line 1694
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 190
    sget v0, Landroid/app/ContextImpl;->sNextPerContextServiceCacheIndex:I

    return v0
.end method

.method static createDropBoxManager()Landroid/os/DropBoxManager;
    .locals 3

    .prologue
    .line 1397
    const-string v2, "dropbox"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1398
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/os/IDropBoxManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IDropBoxManagerService;

    move-result-object v1

    .line 1399
    .local v1, service:Lcom/android/internal/os/IDropBoxManagerService;
    if-nez v1, :cond_0

    .line 1404
    const/4 v2, 0x0

    .line 1406
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Landroid/os/DropBoxManager;

    invoke-direct {v2, v1}, Landroid/os/DropBoxManager;-><init>(Lcom/android/internal/os/IDropBoxManagerService;)V

    goto :goto_0
.end method

.method static createSystemContext(Landroid/app/ActivityThread;)Landroid/app/ContextImpl;
    .locals 2
    .parameter "mainThread"

    .prologue
    .line 1672
    new-instance v0, Landroid/app/ContextImpl;

    invoke-direct {v0}, Landroid/app/ContextImpl;-><init>()V

    .line 1673
    .local v0, context:Landroid/app/ContextImpl;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/ContextImpl;->init(Landroid/content/res/Resources;Landroid/app/ActivityThread;)V

    .line 1674
    return-object v0
.end method

.method private enforce(Ljava/lang/String;IZILjava/lang/String;)V
    .locals 4
    .parameter "permission"
    .parameter "resultOfCheck"
    .parameter "selfToo"
    .parameter "uid"
    .parameter "message"

    .prologue
    .line 1450
    if-eqz p2, :cond_2

    .line 1451
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p5, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p3, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Neither user "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " nor current process has "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " does not have "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1459
    :cond_2
    return-void
.end method

.method private enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V
    .locals 4
    .parameter "modeFlags"
    .parameter "resultOfCheck"
    .parameter "selfToo"
    .parameter "uid"
    .parameter "uri"
    .parameter "message"

    .prologue
    .line 1576
    if-eqz p2, :cond_2

    .line 1577
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p6, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p3, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Neither user "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " nor current process has "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->uriModeFlagToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " permission on "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " does not have "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1587
    :cond_2
    return-void
.end method

.method private getDataDirFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 1653
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_0

    .line 1654
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getDataDirFile()Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 1656
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getDatabasesDir()Ljava/io/File;
    .locals 4

    .prologue
    .line 1011
    iget-object v1, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1012
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mDatabasesDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 1013
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Landroid/app/ContextImpl;->getDataDirFile()Ljava/io/File;

    move-result-object v2

    const-string v3, "databases"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/app/ContextImpl;->mDatabasesDir:Ljava/io/File;

    .line 1015
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mDatabasesDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "databases"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1016
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/system"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/app/ContextImpl;->mDatabasesDir:Ljava/io/File;

    .line 1018
    :cond_1
    iget-object v0, p0, Landroid/app/ContextImpl;->mDatabasesDir:Ljava/io/File;

    monitor-exit v1

    return-object v0

    .line 1019
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static getImpl(Landroid/content/Context;)Landroid/app/ContextImpl;
    .locals 2
    .parameter "context"

    .prologue
    .line 629
    :goto_0
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .local v0, nextContext:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 630
    move-object p0, v0

    goto :goto_0

    .line 632
    .end local v0           #nextContext:Landroid/content/Context;
    :cond_0
    check-cast p0, Landroid/app/ContextImpl;

    .end local p0
    return-object p0
.end method

.method private getPreferencesDir()Ljava/io/File;
    .locals 4

    .prologue
    .line 778
    iget-object v1, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 779
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mPreferencesDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 780
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Landroid/app/ContextImpl;->getDataDirFile()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "shared_prefs"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/app/ContextImpl;->mPreferencesDir:Ljava/io/File;

    .line 782
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mPreferencesDir:Ljava/io/File;

    monitor-exit v1

    return-object v0

    .line 783
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getWallpaperManager()Landroid/app/WallpaperManager;
    .locals 1

    .prologue
    .line 1393
    sget-object v0, Landroid/app/ContextImpl;->WALLPAPER_FETCHER:Landroid/app/ContextImpl$ServiceFetcher;

    invoke-virtual {v0, p0}, Landroid/app/ContextImpl$ServiceFetcher;->getService(Landroid/app/ContextImpl;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    return-object v0
.end method

.method private makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "base"
    .parameter "name"

    .prologue
    .line 1806
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 1807
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    .line 1809
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contains a path separator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private registerReceiverInternal(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;)Landroid/content/Intent;
    .locals 8
    .parameter "receiver"
    .parameter "filter"
    .parameter "broadcastPermission"
    .parameter "scheduler"
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 1250
    const/4 v3, 0x0

    .line 1251
    .local v3, rd:Landroid/content/IIntentReceiver;
    if-eqz p1, :cond_1

    .line 1252
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_2

    if-eqz p5, :cond_2

    .line 1253
    if-nez p4, :cond_0

    .line 1254
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object p4

    .line 1256
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v4

    move-object v1, p1

    move-object v2, p5

    move-object v3, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/LoadedApk;->getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;

    .end local v3           #rd:Landroid/content/IIntentReceiver;
    move-result-object v3

    .line 1268
    .restart local v3       #rd:Landroid/content/IIntentReceiver;
    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Landroid/app/ContextImpl;->checkPriority(Landroid/content/IntentFilter;)V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->registerReceiver(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1272
    :goto_1
    return-object v0

    .line 1260
    :cond_2
    if-nez p4, :cond_3

    .line 1261
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object p4

    .line 1263
    :cond_3
    new-instance v0, Landroid/app/LoadedApk$ReceiverDispatcher;

    move-object v1, p1

    move-object v2, p5

    move-object v3, p4

    move-object v4, v7

    invoke-direct/range {v0 .. v5}, Landroid/app/LoadedApk$ReceiverDispatcher;-><init>(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V

    .end local v3           #rd:Landroid/content/IIntentReceiver;
    invoke-virtual {v0}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v3

    .restart local v3       #rd:Landroid/content/IIntentReceiver;
    goto :goto_0

    .line 1271
    :catch_0
    move-exception v6

    .local v6, e:Landroid/os/RemoteException;
    move-object v0, v7

    .line 1272
    goto :goto_1
.end method

.method private static registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V
    .locals 2
    .parameter "serviceName"
    .parameter "fetcher"

    .prologue
    .line 303
    instance-of v0, p1, Landroid/app/ContextImpl$StaticServiceFetcher;

    if-nez v0, :cond_0

    .line 304
    sget v0, Landroid/app/ContextImpl;->sNextPerContextServiceCacheIndex:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Landroid/app/ContextImpl;->sNextPerContextServiceCacheIndex:I

    iput v0, p1, Landroid/app/ContextImpl$ServiceFetcher;->mContextCacheIndex:I

    .line 306
    :cond_0
    sget-object v0, Landroid/app/ContextImpl;->SYSTEM_SERVICE_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    return-void
.end method

.method static setFilePermissionsFromMode(Ljava/lang/String;II)V
    .locals 3
    .parameter "name"
    .parameter "mode"
    .parameter "extraPermissions"

    .prologue
    const/4 v2, -0x1

    .line 1766
    or-int/lit16 v0, p2, 0x1b0

    .line 1769
    .local v0, perms:I
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 1770
    or-int/lit8 v0, v0, 0x4

    .line 1772
    :cond_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    .line 1773
    or-int/lit8 v0, v0, 0x2

    .line 1779
    :cond_1
    invoke-static {p0, v0, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1780
    return-void
.end method

.method private uriModeFlagToString(I)Ljava/lang/String;
    .locals 3
    .parameter "uriModeFlags"

    .prologue
    .line 1560
    packed-switch p1, :pswitch_data_0

    .line 1569
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown permission mode flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1563
    :pswitch_0
    const-string v0, "read and write"

    .line 1567
    :goto_0
    return-object v0

    .line 1565
    :pswitch_1
    const-string v0, "read"

    goto :goto_0

    .line 1567
    :pswitch_2
    const-string/jumbo v0, "write"

    goto :goto_0

    .line 1560
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private validateFilePath(Ljava/lang/String;Z)Ljava/io/File;
    .locals 7
    .parameter "name"
    .parameter "createDirectory"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 1786
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sget-char v4, Ljava/io/File;->separatorChar:C

    if-ne v3, v4, :cond_1

    .line 1787
    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1788
    .local v1, dirPath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1789
    .local v0, dir:Ljava/io/File;
    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1790
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1796
    .end local v1           #dirPath:Ljava/lang/String;
    .local v2, f:Ljava/io/File;
    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1797
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1f9

    invoke-static {v3, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1802
    :cond_0
    return-object v2

    .line 1792
    .end local v0           #dir:Ljava/io/File;
    .end local v2           #f:Ljava/io/File;
    :cond_1
    invoke-direct {p0}, Landroid/app/ContextImpl;->getDatabasesDir()Ljava/io/File;

    move-result-object v0

    .line 1793
    .restart local v0       #dir:Ljava/io/File;
    invoke-direct {p0, v0, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .restart local v2       #f:Ljava/io/File;
    goto :goto_0
.end method


# virtual methods
.method public bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 11
    .parameter "service"
    .parameter "conn"
    .parameter "flags"

    .prologue
    const/4 v10, 0x0

    .line 1329
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_1

    .line 1330
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2, p3}, Landroid/app/LoadedApk;->getServiceDispatcher(Landroid/content/ServiceConnection;Landroid/content/Context;Landroid/os/Handler;I)Landroid/app/IServiceConnection;

    move-result-object v5

    .line 1336
    .local v5, sd:Landroid/app/IServiceConnection;
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getActivityToken()Landroid/os/IBinder;

    move-result-object v9

    .line 1337
    .local v9, token:Landroid/os/IBinder;
    if-nez v9, :cond_0

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 1340
    or-int/lit8 p3, p3, 0x20

    .line 1342
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAllowFds(Z)V

    .line 1343
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    move-object v3, p1

    move v6, p3

    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;I)I

    move-result v8

    .line 1347
    .local v8, res:I
    if-gez v8, :cond_2

    .line 1348
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allowed to bind to service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1352
    .end local v8           #res:I
    .end local v9           #token:Landroid/os/IBinder;
    :catch_0
    move-exception v7

    .local v7, e:Landroid/os/RemoteException;
    move v0, v10

    .line 1353
    .end local v7           #e:Landroid/os/RemoteException;
    :goto_0
    return v0

    .line 1333
    .end local v5           #sd:Landroid/app/IServiceConnection;
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1351
    .restart local v5       #sd:Landroid/app/IServiceConnection;
    .restart local v8       #res:I
    .restart local v9       #token:Landroid/os/IBinder;
    :cond_2
    if-eqz v8, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v10

    goto :goto_0
.end method

.method public checkCallingOrSelfPermission(Ljava/lang/String;)I
    .locals 2
    .parameter "permission"

    .prologue
    .line 1439
    if-nez p1, :cond_0

    .line 1440
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "permission is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1443
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I
    .locals 2
    .parameter "uri"
    .parameter "modeFlags"

    .prologue
    .line 1529
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/app/ContextImpl;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v0

    return v0
.end method

.method public checkCallingPermission(Ljava/lang/String;)I
    .locals 3
    .parameter "permission"

    .prologue
    .line 1425
    if-nez p1, :cond_0

    .line 1426
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "permission is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1429
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1430
    .local v0, pid:I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1431
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    .line 1434
    :goto_0
    return v1

    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public checkCallingUriPermission(Landroid/net/Uri;I)I
    .locals 2
    .parameter "uri"
    .parameter "modeFlags"

    .prologue
    .line 1519
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1520
    .local v0, pid:I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1521
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/app/ContextImpl;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v1

    .line 1524
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public checkPermission(Ljava/lang/String;II)I
    .locals 3
    .parameter "permission"
    .parameter "pid"
    .parameter "uid"

    .prologue
    .line 1411
    if-nez p1, :cond_0

    .line 1412
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "permission is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1416
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/app/IActivityManager;->checkPermission(Ljava/lang/String;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1419
    :goto_0
    return v1

    .line 1418
    :catch_0
    move-exception v0

    .line 1419
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public checkUriPermission(Landroid/net/Uri;III)I
    .locals 2
    .parameter "uri"
    .parameter "pid"
    .parameter "uid"
    .parameter "modeFlags"

    .prologue
    .line 1510
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/app/IActivityManager;->checkUriPermission(Landroid/net/Uri;III)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1513
    :goto_0
    return v1

    .line 1512
    :catch_0
    move-exception v0

    .line 1513
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public checkUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)I
    .locals 2
    .parameter "uri"
    .parameter "readPermission"
    .parameter "writePermission"
    .parameter "pid"
    .parameter "uid"
    .parameter "modeFlags"

    .prologue
    const/4 v0, 0x0

    .line 1541
    and-int/lit8 v1, p6, 0x1

    if-eqz v1, :cond_1

    .line 1542
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2, p4, p5}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_1

    .line 1555
    :cond_0
    :goto_0
    return v0

    .line 1548
    :cond_1
    and-int/lit8 v1, p6, 0x2

    if-eqz v1, :cond_2

    .line 1549
    if-eqz p3, :cond_0

    invoke-virtual {p0, p3, p4, p5}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1555
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p0, p1, p4, p5, p6}, Landroid/app/ContextImpl;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public clearWallpaper()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1054
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->clear()V

    .line 1055
    return-void
.end method

.method public createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    .locals 6
    .parameter "packageName"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1627
    const-string/jumbo v2, "system"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1628
    :cond_0
    new-instance v0, Landroid/app/ContextImpl;

    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;)V

    .line 1638
    :cond_1
    return-object v0

    .line 1631
    :cond_2
    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v3, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v3

    invoke-virtual {v2, p1, v3, p2}, Landroid/app/ActivityThread;->getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;

    move-result-object v1

    .line 1633
    .local v1, pi:Landroid/app/LoadedApk;
    if-eqz v1, :cond_3

    .line 1634
    new-instance v0, Landroid/app/ContextImpl;

    invoke-direct {v0}, Landroid/app/ContextImpl;-><init>()V

    .line 1635
    .local v0, c:Landroid/app/ContextImpl;
    and-int/lit8 v2, p2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, v0, Landroid/app/ContextImpl;->mRestricted:Z

    .line 1636
    const/4 v2, 0x0

    iget-object v3, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v4, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    iget-object v5, p0, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/app/ContextImpl;->init(Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/app/ActivityThread;Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 1637
    iget-object v2, v0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    if-nez v2, :cond_1

    .line 1643
    .end local v0           #c:Landroid/app/ContextImpl;
    :cond_3
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Application package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1635
    .restart local v0       #c:Landroid/app/ContextImpl;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public databaseList()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 1005
    invoke-direct {p0}, Landroid/app/ContextImpl;->getDatabasesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 1006
    .local v0, list:[Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0           #list:[Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #list:[Ljava/lang/String;
    :cond_0
    sget-object v0, Landroid/app/ContextImpl;->EMPTY_FILE_LIST:[Ljava/lang/String;

    goto :goto_0
.end method

.method public deleteDatabase(Ljava/lang/String;)Z
    .locals 3
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 991
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1, v2}, Landroid/app/ContextImpl;->validateFilePath(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    .line 992
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 995
    .end local v0           #f:Ljava/io/File;
    :goto_0
    return v1

    .line 993
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public deleteFile(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    .line 818
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 819
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    return v1
.end method

.method public enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "permission"
    .parameter "message"

    .prologue
    .line 1480
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/app/ContextImpl;->enforce(Ljava/lang/String;IZILjava/lang/String;)V

    .line 1485
    return-void
.end method

.method public enforceCallingOrSelfUriPermission(Landroid/net/Uri;ILjava/lang/String;)V
    .locals 7
    .parameter "uri"
    .parameter "modeFlags"
    .parameter "message"

    .prologue
    .line 1605
    invoke-virtual {p0, p1, p2}, Landroid/app/ContextImpl;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move v1, p2

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/app/ContextImpl;->enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V

    .line 1609
    return-void
.end method

.method public enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "permission"
    .parameter "message"

    .prologue
    .line 1471
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/app/ContextImpl;->enforce(Ljava/lang/String;IZILjava/lang/String;)V

    .line 1476
    return-void
.end method

.method public enforceCallingUriPermission(Landroid/net/Uri;ILjava/lang/String;)V
    .locals 7
    .parameter "uri"
    .parameter "modeFlags"
    .parameter "message"

    .prologue
    .line 1598
    invoke-virtual {p0, p1, p2}, Landroid/app/ContextImpl;->checkCallingUriPermission(Landroid/net/Uri;I)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move v1, p2

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/app/ContextImpl;->enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V

    .line 1601
    return-void
.end method

.method public enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
    .locals 6
    .parameter "permission"
    .parameter "pid"
    .parameter "uid"
    .parameter "message"

    .prologue
    .line 1463
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/ContextImpl;->enforce(Ljava/lang/String;IZILjava/lang/String;)V

    .line 1468
    return-void
.end method

.method public enforceUriPermission(Landroid/net/Uri;IIILjava/lang/String;)V
    .locals 7
    .parameter "uri"
    .parameter "pid"
    .parameter "uid"
    .parameter "modeFlags"
    .parameter "message"

    .prologue
    .line 1591
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/ContextImpl;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v2

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p4

    move v4, p3

    move-object v5, p1

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/app/ContextImpl;->enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V

    .line 1594
    return-void
.end method

.method public enforceUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 7
    .parameter "uri"
    .parameter "readPermission"
    .parameter "writePermission"
    .parameter "pid"
    .parameter "uid"
    .parameter "modeFlags"
    .parameter "message"

    .prologue
    .line 1614
    invoke-virtual/range {p0 .. p6}, Landroid/app/ContextImpl;->checkUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)I

    move-result v2

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p6

    move v4, p5

    move-object v5, p1

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Landroid/app/ContextImpl;->enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V

    .line 1622
    return-void
.end method

.method public fileList()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 934
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 935
    .local v0, list:[Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0           #list:[Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #list:[Ljava/lang/String;
    :cond_0
    sget-object v0, Landroid/app/ContextImpl;->EMPTY_FILE_LIST:[Ljava/lang/String;

    goto :goto_0
.end method

.method final getActivityToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 1761
    iget-object v0, p0, Landroid/app/ContextImpl;->mActivityToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getApplication()Landroid/app/Application;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    goto :goto_0
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 2

    .prologue
    .line 727
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0

    .line 730
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getCacheDir()Ljava/io/File;
    .locals 5

    .prologue
    .line 887
    iget-object v1, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 888
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mCacheDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 889
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Landroid/app/ContextImpl;->getDataDirFile()Ljava/io/File;

    move-result-object v2

    const-string v3, "cache"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/app/ContextImpl;->mCacheDir:Ljava/io/File;

    .line 891
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 892
    iget-object v0, p0, Landroid/app/ContextImpl;->mCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    .line 893
    const-string v0, "ApplicationContext"

    const-string v2, "Unable to create cache directory"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    const/4 v0, 0x0

    monitor-exit v1

    .line 902
    :goto_0
    return-object v0

    .line 896
    :cond_1
    iget-object v0, p0, Landroid/app/ContextImpl;->mCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1f9

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {v0, v2, v3, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 901
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 902
    iget-object v0, p0, Landroid/app/ContextImpl;->mCacheDir:Ljava/io/File;

    goto :goto_0

    .line 901
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Landroid/app/ContextImpl;->mContentResolver:Landroid/app/ContextImpl$ApplicationContentResolver;

    return-object v0
.end method

.method public getDatabasePath(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "name"

    .prologue
    .line 1000
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/ContextImpl;->validateFilePath(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getDir(Ljava/lang/String;I)Ljava/io/File;
    .locals 3
    .parameter "name"
    .parameter "mode"

    .prologue
    .line 1661
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1662
    invoke-direct {p0}, Landroid/app/ContextImpl;->getDataDirFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1663
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1664
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 1665
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f9

    invoke-static {v1, p2, v2}, Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V

    .line 1668
    :cond_0
    return-object v0
.end method

.method public getExternalCacheDir()Ljava/io/File;
    .locals 4

    .prologue
    .line 907
    iget-object v1, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 908
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mExternalCacheDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 909
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Environment;->getExternalStorageAppCacheDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ContextImpl;->mExternalCacheDir:Ljava/io/File;

    .line 912
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mExternalCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 914
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageAndroidDataDir()Ljava/io/File;

    move-result-object v2

    const-string v3, ".nomedia"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 918
    :goto_0
    :try_start_2
    iget-object v0, p0, Landroid/app/ContextImpl;->mExternalCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    .line 919
    const-string v0, "ApplicationContext"

    const-string v2, "Unable to create external cache directory"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    const/4 v0, 0x0

    monitor-exit v1

    .line 923
    :goto_1
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/app/ContextImpl;->mExternalCacheDir:Ljava/io/File;

    monitor-exit v1

    goto :goto_1

    .line 924
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 916
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    .line 844
    iget-object v2, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v2

    .line 845
    :try_start_0
    iget-object v3, p0, Landroid/app/ContextImpl;->mExternalFilesDir:Ljava/io/File;

    if-nez v3, :cond_0

    .line 846
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Environment;->getExternalStorageAppFilesDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ContextImpl;->mExternalFilesDir:Ljava/io/File;

    .line 849
    :cond_0
    iget-object v3, p0, Landroid/app/ContextImpl;->mExternalFilesDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 851
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageAndroidDataDir()Ljava/io/File;

    move-result-object v4

    const-string v5, ".nomedia"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 855
    :goto_0
    :try_start_2
    iget-object v3, p0, Landroid/app/ContextImpl;->mExternalFilesDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_1

    .line 856
    const-string v3, "ApplicationContext"

    const-string v4, "Unable to create external files directory"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    monitor-exit v2

    move-object v0, v1

    .line 870
    :goto_1
    return-object v0

    .line 860
    :cond_1
    if-nez p1, :cond_2

    .line 861
    iget-object v0, p0, Landroid/app/ContextImpl;->mExternalFilesDir:Ljava/io/File;

    monitor-exit v2

    goto :goto_1

    .line 871
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 863
    :cond_2
    :try_start_3
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Landroid/app/ContextImpl;->mExternalFilesDir:Ljava/io/File;

    invoke-direct {v0, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 864
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 865
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_3

    .line 866
    const-string v3, "ApplicationContext"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create external media directory "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    monitor-exit v2

    move-object v0, v1

    goto :goto_1

    .line 870
    :cond_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 853
    .end local v0           #dir:Ljava/io/File;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "name"

    .prologue
    .line 929
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getFilesDir()Ljava/io/File;
    .locals 5

    .prologue
    .line 824
    iget-object v1, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 825
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mFilesDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 826
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Landroid/app/ContextImpl;->getDataDirFile()Ljava/io/File;

    move-result-object v2

    const-string v3, "files"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/app/ContextImpl;->mFilesDir:Ljava/io/File;

    .line 828
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mFilesDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 829
    iget-object v0, p0, Landroid/app/ContextImpl;->mFilesDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    .line 830
    const-string v0, "ApplicationContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create files directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ContextImpl;->mFilesDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    const/4 v0, 0x0

    monitor-exit v1

    .line 838
    :goto_0
    return-object v0

    .line 833
    :cond_1
    iget-object v0, p0, Landroid/app/ContextImpl;->mFilesDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1f9

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {v0, v2, v3, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 838
    :cond_2
    iget-object v0, p0, Landroid/app/ContextImpl;->mFilesDir:Ljava/io/File;

    monitor-exit v1

    goto :goto_0

    .line 839
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMainLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getObbDir()Ljava/io/File;
    .locals 2

    .prologue
    .line 876
    iget-object v1, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 877
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mObbDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 878
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Environment;->getExternalStorageAppObbDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ContextImpl;->mObbDir:Ljava/io/File;

    .line 881
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mObbDir:Ljava/io/File;

    monitor-exit v1

    return-object v0

    .line 882
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final getOuterContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1757
    iget-object v0, p0, Landroid/app/ContextImpl;->mOuterContext:Landroid/content/Context;

    return-object v0
.end method

.method public getPackageCodePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 743
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getAppDir()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 746
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 2

    .prologue
    .line 652
    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v1, :cond_0

    .line 653
    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 662
    :goto_0
    return-object v1

    .line 656
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 657
    .local v0, pm:Landroid/content/pm/IPackageManager;
    if-eqz v0, :cond_1

    .line 659
    new-instance v1, Landroid/app/ApplicationPackageManager;

    invoke-direct {v1, p0, v0}, Landroid/app/ApplicationPackageManager;-><init>(Landroid/app/ContextImpl;Landroid/content/pm/IPackageManager;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    goto :goto_0

    .line 662
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 719
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 722
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPackageResourcePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 735
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 738
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final getReceiverRestrictedContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 1742
    iget-object v0, p0, Landroid/app/ContextImpl;->mReceiverRestrictedContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1743
    iget-object v0, p0, Landroid/app/ContextImpl;->mReceiverRestrictedContext:Landroid/content/Context;

    .line 1745
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/app/ReceiverRestrictedContext;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ReceiverRestrictedContext;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/ContextImpl;->mReceiverRestrictedContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 5
    .parameter "name"
    .parameter "mode"

    .prologue
    .line 756
    sget-object v4, Landroid/app/ContextImpl;->sSharedPrefs:Ljava/util/HashMap;

    monitor-enter v4

    .line 757
    :try_start_0
    sget-object v3, Landroid/app/ContextImpl;->sSharedPrefs:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SharedPreferencesImpl;

    .line 758
    .local v1, sp:Landroid/app/SharedPreferencesImpl;
    if-nez v1, :cond_0

    .line 759
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 761
    .local v0, prefsFile:Ljava/io/File;
    new-instance v1, Landroid/app/SharedPreferencesImpl;

    .end local v1           #sp:Landroid/app/SharedPreferencesImpl;
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, p2, v3}, Landroid/app/SharedPreferencesImpl;-><init>(Ljava/io/File;ILjava/lang/String;)V

    .line 763
    .restart local v1       #sp:Landroid/app/SharedPreferencesImpl;
    sget-object v3, Landroid/app/ContextImpl;->sSharedPrefs:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    monitor-exit v4

    move-object v2, v1

    .line 774
    .end local v0           #prefsFile:Ljava/io/File;
    .end local v1           #sp:Landroid/app/SharedPreferencesImpl;
    .local v2, sp:Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 766
    .end local v2           #sp:Ljava/lang/Object;
    .restart local v1       #sp:Landroid/app/SharedPreferencesImpl;
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 767
    and-int/lit8 v3, p2, 0x4

    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0xb

    if-ge v3, v4, :cond_2

    .line 772
    :cond_1
    invoke-virtual {v1}, Landroid/app/SharedPreferencesImpl;->startReloadIfChangedUnexpectedly()V

    :cond_2
    move-object v2, v1

    .line 774
    .restart local v2       #sp:Ljava/lang/Object;
    goto :goto_0

    .line 766
    .end local v1           #sp:Landroid/app/SharedPreferencesImpl;
    .end local v2           #sp:Ljava/lang/Object;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "name"

    .prologue
    .line 750
    invoke-direct {p0}, Landroid/app/ContextImpl;->getPreferencesDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "name"

    .prologue
    .line 1388
    sget-object v1, Landroid/app/ContextImpl;->SYSTEM_SERVICE_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ContextImpl$ServiceFetcher;

    .line 1389
    .local v0, fetcher:Landroid/app/ContextImpl$ServiceFetcher;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p0}, Landroid/app/ContextImpl$ServiceFetcher;->getService(Landroid/app/ContextImpl;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 3

    .prologue
    .line 702
    iget-object v0, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    if-nez v0, :cond_0

    .line 703
    iget v0, p0, Landroid/app/ContextImpl;->mThemeResource:I

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v0, v1}, Landroid/content/res/Resources;->selectDefaultTheme(II)I

    move-result v0

    iput v0, p0, Landroid/app/ContextImpl;->mThemeResource:I

    .line 705
    iget-object v0, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    .line 706
    iget-object v0, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    iget v1, p0, Landroid/app/ContextImpl;->mThemeResource:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 708
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    return-object v0
.end method

.method public getThemeResId()I
    .locals 1

    .prologue
    .line 697
    iget v0, p0, Landroid/app/ContextImpl;->mThemeResource:I

    return v0
.end method

.method public getThemeResourceId()I
    .locals 1

    .prologue
    .line 690
    iget v0, p0, Landroid/app/ContextImpl;->mThemeResource:I

    return v0
.end method

.method public getWallpaper()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1024
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaperDesiredMinimumHeight()I
    .locals 1

    .prologue
    .line 1039
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDesiredMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getWallpaperDesiredMinimumWidth()I
    .locals 1

    .prologue
    .line 1034
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    move-result v0

    return v0
.end method

.method public grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 2
    .parameter "toPackage"
    .parameter "uri"
    .parameter "modeFlags"

    .prologue
    .line 1490
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/app/IActivityManager;->grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1495
    :goto_0
    return-void

    .line 1493
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method final init(Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/app/ActivityThread;)V
    .locals 6
    .parameter "packageInfo"
    .parameter "activityToken"
    .parameter "mainThread"

    .prologue
    const/4 v4, 0x0

    .line 1698
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/app/ContextImpl;->init(Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/app/ActivityThread;Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 1699
    return-void
.end method

.method final init(Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/app/ActivityThread;Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 3
    .parameter "packageInfo"
    .parameter "activityToken"
    .parameter "mainThread"
    .parameter "container"
    .parameter "basePackageName"

    .prologue
    .line 1704
    iput-object p1, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 1705
    if-eqz p5, :cond_1

    .end local p5
    :goto_0
    iput-object p5, p0, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    .line 1706
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0, p3}, Landroid/app/LoadedApk;->getResources(Landroid/app/ActivityThread;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    .line 1708
    iget-object v0, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iget-object v1, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 1715
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v0, v0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v1}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    invoke-virtual {p3, v0, v1, v2}, Landroid/app/ActivityThread;->getTopLevelResources(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    .line 1718
    :cond_0
    iput-object p3, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1719
    new-instance v0, Landroid/app/ContextImpl$ApplicationContentResolver;

    invoke-direct {v0, p0, p3}, Landroid/app/ContextImpl$ApplicationContentResolver;-><init>(Landroid/content/Context;Landroid/app/ActivityThread;)V

    iput-object v0, p0, Landroid/app/ContextImpl;->mContentResolver:Landroid/app/ContextImpl$ApplicationContentResolver;

    .line 1721
    invoke-virtual {p0, p2}, Landroid/app/ContextImpl;->setActivityToken(Landroid/os/IBinder;)V

    .line 1722
    return-void

    .line 1705
    .restart local p5
    :cond_1
    iget-object p5, p1, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    goto :goto_0
.end method

.method final init(Landroid/content/res/Resources;Landroid/app/ActivityThread;)V
    .locals 1
    .parameter "resources"
    .parameter "mainThread"

    .prologue
    const/4 v0, 0x0

    .line 1725
    iput-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 1726
    iput-object v0, p0, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    .line 1727
    iput-object p1, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    .line 1728
    iput-object p2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1729
    new-instance v0, Landroid/app/ContextImpl$ApplicationContentResolver;

    invoke-direct {v0, p0, p2}, Landroid/app/ContextImpl$ApplicationContentResolver;-><init>(Landroid/content/Context;Landroid/app/ActivityThread;)V

    iput-object v0, p0, Landroid/app/ContextImpl;->mContentResolver:Landroid/app/ContextImpl$ApplicationContentResolver;

    .line 1730
    return-void
.end method

.method public isRestricted()Z
    .locals 1

    .prologue
    .line 1649
    iget-boolean v0, p0, Landroid/app/ContextImpl;->mRestricted:Z

    return v0
.end method

.method public openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 789
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 790
    .local v0, f:Ljava/io/File;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v1
.end method

.method public openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    .locals 8
    .parameter "name"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 796
    const v5, 0x8000

    and-int/2addr v5, p2

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    .line 797
    .local v0, append:Z
    :goto_0
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {p0, v5, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 799
    .local v1, f:Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 800
    .local v2, fos:Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, p2, v6}, Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 813
    :goto_1
    return-object v2

    .end local v0           #append:Z
    .end local v1           #f:Ljava/io/File;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    :cond_0
    move v0, v4

    .line 796
    goto :goto_0

    .line 802
    .restart local v0       #append:Z
    .restart local v1       #f:Ljava/io/File;
    :catch_0
    move-exception v5

    .line 805
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 806
    .local v3, parent:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 807
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1f9

    invoke-static {v5, v6, v7, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 811
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 812
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p2, v4}, Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V

    goto :goto_1
.end method

.method public openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .parameter "name"
    .parameter "mode"
    .parameter "factory"

    .prologue
    .line 941
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/ContextImpl;->openOrCreateDatabaseEnc(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 6
    .parameter "name"
    .parameter "mode"
    .parameter "factory"
    .parameter "errorHandler"

    .prologue
    .line 966
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/ContextImpl;->openOrCreateDatabaseEnc(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public openOrCreateDatabaseEnc(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 4
    .parameter "name"
    .parameter "mode"
    .parameter "factory"
    .parameter "errorHandler"
    .parameter "key"

    .prologue
    .line 980
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Landroid/app/ContextImpl;->validateFilePath(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    .line 981
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p3, p4, p5}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabaseEnc(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 983
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p2, v3}, Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V

    .line 984
    return-object v0
.end method

.method public openOrCreateDatabaseEnc(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 4
    .parameter "name"
    .parameter "mode"
    .parameter "factory"
    .parameter "key"

    .prologue
    .line 955
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Landroid/app/ContextImpl;->validateFilePath(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    .line 956
    .local v1, f:Ljava/io/File;
    invoke-static {v1, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabaseEnc(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 957
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p2, v3}, Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V

    .line 958
    return-object v0
.end method

.method public peekWallpaper()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1029
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->peekDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method final performFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "who"
    .parameter "what"

    .prologue
    .line 1738
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/LoadedApk;->removeContextRegistrations(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1739
    return-void
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 1
    .parameter "receiver"
    .parameter "filter"

    .prologue
    const/4 v0, 0x0

    .line 1237
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/app/ContextImpl;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .locals 6
    .parameter "receiver"
    .parameter "filter"
    .parameter "broadcastPermission"
    .parameter "scheduler"

    .prologue
    .line 1243
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/ContextImpl;->registerReceiverInternal(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public removeStickyBroadcast(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 1222
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    .line 1223
    .local v1, resolvedType:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1224
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1225
    .end local p1
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-object p1, v0

    .line 1228
    .end local v0           #intent:Landroid/content/Intent;
    .restart local p1
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAllowFds(Z)V

    .line 1229
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Landroid/app/IActivityManager;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1233
    :goto_0
    return-void

    .line 1231
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public revokeUriPermission(Landroid/net/Uri;I)V
    .locals 2
    .parameter "uri"
    .parameter "modeFlags"

    .prologue
    .line 1500
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/app/IActivityManager;->revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1505
    :goto_0
    return-void

    .line 1503
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method final scheduleFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "who"
    .parameter "what"

    .prologue
    .line 1733
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, p0, p1, p2}, Landroid/app/ActivityThread;->scheduleContextCleanup(Landroid/app/ContextImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 1734
    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .locals 11
    .parameter "intent"

    .prologue
    .line 1107
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 1109
    .local v3, resolvedType:Ljava/lang/String;
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAllowFds(Z)V

    .line 1110
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p1

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1115
    :goto_0
    return-void

    .line 1113
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 11
    .parameter "intent"
    .parameter "receiverPermission"

    .prologue
    .line 1119
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 1121
    .local v3, resolvedType:Ljava/lang/String;
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAllowFds(Z)V

    .line 1122
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p1

    move-object v8, p2

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1127
    :goto_0
    return-void

    .line 1125
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 11
    .parameter "intent"
    .parameter "receiverPermission"

    .prologue
    .line 1132
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 1134
    .local v3, resolvedType:Ljava/lang/String;
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAllowFds(Z)V

    .line 1135
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v2, p1

    move-object v8, p2

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1140
    :goto_0
    return-void

    .line 1138
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 11
    .parameter "intent"
    .parameter "receiverPermission"
    .parameter "resultReceiver"
    .parameter "scheduler"
    .parameter "initialCode"
    .parameter "initialData"
    .parameter "initialExtras"

    .prologue
    .line 1147
    const/4 v4, 0x0

    .line 1148
    .local v4, rd:Landroid/content/IIntentReceiver;
    if-eqz p3, :cond_1

    .line 1149
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_2

    .line 1150
    if-nez p4, :cond_0

    .line 1151
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object p4

    .line 1153
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v4

    .end local v4           #rd:Landroid/content/IIntentReceiver;
    const/4 v5, 0x0

    move-object v1, p3

    move-object v3, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/LoadedApk;->getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;

    move-result-object v4

    .line 1164
    .restart local v4       #rd:Landroid/content/IIntentReceiver;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 1166
    .local v3, resolvedType:Ljava/lang/String;
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAllowFds(Z)V

    .line 1167
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v2, p1

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object v8, p2

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1173
    :goto_1
    return-void

    .line 1157
    .end local v3           #resolvedType:Ljava/lang/String;
    :cond_2
    if-nez p4, :cond_3

    .line 1158
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object p4

    .line 1160
    :cond_3
    new-instance v0, Landroid/app/LoadedApk$ReceiverDispatcher;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/LoadedApk$ReceiverDispatcher;-><init>(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V

    .end local v4           #rd:Landroid/content/IIntentReceiver;
    invoke-virtual {v0}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v4

    .restart local v4       #rd:Landroid/content/IIntentReceiver;
    goto :goto_0

    .line 1171
    .restart local v3       #resolvedType:Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public sendStickyBroadcast(Landroid/content/Intent;)V
    .locals 11
    .parameter "intent"

    .prologue
    .line 1177
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 1179
    .local v3, resolvedType:Ljava/lang/String;
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAllowFds(Z)V

    .line 1180
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v2, p1

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1185
    :goto_0
    return-void

    .line 1183
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendStickyOrderedBroadcast(Landroid/content/Intent;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 11
    .parameter "intent"
    .parameter "resultReceiver"
    .parameter "scheduler"
    .parameter "initialCode"
    .parameter "initialData"
    .parameter "initialExtras"

    .prologue
    .line 1192
    const/4 v4, 0x0

    .line 1193
    .local v4, rd:Landroid/content/IIntentReceiver;
    if-eqz p2, :cond_1

    .line 1194
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_2

    .line 1195
    if-nez p3, :cond_0

    .line 1196
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object p3

    .line 1198
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v4

    .end local v4           #rd:Landroid/content/IIntentReceiver;
    const/4 v5, 0x0

    move-object v1, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/LoadedApk;->getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;

    move-result-object v4

    .line 1209
    .restart local v4       #rd:Landroid/content/IIntentReceiver;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 1211
    .local v3, resolvedType:Ljava/lang/String;
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAllowFds(Z)V

    .line 1212
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v2, p1

    move v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1218
    :goto_1
    return-void

    .line 1202
    .end local v3           #resolvedType:Ljava/lang/String;
    :cond_2
    if-nez p3, :cond_3

    .line 1203
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object p3

    .line 1205
    :cond_3
    new-instance v0, Landroid/app/LoadedApk$ReceiverDispatcher;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/app/LoadedApk$ReceiverDispatcher;-><init>(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V

    .end local v4           #rd:Landroid/content/IIntentReceiver;
    invoke-virtual {v0}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v4

    .restart local v4       #rd:Landroid/content/IIntentReceiver;
    goto :goto_0

    .line 1216
    .restart local v3       #resolvedType:Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method final setActivityToken(Landroid/os/IBinder;)V
    .locals 0
    .parameter "token"

    .prologue
    .line 1749
    iput-object p1, p0, Landroid/app/ContextImpl;->mActivityToken:Landroid/os/IBinder;

    .line 1750
    return-void
.end method

.method final setOuterContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 1753
    iput-object p1, p0, Landroid/app/ContextImpl;->mOuterContext:Landroid/content/Context;

    .line 1754
    return-void
.end method

.method public setTheme(I)V
    .locals 0
    .parameter "resid"

    .prologue
    .line 683
    iput p1, p0, Landroid/app/ContextImpl;->mThemeResource:I

    .line 684
    return-void
.end method

.method public setWallpaper(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1044
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1045
    return-void
.end method

.method public setWallpaper(Ljava/io/InputStream;)V
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1049
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V

    .line 1050
    return-void
.end method

.method public startActivities([Landroid/content/Intent;)V
    .locals 6
    .parameter "intents"

    .prologue
    const/4 v3, 0x0

    .line 1072
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x1000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 1073
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Calling startActivities() from outside of an Activity  context requires the FLAG_ACTIVITY_NEW_TASK flag on first Intent. Is this really what you want?"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1078
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    move-object v4, v3

    check-cast v4, Landroid/app/Activity;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/app/Instrumentation;->execStartActivities(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;)V

    .line 1081
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 1059
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x1000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 1060
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Calling startActivity() from outside of an Activity  context requires the FLAG_ACTIVITY_NEW_TASK flag. Is this really what you want?"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1065
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    move-object v4, v3

    check-cast v4, Landroid/app/Activity;

    const/4 v6, -0x1

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;I)Landroid/app/Instrumentation$ActivityResult;

    .line 1068
    return-void
.end method

.method public startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 7
    .parameter "className"
    .parameter "profileFile"
    .parameter "arguments"

    .prologue
    const/4 v6, 0x0

    .line 1375
    if-eqz p3, :cond_0

    .line 1376
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->setAllowFds(Z)Z

    .line 1378
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1383
    :goto_0
    return v0

    .line 1380
    :catch_0
    move-exception v0

    move v0, v6

    .line 1383
    goto :goto_0
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    .locals 11
    .parameter "intent"
    .parameter "fillInIntent"
    .parameter "flagsMask"
    .parameter "flagsValues"
    .parameter "extraFlags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 1088
    const/4 v4, 0x0

    .line 1089
    .local v4, resolvedType:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 1090
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAllowFds(Z)V

    .line 1091
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 1093
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move v8, p3

    move v9, p4

    invoke-interface/range {v0 .. v9}, Landroid/app/IActivityManager;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IntentSender;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;III)I

    move-result v10

    .line 1097
    .local v10, result:I
    const/4 v0, -0x6

    if-ne v10, v0, :cond_1

    .line 1098
    new-instance v0, Landroid/content/IntentSender$SendIntentException;

    invoke-direct {v0}, Landroid/content/IntentSender$SendIntentException;-><init>()V

    throw v0

    .line 1101
    .end local v10           #result:I
    :catch_0
    move-exception v0

    .line 1103
    :goto_0
    return-void

    .line 1100
    .restart local v10       #result:I
    :cond_1
    const/4 v0, 0x0

    invoke-static {v10, v0}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 5
    .parameter "service"

    .prologue
    .line 1293
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAllowFds(Z)V

    .line 1294
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, p1, v4}, Landroid/app/IActivityManager;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1297
    .local v0, cn:Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1298
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not allowed to start service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " without permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1303
    .end local v0           #cn:Landroid/content/ComponentName;
    :catch_0
    move-exception v1

    .line 1304
    .local v1, e:Landroid/os/RemoteException;
    const/4 v0, 0x0

    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    return-object v0
.end method

.method public stopService(Landroid/content/Intent;)Z
    .locals 6
    .parameter "service"

    .prologue
    const/4 v2, 0x0

    .line 1311
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setAllowFds(Z)V

    .line 1312
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v4}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, p1, v5}, Landroid/app/IActivityManager;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;)I

    move-result v1

    .line 1315
    .local v1, res:I
    if-gez v1, :cond_1

    .line 1316
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not allowed to stop service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1320
    .end local v1           #res:I
    :catch_0
    move-exception v0

    .line 1321
    :cond_0
    :goto_0
    return v2

    .line 1319
    .restart local v1       #res:I
    :cond_1
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public unbindService(Landroid/content/ServiceConnection;)V
    .locals 3
    .parameter "conn"

    .prologue
    .line 1359
    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v1, :cond_0

    .line 1360
    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/app/LoadedApk;->forgetServiceDispatcher(Landroid/content/Context;Landroid/content/ServiceConnection;)Landroid/app/IServiceConnection;

    move-result-object v0

    .line 1363
    .local v0, sd:Landroid/app/IServiceConnection;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->unbindService(Landroid/app/IServiceConnection;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1369
    :goto_0
    return-void

    .line 1367
    .end local v0           #sd:Landroid/app/IServiceConnection;
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Not supported in system context"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1364
    .restart local v0       #sd:Landroid/app/IServiceConnection;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 3
    .parameter "receiver"

    .prologue
    .line 1278
    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v1, :cond_0

    .line 1279
    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/app/LoadedApk;->forgetReceiverDispatcher(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Landroid/content/IIntentReceiver;

    move-result-object v0

    .line 1282
    .local v0, rd:Landroid/content/IIntentReceiver;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->unregisterReceiver(Landroid/content/IIntentReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1288
    :goto_0
    return-void

    .line 1286
    .end local v0           #rd:Landroid/content/IIntentReceiver;
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Not supported in system context"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1283
    .restart local v0       #rd:Landroid/content/IIntentReceiver;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private checkPriority(Landroid/content/IntentFilter;)V
    .locals 3
    .parameter "filter"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v1}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/IntentFilter;->getPriority()I

    move-result v1

    const/16 v2, 0x3e8

    if-lt v1, v2, :cond_1

    const/16 v1, 0x3e7

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return-void

    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    :cond_1
    invoke-virtual {p1}, Landroid/content/IntentFilter;->getPriority()I

    move-result v1

    const/16 v2, -0x3e8

    if-gt v1, v2, :cond_0

    const/16 v1, -0x3e7

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    goto :goto_0
.end method

