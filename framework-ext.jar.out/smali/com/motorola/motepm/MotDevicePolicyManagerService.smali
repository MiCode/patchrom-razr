.class public Lcom/motorola/motepm/MotDevicePolicyManagerService;
.super Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;
.source "MotDevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/motepm/MotDevicePolicyManagerService$PublicKey3LM;,
        Lcom/motorola/motepm/MotDevicePolicyManagerService$MyPackageMonitor;,
        Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    }
.end annotation


# static fields
.field public static final ALLOW_BLUETOOTH_NOTIFICATION_ID:I = 0x9

.field private static final ALLOW_BROWSER_NOTIFICATION_ID:I = 0x2

.field private static final ALLOW_CAMERA_NOTIFICATION_ID:I = 0x4

.field public static final ALLOW_CONSUMER_EMAIL_NOTIFICATION_ID:I = 0xa

.field private static final ALLOW_INTERNET_SHARING_NOTIFICATION_ID:I = 0x6

.field private static final ALLOW_POP3_IMAP4_EMAIL_NOTIFICATION_ID:I = 0x8

.field private static final ALLOW_SDCARD_NOTIFICATION_ID:I = 0x5

.field private static final ALLOW_TEXT_MESSAGE_NOTIFICATION_ID:I = 0x1

.field private static final ALLOW_WIFI_NOTIFICATION_ID:I = 0x3

.field private static COMMAND_FILE:Ljava/io/File; = null

.field private static final COMPONET_NAME:Ljava/lang/String; = "componet_name"

.field private static final DEFAULT_MOTO_PKG_REFERENCE:Ljava/lang/String; = "com.motorola.EPMServiceApp"

.field private static final DISABLE_PACKAGE_GMAIL:Ljava/lang/String; = "com.google.android.gm"

.field public static final EMAIL_ADDR:Ljava/lang/String; = "addrType"

.field public static final EMAIL_HOST:Ljava/lang/String; = "hostType"

.field public static final EMAIL_PASSWORD:Ljava/lang/String; = "passwordType"

.field public static final EMAIL_SSL:Ljava/lang/String; = "sslType"

.field public static final EMAIL_USERNAME:Ljava/lang/String; = "userNameType"

.field private static final ENCRYPTION_PACKAGE_NAME:Ljava/lang/String; = "com.motorola.android.encryption.settings"

.field private static LOG_FILE:Ljava/io/File; = null

.field private static final MANUALSYNC_PACKAGE_NAME:Ljava/lang/String; = "com.motorola.android.datamanager"

.field static final MAX_EXPIRATION_WARNING_DAYS:I = 0xe

.field static final MILLSSECONDS_FOR_ONE_DAY:I = 0x5265c00

.field private static final NATIVE_STATUS:Ljava/lang/String; = "native_status"

.field private static final POLICY_NAME:Ljava/lang/String; = "policy_name"

.field private static RECOVERY_DIR:Ljava/io/File; = null

.field private static final RESULT_CODE:Ljava/lang/String; = "result_code"

.field private static final SHOW_KEYGUARD_NOW_ACTION:Ljava/lang/String; = "com.motorola.internal.intent.SHOW_KEYGUARD_NOW"

.field static final TAG:Ljava/lang/String; = "MotDevicePolicyManagerService"

.field private static mDisablePackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mTelephonyManager:Landroid/telephony/TelephonyManager;


# instance fields
.field DEBUG_POLICY:Z

.field mActivePasswordComplexity:I

.field mActivePasswordSimple:Z

.field final mAdminList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;",
            ">;"
        }
    .end annotation
.end field

.field final mAdminMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field mExpirationWarningDate:I

.field mIPowerManager:Landroid/os/IPowerManager;

.field mIsPasswordSetEnforced:Z

.field final mMonitor:Lcom/motorola/motepm/MotDevicePolicyManagerService$MyPackageMonitor;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field mPasswordChangedDate:I

.field private mPhoneStateListener:Lcom/motorola/motepm/MotEPMPhoneStateListener;

.field mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 125
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 159
    new-instance v0, Ljava/io/File;

    const-string v1, "/cache/recovery"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->RECOVERY_DIR:Ljava/io/File;

    .line 160
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManagerService;->RECOVERY_DIR:Ljava/io/File;

    const-string v2, "command"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->COMMAND_FILE:Ljava/io/File;

    .line 161
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManagerService;->RECOVERY_DIR:Ljava/io/File;

    const-string v2, "log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->LOG_FILE:Ljava/io/File;

    .line 211
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDisablePackageList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 669
    invoke-direct {p0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;-><init>()V

    .line 131
    iput-boolean v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mIsPasswordSetEnforced:Z

    .line 132
    iput-boolean v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    .line 135
    iput v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPasswordChangedDate:I

    .line 136
    iput v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mExpirationWarningDate:I

    .line 142
    iput v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mActivePasswordComplexity:I

    .line 145
    iput-boolean v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mActivePasswordSimple:Z

    .line 147
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminMap:Ljava/util/HashMap;

    .line 149
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    .line 208
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPhoneStateListener:Lcom/motorola/motepm/MotEPMPhoneStateListener;

    .line 4050
    new-instance v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$2;

    invoke-direct {v1, p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$2;-><init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;)V

    iput-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 670
    iput-object p1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 671
    new-instance v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$MyPackageMonitor;

    invoke-direct {v1, p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$MyPackageMonitor;-><init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;)V

    iput-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mMonitor:Lcom/motorola/motepm/MotDevicePolicyManagerService$MyPackageMonitor;

    .line 672
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mMonitor:Lcom/motorola/motepm/MotDevicePolicyManagerService$MyPackageMonitor;

    invoke-virtual {v1, p1, v2}, Lcom/motorola/motepm/MotDevicePolicyManagerService$MyPackageMonitor;->register(Landroid/content/Context;Z)V

    .line 674
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 675
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 676
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 679
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 682
    new-instance v1, Lcom/motorola/motepm/MotEPMPhoneStateListener;

    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/motorola/motepm/MotEPMPhoneStateListener;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPhoneStateListener:Lcom/motorola/motepm/MotEPMPhoneStateListener;

    .line 684
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/motepm/MotDevicePolicyManagerService;Landroid/content/ComponentName;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isPopImapEmailAllowed(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/motorola/motepm/MotDevicePolicyManagerService;Landroid/content/ComponentName;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isConsumerEmailAllowed(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/motorola/motepm/MotDevicePolicyManagerService;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->blockEmailPort(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/motorola/motepm/MotDevicePolicyManagerService;)Lcom/motorola/motepm/MotEPMPhoneStateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPhoneStateListener:Lcom/motorola/motepm/MotEPMPhoneStateListener;

    return-object v0
.end method

.method private blockEmailPort(Z)Z
    .locals 5
    .parameter "blocked"

    .prologue
    .line 3135
    monitor-enter p0

    .line 3137
    :try_start_0
    const-string v4, "network_management"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3138
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 3140
    .local v3, mNetd:Landroid/os/INetworkManagementService;
    if-eqz v3, :cond_0

    .line 3142
    if-eqz p1, :cond_1

    .line 3143
    :try_start_1
    const-string v1, "-A OUTPUT -p tcp --syn --dport 110 -j DROP"

    .line 3144
    .local v1, command:Ljava/lang/String;
    invoke-interface {v3, v1}, Landroid/os/INetworkManagementService;->rawIptablesCommand(Ljava/lang/String;)Z

    .line 3145
    const-string v1, "-A OUTPUT -p tcp --syn --dport 143 -j DROP"

    .line 3146
    invoke-interface {v3, v1}, Landroid/os/INetworkManagementService;->rawIptablesCommand(Ljava/lang/String;)Z

    .line 3147
    const-string v1, "-A OUTPUT -p tcp --syn --dport 585 -j DROP"

    .line 3148
    invoke-interface {v3, v1}, Landroid/os/INetworkManagementService;->rawIptablesCommand(Ljava/lang/String;)Z

    .line 3149
    const-string v1, "-A OUTPUT -p tcp --syn --dport 993 -j DROP"

    .line 3150
    invoke-interface {v3, v1}, Landroid/os/INetworkManagementService;->rawIptablesCommand(Ljava/lang/String;)Z

    .line 3151
    const-string v1, "-A OUTPUT -p tcp --syn --dport 995 -j DROP"

    .line 3152
    invoke-interface {v3, v1}, Landroid/os/INetworkManagementService;->rawIptablesCommand(Ljava/lang/String;)Z

    .line 3153
    const-string v1, "-A OUTPUT -p tcp --syn --dport 25 -j DROP"

    .line 3154
    invoke-interface {v3, v1}, Landroid/os/INetworkManagementService;->rawIptablesCommand(Ljava/lang/String;)Z

    .line 3155
    const-string v1, "-A OUTPUT -p tcp --syn --dport 465 -j DROP"

    .line 3156
    invoke-interface {v3, v1}, Landroid/os/INetworkManagementService;->rawIptablesCommand(Ljava/lang/String;)Z

    .line 3157
    const-string v1, "-A OUTPUT -p tcp --syn --dport 587 -j DROP"

    .line 3158
    invoke-interface {v3, v1}, Landroid/os/INetworkManagementService;->rawIptablesCommand(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3181
    .end local v1           #command:Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v4, 0x1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    return v4

    .line 3160
    :cond_1
    :try_start_3
    const-string v1, "-D OUTPUT -p tcp --syn --dport 110 -j DROP"

    .line 3161
    .restart local v1       #command:Ljava/lang/String;
    invoke-interface {v3, v1}, Landroid/os/INetworkManagementService;->rawIptablesCommand(Ljava/lang/String;)Z

    .line 3162
    const-string v1, "-D OUTPUT -p tcp --syn --dport 143 -j DROP"

    .line 3163
    invoke-interface {v3, v1}, Landroid/os/INetworkManagementService;->rawIptablesCommand(Ljava/lang/String;)Z

    .line 3164
    const-string v1, "-D OUTPUT -p tcp --syn --dport 585 -j DROP"

    .line 3165
    invoke-interface {v3, v1}, Landroid/os/INetworkManagementService;->rawIptablesCommand(Ljava/lang/String;)Z

    .line 3166
    const-string v1, "-D OUTPUT -p tcp --syn --dport 993 -j DROP"

    .line 3167
    invoke-interface {v3, v1}, Landroid/os/INetworkManagementService;->rawIptablesCommand(Ljava/lang/String;)Z

    .line 3168
    const-string v1, "-D OUTPUT -p tcp --syn --dport 995 -j DROP"

    .line 3169
    invoke-interface {v3, v1}, Landroid/os/INetworkManagementService;->rawIptablesCommand(Ljava/lang/String;)Z

    .line 3170
    const-string v1, "-D OUTPUT -p tcp --syn --dport 25 -j DROP"

    .line 3171
    invoke-interface {v3, v1}, Landroid/os/INetworkManagementService;->rawIptablesCommand(Ljava/lang/String;)Z

    .line 3172
    const-string v1, "-D OUTPUT -p tcp --syn --dport 465 -j DROP"

    .line 3173
    invoke-interface {v3, v1}, Landroid/os/INetworkManagementService;->rawIptablesCommand(Ljava/lang/String;)Z

    .line 3174
    const-string v1, "-D OUTPUT -p tcp --syn --dport 587 -j DROP"

    .line 3175
    invoke-interface {v3, v1}, Landroid/os/INetworkManagementService;->rawIptablesCommand(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 3177
    .end local v1           #command:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 3178
    .local v2, e:Landroid/os/RemoteException;
    const/4 v4, 0x0

    :try_start_4
    monitor-exit p0

    goto :goto_1

    .line 3182
    .end local v0           #b:Landroid/os/IBinder;
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v3           #mNetd:Landroid/os/INetworkManagementService;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4
.end method

.method private static bootCommand(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "arg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3649
    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManagerService;->RECOVERY_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 3650
    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManagerService;->COMMAND_FILE:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 3651
    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManagerService;->LOG_FILE:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 3653
    new-instance v0, Ljava/io/FileWriter;

    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManagerService;->COMMAND_FILE:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 3655
    .local v0, command:Ljava/io/FileWriter;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 3656
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3658
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    .line 3662
    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 3663
    .local v1, pm:Landroid/os/PowerManager;
    const-string v2, "recovery"

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 3665
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Reboot failed (no permissions?)"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3658
    .end local v1           #pm:Landroid/os/PowerManager;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    throw v2
.end method

.method private deleteAllConfigs(Ljava/lang/String;)V
    .locals 12
    .parameter "admin"

    .prologue
    const/high16 v11, 0x1000

    .line 3712
    invoke-static {}, Lmotorola/app/admin/MotEdmDb;->getInstance()Lmotorola/app/admin/MotEdmDb;

    move-result-object v4

    .line 3713
    .local v4, edmDb:Lmotorola/app/admin/MotEdmDb;
    invoke-virtual {v4, p1}, Lmotorola/app/admin/MotEdmDb;->getEmailUuids(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v5

    .line 3714
    .local v5, emailUuids:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-virtual {v4, p1}, Lmotorola/app/admin/MotEdmDb;->getVpnUuids(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v8

    .line 3715
    .local v8, vpnUuids:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-virtual {v4, p1}, Lmotorola/app/admin/MotEdmDb;->getCertUuids(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v3

    .line 3717
    .local v3, certUuids:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    if-eqz v5, :cond_0

    .line 3718
    new-instance v6, Landroid/content/Intent;

    const-string v9, "com.motorola.email.activity.setup.DPM_REMOVE_ACCOUNT"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3719
    .local v6, intent:Landroid/content/Intent;
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v9

    new-array v1, v9, [Ljava/lang/String;

    .line 3720
    .local v1, allEmailIDs:[Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 3721
    const-string v9, "addrType"

    invoke-virtual {v6, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 3722
    const-string v9, "LENGTH"

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3723
    iget-object v9, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3725
    .end local v1           #allEmailIDs:[Ljava/lang/String;
    .end local v6           #intent:Landroid/content/Intent;
    :cond_0
    if-eqz v8, :cond_1

    .line 3726
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 3727
    .local v7, vpnIDBundle:Landroid/os/Bundle;
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v9

    new-array v2, v9, [Ljava/lang/String;

    .line 3728
    .local v2, allVpnIDs:[Ljava/lang/String;
    invoke-virtual {v8, v2}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 3729
    const-string v9, "VPN_ID"

    invoke-virtual {v7, v9, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3730
    const-string v9, "LENGTH"

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v10

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3731
    new-instance v6, Landroid/content/Intent;

    const-string v9, "com.motorola.intent.action.DEL_VPN_PROFILE"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3732
    .restart local v6       #intent:Landroid/content/Intent;
    const-string v9, "bundle"

    invoke-virtual {v6, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3733
    invoke-virtual {v6, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3734
    iget-object v9, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3736
    .end local v2           #allVpnIDs:[Ljava/lang/String;
    .end local v6           #intent:Landroid/content/Intent;
    .end local v7           #vpnIDBundle:Landroid/os/Bundle;
    :cond_1
    if-eqz v3, :cond_2

    .line 3737
    new-instance v6, Landroid/content/Intent;

    const-string v9, "com.motorola.intent.action.CERT_DELETE"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3738
    .restart local v6       #intent:Landroid/content/Intent;
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v9

    new-array v0, v9, [Ljava/lang/String;

    .line 3739
    .local v0, allCertificates:[Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 3740
    const-string v9, "NAME"

    invoke-virtual {v6, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 3741
    const-string v9, "LENGTH"

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3742
    invoke-virtual {v6, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3743
    iget-object v9, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3745
    .end local v0           #allCertificates:[Ljava/lang/String;
    .end local v6           #intent:Landroid/content/Intent;
    :cond_2
    invoke-virtual {v4, p1}, Lmotorola/app/admin/MotEdmDb;->deleteAdmin(Ljava/lang/String;)Z

    .line 3746
    return-void
.end method

.method private epmUntetheringUSB()Z
    .locals 15

    .prologue
    .line 2799
    const/4 v0, 0x0

    .line 2800
    .local v0, USB_result:Z
    const/4 v11, 0x0

    .line 2801
    .local v11, tethering_result:I
    iget-object v13, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v14, "connectivity"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 2803
    .local v4, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v1

    .line 2804
    .local v1, UsbRegexs:[Ljava/lang/String;
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v10

    .line 2805
    .local v10, tethered:[Ljava/lang/String;
    move-object v2, v10

    .local v2, arr$:[Ljava/lang/String;
    array-length v7, v2

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    move v6, v5

    .end local v2           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v12, v2, v6

    .line 2806
    .local v12, usbIface:Ljava/lang/String;
    move-object v3, v1

    .local v3, arr$:[Ljava/lang/String;
    array-length v8, v3

    .local v8, len$:I
    const/4 v5, 0x0

    .end local v6           #i$:I
    .restart local v5       #i$:I
    :goto_1
    if-ge v5, v8, :cond_1

    aget-object v9, v3, v5

    .line 2807
    .local v9, regex:Ljava/lang/String;
    invoke-virtual {v12, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 2808
    invoke-virtual {v4, v12}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_0

    .line 2809
    add-int/lit8 v11, v11, 0x1

    .line 2806
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2805
    .end local v9           #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    .end local v5           #i$:I
    .restart local v6       #i$:I
    goto :goto_0

    .line 2814
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v8           #len$:I
    .end local v12           #usbIface:Ljava/lang/String;
    :cond_2
    if-nez v11, :cond_3

    const/4 v0, 0x1

    .line 2815
    :cond_3
    return v0
.end method

.method private getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .locals 2

    .prologue
    .line 4023
    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDpm:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    .line 4024
    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 4026
    :cond_0
    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDpm:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method private getIPowerManager()Landroid/os/IPowerManager;
    .locals 2

    .prologue
    .line 687
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mIPowerManager:Landroid/os/IPowerManager;

    if-nez v1, :cond_0

    .line 688
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 689
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mIPowerManager:Landroid/os/IPowerManager;

    .line 691
    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mIPowerManager:Landroid/os/IPowerManager;

    return-object v1
.end method

.method private hasMountedRemovableSdcard()Z
    .locals 13

    .prologue
    const/4 v9, 0x0

    .line 3831
    const/4 v4, 0x0

    .line 3833
    .local v4, mMntSvc:Landroid/os/storage/IMountService;
    :try_start_0
    const-string v10, "mount"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v4

    .line 3835
    if-nez v4, :cond_1

    .line 3836
    const-string v10, "MotDevicePolicyManagerService"

    const-string v11, "Fail to get MountService!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3853
    :cond_0
    :goto_0
    return v9

    .line 3839
    :cond_1
    invoke-interface {v4}, Landroid/os/storage/IMountService;->getVolumeList()[Landroid/os/Parcelable;

    move-result-object v8

    .line 3840
    .local v8, volumes:[Landroid/os/Parcelable;
    move-object v1, v8

    .local v1, arr$:[Landroid/os/Parcelable;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v6, v1, v2

    .line 3841
    .local v6, s:Landroid/os/Parcelable;
    move-object v0, v6

    check-cast v0, Landroid/os/storage/StorageVolume;

    move-object v7, v0

    .line 3842
    .local v7, volume:Landroid/os/storage/StorageVolume;
    const-string v10, "MotDevicePolicyManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "volume = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3843
    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v10

    const-string v11, "/mnt/usbdisk"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "mounted"

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v11}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_2

    .line 3847
    const/4 v9, 0x1

    goto :goto_0

    .line 3840
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3850
    .end local v1           #arr$:[Landroid/os/Parcelable;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v6           #s:Landroid/os/Parcelable;
    .end local v7           #volume:Landroid/os/storage/StorageVolume;
    .end local v8           #volumes:[Landroid/os/Parcelable;
    :catch_0
    move-exception v5

    .line 3851
    .local v5, re:Ljava/lang/Exception;
    const-string v10, "MotDevicePolicyManagerService"

    const-string v11, "Error in hasMountedRemovableSdcard()"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private is3LMAdmin(Ljava/lang/String;)Z
    .locals 10
    .parameter "pkgName"

    .prologue
    .line 3888
    new-instance v4, Lcom/motorola/motepm/MotDevicePolicyManagerService$PublicKey3LM;

    iget-object v7, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v7}, Lcom/motorola/motepm/MotDevicePolicyManagerService$PublicKey3LM;-><init>(Landroid/content/Context;)V

    .line 3890
    .local v4, mPublicKey3LM:Lcom/motorola/motepm/MotDevicePolicyManagerService$PublicKey3LM;
    :try_start_0
    const-string v7, "MotDevicePolicyManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Looking up pkg info for:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3891
    iget-object v7, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/16 v8, 0x40

    invoke-virtual {v7, p1, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 3894
    .local v5, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v0, arr$:[Landroid/content/pm/Signature;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v6, v0, v2

    .line 3895
    .local v6, pkgSignature:Landroid/content/pm/Signature;
    invoke-virtual {v6}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/motorola/motepm/MotDevicePolicyManagerService$PublicKey3LM;->comparePublicKey([B)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3896
    const-string v7, "MotDevicePolicyManagerService"

    const-string v8, "Signature matches - access granted"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3897
    const/4 v7, 0x1

    .line 3903
    .end local v0           #arr$:[Landroid/content/pm/Signature;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v6           #pkgSignature:Landroid/content/pm/Signature;
    :goto_1
    return v7

    .line 3894
    .restart local v0       #arr$:[Landroid/content/pm/Signature;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v5       #packageInfo:Landroid/content/pm/PackageInfo;
    .restart local v6       #pkgSignature:Landroid/content/pm/Signature;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3900
    .end local v0           #arr$:[Landroid/content/pm/Signature;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v6           #pkgSignature:Landroid/content/pm/Signature;
    :catch_0
    move-exception v1

    .line 3901
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "MotDevicePolicyManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error trying to verify package public key against 3LM pub key:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3903
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private isBluetoothAllowed(Landroid/content/ComponentName;)Z
    .locals 6
    .parameter "who"

    .prologue
    const/4 v3, 0x1

    .line 2854
    monitor-enter p0

    .line 2855
    if-eqz p1, :cond_1

    .line 2856
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2857
    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    .line 2858
    iget-boolean v3, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->bluetoothEnable:Z

    monitor-exit p0

    .line 2875
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :goto_0
    return v3

    .line 2860
    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_0
    monitor-exit p0

    goto :goto_0

    .line 2876
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2862
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2863
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 2864
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 2865
    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-boolean v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->bluetoothEnable:Z

    if-nez v4, :cond_3

    .line 2866
    iget-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v3, :cond_2

    .line 2867
    const-string v3, "MotDevicePolicyManagerService"

    const-string v4, "######isBluetoothAllowed, FALSE"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2869
    :cond_2
    const/4 v3, 0x0

    monitor-exit p0

    goto :goto_0

    .line 2863
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2872
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_4
    iget-boolean v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v4, :cond_5

    .line 2873
    const-string v4, "MotDevicePolicyManagerService"

    const-string v5, "######isBluetoothAllowed, TRUE"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2875
    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private isBrowserAllowed(Landroid/content/ComponentName;)Z
    .locals 6
    .parameter "who"

    .prologue
    const/4 v3, 0x1

    .line 2603
    monitor-enter p0

    .line 2604
    if-eqz p1, :cond_1

    .line 2605
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2606
    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    .line 2607
    iget-boolean v3, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->browserEnabled:Z

    monitor-exit p0

    .line 2624
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :goto_0
    return v3

    .line 2609
    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_0
    monitor-exit p0

    goto :goto_0

    .line 2625
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2611
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2612
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 2613
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 2614
    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-boolean v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->browserEnabled:Z

    if-nez v4, :cond_3

    .line 2615
    iget-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v3, :cond_2

    .line 2616
    const-string v3, "MotDevicePolicyManagerService"

    const-string v4, "######isBrowserAllowed, FALSE"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2618
    :cond_2
    const/4 v3, 0x0

    monitor-exit p0

    goto :goto_0

    .line 2612
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2621
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_4
    iget-boolean v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v4, :cond_5

    .line 2622
    const-string v4, "MotDevicePolicyManagerService"

    const-string v5, "######isBrowserAllowed, TRUE"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2624
    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private isConsumerEmailAllowed(Landroid/content/ComponentName;)Z
    .locals 6
    .parameter "who"

    .prologue
    const/4 v3, 0x1

    .line 3277
    monitor-enter p0

    .line 3279
    if-eqz p1, :cond_1

    .line 3280
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 3281
    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    .line 3282
    iget-boolean v3, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->consumerEmailEnabled:Z

    monitor-exit p0

    .line 3302
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :goto_0
    return v3

    .line 3285
    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_0
    monitor-exit p0

    goto :goto_0

    .line 3303
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 3289
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3290
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 3291
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 3292
    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-boolean v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->consumerEmailEnabled:Z

    if-nez v4, :cond_3

    .line 3293
    iget-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v3, :cond_2

    .line 3294
    const-string v3, "MotDevicePolicyManagerService"

    const-string v4, "######isConsumerEmailAllowed, FALSE"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3296
    :cond_2
    const/4 v3, 0x0

    monitor-exit p0

    goto :goto_0

    .line 3290
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3299
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_4
    iget-boolean v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v4, :cond_5

    .line 3300
    const-string v4, "MotDevicePolicyManagerService"

    const-string v5, "######isConsumerEmailAllowed, TRUE"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3302
    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private isInternetSharingAllowed(Landroid/content/ComponentName;)Z
    .locals 6
    .parameter "who"

    .prologue
    const/4 v3, 0x1

    .line 2825
    monitor-enter p0

    .line 2826
    if-eqz p1, :cond_1

    .line 2827
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2828
    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    .line 2829
    iget-boolean v3, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->internetSharingEnabled:Z

    monitor-exit p0

    .line 2847
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :goto_0
    return v3

    .line 2831
    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_0
    monitor-exit p0

    goto :goto_0

    .line 2848
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2834
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2835
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 2836
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 2837
    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-boolean v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->internetSharingEnabled:Z

    if-nez v4, :cond_3

    .line 2838
    iget-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v3, :cond_2

    .line 2839
    const-string v3, "MotDevicePolicyManagerService"

    const-string v4, "######isInternetSharingAllowed, FALSE"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2841
    :cond_2
    const/4 v3, 0x0

    monitor-exit p0

    goto :goto_0

    .line 2835
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2844
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_4
    iget-boolean v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v4, :cond_5

    .line 2845
    const-string v4, "MotDevicePolicyManagerService"

    const-string v5, "######isInternetSharingAllowed, TRUE"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2847
    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private isPopImapEmailAllowed(Landroid/content/ComponentName;)Z
    .locals 6
    .parameter "who"

    .prologue
    const/4 v3, 0x1

    .line 3100
    monitor-enter p0

    .line 3102
    if-eqz p1, :cond_1

    .line 3103
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 3104
    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    .line 3105
    iget-boolean v3, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->pop3imap4EmailEnabled:Z

    monitor-exit p0

    .line 3125
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :goto_0
    return v3

    .line 3108
    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_0
    monitor-exit p0

    goto :goto_0

    .line 3126
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 3112
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3113
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 3114
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 3115
    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-boolean v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->pop3imap4EmailEnabled:Z

    if-nez v4, :cond_3

    .line 3116
    iget-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v3, :cond_2

    .line 3117
    const-string v3, "MotDevicePolicyManagerService"

    const-string v4, "######isPopImapEmailAllowed, FALSE"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3119
    :cond_2
    const/4 v3, 0x0

    monitor-exit p0

    goto :goto_0

    .line 3113
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3122
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_4
    iget-boolean v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v4, :cond_5

    .line 3123
    const-string v4, "MotDevicePolicyManagerService"

    const-string v5, "######isPopImapEmailAllowed, TRUE"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3125
    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private isSDCardAllowed(Landroid/content/ComponentName;)Z
    .locals 6
    .parameter "who"

    .prologue
    const/4 v3, 0x1

    .line 2501
    monitor-enter p0

    .line 2503
    if-eqz p1, :cond_1

    .line 2504
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2505
    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    .line 2506
    iget-boolean v3, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->sdCardEnabled:Z

    monitor-exit p0

    .line 2524
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :goto_0
    return v3

    .line 2508
    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_0
    monitor-exit p0

    goto :goto_0

    .line 2525
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2511
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2512
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 2513
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 2514
    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-boolean v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->sdCardEnabled:Z

    if-nez v4, :cond_3

    .line 2515
    iget-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v3, :cond_2

    .line 2516
    const-string v3, "MotDevicePolicyManagerService"

    const-string v4, "######isSDCardAllowed, FALSE"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2518
    :cond_2
    const/4 v3, 0x0

    monitor-exit p0

    goto :goto_0

    .line 2512
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2521
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_4
    iget-boolean v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v4, :cond_5

    .line 2522
    const-string v4, "MotDevicePolicyManagerService"

    const-string v5, "######isSDCardAllowed, TRUE"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2524
    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private isSimplePasswordAllowed(Landroid/content/ComponentName;)Z
    .locals 6
    .parameter "who"

    .prologue
    const/4 v3, 0x1

    .line 2980
    monitor-enter p0

    .line 2982
    if-eqz p1, :cond_1

    .line 2983
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2984
    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    .line 2985
    iget-boolean v3, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->simplePasswordEnabled:Z

    monitor-exit p0

    .line 3002
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :goto_0
    return v3

    .line 2987
    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_0
    monitor-exit p0

    goto :goto_0

    .line 3003
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2989
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2990
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 2991
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 2992
    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-boolean v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->simplePasswordEnabled:Z

    if-nez v4, :cond_3

    .line 2993
    iget-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v3, :cond_2

    .line 2994
    const-string v3, "MotDevicePolicyManagerService"

    const-string v4, "######isSimplePasswordAllowed, FALSE"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2996
    :cond_2
    const/4 v3, 0x0

    monitor-exit p0

    goto :goto_0

    .line 2990
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2999
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_4
    iget-boolean v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v4, :cond_5

    .line 3000
    const-string v4, "MotDevicePolicyManagerService"

    const-string v5, "######isSimplePasswordAllowed, TRUE"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3002
    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private isTextMessageAllowed(Landroid/content/ComponentName;)Z
    .locals 6
    .parameter "who"

    .prologue
    const/4 v3, 0x1

    .line 2690
    monitor-enter p0

    .line 2691
    if-eqz p1, :cond_1

    .line 2692
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2693
    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    .line 2694
    iget-boolean v3, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->textMessageEnabled:Z

    monitor-exit p0

    .line 2711
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :goto_0
    return v3

    .line 2696
    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_0
    monitor-exit p0

    goto :goto_0

    .line 2712
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2698
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2699
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 2700
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 2701
    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-boolean v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->textMessageEnabled:Z

    if-nez v4, :cond_3

    .line 2702
    iget-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v3, :cond_2

    .line 2703
    const-string v3, "MotDevicePolicyManagerService"

    const-string v4, "######isTextMessageAllowed, FALSE"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2705
    :cond_2
    const/4 v3, 0x0

    monitor-exit p0

    goto :goto_0

    .line 2699
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2708
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_4
    iget-boolean v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v4, :cond_5

    .line 2709
    const-string v4, "MotDevicePolicyManagerService"

    const-string v5, "######isTextMessageAllowed, TRUE"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2711
    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private isWifiAllowed(Landroid/content/ComponentName;)Z
    .locals 6
    .parameter "who"

    .prologue
    const/4 v3, 0x1

    .line 2377
    monitor-enter p0

    .line 2379
    if-eqz p1, :cond_1

    .line 2380
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2381
    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    .line 2382
    iget-boolean v3, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->wifiEnabled:Z

    monitor-exit p0

    .line 2400
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :goto_0
    return v3

    .line 2384
    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_0
    monitor-exit p0

    goto :goto_0

    .line 2401
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2387
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2388
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 2389
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 2390
    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-boolean v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->wifiEnabled:Z

    if-nez v4, :cond_3

    .line 2391
    iget-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v3, :cond_2

    .line 2392
    const-string v3, "MotDevicePolicyManagerService"

    const-string v4, "######isWifiAllowed, FALSE"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2394
    :cond_2
    const/4 v3, 0x0

    monitor-exit p0

    goto :goto_0

    .line 2388
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2397
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_4
    iget-boolean v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v4, :cond_5

    .line 2398
    const-string v4, "MotDevicePolicyManagerService"

    const-string v5, "######isWifiAllowed, TRUE"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2400
    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private loadDisablelistLocked()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x1

    .line 4125
    sget-object v10, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDisablePackageList:Ljava/util/List;

    if-nez v10, :cond_0

    .line 4126
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    sput-object v10, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDisablePackageList:Ljava/util/List;

    .line 4128
    :cond_0
    sget-object v10, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDisablePackageList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 4129
    invoke-static {}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->makeJournaledFileForDisabledList()Lcom/android/internal/util/JournaledFile;

    move-result-object v2

    .line 4130
    .local v2, journal:Lcom/android/internal/util/JournaledFile;
    const/4 v6, 0x0

    .line 4131
    .local v6, stream:Ljava/io/FileInputStream;
    invoke-virtual {v2}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v1

    .line 4133
    .local v1, file:Ljava/io/File;
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_5

    .line 4134
    .end local v6           #stream:Ljava/io/FileInputStream;
    .local v7, stream:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 4135
    .local v5, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v10, 0x0

    invoke-interface {v5, v7, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 4139
    :cond_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .local v9, type:I
    if-eq v9, v13, :cond_2

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 4141
    :cond_2
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 4142
    .local v8, tag:Ljava/lang/String;
    const-string v10, "disabledlist"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 4143
    new-instance v10, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "disablelist do not start with disabledlist tag: found "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_7

    .line 4163
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v8           #tag:Ljava/lang/String;
    .end local v9           #type:I
    :catch_0
    move-exception v0

    move-object v6, v7

    .line 4164
    .end local v7           #stream:Ljava/io/FileInputStream;
    .local v0, e:Ljava/lang/NullPointerException;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :goto_0
    const-string v10, "MotDevicePolicyManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed parsing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4175
    .end local v0           #e:Ljava/lang/NullPointerException;
    :goto_1
    if-eqz v6, :cond_3

    .line 4176
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 4181
    :cond_3
    :goto_2
    return-void

    .line 4146
    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v5       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7       #stream:Ljava/io/FileInputStream;
    .restart local v8       #tag:Ljava/lang/String;
    .restart local v9       #type:I
    :cond_4
    :try_start_3
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .line 4147
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    .line 4149
    .local v4, outerDepth:I
    :cond_5
    :goto_3
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    if-eq v9, v13, :cond_7

    if-ne v9, v14, :cond_6

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v4, :cond_7

    .line 4150
    :cond_6
    if-eq v9, v14, :cond_5

    const/4 v10, 0x4

    if-eq v9, v10, :cond_5

    .line 4153
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 4154
    const-string v10, "packagename"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 4155
    const/4 v10, 0x0

    const-string v11, "name"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_7

    move-result-object v3

    .line 4157
    .local v3, name:Ljava/lang/String;
    :try_start_4
    sget-object v10, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDisablePackageList:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    sget-object v10, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDisablePackageList:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_7

    goto :goto_3

    .line 4158
    :catch_1
    move-exception v0

    .line 4159
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_5
    const-string v10, "MotDevicePolicyManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed loading packagename "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_7

    goto :goto_3

    .line 4165
    .end local v0           #e:Ljava/lang/RuntimeException;
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #outerDepth:I
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v8           #tag:Ljava/lang/String;
    .end local v9           #type:I
    :catch_2
    move-exception v0

    move-object v6, v7

    .line 4166
    .end local v7           #stream:Ljava/io/FileInputStream;
    .local v0, e:Ljava/lang/NumberFormatException;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :goto_4
    const-string v10, "MotDevicePolicyManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed parsing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v4       #outerDepth:I
    .restart local v5       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7       #stream:Ljava/io/FileInputStream;
    .restart local v8       #tag:Ljava/lang/String;
    .restart local v9       #type:I
    :cond_7
    move-object v6, v7

    .line 4173
    .end local v7           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 4167
    .end local v4           #outerDepth:I
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v8           #tag:Ljava/lang/String;
    .end local v9           #type:I
    :catch_3
    move-exception v0

    .line 4168
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_5
    const-string v10, "MotDevicePolicyManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed parsing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4169
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_4
    move-exception v0

    .line 4170
    .local v0, e:Ljava/io/IOException;
    :goto_6
    const-string v10, "MotDevicePolicyManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed parsing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4171
    .end local v0           #e:Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 4172
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    :goto_7
    const-string v10, "MotDevicePolicyManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed parsing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4178
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_6
    move-exception v10

    goto/16 :goto_2

    .line 4171
    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v7       #stream:Ljava/io/FileInputStream;
    :catch_7
    move-exception v0

    move-object v6, v7

    .end local v7           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    goto :goto_7

    .line 4169
    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v7       #stream:Ljava/io/FileInputStream;
    :catch_8
    move-exception v0

    move-object v6, v7

    .end local v7           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    goto :goto_6

    .line 4167
    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v7       #stream:Ljava/io/FileInputStream;
    :catch_9
    move-exception v0

    move-object v6, v7

    .end local v7           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    goto :goto_5

    .line 4165
    :catch_a
    move-exception v0

    goto/16 :goto_4

    .line 4163
    :catch_b
    move-exception v0

    goto/16 :goto_0
.end method

.method private loadSettingsLocked()V
    .locals 15

    .prologue
    .line 882
    invoke-static {}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->makeJournaledFile()Lcom/android/internal/util/JournaledFile;

    move-result-object v4

    .line 883
    .local v4, journal:Lcom/android/internal/util/JournaledFile;
    const/4 v8, 0x0

    .line 884
    .local v8, stream:Ljava/io/FileInputStream;
    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v3

    .line 886
    .local v3, file:Ljava/io/File;
    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_7

    .line 887
    .end local v8           #stream:Ljava/io/FileInputStream;
    .local v9, stream:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 888
    .local v7, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v12, 0x0

    invoke-interface {v7, v9, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 892
    :cond_0
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    .local v11, type:I
    const/4 v12, 0x1

    if-eq v11, v12, :cond_1

    const/4 v12, 0x2

    if-ne v11, v12, :cond_0

    .line 894
    :cond_1
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 895
    .local v10, tag:Ljava/lang/String;
    const-string v12, "policies"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 896
    new-instance v12, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Settings do not start with policies tag: found "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_5

    .line 954
    .end local v7           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v10           #tag:Ljava/lang/String;
    .end local v11           #type:I
    :catch_0
    move-exception v2

    move-object v8, v9

    .line 955
    .end local v9           #stream:Ljava/io/FileInputStream;
    .local v2, e:Ljava/lang/NullPointerException;
    .restart local v8       #stream:Ljava/io/FileInputStream;
    :goto_0
    const-string v12, "MotDevicePolicyManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "failed parsing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    .end local v2           #e:Ljava/lang/NullPointerException;
    :goto_1
    if-eqz v8, :cond_2

    .line 967
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 973
    :cond_2
    :goto_2
    return-void

    .line 899
    .end local v8           #stream:Ljava/io/FileInputStream;
    .restart local v7       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v9       #stream:Ljava/io/FileInputStream;
    .restart local v10       #tag:Ljava/lang/String;
    .restart local v11       #type:I
    :cond_3
    :try_start_3
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    .line 900
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 902
    .local v6, outerDepth:I
    :cond_4
    :goto_3
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_e

    const/4 v12, 0x3

    if-ne v11, v12, :cond_5

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    if-le v12, v6, :cond_e

    .line 903
    :cond_5
    const/4 v12, 0x3

    if-eq v11, v12, :cond_4

    const/4 v12, 0x4

    if-eq v11, v12, :cond_4

    .line 906
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 907
    const-string v12, "admin"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 908
    const/4 v12, 0x0

    const-string v13, "name"

    invoke-interface {v7, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v5

    .line 910
    .local v5, name:Ljava/lang/String;
    :try_start_4
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->findAdmin(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDeviceAdminInfo;

    move-result-object v1

    .line 912
    .local v1, dai:Lcom/motorola/motepm/MotDeviceAdminInfo;
    if-eqz v1, :cond_4

    .line 913
    new-instance v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    invoke-direct {v0, v1}, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;-><init>(Lcom/motorola/motepm/MotDeviceAdminInfo;)V

    .line 914
    .local v0, ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    invoke-virtual {v0, v7}, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 915
    iget-object v12, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminMap:Ljava/util/HashMap;

    iget-object v13, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v13}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v12, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    iget-object v12, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_3

    .line 918
    .end local v0           #ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    .end local v1           #dai:Lcom/motorola/motepm/MotDeviceAdminInfo;
    :catch_1
    move-exception v2

    .line 919
    .local v2, e:Ljava/lang/RuntimeException;
    :try_start_5
    const-string v12, "MotDevicePolicyManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed loading admin "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_3

    .line 956
    .end local v2           #e:Ljava/lang/RuntimeException;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #outerDepth:I
    .end local v7           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v10           #tag:Ljava/lang/String;
    .end local v11           #type:I
    :catch_2
    move-exception v2

    move-object v8, v9

    .line 957
    .end local v9           #stream:Ljava/io/FileInputStream;
    .local v2, e:Ljava/lang/NumberFormatException;
    .restart local v8       #stream:Ljava/io/FileInputStream;
    :goto_4
    const-string v12, "MotDevicePolicyManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "failed parsing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 922
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .end local v8           #stream:Ljava/io/FileInputStream;
    .restart local v6       #outerDepth:I
    .restart local v7       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v9       #stream:Ljava/io/FileInputStream;
    .restart local v10       #tag:Ljava/lang/String;
    .restart local v11       #type:I
    :cond_6
    :try_start_6
    const-string v12, "password-set-enforced"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 923
    const/4 v12, 0x0

    const-string v13, "value"

    invoke-interface {v7, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_7

    const/4 v12, 0x1

    :goto_5
    iput-boolean v12, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mIsPasswordSetEnforced:Z

    .line 925
    invoke-static {v7}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_3

    .line 958
    .end local v6           #outerDepth:I
    .end local v7           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v10           #tag:Ljava/lang/String;
    .end local v11           #type:I
    :catch_3
    move-exception v2

    move-object v8, v9

    .line 959
    .end local v9           #stream:Ljava/io/FileInputStream;
    .local v2, e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v8       #stream:Ljava/io/FileInputStream;
    :goto_6
    const-string v12, "MotDevicePolicyManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "failed parsing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 923
    .end local v2           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v8           #stream:Ljava/io/FileInputStream;
    .restart local v6       #outerDepth:I
    .restart local v7       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v9       #stream:Ljava/io/FileInputStream;
    .restart local v10       #tag:Ljava/lang/String;
    .restart local v11       #type:I
    :cond_7
    const/4 v12, 0x0

    goto :goto_5

    .line 928
    :cond_8
    :try_start_7
    const-string v12, "password-changed-date"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 929
    const/4 v12, 0x0

    const-string v13, "value"

    invoke-interface {v7, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPasswordChangedDate:I

    .line 931
    invoke-static {v7}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_3

    .line 960
    .end local v6           #outerDepth:I
    .end local v7           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v10           #tag:Ljava/lang/String;
    .end local v11           #type:I
    :catch_4
    move-exception v2

    move-object v8, v9

    .line 961
    .end local v9           #stream:Ljava/io/FileInputStream;
    .local v2, e:Ljava/io/IOException;
    .restart local v8       #stream:Ljava/io/FileInputStream;
    :goto_7
    const-string v12, "MotDevicePolicyManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "failed parsing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 932
    .end local v2           #e:Ljava/io/IOException;
    .end local v8           #stream:Ljava/io/FileInputStream;
    .restart local v6       #outerDepth:I
    .restart local v7       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v9       #stream:Ljava/io/FileInputStream;
    .restart local v10       #tag:Ljava/lang/String;
    .restart local v11       #type:I
    :cond_9
    :try_start_8
    const-string v12, "expiration-warning-date"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 933
    const/4 v12, 0x0

    const-string v13, "value"

    invoke-interface {v7, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mExpirationWarningDate:I

    .line 935
    invoke-static {v7}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_3

    .line 962
    .end local v6           #outerDepth:I
    .end local v7           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v10           #tag:Ljava/lang/String;
    .end local v11           #type:I
    :catch_5
    move-exception v2

    move-object v8, v9

    .line 963
    .end local v9           #stream:Ljava/io/FileInputStream;
    .local v2, e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v8       #stream:Ljava/io/FileInputStream;
    :goto_8
    const-string v12, "MotDevicePolicyManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "failed parsing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 938
    .end local v2           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v8           #stream:Ljava/io/FileInputStream;
    .restart local v6       #outerDepth:I
    .restart local v7       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v9       #stream:Ljava/io/FileInputStream;
    .restart local v10       #tag:Ljava/lang/String;
    .restart local v11       #type:I
    :cond_a
    :try_start_9
    const-string v12, "password-simple"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 939
    const/4 v12, 0x0

    const-string v13, "value"

    invoke-interface {v7, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_b

    const/4 v12, 0x1

    :goto_9
    iput-boolean v12, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mActivePasswordSimple:Z

    .line 941
    invoke-static {v7}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_3

    .line 939
    :cond_b
    const/4 v12, 0x0

    goto :goto_9

    .line 944
    :cond_c
    const-string v12, "password-complexity"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 945
    const/4 v12, 0x0

    const-string v13, "value"

    invoke-interface {v7, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mActivePasswordComplexity:I

    .line 947
    invoke-static {v7}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_3

    .line 950
    :cond_d
    const-string v12, "MotDevicePolicyManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown tag: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    invoke-static {v7}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_3

    :cond_e
    move-object v8, v9

    .line 964
    .end local v9           #stream:Ljava/io/FileInputStream;
    .restart local v8       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 969
    .end local v6           #outerDepth:I
    .end local v7           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v10           #tag:Ljava/lang/String;
    .end local v11           #type:I
    :catch_6
    move-exception v12

    goto/16 :goto_2

    .line 962
    :catch_7
    move-exception v2

    goto/16 :goto_8

    .line 960
    :catch_8
    move-exception v2

    goto/16 :goto_7

    .line 958
    :catch_9
    move-exception v2

    goto/16 :goto_6

    .line 956
    :catch_a
    move-exception v2

    goto/16 :goto_4

    .line 954
    :catch_b
    move-exception v2

    goto/16 :goto_0
.end method

.method private static makeJournaledFile()Lcom/android/internal/util/JournaledFile;
    .locals 5

    .prologue
    .line 794
    const-string v0, "/data/system/mot_device_policies.xml"

    .line 795
    .local v0, base:Ljava/lang/String;
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/mot_device_policies.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string v4, "/data/system/mot_device_policies.xml.tmp"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1
.end method

.method private static makeJournaledFileForDisabledList()Lcom/android/internal/util/JournaledFile;
    .locals 5

    .prologue
    .line 4120
    const-string v0, "/data/system/mot_device_disabled_list.xml"

    .line 4121
    .local v0, base:Ljava/lang/String;
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/mot_device_disabled_list.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string v4, "/data/system/mot_device_disabled_list.xml.tmp"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1
.end method

.method private notifyAdminPolicyEnfocedResult(Landroid/content/ComponentName;IIZ)V
    .locals 4
    .parameter "who"
    .parameter "policy"
    .parameter "resultCode"
    .parameter "enabled"

    .prologue
    .line 4002
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4004
    const-string v1, "MotDevicePolicyManagerService"

    const-string v2, "notifyAdminPolicyEnfocedResult() is called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4005
    if-nez p1, :cond_0

    .line 4014
    :goto_0
    return-void

    .line 4008
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.app.action.ACTION_EPM_RESULT_RETURN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4009
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "policy_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4010
    const-string v1, "result_code"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4011
    const-string v1, "native_status"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4012
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4013
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private saveDisablelistLocked()V
    .locals 9

    .prologue
    .line 4184
    invoke-static {}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->makeJournaledFileForDisabledList()Lcom/android/internal/util/JournaledFile;

    move-result-object v2

    .line 4185
    .local v2, journal:Lcom/android/internal/util/JournaledFile;
    const/4 v4, 0x0

    .line 4187
    .local v4, stream:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4188
    .end local v4           #stream:Ljava/io/FileOutputStream;
    .local v5, stream:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 4189
    .local v3, out:Lorg/xmlpull/v1/XmlSerializer;
    const-string v6, "utf-8"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 4190
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 4191
    const/4 v6, 0x0

    const-string v7, "disabledlist"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4192
    sget-object v6, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDisablePackageList:Ljava/util/List;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDisablePackageList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 4193
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v6, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDisablePackageList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 4194
    const/4 v6, 0x0

    const-string v7, "packagename"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4195
    const/4 v7, 0x0

    const-string v8, "name"

    sget-object v6, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDisablePackageList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v3, v7, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4196
    const/4 v6, 0x0

    const-string v7, "packagename"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4193
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4199
    .end local v1           #i:I
    :cond_0
    const/4 v6, 0x0

    const-string v7, "disabledlist"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4200
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 4201
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 4202
    invoke-virtual {v2}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v4, v5

    .line 4213
    .end local v3           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v5           #stream:Ljava/io/FileOutputStream;
    .restart local v4       #stream:Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 4203
    :catch_0
    move-exception v0

    .line 4205
    .local v0, e:Ljava/io/IOException;
    :goto_2
    if-eqz v4, :cond_1

    .line 4206
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 4211
    :cond_1
    :goto_3
    invoke-virtual {v2}, Lcom/android/internal/util/JournaledFile;->rollback()V

    goto :goto_1

    .line 4208
    :catch_1
    move-exception v6

    goto :goto_3

    .line 4203
    .end local v0           #e:Ljava/io/IOException;
    .end local v4           #stream:Ljava/io/FileOutputStream;
    .restart local v5       #stream:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    move-object v4, v5

    .end local v5           #stream:Ljava/io/FileOutputStream;
    .restart local v4       #stream:Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method private saveSettingsLocked()V
    .locals 14

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 799
    invoke-static {}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->makeJournaledFile()Lcom/android/internal/util/JournaledFile;

    move-result-object v4

    .line 800
    .local v4, journal:Lcom/android/internal/util/JournaledFile;
    const/4 v7, 0x0

    .line 802
    .local v7, stream:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v8, v11, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 803
    .end local v7           #stream:Ljava/io/FileOutputStream;
    .local v8, stream:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 804
    .local v5, out:Lorg/xmlpull/v1/XmlSerializer;
    const-string v11, "utf-8"

    invoke-interface {v5, v8, v11}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 805
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 807
    const/4 v11, 0x0

    const-string v12, "policies"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 809
    iget-object v11, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 810
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 811
    iget-object v11, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 812
    .local v1, ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    .line 813
    const/4 v11, 0x0

    const-string v12, "admin"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 814
    const/4 v11, 0x0

    const-string v12, "name"

    iget-object v13, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v13}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 815
    invoke-virtual {v1, v5}, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 816
    const/4 v11, 0x0

    const-string v12, "admin"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 810
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 821
    .end local v1           #ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_1
    const/4 v11, 0x0

    const-string v12, "password-set-enforced"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 822
    const/4 v12, 0x0

    const-string v13, "value"

    iget-boolean v11, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mIsPasswordSetEnforced:Z

    if-ne v11, v9, :cond_4

    move v11, v9

    :goto_1
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v12, v13, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 823
    const/4 v11, 0x0

    const-string v12, "password-set-enforced"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 826
    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getPasswordExpirationPeriod()I

    move-result v6

    .line 828
    .local v6, period:I
    if-lez v6, :cond_5

    const v11, 0x7fffffff

    if-ge v6, v11, :cond_5

    .line 829
    iget v11, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPasswordChangedDate:I

    if-eqz v11, :cond_2

    .line 830
    const/4 v11, 0x0

    const-string v12, "password-changed-date"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 831
    const/4 v11, 0x0

    const-string v12, "value"

    iget v13, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPasswordChangedDate:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 832
    const/4 v11, 0x0

    const-string v12, "password-changed-date"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 834
    :cond_2
    iget v11, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mExpirationWarningDate:I

    if-eqz v11, :cond_3

    .line 835
    const/4 v11, 0x0

    const-string v12, "expiration-warning-date"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 836
    const/4 v11, 0x0

    const-string v12, "value"

    iget v13, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mExpirationWarningDate:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 837
    const/4 v11, 0x0

    const-string v12, "expiration-warning-date"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 846
    :cond_3
    :goto_2
    const/4 v11, 0x0

    const-string v12, "password-simple"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 847
    const/4 v11, 0x0

    const-string v12, "value"

    iget-boolean v13, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mActivePasswordSimple:Z

    if-ne v13, v9, :cond_7

    :goto_3
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v11, v12, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 848
    const/4 v9, 0x0

    const-string v10, "password-simple"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 852
    const/4 v9, 0x0

    const-string v10, "password-complexity"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 853
    const/4 v9, 0x0

    const-string v10, "value"

    iget v11, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mActivePasswordComplexity:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 854
    const/4 v9, 0x0

    const-string v10, "password-complexity"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 857
    const/4 v9, 0x0

    const-string v10, "policies"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 859
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 860
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 861
    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->commit()V

    .line 862
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->sendChangedNotification()V

    move-object v7, v8

    .line 873
    .end local v0           #N:I
    .end local v3           #i:I
    .end local v5           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v6           #period:I
    .end local v8           #stream:Ljava/io/FileOutputStream;
    .restart local v7       #stream:Ljava/io/FileOutputStream;
    :goto_4
    return-void

    .end local v7           #stream:Ljava/io/FileOutputStream;
    .restart local v0       #N:I
    .restart local v3       #i:I
    .restart local v5       #out:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v8       #stream:Ljava/io/FileOutputStream;
    :cond_4
    move v11, v10

    .line 822
    goto/16 :goto_1

    .line 840
    .restart local v6       #period:I
    :cond_5
    const/4 v11, 0x0

    iput v11, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPasswordChangedDate:I

    .line 841
    const/4 v11, 0x0

    iput v11, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mExpirationWarningDate:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 863
    .end local v0           #N:I
    .end local v3           #i:I
    .end local v5           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v6           #period:I
    :catch_0
    move-exception v2

    move-object v7, v8

    .line 865
    .end local v8           #stream:Ljava/io/FileOutputStream;
    .local v2, e:Ljava/io/IOException;
    .restart local v7       #stream:Ljava/io/FileOutputStream;
    :goto_5
    if-eqz v7, :cond_6

    .line 866
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 871
    :cond_6
    :goto_6
    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->rollback()V

    goto :goto_4

    .end local v2           #e:Ljava/io/IOException;
    .end local v7           #stream:Ljava/io/FileOutputStream;
    .restart local v0       #N:I
    .restart local v3       #i:I
    .restart local v5       #out:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v6       #period:I
    .restart local v8       #stream:Ljava/io/FileOutputStream;
    :cond_7
    move v9, v10

    .line 847
    goto :goto_3

    .line 868
    .end local v0           #N:I
    .end local v3           #i:I
    .end local v5           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v6           #period:I
    .end local v8           #stream:Ljava/io/FileOutputStream;
    .restart local v2       #e:Ljava/io/IOException;
    .restart local v7       #stream:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v9

    goto :goto_6

    .line 863
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    goto :goto_5
.end method

.method private sendChangedNotification()V
    .locals 2

    .prologue
    .line 876
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 877
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 878
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 879
    return-void
.end method

.method private sendPolicyChangedNotification(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 12
    .parameter "notification_id"
    .parameter "title"
    .parameter "details"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 3861
    iget-boolean v8, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v8, :cond_0

    .line 3862
    const-string v8, "MotDevicePolicyManagerService"

    const-string v9, "######sendPolicyChangedNotification is called"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3864
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3865
    .local v1, ident:J
    iget-object v8, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v9, "notification"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 3867
    .local v5, mNotificationMgr:Landroid/app/NotificationManager;
    const v0, 0x1080360

    .line 3868
    .local v0, icon:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 3870
    .local v6, when:J
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 3871
    .local v3, intent:Landroid/content/Intent;
    const/high16 v8, 0x1000

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3872
    new-instance v8, Landroid/app/Notification$Builder;

    iget-object v9, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v9, v10, v3, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v4

    .line 3881
    .local v4, mNotification:Landroid/app/Notification;
    invoke-virtual {v5, p1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 3882
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3883
    return-void
.end method

.method private setBluetoothAllowed(Landroid/content/ComponentName;Z)I
    .locals 10
    .parameter "who"
    .parameter "enabled"

    .prologue
    .line 2880
    monitor-enter p0

    .line 2881
    if-nez p1, :cond_0

    .line 2882
    :try_start_0
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "ComponentName is null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2932
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 2884
    :cond_0
    const/4 v5, 0x0

    .line 2886
    .local v5, result:I
    const/16 v7, 0x6e

    :try_start_1
    invoke-virtual {p0, p1, v7}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2888
    .local v0, ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isBluetoothAllowed(Landroid/content/ComponentName;)Z

    move-result v3

    .line 2889
    .local v3, mBeforeStatus:Z
    iget-boolean v4, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->bluetoothEnable:Z

    .line 2892
    .local v4, nativeStatus:Z
    iget-boolean v7, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->bluetoothEnable:Z

    if-eq v7, p2, :cond_3

    .line 2893
    iput-boolean p2, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->bluetoothEnable:Z

    .line 2894
    iget-boolean v7, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v7, :cond_1

    .line 2895
    const-string v7, "MotDevicePolicyManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "######setBluetoothAllowed, enabled is"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2897
    :cond_1
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    .line 2898
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isBluetoothAllowed(Landroid/content/ComponentName;)Z

    move-result v7

    if-eq v3, v7, :cond_3

    .line 2899
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.motorola.app.action.BLUETOOTH_ALLOWED_CHANGED"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2901
    .local v2, intent:Landroid/content/Intent;
    iget-boolean v7, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v7, :cond_2

    .line 2902
    const-string v8, "MotDevicePolicyManagerService"

    if-eqz p2, :cond_6

    const-string v7, "######setBluetoothAllowed, enable intent sent"

    :goto_0
    invoke-static {v8, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2905
    :cond_2
    const-string v7, "policy_name"

    const/16 v8, 0x9

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2906
    const-string v7, "componet_name"

    invoke-virtual {v2, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2907
    const-string v7, "native_status"

    invoke-virtual {v2, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2908
    iget-object v7, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2909
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isBluetoothAllowed(Landroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2910
    iget-object v7, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v8, 0x1040599

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 2912
    .local v6, title:Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v8, 0x10405a6

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2914
    .local v1, details:Ljava/lang/CharSequence;
    const/16 v7, 0x9

    invoke-direct {p0, v7, v6, v1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->sendPolicyChangedNotification(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 2926
    .end local v1           #details:Ljava/lang/CharSequence;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v6           #title:Ljava/lang/CharSequence;
    :cond_3
    :goto_1
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isBluetoothAllowed(Landroid/content/ComponentName;)Z

    move-result v7

    if-eq v7, p2, :cond_4

    .line 2927
    const/4 v5, -0x3

    .line 2929
    :cond_4
    iget-boolean v7, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v7, :cond_5

    .line 2930
    const-string v7, "MotDevicePolicyManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setBluetoothAllowed return value = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2931
    :cond_5
    monitor-exit p0

    return v5

    .line 2902
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_6
    const-string v7, "######setBluetoothAllowed, disable intent sent"

    goto :goto_0

    .line 2917
    :cond_7
    iget-object v7, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v8, 0x1040599

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 2919
    .restart local v6       #title:Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v8, 0x10405a7

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2921
    .restart local v1       #details:Ljava/lang/CharSequence;
    const/16 v7, 0x9

    invoke-direct {p0, v7, v6, v1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->sendPolicyChangedNotification(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private setBrowserAllowed(Landroid/content/ComponentName;Z)I
    .locals 12
    .parameter "who"
    .parameter "enabled"

    .prologue
    .line 2542
    monitor-enter p0

    .line 2543
    if-nez p1, :cond_0

    .line 2544
    :try_start_0
    new-instance v9, Ljava/lang/NullPointerException;

    const-string v10, "ComponentName is null"

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 2593
    :catchall_0
    move-exception v9

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 2546
    :cond_0
    const/4 v7, 0x0

    .line 2548
    .local v7, result:I
    const/16 v9, 0x68

    :try_start_1
    invoke-virtual {p0, p1, v9}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2550
    .local v1, ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    .line 2554
    .local v4, ident:J
    :try_start_2
    iget-boolean v9, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->browserEnabled:Z

    if-eq v9, p2, :cond_4

    .line 2555
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isBrowserAllowed(Landroid/content/ComponentName;)Z

    move-result v2

    .line 2556
    .local v2, before:Z
    iput-boolean p2, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->browserEnabled:Z

    .line 2557
    iget-boolean v9, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v9, :cond_1

    .line 2558
    const-string v9, "MotDevicePolicyManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "######setBrowserAllowed, enabled is"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2560
    :cond_1
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isBrowserAllowed(Landroid/content/ComponentName;)Z

    move-result v0

    .line 2562
    .local v0, after:Z
    if-eq v2, v0, :cond_3

    .line 2563
    new-instance v6, Landroid/content/Intent;

    const-string v9, "com.motorola.app.action.BROWSER_ALLOWED_CHANGED"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2564
    .local v6, intent:Landroid/content/Intent;
    iget-object v9, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2565
    iget-boolean v9, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v9, :cond_2

    .line 2566
    const-string v9, "MotDevicePolicyManagerService"

    const-string v10, "######setBrowserAllowed, policy change intent sent"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2568
    :cond_2
    if-nez v0, :cond_7

    .line 2569
    iget-object v9, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v10, 0x1040599

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 2571
    .local v8, title:Ljava/lang/CharSequence;
    iget-object v9, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v10, 0x104059a

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2580
    .local v3, details:Ljava/lang/CharSequence;
    :goto_0
    const/4 v9, 0x2

    invoke-direct {p0, v9, v8, v3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->sendPolicyChangedNotification(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 2582
    .end local v3           #details:Ljava/lang/CharSequence;
    .end local v6           #intent:Landroid/content/Intent;
    .end local v8           #title:Ljava/lang/CharSequence;
    :cond_3
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2585
    .end local v0           #after:Z
    .end local v2           #before:Z
    :cond_4
    :try_start_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2587
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isBrowserAllowed(Landroid/content/ComponentName;)Z

    move-result v9

    if-eq v9, p2, :cond_5

    .line 2588
    const/4 v7, -0x3

    .line 2590
    :cond_5
    iget-boolean v9, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v9, :cond_6

    .line 2591
    const-string v9, "MotDevicePolicyManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setBrowserAllowed return value = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2592
    :cond_6
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return v7

    .line 2575
    .restart local v0       #after:Z
    .restart local v2       #before:Z
    .restart local v6       #intent:Landroid/content/Intent;
    :cond_7
    :try_start_4
    iget-object v9, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v10, 0x1040599

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 2577
    .restart local v8       #title:Ljava/lang/CharSequence;
    iget-object v9, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v10, 0x104059b

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v3

    .restart local v3       #details:Ljava/lang/CharSequence;
    goto :goto_0

    .line 2585
    .end local v0           #after:Z
    .end local v2           #before:Z
    .end local v3           #details:Ljava/lang/CharSequence;
    .end local v6           #intent:Landroid/content/Intent;
    .end local v8           #title:Ljava/lang/CharSequence;
    :catchall_1
    move-exception v9

    :try_start_5
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private setConsumerEmailAllowed(Landroid/content/ComponentName;Z)I
    .locals 13
    .parameter "who"
    .parameter "enabled"

    .prologue
    .line 3200
    monitor-enter p0

    .line 3201
    if-nez p1, :cond_0

    .line 3202
    :try_start_0
    new-instance v10, Ljava/lang/NullPointerException;

    const-string v11, "ComponentName is null"

    invoke-direct {v10, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 3267
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 3204
    :cond_0
    const/4 v8, 0x0

    .line 3205
    .local v8, result:I
    const/16 v10, 0x6d

    :try_start_1
    invoke-virtual {p0, p1, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 3207
    .local v1, ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3208
    .local v4, ident:J
    iget-boolean v7, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->consumerEmailEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3210
    .local v7, nativeStatus:Z
    :try_start_2
    iget-boolean v10, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->consumerEmailEnabled:Z

    if-eq v10, p2, :cond_5

    .line 3211
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isConsumerEmailAllowed(Landroid/content/ComponentName;)Z

    move-result v2

    .line 3212
    .local v2, before:Z
    iput-boolean p2, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->consumerEmailEnabled:Z

    .line 3213
    iget-boolean v10, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v10, :cond_1

    .line 3214
    const-string v10, "MotDevicePolicyManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "######setConsumerEmailAllowed, enabled is"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3220
    :cond_1
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isConsumerEmailAllowed(Landroid/content/ComponentName;)Z

    move-result v0

    .line 3224
    .local v0, after:Z
    if-eq v2, v0, :cond_4

    .line 3226
    if-eqz v0, :cond_8

    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isPopImapEmailAllowed(Landroid/content/ComponentName;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 3227
    const-string v10, "MotDevicePolicyManagerService"

    const-string v11, "######setConsumerEmailAllowed, only enable gm"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3231
    :cond_2
    const-string v11, "com.google.android.gm"

    if-nez v0, :cond_a

    const/4 v10, 0x1

    :goto_0
    invoke-direct {p0, v11, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->setPackageDisabled(Ljava/lang/String;Z)V

    .line 3232
    new-instance v6, Landroid/content/Intent;

    const-string v10, "com.motorola.app.action.CONSUMER_EMAIL_ALLOWED_CHANGED"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3234
    .local v6, intent:Landroid/content/Intent;
    iget-boolean v10, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v10, :cond_3

    .line 3235
    const-string v10, "MotDevicePolicyManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "######setConsumerEmailAllowed, enabled is"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3237
    :cond_3
    const-string v10, "policy_name"

    const/16 v11, 0xa

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3238
    const-string v10, "componet_name"

    invoke-virtual {v6, v10, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3239
    const-string v10, "native_status"

    invoke-virtual {v6, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3240
    iget-object v10, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3241
    iget-object v10, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v11, 0x1040599

    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 3246
    .local v9, title:Ljava/lang/CharSequence;
    if-nez v0, :cond_b

    .line 3247
    iget-object v10, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v11, 0x10405aa

    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 3253
    .local v3, details:Ljava/lang/CharSequence;
    :goto_1
    const/16 v10, 0xa

    invoke-direct {p0, v10, v9, v3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->sendPolicyChangedNotification(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 3255
    .end local v3           #details:Ljava/lang/CharSequence;
    .end local v6           #intent:Landroid/content/Intent;
    .end local v9           #title:Ljava/lang/CharSequence;
    :cond_4
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3258
    .end local v0           #after:Z
    .end local v2           #before:Z
    :cond_5
    :try_start_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3261
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isConsumerEmailAllowed(Landroid/content/ComponentName;)Z

    move-result v10

    if-eq v10, p2, :cond_6

    .line 3262
    const/4 v8, -0x3

    .line 3264
    :cond_6
    iget-boolean v10, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v10, :cond_7

    .line 3265
    const-string v10, "MotDevicePolicyManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setConsumerEmailAllowed return value = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3266
    :cond_7
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v10, v8

    :goto_2
    return v10

    .line 3228
    .restart local v0       #after:Z
    .restart local v2       #before:Z
    :cond_8
    if-nez v0, :cond_9

    const/4 v10, 0x1

    :goto_3
    :try_start_4
    invoke-direct {p0, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->blockEmailPort(Z)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v10

    if-nez v10, :cond_2

    .line 3229
    const/4 v10, -0x1

    .line 3258
    :try_start_5
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3229
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 3228
    :cond_9
    const/4 v10, 0x0

    goto :goto_3

    .line 3231
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 3250
    .restart local v6       #intent:Landroid/content/Intent;
    .restart local v9       #title:Ljava/lang/CharSequence;
    :cond_b
    :try_start_6
    iget-object v10, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v11, 0x10405ab

    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v3

    .restart local v3       #details:Ljava/lang/CharSequence;
    goto :goto_1

    .line 3258
    .end local v0           #after:Z
    .end local v2           #before:Z
    .end local v3           #details:Ljava/lang/CharSequence;
    .end local v6           #intent:Landroid/content/Intent;
    .end local v9           #title:Ljava/lang/CharSequence;
    :catchall_1
    move-exception v10

    :try_start_7
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method private setInternetSharingAllowed(Landroid/content/ComponentName;Z)I
    .locals 15
    .parameter "who"
    .parameter "enabled"

    .prologue
    .line 2728
    monitor-enter p0

    .line 2729
    if-nez p1, :cond_0

    .line 2730
    :try_start_0
    new-instance v12, Ljava/lang/NullPointerException;

    const-string v13, "ComponentName is null"

    invoke-direct {v12, v13}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 2789
    :catchall_0
    move-exception v12

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 2732
    :cond_0
    const/4 v9, 0x0

    .line 2733
    .local v9, result:I
    const/16 v12, 0x6b

    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v12}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v2

    .line 2735
    .local v2, ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2738
    .local v4, ident:J
    const/4 v12, 0x0

    invoke-direct {p0, v12}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isInternetSharingAllowed(Landroid/content/ComponentName;)Z

    move-result v8

    .line 2739
    .local v8, preStatus:Z
    iget-boolean v7, v2, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->internetSharingEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2741
    .local v7, nativeStatus:Z
    :try_start_2
    iget-boolean v12, v2, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->internetSharingEnabled:Z

    move/from16 v0, p2

    if-eq v12, v0, :cond_2

    .line 2742
    move/from16 v0, p2

    iput-boolean v0, v2, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->internetSharingEnabled:Z

    .line 2743
    iget-boolean v12, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v12, :cond_1

    .line 2744
    const-string v12, "MotDevicePolicyManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "######set Internet Sharing Allowed, enabled is"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2747
    :cond_1
    const/4 v1, 0x1

    .line 2748
    .local v1, USB_result:Z
    if-nez p2, :cond_2

    .line 2749
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->epmUntetheringUSB()Z

    move-result v1

    .line 2750
    if-nez v1, :cond_2

    .line 2751
    const/4 v12, 0x1

    iput-boolean v12, v2, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->internetSharingEnabled:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2752
    const/4 v9, -0x1

    .line 2781
    :try_start_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2753
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v10, v9

    .line 2788
    .end local v1           #USB_result:Z
    .end local v9           #result:I
    .local v10, result:I
    :goto_0
    return v10

    .line 2757
    .end local v10           #result:I
    .restart local v9       #result:I
    :cond_2
    const/4 v12, 0x0

    :try_start_4
    invoke-direct {p0, v12}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isInternetSharingAllowed(Landroid/content/ComponentName;)Z

    move-result v12

    if-eq v8, v12, :cond_3

    .line 2758
    new-instance v6, Landroid/content/Intent;

    const-string v12, "com.motorola.app.action.INTERNET_SHARING_ALLOWED_CHANGED"

    invoke-direct {v6, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2760
    .local v6, intent:Landroid/content/Intent;
    const-string v12, "policy_name"

    const/4 v13, 0x7

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2762
    const-string v12, "componet_name"

    move-object/from16 v0, p1

    invoke-virtual {v6, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2763
    const-string v12, "native_status"

    invoke-virtual {v6, v12, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2764
    iget-object v12, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2765
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    .line 2766
    if-nez v8, :cond_6

    .line 2767
    iget-object v12, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v13, 0x1040599

    invoke-virtual {v12, v13}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 2769
    .local v11, title:Ljava/lang/CharSequence;
    iget-object v12, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v13, 0x104059e

    invoke-virtual {v12, v13}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2777
    .local v3, details:Ljava/lang/CharSequence;
    :goto_1
    const/4 v12, 0x6

    invoke-direct {p0, v12, v11, v3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->sendPolicyChangedNotification(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2781
    .end local v3           #details:Ljava/lang/CharSequence;
    .end local v6           #intent:Landroid/content/Intent;
    .end local v11           #title:Ljava/lang/CharSequence;
    :cond_3
    :try_start_5
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2783
    const/4 v12, 0x0

    invoke-direct {p0, v12}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isInternetSharingAllowed(Landroid/content/ComponentName;)Z

    move-result v12

    move/from16 v0, p2

    if-eq v12, v0, :cond_4

    .line 2784
    const/4 v9, -0x3

    .line 2786
    :cond_4
    iget-boolean v12, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v12, :cond_5

    .line 2787
    const-string v12, "MotDevicePolicyManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "set Internet Sharing Allowed return value = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2788
    :cond_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v10, v9

    .end local v9           #result:I
    .restart local v10       #result:I
    goto :goto_0

    .line 2772
    .end local v10           #result:I
    .restart local v6       #intent:Landroid/content/Intent;
    .restart local v9       #result:I
    :cond_6
    :try_start_6
    iget-object v12, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v13, 0x1040599

    invoke-virtual {v12, v13}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 2774
    .restart local v11       #title:Ljava/lang/CharSequence;
    iget-object v12, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v13, 0x104059f

    invoke-virtual {v12, v13}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v3

    .restart local v3       #details:Ljava/lang/CharSequence;
    goto :goto_1

    .line 2781
    .end local v3           #details:Ljava/lang/CharSequence;
    .end local v6           #intent:Landroid/content/Intent;
    .end local v11           #title:Ljava/lang/CharSequence;
    :catchall_1
    move-exception v12

    :try_start_7
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method private setPackageDisabled(Ljava/lang/String;Z)V
    .locals 1
    .parameter "packageName"
    .parameter "bDisabled"

    .prologue
    .line 4081
    monitor-enter p0

    .line 4082
    if-eqz p2, :cond_1

    .line 4083
    :try_start_0
    sget-object v0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDisablePackageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4084
    sget-object v0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDisablePackageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4085
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveDisablelistLocked()V

    .line 4093
    :cond_0
    :goto_0
    monitor-exit p0

    .line 4094
    return-void

    .line 4088
    :cond_1
    sget-object v0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDisablePackageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4089
    sget-object v0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDisablePackageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4090
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveDisablelistLocked()V

    goto :goto_0

    .line 4093
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setPopImapEmailAllowed(Landroid/content/ComponentName;Z)I
    .locals 13
    .parameter "who"
    .parameter "enabled"

    .prologue
    .line 3021
    monitor-enter p0

    .line 3022
    if-nez p1, :cond_0

    .line 3023
    :try_start_0
    new-instance v10, Ljava/lang/NullPointerException;

    const-string v11, "ComponentName is null"

    invoke-direct {v10, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 3090
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 3025
    :cond_0
    const/4 v8, 0x0

    .line 3027
    .local v8, result:I
    const/16 v10, 0x6c

    :try_start_1
    invoke-virtual {p0, p1, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 3029
    .local v1, ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3032
    .local v4, ident:J
    iget-boolean v7, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->pop3imap4EmailEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3034
    .local v7, nativeStatus:Z
    :try_start_2
    iget-boolean v10, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->pop3imap4EmailEnabled:Z

    if-eq v10, p2, :cond_7

    .line 3037
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isConsumerEmailAllowed(Landroid/content/ComponentName;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v10

    if-nez v10, :cond_1

    const/4 v10, 0x1

    if-ne p2, v10, :cond_1

    .line 3038
    const/4 v10, -0x3

    .line 3081
    :try_start_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3038
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3089
    :goto_0
    return v10

    .line 3041
    :cond_1
    const/4 v10, 0x0

    :try_start_4
    invoke-direct {p0, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isPopImapEmailAllowed(Landroid/content/ComponentName;)Z

    move-result v2

    .line 3042
    .local v2, before:Z
    iput-boolean p2, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->pop3imap4EmailEnabled:Z

    .line 3043
    iget-boolean v10, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v10, :cond_2

    .line 3044
    const-string v10, "MotDevicePolicyManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "######setPopImapEmailAllowed, enabled is"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3050
    :cond_2
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isPopImapEmailAllowed(Landroid/content/ComponentName;)Z

    move-result v0

    .line 3052
    .local v0, after:Z
    if-eq v2, v0, :cond_6

    .line 3053
    if-nez v0, :cond_3

    const/4 v10, 0x1

    :goto_1
    invoke-direct {p0, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->blockEmailPort(Z)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v10

    if-nez v10, :cond_4

    .line 3054
    const/4 v10, -0x1

    .line 3081
    :try_start_5
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3054
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 3053
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 3056
    :cond_4
    :try_start_6
    new-instance v6, Landroid/content/Intent;

    const-string v10, "com.motorola.app.action.POP3_IMAP4_EMAIL_ALLOWED_CHANGED"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3058
    .local v6, intent:Landroid/content/Intent;
    iget-boolean v10, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v10, :cond_5

    .line 3059
    const-string v10, "MotDevicePolicyManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "######setPopImapEmailAllowed "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3061
    :cond_5
    const-string v10, "policy_name"

    const/16 v11, 0x8

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3062
    const-string v10, "componet_name"

    invoke-virtual {v6, v10, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3063
    const-string v10, "native_status"

    invoke-virtual {v6, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3064
    iget-object v10, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3065
    if-nez v0, :cond_a

    .line 3066
    iget-object v10, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v11, 0x1040599

    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 3068
    .local v9, title:Ljava/lang/CharSequence;
    iget-object v10, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v11, 0x10405a8

    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 3076
    .local v3, details:Ljava/lang/CharSequence;
    :goto_2
    const/16 v10, 0x8

    invoke-direct {p0, v10, v9, v3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->sendPolicyChangedNotification(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 3078
    .end local v3           #details:Ljava/lang/CharSequence;
    .end local v6           #intent:Landroid/content/Intent;
    .end local v9           #title:Ljava/lang/CharSequence;
    :cond_6
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3081
    .end local v0           #after:Z
    .end local v2           #before:Z
    :cond_7
    :try_start_7
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3084
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isPopImapEmailAllowed(Landroid/content/ComponentName;)Z

    move-result v10

    if-eq v10, p2, :cond_8

    .line 3085
    const/4 v8, -0x3

    .line 3087
    :cond_8
    iget-boolean v10, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v10, :cond_9

    .line 3088
    const-string v10, "MotDevicePolicyManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setPopImapEmailAllowed return value = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3089
    :cond_9
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move v10, v8

    goto/16 :goto_0

    .line 3071
    .restart local v0       #after:Z
    .restart local v2       #before:Z
    .restart local v6       #intent:Landroid/content/Intent;
    :cond_a
    :try_start_8
    iget-object v10, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v11, 0x1040599

    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 3073
    .restart local v9       #title:Ljava/lang/CharSequence;
    iget-object v10, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v11, 0x10405a9

    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v3

    .restart local v3       #details:Ljava/lang/CharSequence;
    goto :goto_2

    .line 3081
    .end local v0           #after:Z
    .end local v2           #before:Z
    .end local v3           #details:Ljava/lang/CharSequence;
    .end local v6           #intent:Landroid/content/Intent;
    .end local v9           #title:Ljava/lang/CharSequence;
    :catchall_1
    move-exception v10

    :try_start_9
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
.end method

.method private setSDCardAllowed(Landroid/content/ComponentName;Z)I
    .locals 11
    .parameter "who"
    .parameter "enabled"

    .prologue
    .line 2416
    monitor-enter p0

    .line 2417
    if-nez p1, :cond_0

    .line 2418
    :try_start_0
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "ComponentName is null"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2490
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 2420
    :cond_0
    const/4 v6, 0x0

    .line 2422
    .local v6, result:I
    const/16 v8, 0x67

    :try_start_1
    invoke-virtual {p0, p1, v8}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2425
    .local v0, ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2428
    .local v3, ident:J
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isSDCardAllowed(Landroid/content/ComponentName;)Z

    move-result v1

    .line 2430
    .local v1, beforeStatus:Z
    iget-boolean v8, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->sdCardEnabled:Z

    if-eq v8, p2, :cond_5

    .line 2431
    iput-boolean p2, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->sdCardEnabled:Z

    .line 2432
    iget-boolean v8, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v8, :cond_1

    .line 2433
    const-string v8, "MotDevicePolicyManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "######setSDCardAllowed, enabled is"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2441
    :cond_1
    if-eqz p2, :cond_9

    .line 2442
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isSDCardAllowed(Landroid/content/ComponentName;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2443
    iget-boolean v8, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v8, :cond_2

    .line 2444
    const-string v8, "MotDevicePolicyManagerService"

    const-string v9, "######setSDCardAllowed, all admins allow camera"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2446
    :cond_2
    new-instance v5, Landroid/content/Intent;

    const-string v8, "com.motorola.app.action.SD_CARD_ALLOWED_CHANGED"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2448
    .local v5, intent:Landroid/content/Intent;
    iget-boolean v8, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v8, :cond_3

    .line 2449
    const-string v8, "MotDevicePolicyManagerService"

    const-string v9, "######setSDCardAllowed, enable intent sent"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2451
    :cond_3
    iget-object v8, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2462
    .end local v5           #intent:Landroid/content/Intent;
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2466
    :cond_5
    const/4 v8, 0x0

    :try_start_2
    invoke-direct {p0, v8}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isSDCardAllowed(Landroid/content/ComponentName;)Z

    move-result v8

    if-eq v1, v8, :cond_6

    .line 2467
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isSDCardAllowed(Landroid/content/ComponentName;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 2468
    iget-object v8, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v9, 0x1040599

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 2470
    .local v7, title:Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v9, 0x10405a5

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2478
    .local v2, details:Ljava/lang/CharSequence;
    :goto_1
    const/4 v8, 0x5

    invoke-direct {p0, v8, v7, v2}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->sendPolicyChangedNotification(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2481
    .end local v2           #details:Ljava/lang/CharSequence;
    .end local v7           #title:Ljava/lang/CharSequence;
    :cond_6
    :try_start_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2484
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isSDCardAllowed(Landroid/content/ComponentName;)Z

    move-result v8

    if-eq v8, p2, :cond_7

    .line 2485
    const/4 v6, -0x3

    .line 2487
    :cond_7
    iget-boolean v8, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v8, :cond_8

    .line 2488
    const-string v8, "MotDevicePolicyManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setSDCardAllowed return value = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2489
    :cond_8
    monitor-exit p0

    return v6

    .line 2455
    :cond_9
    new-instance v5, Landroid/content/Intent;

    const-string v8, "com.motorola.app.action.SD_CARD_ALLOWED_CHANGED"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2457
    .restart local v5       #intent:Landroid/content/Intent;
    iget-boolean v8, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v8, :cond_a

    .line 2458
    const-string v8, "MotDevicePolicyManagerService"

    const-string v9, "######setSDCardAllowed, disable intent sent"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2460
    :cond_a
    iget-object v8, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2473
    .end local v5           #intent:Landroid/content/Intent;
    :cond_b
    :try_start_4
    iget-object v8, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v9, 0x1040599

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 2475
    .restart local v7       #title:Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v9, 0x10405a4

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v2

    .restart local v2       #details:Ljava/lang/CharSequence;
    goto :goto_1

    .line 2481
    .end local v2           #details:Ljava/lang/CharSequence;
    .end local v7           #title:Ljava/lang/CharSequence;
    :catchall_1
    move-exception v8

    :try_start_5
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private setSimplePasswordAllowed(Landroid/content/ComponentName;Z)I
    .locals 5
    .parameter "who"
    .parameter "enabled"

    .prologue
    .line 2949
    monitor-enter p0

    .line 2950
    if-nez p1, :cond_0

    .line 2951
    :try_start_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "ComponentName is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2970
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2953
    :cond_0
    const/4 v1, 0x0

    .line 2955
    .local v1, result:I
    const/16 v2, 0x6a

    :try_start_1
    invoke-virtual {p0, p1, v2}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2957
    .local v0, ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-boolean v2, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->simplePasswordEnabled:Z

    if-eq v2, p2, :cond_2

    .line 2958
    iput-boolean p2, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->simplePasswordEnabled:Z

    .line 2959
    iget-boolean v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v2, :cond_1

    .line 2960
    const-string v2, "MotDevicePolicyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "######setSimplePasswordAllowed, enabled is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2962
    :cond_1
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    .line 2964
    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isSimplePasswordAllowed(Landroid/content/ComponentName;)Z

    move-result v2

    if-eq v2, p2, :cond_3

    .line 2965
    const/4 v1, -0x3

    .line 2967
    :cond_3
    iget-boolean v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v2, :cond_4

    .line 2968
    const-string v2, "MotDevicePolicyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSimplePasswordAllowed return value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2969
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1
.end method

.method private setTextMessageAllowed(Landroid/content/ComponentName;Z)I
    .locals 8
    .parameter "who"
    .parameter "enabled"

    .prologue
    .line 2640
    monitor-enter p0

    .line 2641
    if-nez p1, :cond_0

    .line 2642
    :try_start_0
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "ComponentName is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2680
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 2644
    :cond_0
    const/4 v3, 0x0

    .line 2646
    .local v3, result:I
    const/16 v5, 0x69

    :try_start_1
    invoke-virtual {p0, p1, v5}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2648
    .local v0, ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isTextMessageAllowed(Landroid/content/ComponentName;)Z

    move-result v2

    .line 2651
    .local v2, mBeforeStatus:Z
    iget-boolean v5, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->textMessageEnabled:Z

    if-eq v5, p2, :cond_2

    .line 2652
    iput-boolean p2, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->textMessageEnabled:Z

    .line 2653
    iget-boolean v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v5, :cond_1

    .line 2654
    const-string v5, "MotDevicePolicyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "######setTextMessagellowed, enabled is"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2656
    :cond_1
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    .line 2658
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isTextMessageAllowed(Landroid/content/ComponentName;)Z

    move-result v5

    if-eq v2, v5, :cond_2

    .line 2659
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isTextMessageAllowed(Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2660
    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v6, 0x1040599

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 2662
    .local v4, title:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v6, 0x104059c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2664
    .local v1, details:Ljava/lang/CharSequence;
    const/4 v5, 0x1

    invoke-direct {p0, v5, v4, v1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->sendPolicyChangedNotification(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 2674
    .end local v1           #details:Ljava/lang/CharSequence;
    .end local v4           #title:Ljava/lang/CharSequence;
    :cond_2
    :goto_0
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isTextMessageAllowed(Landroid/content/ComponentName;)Z

    move-result v5

    if-eq v5, p2, :cond_3

    .line 2675
    const/4 v3, -0x3

    .line 2677
    :cond_3
    iget-boolean v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v5, :cond_4

    .line 2678
    const-string v5, "MotDevicePolicyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setTextMessageAllowed return value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2679
    :cond_4
    monitor-exit p0

    return v3

    .line 2666
    :cond_5
    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v6, 0x1040599

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 2668
    .restart local v4       #title:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v6, 0x104059d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2670
    .restart local v1       #details:Ljava/lang/CharSequence;
    const/4 v5, 0x1

    invoke-direct {p0, v5, v4, v1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->sendPolicyChangedNotification(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private setWifiAllowed(Landroid/content/ComponentName;Z)I
    .locals 12
    .parameter "who"
    .parameter "enabled"

    .prologue
    .line 2286
    monitor-enter p0

    .line 2287
    if-nez p1, :cond_0

    .line 2288
    :try_start_0
    new-instance v9, Ljava/lang/NullPointerException;

    const-string v10, "ComponentName is null"

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 2367
    :catchall_0
    move-exception v9

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 2290
    :cond_0
    const/4 v7, 0x0

    .line 2292
    .local v7, result:I
    const/16 v9, 0x66

    :try_start_1
    invoke-virtual {p0, p1, v9}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2295
    .local v0, ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2298
    .local v3, ident:J
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isWifiAllowed(Landroid/content/ComponentName;)Z

    move-result v1

    .line 2299
    .local v1, beforeStatus:Z
    iget-boolean v6, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->wifiEnabled:Z

    .line 2301
    .local v6, nativeStatus:Z
    iget-boolean v9, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->wifiEnabled:Z

    if-eq v9, p2, :cond_5

    .line 2302
    iput-boolean p2, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->wifiEnabled:Z

    .line 2303
    iget-boolean v9, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v9, :cond_1

    .line 2304
    const-string v9, "MotDevicePolicyManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "######setWifiAllowed, enabled is"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2311
    :cond_1
    if-eqz p2, :cond_9

    .line 2312
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isWifiAllowed(Landroid/content/ComponentName;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2313
    iget-boolean v9, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v9, :cond_2

    .line 2314
    const-string v9, "MotDevicePolicyManagerService"

    const-string v10, "######setWifiAllowed, all admins allow wifi"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2316
    :cond_2
    new-instance v5, Landroid/content/Intent;

    const-string v9, "com.motorola.app.action.WIFI_ALLOWED_CHANGED"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2318
    .local v5, intent:Landroid/content/Intent;
    iget-boolean v9, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v9, :cond_3

    .line 2319
    const-string v9, "MotDevicePolicyManagerService"

    const-string v10, "######setWifiAllowed, enable intent sent"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    :cond_3
    const-string v9, "policy_name"

    const/4 v10, 0x1

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2322
    const-string v9, "componet_name"

    invoke-virtual {v5, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2323
    const-string v9, "native_status"

    invoke-virtual {v5, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2324
    iget-object v9, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2338
    .end local v5           #intent:Landroid/content/Intent;
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2342
    :cond_5
    const/4 v9, 0x0

    :try_start_2
    invoke-direct {p0, v9}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isWifiAllowed(Landroid/content/ComponentName;)Z

    move-result v9

    if-eq v1, v9, :cond_6

    .line 2343
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isWifiAllowed(Landroid/content/ComponentName;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 2344
    iget-object v9, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v10, 0x1040599

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 2346
    .local v8, title:Ljava/lang/CharSequence;
    iget-object v9, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v10, 0x10405a1

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2354
    .local v2, details:Ljava/lang/CharSequence;
    :goto_1
    const/4 v9, 0x3

    invoke-direct {p0, v9, v8, v2}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->sendPolicyChangedNotification(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2357
    .end local v2           #details:Ljava/lang/CharSequence;
    .end local v8           #title:Ljava/lang/CharSequence;
    :cond_6
    :try_start_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2361
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isWifiAllowed(Landroid/content/ComponentName;)Z

    move-result v9

    if-eq v9, p2, :cond_7

    .line 2362
    const/4 v7, -0x3

    .line 2364
    :cond_7
    iget-boolean v9, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v9, :cond_8

    .line 2365
    const-string v9, "MotDevicePolicyManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setWifiAllowed return value = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2366
    :cond_8
    monitor-exit p0

    return v7

    .line 2328
    :cond_9
    new-instance v5, Landroid/content/Intent;

    const-string v9, "com.motorola.app.action.WIFI_ALLOWED_CHANGED"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2330
    .restart local v5       #intent:Landroid/content/Intent;
    iget-boolean v9, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v9, :cond_a

    .line 2331
    const-string v9, "MotDevicePolicyManagerService"

    const-string v10, "######setWifiAllowed, disable intent sent"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2333
    :cond_a
    const-string v9, "policy_name"

    const/4 v10, 0x1

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2334
    const-string v9, "componet_name"

    invoke-virtual {v5, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2335
    const-string v9, "native_status"

    invoke-virtual {v5, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2336
    iget-object v9, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2349
    .end local v5           #intent:Landroid/content/Intent;
    :cond_b
    :try_start_4
    iget-object v9, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v10, 0x1040599

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 2351
    .restart local v8       #title:Ljava/lang/CharSequence;
    iget-object v9, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v10, 0x10405a0

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v2

    .restart local v2       #details:Ljava/lang/CharSequence;
    goto :goto_1

    .line 2357
    .end local v2           #details:Ljava/lang/CharSequence;
    .end local v8           #title:Ljava/lang/CharSequence;
    :catchall_1
    move-exception v9

    :try_start_5
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
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
    const/4 v6, 0x0

    .line 3529
    const/16 v5, 0xe

    invoke-virtual {p0, v6, v5}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3531
    .local v0, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 3532
    .local v3, ident:J
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.motorola.email.activity.setup.DPM_ACCOUNT_ADDITION"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3533
    .local v2, i:Landroid/content/Intent;
    const-string v5, "addrType"

    invoke-virtual {v2, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3534
    const-string v5, "hostType"

    invoke-virtual {v2, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3535
    const-string v5, "userNameType"

    invoke-virtual {v2, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3536
    const-string v5, "passwordType"

    invoke-virtual {v2, v5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3537
    const-string v5, "sslType"

    invoke-virtual {v2, v5, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3538
    invoke-static {}, Lmotorola/app/admin/MotEdmDb;->getInstance()Lmotorola/app/admin/MotEdmDb;

    move-result-object v1

    .line 3539
    .local v1, edmDb:Lmotorola/app/admin/MotEdmDb;
    iget-object v5, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v5}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getReceiverName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, p1, v6, v6}, Lmotorola/app/admin/MotEdmDb;->addUuid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3540
    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3541
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3542
    return-void
.end method

.method public configureVpn(Landroid/os/Bundle;)V
    .locals 8
    .parameter "extraArgs"

    .prologue
    const/4 v7, 0x0

    .line 3802
    const/16 v5, 0xb

    invoke-virtual {p0, v7, v5}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3804
    .local v0, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3805
    .local v2, ident:J
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.motorola.intent.action.ADD_VPN_PROFILE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3806
    .local v4, intent:Landroid/content/Intent;
    const-string v5, "bundle"

    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3807
    const/high16 v5, 0x1000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3808
    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3809
    invoke-static {}, Lmotorola/app/admin/MotEdmDb;->getInstance()Lmotorola/app/admin/MotEdmDb;

    move-result-object v1

    .line 3810
    .local v1, edmDb:Lmotorola/app/admin/MotEdmDb;
    iget-object v5, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v5}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getReceiverName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "VPN_ID"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v7, v7, v6}, Lmotorola/app/admin/MotEdmDb;->addUuid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3811
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3812
    return-void
.end method

.method public deleteSDcardData(Ljava/lang/String;)V
    .locals 7
    .parameter "pattrn"

    .prologue
    const/4 v6, 0x0

    .line 3675
    new-instance v4, Lmotorola/app/admin/EdmErrorCode;

    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lmotorola/app/admin/EdmErrorCode;-><init>(Landroid/content/Context;)V

    .line 3676
    .local v4, mEdmError:Lmotorola/app/admin/EdmErrorCode;
    const/4 v5, 0x4

    invoke-virtual {p0, v6, v5}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 3678
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3680
    .local v1, ident:J
    if-nez p1, :cond_2

    .line 3681
    :try_start_0
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->hasMountedRemovableSdcard()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3684
    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v6, "--wipe_sdcard_fast"

    invoke-static {v5, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->bootCommand(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3707
    :cond_0
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3708
    return-void

    .line 3687
    :cond_1
    const/16 v5, -0x7d2

    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v4, v5, v6}, Lmotorola/app/admin/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    .line 3689
    iget-boolean v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v5, :cond_0

    .line 3690
    const-string v5, "MotDevicePolicyManagerService"

    const-string v6, "EDM_ERRORCODE_SDCARD_NOTMOUNTED"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3704
    :catch_0
    move-exception v0

    .line 3705
    .local v0, e:Ljava/io/IOException;
    const-string v5, "MotDevicePolicyManagerService"

    const-string v6, "Failed requesting data wipe"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3695
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    :try_start_2
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.motorola.intent.action.DELETEPATTERN"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3696
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "REGEXPATTERN"

    invoke-virtual {v3, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3698
    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3700
    iget-boolean v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v5, :cond_0

    .line 3701
    const-string v5, "MotDevicePolicyManagerService"

    const-string v6, "Started REGEXPATTERN Intent .."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public deleteVpn(Landroid/os/Bundle;)V
    .locals 5
    .parameter "extraArgs"

    .prologue
    .line 3819
    const/4 v3, 0x0

    const/16 v4, 0xc

    invoke-virtual {p0, v3, v4}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 3821
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3822
    .local v0, ident:J
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.motorola.intent.action.DEL_VPN_PROFILE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3823
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "bundle"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3824
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3825
    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3826
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3827
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 3486
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.DUMP"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 3489
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission Denial: can\'t dump MotDevicePolicyManagerService from from pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3513
    :goto_0
    return-void

    .line 3495
    :cond_0
    new-instance v3, Landroid/util/PrintWriterPrinter;

    invoke-direct {v3, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 3497
    .local v3, p:Landroid/util/Printer;
    monitor-enter p0

    .line 3498
    :try_start_0
    const-string v4, "Current Device Policy Manager state:"

    invoke-interface {v3, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3500
    const-string v4, "  Enabled Device Admins:"

    invoke-interface {v3, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3501
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3502
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 3503
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 3504
    .local v1, ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    .line 3505
    const-string v4, "  "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v4}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3506
    const-string v4, ":"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3507
    const-string v4, "    "

    invoke-virtual {v1, v4, p2}, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3502
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3511
    .end local v1           #ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_2
    const-string v4, " "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3512
    monitor-exit p0

    goto :goto_0

    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public enforcePasswordSet(Z)V
    .locals 6
    .parameter "force"

    .prologue
    const/4 v5, 0x0

    .line 1393
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v3, v4}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1399
    :goto_0
    iget-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v3, :cond_0

    .line 1400
    const-string v3, "MotDevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enforcePasswordSet "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    :cond_0
    monitor-enter p0

    .line 1403
    :try_start_1
    iget-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mIsPasswordSetEnforced:Z

    if-eq v3, p1, :cond_3

    .line 1404
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v1

    .line 1406
    .local v1, ident:J
    :try_start_2
    iput-boolean p1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mIsPasswordSetEnforced:Z

    .line 1407
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    .line 1408
    iget-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v3, :cond_1

    .line 1409
    const-string v3, "MotDevicePolicyManagerService"

    const-string v4, "saveSettingsLocked "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    :cond_1
    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    .line 1413
    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.motorola.internal.intent.SHOW_KEYGUARD_NOW"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "android.permission.DEVICE_POWER"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1416
    iget-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v3, :cond_2

    .line 1417
    const-string v3, "MotDevicePolicyManagerService"

    const-string v4, "lockNow "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1421
    :cond_2
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1424
    .end local v1           #ident:J
    :cond_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1425
    return-void

    .line 1395
    :catch_0
    move-exception v0

    .line 1396
    .local v0, e:Ljava/lang/SecurityException;
    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BIND_DEVICE_ADMIN"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1421
    .end local v0           #e:Ljava/lang/SecurityException;
    .restart local v1       #ident:J
    :catchall_0
    move-exception v3

    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 1424
    .end local v1           #ident:J
    :catchall_1
    move-exception v3

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3
.end method

.method public findAdmin(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDeviceAdminInfo;
    .locals 7
    .parameter "adminName"

    .prologue
    const/4 v5, 0x0

    .line 774
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 775
    .local v2, resolveIntent:Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 776
    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 778
    .local v1, infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 779
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown admin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 783
    :cond_1
    :try_start_0
    new-instance v4, Lcom/motorola/motepm/MotDeviceAdminInfo;

    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v4, v6, v3}, Lcom/motorola/motepm/MotDeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v4

    .line 789
    :goto_0
    return-object v3

    .line 784
    :catch_0
    move-exception v0

    .line 785
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "MotDevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad device admin requested: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v5

    .line 786
    goto :goto_0

    .line 787
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 788
    .local v0, e:Ljava/io/IOException;
    const-string v3, "MotDevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad device admin requested: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v5

    .line 789
    goto :goto_0
.end method

.method getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    .locals 7
    .parameter "who"
    .parameter "reqPolicy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 706
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 707
    .local v2, callingUid:I
    if-eqz p1, :cond_2

    .line 708
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 709
    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-nez v1, :cond_0

    .line 710
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No active admin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 712
    :cond_0
    invoke-virtual {v1}, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v4

    if-eq v4, v2, :cond_1

    .line 713
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not owned by uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 716
    :cond_1
    iget-object v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v4, p2}, Lcom/motorola/motepm/MotDeviceAdminInfo;->usesPolicy(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 717
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v6}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not specify uses-policy for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v6, p2}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getTagForPolicy(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 723
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_2
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 724
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_5

    .line 725
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 726
    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    invoke-virtual {v1}, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v4

    if-ne v4, v2, :cond_4

    iget-object v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v4, p2}, Lcom/motorola/motepm/MotDeviceAdminInfo;->usesPolicy(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 727
    .end local v0           #N:I
    .end local v3           #i:I
    :cond_3
    return-object v1

    .line 724
    .restart local v0       #N:I
    .restart local v3       #i:I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 730
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_5
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No active admin owned by uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for policy #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    .locals 3
    .parameter "who"

    .prologue
    .line 695
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 696
    .local v0, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v2}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v2}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 701
    .end local v0           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :goto_0
    return-object v0

    .restart local v0       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActiveAdmins()Ljava/util/List;
    .locals 4
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
    .line 1091
    monitor-enter p0

    .line 1092
    :try_start_0
    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1093
    .local v0, N:I
    if-gtz v0, :cond_0

    .line 1094
    const/4 v2, 0x0

    monitor-exit p0

    .line 1100
    :goto_0
    return-object v2

    .line 1096
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1097
    .local v2, res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 1098
    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    iget-object v3, v3, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v3}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1097
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1100
    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 1101
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getActiveSyncID()V
    .locals 20

    .prologue
    .line 3549
    const/16 v17, 0x0

    const/16 v18, 0x9

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 3552
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 3553
    .local v9, ident:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "phone"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/TelephonyManager;

    .line 3554
    .local v13, mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 3555
    .local v3, activeSyncID:Ljava/lang/String;
    move-object v8, v3

    .line 3557
    .local v8, id:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 3558
    const-string v8, ""

    .line 3560
    :cond_0
    const/4 v15, 0x0

    .line 3561
    .local v15, sum:I
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v6

    .local v6, i:I
    :goto_0
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_1

    .line 3562
    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v17

    add-int v15, v15, v17

    goto :goto_0

    .line 3565
    :cond_1
    if-nez v15, :cond_6

    .line 3567
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v16

    .line 3568
    .local v16, uid:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v12

    .line 3569
    .local v12, len:I
    const/4 v6, 0x0

    .line 3570
    const/4 v11, 0x0

    .line 3571
    .local v11, l:I
    new-instance v14, Ljava/lang/StringBuilder;

    const/16 v17, 0x20

    move/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v14, sb:Ljava/lang/StringBuilder;
    move v7, v6

    .line 3572
    .end local v6           #i:I
    .local v7, i:I
    :goto_1
    const/16 v17, 0x20

    move/from16 v0, v17

    if-ge v11, v0, :cond_4

    if-ge v7, v12, :cond_4

    .line 3573
    add-int/lit8 v6, v7, 0x1

    .end local v7           #i:I
    .restart local v6       #i:I
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 3574
    .local v5, c:C
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v17

    if-nez v17, :cond_2

    invoke-static {v5}, Ljava/lang/Character;->isLetter(C)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 3575
    :cond_2
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3576
    add-int/lit8 v11, v11, 0x1

    :cond_3
    move v7, v6

    .line 3578
    .end local v6           #i:I
    .restart local v7       #i:I
    goto :goto_1

    .line 3579
    .end local v5           #c:C
    :cond_4
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3583
    .end local v7           #i:I
    .end local v11           #l:I
    .end local v12           #len:I
    .end local v14           #sb:Ljava/lang/StringBuilder;
    .end local v16           #uid:Ljava/lang/String;
    :goto_2
    move-object v3, v8

    .line 3584
    new-instance v6, Landroid/content/Intent;

    const-string v17, "android.active.intent.action.SYNC_ID"

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3585
    .local v6, i:Landroid/content/Intent;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 3586
    .local v4, bundle:Landroid/os/Bundle;
    const-string v17, "activeSyncID"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3587
    const-string v17, "bundle"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3589
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    .line 3590
    const-string v17, "MotDevicePolicyManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Active sync ID = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3592
    :cond_5
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3593
    return-void

    .line 3581
    .end local v4           #bundle:Landroid/os/Bundle;
    .local v6, i:I
    :cond_6
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Moto"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2
.end method

.method public getDeviceEncryptionStatus()I
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 4224
    iget-boolean v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v4, :cond_0

    const-string v4, "MotDevicePolicyManagerService"

    const-string v5, "getDeviceEncryptionStatus() is called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4225
    :cond_0
    const-string v4, "ro.crypto.state"

    const-string v5, "unsupported"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4226
    .local v2, status:Ljava/lang/String;
    const-string v4, "unsupported"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4227
    const/4 v3, 0x0

    .line 4241
    :cond_1
    :goto_0
    return v3

    .line 4232
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;->getInstance()Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;

    move-result-object v4

    const-string v5, "device_encr"

    invoke-virtual {v4, v5}, Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;->getEncryptionSystemProperty(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4235
    .local v1, encrDeviceStatus:I
    if-ne v1, v3, :cond_1

    .line 4236
    const/4 v3, 0x3

    goto :goto_0

    .line 4238
    .end local v1           #encrDeviceStatus:I
    :catch_0
    move-exception v0

    .line 4239
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "MotDevicePolicyManagerService"

    const-string v5, "getEncryptionSystemProperty() throws  IllegalArgumentException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDisabledPackages()Ljava/util/List;
    .locals 1
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
    .line 4073
    sget-object v0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDisablePackageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4074
    const/4 v0, 0x0

    .line 4076
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDisablePackageList:Ljava/util/List;

    goto :goto_0
.end method

.method public getManualDataSyncinRoaming(Landroid/content/ComponentName;)Z
    .locals 6
    .parameter "who"

    .prologue
    .line 2253
    const/4 v2, 0x0

    .line 2254
    .local v2, enabled:Z
    monitor-enter p0

    .line 2255
    if-eqz p1, :cond_1

    .line 2256
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2257
    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget-boolean v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->manualDatasyncinRoaming:Z

    :goto_0
    monitor-exit p0

    .line 2267
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return v4

    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_0
    move v4, v2

    .line 2257
    goto :goto_0

    .line 2259
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_1
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2260
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v0, :cond_2

    .line 2261
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 2262
    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-boolean v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->manualDatasyncinRoaming:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 2263
    const/4 v2, 0x1

    .line 2267
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_2
    monitor-exit p0

    move v4, v2

    goto :goto_1

    .line 2260
    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2268
    .end local v0           #N:I
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    .end local v3           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getPackageDisableInfo(Ljava/lang/String;)I
    .locals 8
    .parameter "packageName"

    .prologue
    const/4 v4, 0x0

    const/4 v5, -0x2

    .line 4097
    monitor-enter p0

    .line 4098
    :try_start_0
    sget-object v3, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDisablePackageList:Ljava/util/List;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDisablePackageList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4099
    :cond_0
    const/4 v3, -0x1

    monitor-exit p0

    .line 4115
    :goto_0
    return v3

    .line 4101
    :cond_1
    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_5

    .line 4103
    :try_start_1
    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 4104
    .local v2, packageList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 4105
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    .line 4106
    const/4 v3, 0x1

    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 4116
    .end local v1           #i:I
    .end local v2           #packageList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 4104
    .restart local v1       #i:I
    .restart local v2       #packageList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4109
    :cond_3
    :try_start_3
    iget-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v3, :cond_4

    const-string v3, "MotDevicePolicyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cannot be found!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0

    .line 4110
    :cond_4
    :try_start_4
    monitor-exit p0

    move v3, v4

    goto :goto_0

    .line 4111
    .end local v1           #i:I
    .end local v2           #packageList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catch_0
    move-exception v0

    .line 4112
    .local v0, e:Ljava/lang/SecurityException;
    monitor-exit p0

    move v3, v5

    goto :goto_0

    .line 4115
    .end local v0           #e:Ljava/lang/SecurityException;
    :cond_5
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v3, v5

    goto :goto_0
.end method

.method public getPasswordExpirationPeriod()I
    .locals 5

    .prologue
    .line 1637
    const v3, 0x7fffffff

    .line 1639
    .local v3, period:I
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1640
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1641
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 1643
    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordExpirationPeriod:I

    if-le v3, v4, :cond_0

    .line 1644
    iget v3, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordExpirationPeriod:I

    .line 1640
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1647
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_1
    return v3
.end method

.method public getPasswordExpirationStatus()I
    .locals 8

    .prologue
    .line 1656
    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getPasswordExpirationPeriod()I

    move-result v3

    .line 1658
    .local v3, period:I
    const v4, 0x7fffffff

    if-ge v3, v4, :cond_2

    .line 1659
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 1661
    .local v1, date:Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    div-long/2addr v4, v6

    long-to-int v0, v4

    .line 1662
    .local v0, currentDate:I
    iget v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPasswordChangedDate:I

    if-lez v4, :cond_2

    .line 1663
    iget v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPasswordChangedDate:I

    add-int/2addr v4, v3

    sub-int v2, v4, v0

    .line 1664
    .local v2, daysBeforefExpired:I
    if-gtz v2, :cond_1

    .line 1665
    const/4 v2, 0x0

    .line 1672
    .end local v0           #currentDate:I
    .end local v1           #date:Ljava/util/Date;
    .end local v2           #daysBeforefExpired:I
    :cond_0
    :goto_0
    return v2

    .line 1666
    .restart local v0       #currentDate:I
    .restart local v1       #date:Ljava/util/Date;
    .restart local v2       #daysBeforefExpired:I
    :cond_1
    const/16 v4, 0xe

    if-gt v2, v4, :cond_2

    iget v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mExpirationWarningDate:I

    if-ne v0, v4, :cond_0

    .line 1672
    .end local v0           #currentDate:I
    .end local v1           #date:Ljava/util/Date;
    .end local v2           #daysBeforefExpired:I
    :cond_2
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getPasswordHistoryLength(Landroid/content/ComponentName;)I
    .locals 5
    .parameter "who"

    .prologue
    .line 1489
    monitor-enter p0

    .line 1490
    const/4 v3, 0x0

    .line 1492
    .local v3, length:I
    if-eqz p1, :cond_1

    .line 1493
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1494
    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    :goto_0
    monitor-exit p0

    .line 1504
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return v4

    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_0
    move v4, v3

    .line 1494
    goto :goto_0

    .line 1497
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_1
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1498
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 1499
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 1500
    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    if-ge v3, v4, :cond_2

    .line 1501
    iget v3, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    .line 1498
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1504
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_3
    monitor-exit p0

    move v4, v3

    goto :goto_1

    .line 1505
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getPasswordMinimumComplexity(Landroid/content/ComponentName;)I
    .locals 7
    .parameter "who"

    .prologue
    .line 1803
    monitor-enter p0

    .line 1804
    const/4 v2, 0x0

    .line 1806
    .local v2, complexity:I
    if-eqz p1, :cond_1

    .line 1807
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1808
    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->minimumPasswordComplexity:I

    :goto_0
    monitor-exit p0

    .line 1820
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return v4

    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_0
    move v4, v2

    .line 1808
    goto :goto_0

    .line 1811
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_1
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1812
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v0, :cond_3

    .line 1813
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 1814
    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->minimumPasswordComplexity:I

    if-ge v2, v4, :cond_2

    .line 1815
    iget v2, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->minimumPasswordComplexity:I

    .line 1812
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1818
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_3
    iget-boolean v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v4, :cond_4

    .line 1819
    const-string v4, "MotDevicePolicyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPasswordMinimumComplexity return value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    :cond_4
    monitor-exit p0

    move v4, v2

    goto :goto_1

    .line 1821
    .end local v0           #N:I
    .end local v3           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getRecoveryPassword(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 8
    .parameter "who"

    .prologue
    .line 1739
    const/4 v3, 0x0

    .line 1740
    .local v3, password:Ljava/lang/String;
    monitor-enter p0

    .line 1741
    if-nez p1, :cond_0

    .line 1742
    :try_start_0
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "ComponentName is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1762
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1746
    :cond_0
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v5}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1748
    .local v0, ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-boolean v5, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordRecoveryEnabled:Z

    if-eqz v5, :cond_1

    .line 1750
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 1752
    .local v1, ident:J
    :try_start_2
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1753
    .local v4, utils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->createRecoveryPassword(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v3

    .line 1755
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1759
    .end local v1           #ident:J
    .end local v4           #utils:Lcom/android/internal/widget/LockPatternUtils;
    :cond_1
    iget-boolean v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v5, :cond_2

    .line 1760
    const-string v5, "MotDevicePolicyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getRecoveryPassword is"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    :cond_2
    monitor-exit p0

    .line 1763
    return-object v3

    .line 1755
    .restart local v1       #ident:J
    :catchall_1
    move-exception v5

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    .locals 9
    .parameter "comp"
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    .line 1290
    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BIND_DEVICE_ADMIN"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    monitor-enter p0

    .line 1294
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 1295
    .local v8, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-nez v8, :cond_0

    .line 1297
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p2, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1300
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 1314
    :goto_1
    return-void

    .line 1302
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.motorola.app.action.DEVICE_ADMIN_DISABLE_REQUESTED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1303
    .local v1, intent:Landroid/content/Intent;
    iget-object v0, v8, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v0}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1304
    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v3, Lcom/motorola/motepm/MotDevicePolicyManagerService$1;

    invoke-direct {v3, p0, p2}, Lcom/motorola/motepm/MotDevicePolicyManagerService$1;-><init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;Landroid/os/RemoteCallback;)V

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1313
    monitor-exit p0

    goto :goto_1

    .end local v1           #intent:Landroid/content/Intent;
    .end local v8           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1298
    .restart local v8       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getStorageCardEncryptionStatus()I
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 4251
    iget-boolean v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v4, :cond_0

    const-string v4, "MotDevicePolicyManagerService"

    const-string v5, "getStorageCardEncryptionStatus() is called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4252
    :cond_0
    const-string v4, "ro.crypto.state"

    const-string v5, "unsupported"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4253
    .local v2, status:Ljava/lang/String;
    const-string v4, "unsupported"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4254
    const/4 v3, 0x0

    .line 4269
    :cond_1
    :goto_0
    return v3

    .line 4260
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;->getInstance()Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;

    move-result-object v4

    const-string v5, "memory_encr"

    invoke-virtual {v4, v5}, Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;->getEncryptionSystemProperty(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4263
    .local v1, encrDeviceStatus:I
    if-ne v1, v3, :cond_1

    .line 4264
    const/4 v3, 0x3

    goto :goto_0

    .line 4266
    .end local v1           #encrDeviceStatus:I
    :catch_0
    move-exception v0

    .line 4267
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "MotDevicePolicyManagerService"

    const-string v5, "getEncryptionSystemProperty() throws  IllegalArgumentException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getVpnByID(Landroid/os/Bundle;)V
    .locals 3
    .parameter "extraArgs"

    .prologue
    .line 3790
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.intent.action.FETCH_VPN_PROFILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3791
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "bundle"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3792
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3793
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3794
    const-string v1, "MotDevicePolicyManagerService"

    const-string v2, "Sending intent to FETCH VPN"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3795
    return-void
.end method

.method public hasGrantedPolicy(Landroid/content/ComponentName;I)Z
    .locals 4
    .parameter "adminReceiver"
    .parameter "policyId"

    .prologue
    .line 1075
    monitor-enter p0

    .line 1076
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1077
    .local v0, administrator:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-nez v0, :cond_0

    .line 1078
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No active admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1082
    .end local v0           #administrator:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1080
    .restart local v0       #administrator:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_0
    :try_start_1
    iget-object v1, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v1, p2}, Lcom/motorola/motepm/MotDeviceAdminInfo;->usesPolicy(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/app/admin/DevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public installCertificate([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "data"
    .parameter "certPassword"
    .parameter "certName"
    .parameter "certType"

    .prologue
    const/4 v8, 0x0

    .line 3758
    const/16 v6, 0xd

    invoke-virtual {p0, v8, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3760
    .local v0, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    new-instance v5, Lmotorola/app/admin/EdmErrorCode;

    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lmotorola/app/admin/EdmErrorCode;-><init>(Landroid/content/Context;)V

    .line 3762
    .local v5, mEdmError:Lmotorola/app/admin/EdmErrorCode;
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    .line 3763
    :cond_0
    const-string v6, "MotDevicePolicyManagerService"

    const-string v7, "certPassword or certName are null"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3764
    const/16 v6, -0x1389

    invoke-virtual {v5, v6, v8}, Lmotorola/app/admin/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    .line 3781
    :goto_0
    return-void

    .line 3767
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3769
    .local v2, ident:J
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.motorola.intent.action.INSTALL_CERTIFICATE"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3770
    .local v4, intent:Landroid/content/Intent;
    const-string v6, "name"

    invoke-virtual {v4, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3771
    invoke-virtual {v4, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 3772
    const-string v6, "PASSWORD"

    invoke-virtual {v4, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3773
    const/high16 v6, 0x1000

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3774
    iget-boolean v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v6, :cond_2

    .line 3775
    const-string v6, "MotDevicePolicyManagerService"

    const-string v7, "Sending intent to install Certificate"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3777
    :cond_2
    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3778
    invoke-static {}, Lmotorola/app/admin/MotEdmDb;->getInstance()Lmotorola/app/admin/MotEdmDb;

    move-result-object v1

    .line 3779
    .local v1, edmDb:Lmotorola/app/admin/MotEdmDb;
    iget-object v6, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v6}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getReceiverName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v8, p3, v8}, Lmotorola/app/admin/MotEdmDb;->addUuid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3780
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public isActivePasswordSufficient()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 4037
    monitor-enter p0

    .line 4040
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 4042
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->isActivePasswordSufficient()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isActivePasswordSufficientForComplexity()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isPasswordNeedChangetoNotSimple()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getPasswordExpirationStatus()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit p0

    return v0

    .line 4046
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isActivePasswordSufficientForComplexity()Z
    .locals 2

    .prologue
    .line 1842
    monitor-enter p0

    .line 1843
    :try_start_0
    iget v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mActivePasswordComplexity:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getPasswordMinimumComplexity(Landroid/content/ComponentName;)I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1844
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isAdminActive(Landroid/content/ComponentName;)Z
    .locals 1
    .parameter "adminReceiver"

    .prologue
    .line 1069
    monitor-enter p0

    .line 1070
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1071
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isDeviceEncryptionEnabled(Landroid/content/ComponentName;)Z
    .locals 6
    .parameter "who"

    .prologue
    const/4 v3, 0x0

    .line 1934
    monitor-enter p0

    .line 1936
    if-eqz p1, :cond_1

    .line 1937
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1938
    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    .line 1939
    iget-boolean v3, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->deviceEncryptionEnabled:Z

    monitor-exit p0

    .line 1957
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :goto_0
    return v3

    .line 1941
    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_0
    monitor-exit p0

    goto :goto_0

    .line 1958
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1944
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1945
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 1946
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 1947
    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-boolean v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->deviceEncryptionEnabled:Z

    if-eqz v4, :cond_3

    .line 1948
    iget-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v3, :cond_2

    .line 1949
    const-string v3, "MotDevicePolicyManagerService"

    const-string v4, "######isDeviceEncryptionEnabled, TURE"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    :cond_2
    const/4 v3, 0x1

    monitor-exit p0

    goto :goto_0

    .line 1945
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1954
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_4
    iget-boolean v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v4, :cond_5

    .line 1955
    const-string v4, "MotDevicePolicyManagerService"

    const-string v5, "######isDeviceEncryptionEnabled, FALSE"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public isDeviceEncryptionRequired(Landroid/content/ComponentName;)Z
    .locals 6
    .parameter "who"

    .prologue
    const/4 v3, 0x0

    .line 2052
    monitor-enter p0

    .line 2054
    if-eqz p1, :cond_1

    .line 2055
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2056
    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    .line 2057
    iget-boolean v3, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->deviceEncryptionRequired:Z

    monitor-exit p0

    .line 2075
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :goto_0
    return v3

    .line 2059
    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_0
    monitor-exit p0

    goto :goto_0

    .line 2076
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2062
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2063
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 2064
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 2065
    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-boolean v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->deviceEncryptionRequired:Z

    if-eqz v4, :cond_3

    .line 2066
    iget-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v3, :cond_2

    .line 2067
    const-string v3, "MotDevicePolicyManagerService"

    const-string v4, "######isDeviceEncryptionRequired, TURE"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    :cond_2
    const/4 v3, 0x1

    monitor-exit p0

    goto :goto_0

    .line 2063
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2072
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_4
    iget-boolean v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v4, :cond_5

    .line 2073
    const-string v4, "MotDevicePolicyManagerService"

    const-string v5, "######isDeviceEncryptionRequired, FALSE"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public isPasswordNeedChangetoNotSimple()Z
    .locals 2

    .prologue
    .line 1373
    monitor-enter p0

    .line 1376
    const/4 v0, 0x0

    const/16 v1, 0x6a

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 1378
    iget-boolean v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mActivePasswordSimple:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isSimplePasswordAllowed(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1379
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isPasswordRecoveryEnabled(Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "who"

    .prologue
    const/4 v3, 0x0

    .line 1559
    monitor-enter p0

    .line 1561
    if-eqz p1, :cond_1

    .line 1562
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1563
    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    .line 1564
    iget-boolean v3, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordRecoveryEnabled:Z

    monitor-exit p0

    .line 1576
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :goto_0
    return v3

    .line 1566
    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_0
    monitor-exit p0

    goto :goto_0

    .line 1577
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1569
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1570
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 1571
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 1572
    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-boolean v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordRecoveryEnabled:Z

    if-eqz v4, :cond_2

    .line 1573
    const/4 v3, 0x1

    monitor-exit p0

    goto :goto_0

    .line 1570
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1576
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public isPasswordSetEnforced()Z
    .locals 3

    .prologue
    .line 1433
    iget-boolean v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v0, :cond_0

    .line 1434
    const-string v0, "MotDevicePolicyManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPasswordSetEnforced "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mIsPasswordSetEnforced:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mIsPasswordSetEnforced:Z

    return v0
.end method

.method public isPolicyAllowed(Landroid/content/ComponentName;I)Z
    .locals 3
    .parameter "who"
    .parameter "policy"

    .prologue
    .line 3377
    monitor-enter p0

    .line 3378
    const/4 v0, 0x1

    .line 3379
    .local v0, result:Z
    packed-switch p2, :pswitch_data_0

    .line 3420
    :pswitch_0
    :try_start_0
    iget-boolean v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v1, :cond_0

    .line 3421
    const-string v1, "MotDevicePolicyManagerService"

    const-string v2, "This policy doesn\'t support yet."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3424
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 3382
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isWifiAllowed(Landroid/content/ComponentName;)Z

    move-result v0

    .line 3383
    goto :goto_0

    .line 3385
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isSDCardAllowed(Landroid/content/ComponentName;)Z

    move-result v0

    .line 3386
    goto :goto_0

    .line 3389
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isSimplePasswordAllowed(Landroid/content/ComponentName;)Z

    move-result v0

    .line 3390
    goto :goto_0

    .line 3394
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isBrowserAllowed(Landroid/content/ComponentName;)Z

    move-result v0

    .line 3395
    goto :goto_0

    .line 3397
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isTextMessageAllowed(Landroid/content/ComponentName;)Z

    move-result v0

    .line 3398
    goto :goto_0

    .line 3401
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isBluetoothAllowed(Landroid/content/ComponentName;)Z

    move-result v0

    .line 3402
    goto :goto_0

    .line 3407
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isPopImapEmailAllowed(Landroid/content/ComponentName;)Z

    move-result v0

    .line 3408
    goto :goto_0

    .line 3412
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isInternetSharingAllowed(Landroid/content/ComponentName;)Z

    move-result v0

    .line 3413
    goto :goto_0

    .line 3416
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isConsumerEmailAllowed(Landroid/content/ComponentName;)Z

    move-result v0

    .line 3417
    goto :goto_0

    .line 3425
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3379
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_9
    .end packed-switch
.end method

.method public isPolicySupported(I)Z
    .locals 1
    .parameter "policyID"

    .prologue
    .line 4279
    const/4 v0, 0x0

    .line 4280
    .local v0, bRet:Z
    sparse-switch p1, :sswitch_data_0

    .line 4315
    :goto_0
    return v0

    .line 4306
    :sswitch_0
    const/4 v0, 0x1

    .line 4307
    goto :goto_0

    .line 4280
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_0
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
        0x68 -> :sswitch_0
        0x69 -> :sswitch_0
        0x6a -> :sswitch_0
    .end sparse-switch
.end method

.method public isStorageCardEncryptionRequired(Landroid/content/ComponentName;)Z
    .locals 6
    .parameter "who"

    .prologue
    const/4 v3, 0x0

    .line 2168
    monitor-enter p0

    .line 2170
    if-eqz p1, :cond_1

    .line 2171
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2172
    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    .line 2173
    iget-boolean v3, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->storageCardEncryptionRequired:Z

    monitor-exit p0

    .line 2191
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :goto_0
    return v3

    .line 2175
    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_0
    monitor-exit p0

    goto :goto_0

    .line 2192
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2178
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2179
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 2180
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 2181
    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-boolean v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->storageCardEncryptionRequired:Z

    if-eqz v4, :cond_3

    .line 2182
    iget-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v3, :cond_2

    .line 2183
    const-string v3, "MotDevicePolicyManagerService"

    const-string v4, "######isStorageCardEncryptionRequired, TURE"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2185
    :cond_2
    const/4 v3, 0x1

    monitor-exit p0

    goto :goto_0

    .line 2179
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2188
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_4
    iget-boolean v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v4, :cond_5

    .line 2189
    const-string v4, "MotDevicePolicyManagerService"

    const-string v5, "######isStorageCardEncryptionRequired, FALSE"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public packageHasActiveAdmins(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 1111
    monitor-enter p0

    .line 1112
    :try_start_0
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1113
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1114
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    iget-object v2, v2, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v2}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1115
    const/4 v2, 0x1

    monitor-exit p0

    .line 1118
    :goto_1
    return v2

    .line 1113
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1118
    :cond_1
    const/4 v2, 0x0

    monitor-exit p0

    goto :goto_1

    .line 1119
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;)V
    .locals 10
    .parameter "adminReceiver"

    .prologue
    const/4 v9, 0x1

    .line 1130
    monitor-enter p0

    .line 1131
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1132
    .local v0, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-nez v0, :cond_0

    .line 1133
    monitor-exit p0

    .line 1281
    :goto_0
    return-void

    .line 1135
    :cond_0
    invoke-virtual {v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    if-eq v6, v7, :cond_1

    .line 1136
    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 1144
    .local v2, ident:J
    :try_start_1
    iget-boolean v6, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordRecoveryEnabled:Z

    if-eqz v6, :cond_2

    .line 1145
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1146
    .local v5, utils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->createRecoveryPassword(Ljava/lang/String;Z)Ljava/lang/String;

    .line 1149
    .end local v5           #utils:Lcom/android/internal/widget/LockPatternUtils;
    :cond_2
    const-string v6, "MotDevicePolicyManagerService"

    const-string v7, "Deleting All Configurations of Admin"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    iget-object v6, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v6}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getReceiverName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->deleteAllConfigs(Ljava/lang/String;)V

    .line 1151
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->removeActiveAdminLocked(Landroid/content/ComponentName;)V

    .line 1155
    iget-boolean v6, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->deviceEncryptionEnabled:Z

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isDeviceEncryptionEnabled(Landroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1156
    iget-boolean v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v6, :cond_3

    iget-boolean v6, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mIntentDisabled:Z

    if-nez v6, :cond_3

    .line 1157
    const-string v6, "MotDevicePolicyManagerService"

    const-string v7, "######removeActiveAdmin, ACTION_DEVICE_ENCRYPTION_ENABLED_CHANGED sent"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    :cond_3
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.motorola.app.action.DEVICE_ENCRYPTION_ENABLED_CHANGED"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1162
    .local v4, intent:Landroid/content/Intent;
    iget-boolean v6, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mIntentDisabled:Z

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1164
    .end local v4           #intent:Landroid/content/Intent;
    :cond_4
    iget-boolean v6, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->deviceEncryptionRequired:Z

    if-eqz v6, :cond_6

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isDeviceEncryptionRequired(Landroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1165
    iget-boolean v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v6, :cond_5

    iget-boolean v6, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mIntentDisabled:Z

    if-nez v6, :cond_5

    .line 1166
    const-string v6, "MotDevicePolicyManagerService"

    const-string v7, "######removeActiveAdmin, ACTION_REQUIRE_DEVICE_ENCRYPTION_CHANGED sent"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    :cond_5
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.motorola.app.action.REQUIRE_DEVICE_ENCRYPTION_CHANGED"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1170
    .restart local v4       #intent:Landroid/content/Intent;
    iget-boolean v6, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mIntentDisabled:Z

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1172
    .end local v4           #intent:Landroid/content/Intent;
    :cond_6
    iget-boolean v6, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->storageCardEncryptionRequired:Z

    if-eqz v6, :cond_8

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isStorageCardEncryptionRequired(Landroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 1173
    iget-boolean v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v6, :cond_7

    iget-boolean v6, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mIntentDisabled:Z

    if-nez v6, :cond_7

    .line 1174
    const-string v6, "MotDevicePolicyManagerService"

    const-string v7, "######removeActiveAdmin, ACTION_REQUIRE_STORAGE_CARD_ENCRYPTION_CHANGED sent"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    :cond_7
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.motorola.app.action.REQUIRE_STORAGE_CARD_ENCRYPTION_CHANGED"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1179
    .restart local v4       #intent:Landroid/content/Intent;
    iget-boolean v6, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mIntentDisabled:Z

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1184
    .end local v4           #intent:Landroid/content/Intent;
    :cond_8
    iget-boolean v6, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->manualDatasyncinRoaming:Z

    if-ne v6, v9, :cond_9

    .line 1185
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getManualDataSyncinRoaming(Landroid/content/ComponentName;)Z

    move-result v1

    .line 1186
    .local v1, after:Z
    if-nez v1, :cond_9

    .line 1188
    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPhoneStateListener:Lcom/motorola/motepm/MotEPMPhoneStateListener;

    invoke-virtual {v6, v1}, Lcom/motorola/motepm/MotEPMPhoneStateListener;->changeBackgroundDataValue(Z)V

    .line 1189
    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPhoneStateListener:Lcom/motorola/motepm/MotEPMPhoneStateListener;

    invoke-virtual {v6}, Lcom/motorola/motepm/MotEPMPhoneStateListener;->unRegisterPhoneStateIntents()V

    .line 1195
    .end local v1           #after:Z
    :cond_9
    iget-boolean v6, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->wifiEnabled:Z

    if-nez v6, :cond_a

    .line 1196
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isWifiAllowed(Landroid/content/ComponentName;)Z

    move-result v1

    .line 1197
    .restart local v1       #after:Z
    if-ne v1, v9, :cond_a

    .line 1198
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.motorola.app.action.WIFI_ALLOWED_CHANGED"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1199
    .restart local v4       #intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1203
    .end local v1           #after:Z
    .end local v4           #intent:Landroid/content/Intent;
    :cond_a
    iget-boolean v6, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->sdCardEnabled:Z

    if-nez v6, :cond_b

    .line 1204
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isSDCardAllowed(Landroid/content/ComponentName;)Z

    move-result v1

    .line 1205
    .restart local v1       #after:Z
    if-ne v1, v9, :cond_b

    .line 1206
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.motorola.app.action.SD_CARD_ALLOWED_CHANGED"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1207
    .restart local v4       #intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1212
    .end local v1           #after:Z
    .end local v4           #intent:Landroid/content/Intent;
    :cond_b
    iget-boolean v6, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->browserEnabled:Z

    if-nez v6, :cond_d

    .line 1213
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isBrowserAllowed(Landroid/content/ComponentName;)Z

    move-result v1

    .line 1214
    .restart local v1       #after:Z
    if-ne v1, v9, :cond_d

    .line 1215
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.motorola.app.action.BROWSER_ALLOWED_CHANGED"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1216
    .restart local v4       #intent:Landroid/content/Intent;
    iget-boolean v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v6, :cond_c

    .line 1217
    const-string v6, "MotDevicePolicyManagerService"

    const-string v7, "######removeActiveAdmin,ACTION_BROWSER_ALLOWED_CHANGED sent"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    :cond_c
    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1224
    .end local v1           #after:Z
    .end local v4           #intent:Landroid/content/Intent;
    :cond_d
    iget-boolean v6, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->bluetoothEnable:Z

    if-nez v6, :cond_f

    .line 1225
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isBluetoothAllowed(Landroid/content/ComponentName;)Z

    move-result v1

    .line 1226
    .restart local v1       #after:Z
    if-ne v1, v9, :cond_f

    .line 1227
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.motorola.app.action.BLUETOOTH_ALLOWED_CHANGED"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1229
    .restart local v4       #intent:Landroid/content/Intent;
    iget-boolean v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v6, :cond_e

    .line 1230
    const-string v6, "MotDevicePolicyManagerService"

    const-string v7, "######removeActiveAdmin,ACTION_BLUETOOTH_ALLOWED_CHANGED sent"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    :cond_e
    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1240
    .end local v1           #after:Z
    .end local v4           #intent:Landroid/content/Intent;
    :cond_f
    iget-boolean v6, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->pop3imap4EmailEnabled:Z

    if-nez v6, :cond_10

    .line 1241
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isPopImapEmailAllowed(Landroid/content/ComponentName;)Z

    move-result v1

    .line 1242
    .restart local v1       #after:Z
    if-ne v1, v9, :cond_10

    .line 1243
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.motorola.app.action.POP3_IMAP4_EMAIL_ALLOWED_CHANGED"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1244
    .restart local v4       #intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1245
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->blockEmailPort(Z)Z

    .line 1250
    .end local v1           #after:Z
    .end local v4           #intent:Landroid/content/Intent;
    :cond_10
    iget-boolean v6, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->internetSharingEnabled:Z

    if-nez v6, :cond_11

    .line 1251
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isInternetSharingAllowed(Landroid/content/ComponentName;)Z

    move-result v1

    .line 1252
    .restart local v1       #after:Z
    if-ne v1, v9, :cond_11

    .line 1253
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.motorola.app.action.INTERNET_SHARING_ALLOWED_CHANGED"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1255
    .restart local v4       #intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1256
    iget-boolean v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v6, :cond_11

    .line 1257
    const-string v6, "MotDevicePolicyManagerService"

    const-string v7, "######removeActiveAdmin,ACTION_ALLOW_INTERNET_SHARING_CHANGED sent"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    .end local v1           #after:Z
    .end local v4           #intent:Landroid/content/Intent;
    :cond_11
    iget-boolean v6, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->consumerEmailEnabled:Z

    if-nez v6, :cond_12

    .line 1265
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isConsumerEmailAllowed(Landroid/content/ComponentName;)Z

    move-result v1

    .line 1266
    .restart local v1       #after:Z
    if-ne v1, v9, :cond_12

    .line 1268
    const-string v6, "com.google.android.gm"

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->setPackageDisabled(Ljava/lang/String;Z)V

    .line 1270
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.motorola.app.action.CONSUMER_EMAIL_ALLOWED_CHANGED"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1272
    .restart local v4       #intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1273
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->blockEmailPort(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1278
    .end local v1           #after:Z
    .end local v4           #intent:Landroid/content/Intent;
    :cond_12
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1280
    monitor-exit p0

    goto/16 :goto_0

    .end local v0           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    .end local v2           #ident:J
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 1278
    .restart local v0       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    .restart local v2       #ident:J
    :catchall_1
    move-exception v6

    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method removeActiveAdminLocked(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "adminReceiver"

    .prologue
    .line 754
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 755
    .local v0, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_0

    .line 756
    const-string v1, "com.motorola.app.action.DEVICE_ADMIN_DISABLED"

    invoke-virtual {p0, v0, v1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->sendAdminCommandLocked(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V

    .line 759
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 760
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    .line 765
    :cond_0
    return-void
.end method

.method public removeEmailAccount(Ljava/lang/String;)V
    .locals 13
    .parameter "accountName"

    .prologue
    .line 3604
    const/4 v11, 0x0

    const/16 v12, 0xa

    invoke-virtual {p0, v11, v12}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 3606
    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 3607
    .local v6, ident:J
    new-instance v9, Lmotorola/app/admin/EdmErrorCode;

    iget-object v11, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v9, v11}, Lmotorola/app/admin/EdmErrorCode;-><init>(Landroid/content/Context;)V

    .line 3608
    .local v9, mEdmErrorCode:Lmotorola/app/admin/EdmErrorCode;
    invoke-static {}, Lmotorola/app/admin/MotEdmDb;->getInstance()Lmotorola/app/admin/MotEdmDb;

    move-result-object v3

    .line 3609
    .local v3, edmDb:Lmotorola/app/admin/MotEdmDb;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x5

    if-ge v11, v12, :cond_1

    .line 3610
    :cond_0
    const/16 v11, -0xfa3

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Lmotorola/app/admin/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    .line 3646
    :goto_0
    return-void

    .line 3614
    :cond_1
    iget-object v11, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v11}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getReceiverName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lmotorola/app/admin/MotEdmDb;->getEmailUuids(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v4

    .line 3615
    .local v4, emailUuids:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    if-nez v4, :cond_2

    .line 3616
    const-string v11, "MotDevicePolicyManagerService"

    const-string v12, "remove email account failed. The caller is not the owner"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3617
    const/16 v11, -0xfa3

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Lmotorola/app/admin/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 3621
    :cond_2
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v8

    .line 3622
    .local v8, length:I
    new-array v2, v8, [Ljava/lang/String;

    .line 3623
    .local v2, allEmails:[Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 3625
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v8, :cond_3

    .line 3626
    aget-object v11, v2, v5

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 3630
    :cond_3
    if-lt v5, v8, :cond_5

    .line 3631
    const-string v11, "MotDevicePolicyManagerService"

    const-string v12, "remove email account failed. The caller is not the owner."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3632
    const/16 v11, -0xfa3

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Lmotorola/app/admin/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 3625
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3638
    :cond_5
    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.motorola.email.activity.setup.DPM_REMOVE_ACCOUNT"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3640
    .local v10, mIntent:Landroid/content/Intent;
    const/4 v11, 0x1

    new-array v0, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object p1, v0, v11

    .line 3641
    .local v0, accNames:[Ljava/lang/String;
    const-string v11, "addrType"

    invoke-virtual {v10, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 3642
    const-string v11, "LENGTH"

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3643
    iget-object v11, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3645
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public reportExpirationWarningShow()V
    .locals 7

    .prologue
    .line 1681
    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1684
    monitor-enter p0

    .line 1685
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v1

    .line 1687
    .local v1, ident:J
    :try_start_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1689
    .local v0, date:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/32 v5, 0x5265c00

    div-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mExpirationWarningDate:I

    .line 1690
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1692
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1694
    monitor-exit p0

    .line 1695
    return-void

    .line 1692
    .end local v0           #date:Ljava/util/Date;
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 1694
    .end local v1           #ident:J
    :catchall_1
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method

.method public reportPasswordChanged()V
    .locals 10

    .prologue
    .line 1702
    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    monitor-enter p0

    .line 1706
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v4

    .line 1709
    .local v4, ident:J
    :try_start_1
    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getPasswordExpirationPeriod()I

    move-result v6

    const v7, 0x7fffffff

    if-eq v6, v7, :cond_0

    .line 1710
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 1712
    .local v2, date:Ljava/util/Date;
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/32 v8, 0x5265c00

    div-long/2addr v6, v8

    long-to-int v6, v6

    iput v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPasswordChangedDate:I

    .line 1713
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    .line 1716
    .end local v2           #date:Ljava/util/Date;
    :cond_0
    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1717
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 1718
    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 1719
    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-object v6, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/motorola/motepm/MotDeviceAdminInfo;->usesPolicy(I)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-boolean v6, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordRecoveryEnabled:Z

    if-eqz v6, :cond_1

    .line 1721
    const-string v6, "com.motorola.app.action.ACTION_RECOVERY_PASSWORD_SAVE"

    invoke-virtual {p0, v1, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->sendAdminCommandLocked(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1717
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1726
    .end local v0           #N:I
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    .end local v3           #i:I
    :catchall_0
    move-exception v6

    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 1728
    .end local v4           #ident:J
    :catchall_1
    move-exception v6

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    .line 1726
    .restart local v0       #N:I
    .restart local v3       #i:I
    .restart local v4       #ident:J
    :cond_2
    :try_start_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1728
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1729
    return-void
.end method

.method public reportPolicyEnforcedResult(Landroid/content/ComponentName;IIZ)V
    .locals 5
    .parameter "who"
    .parameter "policy"
    .parameter "resultCode"
    .parameter "enabled"

    .prologue
    const/4 v4, -0x1

    .line 3948
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3951
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3952
    .local v0, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    const-string v1, "MotDevicePolicyManagerService"

    const-string v2, "reportPolicyEnforcedResult() is called "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3953
    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    .line 3998
    :cond_0
    :goto_0
    return-void

    .line 3956
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 3997
    :cond_2
    :goto_1
    :pswitch_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->notifyAdminPolicyEnfocedResult(Landroid/content/ComponentName;IIZ)V

    goto :goto_0

    .line 3960
    :pswitch_1
    if-ne p3, v4, :cond_2

    .line 3961
    iput-boolean p4, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->wifiEnabled:Z

    .line 3962
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    goto :goto_1

    .line 3967
    :pswitch_2
    if-ne p3, v4, :cond_2

    .line 3968
    iput-boolean p4, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->sdCardEnabled:Z

    .line 3969
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    goto :goto_1

    .line 3974
    :pswitch_3
    if-ne p3, v4, :cond_2

    .line 3975
    iput-boolean p4, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->bluetoothEnable:Z

    .line 3976
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    goto :goto_1

    .line 3981
    :pswitch_4
    if-ne p3, v4, :cond_3

    .line 3987
    :cond_3
    :pswitch_5
    if-ne p3, v4, :cond_2

    .line 3988
    iput-boolean p4, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->pop3imap4EmailEnabled:Z

    .line 3989
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    goto :goto_1

    .line 3956
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method sendAdminCommandLocked(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V
    .locals 2
    .parameter "admin"
    .parameter "action"

    .prologue
    .line 736
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 737
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v1}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 738
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 739
    return-void
.end method

.method sendAdminCommandLocked(Ljava/lang/String;I)V
    .locals 4
    .parameter "action"
    .parameter "reqPolicy"

    .prologue
    .line 742
    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 743
    .local v0, N:I
    if-lez v0, :cond_1

    .line 744
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 745
    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 746
    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-object v3, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v3, p2}, Lcom/motorola/motepm/MotDeviceAdminInfo;->usesPolicy(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 747
    invoke-virtual {p0, v1, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->sendAdminCommandLocked(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V

    .line 744
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 751
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    .end local v2           #i:I
    :cond_1
    return-void
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;Z)V
    .locals 14
    .parameter "adminReceiver"
    .parameter "refreshing"

    .prologue
    .line 995
    iget-object v11, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string v12, "android.permission.BIND_DEVICE_ADMIN"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 1000
    .local v8, perm:I
    iget-object v11, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string v12, "com.motorola.EPMServiceApp"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 1005
    .local v10, signature:I
    if-eqz v8, :cond_0

    .line 1007
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->is3LMAdmin(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1008
    const-string v11, "MotDevicePolicyManagerService"

    const-string v12, "setActiveAdmin for 3LM Admin"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->findAdmin(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDeviceAdminInfo;

    move-result-object v5

    .line 1024
    .local v5, info:Lcom/motorola/motepm/MotDeviceAdminInfo;
    if-nez v5, :cond_3

    .line 1025
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Bad admin: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1010
    .end local v5           #info:Lcom/motorola/motepm/MotDeviceAdminInfo;
    :cond_1
    if-nez v10, :cond_2

    .line 1011
    const-string v11, "MotDevicePolicyManagerService"

    const-string v12, "setActiveAdmin for MMI Admin"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1015
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Permission Denial for: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1016
    .local v6, msg:Ljava/lang/String;
    const-string v11, "MotDevicePolicyManagerService"

    invoke-static {v11, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    new-instance v11, Ljava/lang/SecurityException;

    invoke-direct {v11, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1027
    .end local v6           #msg:Ljava/lang/String;
    .restart local v5       #info:Lcom/motorola/motepm/MotDeviceAdminInfo;
    :cond_3
    monitor-enter p0

    .line 1028
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v3

    .line 1030
    .local v3, ident:J
    if-nez p2, :cond_4

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 1031
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Admin is already added"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1056
    :catchall_0
    move-exception v11

    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11

    .line 1058
    .end local v3           #ident:J
    :catchall_1
    move-exception v11

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v11

    .line 1033
    .restart local v3       #ident:J
    :cond_4
    :try_start_3
    new-instance v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    invoke-direct {v1, v5}, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;-><init>(Lcom/motorola/motepm/MotDeviceAdminInfo;)V

    .line 1034
    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-object v11, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v11, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    const/4 v9, -0x1

    .line 1036
    .local v9, replaceIndex:I
    if-eqz p2, :cond_5

    .line 1037
    iget-object v11, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1038
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_5

    .line 1039
    iget-object v11, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 1040
    .local v7, oldAdmin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-object v11, v7, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v11}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1041
    move v9, v2

    .line 1046
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v7           #oldAdmin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_5
    const/4 v11, -0x1

    if-ne v9, v11, :cond_7

    .line 1047
    iget-object v11, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1052
    :goto_2
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    .line 1053
    const-string v11, "com.motorola.app.action.DEVICE_ADMIN_ENABLED"

    invoke-virtual {p0, v1, v11}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->sendAdminCommandLocked(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1056
    :try_start_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1058
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1059
    return-void

    .line 1038
    .restart local v0       #N:I
    .restart local v2       #i:I
    .restart local v7       #oldAdmin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1049
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v7           #oldAdmin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_7
    :try_start_5
    iget-object v11, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11, v9, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public setActivePasswordComplexity(I)V
    .locals 5
    .parameter "complexity"

    .prologue
    .line 1826
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1828
    monitor-enter p0

    .line 1829
    :try_start_0
    iget v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mActivePasswordComplexity:I

    if-eq v2, p1, :cond_0

    .line 1830
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 1832
    .local v0, ident:J
    :try_start_1
    iput p1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mActivePasswordComplexity:I

    .line 1833
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1835
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1838
    .end local v0           #ident:J
    :cond_0
    monitor-exit p0

    .line 1839
    return-void

    .line 1835
    .restart local v0       #ident:J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1838
    .end local v0           #ident:J
    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public setActivePasswordSimpleState(Z)V
    .locals 5
    .parameter "isSimple"

    .prologue
    .line 1349
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    monitor-enter p0

    .line 1353
    :try_start_0
    iget-boolean v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mActivePasswordSimple:Z

    if-eq v2, p1, :cond_0

    .line 1354
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 1356
    .local v0, ident:J
    :try_start_1
    iput-boolean p1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mActivePasswordSimple:Z

    .line 1357
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1359
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1362
    .end local v0           #ident:J
    :cond_0
    monitor-exit p0

    .line 1363
    return-void

    .line 1359
    .restart local v0       #ident:J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1362
    .end local v0           #ident:J
    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public setAllowPolicies(Landroid/content/ComponentName;IZ)I
    .locals 2
    .parameter "who"
    .parameter "policy"
    .parameter "enabled"

    .prologue
    .line 3319
    monitor-enter p0

    .line 3320
    const/4 v0, -0x1

    .line 3322
    .local v0, result:I
    packed-switch p2, :pswitch_data_0

    .line 3365
    :goto_0
    :pswitch_0
    :try_start_0
    monitor-exit p0

    return v0

    .line 3325
    :pswitch_1
    invoke-direct {p0, p1, p3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->setWifiAllowed(Landroid/content/ComponentName;Z)I

    move-result v0

    .line 3326
    goto :goto_0

    .line 3328
    :pswitch_2
    invoke-direct {p0, p1, p3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->setSDCardAllowed(Landroid/content/ComponentName;Z)I

    move-result v0

    .line 3329
    goto :goto_0

    .line 3332
    :pswitch_3
    invoke-direct {p0, p1, p3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->setSimplePasswordAllowed(Landroid/content/ComponentName;Z)I

    move-result v0

    .line 3333
    goto :goto_0

    .line 3337
    :pswitch_4
    invoke-direct {p0, p1, p3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->setBrowserAllowed(Landroid/content/ComponentName;Z)I

    move-result v0

    .line 3338
    goto :goto_0

    .line 3340
    :pswitch_5
    invoke-direct {p0, p1, p3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->setTextMessageAllowed(Landroid/content/ComponentName;Z)I

    move-result v0

    .line 3341
    goto :goto_0

    .line 3344
    :pswitch_6
    invoke-direct {p0, p1, p3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->setBluetoothAllowed(Landroid/content/ComponentName;Z)I

    move-result v0

    .line 3345
    goto :goto_0

    .line 3350
    :pswitch_7
    invoke-direct {p0, p1, p3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->setPopImapEmailAllowed(Landroid/content/ComponentName;Z)I

    move-result v0

    .line 3351
    goto :goto_0

    .line 3355
    :pswitch_8
    invoke-direct {p0, p1, p3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->setInternetSharingAllowed(Landroid/content/ComponentName;Z)I

    move-result v0

    .line 3356
    goto :goto_0

    .line 3360
    :pswitch_9
    invoke-direct {p0, p1, p3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->setConsumerEmailAllowed(Landroid/content/ComponentName;Z)I

    move-result v0

    .line 3361
    goto :goto_0

    .line 3366
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3322
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_9
    .end packed-switch
.end method

.method public setDeviceEncryptionEnabled(Landroid/content/ComponentName;Z)I
    .locals 9
    .parameter "who"
    .parameter "enabled"

    .prologue
    .line 1857
    monitor-enter p0

    .line 1858
    if-nez p1, :cond_0

    .line 1859
    :try_start_0
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "ComponentName is null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1924
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1861
    :cond_0
    const/4 v4, 0x0

    .line 1863
    .local v4, result:I
    const/16 v6, 0x65

    :try_start_1
    invoke-virtual {p0, p1, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 1869
    .local v0, ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :try_start_2
    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.motorola.android.encryption.settings"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1879
    :try_start_3
    iget-boolean v6, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->deviceEncryptionEnabled:Z

    if-eq v6, p2, :cond_5

    .line 1880
    iget-boolean v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v6, :cond_1

    .line 1881
    const-string v6, "MotDevicePolicyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "######setDeviceEncryptionEnabled, enabled is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    :cond_1
    if-eqz p2, :cond_a

    .line 1886
    const/4 v3, 0x0

    .line 1887
    .local v3, isIntentNeeded:Z
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isDeviceEncryptionEnabled(Landroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1888
    const/4 v3, 0x1

    .line 1889
    iget-boolean v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v6, :cond_2

    .line 1890
    const-string v6, "MotDevicePolicyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "######setDeviceEncryptionEnabled, isIntentNeeded is"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    :cond_2
    iput-boolean p2, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->deviceEncryptionEnabled:Z

    .line 1894
    if-eqz v3, :cond_4

    .line 1895
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.motorola.app.action.DEVICE_ENCRYPTION_ENABLED_CHANGED"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1897
    .local v2, intent:Landroid/content/Intent;
    iget-boolean v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v6, :cond_3

    .line 1898
    const-string v6, "MotDevicePolicyManagerService"

    const-string v7, "######setDeviceEncryptionEnabled, enable intent sent"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    :cond_3
    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1915
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #isIntentNeeded:Z
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    .line 1918
    :cond_5
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isDeviceEncryptionEnabled(Landroid/content/ComponentName;)Z

    move-result v6

    if-eq v6, p2, :cond_6

    .line 1919
    const/4 v4, -0x3

    .line 1921
    :cond_6
    iget-boolean v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v6, :cond_7

    .line 1922
    const-string v6, "MotDevicePolicyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setDeviceEncryptionEnabled return value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    :cond_7
    monitor-exit p0

    move v5, v4

    .end local v4           #result:I
    .local v5, result:I
    :goto_1
    return v5

    .line 1870
    .end local v5           #result:I
    .restart local v4       #result:I
    :catch_0
    move-exception v1

    .line 1871
    .local v1, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-boolean v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v6, :cond_8

    .line 1872
    const-string v6, "MotDevicePolicyManagerService"

    const-string v7, "Encryption package can not be found on the system"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    :cond_8
    const/4 v4, -0x2

    .line 1874
    iget-boolean v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v6, :cond_9

    .line 1875
    const-string v6, "MotDevicePolicyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setDeviceEncryptionEnabled return value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    :cond_9
    monitor-exit p0

    move v5, v4

    .end local v4           #result:I
    .restart local v5       #result:I
    goto :goto_1

    .line 1905
    .end local v1           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5           #result:I
    .restart local v4       #result:I
    :cond_a
    iput-boolean p2, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->deviceEncryptionEnabled:Z

    .line 1906
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isDeviceEncryptionEnabled(Landroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1907
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.motorola.app.action.DEVICE_ENCRYPTION_ENABLED_CHANGED"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1909
    .restart local v2       #intent:Landroid/content/Intent;
    iget-boolean v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v6, :cond_b

    .line 1910
    const-string v6, "MotDevicePolicyManagerService"

    const-string v7, "######setDeviceEncryptionEnabled, disable intent sent"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    :cond_b
    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public setDeviceEncryptionRequired(Landroid/content/ComponentName;Z)I
    .locals 9
    .parameter "who"
    .parameter "enabled"

    .prologue
    .line 1974
    monitor-enter p0

    .line 1975
    if-nez p1, :cond_0

    .line 1976
    :try_start_0
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "ComponentName is null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2041
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1978
    :cond_0
    const/4 v4, 0x0

    .line 1980
    .local v4, result:I
    const/16 v6, 0x65

    :try_start_1
    invoke-virtual {p0, p1, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 1986
    .local v0, ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :try_start_2
    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.motorola.android.encryption.settings"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1997
    :try_start_3
    iget-boolean v6, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->deviceEncryptionRequired:Z

    if-eq v6, p2, :cond_5

    .line 1999
    iget-boolean v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v6, :cond_1

    .line 2000
    const-string v6, "MotDevicePolicyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "######setDeviceEncryptionRequired, enabled is"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    :cond_1
    if-eqz p2, :cond_a

    .line 2004
    const/4 v3, 0x0

    .line 2005
    .local v3, isIntentNeeded:Z
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isDeviceEncryptionRequired(Landroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2006
    const/4 v3, 0x1

    .line 2007
    iget-boolean v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v6, :cond_2

    .line 2008
    const-string v6, "MotDevicePolicyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "######setDeviceEncryptionRequired, isIntentNeeded is"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    :cond_2
    iput-boolean p2, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->deviceEncryptionRequired:Z

    .line 2012
    if-eqz v3, :cond_4

    .line 2013
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.motorola.app.action.REQUIRE_DEVICE_ENCRYPTION_CHANGED"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2015
    .local v2, intent:Landroid/content/Intent;
    iget-boolean v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v6, :cond_3

    .line 2016
    const-string v6, "MotDevicePolicyManagerService"

    const-string v7, "######setDeviceEncryptionRequired, enable intent sent"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    :cond_3
    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2033
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #isIntentNeeded:Z
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    .line 2035
    :cond_5
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isDeviceEncryptionRequired(Landroid/content/ComponentName;)Z

    move-result v6

    if-eq v6, p2, :cond_6

    .line 2036
    const/4 v4, -0x3

    .line 2038
    :cond_6
    iget-boolean v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v6, :cond_7

    .line 2039
    const-string v6, "MotDevicePolicyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setDeviceEncryptionRequired return value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    :cond_7
    monitor-exit p0

    move v5, v4

    .end local v4           #result:I
    .local v5, result:I
    :goto_1
    return v5

    .line 1987
    .end local v5           #result:I
    .restart local v4       #result:I
    :catch_0
    move-exception v1

    .line 1988
    .local v1, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-boolean v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v6, :cond_8

    .line 1989
    const-string v6, "MotDevicePolicyManagerService"

    const-string v7, "Encryption package can not be found on the system"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    :cond_8
    const/4 v4, -0x2

    .line 1991
    iget-boolean v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v6, :cond_9

    .line 1992
    const-string v6, "MotDevicePolicyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setDeviceEncryptionRequired return value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    :cond_9
    monitor-exit p0

    move v5, v4

    .end local v4           #result:I
    .restart local v5       #result:I
    goto :goto_1

    .line 2023
    .end local v1           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5           #result:I
    .restart local v4       #result:I
    :cond_a
    iput-boolean p2, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->deviceEncryptionRequired:Z

    .line 2024
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isDeviceEncryptionRequired(Landroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 2025
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.motorola.app.action.REQUIRE_DEVICE_ENCRYPTION_CHANGED"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2027
    .restart local v2       #intent:Landroid/content/Intent;
    iget-boolean v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v6, :cond_b

    .line 2028
    const-string v6, "MotDevicePolicyManagerService"

    const-string v7, "######setDeviceEncryptionRequired, disable intent sent"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    :cond_b
    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public setIntentDisabled(Landroid/content/ComponentName;Z)V
    .locals 4
    .parameter "adminReceiver"
    .parameter "disabled"

    .prologue
    .line 1325
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    iget-boolean v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v1, :cond_0

    .line 1329
    const-string v1, "MotDevicePolicyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIntentDisabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    :cond_0
    monitor-enter p0

    .line 1332
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1333
    .local v0, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_1

    .line 1334
    iput-boolean p2, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mIntentDisabled:Z

    .line 1338
    :goto_0
    monitor-exit p0

    .line 1339
    return-void

    .line 1336
    :cond_1
    const-string v1, "MotDevicePolicyManagerService"

    const-string v2, "setIntentDisabled: admin is null "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1338
    .end local v0           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setManualDataSyncinRoaming(Landroid/content/ComponentName;Z)I
    .locals 7
    .parameter "who"
    .parameter "enabled"

    .prologue
    .line 2209
    monitor-enter p0

    .line 2210
    if-nez p1, :cond_0

    .line 2211
    :try_start_0
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "ComponentName is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2243
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 2213
    :cond_0
    const/4 v3, 0x0

    .line 2215
    .local v3, result:I
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {p0, v4}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getManualDataSyncinRoaming(Landroid/content/ComponentName;)Z

    move-result v2

    .line 2217
    .local v2, before:Z
    const/16 v4, 0x64

    invoke-virtual {p0, p1, v4}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2220
    .local v1, ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-boolean v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->manualDatasyncinRoaming:Z

    if-eq v4, p2, :cond_1

    .line 2221
    iput-boolean p2, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->manualDatasyncinRoaming:Z

    .line 2222
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    .line 2225
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getManualDataSyncinRoaming(Landroid/content/ComponentName;)Z

    move-result v0

    .line 2226
    .local v0, after:Z
    if-eq v2, v0, :cond_2

    .line 2228
    if-eqz v0, :cond_5

    .line 2229
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPhoneStateListener:Lcom/motorola/motepm/MotEPMPhoneStateListener;

    invoke-virtual {v4}, Lcom/motorola/motepm/MotEPMPhoneStateListener;->registerForPhoneStateIntents()V

    .line 2230
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPhoneStateListener:Lcom/motorola/motepm/MotEPMPhoneStateListener;

    invoke-virtual {v4, v0}, Lcom/motorola/motepm/MotEPMPhoneStateListener;->changeBackgroundDataValue(Z)V

    .line 2237
    :cond_2
    :goto_0
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getManualDataSyncinRoaming(Landroid/content/ComponentName;)Z

    move-result v4

    if-eq v4, p2, :cond_3

    .line 2238
    const/4 v3, -0x3

    .line 2240
    :cond_3
    iget-boolean v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v4, :cond_4

    .line 2241
    const-string v4, "MotDevicePolicyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setManualDataSyncinRoaming return value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2242
    :cond_4
    monitor-exit p0

    return v3

    .line 2232
    :cond_5
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPhoneStateListener:Lcom/motorola/motepm/MotEPMPhoneStateListener;

    invoke-virtual {v4, v0}, Lcom/motorola/motepm/MotEPMPhoneStateListener;->changeBackgroundDataValue(Z)V

    .line 2233
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPhoneStateListener:Lcom/motorola/motepm/MotEPMPhoneStateListener;

    invoke-virtual {v4}, Lcom/motorola/motepm/MotEPMPhoneStateListener;->unRegisterPhoneStateIntents()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setPasswordExpirationPeriod(Landroid/content/ComponentName;I)I
    .locals 8
    .parameter "who"
    .parameter "period"

    .prologue
    .line 1592
    monitor-enter p0

    .line 1593
    if-nez p1, :cond_0

    .line 1594
    :try_start_0
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "ComponentName is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1628
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1596
    :cond_0
    const/4 v2, 0x0

    .line 1598
    .local v2, result:I
    if-gez p2, :cond_2

    .line 1599
    const/4 v2, -0x1

    .line 1600
    :try_start_1
    iget-boolean v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v4, :cond_1

    .line 1601
    const-string v4, "MotDevicePolicyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPasswordExpirationPeriod return value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    :cond_1
    monitor-exit p0

    move v3, v2

    .line 1627
    .end local v2           #result:I
    .local v3, result:I
    :goto_0
    return v3

    .line 1605
    .end local v3           #result:I
    .restart local v2       #result:I
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1607
    .local v0, ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget v4, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordExpirationPeriod:I

    if-eq v4, p2, :cond_4

    if-ltz p2, :cond_4

    .line 1608
    iput p2, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordExpirationPeriod:I

    .line 1610
    if-lez p2, :cond_7

    .line 1611
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 1613
    .local v1, date:Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    div-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPasswordChangedDate:I

    .line 1620
    .end local v1           #date:Ljava/util/Date;
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    .line 1622
    :cond_4
    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getPasswordExpirationPeriod()I

    move-result v4

    if-ge v4, p2, :cond_5

    .line 1623
    const/4 v2, -0x3

    .line 1625
    :cond_5
    iget-boolean v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v4, :cond_6

    .line 1626
    const-string v4, "MotDevicePolicyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPasswordExpirationPeriod return value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    :cond_6
    monitor-exit p0

    move v3, v2

    .end local v2           #result:I
    .restart local v3       #result:I
    goto :goto_0

    .line 1615
    .end local v3           #result:I
    .restart local v2       #result:I
    :cond_7
    if-nez p2, :cond_3

    .line 1616
    const v4, 0x7fffffff

    iput v4, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordExpirationPeriod:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public setPasswordHistoryLength(Landroid/content/ComponentName;I)I
    .locals 6
    .parameter "who"
    .parameter "length"

    .prologue
    .line 1454
    monitor-enter p0

    .line 1455
    if-nez p1, :cond_0

    .line 1456
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1479
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1458
    :cond_0
    const/4 v1, 0x0

    .line 1460
    .local v1, result:I
    if-gez p2, :cond_2

    .line 1461
    const/4 v1, -0x1

    .line 1462
    :try_start_1
    iget-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v3, :cond_1

    .line 1463
    const-string v3, "MotDevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPasswordHistoryLength return value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    :cond_1
    monitor-exit p0

    move v2, v1

    .line 1478
    .end local v1           #result:I
    .local v2, result:I
    :goto_0
    return v2

    .line 1467
    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1469
    .local v0, ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget v3, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    if-eq v3, p2, :cond_3

    if-ltz p2, :cond_3

    .line 1470
    iput p2, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    .line 1471
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    .line 1473
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getPasswordHistoryLength(Landroid/content/ComponentName;)I

    move-result v3

    if-le v3, p2, :cond_4

    .line 1474
    const/4 v1, -0x3

    .line 1476
    :cond_4
    iget-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v3, :cond_5

    .line 1477
    const-string v3, "MotDevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPasswordHistoryLength return value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v1

    .end local v1           #result:I
    .restart local v2       #result:I
    goto :goto_0
.end method

.method public setPasswordMinimumComplexity(Landroid/content/ComponentName;I)I
    .locals 6
    .parameter "who"
    .parameter "complexity"

    .prologue
    .line 1770
    monitor-enter p0

    .line 1771
    if-nez p1, :cond_0

    .line 1772
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1799
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1774
    :cond_0
    const/4 v1, 0x0

    .line 1776
    .local v1, result:I
    if-ltz p2, :cond_1

    const/4 v3, 0x4

    if-le p2, v3, :cond_3

    .line 1777
    :cond_1
    const/4 v1, -0x1

    .line 1778
    :try_start_1
    iget-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v3, :cond_2

    .line 1779
    const-string v3, "MotDevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPasswordMinimumComplexity return value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    :cond_2
    monitor-exit p0

    move v2, v1

    .line 1798
    .end local v1           #result:I
    .local v2, result:I
    :goto_0
    return v2

    .line 1783
    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1785
    .local v0, ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget v3, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->minimumPasswordComplexity:I

    if-eq v3, p2, :cond_5

    .line 1786
    iput p2, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->minimumPasswordComplexity:I

    .line 1787
    iget-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v3, :cond_4

    .line 1788
    const-string v3, "MotDevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "######setPasswordMinimumComplexity, complexity is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    :cond_4
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    .line 1793
    :cond_5
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getPasswordMinimumComplexity(Landroid/content/ComponentName;)I

    move-result v3

    if-le v3, p2, :cond_6

    .line 1794
    const/4 v1, -0x3

    .line 1796
    :cond_6
    iget-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v3, :cond_7

    .line 1797
    const-string v3, "MotDevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPasswordMinimumComplexity return value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    :cond_7
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v1

    .end local v1           #result:I
    .restart local v2       #result:I
    goto :goto_0
.end method

.method public setPasswordRecoveryEnabled(Landroid/content/ComponentName;Z)I
    .locals 6
    .parameter "who"
    .parameter "enabled"

    .prologue
    .line 1520
    monitor-enter p0

    .line 1521
    if-nez p1, :cond_0

    .line 1522
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1548
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1524
    :cond_0
    const/4 v1, 0x0

    .line 1526
    .local v1, result:I
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1528
    .local v0, ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordRecoveryEnabled:Z

    if-eq v3, p2, :cond_2

    .line 1531
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1532
    .local v2, utils:Lcom/android/internal/widget/LockPatternUtils;
    iget-boolean v3, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordRecoveryEnabled:Z

    if-eqz v3, :cond_5

    .line 1533
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->createRecoveryPassword(Ljava/lang/String;Z)Ljava/lang/String;

    .line 1539
    :cond_1
    :goto_0
    iput-boolean p2, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordRecoveryEnabled:Z

    .line 1540
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    .line 1542
    .end local v2           #utils:Lcom/android/internal/widget/LockPatternUtils;
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isPasswordRecoveryEnabled(Landroid/content/ComponentName;)Z

    move-result v3

    if-eq v3, p2, :cond_3

    .line 1543
    const/4 v1, -0x3

    .line 1545
    :cond_3
    iget-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v3, :cond_4

    .line 1546
    const-string v3, "MotDevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPasswordRecoveryEnabled return value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    :cond_4
    monitor-exit p0

    return v1

    .line 1535
    .restart local v2       #utils:Lcom/android/internal/widget/LockPatternUtils;
    :cond_5
    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1536
    const-string v3, "com.motorola.app.action.ACTION_RECOVERY_PASSWORD_SAVE"

    invoke-virtual {p0, v0, v3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->sendAdminCommandLocked(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setStorageCardEncryptionRequired(Landroid/content/ComponentName;Z)I
    .locals 9
    .parameter "who"
    .parameter "enabled"

    .prologue
    .line 2091
    monitor-enter p0

    .line 2092
    if-nez p1, :cond_0

    .line 2093
    :try_start_0
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "ComponentName is null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2158
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 2095
    :cond_0
    const/4 v4, 0x0

    .line 2097
    .local v4, result:I
    const/16 v6, 0x65

    :try_start_1
    invoke-virtual {p0, p1, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 2103
    .local v0, ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :try_start_2
    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.motorola.android.encryption.settings"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2114
    :try_start_3
    iget-boolean v6, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->storageCardEncryptionRequired:Z

    if-eq v6, p2, :cond_5

    .line 2115
    iget-boolean v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v6, :cond_1

    .line 2116
    const-string v6, "MotDevicePolicyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "######setStorageCardEncryptionRequired, enabled is"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2120
    :cond_1
    if-eqz p2, :cond_a

    .line 2121
    const/4 v3, 0x0

    .line 2122
    .local v3, isIntentNeeded:Z
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isStorageCardEncryptionRequired(Landroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2123
    const/4 v3, 0x1

    .line 2124
    iget-boolean v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v6, :cond_2

    .line 2125
    const-string v6, "MotDevicePolicyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "######setStorageCardEncryptionRequired, isIntentNeeded is"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2128
    :cond_2
    iput-boolean p2, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->storageCardEncryptionRequired:Z

    .line 2129
    if-eqz v3, :cond_4

    .line 2130
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.motorola.app.action.REQUIRE_STORAGE_CARD_ENCRYPTION_CHANGED"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2132
    .local v2, intent:Landroid/content/Intent;
    iget-boolean v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v6, :cond_3

    .line 2133
    const-string v6, "MotDevicePolicyManagerService"

    const-string v7, "######setStorageCardEncryptionRequired, enable intent sent"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2135
    :cond_3
    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2150
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #isIntentNeeded:Z
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    .line 2152
    :cond_5
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isStorageCardEncryptionRequired(Landroid/content/ComponentName;)Z

    move-result v6

    if-eq v6, p2, :cond_6

    .line 2153
    const/4 v4, -0x3

    .line 2155
    :cond_6
    iget-boolean v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v6, :cond_7

    .line 2156
    const-string v6, "MotDevicePolicyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setStorageCardEncryptionRequired return value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    :cond_7
    monitor-exit p0

    move v5, v4

    .end local v4           #result:I
    .local v5, result:I
    :goto_1
    return v5

    .line 2104
    .end local v5           #result:I
    .restart local v4       #result:I
    :catch_0
    move-exception v1

    .line 2105
    .local v1, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-boolean v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v6, :cond_8

    .line 2106
    const-string v6, "MotDevicePolicyManagerService"

    const-string v7, "Encryption package can not be found on the system"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    :cond_8
    const/4 v4, -0x2

    .line 2108
    iget-boolean v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v6, :cond_9

    .line 2109
    const-string v6, "MotDevicePolicyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setStorageCardEncryptionRequired return value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    :cond_9
    monitor-exit p0

    move v5, v4

    .end local v4           #result:I
    .restart local v5       #result:I
    goto :goto_1

    .line 2140
    .end local v1           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5           #result:I
    .restart local v4       #result:I
    :cond_a
    iput-boolean p2, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->storageCardEncryptionRequired:Z

    .line 2141
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isStorageCardEncryptionRequired(Landroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 2142
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.motorola.app.action.REQUIRE_STORAGE_CARD_ENCRYPTION_CHANGED"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2144
    .restart local v2       #intent:Landroid/content/Intent;
    iget-boolean v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v6, :cond_b

    .line 2145
    const-string v6, "MotDevicePolicyManagerService"

    const-string v7, "######setStorageCardEncryptionRequired, disable intent sent"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    :cond_b
    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public systemReady()V
    .locals 1

    .prologue
    .line 980
    monitor-enter p0

    .line 981
    :try_start_0
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->loadSettingsLocked()V

    .line 982
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->loadDisablelistLocked()V

    .line 983
    monitor-exit p0

    .line 984
    return-void

    .line 983
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public wipeData(ZZ)V
    .locals 15
    .parameter "wipeSd"
    .parameter "wipeSilent"

    .prologue
    .line 3437
    monitor-enter p0

    .line 3440
    const/4 v12, 0x0

    const/4 v13, 0x4

    :try_start_0
    invoke-virtual {p0, v12, v13}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 3442
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 3444
    .local v5, ident:J
    sget v2, Landroid/os/RecoverySystem;->WIPE_FLAG_NONE:I

    .line 3446
    .local v2, flag:I
    iget-object v12, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v13, "storage"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/storage/StorageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3447
    .local v10, sm:Landroid/os/storage/StorageManager;
    const/4 v3, 0x0

    .line 3449
    .local v3, hasSD:Z
    :try_start_1
    invoke-virtual {v10}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v11

    .line 3450
    .local v11, volumes:[Landroid/os/storage/StorageVolume;
    move-object v0, v11

    .local v0, arr$:[Landroid/os/storage/StorageVolume;
    array-length v7, v0

    .local v7, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v7, :cond_3

    aget-object v9, v0, v4

    .line 3451
    .local v9, s:Landroid/os/storage/StorageVolume;
    iget-boolean v12, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v12, :cond_0

    const-string v12, "MotDevicePolicyManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "volume = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3452
    :cond_0
    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v12

    if-nez v12, :cond_2

    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v12

    if-nez v12, :cond_2

    .line 3453
    sget v12, Landroid/os/RecoverySystem;->WIPE_INTERNAL_STORAGE:I

    or-int/2addr v2, v12

    .line 3454
    iget-boolean v12, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->DEBUG_POLICY:Z

    if-eqz v12, :cond_1

    const-string v12, "MotDevicePolicyManagerService"

    const-string v13, "%%%%internal storage flag added"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3450
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3455
    :cond_2
    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v12

    const-string v13, "/mnt/usbdisk"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string v12, "mounted"

    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v12

    if-eqz v12, :cond_1

    .line 3459
    const/4 v3, 0x1

    goto :goto_1

    .line 3462
    .end local v0           #arr$:[Landroid/os/storage/StorageVolume;
    .end local v4           #i$:I
    .end local v7           #len$:I
    .end local v9           #s:Landroid/os/storage/StorageVolume;
    .end local v11           #volumes:[Landroid/os/storage/StorageVolume;
    :catch_0
    move-exception v8

    .line 3463
    .local v8, re:Ljava/lang/Exception;
    :try_start_2
    const-string v12, "MotDevicePolicyManagerService"

    const-string v13, "Error in wipeData"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3465
    .end local v8           #re:Ljava/lang/Exception;
    :cond_3
    if-eqz p1, :cond_4

    if-eqz v3, :cond_4

    .line 3467
    sget v12, Landroid/os/RecoverySystem;->WIPE_FLAG_SD:I

    or-int/2addr v2, v12

    .line 3469
    :cond_4
    if-eqz p2, :cond_5

    .line 3470
    sget v12, Landroid/os/RecoverySystem;->WIPE_FLAG_SILENT:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    or-int/2addr v2, v12

    .line 3474
    :cond_5
    :try_start_3
    iget-object v12, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v12, v2}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 3478
    :try_start_4
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3480
    :goto_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3481
    return-void

    .line 3475
    :catch_1
    move-exception v1

    .line 3476
    .local v1, e:Ljava/io/IOException;
    :try_start_5
    const-string v12, "MotDevicePolicyManagerService"

    const-string v13, "Failed requesting data wipe"

    invoke-static {v12, v13, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3478
    :try_start_6
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .line 3480
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #flag:I
    .end local v3           #hasSD:Z
    .end local v5           #ident:J
    .end local v10           #sm:Landroid/os/storage/StorageManager;
    :catchall_0
    move-exception v12

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v12

    .line 3478
    .restart local v2       #flag:I
    .restart local v3       #hasSD:Z
    .restart local v5       #ident:J
    .restart local v10       #sm:Landroid/os/storage/StorageManager;
    :catchall_1
    move-exception v12

    :try_start_7
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method
