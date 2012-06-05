.class Lcom/android/server/WiredAccessoryObserver;
.super Landroid/os/UEventObserver;
.source "WiredAccessoryObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WiredAccessoryObserver$BootCompletedReceiver;
    }
.end annotation


# static fields
.field private static final BIT_HDMI_AUDIO:I = 0x10

.field private static final BIT_HEADSET:I = 0x1

.field private static final BIT_HEADSET_NO_MIC:I = 0x2

.field private static final BIT_SEMU_AUDIO_ANLG:I = 0x20

.field private static final BIT_SEMU_AUDIO_SPDIF:I = 0x40

.field private static final BIT_USB_HEADSET_ANLG:I = 0x4

.field private static final BIT_USB_HEADSET_DGTL:I = 0x8

.field private static final HEADSETS_WITH_MIC:I = 0x1

.field private static final LOG:Z = true

.field private static final MAX_AUDIO_PORTS:I = 0x4

.field private static final SUPPORTED_HEADSETS:I = 0x7f

.field private static final TAG:Ljava/lang/String;

.field private static final uEventInfo:[[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHeadsetName:Ljava/lang/String;

.field private mHeadsetState:I

.field private mPrevHeadsetState:I

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private switchState:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    const-class v0, Lcom/android/server/WiredAccessoryObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    .line 44
    const/4 v0, 0x4

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "/devices/virtual/switch/h2w"

    aput-object v2, v1, v3

    const-string v2, "/sys/class/switch/h2w/state"

    aput-object v2, v1, v4

    const-string v2, "/sys/class/switch/h2w/name"

    aput-object v2, v1, v5

    aput-object v1, v0, v3

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "/devices/virtual/switch/usb_audio"

    aput-object v2, v1, v3

    const-string v2, "/sys/class/switch/usb_audio/state"

    aput-object v2, v1, v4

    const-string v2, "/sys/class/switch/usb_audio/name"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "/devices/virtual/switch/hdmi"

    aput-object v2, v1, v3

    const-string v2, "/sys/class/switch/hdmi/state"

    aput-object v2, v1, v4

    const-string v2, "/sys/class/switch/hdmi/name"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "/devices/virtual/switch/semu_audio"

    aput-object v2, v1, v3

    const-string v2, "/sys/class/switch/semu_audio/state"

    aput-object v2, v1, v4

    const-string v2, "/sys/class/switch/semu_audio/name"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/server/WiredAccessoryObserver;->uEventInfo:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 80
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 339
    new-instance v1, Lcom/android/server/WiredAccessoryObserver$1;

    invoke-direct {v1, p0}, Lcom/android/server/WiredAccessoryObserver$1;-><init>(Lcom/android/server/WiredAccessoryObserver;)V

    iput-object v1, p0, Lcom/android/server/WiredAccessoryObserver;->mHandler:Landroid/os/Handler;

    .line 81
    iput-object p1, p0, Lcom/android/server/WiredAccessoryObserver;->mContext:Landroid/content/Context;

    .line 82
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 83
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "WiredAccessoryObserver"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/WiredAccessoryObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 84
    iget-object v1, p0, Lcom/android/server/WiredAccessoryObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 86
    new-instance v1, Lcom/android/server/WiredAccessoryObserver$BootCompletedReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/server/WiredAccessoryObserver$BootCompletedReceiver;-><init>(Lcom/android/server/WiredAccessoryObserver;Lcom/android/server/WiredAccessoryObserver$1;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 88
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/WiredAccessoryObserver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/server/WiredAccessoryObserver;->init()V

    return-void
.end method

.method static synthetic access$200()[[Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/server/WiredAccessoryObserver;->uEventInfo:[[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/WiredAccessoryObserver;IILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WiredAccessoryObserver;->sendIntents(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/WiredAccessoryObserver;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/WiredAccessoryObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private final declared-synchronized init()V
    .locals 9

    .prologue
    .line 152
    monitor-enter p0

    const/16 v7, 0x400

    :try_start_0
    new-array v0, v7, [C

    .line 154
    .local v0, buffer:[C
    iget-object v5, p0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetName:Ljava/lang/String;

    .line 155
    .local v5, newName:Ljava/lang/String;
    iget v6, p0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetState:I

    .line 156
    .local v6, newState:I
    iget v7, p0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetState:I

    iput v7, p0, Lcom/android/server/WiredAccessoryObserver;->mPrevHeadsetState:I

    .line 158
    sget-object v7, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v8, "init()"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    const/4 v7, 0x4

    if-ge v3, v7, :cond_1

    .line 162
    :try_start_1
    new-instance v2, Ljava/io/FileReader;

    sget-object v7, Lcom/android/server/WiredAccessoryObserver;->uEventInfo:[[Ljava/lang/String;

    aget-object v7, v7, v3

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-direct {v2, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 163
    .local v2, file:Ljava/io/FileReader;
    const/4 v7, 0x0

    const/16 v8, 0x400

    invoke-virtual {v2, v0, v7, v8}, Ljava/io/FileReader;->read([CII)I

    move-result v4

    .line 164
    .local v4, len:I
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 165
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 167
    sget-object v7, Lcom/android/server/WiredAccessoryObserver;->uEventInfo:[[Ljava/lang/String;

    aget-object v7, v7, v3

    const/4 v8, 0x0

    aget-object v5, v7, v8

    .line 169
    if-lez v6, :cond_0

    .line 170
    invoke-direct {p0, v5, v6}, Lcom/android/server/WiredAccessoryObserver;->updateState(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 160
    .end local v2           #file:Ljava/io/FileReader;
    .end local v4           #len:I
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 173
    :catch_0
    move-exception v1

    .line 174
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_2
    sget-object v7, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v8, "This kernel does not have wired headset support"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 152
    .end local v0           #buffer:[C
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .end local v3           #i:I
    .end local v5           #newName:Ljava/lang/String;
    .end local v6           #newState:I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 175
    .restart local v0       #buffer:[C
    .restart local v3       #i:I
    .restart local v5       #newName:Ljava/lang/String;
    .restart local v6       #newState:I
    :catch_1
    move-exception v1

    .line 176
    .local v1, e:Ljava/lang/Exception;
    :try_start_3
    sget-object v7, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v8, ""

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 179
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    monitor-exit p0

    return-void
.end method

.method private final sendIntent(IIILjava/lang/String;)V
    .locals 10
    .parameter "headset"
    .parameter "headsetState"
    .parameter "prevHeadsetState"
    .parameter "headsetName"

    .prologue
    const/16 v9, 0x10

    const/16 v8, 0x8

    const/4 v5, 0x4

    const/4 v7, 0x0

    const/high16 v6, 0x4000

    .line 265
    and-int v3, p2, p1

    and-int v4, p3, p1

    if-eq v3, v4, :cond_6

    .line 267
    const/4 v2, 0x0

    .line 268
    .local v2, state:I
    and-int v3, p2, p1

    if-eqz v3, :cond_0

    .line 269
    const/4 v2, 0x1

    .line 272
    :cond_0
    if-eq p1, v5, :cond_1

    if-eq p1, v8, :cond_1

    const/16 v3, 0x20

    if-eq p1, v3, :cond_1

    const/16 v3, 0x40

    if-eq p1, v3, :cond_1

    if-ne p1, v9, :cond_3

    .line 279
    :cond_1
    if-ne p1, v5, :cond_7

    .line 280
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.USB_ANLG_HEADSET_PLUG"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 281
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 282
    const-string v3, "state"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 283
    const-string v3, "name"

    invoke-virtual {v0, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    invoke-static {v0, v7}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 313
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    :goto_0
    sget-object v3, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Intent.ACTION_USB_HEADSET_PLUG: state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_3
    const/4 v3, 0x1

    if-eq p1, v3, :cond_4

    const/4 v3, 0x2

    if-ne p1, v3, :cond_6

    .line 319
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 320
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 322
    const/4 v1, 0x0

    .line 324
    .local v1, microphone:I
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_5

    .line 325
    const/4 v1, 0x1

    .line 328
    :cond_5
    const-string v3, "state"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 329
    const-string v3, "name"

    invoke-virtual {v0, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    const-string v3, "microphone"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 332
    sget-object v3, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Intent.ACTION_HEADSET_PLUG: state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mic: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-static {v0, v7}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 337
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #microphone:I
    .end local v2           #state:I
    :cond_6
    return-void

    .line 285
    .restart local v2       #state:I
    :cond_7
    if-ne p1, v8, :cond_8

    .line 286
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.USB_DGTL_HEADSET_PLUG"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 287
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 288
    const-string v3, "state"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 289
    const-string v3, "name"

    invoke-virtual {v0, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    invoke-static {v0, v7}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 292
    .end local v0           #intent:Landroid/content/Intent;
    :cond_8
    const/16 v3, 0x20

    if-ne p1, v3, :cond_9

    .line 293
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEMU_ANLG_AUDIO_PLUG"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 294
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 295
    const-string v3, "state"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 296
    const-string v3, "name"

    invoke-virtual {v0, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    invoke-static {v0, v7}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 298
    .end local v0           #intent:Landroid/content/Intent;
    :cond_9
    const/16 v3, 0x40

    if-ne p1, v3, :cond_a

    .line 299
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEMU_SPDIF_AUDIO_PLUG"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 300
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 301
    const-string v3, "state"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 302
    const-string v3, "name"

    invoke-virtual {v0, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    invoke-static {v0, v7}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 305
    .end local v0           #intent:Landroid/content/Intent;
    :cond_a
    if-ne p1, v9, :cond_2

    .line 306
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.HDMI_AUDIO_PLUG"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 307
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 308
    const-string v3, "state"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 309
    const-string v3, "name"

    invoke-virtual {v0, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    invoke-static {v0, v7}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private final declared-synchronized sendIntents(IILjava/lang/String;)V
    .locals 3
    .parameter "headsetState"
    .parameter "prevHeadsetState"
    .parameter "headsetName"

    .prologue
    .line 255
    monitor-enter p0

    const/16 v0, 0x7f

    .line 256
    .local v0, allHeadsets:I
    const/4 v1, 0x1

    .local v1, curHeadset:I
    :goto_0
    if-eqz v0, :cond_1

    .line 257
    and-int v2, v1, v0

    if-eqz v2, :cond_0

    .line 258
    :try_start_0
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/WiredAccessoryObserver;->sendIntent(IIILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    xor-int/lit8 v2, v1, -0x1

    and-int/2addr v0, v2

    .line 256
    :cond_0
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 262
    :cond_1
    monitor-exit p0

    return-void

    .line 255
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private final declared-synchronized update(Ljava/lang/String;I)V
    .locals 20
    .parameter "newName"
    .parameter "newState"

    .prologue
    .line 183
    monitor-enter p0

    and-int/lit8 v5, p2, 0x7f

    .line 184
    .local v5, headsetState:I
    :try_start_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetState:I

    or-int v7, v5, v14

    .line 185
    .local v7, newOrOld:I
    const/4 v2, 0x0

    .line 186
    .local v2, delay:I
    and-int/lit8 v12, v5, 0x4

    .line 187
    .local v12, usb_headset_anlg:I
    and-int/lit8 v13, v5, 0x8

    .line 189
    .local v13, usb_headset_dgtl:I
    and-int/lit8 v9, v5, 0x20

    .line 190
    .local v9, semu_audio_anlg:I
    and-int/lit8 v10, v5, 0x40

    .line 192
    .local v10, semu_audio_spdif:I
    and-int/lit8 v4, v5, 0x3

    .line 193
    .local v4, h2w_headset:I
    const/4 v3, 0x1

    .line 194
    .local v3, h2wStateChange:Z
    const/4 v11, 0x1

    .line 196
    .local v11, usbStateChange:Z
    const/4 v8, 0x1

    .line 201
    .local v8, semuStateChange:Z
    sget-object v14, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "newState = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", headsetState = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "mHeadsetState = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetState:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetState:I

    if-eq v14, v5, :cond_0

    add-int/lit8 v14, v4, -0x1

    and-int/2addr v14, v4

    if-eqz v14, :cond_1

    .line 204
    :cond_0
    sget-object v14, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v15, "unsetting h2w flag"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/4 v3, 0x0

    .line 209
    :cond_1
    shr-int/lit8 v14, v12, 0x2

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    shr-int/lit8 v14, v13, 0x3

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    .line 210
    sget-object v14, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v15, "unsetting usb flag"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v11, 0x0

    .line 216
    :cond_2
    shr-int/lit8 v14, v9, 0x5

    const/4 v15, 0x1

    if-ne v14, v15, :cond_3

    shr-int/lit8 v14, v10, 0x6

    const/4 v15, 0x1

    if-ne v14, v15, :cond_3

    .line 217
    sget-object v14, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v15, "unsetting semu flag"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v8, 0x0

    .line 220
    :cond_3
    if-nez v3, :cond_4

    if-nez v11, :cond_4

    if-nez v8, :cond_4

    .line 222
    sget-object v14, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v15, "invalid transition, returning ..."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    :goto_0
    monitor-exit p0

    return-void

    .line 226
    :cond_4
    :try_start_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WiredAccessoryObserver;->mHeadsetName:Ljava/lang/String;

    .line 227
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetState:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/WiredAccessoryObserver;->mPrevHeadsetState:I

    .line 228
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetState:I

    .line 230
    if-nez v5, :cond_6

    .line 231
    new-instance v6, Landroid/content/Intent;

    const-string v14, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 232
    .local v6, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/WiredAccessoryObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 238
    const/16 v2, 0x3e8

    .line 246
    .end local v6           #intent:Landroid/content/Intent;
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/WiredAccessoryObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 247
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/WiredAccessoryObserver;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/WiredAccessoryObserver;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetState:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WiredAccessoryObserver;->mPrevHeadsetState:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v15 .. v19}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    int-to-long v0, v2

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 183
    .end local v2           #delay:I
    .end local v3           #h2wStateChange:Z
    .end local v4           #h2w_headset:I
    .end local v7           #newOrOld:I
    .end local v8           #semuStateChange:Z
    .end local v9           #semu_audio_anlg:I
    .end local v10           #semu_audio_spdif:I
    .end local v11           #usbStateChange:Z
    .end local v12           #usb_headset_anlg:I
    .end local v13           #usb_headset_dgtl:I
    :catchall_0
    move-exception v14

    monitor-exit p0

    throw v14

    .line 242
    .restart local v2       #delay:I
    .restart local v3       #h2wStateChange:Z
    .restart local v4       #h2w_headset:I
    .restart local v7       #newOrOld:I
    .restart local v8       #semuStateChange:Z
    .restart local v9       #semu_audio_anlg:I
    .restart local v10       #semu_audio_spdif:I
    .restart local v11       #usbStateChange:Z
    .restart local v12       #usb_headset_anlg:I
    .restart local v13       #usb_headset_dgtl:I
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/WiredAccessoryObserver;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/os/Handler;->hasMessages(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v14

    if-eqz v14, :cond_5

    .line 243
    const/16 v2, 0x3e8

    goto :goto_1
.end method

.method private final declared-synchronized updateState(Ljava/lang/String;I)V
    .locals 4
    .parameter "name"
    .parameter "state"

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 123
    monitor-enter p0

    :try_start_0
    const-string v3, "/devices/virtual/switch/usb_audio"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 124
    iget v3, p0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetState:I

    and-int/lit8 v3, v3, 0x73

    if-ne p2, v0, :cond_1

    const/4 v2, 0x4

    :cond_0
    :goto_0
    or-int v0, v3, v2

    iput v0, p0, Lcom/android/server/WiredAccessoryObserver;->switchState:I

    .line 148
    :goto_1
    iget v0, p0, Lcom/android/server/WiredAccessoryObserver;->switchState:I

    invoke-direct {p0, p1, v0}, Lcom/android/server/WiredAccessoryObserver;->update(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit p0

    return-void

    .line 124
    :cond_1
    if-ne p2, v1, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    .line 130
    :cond_2
    :try_start_1
    const-string v3, "/devices/virtual/switch/semu_audio"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 131
    iget v3, p0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetState:I

    and-int/lit8 v3, v3, 0x1f

    if-ne p2, v0, :cond_4

    const/16 v2, 0x20

    :cond_3
    :goto_2
    or-int v0, v3, v2

    iput v0, p0, Lcom/android/server/WiredAccessoryObserver;->switchState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 131
    :cond_4
    if-ne p2, v1, :cond_3

    const/16 v2, 0x40

    goto :goto_2

    .line 137
    :cond_5
    :try_start_2
    const-string v3, "/devices/virtual/switch/hdmi"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 138
    iget v1, p0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetState:I

    and-int/lit8 v1, v1, 0x6f

    if-ne p2, v0, :cond_6

    const/16 v2, 0x10

    :cond_6
    or-int v0, v1, v2

    iput v0, p0, Lcom/android/server/WiredAccessoryObserver;->switchState:I

    goto :goto_1

    .line 142
    :cond_7
    iget v3, p0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetState:I

    and-int/lit8 v3, v3, -0x4

    if-ne p2, v0, :cond_8

    :goto_3
    or-int/2addr v0, v3

    iput v0, p0, Lcom/android/server/WiredAccessoryObserver;->switchState:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_8
    if-ne p2, v1, :cond_9

    move v0, v1

    goto :goto_3

    :cond_9
    move v0, v2

    goto :goto_3
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    .line 107
    sget-object v3, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Headset UEVENT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :try_start_0
    const-string v3, "DEVPATH"

    invoke-virtual {p1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, name:Ljava/lang/String;
    const-string v3, "SWITCH_STATE"

    invoke-virtual {p1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 114
    .local v2, state:I
    invoke-direct {p0, v1, v2}, Lcom/android/server/WiredAccessoryObserver;->updateState(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #state:I
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, e:Ljava/lang/NumberFormatException;
    sget-object v3, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not parse switch state from event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
