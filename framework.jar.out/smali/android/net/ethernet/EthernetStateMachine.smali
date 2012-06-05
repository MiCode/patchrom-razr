.class public Landroid/net/ethernet/EthernetStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "EthernetStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ethernet/EthernetStateMachine$IpConnectedState;,
        Landroid/net/ethernet/EthernetStateMachine$GettingIpState;,
        Landroid/net/ethernet/EthernetStateMachine$CableConnectedState;,
        Landroid/net/ethernet/EthernetStateMachine$AdapterConnectedState;,
        Landroid/net/ethernet/EthernetStateMachine$DefaultState;,
        Landroid/net/ethernet/EthernetStateMachine$InterfaceObserver;
    }
.end annotation


# static fields
.field static final ADAPTER_CONNECTION_EVENT:I = 0x60015

.field static final ADAPTER_DISCONNECTION_EVENT:I = 0x60016

.field static final BASE:I = 0x60000

.field static final CABLE_CONNECTION_EVENT:I = 0x6001f

.field static final CABLE_DISCONNECTION_EVENT:I = 0x60020

.field static final CMD_CHECK_ADAPTER_STATE:I = 0x6000e

.field static final CMD_CHECK_CABLE_STATE:I = 0x60017

.field static final CMD_DISABLE_ETHERNET:I = 0x60002

.field static final CMD_ENABLE_ETHERNET:I = 0x60001

.field static final CMD_START_DHCP:I = 0x60029

.field static final CMD_STATIC_IP_FAILURE:I = 0x60034

.field static final CMD_STATIC_IP_SUCCESS:I = 0x60033

.field static final CMD_STOP_DHCP:I = 0x6002a

.field static final CONFIG_CHANGED_EVENT:I = 0x6000b

.field private static final DBG:Z = false

.field private static final DEFAULT_IFNAME:Ljava/lang/String; = "usbeth0"

.field private static final DEFAULT_MAX_DHCP_RETRIES:I = 0x4

.field static final MOBILE_DATA_CONNECTED_EVENT:I = 0x6000d

.field private static final NETWORKTYPE:Ljava/lang/String; = "ETHERNET"

.field private static final TAG:Ljava/lang/String; = "EthernetStateMachine"

.field private static final USBETH_IFNAME_PREFIX:Ljava/lang/String; = "usbeth"

.field static final WIFI_CONNECTED_EVENT:I = 0x6000c


# instance fields
.field private intentReceiver:Landroid/content/BroadcastReceiver;

.field private mAdapterConnectedState:Lcom/android/internal/util/State;

.field private mCableConnectedState:Lcom/android/internal/util/State;

.field private mCheckAdapterCount:I

.field private mContext:Landroid/content/Context;

.field private mDefaultState:Lcom/android/internal/util/State;

.field private mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

.field private mDhcpStateMachine:Landroid/net/DhcpStateMachine;

.field private final mEthernetHwState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mEthernetState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mGettingIpState:Landroid/net/ethernet/EthernetStateMachine$GettingIpState;

.field private mInterfaceDetectedInList:Z

.field private mInterfaceName:Ljava/lang/String;

.field private mInterfaceObserver:Landroid/net/ethernet/EthernetStateMachine$InterfaceObserver;

.field private mIpConnectedState:Landroid/net/ethernet/EthernetStateMachine$IpConnectedState;

.field private final mLastEnableUid:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNotification:Landroid/app/Notification;

.field private mNotificationIcon:I

.field private mReconnectCount:I

.field private mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mShowNotification:Z

.field private mUEventObserver:Landroid/os/UEventObserver;

.field private nwService:Landroid/os/INetworkManagementService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "ethInterface"

    .prologue
    const/4 v4, 0x0

    .line 255
    const-string v0, "EthernetStateMachine"

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 85
    iput v4, p0, Landroid/net/ethernet/EthernetStateMachine;->mReconnectCount:I

    .line 94
    iput v4, p0, Landroid/net/ethernet/EthernetStateMachine;->mCheckAdapterCount:I

    .line 95
    iput-boolean v4, p0, Landroid/net/ethernet/EthernetStateMachine;->mInterfaceDetectedInList:Z

    .line 96
    iput-boolean v4, p0, Landroid/net/ethernet/EthernetStateMachine;->mShowNotification:Z

    .line 97
    iput v4, p0, Landroid/net/ethernet/EthernetStateMachine;->mNotificationIcon:I

    .line 100
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    .line 161
    new-instance v0, Landroid/net/ethernet/EthernetStateMachine$DefaultState;

    invoke-direct {v0, p0}, Landroid/net/ethernet/EthernetStateMachine$DefaultState;-><init>(Landroid/net/ethernet/EthernetStateMachine;)V

    iput-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    .line 163
    new-instance v0, Landroid/net/ethernet/EthernetStateMachine$AdapterConnectedState;

    invoke-direct {v0, p0}, Landroid/net/ethernet/EthernetStateMachine$AdapterConnectedState;-><init>(Landroid/net/ethernet/EthernetStateMachine;)V

    iput-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mAdapterConnectedState:Lcom/android/internal/util/State;

    .line 165
    new-instance v0, Landroid/net/ethernet/EthernetStateMachine$CableConnectedState;

    invoke-direct {v0, p0}, Landroid/net/ethernet/EthernetStateMachine$CableConnectedState;-><init>(Landroid/net/ethernet/EthernetStateMachine;)V

    iput-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mCableConnectedState:Lcom/android/internal/util/State;

    .line 167
    new-instance v0, Landroid/net/ethernet/EthernetStateMachine$GettingIpState;

    invoke-direct {v0, p0}, Landroid/net/ethernet/EthernetStateMachine$GettingIpState;-><init>(Landroid/net/ethernet/EthernetStateMachine;)V

    iput-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mGettingIpState:Landroid/net/ethernet/EthernetStateMachine$GettingIpState;

    .line 169
    new-instance v0, Landroid/net/ethernet/EthernetStateMachine$IpConnectedState;

    invoke-direct {v0, p0}, Landroid/net/ethernet/EthernetStateMachine$IpConnectedState;-><init>(Landroid/net/ethernet/EthernetStateMachine;)V

    iput-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mIpConnectedState:Landroid/net/ethernet/EthernetStateMachine$IpConnectedState;

    .line 171
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mEthernetHwState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 172
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mEthernetState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 173
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mLastEnableUid:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 206
    new-instance v0, Landroid/net/ethernet/EthernetStateMachine$1;

    invoke-direct {v0, p0}, Landroid/net/ethernet/EthernetStateMachine$1;-><init>(Landroid/net/ethernet/EthernetStateMachine;)V

    iput-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mUEventObserver:Landroid/os/UEventObserver;

    .line 214
    new-instance v0, Landroid/net/ethernet/EthernetStateMachine$2;

    invoke-direct {v0, p0}, Landroid/net/ethernet/EthernetStateMachine$2;-><init>(Landroid/net/ethernet/EthernetStateMachine;)V

    iput-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->intentReceiver:Landroid/content/BroadcastReceiver;

    .line 257
    iput-object p1, p0, Landroid/net/ethernet/EthernetStateMachine;->mContext:Landroid/content/Context;

    .line 258
    iput-object p2, p0, Landroid/net/ethernet/EthernetStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 260
    new-instance v0, Landroid/net/NetworkInfo;

    const/16 v1, 0x9

    const-string v2, "ETHERNET"

    const-string v3, ""

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 261
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v4}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 263
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    .line 264
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    .line 266
    new-instance v0, Landroid/net/DhcpInfoInternal;

    invoke-direct {v0}, Landroid/net/DhcpInfoInternal;-><init>()V

    iput-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    .line 267
    return-void
.end method

.method static synthetic access$000(Landroid/net/ethernet/EthernetStateMachine;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/net/ethernet/EthernetStateMachine;->interfaceAdded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroid/net/ethernet/EthernetStateMachine;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/net/ethernet/EthernetStateMachine;->interfaceRemoved(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/net/ethernet/EthernetStateMachine;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/net/ethernet/EthernetStateMachine;->setEthernetHwState(I)V

    return-void
.end method

.method static synthetic access$1100(Landroid/net/ethernet/EthernetStateMachine;)Landroid/net/NetworkInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/net/ethernet/EthernetStateMachine;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/net/ethernet/EthernetStateMachine;->setEthernetState(I)V

    return-void
.end method

.method static synthetic access$1300(Landroid/net/ethernet/EthernetStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mAdapterConnectedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/net/ethernet/EthernetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Landroid/net/ethernet/EthernetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1500(Landroid/net/ethernet/EthernetStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/net/ethernet/EthernetStateMachine;->checkAdapterState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Landroid/net/ethernet/EthernetStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mCheckAdapterCount:I

    return v0
.end method

.method static synthetic access$1612(Landroid/net/ethernet/EthernetStateMachine;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iget v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mCheckAdapterCount:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mCheckAdapterCount:I

    return v0
.end method

.method static synthetic access$1700(Landroid/net/ethernet/EthernetStateMachine;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Landroid/net/ethernet/EthernetStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$1800(Landroid/net/ethernet/EthernetStateMachine;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Landroid/net/ethernet/EthernetStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$1900(Landroid/net/ethernet/EthernetStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/ethernet/EthernetStateMachine;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/net/ethernet/EthernetStateMachine;->notifyCableState(Z)V

    return-void
.end method

.method static synthetic access$2000(Landroid/net/ethernet/EthernetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Landroid/net/ethernet/EthernetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2100(Landroid/net/ethernet/EthernetStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/net/ethernet/EthernetStateMachine;->enableInterface()V

    return-void
.end method

.method static synthetic access$2200(Landroid/net/ethernet/EthernetStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mInterfaceDetectedInList:Z

    return v0
.end method

.method static synthetic access$2202(Landroid/net/ethernet/EthernetStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Landroid/net/ethernet/EthernetStateMachine;->mInterfaceDetectedInList:Z

    return p1
.end method

.method static synthetic access$2300(Landroid/net/ethernet/EthernetStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/net/ethernet/EthernetStateMachine;->disableInterface()V

    return-void
.end method

.method static synthetic access$2400(Landroid/net/ethernet/EthernetStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mEthernetState:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/net/ethernet/EthernetStateMachine;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Landroid/net/ethernet/EthernetStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mCableConnectedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$2700(Landroid/net/ethernet/EthernetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Landroid/net/ethernet/EthernetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2800(Landroid/net/ethernet/EthernetStateMachine;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Landroid/net/ethernet/EthernetStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$2900(Landroid/net/ethernet/EthernetStateMachine;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Landroid/net/ethernet/EthernetStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$300(Landroid/net/ethernet/EthernetStateMachine;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/net/ethernet/EthernetStateMachine;->notifyConfigChanged(I)V

    return-void
.end method

.method static synthetic access$3000(Landroid/net/ethernet/EthernetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Landroid/net/ethernet/EthernetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3100(Landroid/net/ethernet/EthernetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Landroid/net/ethernet/EthernetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3200(Landroid/net/ethernet/EthernetStateMachine;)Landroid/net/ethernet/EthernetStateMachine$GettingIpState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mGettingIpState:Landroid/net/ethernet/EthernetStateMachine$GettingIpState;

    return-object v0
.end method

.method static synthetic access$3300(Landroid/net/ethernet/EthernetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Landroid/net/ethernet/EthernetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3400(Landroid/net/ethernet/EthernetStateMachine;)Landroid/net/DhcpStateMachine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    return-object v0
.end method

.method static synthetic access$3402(Landroid/net/ethernet/EthernetStateMachine;Landroid/net/DhcpStateMachine;)Landroid/net/DhcpStateMachine;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Landroid/net/ethernet/EthernetStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    return-object p1
.end method

.method static synthetic access$3500(Landroid/net/ethernet/EthernetStateMachine;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3600(Landroid/net/ethernet/EthernetStateMachine;Landroid/net/DhcpInfoInternal;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/net/ethernet/EthernetStateMachine;->handleSuccessfulIpConfiguration(Landroid/net/DhcpInfoInternal;)V

    return-void
.end method

.method static synthetic access$3700(Landroid/net/ethernet/EthernetStateMachine;)Landroid/net/ethernet/EthernetStateMachine$IpConnectedState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mIpConnectedState:Landroid/net/ethernet/EthernetStateMachine$IpConnectedState;

    return-object v0
.end method

.method static synthetic access$3800(Landroid/net/ethernet/EthernetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Landroid/net/ethernet/EthernetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3900(Landroid/net/ethernet/EthernetStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/net/ethernet/EthernetStateMachine;->handleFailedIpConfiguration()V

    return-void
.end method

.method static synthetic access$400(Landroid/net/ethernet/EthernetStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mEthernetHwState:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$4000(Landroid/net/ethernet/EthernetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Landroid/net/ethernet/EthernetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4100(Landroid/net/ethernet/EthernetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Landroid/net/ethernet/EthernetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4200(Landroid/net/ethernet/EthernetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Landroid/net/ethernet/EthernetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4300(Landroid/net/ethernet/EthernetStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/net/ethernet/EthernetStateMachine;->handleNetworkDisconnect()V

    return-void
.end method

.method static synthetic access$4400(Landroid/net/ethernet/EthernetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Landroid/net/ethernet/EthernetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4500(Landroid/net/ethernet/EthernetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Landroid/net/ethernet/EthernetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4600(Landroid/net/ethernet/EthernetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Landroid/net/ethernet/EthernetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4700(Landroid/net/ethernet/EthernetStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Landroid/net/ethernet/EthernetStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4800(Landroid/net/ethernet/EthernetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Landroid/net/ethernet/EthernetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4900(Landroid/net/ethernet/EthernetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Landroid/net/ethernet/EthernetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$500(Landroid/net/ethernet/EthernetStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/net/ethernet/EthernetStateMachine;->notifyWifiConnected()V

    return-void
.end method

.method static synthetic access$5000(Landroid/net/ethernet/EthernetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Landroid/net/ethernet/EthernetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5100(Landroid/net/ethernet/EthernetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Landroid/net/ethernet/EthernetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5200(Landroid/net/ethernet/EthernetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Landroid/net/ethernet/EthernetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5300(Landroid/net/ethernet/EthernetStateMachine;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/net/ethernet/EthernetStateMachine;->handleConfigChanged(I)V

    return-void
.end method

.method static synthetic access$5400(Landroid/net/ethernet/EthernetStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/net/ethernet/EthernetStateMachine;->reconfigure()V

    return-void
.end method

.method static synthetic access$600(Landroid/net/ethernet/EthernetStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/net/ethernet/EthernetStateMachine;->notifyMobileDataConnected()V

    return-void
.end method

.method static synthetic access$702(Landroid/net/ethernet/EthernetStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Landroid/net/ethernet/EthernetStateMachine;->mShowNotification:Z

    return p1
.end method

.method static synthetic access$800(Landroid/net/ethernet/EthernetStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/net/ethernet/EthernetStateMachine;->updateNotification()V

    return-void
.end method

.method static synthetic access$902(Landroid/net/ethernet/EthernetStateMachine;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Landroid/net/ethernet/EthernetStateMachine;->mReconnectCount:I

    return p1
.end method

.method private checkAdapterState()Z
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 314
    const-string v9, "network_management"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 315
    .local v1, b:Landroid/os/IBinder;
    invoke-static {v1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v8

    .line 316
    .local v8, service:Landroid/os/INetworkManagementService;
    if-nez v8, :cond_1

    .line 346
    :cond_0
    :goto_0
    return v2

    .line 320
    :cond_1
    iget-object v9, p0, Landroid/net/ethernet/EthernetStateMachine;->mInterfaceObserver:Landroid/net/ethernet/EthernetStateMachine$InterfaceObserver;

    if-nez v9, :cond_2

    .line 321
    new-instance v9, Landroid/net/ethernet/EthernetStateMachine$InterfaceObserver;

    invoke-direct {v9, p0}, Landroid/net/ethernet/EthernetStateMachine$InterfaceObserver;-><init>(Landroid/net/ethernet/EthernetStateMachine;)V

    iput-object v9, p0, Landroid/net/ethernet/EthernetStateMachine;->mInterfaceObserver:Landroid/net/ethernet/EthernetStateMachine$InterfaceObserver;

    .line 323
    :try_start_0
    iget-object v9, p0, Landroid/net/ethernet/EthernetStateMachine;->mInterfaceObserver:Landroid/net/ethernet/EthernetStateMachine$InterfaceObserver;

    invoke-interface {v8, v9}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :cond_2
    const/4 v2, 0x0

    .line 333
    .local v2, bResult:Z
    :try_start_1
    invoke-interface {v8}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;

    move-result-object v6

    .line 334
    .local v6, interfaceList:[Ljava/lang/String;
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v7, :cond_0

    aget-object v5, v0, v4

    .line 335
    .local v5, iface:Ljava/lang/String;
    const-string/jumbo v9, "usbeth0"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 336
    const-string v9, "EthernetStateMachine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ethernet interface detected in network service list: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/net/ethernet/EthernetStateMachine;->mInterfaceDetectedInList:Z

    .line 338
    invoke-direct {p0, v5}, Landroid/net/ethernet/EthernetStateMachine;->interfaceAdded(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 339
    const/4 v2, 0x1

    .line 340
    goto :goto_0

    .line 324
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #bResult:Z
    .end local v4           #i$:I
    .end local v5           #iface:Ljava/lang/String;
    .end local v6           #interfaceList:[Ljava/lang/String;
    .end local v7           #len$:I
    :catch_0
    move-exception v3

    .line 325
    .local v3, e:Landroid/os/RemoteException;
    const-string v9, "EthernetStateMachine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not register InterfaceObserver: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/net/ethernet/EthernetStateMachine;->mInterfaceObserver:Landroid/net/ethernet/EthernetStateMachine$InterfaceObserver;

    goto :goto_0

    .line 334
    .end local v3           #e:Landroid/os/RemoteException;
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #bResult:Z
    .restart local v4       #i$:I
    .restart local v5       #iface:Ljava/lang/String;
    .restart local v6       #interfaceList:[Ljava/lang/String;
    .restart local v7       #len$:I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 343
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #iface:Ljava/lang/String;
    .end local v6           #interfaceList:[Ljava/lang/String;
    .end local v7           #len$:I
    :catch_1
    move-exception v3

    .line 344
    .restart local v3       #e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private configureLinkProperties()V
    .locals 3

    .prologue
    .line 688
    invoke-static {}, Landroid/net/ethernet/EthernetConfigStore;->isUsingStaticIp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    invoke-static {}, Landroid/net/ethernet/EthernetConfigStore;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    .line 696
    :goto_0
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/ethernet/EthernetStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 697
    const-string v0, "EthernetStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Link configured: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/ethernet/EthernetStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    return-void

    .line 691
    :cond_0
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    monitor-enter v1

    .line 692
    :try_start_0
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    invoke-virtual {v0}, Landroid/net/DhcpInfoInternal;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    .line 693
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 694
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-static {}, Landroid/net/ethernet/EthernetConfigStore;->getProxyProperties()Landroid/net/ProxyProperties;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    goto :goto_0

    .line 693
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private disableInterface()V
    .locals 2

    .prologue
    .line 475
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mInterfaceName:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/net/NetworkUtils;->resetConnections(Ljava/lang/String;I)I

    .line 477
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    const v1, 0x30002

    invoke-virtual {v0, v1}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    .line 479
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    invoke-virtual {v0}, Landroid/net/DhcpStateMachine;->quit()V

    .line 480
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    .line 484
    :cond_0
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkUtils;->disableInterface(Ljava/lang/String;)I

    .line 486
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mReconnectCount:I

    .line 487
    return-void
.end method

.method private enableInterface()V
    .locals 4

    .prologue
    .line 464
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/NetworkUtils;->enableInterface(Ljava/lang/String;)I

    move-result v0

    .line 465
    .local v0, ret:I
    if-eqz v0, :cond_0

    .line 466
    const-string v1, "EthernetStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setupInterface enableInterface, ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    invoke-direct {p0}, Landroid/net/ethernet/EthernetStateMachine;->resetEthernet()V

    .line 469
    :cond_0
    return-void
.end method

.method private getMaxDhcpRetries()I
    .locals 3

    .prologue
    .line 701
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_max_dhcp_retry_count"

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getNetworkDetailedState()Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    return-object v0
.end method

.method private handleConfigChanged(I)V
    .locals 10
    .parameter "flags"

    .prologue
    .line 813
    and-int/lit8 v7, p1, 0x1

    if-eqz v7, :cond_0

    .line 814
    invoke-direct {p0}, Landroid/net/ethernet/EthernetStateMachine;->handleNetworkDisconnect()V

    .line 815
    iget-object v7, p0, Landroid/net/ethernet/EthernetStateMachine;->mCableConnectedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7}, Landroid/net/ethernet/EthernetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 855
    :goto_0
    return-void

    .line 819
    :cond_0
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_1

    .line 820
    invoke-static {}, Landroid/net/ethernet/EthernetConfigStore;->isUsingStaticIp()Z

    move-result v1

    .line 821
    .local v1, bUseStaticIp:Z
    const/4 v2, 0x0

    .line 822
    .local v2, dhcpInfoInternal:Landroid/net/DhcpInfoInternal;
    if-nez v1, :cond_2

    .line 823
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    .line 829
    :goto_1
    const-string v7, "network_management"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 830
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v5

    .line 831
    .local v5, netd:Landroid/os/INetworkManagementService;
    new-instance v4, Landroid/net/InterfaceConfiguration;

    invoke-direct {v4}, Landroid/net/InterfaceConfiguration;-><init>()V

    .line 832
    .local v4, ifcg:Landroid/net/InterfaceConfiguration;
    invoke-virtual {v2}, Landroid/net/DhcpInfoInternal;->makeLinkAddress()Landroid/net/LinkAddress;

    move-result-object v7

    iput-object v7, v4, Landroid/net/InterfaceConfiguration;->addr:Landroid/net/LinkAddress;

    .line 833
    const-string v7, "[up]"

    iput-object v7, v4, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    .line 835
    :try_start_0
    iget-object v7, p0, Landroid/net/ethernet/EthernetStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v5, v7, v4}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 837
    iget-object v8, p0, Landroid/net/ethernet/EthernetStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    monitor-enter v8
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 838
    :try_start_1
    iput-object v2, p0, Landroid/net/ethernet/EthernetStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    .line 839
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 847
    .end local v0           #b:Landroid/os/IBinder;
    .end local v1           #bUseStaticIp:Z
    .end local v2           #dhcpInfoInternal:Landroid/net/DhcpInfoInternal;
    .end local v4           #ifcg:Landroid/net/InterfaceConfiguration;
    .end local v5           #netd:Landroid/os/INetworkManagementService;
    :cond_1
    :goto_2
    iget-object v7, p0, Landroid/net/ethernet/EthernetStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 848
    invoke-direct {p0}, Landroid/net/ethernet/EthernetStateMachine;->configureLinkProperties()V

    .line 849
    invoke-direct {p0}, Landroid/net/ethernet/EthernetStateMachine;->getNetworkDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v7, v8, :cond_3

    .line 850
    invoke-direct {p0}, Landroid/net/ethernet/EthernetStateMachine;->sendLinkConfigurationChangedBroadcast()V

    goto :goto_0

    .line 826
    .restart local v1       #bUseStaticIp:Z
    .restart local v2       #dhcpInfoInternal:Landroid/net/DhcpInfoInternal;
    :cond_2
    invoke-static {}, Landroid/net/ethernet/EthernetConfigStore;->getIpConfiguration()Landroid/net/DhcpInfoInternal;

    move-result-object v2

    goto :goto_1

    .line 839
    .restart local v0       #b:Landroid/os/IBinder;
    .restart local v4       #ifcg:Landroid/net/InterfaceConfiguration;
    .restart local v5       #netd:Landroid/os/INetworkManagementService;
    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v7
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    .line 840
    :catch_0
    move-exception v6

    .line 841
    .local v6, re:Landroid/os/RemoteException;
    const-string v7, "EthernetStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Static IP configuration failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 842
    .end local v6           #re:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 843
    .local v3, e:Ljava/lang/IllegalStateException;
    const-string v7, "EthernetStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Static IP configuration failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 852
    .end local v0           #b:Landroid/os/IBinder;
    .end local v1           #bUseStaticIp:Z
    .end local v2           #dhcpInfoInternal:Landroid/net/DhcpInfoInternal;
    .end local v3           #e:Ljava/lang/IllegalStateException;
    .end local v4           #ifcg:Landroid/net/InterfaceConfiguration;
    .end local v5           #netd:Landroid/os/INetworkManagementService;
    :cond_3
    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v7}, Landroid/net/ethernet/EthernetStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 853
    invoke-direct {p0}, Landroid/net/ethernet/EthernetStateMachine;->sendNetworkStateChangeBroadcast()V

    goto/16 :goto_0
.end method

.method private handleFailedIpConfiguration()V
    .locals 3

    .prologue
    .line 796
    const-string v0, "EthernetStateMachine"

    const-string v1, "IP configuration failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    iget v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mReconnectCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mReconnectCount:I

    invoke-direct {p0}, Landroid/net/ethernet/EthernetStateMachine;->getMaxDhcpRetries()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 803
    const-string v0, "EthernetStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/ethernet/EthernetStateMachine;->mReconnectCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " times, Disabling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/ethernet/EthernetStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mReconnectCount:I

    .line 806
    invoke-direct {p0}, Landroid/net/ethernet/EthernetStateMachine;->resetEthernet()V

    .line 808
    :cond_0
    return-void
.end method

.method private handleNetworkDisconnect()V
    .locals 2

    .prologue
    .line 732
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mInterfaceName:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/net/NetworkUtils;->resetConnections(Ljava/lang/String;I)I

    .line 734
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    const v1, 0x30002

    invoke-virtual {v0, v1}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    .line 736
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    invoke-virtual {v0}, Landroid/net/DhcpStateMachine;->quit()V

    .line 737
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    .line 741
    :cond_0
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkUtils;->disableInterface(Ljava/lang/String;)I

    .line 746
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    .line 748
    invoke-static {}, Landroid/net/ethernet/EthernetConfigStore;->isUsingStaticIp()Z

    move-result v0

    if-nez v0, :cond_1

    .line 749
    invoke-static {}, Landroid/net/ethernet/EthernetConfigStore;->clearIpConfiguration()V

    .line 753
    :cond_1
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 754
    invoke-direct {p0}, Landroid/net/ethernet/EthernetStateMachine;->getNetworkDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v1, :cond_2

    .line 755
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v0}, Landroid/net/ethernet/EthernetStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 756
    invoke-direct {p0}, Landroid/net/ethernet/EthernetStateMachine;->sendNetworkStateChangeBroadcast()V

    .line 758
    :cond_2
    return-void
.end method

.method private handleSuccessfulIpConfiguration(Landroid/net/DhcpInfoInternal;)V
    .locals 4
    .parameter "dhcpInfoInternal"

    .prologue
    .line 772
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    monitor-enter v2

    .line 773
    :try_start_0
    iput-object p1, p0, Landroid/net/ethernet/EthernetStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    .line 774
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 776
    invoke-static {p1}, Landroid/net/ethernet/EthernetConfigStore;->setIpConfiguration(Landroid/net/DhcpInfoInternal;)V

    .line 777
    invoke-direct {p0}, Landroid/net/ethernet/EthernetStateMachine;->getNetworkDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_1

    .line 779
    invoke-virtual {p1}, Landroid/net/DhcpInfoInternal;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    .line 780
    .local v0, linkProperties:Landroid/net/LinkProperties;
    invoke-static {}, Landroid/net/ethernet/EthernetConfigStore;->getProxyProperties()Landroid/net/ProxyProperties;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .line 781
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 782
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 783
    const-string v1, "EthernetStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Link configuration changed, old: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/ethernet/EthernetStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", new: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateMachine;->mInterfaceName:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/net/NetworkUtils;->resetConnections(Ljava/lang/String;I)I

    .line 785
    iput-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    .line 786
    invoke-direct {p0}, Landroid/net/ethernet/EthernetStateMachine;->sendLinkConfigurationChangedBroadcast()V

    .line 793
    .end local v0           #linkProperties:Landroid/net/LinkProperties;
    :cond_0
    :goto_0
    return-void

    .line 774
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 789
    :cond_1
    invoke-direct {p0}, Landroid/net/ethernet/EthernetStateMachine;->configureLinkProperties()V

    .line 790
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v1}, Landroid/net/ethernet/EthernetStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 791
    invoke-direct {p0}, Landroid/net/ethernet/EthernetStateMachine;->sendNetworkStateChangeBroadcast()V

    goto :goto_0
.end method

.method private interfaceAdded(Ljava/lang/String;)V
    .locals 3
    .parameter "iface"

    .prologue
    .line 496
    const-string/jumbo v0, "usbeth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 497
    const-string v0, "EthernetStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interfaceAdded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const-string/jumbo v0, "usbeth0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 499
    iput-object p1, p0, Landroid/net/ethernet/EthernetStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 500
    const v0, 0x60015

    invoke-virtual {p0, v0}, Landroid/net/ethernet/EthernetStateMachine;->sendMessage(I)V

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    const-string v0, "EthernetStateMachine"

    const-string v1, "Skipped, currently only usbeth0 is supported for Ethernet."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-static {p1}, Landroid/net/NetworkUtils;->disableInterface(Ljava/lang/String;)I

    goto :goto_0
.end method

.method private interfaceRemoved(Ljava/lang/String;)V
    .locals 3
    .parameter "iface"

    .prologue
    .line 509
    const-string/jumbo v0, "usbeth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 510
    const-string v0, "EthernetStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interfaceRemoved "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const-string/jumbo v0, "usbeth0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 512
    iput-object p1, p0, Landroid/net/ethernet/EthernetStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 513
    const v0, 0x60016

    invoke-virtual {p0, v0}, Landroid/net/ethernet/EthernetStateMachine;->sendMessage(I)V

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 515
    :cond_1
    const-string v0, "EthernetStateMachine"

    const-string v1, "Skipped, only usbeth0 is supported for Ethernet."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private notifyCableState(Z)V
    .locals 3
    .parameter "isPlug"

    .prologue
    .line 521
    const-string v0, "EthernetStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCableState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    if-eqz p1, :cond_0

    .line 523
    const v0, 0x6001f

    invoke-virtual {p0, v0}, Landroid/net/ethernet/EthernetStateMachine;->sendMessage(I)V

    .line 527
    :goto_0
    return-void

    .line 525
    :cond_0
    const v0, 0x60020

    invoke-virtual {p0, v0}, Landroid/net/ethernet/EthernetStateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method private notifyConfigChanged(I)V
    .locals 3
    .parameter "flags"

    .prologue
    .line 530
    const-string v0, "EthernetStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyConfigChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    const v0, 0x6000b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/ethernet/EthernetStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/ethernet/EthernetStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 532
    return-void
.end method

.method private notifyMobileDataConnected()V
    .locals 2

    .prologue
    .line 540
    const-string v0, "EthernetStateMachine"

    const-string v1, "notifyMobileDataConnected while ethernet is connected."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const v0, 0x6000d

    invoke-virtual {p0, v0}, Landroid/net/ethernet/EthernetStateMachine;->sendMessage(I)V

    .line 542
    return-void
.end method

.method private notifyWifiConnected()V
    .locals 2

    .prologue
    .line 535
    const-string v0, "EthernetStateMachine"

    const-string v1, "notifyWifiConnected while ethernet is connected."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const v0, 0x6000c

    invoke-virtual {p0, v0}, Landroid/net/ethernet/EthernetStateMachine;->sendMessage(I)V

    .line 537
    return-void
.end method

.method private reconfigure()V
    .locals 8

    .prologue
    .line 865
    new-instance v2, Landroid/net/InterfaceConfiguration;

    invoke-direct {v2}, Landroid/net/InterfaceConfiguration;-><init>()V

    .line 866
    .local v2, ifcg:Landroid/net/InterfaceConfiguration;
    iget-object v6, p0, Landroid/net/ethernet/EthernetStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    monitor-enter v6

    .line 867
    :try_start_0
    iget-object v5, p0, Landroid/net/ethernet/EthernetStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    invoke-virtual {v5}, Landroid/net/DhcpInfoInternal;->makeLinkAddress()Landroid/net/LinkAddress;

    move-result-object v5

    iput-object v5, v2, Landroid/net/InterfaceConfiguration;->addr:Landroid/net/LinkAddress;

    .line 868
    iget-object v5, v2, Landroid/net/InterfaceConfiguration;->addr:Landroid/net/LinkAddress;

    if-nez v5, :cond_0

    .line 869
    const-string v5, "EthernetStateMachine"

    const-string v7, "Failed to update ip: empty ipaddress."

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    monitor-exit v6

    .line 885
    :goto_0
    return-void

    .line 872
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 873
    const-string v5, "[up]"

    iput-object v5, v2, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    .line 875
    const-string v5, "network_management"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 876
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v3

    .line 878
    .local v3, netd:Landroid/os/INetworkManagementService;
    :try_start_1
    iget-object v5, p0, Landroid/net/ethernet/EthernetStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v3, v5, v2}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 880
    :catch_0
    move-exception v4

    .line 881
    .local v4, re:Landroid/os/RemoteException;
    const-string v5, "EthernetStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to update ip: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 872
    .end local v0           #b:Landroid/os/IBinder;
    .end local v3           #netd:Landroid/os/INetworkManagementService;
    .end local v4           #re:Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 882
    .restart local v0       #b:Landroid/os/IBinder;
    .restart local v3       #netd:Landroid/os/INetworkManagementService;
    :catch_1
    move-exception v1

    .line 883
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v5, "EthernetStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to update ip: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resetEthernet()V
    .locals 3

    .prologue
    .line 490
    const-string v0, "EthernetStateMachine"

    const-string v1, "Ethernet is reset for something wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const v0, 0x60002

    invoke-virtual {p0, v0}, Landroid/net/ethernet/EthernetStateMachine;->sendMessage(I)V

    .line 492
    const v0, 0x60001

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/ethernet/EthernetStateMachine;->sendMessageDelayed(IJ)V

    .line 493
    return-void
.end method

.method private sendLinkConfigurationChangedBroadcast()V
    .locals 4

    .prologue
    .line 681
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.ethernet.LINK_CONFIGURATION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 682
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 683
    const-string v1, "linkProperties"

    new-instance v2, Landroid/net/LinkProperties;

    iget-object v3, p0, Landroid/net/ethernet/EthernetStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v2, v3}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 684
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 685
    return-void
.end method

.method private sendNetworkStateChangeBroadcast()V
    .locals 4

    .prologue
    .line 672
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.ethernet.NETWORK_STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 673
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x3000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 675
    const-string v1, "networkInfo"

    iget-object v2, p0, Landroid/net/ethernet/EthernetStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 676
    const-string v1, "linkProperties"

    new-instance v2, Landroid/net/LinkProperties;

    iget-object v3, p0, Landroid/net/ethernet/EthernetStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v2, v3}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 677
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 678
    return-void
.end method

.method private setEthernetHwState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 565
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateMachine;->mEthernetHwState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 566
    .local v1, previousState:I
    if-ne v1, p1, :cond_0

    .line 582
    :goto_0
    return-void

    .line 572
    :cond_0
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateMachine;->mEthernetHwState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 576
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.motorola.android.net.ethernet.ETH_HW_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 577
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 578
    const-string v2, "eth_HW_state"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 579
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 581
    invoke-direct {p0}, Landroid/net/ethernet/EthernetStateMachine;->updateNotification()V

    goto :goto_0
.end method

.method private setEthernetState(I)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    .line 545
    iget-object v3, p0, Landroid/net/ethernet/EthernetStateMachine;->mEthernetState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 546
    .local v1, previousState:I
    if-ne v1, p1, :cond_0

    .line 562
    :goto_0
    return-void

    .line 552
    :cond_0
    iget-object v3, p0, Landroid/net/ethernet/EthernetStateMachine;->mEthernetState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 556
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.motorola.android.net.ethernet.ENABLE_STATE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 557
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 558
    const-string v3, "ethernet_enabled"

    if-ne p1, v2, :cond_1

    :goto_1
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 559
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 561
    invoke-direct {p0}, Landroid/net/ethernet/EthernetStateMachine;->updateNotification()V

    goto :goto_0

    .line 558
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 2
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    .line 713
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 714
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, p1, v1, v1}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    :cond_0
    return-void
.end method

.method private updateNotification()V
    .locals 10

    .prologue
    const v9, 0x1080601

    .line 585
    iget-boolean v6, p0, Landroid/net/ethernet/EthernetStateMachine;->mShowNotification:Z

    if-nez v6, :cond_1

    .line 668
    :cond_0
    :goto_0
    return-void

    .line 589
    :cond_1
    iget-object v6, p0, Landroid/net/ethernet/EthernetStateMachine;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 591
    .local v3, notificationManager:Landroid/app/NotificationManager;
    if-eqz v3, :cond_0

    .line 595
    const/4 v2, 0x0

    .line 596
    .local v2, iconId:I
    const/4 v5, 0x0

    .line 597
    .local v5, title:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 599
    .local v1, details:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    invoke-virtual {p0}, Landroid/net/ethernet/EthernetStateMachine;->syncGetEthernetState()I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 600
    invoke-virtual {p0}, Landroid/net/ethernet/EthernetStateMachine;->syncGetEthernetHwState()I

    move-result v4

    .line 601
    .local v4, state:I
    packed-switch v4, :pswitch_data_0

    .line 623
    :pswitch_0
    const v2, 0x1080602

    .line 624
    iget-object v6, p0, Landroid/net/ethernet/EthernetStateMachine;->mContext:Landroid/content/Context;

    const v7, 0x10404df

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 625
    iget-object v6, p0, Landroid/net/ethernet/EthernetStateMachine;->mContext:Landroid/content/Context;

    const v7, 0x10404e0

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 635
    .end local v4           #state:I
    :goto_1
    const v0, 0x1080601

    .line 638
    .local v0, ID_ETHERNET_NOTIFICATION:I
    if-nez v2, :cond_3

    .line 639
    invoke-virtual {v3, v9}, Landroid/app/NotificationManager;->cancel(I)V

    .line 640
    iput v2, p0, Landroid/net/ethernet/EthernetStateMachine;->mNotificationIcon:I

    goto :goto_0

    .line 603
    .end local v0           #ID_ETHERNET_NOTIFICATION:I
    .restart local v4       #state:I
    :pswitch_1
    const/4 v2, 0x0

    .line 604
    goto :goto_1

    .line 613
    :pswitch_2
    const/4 v2, 0x0

    .line 615
    goto :goto_1

    .line 618
    :pswitch_3
    const v2, 0x1080600

    .line 619
    iget-object v6, p0, Landroid/net/ethernet/EthernetStateMachine;->mContext:Landroid/content/Context;

    const v7, 0x10404e1

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 620
    iget-object v6, p0, Landroid/net/ethernet/EthernetStateMachine;->mContext:Landroid/content/Context;

    const v7, 0x10404e2

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 621
    goto :goto_1

    .line 629
    .end local v4           #state:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 644
    .restart local v0       #ID_ETHERNET_NOTIFICATION:I
    :cond_3
    iget-object v6, p0, Landroid/net/ethernet/EthernetStateMachine;->mNotification:Landroid/app/Notification;

    if-nez v6, :cond_4

    .line 645
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    iput-object v6, p0, Landroid/net/ethernet/EthernetStateMachine;->mNotification:Landroid/app/Notification;

    .line 646
    iget-object v6, p0, Landroid/net/ethernet/EthernetStateMachine;->mNotification:Landroid/app/Notification;

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Landroid/app/Notification;->when:J

    .line 647
    iget-object v6, p0, Landroid/net/ethernet/EthernetStateMachine;->mNotification:Landroid/app/Notification;

    const/4 v7, 0x0

    iput v7, v6, Landroid/app/Notification;->icon:I

    .line 648
    iget-object v6, p0, Landroid/net/ethernet/EthernetStateMachine;->mNotification:Landroid/app/Notification;

    const/16 v7, 0x10

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 649
    iget-object v6, p0, Landroid/net/ethernet/EthernetStateMachine;->mNotification:Landroid/app/Notification;

    const/4 v7, 0x0

    iput-object v7, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 652
    :cond_4
    iget v6, p0, Landroid/net/ethernet/EthernetStateMachine;->mNotificationIcon:I

    if-eq v6, v2, :cond_0

    .line 656
    iput v2, p0, Landroid/net/ethernet/EthernetStateMachine;->mNotificationIcon:I

    .line 658
    invoke-static {}, Landroid/net/ethernet/EthernetConfigStore;->isUsingStaticIp()Z

    move-result v6

    if-eqz v6, :cond_5

    iget v6, p0, Landroid/net/ethernet/EthernetStateMachine;->mNotificationIcon:I

    const v7, 0x1080600

    if-eq v6, v7, :cond_0

    .line 663
    :cond_5
    iget-object v6, p0, Landroid/net/ethernet/EthernetStateMachine;->mNotification:Landroid/app/Notification;

    iget v7, p0, Landroid/net/ethernet/EthernetStateMachine;->mNotificationIcon:I

    iput v7, v6, Landroid/app/Notification;->icon:I

    .line 666
    iget-object v6, p0, Landroid/net/ethernet/EthernetStateMachine;->mNotification:Landroid/app/Notification;

    iget-object v7, p0, Landroid/net/ethernet/EthernetStateMachine;->mContext:Landroid/content/Context;

    iget-object v8, p0, Landroid/net/ethernet/EthernetStateMachine;->mNotification:Landroid/app/Notification;

    iget-object v8, v8, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v7, v5, v1, v8}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 667
    iget-object v6, p0, Landroid/net/ethernet/EthernetStateMachine;->mNotification:Landroid/app/Notification;

    invoke-virtual {v3, v9, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 601
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method handlePostDhcpSetup()V
    .locals 0

    .prologue
    .line 769
    return-void
.end method

.method handlePreDhcpSetup()V
    .locals 2

    .prologue
    .line 763
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    const v1, 0x30006

    invoke-virtual {v0, v1}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    .line 766
    :cond_0
    return-void
.end method

.method public saveEthernetConfiguration(Landroid/net/ethernet/EthernetConfiguration;)Z
    .locals 1
    .parameter "config"

    .prologue
    .line 423
    invoke-static {p1}, Landroid/net/ethernet/EthernetConfigStore;->saveConfiguration(Landroid/net/ethernet/EthernetConfiguration;)Z

    move-result v0

    return v0
.end method

.method public setEthernetEnabled(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 356
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mLastEnableUid:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 357
    if-eqz p1, :cond_0

    .line 358
    const v0, 0x60001

    invoke-virtual {p0, v0}, Landroid/net/ethernet/EthernetStateMachine;->sendMessage(I)V

    .line 362
    :goto_0
    return-void

    .line 360
    :cond_0
    const v0, 0x60002

    invoke-virtual {p0, v0}, Landroid/net/ethernet/EthernetStateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method public startEthernet()V
    .locals 2

    .prologue
    .line 430
    invoke-virtual {p0}, Landroid/net/ethernet/EthernetStateMachine;->syncGetEthernetState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 431
    const v0, 0x60029

    invoke-virtual {p0, v0}, Landroid/net/ethernet/EthernetStateMachine;->sendMessage(I)V

    .line 433
    :cond_0
    return-void
.end method

.method public startService()V
    .locals 8

    .prologue
    .line 272
    iget-object v5, p0, Landroid/net/ethernet/EthernetStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v5}, Landroid/net/ethernet/EthernetStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 273
    iget-object v5, p0, Landroid/net/ethernet/EthernetStateMachine;->mAdapterConnectedState:Lcom/android/internal/util/State;

    iget-object v6, p0, Landroid/net/ethernet/EthernetStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v5, v6}, Landroid/net/ethernet/EthernetStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 274
    iget-object v5, p0, Landroid/net/ethernet/EthernetStateMachine;->mCableConnectedState:Lcom/android/internal/util/State;

    iget-object v6, p0, Landroid/net/ethernet/EthernetStateMachine;->mAdapterConnectedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v5, v6}, Landroid/net/ethernet/EthernetStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 275
    iget-object v5, p0, Landroid/net/ethernet/EthernetStateMachine;->mGettingIpState:Landroid/net/ethernet/EthernetStateMachine$GettingIpState;

    iget-object v6, p0, Landroid/net/ethernet/EthernetStateMachine;->mCableConnectedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v5, v6}, Landroid/net/ethernet/EthernetStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 276
    iget-object v5, p0, Landroid/net/ethernet/EthernetStateMachine;->mIpConnectedState:Landroid/net/ethernet/EthernetStateMachine$IpConnectedState;

    iget-object v6, p0, Landroid/net/ethernet/EthernetStateMachine;->mGettingIpState:Landroid/net/ethernet/EthernetStateMachine$GettingIpState;

    invoke-virtual {p0, v5, v6}, Landroid/net/ethernet/EthernetStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 277
    iget-object v5, p0, Landroid/net/ethernet/EthernetStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v5}, Landroid/net/ethernet/EthernetStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 279
    iget-object v5, p0, Landroid/net/ethernet/EthernetStateMachine;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/net/ethernet/EthernetConfigStore;->initialize(Landroid/content/Context;)V

    .line 282
    const-string v5, "network_management"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 283
    .local v1, b:Landroid/os/IBinder;
    invoke-static {v1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v4

    .line 284
    .local v4, service:Landroid/os/INetworkManagementService;
    if-eqz v4, :cond_0

    .line 285
    new-instance v5, Landroid/net/ethernet/EthernetStateMachine$InterfaceObserver;

    invoke-direct {v5, p0}, Landroid/net/ethernet/EthernetStateMachine$InterfaceObserver;-><init>(Landroid/net/ethernet/EthernetStateMachine;)V

    iput-object v5, p0, Landroid/net/ethernet/EthernetStateMachine;->mInterfaceObserver:Landroid/net/ethernet/EthernetStateMachine$InterfaceObserver;

    .line 287
    :try_start_0
    iget-object v5, p0, Landroid/net/ethernet/EthernetStateMachine;->mInterfaceObserver:Landroid/net/ethernet/EthernetStateMachine$InterfaceObserver;

    invoke-interface {v4, v5}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :cond_0
    :goto_0
    const-string v0, "DEVPATH=/devices/virtual/misc/asix_enable"

    .line 295
    .local v0, USBETHERNET_UEVENT_MATCH:Ljava/lang/String;
    iget-object v5, p0, Landroid/net/ethernet/EthernetStateMachine;->mUEventObserver:Landroid/os/UEventObserver;

    invoke-virtual {v5, v0}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 297
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 298
    .local v3, filter:Landroid/content/IntentFilter;
    const-string v5, "com.motorola.android.net.ethernet.ETH_CONFIG_CHANGED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 299
    const-string v5, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 300
    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 301
    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 302
    iget-object v5, p0, Landroid/net/ethernet/EthernetStateMachine;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/net/ethernet/EthernetStateMachine;->intentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 305
    const v5, 0x6000e

    const-wide/16 v6, 0xbb8

    invoke-virtual {p0, v5, v6, v7}, Landroid/net/ethernet/EthernetStateMachine;->sendMessageDelayed(IJ)V

    .line 306
    const/4 v5, 0x0

    iput v5, p0, Landroid/net/ethernet/EthernetStateMachine;->mCheckAdapterCount:I

    .line 310
    invoke-virtual {p0}, Landroid/net/ethernet/EthernetStateMachine;->start()V

    .line 311
    return-void

    .line 288
    .end local v0           #USBETHERNET_UEVENT_MATCH:Ljava/lang/String;
    .end local v3           #filter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v2

    .line 289
    .local v2, e:Landroid/os/RemoteException;
    const-string v5, "EthernetStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not register InterfaceObserver: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/net/ethernet/EthernetStateMachine;->mInterfaceObserver:Landroid/net/ethernet/EthernetStateMachine$InterfaceObserver;

    goto :goto_0
.end method

.method public stopEthernet()V
    .locals 1

    .prologue
    .line 439
    const v0, 0x6002a

    invoke-virtual {p0, v0}, Landroid/net/ethernet/EthernetStateMachine;->sendMessage(I)V

    .line 440
    return-void
.end method

.method public syncGetDhcpInfo()Landroid/net/DhcpInfo;
    .locals 2

    .prologue
    .line 443
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    monitor-enter v1

    .line 444
    :try_start_0
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    invoke-virtual {v0}, Landroid/net/DhcpInfoInternal;->makeDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 445
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public syncGetEthernetConfiguration()Landroid/net/ethernet/EthernetConfiguration;
    .locals 1

    .prologue
    .line 416
    invoke-static {}, Landroid/net/ethernet/EthernetConfigStore;->getConfiguration()Landroid/net/ethernet/EthernetConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public syncGetEthernetHwState()I
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mEthernetHwState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public syncGetEthernetHwStateByName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mEthernetHwState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 408
    const-string v0, "[invalid state]"

    :goto_0
    return-object v0

    .line 398
    :pswitch_0
    const-string v0, "Adapter Disconnected"

    goto :goto_0

    .line 400
    :pswitch_1
    const-string v0, "Adapter Connected"

    goto :goto_0

    .line 402
    :pswitch_2
    const-string v0, "Cable Connected"

    goto :goto_0

    .line 404
    :pswitch_3
    const-string v0, "Getting ip address"

    goto :goto_0

    .line 406
    :pswitch_4
    const-string v0, "Ip connected"

    goto :goto_0

    .line 396
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public syncGetEthernetState()I
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mEthernetState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public syncGetEthernetStateByName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine;->mEthernetState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 381
    const-string v0, "[invalid state]"

    :goto_0
    return-object v0

    .line 377
    :pswitch_0
    const-string v0, "disabled"

    goto :goto_0

    .line 379
    :pswitch_1
    const-string v0, "enabled"

    goto :goto_0

    .line 375
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 450
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 451
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 452
    .local v0, LS:Ljava/lang/String;
    const-string v2, "current HSM state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Landroid/net/ethernet/EthernetStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 453
    const-string v2, "mLinkProperties "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/ethernet/EthernetStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 454
    const-string v2, "mDhcpInfoInternal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/ethernet/EthernetStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 455
    const-string v2, "mNetworkInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/ethernet/EthernetStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 456
    const-string v2, "mReconnectCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/ethernet/EthernetStateMachine;->mReconnectCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 457
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
