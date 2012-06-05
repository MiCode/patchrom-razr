.class public Lcom/motorola/motepm/MotDeviceAdminReceiver;
.super Landroid/app/admin/DeviceAdminReceiver;
.source "MotDeviceAdminReceiver.java"


# static fields
.field public static final ACTION_DEVICE_ADMIN_DISABLED:Ljava/lang/String; = "com.motorola.app.action.DEVICE_ADMIN_DISABLED"

.field public static final ACTION_DEVICE_ADMIN_DISABLE_REQUESTED:Ljava/lang/String; = "com.motorola.app.action.DEVICE_ADMIN_DISABLE_REQUESTED"

.field public static final ACTION_DEVICE_ADMIN_ENABLED:Ljava/lang/String; = "com.motorola.app.action.DEVICE_ADMIN_ENABLED"

.field public static final ACTION_EPM_RESULT_RETURN:Ljava/lang/String; = "com.motorola.app.action.ACTION_EPM_RESULT_RETURN"

.field public static final ACTION_PASSWORD_SUCCEEDED:Ljava/lang/String; = "com.motorola.app.action.ACTION_PASSWORD_SUCCEEDED"

.field public static final ACTION_RECOVERY_PASSWORD_SAVE:Ljava/lang/String; = "com.motorola.app.action.ACTION_RECOVERY_PASSWORD_SAVE"

.field private static DEBUG:Z = false

.field public static final DEVICE_ADMIN_META_DATA:Ljava/lang/String; = "android.app.device_admin"

.field public static final EXTRA_DISABLE_WARNING:Ljava/lang/String; = "com.motorola.app.extra.DISABLE_WARNING"

.field private static TAG:Ljava/lang/String;

.field private static localLOGV:Z


# instance fields
.field private mManager:Lcom/motorola/motepm/MotDevicePolicyManager;

.field private mWho:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 46
    const-string v1, "MotDeviceAdminReceiver"

    sput-object v1, Lcom/motorola/motepm/MotDeviceAdminReceiver;->TAG:Ljava/lang/String;

    .line 47
    sput-boolean v0, Lcom/motorola/motepm/MotDeviceAdminReceiver;->DEBUG:Z

    .line 48
    sget-boolean v1, Lcom/motorola/motepm/MotDeviceAdminReceiver;->DEBUG:Z

    if-nez v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/motorola/motepm/MotDeviceAdminReceiver;->localLOGV:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/admin/DeviceAdminReceiver;-><init>()V

    return-void
.end method

.method private onResultCodeReturn(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 269
    const-string v2, "result_code"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 270
    .local v0, error_code:I
    const-string v2, "policy_name"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 271
    .local v1, policy:I
    packed-switch v1, :pswitch_data_0

    .line 301
    :goto_0
    :pswitch_0
    return-void

    .line 274
    :pswitch_1
    invoke-virtual {p0, p1, v0}, Lcom/motorola/motepm/MotDeviceAdminReceiver;->onWifiStatusChanged(Landroid/content/Context;I)V

    goto :goto_0

    .line 277
    :pswitch_2
    invoke-virtual {p0, p1, v0}, Lcom/motorola/motepm/MotDeviceAdminReceiver;->onSdcardStatusChanged(Landroid/content/Context;I)V

    goto :goto_0

    .line 281
    :pswitch_3
    invoke-virtual {p0, p1, v0}, Lcom/motorola/motepm/MotDeviceAdminReceiver;->onBluetoothStatusChanged(Landroid/content/Context;I)V

    goto :goto_0

    .line 286
    :pswitch_4
    invoke-virtual {p0, p1, v0}, Lcom/motorola/motepm/MotDeviceAdminReceiver;->onInternetSharingStatusChanged(Landroid/content/Context;I)V

    goto :goto_0

    .line 291
    :pswitch_5
    invoke-virtual {p0, p1, v0}, Lcom/motorola/motepm/MotDeviceAdminReceiver;->onPop3Imap4EmailStatusChanged(Landroid/content/Context;I)V

    goto :goto_0

    .line 296
    :pswitch_6
    invoke-virtual {p0, p1, v0}, Lcom/motorola/motepm/MotDeviceAdminReceiver;->onConsumerEmailStatusChanged(Landroid/content/Context;I)V

    goto :goto_0

    .line 271
    nop

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
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public getMotManager(Landroid/content/Context;)Lcom/motorola/motepm/MotDevicePolicyManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/motorola/motepm/MotDeviceAdminReceiver;->mManager:Lcom/motorola/motepm/MotDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/motorola/motepm/MotDeviceAdminReceiver;->mManager:Lcom/motorola/motepm/MotDevicePolicyManager;

    .line 145
    :goto_0
    return-object v0

    .line 143
    :cond_0
    const-string v0, "mot_device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/motepm/MotDevicePolicyManager;

    iput-object v0, p0, Lcom/motorola/motepm/MotDeviceAdminReceiver;->mManager:Lcom/motorola/motepm/MotDevicePolicyManager;

    .line 145
    iget-object v0, p0, Lcom/motorola/motepm/MotDeviceAdminReceiver;->mManager:Lcom/motorola/motepm/MotDevicePolicyManager;

    goto :goto_0
.end method

.method public getWho(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 2
    .parameter "context"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/motorola/motepm/MotDeviceAdminReceiver;->mWho:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/motorola/motepm/MotDeviceAdminReceiver;->mWho:Landroid/content/ComponentName;

    .line 161
    :goto_0
    return-object v0

    .line 160
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/motorola/motepm/MotDeviceAdminReceiver;->mWho:Landroid/content/ComponentName;

    .line 161
    iget-object v0, p0, Lcom/motorola/motepm/MotDeviceAdminReceiver;->mWho:Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public onBluetoothStatusChanged(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "error_code"

    .prologue
    .line 219
    return-void
.end method

.method public onConsumerEmailStatusChanged(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "error_code"

    .prologue
    .line 253
    return-void
.end method

.method public onDisableRequested(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 188
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDisabled(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 201
    return-void
.end method

.method public onEnabled(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 173
    return-void
.end method

.method public onInternetSharingStatusChanged(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "error_code"

    .prologue
    .line 261
    return-void
.end method

.method public onPop3Imap4EmailStatusChanged(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "error_code"

    .prologue
    .line 244
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 310
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, action:Ljava/lang/String;
    const-string v3, "com.motorola.app.action.DEVICE_ADMIN_ENABLED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 312
    invoke-virtual {p0, p1, p2}, Lcom/motorola/motepm/MotDeviceAdminReceiver;->onEnabled(Landroid/content/Context;Landroid/content/Intent;)V

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    const-string v3, "com.motorola.app.action.DEVICE_ADMIN_DISABLE_REQUESTED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 314
    invoke-virtual {p0, p1, p2}, Lcom/motorola/motepm/MotDeviceAdminReceiver;->onDisableRequested(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 315
    .local v2, res:Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 316
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/motorola/motepm/MotDeviceAdminReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v1

    .line 317
    .local v1, extras:Landroid/os/Bundle;
    const-string v3, "com.motorola.app.extra.DISABLE_WARNING"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 319
    .end local v1           #extras:Landroid/os/Bundle;
    .end local v2           #res:Ljava/lang/CharSequence;
    :cond_2
    const-string v3, "com.motorola.app.action.DEVICE_ADMIN_DISABLED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 320
    invoke-virtual {p0, p1, p2}, Lcom/motorola/motepm/MotDeviceAdminReceiver;->onDisabled(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 322
    :cond_3
    const-string v3, "com.motorola.app.action.ACTION_RECOVERY_PASSWORD_SAVE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 323
    invoke-virtual {p0, p1, p2}, Lcom/motorola/motepm/MotDeviceAdminReceiver;->onRecoveryPasswordSave(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 326
    :cond_4
    const-string v3, "com.motorola.app.action.ACTION_EPM_RESULT_RETURN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 327
    invoke-direct {p0, p1, p2}, Lcom/motorola/motepm/MotDeviceAdminReceiver;->onResultCodeReturn(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 330
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/app/admin/DeviceAdminReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onRecoveryPasswordSave(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 213
    return-void
.end method

.method public onSdcardStatusChanged(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "error_code"

    .prologue
    .line 236
    return-void
.end method

.method public onWifiStatusChanged(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "error_code"

    .prologue
    .line 229
    return-void
.end method
