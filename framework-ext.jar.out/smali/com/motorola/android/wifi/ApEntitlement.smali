.class public Lcom/motorola/android/wifi/ApEntitlement;
.super Ljava/lang/Object;
.source "ApEntitlement.java"


# static fields
.field private static final ACTION_RESPONSE_SPG:Ljava/lang/String; = "com.motorola.SPG.ACTION_SPG_RESULT"

.field private static final ACTION_START_SPG:Ljava/lang/String; = "com.motorola.SPG.ACTION_REQUEST_START_SPG"

.field private static final APN_CHECK_STATE:Ljava/lang/String; = "APN_CHECK_STATE"

.field private static final APP_DATA:Ljava/lang/String; = "com.motorola.SPG.APP_DATA"

.field private static final AP_ENABLE:Ljava/lang/String; = "AP_ENABLE"

.field private static final DBG:Z = true

.field private static final ENTITLEMENT_CHECK_STATE_CHANGED:Ljava/lang/String; = "motorola.intent.ENTITLEMENT_STATE_CHANGE"

.field private static final ENTITLEMENT_CHECK_STATE_FAIL:I = 0x4

.field private static final ENTITLEMENT_CHECK_STATE_NONE:I = 0x1

.field private static final ENTITLEMENT_CHECK_STATE_SUCCESS:I = 0x3

.field private static final ENTITLEMENT_CHECK_STATE_VERIFYING:I = 0x2

.field private static final EXTRA_ENTITLEMENT_CHECK_NO_FEATURE:Ljava/lang/String; = "-3"

.field private static final EXTRA_ENTITLEMENT_CHECK_STATE:Ljava/lang/String; = "entitlement_state"

.field private static final EXTRA_ENTITLEMENT_CHECK_STATUS_CODE:Ljava/lang/String; = "entitlement_status_code"

.field private static final FEATURE_CODE:Ljava/lang/String; = "com.motorola.SPG.FEATURE_CODE"

.field private static final FEATURE_MHS:Ljava/lang/String; = "MHS"

.field private static final NOTIF_ID_OFFSET:I = 0x3039

.field private static final OPERATOR_NAME_ATT:Ljava/lang/String; = "att"

.field private static final OPERATOR_NAME_VZW:Ljava/lang/String; = "vzw"

.field private static final REQUEST_START_ENTITLEMENT_CHECK:Ljava/lang/String; = "com.motorola.intent.ACTION_ENTITLEMENT_CHECK"

.field private static final RESPONSE_SPG_SUCCESS:Ljava/lang/String; = "200"

.field private static final STATUS:Ljava/lang/String; = "com.motorola.SPG.STATUS"

.field private static final TAG:Ljava/lang/String; = "ApEntitlement"


# instance fields
.field private mCm:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mEntitlementCheckState:I

.field private mOperatorName:Ljava/lang/String;

.field public mPendingWifiEnable:Z

.field private mWifiAuthErrorNotif:Landroid/app/Notification;

.field private mWifiAuthNotif:Landroid/app/Notification;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiConnectErrorNotif:Landroid/app/Notification;

.field private mWifiConnectNotif:Landroid/app/Notification;

.field private mWifiDisconnectNotif:Landroid/app/Notification;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiReadyNotif:Landroid/app/Notification;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 71
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/android/wifi/ApEntitlement;->mEntitlementCheckState:I

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/android/wifi/ApEntitlement;->mPendingWifiEnable:Z

    .line 97
    iput-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement;->mOperatorName:Ljava/lang/String;

    .line 100
    iput-object p1, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    .line 102
    const-string v0, "com.motorola.service.entitlement"

    invoke-direct {p0, v0}, Lcom/motorola/android/wifi/ApEntitlement;->isPackageFound(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    const-string v0, "att"

    iput-object v0, p0, Lcom/motorola/android/wifi/ApEntitlement;->mOperatorName:Ljava/lang/String;

    .line 107
    :cond_0
    :goto_0
    const-string v0, "ApEntitlement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOperatorName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/wifi/ApEntitlement;->mOperatorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/motorola/android/wifi/ApEntitlement;->mOperatorName:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/motorola/android/wifi/ApEntitlement;->mOperatorName:Ljava/lang/String;

    const-string v1, "att"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 110
    iget-object v0, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/motorola/android/wifi/ApEntitlement$1;

    invoke-direct {v1, p0}, Lcom/motorola/android/wifi/ApEntitlement$1;-><init>(Lcom/motorola/android/wifi/ApEntitlement;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 210
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/motorola/android/wifi/ApEntitlement$3;

    invoke-direct {v1, p0}, Lcom/motorola/android/wifi/ApEntitlement$3;-><init>(Lcom/motorola/android/wifi/ApEntitlement;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "motorola.intent.ENTITLEMENT_STATE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 300
    return-void

    .line 104
    :cond_2
    const-string v0, "com.motorola.service.vzw.entitlement"

    invoke-direct {p0, v0}, Lcom/motorola/android/wifi/ApEntitlement;->isPackageFound(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const-string v0, "vzw"

    iput-object v0, p0, Lcom/motorola/android/wifi/ApEntitlement;->mOperatorName:Ljava/lang/String;

    goto :goto_0

    .line 172
    :cond_3
    iget-object v0, p0, Lcom/motorola/android/wifi/ApEntitlement;->mOperatorName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/android/wifi/ApEntitlement;->mOperatorName:Ljava/lang/String;

    const-string v1, "vzw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/motorola/android/wifi/ApEntitlement$2;

    invoke-direct {v1, p0}, Lcom/motorola/android/wifi/ApEntitlement$2;-><init>(Lcom/motorola/android/wifi/ApEntitlement;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.motorola.SPG.ACTION_SPG_RESULT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/motorola/android/wifi/ApEntitlement;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/motorola/android/wifi/ApEntitlement;->setWifiConnectNotif(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/motorola/android/wifi/ApEntitlement;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/motorola/android/wifi/ApEntitlement;->setWifiConnectErrorNotif(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/motorola/android/wifi/ApEntitlement;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/motorola/android/wifi/ApEntitlement;->mOperatorName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/motorola/android/wifi/ApEntitlement;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/motorola/android/wifi/ApEntitlement;->setWifiAuthErrorNotif(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/motorola/android/wifi/ApEntitlement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/motorola/android/wifi/ApEntitlement;->startSelfProvision()V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/android/wifi/ApEntitlement;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/motorola/android/wifi/ApEntitlement;->setWifiReadyNotif(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/motorola/android/wifi/ApEntitlement;)Landroid/net/ConnectivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/motorola/android/wifi/ApEntitlement;->mCm:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$302(Lcom/motorola/android/wifi/ApEntitlement;Landroid/net/ConnectivityManager;)Landroid/net/ConnectivityManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/motorola/android/wifi/ApEntitlement;->mCm:Landroid/net/ConnectivityManager;

    return-object p1
.end method

.method static synthetic access$400(Lcom/motorola/android/wifi/ApEntitlement;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/android/wifi/ApEntitlement;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/motorola/android/wifi/ApEntitlement;->setWifiAuthNotif(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/motorola/android/wifi/ApEntitlement;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/motorola/android/wifi/ApEntitlement;->mEntitlementCheckState:I

    return v0
.end method

.method static synthetic access$602(Lcom/motorola/android/wifi/ApEntitlement;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/motorola/android/wifi/ApEntitlement;->mEntitlementCheckState:I

    return p1
.end method

.method static synthetic access$700(Lcom/motorola/android/wifi/ApEntitlement;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$800(Lcom/motorola/android/wifi/ApEntitlement;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$802(Lcom/motorola/android/wifi/ApEntitlement;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p1
.end method

.method static synthetic access$900(Lcom/motorola/android/wifi/ApEntitlement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/motorola/android/wifi/ApEntitlement;->restoreWifiAndTurnOffAp()V

    return-void
.end method

.method private createUsbTetherAuthIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 560
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 561
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x4000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private isPackageFound(Ljava/lang/String;)Z
    .locals 5
    .parameter "packageName"

    .prologue
    const/4 v1, 0x1

    .line 311
    const-string v2, "ApEntitlement"

    const-string v3, "isPackageFound begins"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :try_start_0
    iget-object v2, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    const-string v2, "ApEntitlement"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :goto_0
    return v1

    .line 315
    :catch_0
    move-exception v0

    .line 317
    .local v0, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "ApEntitlement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private restoreWifiAndTurnOffAp()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 601
    const-string v4, "ApEntitlement"

    const-string v5, "Inside restoreWifiAndTurnOffAp"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const/4 v1, 0x0

    .line 603
    .local v1, wifiSavedState:I
    iget-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 605
    :try_start_0
    iget-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_saved_state"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 609
    :goto_0
    iget-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    .line 612
    .local v0, isAirplaneMode:Z
    :goto_1
    const-string v4, "ApEntitlement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAirplaneMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "wifiSavedState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    if-nez v0, :cond_0

    if-ne v1, v2, :cond_0

    .line 614
    iget-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 615
    iget-object v2, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "wifi_saved_state"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 617
    :cond_0
    return-void

    .end local v0           #isAirplaneMode:Z
    :cond_1
    move v0, v3

    .line 609
    goto :goto_1

    .line 606
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private setWifiAuthErrorNotif(Z)V
    .locals 7
    .parameter "visible"

    .prologue
    .line 522
    const-string v4, "ApEntitlement"

    const-string v5, "setWifiAuthErrorNotif()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 525
    .local v2, notifManager:Landroid/app/NotificationManager;
    if-nez v2, :cond_0

    .line 551
    :goto_0
    return-void

    .line 529
    :cond_0
    iget-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    const v5, 0x1040667

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 530
    .local v3, title:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    const v5, 0x1040668

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 532
    .local v0, message:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiAuthErrorNotif:Landroid/app/Notification;

    if-nez v4, :cond_1

    .line 533
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    iput-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiAuthErrorNotif:Landroid/app/Notification;

    .line 534
    iget-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiAuthErrorNotif:Landroid/app/Notification;

    const v5, 0x108062b

    iput v5, v4, Landroid/app/Notification;->icon:I

    .line 535
    iget-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiAuthErrorNotif:Landroid/app/Notification;

    const-wide/16 v5, 0x0

    iput-wide v5, v4, Landroid/app/Notification;->when:J

    .line 536
    iget-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiAuthErrorNotif:Landroid/app/Notification;

    const/16 v5, 0x10

    iput v5, v4, Landroid/app/Notification;->flags:I

    .line 537
    iget-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiAuthErrorNotif:Landroid/app/Notification;

    iput-object v3, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 540
    :cond_1
    iget-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiAuthErrorNotif:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->icon:I

    add-int/lit16 v1, v4, 0x303a

    .line 543
    .local v1, notifId:I
    if-eqz p1, :cond_2

    .line 545
    iget-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiAuthErrorNotif:Landroid/app/Notification;

    iget-object v5, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/motorola/android/wifi/ApEntitlement;->createUsbTetherAuthIntent()Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v4, v5, v3, v0, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 547
    iget-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiAuthErrorNotif:Landroid/app/Notification;

    invoke-virtual {v2, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 549
    :cond_2
    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private setWifiAuthNotif(Z)V
    .locals 9
    .parameter "visible"

    .prologue
    const/4 v8, 0x0

    .line 393
    const-string v6, "ApEntitlement"

    const-string v7, "setWifiAuthNotif()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 396
    .local v3, notifManager:Landroid/app/NotificationManager;
    if-nez v3, :cond_0

    .line 426
    :goto_0
    return-void

    .line 400
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 401
    .local v0, intent:Landroid/content/Intent;
    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.TetherSettings"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    const/high16 v6, 0x4000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 403
    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    invoke-static {v6, v8, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 404
    .local v4, pi:Landroid/app/PendingIntent;
    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    const v7, 0x1040661

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 405
    .local v5, title:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    const v7, 0x1040662

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 407
    .local v1, message:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiAuthNotif:Landroid/app/Notification;

    if-nez v6, :cond_1

    .line 408
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    iput-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiAuthNotif:Landroid/app/Notification;

    .line 409
    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiAuthNotif:Landroid/app/Notification;

    const v7, 0x108062a

    iput v7, v6, Landroid/app/Notification;->icon:I

    .line 410
    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiAuthNotif:Landroid/app/Notification;

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Landroid/app/Notification;->when:J

    .line 411
    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiAuthNotif:Landroid/app/Notification;

    const/16 v7, 0x22

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 412
    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiAuthNotif:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 415
    :cond_1
    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiAuthNotif:Landroid/app/Notification;

    iget v2, v6, Landroid/app/Notification;->icon:I

    .line 417
    .local v2, notifId:I
    if-eqz p1, :cond_2

    .line 419
    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiAuthNotif:Landroid/app/Notification;

    iget-object v7, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v5, v1, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 420
    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiAuthNotif:Landroid/app/Notification;

    invoke-virtual {v3, v2, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 424
    :cond_2
    invoke-virtual {v3, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private setWifiConnectErrorNotif(Z)V
    .locals 7
    .parameter "visible"

    .prologue
    .line 573
    const-string v4, "ApEntitlement"

    const-string v5, "setWifiConnectErrorNotif()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 576
    .local v2, notifManager:Landroid/app/NotificationManager;
    if-nez v2, :cond_0

    .line 598
    :goto_0
    return-void

    .line 580
    :cond_0
    iget-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    const v5, 0x1040669

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 581
    .local v3, title:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    const v5, 0x104066a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 583
    .local v0, message:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiConnectErrorNotif:Landroid/app/Notification;

    if-nez v4, :cond_1

    .line 584
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    iput-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiConnectErrorNotif:Landroid/app/Notification;

    .line 585
    iget-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiConnectErrorNotif:Landroid/app/Notification;

    const v5, 0x108062b

    iput v5, v4, Landroid/app/Notification;->icon:I

    .line 586
    iget-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiConnectErrorNotif:Landroid/app/Notification;

    const-wide/16 v5, 0x0

    iput-wide v5, v4, Landroid/app/Notification;->when:J

    .line 587
    iget-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiConnectErrorNotif:Landroid/app/Notification;

    const/16 v5, 0x10

    iput v5, v4, Landroid/app/Notification;->flags:I

    .line 588
    iget-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiConnectErrorNotif:Landroid/app/Notification;

    iput-object v3, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 590
    :cond_1
    iget-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiConnectErrorNotif:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->icon:I

    add-int/lit16 v1, v4, 0x303b

    .line 591
    .local v1, notifId:I
    iget-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiConnectErrorNotif:Landroid/app/Notification;

    iget-object v5, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/motorola/android/wifi/ApEntitlement;->createUsbTetherAuthIntent()Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v4, v5, v3, v0, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 592
    if-eqz p1, :cond_2

    .line 594
    iget-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiConnectErrorNotif:Landroid/app/Notification;

    invoke-virtual {v2, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 596
    :cond_2
    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private setWifiConnectNotif(Z)V
    .locals 9
    .parameter "visible"

    .prologue
    const/4 v8, 0x0

    .line 437
    const-string v6, "ApEntitlement"

    const-string v7, "setWifiConnectNotif()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 440
    .local v3, notifManager:Landroid/app/NotificationManager;
    if-nez v3, :cond_0

    .line 469
    :goto_0
    return-void

    .line 444
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 445
    .local v0, intent:Landroid/content/Intent;
    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.TetherSettings"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    const/high16 v6, 0x4000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 447
    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    invoke-static {v6, v8, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 448
    .local v4, pi:Landroid/app/PendingIntent;
    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    const v7, 0x1040663

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 449
    .local v5, title:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    const v7, 0x1040664

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 451
    .local v1, message:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiConnectNotif:Landroid/app/Notification;

    if-nez v6, :cond_1

    .line 452
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    iput-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiConnectNotif:Landroid/app/Notification;

    .line 453
    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiConnectNotif:Landroid/app/Notification;

    const v7, 0x108062a

    iput v7, v6, Landroid/app/Notification;->icon:I

    .line 454
    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiConnectNotif:Landroid/app/Notification;

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Landroid/app/Notification;->when:J

    .line 455
    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiConnectNotif:Landroid/app/Notification;

    const/16 v7, 0x22

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 456
    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiConnectNotif:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 459
    :cond_1
    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiConnectNotif:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->icon:I

    add-int/lit16 v2, v6, 0x3039

    .line 460
    .local v2, notifId:I
    if-eqz p1, :cond_2

    .line 462
    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiConnectNotif:Landroid/app/Notification;

    iget-object v7, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v5, v1, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 463
    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiConnectNotif:Landroid/app/Notification;

    invoke-virtual {v3, v2, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 467
    :cond_2
    invoke-virtual {v3, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private setWifiReadyNotif(Z)V
    .locals 9
    .parameter "visible"

    .prologue
    const/4 v8, 0x0

    .line 480
    const-string v6, "ApEntitlement"

    const-string v7, "setWifiReadyNotif()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 483
    .local v3, notifManager:Landroid/app/NotificationManager;
    if-nez v3, :cond_0

    .line 512
    :goto_0
    return-void

    .line 487
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 488
    .local v0, intent:Landroid/content/Intent;
    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.TetherSettings"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 489
    const/high16 v6, 0x4000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 490
    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    invoke-static {v6, v8, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 491
    .local v4, pi:Landroid/app/PendingIntent;
    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    const v7, 0x1040665

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 492
    .local v5, title:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    const v7, 0x1040666

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 494
    .local v1, message:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiReadyNotif:Landroid/app/Notification;

    if-nez v6, :cond_1

    .line 495
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    iput-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiReadyNotif:Landroid/app/Notification;

    .line 496
    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiReadyNotif:Landroid/app/Notification;

    const v7, 0x1080629

    iput v7, v6, Landroid/app/Notification;->icon:I

    .line 497
    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiReadyNotif:Landroid/app/Notification;

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Landroid/app/Notification;->when:J

    .line 498
    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiReadyNotif:Landroid/app/Notification;

    const/16 v7, 0x22

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 499
    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiReadyNotif:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 502
    :cond_1
    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiReadyNotif:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->icon:I

    add-int/lit16 v2, v6, 0x303a

    .line 503
    .local v2, notifId:I
    if-eqz p1, :cond_2

    .line 505
    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiReadyNotif:Landroid/app/Notification;

    iget-object v7, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v5, v1, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 506
    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiReadyNotif:Landroid/app/Notification;

    invoke-virtual {v3, v2, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 510
    :cond_2
    invoke-virtual {v3, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private startSelfProvision()V
    .locals 3

    .prologue
    .line 303
    const-string v1, "ApEntitlement"

    const-string v2, "startSelfProvision begins"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.SPG.ACTION_REQUEST_START_SPG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 306
    .local v0, spgIntent:Landroid/content/Intent;
    const-string v1, "com.motorola.SPG.FEATURE_CODE"

    const-string v2, "MHS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 308
    return-void
.end method


# virtual methods
.method public CheckEntitlement(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 7
    .parameter "wifiConfig"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 325
    iput-object p1, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 328
    iget-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mOperatorName:Ljava/lang/String;

    const-string v5, "att"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 330
    const-string v4, "ApEntitlement"

    const-string v5, "Entitlement begins for ATT"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :try_start_0
    iget-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "APN_CHECK_STATE"

    invoke-static {v4, v5}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mEntitlementCheckState:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :goto_0
    const-string v4, "ApEntitlement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Saved Entitlement State: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mEntitlementCheckState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mEntitlementCheckState:I

    packed-switch v4, :pswitch_data_0

    :goto_1
    move v2, v3

    .line 382
    :goto_2
    return v2

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, e:Ljava/lang/Throwable;
    const-string v4, "ApEntitlement"

    const-string v5, "From settings db: setting not found - Entitlement State"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 344
    .end local v0           #e:Ljava/lang/Throwable;
    :pswitch_0
    const-string v4, "ApEntitlement"

    const-string v5, "Sending Intent to trigger apn check"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iput-boolean v2, p0, Lcom/motorola/android/wifi/ApEntitlement;->mPendingWifiEnable:Z

    .line 346
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.motorola.intent.ACTION_ENTITLEMENT_CHECK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 347
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    const-string v4, "com.motorola.permission.ATT_ENTITLEMENT"

    invoke-virtual {v2, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    .line 351
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_1
    const-string v3, "ApEntitlement"

    const-string v4, "Dont Send Intent to trigger apn check: SUCCESS case,return true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 357
    :pswitch_2
    iput-boolean v2, p0, Lcom/motorola/android/wifi/ApEntitlement;->mPendingWifiEnable:Z

    goto :goto_1

    .line 364
    :cond_0
    iget-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mOperatorName:Ljava/lang/String;

    const-string v5, "vzw"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 366
    iget v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mEntitlementCheckState:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 367
    const-string v4, "ApEntitlement"

    const-string v5, "Entitlement check is Success, Do not send an Intent to trigger VZW provisioning check"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iput v2, p0, Lcom/motorola/android/wifi/ApEntitlement;->mEntitlementCheckState:I

    .line 369
    const-string v4, "ApEntitlement"

    const-string v5, "reset mEntitlementCheckState to ENTITLEMENT_CHECK_STATE_NONE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "AP_ENABLE"

    invoke-static {v4, v5, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 373
    :cond_1
    const-string v4, "ApEntitlement"

    const-string v5, "Entitlement begins for VZW"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const-string v4, "ApEntitlement"

    const-string v5, "Sending Intent to trigger VZW provisioning check"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iput-boolean v2, p0, Lcom/motorola/android/wifi/ApEntitlement;->mPendingWifiEnable:Z

    .line 377
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.motorola.intent.ACTION_ENTITLEMENT_CHECK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 378
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    const-string v4, "com.motorola.permission.VZW_ENTITLEMENT"

    invoke-virtual {v2, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    .line 380
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    const-string v2, "ApEntitlement"

    const-string v4, "CheckEntitlement called when no operator specific package exists."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 339
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
