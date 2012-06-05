.class public Lcom/motorola/android/wifi/WifiApMonitor;
.super Ljava/lang/Object;
.source "WifiApMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/wifi/WifiApMonitor$MonitorThread;
    }
.end annotation


# static fields
.field public static final ACTION_MAX_DEVICES_CONNECTED_ALERT:Ljava/lang/String; = "motorola.net.wifi.MAX_DEVICES_ALERT"

.field public static final ACTION_PBC_STOP_ALERT:Ljava/lang/String; = "motorola.net.wifi.PBC_STOP_ALERT"

.field private static final CONNECTED:I = 0x1

.field private static final DISCONNECTED:I = 0x2

.field private static final DRIVER_STATE:I = 0x7

.field private static final ICON_NOTIFY_HOTSPOT_REQUEST:I = 0x1080626

.field private static final LINK_SPEED:I = 0x5

.field private static final MAX_RECV_ERRORS:I = 0xa

.field private static final SCAN_RESULTS:I = 0x4

.field private static final STATE_CHANGE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "WifiApMonitor"

.field private static final TERMINATING:I = 0x6

.field private static final UNKNOWN:I = 0x8

.field private static final WPS_REG_SUCCESS:Ljava/lang/String; = "WPS-REG-SUCCESS"

.field private static final connectedEvent:Ljava/lang/String; = "CONNECTED"

.field private static final disconnectedEvent:Ljava/lang/String; = "DISCONNECTED"

.field private static final driverStateEvent:Ljava/lang/String; = "DRIVER-STATE"

.field private static final eventPrefix:Ljava/lang/String; = "CTRL-EVENT-"

#the value of this static final field might be set in the static constructor
.field private static final eventPrefixLen:I = 0x0

.field private static final linkSpeedEvent:Ljava/lang/String; = "LINK-SPEED"

.field private static mConnectedEventPattern:Ljava/util/regex/Pattern; = null

.field private static final maxConnectedDeviceEvent:Ljava/lang/String; = "HS-MAX-DEVICE-CONNECTED"

.field private static final monitorSocketClosed:Ljava/lang/String; = "connection closed"

.field private static final probeReqPrefix:Ljava/lang/String; = "WPS-PROBE-REQ-"

#the value of this static final field might be set in the static constructor
.field private static final probeReqPrefixLen:I = 0x0

.field private static final scanResultsEvent:Ljava/lang/String; = "SCAN-RESULTS"

.field private static final stateChangeEvent:Ljava/lang/String; = "STATE-CHANGE"

.field private static final terminatingEvent:Ljava/lang/String; = "TERMINATING"

.field private static final wpaRecvError:Ljava/lang/String; = "recv error"

.field private static final wpsEventPrefix:Ljava/lang/String; = "WPS-"


# instance fields
.field private NOTIFICATION_INDEX_CLIENT_PBC:I

.field private mContext:Landroid/content/Context;

.field private mNotificationMgr:Landroid/app/NotificationManager;

.field private mRecvErrors:I

.field private mThread:Lcom/motorola/android/wifi/WifiApMonitor$MonitorThread;

.field private mWPSNotificationUpdate:Ljava/lang/Runnable;

.field private mWPSPBCNotificationHandler:Landroid/os/Handler;

.field private final mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-string v0, "CTRL-EVENT-"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/motorola/android/wifi/WifiApMonitor;->eventPrefixLen:I

    .line 59
    const-string v0, "CTRL-EVENT-"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/motorola/android/wifi/WifiApMonitor;->probeReqPrefixLen:I

    .line 138
    const-string v0, "((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) .* \\[id=([0-9]+) "

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/wifi/WifiApMonitor;->mConnectedEventPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiStateMachine;Landroid/content/Context;)V
    .locals 2
    .parameter "wifiStateMachine"
    .parameter "context"

    .prologue
    .line 177
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 156
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/android/wifi/WifiApMonitor;->mRecvErrors:I

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/wifi/WifiApMonitor;->mThread:Lcom/motorola/android/wifi/WifiApMonitor$MonitorThread;

    .line 169
    const v0, 0x9193

    iput v0, p0, Lcom/motorola/android/wifi/WifiApMonitor;->NOTIFICATION_INDEX_CLIENT_PBC:I

    .line 171
    new-instance v0, Lcom/motorola/android/wifi/WifiApMonitor$1;

    invoke-direct {v0, p0}, Lcom/motorola/android/wifi/WifiApMonitor$1;-><init>(Lcom/motorola/android/wifi/WifiApMonitor;)V

    iput-object v0, p0, Lcom/motorola/android/wifi/WifiApMonitor;->mWPSNotificationUpdate:Ljava/lang/Runnable;

    .line 178
    iput-object p2, p0, Lcom/motorola/android/wifi/WifiApMonitor;->mContext:Landroid/content/Context;

    .line 179
    iput-object p1, p0, Lcom/motorola/android/wifi/WifiApMonitor;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    .line 180
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/wifi/WifiApMonitor;->mWPSPBCNotificationHandler:Landroid/os/Handler;

    .line 181
    iget-object v0, p0, Lcom/motorola/android/wifi/WifiApMonitor;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/motorola/android/wifi/WifiApMonitor;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 182
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/android/wifi/WifiApMonitor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/motorola/android/wifi/WifiApMonitor;->NOTIFICATION_INDEX_CLIENT_PBC:I

    return v0
.end method

.method static synthetic access$100(Lcom/motorola/android/wifi/WifiApMonitor;)Landroid/app/NotificationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/motorola/android/wifi/WifiApMonitor;->mNotificationMgr:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 36
    sget v0, Lcom/motorola/android/wifi/WifiApMonitor;->eventPrefixLen:I

    return v0
.end method

.method static synthetic access$302(Lcom/motorola/android/wifi/WifiApMonitor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/motorola/android/wifi/WifiApMonitor;->mRecvErrors:I

    return p1
.end method

.method static synthetic access$304(Lcom/motorola/android/wifi/WifiApMonitor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/motorola/android/wifi/WifiApMonitor;->mRecvErrors:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/motorola/android/wifi/WifiApMonitor;->mRecvErrors:I

    return v0
.end method

.method static synthetic access$400(Lcom/motorola/android/wifi/WifiApMonitor;)Landroid/net/wifi/WifiStateMachine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/motorola/android/wifi/WifiApMonitor;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    return-object v0
.end method

.method static synthetic access$500(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-static {p0}, Lcom/motorola/android/wifi/WifiApMonitor;->nap(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/motorola/android/wifi/WifiApMonitor;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/motorola/android/wifi/WifiApMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static nap(I)V
    .locals 2
    .parameter "secs"

    .prologue
    .line 432
    mul-int/lit16 v0, p0, 0x3e8

    int-to-long v0, v0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :goto_0
    return-void

    .line 433
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getNetworkStateMachine()Landroid/net/wifi/WifiStateMachine;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/motorola/android/wifi/WifiApMonitor;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    return-object v0
.end method

.method public setPbcNotificationOnHS(Z)V
    .locals 7
    .parameter "visible"

    .prologue
    const/4 v6, 0x0

    .line 405
    const-string v2, "WifiApMonitor"

    const-string v3, "setPbcNotificationOnHS"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    if-eqz p1, :cond_0

    .line 408
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 409
    .local v1, n:Landroid/app/Notification;
    const v2, 0x1080626

    iput v2, v1, Landroid/app/Notification;->icon:I

    .line 411
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.net.wifi.PBC_CONNECTION_REQUEST"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 412
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/motorola/android/wifi/WifiApMonitor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/motorola/android/wifi/WifiApMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104066e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/android/wifi/WifiApMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104066f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/android/wifi/WifiApMonitor;->mContext:Landroid/content/Context;

    invoke-static {v5, v6, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 416
    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 417
    iget-object v2, p0, Lcom/motorola/android/wifi/WifiApMonitor;->mWPSPBCNotificationHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/motorola/android/wifi/WifiApMonitor;->mWPSNotificationUpdate:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 418
    iget-object v2, p0, Lcom/motorola/android/wifi/WifiApMonitor;->mNotificationMgr:Landroid/app/NotificationManager;

    iget v3, p0, Lcom/motorola/android/wifi/WifiApMonitor;->NOTIFICATION_INDEX_CLIENT_PBC:I

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 419
    iget-object v2, p0, Lcom/motorola/android/wifi/WifiApMonitor;->mNotificationMgr:Landroid/app/NotificationManager;

    iget v3, p0, Lcom/motorola/android/wifi/WifiApMonitor;->NOTIFICATION_INDEX_CLIENT_PBC:I

    invoke-virtual {v2, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 420
    iget-object v2, p0, Lcom/motorola/android/wifi/WifiApMonitor;->mWPSPBCNotificationHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/motorola/android/wifi/WifiApMonitor;->mWPSNotificationUpdate:Ljava/lang/Runnable;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 424
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #n:Landroid/app/Notification;
    :goto_0
    return-void

    .line 422
    :cond_0
    iget-object v2, p0, Lcom/motorola/android/wifi/WifiApMonitor;->mNotificationMgr:Landroid/app/NotificationManager;

    iget v3, p0, Lcom/motorola/android/wifi/WifiApMonitor;->NOTIFICATION_INDEX_CLIENT_PBC:I

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method public startMonitoring()V
    .locals 1

    .prologue
    .line 185
    new-instance v0, Lcom/motorola/android/wifi/WifiApMonitor$MonitorThread;

    invoke-direct {v0, p0}, Lcom/motorola/android/wifi/WifiApMonitor$MonitorThread;-><init>(Lcom/motorola/android/wifi/WifiApMonitor;)V

    iput-object v0, p0, Lcom/motorola/android/wifi/WifiApMonitor;->mThread:Lcom/motorola/android/wifi/WifiApMonitor$MonitorThread;

    .line 186
    iget-object v0, p0, Lcom/motorola/android/wifi/WifiApMonitor;->mThread:Lcom/motorola/android/wifi/WifiApMonitor$MonitorThread;

    invoke-virtual {v0}, Lcom/motorola/android/wifi/WifiApMonitor$MonitorThread;->start()V

    .line 187
    return-void
.end method

.method public stopMonitoring()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/motorola/android/wifi/WifiApMonitor;->mThread:Lcom/motorola/android/wifi/WifiApMonitor$MonitorThread;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/motorola/android/wifi/WifiApMonitor;->mThread:Lcom/motorola/android/wifi/WifiApMonitor$MonitorThread;

    invoke-virtual {v0}, Lcom/motorola/android/wifi/WifiApMonitor$MonitorThread;->stop()V

    .line 192
    :cond_0
    return-void
.end method
