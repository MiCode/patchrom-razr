.class public Lcom/motorola/rdc/RdcUtils;
.super Ljava/lang/Object;
.source "RdcUtils.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final RDC_FLEX_ENABLED:Z = false

.field private static final TAG:Ljava/lang/String; = "RdcUtils_Framework"

.field private static mIsKeyHeld:Z

.field private static mKeyGuardStatusIntent:Landroid/content/Intent;

.field private static mRdcAppIntent:Landroid/content/Intent;

.field private static mRdcBlurWidgetIntent:Landroid/content/Intent;

.field private static mRdcKeyIntent:Landroid/content/Intent;

.field private static mRdcStatusBarIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 25
    const-string v0, "ro.rdc.enable"

    const-string v2, "0"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/motorola/rdc/RdcUtils;->RDC_FLEX_ENABLED:Z

    .line 31
    sput-boolean v1, Lcom/motorola/rdc/RdcUtils;->mIsKeyHeld:Z

    .line 32
    sput-object v3, Lcom/motorola/rdc/RdcUtils;->mRdcKeyIntent:Landroid/content/Intent;

    .line 35
    sput-object v3, Lcom/motorola/rdc/RdcUtils;->mRdcBlurWidgetIntent:Landroid/content/Intent;

    .line 38
    sput-object v3, Lcom/motorola/rdc/RdcUtils;->mRdcStatusBarIntent:Landroid/content/Intent;

    .line 41
    sput-object v3, Lcom/motorola/rdc/RdcUtils;->mKeyGuardStatusIntent:Landroid/content/Intent;

    .line 44
    sput-object v3, Lcom/motorola/rdc/RdcUtils;->mRdcAppIntent:Landroid/content/Intent;

    return-void

    :cond_0
    move v0, v1

    .line 25
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSMS(Landroid/content/Context;[B)Z
    .locals 6
    .parameter "context"
    .parameter "smsBuf"

    .prologue
    .line 296
    const/4 v0, 0x0

    .line 297
    .local v0, bIsCIQSms:Z
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    .line 300
    .local v2, s:Ljava/lang/String;
    const-string v3, "RdcUtils_Framework"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkSMS. length="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const-string v3, "RdcUtils_Framework"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkSMS. s="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    array-length v3, p1

    const/16 v4, 0x11

    if-lt v3, v4, :cond_0

    .line 305
    const-string v3, "//IQ"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 306
    const/4 v0, 0x1

    .line 315
    :cond_0
    :goto_0
    const-string v3, "RdcUtils_Framework"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkSMS. bIsCIQSms="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    if-eqz v0, :cond_1

    .line 318
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.mot.rdc.CHECK_SMS_WAPPUSH"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 319
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "check_type"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 320
    const-string v3, "check_data"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 321
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 323
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    return v0

    .line 307
    :cond_2
    const-string v3, "//CM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "SQAPUL="

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "UPL="

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "KPR="

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 310
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static checkWapPush(Landroid/content/Context;[B)J
    .locals 2
    .parameter "context"
    .parameter "msgBuf"

    .prologue
    .line 342
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static isRdcEnabled()Z
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lcom/motorola/rdc/RdcUtils;->RDC_FLEX_ENABLED:Z

    return v0
.end method

.method public static submitRdcMetric_AH44(Landroid/content/Context;Z)V
    .locals 7
    .parameter "context"
    .parameter "phoneLocked"

    .prologue
    .line 176
    const/16 v2, 0x40

    .line 177
    .local v2, KEYGAURD_BIT_MASK:I
    const-string v0, "com.motorola.android.intent.action.KEYGUARD_STATUS_CHANGED"

    .line 178
    .local v0, ACTION_KEYGUARD_STATUS_CHANGED:Ljava/lang/String;
    const-string v3, "android.permission.RECEIVE_RDC_METRICS_INTENT"

    .line 179
    .local v3, strRdcPermission:Ljava/lang/String;
    const-string v1, "KEYGUARD_STATUS"

    .line 181
    .local v1, EXTRA_KEYGUARD_STATUS:Ljava/lang/String;
    :try_start_0
    const-string v5, "sys.rdc.metrics"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_1

    .line 183
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 184
    sget-object v5, Lcom/motorola/rdc/RdcUtils;->mKeyGuardStatusIntent:Landroid/content/Intent;

    if-nez v5, :cond_0

    .line 185
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    sput-object v5, Lcom/motorola/rdc/RdcUtils;->mKeyGuardStatusIntent:Landroid/content/Intent;

    .line 188
    :cond_0
    sget-object v5, Lcom/motorola/rdc/RdcUtils;->mKeyGuardStatusIntent:Landroid/content/Intent;

    const-string v6, "com.motorola.android.intent.action.KEYGUARD_STATUS_CHANGED"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    sget-object v5, Lcom/motorola/rdc/RdcUtils;->mKeyGuardStatusIntent:Landroid/content/Intent;

    const-string v6, "KEYGUARD_STATUS"

    invoke-virtual {v5, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 192
    sget-object v5, Lcom/motorola/rdc/RdcUtils;->mKeyGuardStatusIntent:Landroid/content/Intent;

    const-string v6, "android.permission.RECEIVE_RDC_METRICS_INTENT"

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :cond_1
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v4

    .line 197
    .local v4, t:Ljava/lang/Throwable;
    const-string v5, "RdcUtils_Framework"

    const-string v6, "Error while AH44 metric submission"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static submitRdcMetric_AH45(Landroid/content/Context;Z)V
    .locals 6
    .parameter "context"
    .parameter "collapse"

    .prologue
    .line 146
    const/16 v1, 0x80

    .line 147
    .local v1, NOTIFICATION_BAR_MASK:I
    const-string v2, "android.permission.RECEIVE_RDC_METRICS_INTENT"

    .line 148
    .local v2, strRdcPermission:Ljava/lang/String;
    const-string v0, "com.motorola.android.intent.action.NOTIFICATION_BAR"

    .line 150
    .local v0, ACTION_NOTIFICATION_BAR:Ljava/lang/String;
    :try_start_0
    const-string v4, "sys.rdc.metrics"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_1

    .line 152
    sget-object v4, Lcom/motorola/rdc/RdcUtils;->mRdcStatusBarIntent:Landroid/content/Intent;

    if-nez v4, :cond_0

    .line 153
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    sput-object v4, Lcom/motorola/rdc/RdcUtils;->mRdcStatusBarIntent:Landroid/content/Intent;

    .line 155
    :cond_0
    sget-object v4, Lcom/motorola/rdc/RdcUtils;->mRdcStatusBarIntent:Landroid/content/Intent;

    const-string v5, "com.motorola.android.intent.action.NOTIFICATION_BAR"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    sget-object v4, Lcom/motorola/rdc/RdcUtils;->mRdcStatusBarIntent:Landroid/content/Intent;

    const-string v5, "NOTIFICATION_BAR"

    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 157
    sget-object v4, Lcom/motorola/rdc/RdcUtils;->mRdcStatusBarIntent:Landroid/content/Intent;

    const-string v5, "android.permission.RECEIVE_RDC_METRICS_INTENT"

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :cond_1
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v3

    .line 160
    .local v3, t:Ljava/lang/Throwable;
    const-string v4, "RdcUtils_Framework"

    const-string v5, "Error while AH45 metric submission"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static submitRdcMetric_AH4S(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "action"

    .prologue
    .line 118
    const/16 v0, 0x400

    .line 119
    .local v0, WIDGET_MASK_BIT:I
    const-string v1, "android.permission.RECEIVE_RDC_METRICS_INTENT"

    .line 121
    .local v1, strRdcPermission:Ljava/lang/String;
    :try_start_0
    const-string v3, "sys.rdc.metrics"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    and-int/lit16 v3, v3, 0x400

    if-nez v3, :cond_0

    .line 134
    :goto_0
    return-void

    .line 125
    :cond_0
    sget-object v3, Lcom/motorola/rdc/RdcUtils;->mRdcBlurWidgetIntent:Landroid/content/Intent;

    if-nez v3, :cond_1

    .line 126
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    sput-object v3, Lcom/motorola/rdc/RdcUtils;->mRdcBlurWidgetIntent:Landroid/content/Intent;

    .line 128
    :cond_1
    sget-object v3, Lcom/motorola/rdc/RdcUtils;->mRdcBlurWidgetIntent:Landroid/content/Intent;

    invoke-virtual {v3, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    sget-object v3, Lcom/motorola/rdc/RdcUtils;->mRdcBlurWidgetIntent:Landroid/content/Intent;

    const-string v4, "android.permission.RECEIVE_RDC_METRICS_INTENT"

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v2

    .line 131
    .local v2, t:Ljava/lang/Throwable;
    const-string v3, "RdcUtils_Framework"

    const-string v4, "Error while AH4S metric submission "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static submitRdcMetric_UI01(Landroid/content/Context;III)V
    .locals 12
    .parameter "context"
    .parameter "keyAction"
    .parameter "keyCode"
    .parameter "repeatCount"

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 73
    const-string v10, "android.permission.RECEIVE_RDC_METRICS_INTENT"

    .line 74
    .local v10, strRdcPermission:Ljava/lang/String;
    const-string v8, "com.motorola.android.intent.action.KEYPRESSED"

    .line 77
    .local v8, ACTION_RDC_KEYPRESSED:Ljava/lang/String;
    if-nez p1, :cond_4

    if-eqz p3, :cond_4

    .line 78
    .local v9, isKeyRepeat:Z
    :goto_0
    if-nez v9, :cond_0

    .line 79
    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcom/motorola/rdc/RdcUtils;->mIsKeyHeld:Z

    .line 82
    :cond_0
    sget-boolean v1, Lcom/motorola/rdc/RdcUtils;->mIsKeyHeld:Z

    if-nez v1, :cond_3

    .line 83
    if-eqz v9, :cond_1

    .line 84
    const/4 v1, 0x1

    sput-boolean v1, Lcom/motorola/rdc/RdcUtils;->mIsKeyHeld:Z

    .line 87
    :cond_1
    sget-object v1, Lcom/motorola/rdc/RdcUtils;->mRdcKeyIntent:Landroid/content/Intent;

    if-nez v1, :cond_2

    .line 88
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sput-object v1, Lcom/motorola/rdc/RdcUtils;->mRdcKeyIntent:Landroid/content/Intent;

    .line 91
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 92
    .local v3, now:J
    new-instance v0, Landroid/view/KeyEvent;

    const-wide/16 v1, 0x0

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 94
    .local v0, keyEvent:Landroid/view/KeyEvent;
    sget-object v1, Lcom/motorola/rdc/RdcUtils;->mRdcKeyIntent:Landroid/content/Intent;

    const-string v2, "com.motorola.android.intent.action.KEYPRESSED"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    sget-object v1, Lcom/motorola/rdc/RdcUtils;->mRdcKeyIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 96
    sget-object v1, Lcom/motorola/rdc/RdcUtils;->mRdcKeyIntent:Landroid/content/Intent;

    const-string v2, "android.permission.RECEIVE_RDC_METRICS_INTENT"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v0           #keyEvent:Landroid/view/KeyEvent;
    .end local v3           #now:J
    :cond_3
    :goto_1
    return-void

    .end local v9           #isKeyRepeat:Z
    :cond_4
    move v9, v1

    .line 77
    goto :goto_0

    .line 99
    .restart local v9       #isKeyRepeat:Z
    :catch_0
    move-exception v11

    .line 100
    .local v11, t:Ljava/lang/Throwable;
    const-string v1, "RdcUtils_Framework"

    const-string v2, "Error while key press metric submission "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static submitRdcMetric_UI13_UI15(Landroid/content/Context;Ljava/lang/String;ZI)V
    .locals 8
    .parameter "context"
    .parameter "packageName"
    .parameter "launched"
    .parameter "exitStatus"

    .prologue
    .line 218
    const/4 v2, 0x4

    .line 219
    .local v2, APP_LAUNCH_MASK:I
    const/16 v1, 0x8

    .line 220
    .local v1, APP_EXIT_MASK:I
    const-string v0, "com.motorola.android.intent.action.APP_LAUNCHED_RDC"

    .line 221
    .local v0, ACTION_APP_LAUNCHED_RDC:Ljava/lang/String;
    const-string v4, "android.permission.RECEIVE_RDC_METRICS_INTENT"

    .line 222
    .local v4, strRdcPermission:Ljava/lang/String;
    const/4 v3, 0x0

    .line 225
    .local v3, mask:I
    if-eqz p2, :cond_3

    .line 226
    const/4 v3, 0x4

    .line 231
    :goto_0
    :try_start_0
    const-string v6, "sys.rdc.metrics"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    and-int/2addr v6, v3

    if-eqz v6, :cond_2

    .line 233
    sget-object v6, Lcom/motorola/rdc/RdcUtils;->mRdcAppIntent:Landroid/content/Intent;

    if-nez v6, :cond_0

    .line 234
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    sput-object v6, Lcom/motorola/rdc/RdcUtils;->mRdcAppIntent:Landroid/content/Intent;

    .line 236
    :cond_0
    sget-object v6, Lcom/motorola/rdc/RdcUtils;->mRdcAppIntent:Landroid/content/Intent;

    const-string v7, "com.motorola.android.intent.action.APP_LAUNCHED_RDC"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    sget-object v6, Lcom/motorola/rdc/RdcUtils;->mRdcAppIntent:Landroid/content/Intent;

    const-string v7, "EXTRA_APP_NAME"

    invoke-virtual {v6, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    sget-object v6, Lcom/motorola/rdc/RdcUtils;->mRdcAppIntent:Landroid/content/Intent;

    const-string v7, "EXTRA_IS_APP_LAUNCHED"

    invoke-virtual {v6, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 239
    if-nez p2, :cond_1

    .line 240
    sget-object v6, Lcom/motorola/rdc/RdcUtils;->mRdcAppIntent:Landroid/content/Intent;

    const-string v7, "EXIT_STATUS"

    invoke-virtual {v6, v7, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 242
    :cond_1
    sget-object v6, Lcom/motorola/rdc/RdcUtils;->mRdcAppIntent:Landroid/content/Intent;

    const-string v7, "android.permission.RECEIVE_RDC_METRICS_INTENT"

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :cond_2
    :goto_1
    return-void

    .line 228
    :cond_3
    const/16 v3, 0x8

    goto :goto_0

    .line 244
    :catch_0
    move-exception v5

    .line 245
    .local v5, t:Ljava/lang/Throwable;
    const-string v6, "RdcUtils_Framework"

    const-string v7, "Error while UI13 / UI15 metric submission"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static submitRdcMetric_UI19(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 260
    const/16 v1, 0x10

    .line 261
    .local v1, APP_LOSTFOCUS_MASK:I
    const-string v0, "com.motorola.android.intent.action.APP_FOCUS_RDC"

    .line 262
    .local v0, ACTION_APP_FOCUS_RDC:Ljava/lang/String;
    const-string v2, "android.permission.RECEIVE_RDC_METRICS_INTENT"

    .line 265
    .local v2, strRdcPermission:Ljava/lang/String;
    :try_start_0
    const-string v4, "sys.rdc.metrics"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_1

    .line 267
    sget-object v4, Lcom/motorola/rdc/RdcUtils;->mRdcAppIntent:Landroid/content/Intent;

    if-nez v4, :cond_0

    .line 268
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    sput-object v4, Lcom/motorola/rdc/RdcUtils;->mRdcAppIntent:Landroid/content/Intent;

    .line 271
    :cond_0
    sget-object v4, Lcom/motorola/rdc/RdcUtils;->mRdcAppIntent:Landroid/content/Intent;

    const-string v5, "com.motorola.android.intent.action.APP_FOCUS_RDC"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    sget-object v4, Lcom/motorola/rdc/RdcUtils;->mRdcAppIntent:Landroid/content/Intent;

    const-string v5, "EXTRA_FOCUSED_APP"

    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    sget-object v4, Lcom/motorola/rdc/RdcUtils;->mRdcAppIntent:Landroid/content/Intent;

    const-string v5, "android.permission.RECEIVE_RDC_METRICS_INTENT"

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :cond_1
    :goto_0
    return-void

    .line 275
    :catch_0
    move-exception v3

    .line 276
    .local v3, t:Ljava/lang/Throwable;
    const-string v4, "RdcUtils_Framework"

    const-string v5, "Error while UI19 metric submission"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
