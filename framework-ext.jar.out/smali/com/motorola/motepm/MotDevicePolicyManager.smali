.class public Lcom/motorola/motepm/MotDevicePolicyManager;
.super Ljava/lang/Object;
.source "MotDevicePolicyManager.java"


# static fields
.field public static final ACTION_ADD_DEVICE_ADMIN:Ljava/lang/String; = "com.motorola.app.action.ADD_DEVICE_ADMIN"

.field public static final ACTION_ALLOW_INTERNET_SHARING_CHANGED:Ljava/lang/String; = "com.motorola.app.action.INTERNET_SHARING_ALLOWED_CHANGED"

.field public static final ACTION_BLUETOOTH_ALLOWED_CHANGED:Ljava/lang/String; = "com.motorola.app.action.BLUETOOTH_ALLOWED_CHANGED"

.field public static final ACTION_BROWSER_ALLOWED_CHANGED:Ljava/lang/String; = "com.motorola.app.action.BROWSER_ALLOWED_CHANGED"

.field public static final ACTION_CAMERA_ALLOWED_CHANGED:Ljava/lang/String; = "com.motorola.app.action.CAMERA_ALLOWED_CHANGED"

.field public static final ACTION_CONSUMER_EMAIL_ALLOWED_CHANGED:Ljava/lang/String; = "com.motorola.app.action.CONSUMER_EMAIL_ALLOWED_CHANGED"

.field public static final ACTION_DATA_SYNC_METHOD_IN_ROAMING_CHANGED:Ljava/lang/String; = "com.motorola.app.action.DATA_SYNC_ROAMING_METHOD_CHANGED"

.field public static final ACTION_DEVICE_ENCRYPTION_ENABLED_CHANGED:Ljava/lang/String; = "com.motorola.app.action.DEVICE_ENCRYPTION_ENABLED_CHANGED"

.field public static final ACTION_DEVICE_POLICY_MANAGER_STATE_CHANGED:Ljava/lang/String; = "com.motorola.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

.field public static final ACTION_POP3_IMAP4_EMAIL_ALLOWED_CHANGED:Ljava/lang/String; = "com.motorola.app.action.POP3_IMAP4_EMAIL_ALLOWED_CHANGED"

.field public static final ACTION_REQUIRE_DEVICE_ENCRYPTION_CHANGED:Ljava/lang/String; = "com.motorola.app.action.REQUIRE_DEVICE_ENCRYPTION_CHANGED"

.field public static final ACTION_REQUIRE_STORAGE_CARD_ENCRYPTION_CHANGED:Ljava/lang/String; = "com.motorola.app.action.REQUIRE_STORAGE_CARD_ENCRYPTION_CHANGED"

.field public static final ACTION_SD_CARD_ALLOWED_CHANGED:Ljava/lang/String; = "com.motorola.app.action.SD_CARD_ALLOWED_CHANGED"

.field public static final ACTION_WIFI_ALLOWED_CHANGED:Ljava/lang/String; = "com.motorola.app.action.WIFI_ALLOWED_CHANGED"

.field private static DEBUG:Z = false

.field public static final ENCRYPTION_STATUS_ACTIVATING:I = 0x2

.field public static final ENCRYPTION_STATUS_ACTIVE:I = 0x3

.field public static final ENCRYPTION_STATUS_INACTIVE:I = 0x1

.field public static final ENCRYPTION_STATUS_UNSUPPORTED:I = 0x0

.field private static EPM_VERSION:Ljava/lang/String; = null

.field public static final EXTRA_ADD_EXPLANATION:Ljava/lang/String; = "com.motorola.app.extra.ADD_EXPLANATION"

.field public static final EXTRA_DEVICE_ADMIN:Ljava/lang/String; = "com.motorola.app.extra.DEVICE_ADMIN"

.field public static final PASSWORD_EXPIRATION_NONE:I = -0x1

.field public static final PASSWORD_EXPIRATION_WARNING:I = 0x1

.field public static final PASSWORD_EXPIRED:I = 0x0

.field public static final POLICY_ALLOW_BLUETOOTH:I = 0x9

.field public static final POLICY_ALLOW_BROWSER:I = 0x5

.field public static final POLICY_ALLOW_CONSUMER_EMAIL:I = 0xa

.field public static final POLICY_ALLOW_INTERNET_SHARING:I = 0x7

.field public static final POLICY_ALLOW_POP3IMAP4EMAIL:I = 0x8

.field public static final POLICY_ALLOW_SD_CARD:I = 0x3

.field public static final POLICY_ALLOW_SIMPLE_PASSWORD:I = 0x4

.field public static final POLICY_ALLOW_TEXT_MESSAGE:I = 0x6

.field public static final POLICY_ALLOW_WIFI:I = 0x1

.field public static final RETURN_PKGNAME_ERROR:I = -0x2

.field public static final RETURN_PKGNAME_IN_DISABLELIST_INSTALLED:I = 0x1

.field public static final RETURN_PKGNAME_IN_DISABLELIST_UNINSTALLED:I = 0x0

.field public static final RETURN_PKGNAME_NOT_IN_DISABLELIST:I = -0x1

.field public static final RETURN_POLICY_CONFLICT:I = -0x3

.field public static final RETURN_POLICY_GENERAL_FAILURE:I = -0x1

.field public static final RETURN_POLICY_NOT_SUPPORTED:I = -0x2

.field public static final RETURN_POLICY_SUCCESS:I

.field private static TAG:Ljava/lang/String;

.field private static localLOGV:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private final mHandler:Landroid/os/Handler;

.field private final mService:Lcom/motorola/motepm/IMotDevicePolicyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 35
    const-string v1, "MotDevicePolicyManager"

    sput-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    .line 36
    sput-boolean v0, Lcom/motorola/motepm/MotDevicePolicyManager;->DEBUG:Z

    .line 37
    sget-boolean v1, Lcom/motorola/motepm/MotDevicePolicyManager;->DEBUG:Z

    if-nez v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/motorola/motepm/MotDevicePolicyManager;->localLOGV:Z

    .line 39
    const-string v0, "1.0.0"

    sput-object v0, Lcom/motorola/motepm/MotDevicePolicyManager;->EPM_VERSION:Ljava/lang/String;

    return-void

    .line 37
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 94
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mContext:Landroid/content/Context;

    .line 96
    iput-object p2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mHandler:Landroid/os/Handler;

    .line 97
    const-string v0, "mot_device_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/motepm/IMotDevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    .line 99
    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/os/Handler;)Lcom/motorola/motepm/MotDevicePolicyManager;
    .locals 2
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 103
    new-instance v0, Lcom/motorola/motepm/MotDevicePolicyManager;

    invoke-direct {v0, p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 104
    .local v0, me:Lcom/motorola/motepm/MotDevicePolicyManager;
    iget-object v1, v0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .end local v0           #me:Lcom/motorola/motepm/MotDevicePolicyManager;
    :goto_0
    return-object v0

    .restart local v0       #me:Lcom/motorola/motepm/MotDevicePolicyManager;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getVersionNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/motorola/motepm/MotDevicePolicyManager;->EPM_VERSION:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addEmailAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .parameter "emailAddr"
    .parameter "host"
    .parameter "userName"
    .parameter "password"
    .parameter "ssl"

    .prologue
    .line 930
    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 932
    :try_start_0
    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/motorola/motepm/IMotDevicePolicyManager;->addEmailAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 937
    :cond_0
    :goto_0
    return-void

    .line 933
    :catch_0
    move-exception v6

    .line 934
    .local v6, e:Landroid/os/RemoteException;
    sget-object v0, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with device policy service"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public configureVpn(Landroid/os/Bundle;)V
    .locals 3
    .parameter "extraArgs"

    .prologue
    .line 1025
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1027
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->configureVpn(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1032
    :cond_0
    :goto_0
    return-void

    .line 1028
    :catch_0
    move-exception v0

    .line 1029
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public deleteSDcardData(Ljava/lang/String;)V
    .locals 3
    .parameter "strexp"

    .prologue
    .line 972
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 974
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->deleteSDcardData(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 979
    :cond_0
    :goto_0
    return-void

    .line 975
    :catch_0
    move-exception v0

    .line 976
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public deleteVpn(Landroid/os/Bundle;)V
    .locals 3
    .parameter "extraArgs"

    .prologue
    .line 1040
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1042
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->deleteVpn(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1047
    :cond_0
    :goto_0
    return-void

    .line 1043
    :catch_0
    move-exception v0

    .line 1044
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public enforcePasswordSet(Z)V
    .locals 3
    .parameter "force"

    .prologue
    .line 505
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 507
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->enforcePasswordSet(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    :cond_0
    :goto_0
    return-void

    .line 508
    :catch_0
    move-exception v0

    .line 509
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getActiveAdmins()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 333
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->getActiveAdmins()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 338
    :goto_0
    return-object v1

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 338
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActiveSyncID()V
    .locals 3

    .prologue
    .line 943
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 945
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->getActiveSyncID()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 950
    :cond_0
    :goto_0
    return-void

    .line 946
    :catch_0
    move-exception v0

    .line 947
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAdminInfo(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDeviceAdminInfo;
    .locals 7
    .parameter "cn"

    .prologue
    const/4 v4, 0x0

    .line 408
    :try_start_0
    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v5, 0x80

    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 415
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    new-instance v2, Landroid/content/pm/ResolveInfo;

    invoke-direct {v2}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 416
    .local v2, ri:Landroid/content/pm/ResolveInfo;
    iput-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 419
    :try_start_1
    new-instance v3, Lcom/motorola/motepm/MotDeviceAdminInfo;

    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5, v2}, Lcom/motorola/motepm/MotDeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 425
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v2           #ri:Landroid/content/pm/ResolveInfo;
    :goto_0
    return-object v3

    .line 410
    :catch_0
    move-exception v1

    .line 411
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to retrieve device policy "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 412
    goto :goto_0

    .line 420
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #ai:Landroid/content/pm/ActivityInfo;
    .restart local v2       #ri:Landroid/content/pm/ResolveInfo;
    :catch_1
    move-exception v1

    .line 421
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v3, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to parse device policy "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 422
    goto :goto_0

    .line 423
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v1

    .line 424
    .local v1, e:Ljava/io/IOException;
    sget-object v3, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to parse device policy "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 425
    goto :goto_0
.end method

.method public getDeviceEncryptionStatus()I
    .locals 3

    .prologue
    .line 1278
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1280
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->getDeviceEncryptionStatus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1285
    :goto_0
    return v1

    .line 1281
    :catch_0
    move-exception v0

    .line 1282
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1285
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mDpm:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mDpm:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method public getDisabledPackages()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1226
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1228
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->getDisabledPackages()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1233
    :goto_0
    return-object v1

    .line 1229
    :catch_0
    move-exception v0

    .line 1230
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1233
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getManualDataSyncinRoaming(Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "who"

    .prologue
    .line 567
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 569
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->getManualDataSyncinRoaming(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 574
    :goto_0
    return v1

    .line 570
    :catch_0
    move-exception v0

    .line 571
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 574
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPackageDisableInfo(Ljava/lang/String;)I
    .locals 3
    .parameter "packageName"

    .prologue
    .line 1242
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1244
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->getPackageDisableInfo(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1249
    :goto_0
    return v1

    .line 1245
    :catch_0
    move-exception v0

    .line 1246
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1249
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x2

    goto :goto_0
.end method

.method public getPasswordExpirationStatus()I
    .locals 3

    .prologue
    .line 718
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 720
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->getPasswordExpirationStatus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 725
    :goto_0
    return v1

    .line 721
    :catch_0
    move-exception v0

    .line 722
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 725
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getPasswordHistoryLength(Landroid/content/ComponentName;)I
    .locals 3
    .parameter "who"

    .prologue
    .line 616
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 618
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 623
    :goto_0
    return v1

    .line 619
    :catch_0
    move-exception v0

    .line 620
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 623
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPasswordMinimumComplexity(Landroid/content/ComponentName;)I
    .locals 3
    .parameter "admin"

    .prologue
    .line 1155
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1157
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->getPasswordMinimumComplexity(Landroid/content/ComponentName;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1162
    :goto_0
    return v1

    .line 1158
    :catch_0
    move-exception v0

    .line 1159
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1162
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRecoveryPassword(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 3
    .parameter "who"

    .prologue
    .line 763
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 765
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->getRecoveryPassword(Landroid/content/ComponentName;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 770
    :goto_0
    return-object v1

    .line 766
    :catch_0
    move-exception v0

    .line 767
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 770
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    .locals 3
    .parameter "admin"
    .parameter "result"

    .prologue
    .line 436
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 438
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/motorola/motepm/IMotDevicePolicyManager;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getStorageCardEncryptionStatus()I
    .locals 3

    .prologue
    .line 1261
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1263
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->getStorageCardEncryptionStatus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1268
    :goto_0
    return v1

    .line 1264
    :catch_0
    move-exception v0

    .line 1265
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1268
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVpnById(Landroid/os/Bundle;)V
    .locals 3
    .parameter "extraArgs"

    .prologue
    .line 1010
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1012
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->getVpnByID(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1017
    :cond_0
    :goto_0
    return-void

    .line 1013
    :catch_0
    move-exception v0

    .line 1014
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public hasGrantedPolicy(Landroid/content/ComponentName;I)Z
    .locals 3
    .parameter "admin"
    .parameter "usesPolicy"

    .prologue
    .line 389
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 391
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/motorola/motepm/IMotDevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 396
    :goto_0
    return v1

    .line 392
    :catch_0
    move-exception v0

    .line 393
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Mot device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 396
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public installCertificate([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "certData"
    .parameter "certPassword"
    .parameter "certName"
    .parameter "certType"

    .prologue
    .line 990
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 992
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/motorola/motepm/IMotDevicePolicyManager;->installCertificate([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 997
    :cond_0
    :goto_0
    return-void

    .line 993
    :catch_0
    move-exception v0

    .line 994
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isActivePasswordSufficient()Z
    .locals 3

    .prologue
    .line 1207
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1209
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->isActivePasswordSufficient()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1214
    :goto_0
    return v1

    .line 1210
    :catch_0
    move-exception v0

    .line 1211
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1214
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isActivePasswordSufficientForComplexity()Z
    .locals 3

    .prologue
    .line 1188
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1190
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->isActivePasswordSufficientForComplexity()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1195
    :goto_0
    return v1

    .line 1191
    :catch_0
    move-exception v0

    .line 1192
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1195
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAdminActive(Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "who"

    .prologue
    .line 313
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 315
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 320
    :goto_0
    return v1

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 320
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDeviceEncryptionEnabled(Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "who"

    .prologue
    .line 812
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 814
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->isDeviceEncryptionEnabled(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 820
    :goto_0
    return v1

    .line 815
    :catch_0
    move-exception v0

    .line 816
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 820
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDeviceEncryptionRequired(Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "who"

    .prologue
    .line 860
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 862
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->isDeviceEncryptionRequired(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 867
    :goto_0
    return v1

    .line 863
    :catch_0
    move-exception v0

    .line 864
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 867
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPasswordNeedChangetoNotSimple()Z
    .locals 3

    .prologue
    .line 485
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 487
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->isPasswordNeedChangetoNotSimple()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 492
    :goto_0
    return v1

    .line 488
    :catch_0
    move-exception v0

    .line 489
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 492
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPasswordRecoveryEnabled(Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "who"

    .prologue
    .line 662
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 664
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->isPasswordRecoveryEnabled(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 669
    :goto_0
    return v1

    .line 665
    :catch_0
    move-exception v0

    .line 666
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 669
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPasswordSetEnforced()Z
    .locals 3

    .prologue
    .line 519
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 521
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->isPasswordSetEnforced()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 526
    :goto_0
    return v1

    .line 522
    :catch_0
    move-exception v0

    .line 523
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 526
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPolicyAllowed(Landroid/content/ComponentName;I)Z
    .locals 3
    .parameter "who"
    .parameter "policy"

    .prologue
    .line 1089
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1091
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/motorola/motepm/IMotDevicePolicyManager;->isPolicyAllowed(Landroid/content/ComponentName;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1096
    :goto_0
    return v1

    .line 1092
    :catch_0
    move-exception v0

    .line 1093
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1096
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isPolicySupported(I)Z
    .locals 3
    .parameter "policyID"

    .prologue
    .line 1295
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1297
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->isPolicySupported(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1303
    :goto_0
    return v1

    .line 1298
    :catch_0
    move-exception v0

    .line 1299
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1303
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isStorageCardEncryptionRequired(Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "who"

    .prologue
    .line 907
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 909
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->isStorageCardEncryptionRequired(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 914
    :goto_0
    return v1

    .line 910
    :catch_0
    move-exception v0

    .line 911
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 914
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public packageHasActiveAdmins(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 349
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 351
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 356
    :goto_0
    return v1

    .line 352
    :catch_0
    move-exception v0

    .line 353
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 356
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;)V
    .locals 4
    .parameter "who"

    .prologue
    .line 368
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v2, :cond_0

    .line 369
    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManager;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 370
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 372
    :try_start_0
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v2, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_0
    :goto_0
    return-void

    .line 373
    .restart local v0       #dpm:Landroid/app/admin/DevicePolicyManager;
    :catch_0
    move-exception v1

    .line 374
    .local v1, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with device policy service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeEmailAccount(Ljava/lang/String;)V
    .locals 3
    .parameter "accountName"

    .prologue
    .line 958
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 960
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->removeEmailAccount(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 965
    :cond_0
    :goto_0
    return-void

    .line 961
    :catch_0
    move-exception v0

    .line 962
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public reportExpirationWarningShow()V
    .locals 3

    .prologue
    .line 733
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 735
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->reportExpirationWarningShow()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 740
    :cond_0
    :goto_0
    return-void

    .line 736
    :catch_0
    move-exception v0

    .line 737
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public reportPasswordChanged()V
    .locals 3

    .prologue
    .line 747
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 749
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->reportPasswordChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 754
    :cond_0
    :goto_0
    return-void

    .line 750
    :catch_0
    move-exception v0

    .line 751
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public reportPolicyEnforcedResult(Landroid/content/ComponentName;IIZ)V
    .locals 3
    .parameter "who"
    .parameter "policy"
    .parameter "resultCode"
    .parameter "enabled"

    .prologue
    .line 1121
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1123
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/motorola/motepm/IMotDevicePolicyManager;->reportPolicyEnforcedResult(Landroid/content/ComponentName;IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1128
    :cond_0
    :goto_0
    return-void

    .line 1124
    :catch_0
    move-exception v0

    .line 1125
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;Z)V
    .locals 4
    .parameter "who"
    .parameter "refreshing"

    .prologue
    .line 294
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v2, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManager;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 296
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;Z)V

    .line 298
    :try_start_0
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v2, p1, p2}, Lcom/motorola/motepm/IMotDevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_0
    :goto_0
    return-void

    .line 299
    .restart local v0       #dpm:Landroid/app/admin/DevicePolicyManager;
    :catch_0
    move-exception v1

    .line 300
    .local v1, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with device policy service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setActivePasswordComplexity(I)V
    .locals 3
    .parameter "complexity"

    .prologue
    .line 1171
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1173
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->setActivePasswordComplexity(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1178
    :cond_0
    :goto_0
    return-void

    .line 1174
    :catch_0
    move-exception v0

    .line 1175
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setActivePasswordSimpleState(Z)V
    .locals 3
    .parameter "isSimple"

    .prologue
    .line 468
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 470
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->setActivePasswordSimpleState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 471
    :catch_0
    move-exception v0

    .line 472
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAllowPolicies(Landroid/content/ComponentName;IZ)I
    .locals 5
    .parameter "who"
    .parameter "policy"
    .parameter "enabled"

    .prologue
    .line 1063
    const/4 v1, 0x0

    .line 1064
    .local v1, result:I
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v2, :cond_1

    .line 1066
    :try_start_0
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v2, p1, p2, p3}, Lcom/motorola/motepm/IMotDevicePolicyManager;->setAllowPolicies(Landroid/content/ComponentName;IZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1074
    :goto_0
    sget-boolean v2, Lcom/motorola/motepm/MotDevicePolicyManager;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAllowPolicies policy "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    :cond_0
    return v1

    .line 1067
    :catch_0
    move-exception v0

    .line 1068
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with device policy service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1069
    const/4 v1, -0x1

    .line 1070
    goto :goto_0

    .line 1072
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setDeviceEncryptionEnabled(Landroid/content/ComponentName;Z)I
    .locals 5
    .parameter "who"
    .parameter "enabled"

    .prologue
    .line 788
    const/4 v1, 0x0

    .line 789
    .local v1, result:I
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v2, :cond_1

    .line 791
    :try_start_0
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v2, p1, p2}, Lcom/motorola/motepm/IMotDevicePolicyManager;->setDeviceEncryptionEnabled(Landroid/content/ComponentName;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 799
    :goto_0
    sget-boolean v2, Lcom/motorola/motepm/MotDevicePolicyManager;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDeviceEncryptionEnabled "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    :cond_0
    return v1

    .line 792
    :catch_0
    move-exception v0

    .line 793
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with device policy service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 794
    const/4 v1, -0x1

    .line 795
    goto :goto_0

    .line 797
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setDeviceEncryptionRequired(Landroid/content/ComponentName;Z)I
    .locals 5
    .parameter "who"
    .parameter "enabled"

    .prologue
    .line 836
    const/4 v1, 0x0

    .line 837
    .local v1, result:I
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v2, :cond_1

    .line 839
    :try_start_0
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v2, p1, p2}, Lcom/motorola/motepm/IMotDevicePolicyManager;->setDeviceEncryptionRequired(Landroid/content/ComponentName;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 847
    :goto_0
    sget-boolean v2, Lcom/motorola/motepm/MotDevicePolicyManager;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDeviceEncryptionRequired "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    :cond_0
    return v1

    .line 840
    :catch_0
    move-exception v0

    .line 841
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with device policy service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 842
    const/4 v1, -0x1

    .line 843
    goto :goto_0

    .line 845
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setIntentDisabled(Landroid/content/ComponentName;Z)V
    .locals 3
    .parameter "admin"
    .parameter "disabled"

    .prologue
    .line 451
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 453
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/motorola/motepm/IMotDevicePolicyManager;->setIntentDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 454
    :catch_0
    move-exception v0

    .line 455
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setManualDataSyncinRoaming(Landroid/content/ComponentName;Z)I
    .locals 5
    .parameter "who"
    .parameter "enabled"

    .prologue
    .line 543
    const/4 v1, 0x0

    .line 544
    .local v1, result:I
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v2, :cond_1

    .line 546
    :try_start_0
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v2, p1, p2}, Lcom/motorola/motepm/IMotDevicePolicyManager;->setManualDataSyncinRoaming(Landroid/content/ComponentName;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 554
    :goto_0
    sget-boolean v2, Lcom/motorola/motepm/MotDevicePolicyManager;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setManualDataSyncinRoaming "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_0
    return v1

    .line 547
    :catch_0
    move-exception v0

    .line 548
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with device policy service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 549
    const/4 v1, -0x1

    .line 550
    goto :goto_0

    .line 552
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setPasswordExpirationPeriod(Landroid/content/ComponentName;I)I
    .locals 5
    .parameter "who"
    .parameter "period"

    .prologue
    .line 681
    const/4 v1, 0x0

    .line 682
    .local v1, result:I
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v2, :cond_1

    .line 684
    :try_start_0
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v2, p1, p2}, Lcom/motorola/motepm/IMotDevicePolicyManager;->setPasswordExpirationPeriod(Landroid/content/ComponentName;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 692
    :goto_0
    sget-boolean v2, Lcom/motorola/motepm/MotDevicePolicyManager;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPasswordExpirationPeriod "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :cond_0
    return v1

    .line 685
    :catch_0
    move-exception v0

    .line 686
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with device policy service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 687
    const/4 v1, -0x1

    .line 688
    goto :goto_0

    .line 690
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setPasswordHistoryLength(Landroid/content/ComponentName;I)I
    .locals 5
    .parameter "who"
    .parameter "length"

    .prologue
    .line 593
    const/4 v1, 0x0

    .line 594
    .local v1, result:I
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v2, :cond_1

    .line 596
    :try_start_0
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v2, p1, p2}, Lcom/motorola/motepm/IMotDevicePolicyManager;->setPasswordHistoryLength(Landroid/content/ComponentName;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 604
    :goto_0
    sget-boolean v2, Lcom/motorola/motepm/MotDevicePolicyManager;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPasswordHistoryLength "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_0
    return v1

    .line 597
    :catch_0
    move-exception v0

    .line 598
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with device policy service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 599
    const/4 v1, -0x1

    .line 600
    goto :goto_0

    .line 602
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setPasswordMinimumComplexity(Landroid/content/ComponentName;I)I
    .locals 4
    .parameter "admin"
    .parameter "complexity"

    .prologue
    .line 1140
    const/4 v1, 0x0

    .line 1141
    .local v1, result:I
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v2, :cond_0

    .line 1143
    :try_start_0
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v2, p1, p2}, Lcom/motorola/motepm/IMotDevicePolicyManager;->setPasswordMinimumComplexity(Landroid/content/ComponentName;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1151
    :goto_0
    return v1

    .line 1144
    :catch_0
    move-exception v0

    .line 1145
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with device policy service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1146
    const/4 v1, -0x1

    .line 1147
    goto :goto_0

    .line 1149
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setPasswordRecoveryEnabled(Landroid/content/ComponentName;Z)I
    .locals 5
    .parameter "who"
    .parameter "enabled"

    .prologue
    .line 638
    const/4 v1, 0x0

    .line 639
    .local v1, result:I
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v2, :cond_1

    .line 641
    :try_start_0
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v2, p1, p2}, Lcom/motorola/motepm/IMotDevicePolicyManager;->setPasswordRecoveryEnabled(Landroid/content/ComponentName;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 649
    :goto_0
    sget-boolean v2, Lcom/motorola/motepm/MotDevicePolicyManager;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPasswordRecoveryEnabled "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_0
    return v1

    .line 642
    :catch_0
    move-exception v0

    .line 643
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with device policy service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 644
    const/4 v1, -0x1

    .line 645
    goto :goto_0

    .line 647
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setStorageCardEncryptionRequired(Landroid/content/ComponentName;Z)I
    .locals 5
    .parameter "who"
    .parameter "enabled"

    .prologue
    .line 883
    const/4 v1, 0x0

    .line 884
    .local v1, result:I
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v2, :cond_1

    .line 886
    :try_start_0
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v2, p1, p2}, Lcom/motorola/motepm/IMotDevicePolicyManager;->setStorageCardEncryptionRequired(Landroid/content/ComponentName;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 894
    :goto_0
    sget-boolean v2, Lcom/motorola/motepm/MotDevicePolicyManager;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setStorageCardEncryptionRequired "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    :cond_0
    return v1

    .line 887
    :catch_0
    move-exception v0

    .line 888
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with device policy service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 889
    const/4 v1, -0x1

    .line 890
    goto :goto_0

    .line 892
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public wipeData(ZZ)V
    .locals 3
    .parameter "wipeSd"
    .parameter "wipeSilent"

    .prologue
    .line 1108
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1110
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/motorola/motepm/IMotDevicePolicyManager;->wipeData(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1115
    :cond_0
    :goto_0
    return-void

    .line 1111
    :catch_0
    move-exception v0

    .line 1112
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
