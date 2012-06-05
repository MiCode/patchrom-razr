.class public Lcom/motorola/android/server/TetherEntitlement;
.super Ljava/lang/Object;
.source "TetherEntitlement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/server/TetherEntitlement$1;,
        Lcom/motorola/android/server/TetherEntitlement$StateReceiver;
    }
.end annotation


# static fields
.field private static final APN_CHECK_STATE:Ljava/lang/String; = "APN_CHECK_STATE"

.field private static final DEBUG_LOGS:Z = true

.field private static final ENTITLEMENT_CHECK_STATE_CHANGED:Ljava/lang/String; = "motorola.intent.ENTITLEMENT_STATE_CHANGE"

.field private static final ENTITLEMENT_CHECK_STATE_FAIL:I = 0x4

.field private static final ENTITLEMENT_CHECK_STATE_NONE:I = 0x1

.field private static final ENTITLEMENT_CHECK_STATE_SUCCESS:I = 0x3

.field private static final ENTITLEMENT_CHECK_STATE_VERIFYING:I = 0x2

.field private static final EXTRA_ENTITLEMENT_CHECK_STATE:Ljava/lang/String; = "entitlement_state"

.field private static final NOTIF_ID_OFFSET:I = 0x3039

.field private static final REQUEST_START_ENTITLEMENT_CHECK:Ljava/lang/String; = "com.motorola.intent.ACTION_ENTITLEMENT_CHECK"

.field private static final TAG:Ljava/lang/String; = "TetherEntitlement"

.field private static final TETHER_PENDING:Ljava/lang/String; = "TETHER_PENDING"

.field private static mUsbRegexs:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEntitlementCheckState:I

.field private mLastIfaceEnable:Ljava/lang/String;

.field private mPendingTetherEnable:Z

.field private mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mUsbConnectNotification:Landroid/app/Notification;

.field private mUsbTetherAuthErrorNotif:Landroid/app/Notification;

.field private mUsbTetherAuthNotif:Landroid/app/Notification;

.field private mUsbTetherConnectErrorNotif:Landroid/app/Notification;

.field private mUsbTetherConnectNotif:Landroid/app/Notification;

.field private mUsbTetherReadyNotif:Landroid/app/Notification;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/motorola/android/server/TetherEntitlement;->mPendingTetherEnable:Z

    .line 70
    iput-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mLastIfaceEnable:Ljava/lang/String;

    .line 71
    const/4 v2, 0x1

    iput v2, p0, Lcom/motorola/android/server/TetherEntitlement;->mEntitlementCheckState:I

    .line 77
    iput-object p1, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    .line 78
    iget-object v2, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 80
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/motorola/android/server/TetherEntitlement;->mUsbRegexs:[Ljava/lang/String;

    .line 81
    new-instance v2, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;

    invoke-direct {v2, p0, v4}, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;-><init>(Lcom/motorola/android/server/TetherEntitlement;Lcom/motorola/android/server/TetherEntitlement$1;)V

    iput-object v2, p0, Lcom/motorola/android/server/TetherEntitlement;->mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 82
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 83
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "motorola.intent.ENTITLEMENT_STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    const-string v2, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    iget-object v2, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/motorola/android/server/TetherEntitlement;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 86
    return-void
.end method

.method static synthetic access$100(Lcom/motorola/android/server/TetherEntitlement;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/motorola/android/server/TetherEntitlement;->mEntitlementCheckState:I

    return v0
.end method

.method static synthetic access$1000(Lcom/motorola/android/server/TetherEntitlement;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherReadyNotif(Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/motorola/android/server/TetherEntitlement;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/motorola/android/server/TetherEntitlement;->mEntitlementCheckState:I

    return p1
.end method

.method static synthetic access$200(Lcom/motorola/android/server/TetherEntitlement;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/android/server/TetherEntitlement;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/motorola/android/server/TetherEntitlement;->mPendingTetherEnable:Z

    return v0
.end method

.method static synthetic access$302(Lcom/motorola/android/server/TetherEntitlement;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/motorola/android/server/TetherEntitlement;->mPendingTetherEnable:Z

    return p1
.end method

.method static synthetic access$400(Lcom/motorola/android/server/TetherEntitlement;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/motorola/android/server/TetherEntitlement;->mLastIfaceEnable:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/android/server/TetherEntitlement;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthNotif(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/motorola/android/server/TetherEntitlement;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthErrorNotif(Z)V

    return-void
.end method

.method static synthetic access$700()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/motorola/android/server/TetherEntitlement;->mUsbRegexs:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/motorola/android/server/TetherEntitlement;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherConnectNotif(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/motorola/android/server/TetherEntitlement;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherConnectErrorNotif(Z)V

    return-void
.end method

.method private createUsbTetherAuthIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 493
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 494
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x4000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private isUsb(Ljava/lang/String;)Z
    .locals 5
    .parameter "iface"

    .prologue
    .line 217
    sget-object v0, Lcom/motorola/android/server/TetherEntitlement;->mUsbRegexs:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 218
    .local v3, regex:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 220
    .end local v3           #regex:Ljava/lang/String;
    :goto_1
    return v4

    .line 217
    .restart local v3       #regex:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 220
    .end local v3           #regex:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private setUsbTetherAuthErrorNotif(Z)V
    .locals 7
    .parameter "visible"

    .prologue
    .line 407
    const-string v4, "TetherEntitlement"

    const-string v5, "setUsbTetherAuthErrorNotif()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 410
    .local v2, notifManager:Landroid/app/NotificationManager;
    if-nez v2, :cond_0

    .line 440
    :goto_0
    return-void

    .line 414
    :cond_0
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    const v5, 0x104065d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 416
    .local v3, title:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    const v5, 0x104065e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, message:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherAuthErrorNotif:Landroid/app/Notification;

    if-nez v4, :cond_1

    .line 420
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    iput-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherAuthErrorNotif:Landroid/app/Notification;

    .line 421
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherAuthErrorNotif:Landroid/app/Notification;

    const v5, 0x1080546

    iput v5, v4, Landroid/app/Notification;->icon:I

    .line 423
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherAuthErrorNotif:Landroid/app/Notification;

    const-wide/16 v5, 0x0

    iput-wide v5, v4, Landroid/app/Notification;->when:J

    .line 424
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherAuthErrorNotif:Landroid/app/Notification;

    const/16 v5, 0x10

    iput v5, v4, Landroid/app/Notification;->flags:I

    .line 425
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherAuthErrorNotif:Landroid/app/Notification;

    iput-object v3, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 427
    :cond_1
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherAuthErrorNotif:Landroid/app/Notification;

    iget v1, v4, Landroid/app/Notification;->icon:I

    .line 429
    .local v1, notifId:I
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherAuthErrorNotif:Landroid/app/Notification;

    iget-object v5, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/motorola/android/server/TetherEntitlement;->createUsbTetherAuthIntent()Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v4, v5, v3, v0, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 432
    if-eqz p1, :cond_2

    .line 434
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherAuthErrorNotif:Landroid/app/Notification;

    invoke-virtual {v2, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 438
    :cond_2
    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private setUsbTetherAuthNotif(Z)V
    .locals 7
    .parameter "visible"

    .prologue
    .line 272
    const-string v4, "TetherEntitlement"

    const-string v5, "setUsbTetherAuthNotif()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 275
    .local v2, notifManager:Landroid/app/NotificationManager;
    if-nez v2, :cond_0

    .line 304
    :goto_0
    return-void

    .line 279
    :cond_0
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    const v5, 0x1040657

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 281
    .local v3, title:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    const v5, 0x1040658

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, message:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherAuthNotif:Landroid/app/Notification;

    if-nez v4, :cond_1

    .line 285
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    iput-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherAuthNotif:Landroid/app/Notification;

    .line 286
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherAuthNotif:Landroid/app/Notification;

    const v5, 0x1080545

    iput v5, v4, Landroid/app/Notification;->icon:I

    .line 287
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherAuthNotif:Landroid/app/Notification;

    const-wide/16 v5, 0x0

    iput-wide v5, v4, Landroid/app/Notification;->when:J

    .line 288
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherAuthNotif:Landroid/app/Notification;

    const/16 v5, 0x22

    iput v5, v4, Landroid/app/Notification;->flags:I

    .line 289
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherAuthNotif:Landroid/app/Notification;

    iput-object v3, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 292
    :cond_1
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherAuthNotif:Landroid/app/Notification;

    iget v1, v4, Landroid/app/Notification;->icon:I

    .line 294
    .local v1, notifId:I
    if-eqz p1, :cond_2

    .line 296
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherAuthNotif:Landroid/app/Notification;

    iget-object v5, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/motorola/android/server/TetherEntitlement;->createUsbTetherAuthIntent()Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v4, v5, v3, v0, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 298
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherAuthNotif:Landroid/app/Notification;

    invoke-virtual {v2, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 302
    :cond_2
    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private setUsbTetherConnectErrorNotif(Z)V
    .locals 7
    .parameter "visible"

    .prologue
    .line 451
    const-string v4, "TetherEntitlement"

    const-string v5, "setUsbTetherConnectErrorNotif()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 454
    .local v2, notifManager:Landroid/app/NotificationManager;
    if-nez v2, :cond_0

    .line 483
    :goto_0
    return-void

    .line 458
    :cond_0
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    const v5, 0x104065f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 460
    .local v3, title:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    const v5, 0x1040660

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, message:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherConnectErrorNotif:Landroid/app/Notification;

    if-nez v4, :cond_1

    .line 464
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    iput-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherConnectErrorNotif:Landroid/app/Notification;

    .line 465
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherConnectErrorNotif:Landroid/app/Notification;

    const v5, 0x1080546

    iput v5, v4, Landroid/app/Notification;->icon:I

    .line 467
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherConnectErrorNotif:Landroid/app/Notification;

    const-wide/16 v5, 0x0

    iput-wide v5, v4, Landroid/app/Notification;->when:J

    .line 468
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherConnectErrorNotif:Landroid/app/Notification;

    const/16 v5, 0x10

    iput v5, v4, Landroid/app/Notification;->flags:I

    .line 469
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherConnectErrorNotif:Landroid/app/Notification;

    iput-object v3, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 472
    :cond_1
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherConnectErrorNotif:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->icon:I

    add-int/lit16 v1, v4, 0x3039

    .line 473
    .local v1, notifId:I
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherConnectErrorNotif:Landroid/app/Notification;

    iget-object v5, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/motorola/android/server/TetherEntitlement;->createUsbTetherAuthIntent()Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v4, v5, v3, v0, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 475
    if-eqz p1, :cond_2

    .line 477
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherConnectErrorNotif:Landroid/app/Notification;

    invoke-virtual {v2, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 481
    :cond_2
    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private setUsbTetherConnectNotif(Z)V
    .locals 9
    .parameter "visible"

    .prologue
    const/4 v8, 0x0

    .line 315
    const-string v6, "TetherEntitlement"

    const-string v7, "setUsbTetherConnectNotif()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 318
    .local v3, notifManager:Landroid/app/NotificationManager;
    if-nez v3, :cond_0

    .line 349
    :goto_0
    return-void

    .line 322
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 323
    .local v0, intent:Landroid/content/Intent;
    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.TetherSettings"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    const/high16 v6, 0x4000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 325
    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    invoke-static {v6, v8, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 326
    .local v4, pi:Landroid/app/PendingIntent;
    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    const v7, 0x1040659

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 328
    .local v5, title:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    const v7, 0x104065a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 330
    .local v1, message:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherConnectNotif:Landroid/app/Notification;

    if-nez v6, :cond_1

    .line 331
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    iput-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherConnectNotif:Landroid/app/Notification;

    .line 332
    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherConnectNotif:Landroid/app/Notification;

    const v7, 0x1080545

    iput v7, v6, Landroid/app/Notification;->icon:I

    .line 333
    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherConnectNotif:Landroid/app/Notification;

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Landroid/app/Notification;->when:J

    .line 334
    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherConnectNotif:Landroid/app/Notification;

    const/16 v7, 0x22

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 335
    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherConnectNotif:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 338
    :cond_1
    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherConnectNotif:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->icon:I

    add-int/lit16 v2, v6, 0x3039

    .line 340
    .local v2, notifId:I
    if-eqz p1, :cond_2

    .line 342
    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherConnectNotif:Landroid/app/Notification;

    iget-object v7, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v5, v1, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 343
    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherConnectNotif:Landroid/app/Notification;

    invoke-virtual {v3, v2, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 347
    :cond_2
    invoke-virtual {v3, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private setUsbTetherReadyNotif(Z)V
    .locals 9
    .parameter "visible"

    .prologue
    const/4 v8, 0x0

    .line 362
    const-string v6, "TetherEntitlement"

    const-string v7, "setUsbTetherReadyNotif()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 365
    .local v3, notifManager:Landroid/app/NotificationManager;
    if-nez v3, :cond_0

    .line 397
    :goto_0
    return-void

    .line 369
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 370
    .local v0, intent:Landroid/content/Intent;
    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.TetherSettings"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    const/high16 v6, 0x4000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 372
    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    invoke-static {v6, v8, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 373
    .local v4, pi:Landroid/app/PendingIntent;
    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    const v7, 0x104065b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 375
    .local v5, title:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    const v7, 0x104065c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 378
    .local v1, message:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherReadyNotif:Landroid/app/Notification;

    if-nez v6, :cond_1

    .line 379
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    iput-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherReadyNotif:Landroid/app/Notification;

    .line 380
    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherReadyNotif:Landroid/app/Notification;

    const v7, 0x1080544

    iput v7, v6, Landroid/app/Notification;->icon:I

    .line 381
    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherReadyNotif:Landroid/app/Notification;

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Landroid/app/Notification;->when:J

    .line 382
    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherReadyNotif:Landroid/app/Notification;

    const/16 v7, 0x22

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 383
    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherReadyNotif:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 386
    :cond_1
    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherReadyNotif:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->icon:I

    add-int/lit16 v2, v6, 0x303a

    .line 388
    .local v2, notifId:I
    if-eqz p1, :cond_2

    .line 390
    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherReadyNotif:Landroid/app/Notification;

    iget-object v7, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v5, v1, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 391
    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherReadyNotif:Landroid/app/Notification;

    invoke-virtual {v3, v2, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 395
    :cond_2
    invoke-virtual {v3, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method


# virtual methods
.method public checkEntitlement(Ljava/lang/String;)Z
    .locals 6
    .parameter "Iface"

    .prologue
    const/4 v2, 0x1

    .line 224
    invoke-direct {p0, p1}, Lcom/motorola/android/server/TetherEntitlement;->isUsb(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 225
    const-string v3, "TetherEntitlement"

    const-string v4, "non-USB Entitlement request - ignore here"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :goto_0
    return v2

    .line 228
    :cond_0
    const-string v3, "TetherEntitlement"

    const-string v4, "USB Entitlement check begins"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :try_start_0
    iget-object v3, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "APN_CHECK_STATE"

    invoke-static {v3, v4}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/motorola/android/server/TetherEntitlement;->mEntitlementCheckState:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_1
    const-string v3, "TetherEntitlement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Saved entitlement State: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/server/TetherEntitlement;->mEntitlementCheckState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/motorola/android/server/TetherEntitlement;->mLastIfaceEnable:Ljava/lang/String;

    .line 238
    iget v3, p0, Lcom/motorola/android/server/TetherEntitlement;->mEntitlementCheckState:I

    packed-switch v3, :pswitch_data_0

    .line 260
    :goto_2
    const/4 v2, 0x0

    goto :goto_0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, e:Ljava/lang/Throwable;
    const-string v3, "TetherEntitlement"

    const-string v4, "From settings db: setting not found - entitlement State"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 243
    .end local v0           #e:Ljava/lang/Throwable;
    :pswitch_0
    const-string v3, "TetherEntitlement"

    const-string v4, "Sending Intent to trigger apn check"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iput-boolean v2, p0, Lcom/motorola/android/server/TetherEntitlement;->mPendingTetherEnable:Z

    .line 245
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.motorola.intent.ACTION_ENTITLEMENT_CHECK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 246
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    const-string v3, "com.motorola.permission.ATT_ENTITLEMENT"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_2

    .line 250
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_1
    const-string v3, "TetherEntitlement"

    const-string v4, "Dont Send Intent to trigger apn check: SUCCESS case"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 256
    :pswitch_2
    iput-boolean v2, p0, Lcom/motorola/android/server/TetherEntitlement;->mPendingTetherEnable:Z

    goto :goto_2

    .line 238
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
