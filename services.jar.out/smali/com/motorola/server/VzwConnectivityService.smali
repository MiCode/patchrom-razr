.class public Lcom/motorola/server/VzwConnectivityService;
.super Lcom/verizon/net/IVzwConnectivityManager$Stub;
.source "VzwConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/server/VzwConnectivityService$MyHandler;,
        Lcom/motorola/server/VzwConnectivityService$DataRecord;
    }
.end annotation


# static fields
.field private static final INDEX_RX:I = 0x0

.field private static final INDEX_TX:I = 0x1

.field private static final KEY_ACTIVE:Ljava/lang/String; = "active"

.field private static final KEY_IFACE:Ljava/lang/String; = "iface"

.field private static final KEY_RX_BYTES:Ljava/lang/String; = "rx_bytes"

.field private static final KEY_RX_PACKETS:Ljava/lang/String; = "rx_packets"

.field private static final KEY_SNAP_RX_BYTES:Ljava/lang/String; = "snap_rx_bytes"

.field private static final KEY_SNAP_RX_PACKETS:Ljava/lang/String; = "snap_rx_packets"

.field private static final KEY_SNAP_TX_BYTES:Ljava/lang/String; = "snap_tx_bytes"

.field private static final KEY_SNAP_TX_PACKETS:Ljava/lang/String; = "snap_tx_packets"

.field private static final KEY_TX_BYTES:Ljava/lang/String; = "tx_bytes"

.field private static final KEY_TX_PACKETS:Ljava/lang/String; = "tx_packets"

.field private static final MSG_CONNECTIVITY_ACTION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VzwConnectivityService"


# instance fields
.field private mApnIfacesList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mApnNameSuffix:Ljava/lang/String;

.field mConnManager:Landroid/net/IConnectivityManager;

.field private mConnReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIfaceApnsList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIfaceLastDisconBase:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mIfaceStats:Ljava/io/File;

.field private mNetworkApnStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/motorola/server/VzwConnectivityService$DataRecord;",
            ">;"
        }
    .end annotation
.end field

.field mPhone:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/verizon/net/IVzwConnectivityManager$Stub;-><init>()V

    .line 70
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/server/VzwConnectivityService;->mNetworkApnStats:Ljava/util/HashMap;

    .line 71
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/server/VzwConnectivityService;->mIfaceApnsList:Ljava/util/HashMap;

    .line 72
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/server/VzwConnectivityService;->mApnIfacesList:Ljava/util/HashMap;

    .line 73
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/server/VzwConnectivityService;->mIfaceLastDisconBase:Ljava/util/HashMap;

    .line 74
    const-string v1, "_APN"

    iput-object v1, p0, Lcom/motorola/server/VzwConnectivityService;->mApnNameSuffix:Ljava/lang/String;

    .line 313
    new-instance v1, Lcom/motorola/server/VzwConnectivityService$1;

    invoke-direct {v1, p0}, Lcom/motorola/server/VzwConnectivityService$1;-><init>(Lcom/motorola/server/VzwConnectivityService;)V

    iput-object v1, p0, Lcom/motorola/server/VzwConnectivityService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    .line 96
    iput-object p1, p0, Lcom/motorola/server/VzwConnectivityService;->mContext:Landroid/content/Context;

    .line 97
    iget-object v1, p0, Lcom/motorola/server/VzwConnectivityService;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/motorola/server/VzwConnectivityService;->mPhone:Landroid/telephony/TelephonyManager;

    .line 99
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "VzwConnectivityServiceThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, handlerThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 101
    new-instance v1, Lcom/motorola/server/VzwConnectivityService$MyHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/motorola/server/VzwConnectivityService$MyHandler;-><init>(Lcom/motorola/server/VzwConnectivityService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/motorola/server/VzwConnectivityService;->mHandler:Landroid/os/Handler;

    .line 103
    invoke-direct {p0}, Lcom/motorola/server/VzwConnectivityService;->registerForConnectivityIntents()V

    .line 104
    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/net/xt_qtaguid/iface_stat_all"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/motorola/server/VzwConnectivityService;->mIfaceStats:Ljava/io/File;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/server/VzwConnectivityService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/motorola/server/VzwConnectivityService;->mIfaceLastDisconBase:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/server/VzwConnectivityService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/motorola/server/VzwConnectivityService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/server/VzwConnectivityService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/motorola/server/VzwConnectivityService;->updateNetworkApnStats()V

    return-void
.end method

.method private getIfaceName(Ljava/util/HashSet;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 413
    .local p1, ifaceSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 415
    .local v2, result:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 417
    .local v1, iface:Ljava/lang/String;
    move-object v2, v1

    .line 421
    .end local v1           #iface:Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method private static getParsedInt(Ljava/util/HashMap;Ljava/lang/String;)I
    .locals 2
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 644
    .local p0, parsed:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 645
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getParsedLong(Ljava/util/HashMap;Ljava/lang/String;)J
    .locals 3
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .prologue
    .line 649
    .local p0, parsed:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 650
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method private static parseLine(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 635
    .local p0, keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p1, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, outParsed:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    .line 637
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 638
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 639
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 641
    :cond_0
    return-void
.end method

.method private registerForConnectivityIntents()V
    .locals 3

    .prologue
    .line 308
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 309
    .local v0, connFilter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 310
    iget-object v1, p0, Lcom/motorola/server/VzwConnectivityService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/server/VzwConnectivityService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 311
    return-void
.end method

.method private static splitLine(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .parameter "line"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 621
    .local p1, outSplit:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 623
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, " \t\n\r\u000c:"

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    .local v0, t:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 625
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 627
    :cond_0
    return-void
.end method

.method private updateNetworkApnStats()V
    .locals 21

    .prologue
    .line 341
    const/16 v19, 0x0

    .line 343
    .local v19, reusedIface:Z
    const/4 v15, 0x0

    .line 346
    .local v15, apnIfacePair:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/motorola/server/VzwConnectivityService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v8}, Landroid/net/IConnectivityManager;->getAPNInterfacePairs()Ljava/util/Map;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v15

    .line 355
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/motorola/server/VzwConnectivityService;->checkLegacyNetwork(Ljava/util/Map;)V

    .line 357
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/motorola/server/VzwConnectivityService;->mNetworkApnStats:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 359
    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 360
    .local v14, apn:Ljava/lang/String;
    invoke-interface {v15, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/HashSet;

    .line 361
    .local v18, ifaceSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/motorola/server/VzwConnectivityService;->getIfaceName(Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object v3

    .line 362
    .local v3, iface:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Lcom/motorola/server/VzwConnectivityService;->addNewApnRecord(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 347
    .end local v3           #iface:Ljava/lang/String;
    .end local v14           #apn:Ljava/lang/String;
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v18           #ifaceSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_0
    move-exception v16

    .line 348
    .local v16, e:Landroid/os/RemoteException;
    invoke-virtual/range {v16 .. v16}, Landroid/os/RemoteException;->printStackTrace()V

    .line 410
    .end local v16           #e:Landroid/os/RemoteException;
    :cond_0
    :goto_1
    return-void

    .line 350
    :catch_1
    move-exception v16

    .line 351
    .local v16, e:Ljava/lang/NullPointerException;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 366
    .end local v16           #e:Ljava/lang/NullPointerException;
    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/motorola/server/VzwConnectivityService;->mNetworkApnStats:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .restart local v17       #i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 367
    .restart local v14       #apn:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/motorola/server/VzwConnectivityService;->mNetworkApnStats:Ljava/util/HashMap;

    invoke-virtual {v8, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/server/VzwConnectivityService$DataRecord;

    .line 368
    .local v2, record:Lcom/motorola/server/VzwConnectivityService$DataRecord;
    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 371
    invoke-virtual {v2}, Lcom/motorola/server/VzwConnectivityService$DataRecord;->isActive()Z

    move-result v8

    if-nez v8, :cond_2

    .line 372
    const-string v8, "VzwConnectivityService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "reconnect, record("

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v20, "): "

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/motorola/server/VzwConnectivityService$DataRecord;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-interface {v15, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/HashSet;

    .line 374
    .restart local v18       #ifaceSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/motorola/server/VzwConnectivityService;->getIfaceName(Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object v3

    .line 375
    .restart local v3       #iface:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14}, Lcom/motorola/server/VzwConnectivityService;->isIfaceUsedByOtherApn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    .line 376
    if-nez v19, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Lcom/motorola/server/VzwConnectivityService;->isApnUseOneIface(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 377
    const-string v8, "VzwConnectivityService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "reconnect to apn unique interface: "

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-virtual {v2}, Lcom/motorola/server/VzwConnectivityService$DataRecord;->resetData()V

    .line 386
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14}, Lcom/motorola/server/VzwConnectivityService;->updateIfaceApnList(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 380
    :cond_3
    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lcom/motorola/server/VzwConnectivityService;->getLastDisconnectBase(Ljava/lang/String;I)J

    move-result-wide v4

    .line 381
    .local v4, disconRxBase:J
    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lcom/motorola/server/VzwConnectivityService;->getLastDisconnectBase(Ljava/lang/String;I)J

    move-result-wide v6

    .line 382
    .local v6, disconTxBase:J
    const-string v8, "VzwConnectivityService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "re-connect to different iface: "

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-virtual/range {v2 .. v7}, Lcom/motorola/server/VzwConnectivityService$DataRecord;->connectUpdate(Ljava/lang/String;JJ)V

    goto :goto_3

    .line 391
    .end local v3           #iface:Ljava/lang/String;
    .end local v4           #disconRxBase:J
    .end local v6           #disconTxBase:J
    .end local v18           #ifaceSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_4
    invoke-virtual {v2}, Lcom/motorola/server/VzwConnectivityService$DataRecord;->isActive()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 392
    const-string v8, "VzwConnectivityService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "disconnected, record("

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v20, "): "

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/motorola/server/VzwConnectivityService$DataRecord;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-virtual {v2}, Lcom/motorola/server/VzwConnectivityService$DataRecord;->getIface()Ljava/lang/String;

    move-result-object v3

    .line 394
    .restart local v3       #iface:Ljava/lang/String;
    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lcom/motorola/server/VzwConnectivityService;->getProcTrafficBytes(Ljava/lang/String;I)J

    move-result-wide v10

    .line 395
    .local v10, rxBytes:J
    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lcom/motorola/server/VzwConnectivityService;->getProcTrafficBytes(Ljava/lang/String;I)J

    move-result-wide v12

    .local v12, txBytes:J
    move-object v8, v2

    move-object v9, v3

    .line 396
    invoke-virtual/range {v8 .. v13}, Lcom/motorola/server/VzwConnectivityService$DataRecord;->disconnectUpdate(Ljava/lang/String;JJ)V

    goto/16 :goto_2

    .line 401
    .end local v2           #record:Lcom/motorola/server/VzwConnectivityService$DataRecord;
    .end local v3           #iface:Ljava/lang/String;
    .end local v10           #rxBytes:J
    .end local v12           #txBytes:J
    .end local v14           #apn:Ljava/lang/String;
    :cond_5
    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_6
    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 402
    .restart local v14       #apn:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/motorola/server/VzwConnectivityService;->mNetworkApnStats:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 404
    invoke-interface {v15, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/HashSet;

    .line 405
    .restart local v18       #ifaceSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/motorola/server/VzwConnectivityService;->getIfaceName(Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object v3

    .line 406
    .restart local v3       #iface:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Lcom/motorola/server/VzwConnectivityService;->addNewApnRecord(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method


# virtual methods
.method addNewApnRecord(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "apn"
    .parameter "iface"

    .prologue
    const-wide/16 v3, 0x0

    .line 536
    invoke-virtual {p0, p2, p1}, Lcom/motorola/server/VzwConnectivityService;->isIfaceUsedByOtherApn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 539
    .local v7, reusedIface:Z
    if-nez v7, :cond_0

    .line 540
    const-string v1, "VzwConnectivityService"

    const-string v2, "new interface, rxBase=txBase=0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    new-instance v0, Lcom/motorola/server/VzwConnectivityService$DataRecord;

    move-object v1, p0

    move-object v2, p2

    move-wide v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/motorola/server/VzwConnectivityService$DataRecord;-><init>(Lcom/motorola/server/VzwConnectivityService;Ljava/lang/String;JJ)V

    .line 548
    .local v0, record:Lcom/motorola/server/VzwConnectivityService$DataRecord;
    :goto_0
    const-string v1, "VzwConnectivityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "new record("

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "): "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/motorola/server/VzwConnectivityService$DataRecord;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object v1, p0, Lcom/motorola/server/VzwConnectivityService;->mNetworkApnStats:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    invoke-virtual {p0, p2, p1}, Lcom/motorola/server/VzwConnectivityService;->updateIfaceApnList(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    return-void

    .line 543
    .end local v0           #record:Lcom/motorola/server/VzwConnectivityService$DataRecord;
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Lcom/motorola/server/VzwConnectivityService;->getLastDisconnectBase(Ljava/lang/String;I)J

    move-result-wide v3

    .line 544
    .local v3, disconRxBase:J
    const/4 v1, 0x1

    invoke-virtual {p0, p2, v1}, Lcom/motorola/server/VzwConnectivityService;->getLastDisconnectBase(Ljava/lang/String;I)J

    move-result-wide v5

    .line 545
    .local v5, disconTxBase:J
    const-string v1, "VzwConnectivityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reused interface, rxBase="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ", txBase="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    new-instance v0, Lcom/motorola/server/VzwConnectivityService$DataRecord;

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/motorola/server/VzwConnectivityService$DataRecord;-><init>(Lcom/motorola/server/VzwConnectivityService;Ljava/lang/String;JJ)V

    .restart local v0       #record:Lcom/motorola/server/VzwConnectivityService$DataRecord;
    goto :goto_0
.end method

.method public bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    .locals 1
    .parameter "connManager"

    .prologue
    .line 108
    const-string v0, "missing IConnectivityManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IConnectivityManager;

    iput-object v0, p0, Lcom/motorola/server/VzwConnectivityService;->mConnManager:Landroid/net/IConnectivityManager;

    .line 109
    return-void
.end method

.method checkLegacyNetwork(Ljava/util/Map;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 448
    .local p1, apnIfacePair:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    .line 450
    .local v0, abnormalReport:Z
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 451
    .local v1, apn:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/motorola/server/VzwConnectivityService;->isLegacyNetwork()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 452
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 453
    const-string v5, "VzwConnectivityService"

    const-string v6, "legacy network, update apn as VZWINTERNET"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    .line 455
    .local v4, original:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 456
    .local v2, clone:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    const-string v1, "VZWINTERNET"

    .line 458
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 460
    .end local v2           #clone:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v4           #original:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_1
    const-string v5, "VzwConnectivityService"

    const-string v6, "more than one link are reported abnormally in legacy cdma mode"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const/4 v0, 0x1

    .line 471
    .end local v1           #apn:Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_3

    .line 472
    const-string v5, "VzwConnectivityService"

    const-string v6, "Clear apn/iface pair. Ignore CONNECTED report for legacy link. Non-legacy link is treated as DISCONNECTED in later traffic counting"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 476
    :cond_3
    return-void

    .line 465
    .restart local v1       #apn:Ljava/lang/String;
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    .line 466
    const-string v5, "VzwConnectivityService"

    const-string v6, "apn is null but not legacy network."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAPNUsageRxBytes(Ljava/lang/String;I)J
    .locals 9
    .parameter "apnName"
    .parameter "networkType"

    .prologue
    const-wide/16 v4, 0x0

    .line 137
    const-string v6, "VzwConnectivityService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getAPNUsageRxBytes: apnName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", networkType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-wide/16 v1, 0x0

    .line 140
    .local v1, ret:J
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 141
    :cond_0
    const-string v6, "VzwConnectivityService"

    const-string v7, "invalid null apnName"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :goto_0
    return-wide v4

    .line 145
    :cond_1
    if-eqz p2, :cond_2

    .line 146
    const-string v6, "VzwConnectivityService"

    const-string v7, "not supported network type, only support ConnectivityManager.TYPE_MOBILE(0)"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 151
    :cond_2
    move-object v3, p1

    .line 152
    .local v3, savedApnName:Ljava/lang/String;
    iget-object v6, p0, Lcom/motorola/server/VzwConnectivityService;->mApnNameSuffix:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 153
    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v8, p0, Lcom/motorola/server/VzwConnectivityService;->mApnNameSuffix:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 156
    :cond_3
    iget-object v6, p0, Lcom/motorola/server/VzwConnectivityService;->mNetworkApnStats:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/server/VzwConnectivityService$DataRecord;

    .line 157
    .local v0, rec:Lcom/motorola/server/VzwConnectivityService$DataRecord;
    if-nez v0, :cond_4

    .line 158
    const-string v6, "VzwConnectivityService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "no data for this apn:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 161
    :cond_4
    invoke-virtual {v0}, Lcom/motorola/server/VzwConnectivityService$DataRecord;->getRxBytes()J

    move-result-wide v1

    .line 162
    const-string v4, "VzwConnectivityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "return RxBytes = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v4, v1

    .line 163
    goto :goto_0
.end method

.method public getAPNUsageTxBytes(Ljava/lang/String;I)J
    .locals 9
    .parameter "apnName"
    .parameter "networkType"

    .prologue
    const-wide/16 v4, 0x0

    .line 171
    const-string v6, "VzwConnectivityService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getAPNUsageTxBytes: apnName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", networkType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const-wide/16 v1, 0x0

    .line 174
    .local v1, ret:J
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 175
    :cond_0
    const-string v6, "VzwConnectivityService"

    const-string v7, "invalid null apnName"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :goto_0
    return-wide v4

    .line 179
    :cond_1
    if-eqz p2, :cond_2

    .line 180
    const-string v6, "VzwConnectivityService"

    const-string v7, "not supported network type, only support ConnectivityManager.TYPE_MOBILE(0)"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 185
    :cond_2
    move-object v3, p1

    .line 186
    .local v3, savedApnName:Ljava/lang/String;
    iget-object v6, p0, Lcom/motorola/server/VzwConnectivityService;->mApnNameSuffix:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 187
    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v8, p0, Lcom/motorola/server/VzwConnectivityService;->mApnNameSuffix:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 190
    :cond_3
    iget-object v6, p0, Lcom/motorola/server/VzwConnectivityService;->mNetworkApnStats:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/server/VzwConnectivityService$DataRecord;

    .line 191
    .local v0, rec:Lcom/motorola/server/VzwConnectivityService$DataRecord;
    if-nez v0, :cond_4

    .line 192
    const-string v6, "VzwConnectivityService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "no data for this apn:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 195
    :cond_4
    invoke-virtual {v0}, Lcom/motorola/server/VzwConnectivityService$DataRecord;->getTxBytes()J

    move-result-wide v1

    .line 196
    const-string v4, "VzwConnectivityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "return TxBytes = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v4, v1

    .line 197
    goto :goto_0
.end method

.method getLastDisconnectBase(Ljava/lang/String;I)J
    .locals 3
    .parameter "iface"
    .parameter "index"

    .prologue
    .line 527
    iget-object v1, p0, Lcom/motorola/server/VzwConnectivityService;->mIfaceLastDisconBase:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 528
    .local v0, baseData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-nez v0, :cond_0

    .line 529
    const-wide/16 v1, 0x0

    .line 531
    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0
.end method

.method public getNetworkInterface(I)Ljava/lang/String;
    .locals 7
    .parameter "networkType"

    .prologue
    .line 118
    :try_start_0
    iget-object v4, p0, Lcom/motorola/server/VzwConnectivityService;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 120
    .local v2, mConnMgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v2, p1}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v1

    .line 121
    .local v1, lp:Landroid/net/LinkProperties;
    const/4 v3, 0x0

    .line 122
    .local v3, networkInterface:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 123
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    .line 125
    :cond_0
    const-string v4, "VzwConnectivityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Interface Name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v1           #lp:Landroid/net/LinkProperties;
    .end local v2           #mConnMgr:Landroid/net/ConnectivityManager;
    .end local v3           #networkInterface:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "VzwConnectivityService"

    const-string v5, "Error Getting InterfaceName"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v3, 0x0

    goto :goto_0
.end method

.method getProcTrafficBytes(Ljava/lang/String;I)J
    .locals 16
    .parameter "iface"
    .parameter "index"

    .prologue
    .line 555
    const-wide/16 v8, 0x0

    .line 557
    .local v8, ret:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/server/VzwConnectivityService;->mIfaceStats:Ljava/io/File;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/server/VzwConnectivityService;->mIfaceStats:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_2

    .line 558
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/server/VzwConnectivityService;->mIfaceStats:Ljava/io/File;

    if-nez v13, :cond_1

    .line 559
    const-string v13, "VzwConnectivityService"

    const-string v14, "mIfaceStats = null, failed to open file"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-wide v10, v8

    .line 614
    .end local v8           #ret:J
    .local v10, ret:J
    :goto_1
    return-wide v10

    .line 561
    .end local v10           #ret:J
    .restart local v8       #ret:J
    :cond_1
    const-string v13, "VzwConnectivityService"

    const-string v14, "/proc/net/xt_qtaguid/iface_stat_all does not exist"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 566
    :cond_2
    const/16 v13, 0xa

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "iface"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const-string v15, "active"

    aput-object v15, v13, v14

    const/4 v14, 0x2

    const-string v15, "snap_rx_bytes"

    aput-object v15, v13, v14

    const/4 v14, 0x3

    const-string v15, "snap_rx_packets"

    aput-object v15, v13, v14

    const/4 v14, 0x4

    const-string v15, "snap_tx_bytes"

    aput-object v15, v13, v14

    const/4 v14, 0x5

    const-string v15, "snap_tx_packets"

    aput-object v15, v13, v14

    const/4 v14, 0x6

    const-string v15, "rx_bytes"

    aput-object v15, v13, v14

    const/4 v14, 0x7

    const-string v15, "rx_packets"

    aput-object v15, v13, v14

    const/16 v14, 0x8

    const-string v15, "tx_bytes"

    aput-object v15, v13, v14

    const/16 v14, 0x9

    const-string v15, "tx_packets"

    aput-object v15, v13, v14

    invoke-static {v13}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    .line 569
    .local v3, keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v12

    .line 570
    .local v12, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v5

    .line 572
    .local v5, parsed:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 574
    .local v6, reader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/FileReader;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/server/VzwConnectivityService;->mIfaceStats:Ljava/io/File;

    invoke-direct {v13, v14}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 577
    .end local v6           #reader:Ljava/io/BufferedReader;
    .local v7, reader:Ljava/io/BufferedReader;
    :cond_3
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, line:Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 578
    invoke-static {v4, v12}, Lcom/motorola/server/VzwConnectivityService;->splitLine(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 579
    invoke-static {v3, v12, v5}, Lcom/motorola/server/VzwConnectivityService;->parseLine(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 581
    const-string v13, "iface"

    invoke-virtual {v5, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 584
    if-nez p2, :cond_5

    .line 585
    const-string v13, "snap_rx_bytes"

    invoke-static {v5, v13}, Lcom/motorola/server/VzwConnectivityService;->getParsedLong(Ljava/util/HashMap;Ljava/lang/String;)J

    move-result-wide v8

    .line 591
    :goto_2
    const-string v13, "active"

    invoke-static {v5, v13}, Lcom/motorola/server/VzwConnectivityService;->getParsedInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_6

    const/4 v1, 0x1

    .line 592
    .local v1, active:Z
    :goto_3
    if-eqz v1, :cond_4

    .line 593
    if-nez p2, :cond_7

    .line 594
    const-string v13, "rx_bytes"

    invoke-static {v5, v13}, Lcom/motorola/server/VzwConnectivityService;->getParsedLong(Ljava/util/HashMap;Ljava/lang/String;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-wide v13

    add-long/2addr v8, v13

    .line 611
    .end local v1           #active:Z
    :cond_4
    :goto_4
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v6, v7

    .end local v4           #line:Ljava/lang/String;
    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    :goto_5
    move-wide v10, v8

    .line 614
    .end local v8           #ret:J
    .restart local v10       #ret:J
    goto/16 :goto_1

    .line 587
    .end local v6           #reader:Ljava/io/BufferedReader;
    .end local v10           #ret:J
    .restart local v4       #line:Ljava/lang/String;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    .restart local v8       #ret:J
    :cond_5
    :try_start_2
    const-string v13, "snap_tx_bytes"

    invoke-static {v5, v13}, Lcom/motorola/server/VzwConnectivityService;->getParsedLong(Ljava/util/HashMap;Ljava/lang/String;)J

    move-result-wide v8

    goto :goto_2

    .line 591
    :cond_6
    const/4 v1, 0x0

    goto :goto_3

    .line 596
    .restart local v1       #active:Z
    :cond_7
    const-string v13, "tx_bytes"

    invoke-static {v5, v13}, Lcom/motorola/server/VzwConnectivityService;->getParsedLong(Ljava/util/HashMap;Ljava/lang/String;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-wide v13

    add-long/2addr v8, v13

    goto :goto_4

    .line 601
    .end local v1           #active:Z
    .end local v4           #line:Ljava/lang/String;
    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 602
    .local v2, e:Ljava/lang/NullPointerException;
    :goto_6
    :try_start_3
    const-string v13, "VzwConnectivityService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "problem parsing stats: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 611
    .end local v2           #e:Ljava/lang/NullPointerException;
    :goto_7
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_5

    .line 604
    :catch_1
    move-exception v2

    .line 605
    .local v2, e:Ljava/lang/NumberFormatException;
    :goto_8
    :try_start_4
    const-string v13, "VzwConnectivityService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "problem parsing stats: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_7

    .line 611
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v13

    :goto_9
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v13

    .line 607
    :catch_2
    move-exception v2

    .line 608
    .local v2, e:Ljava/io/IOException;
    :goto_a
    :try_start_5
    const-string v13, "VzwConnectivityService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "problem parsing stats: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_7

    .line 611
    .end local v2           #e:Ljava/io/IOException;
    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v13

    move-object v6, v7

    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    goto :goto_9

    .line 607
    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :catch_3
    move-exception v2

    move-object v6, v7

    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    goto :goto_a

    .line 604
    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    move-object v6, v7

    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    goto :goto_8

    .line 601
    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :catch_5
    move-exception v2

    move-object v6, v7

    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    goto :goto_6
.end method

.method isApnUseOneIface(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "apn"
    .parameter "iface"

    .prologue
    .line 514
    const/4 v1, 0x0

    .line 516
    .local v1, ret:Z
    iget-object v2, p0, Lcom/motorola/server/VzwConnectivityService;->mApnIfacesList:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 517
    .local v0, ifaceList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 518
    const/4 v1, 0x1

    .line 523
    :goto_0
    return v1

    .line 520
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isIfaceUsedByOtherApn(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "iface"
    .parameter "apn"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 495
    const/4 v1, 0x0

    .line 497
    .local v1, usedByOtherApn:Z
    iget-object v4, p0, Lcom/motorola/server/VzwConnectivityService;->mIfaceApnsList:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 510
    :goto_0
    return v3

    .line 500
    :cond_0
    iget-object v4, p0, Lcom/motorola/server/VzwConnectivityService;->mIfaceApnsList:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 501
    .local v0, apnList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v4

    if-ne v4, v2, :cond_2

    .line 503
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    move v1, v2

    :goto_1
    move v3, v1

    .line 510
    goto :goto_0

    :cond_1
    move v1, v3

    .line 503
    goto :goto_1

    .line 506
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method isLegacyNetwork()Z
    .locals 3

    .prologue
    .line 479
    const/4 v0, 0x0

    .line 481
    .local v0, legacyNetwork:Z
    iget-object v2, p0, Lcom/motorola/server/VzwConnectivityService;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .line 483
    .local v1, radioType:I
    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 488
    :cond_0
    const/4 v0, 0x1

    .line 491
    :cond_1
    return v0
.end method

.method updateIfaceApnList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "iface"
    .parameter "apn"

    .prologue
    .line 425
    iget-object v0, p0, Lcom/motorola/server/VzwConnectivityService;->mIfaceApnsList:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2, v0}, Lcom/motorola/server/VzwConnectivityService;->updateKeyValuesList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 426
    iget-object v0, p0, Lcom/motorola/server/VzwConnectivityService;->mApnIfacesList:Ljava/util/HashMap;

    invoke-virtual {p0, p2, p1, v0}, Lcom/motorola/server/VzwConnectivityService;->updateKeyValuesList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 427
    return-void
.end method

.method updateKeyValuesList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 3
    .parameter "key"
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 430
    .local p3, keyValuesList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    const/4 v0, 0x1

    .line 432
    .local v0, needNewPair:Z
    invoke-virtual {p3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 433
    invoke-virtual {p3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 434
    const/4 v0, 0x0

    .line 435
    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 436
    .local v1, valuesList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 440
    .end local v1           #valuesList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_0
    if-eqz v0, :cond_1

    .line 441
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 442
    .restart local v1       #valuesList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 443
    invoke-virtual {p3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    .end local v1           #valuesList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method
