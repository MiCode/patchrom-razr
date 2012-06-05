.class public Lcom/motorola/server/batterytemp/BatteryTempService;
.super Ljava/lang/Object;
.source "BatteryTempService.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BatteryTempService"


# instance fields
.field private disableBluetooth:Z

.field private disableGPS:Z

.field private disableWifi:Z

.field private mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

.field private mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field tempAlert:Landroid/app/AlertDialog;

.field tempOK:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->disableGPS:Z

    .line 38
    iput-boolean v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->disableBluetooth:Z

    .line 39
    iput-boolean v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->disableWifi:Z

    .line 42
    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempOK:Landroid/app/AlertDialog;

    .line 43
    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempAlert:Landroid/app/AlertDialog;

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mCurrentState:I

    .line 46
    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

    .line 49
    iput-object p1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/server/batterytemp/BatteryTempService;)Lcom/motorola/server/BeepSoundService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/motorola/server/batterytemp/BatteryTempService;Lcom/motorola/server/BeepSoundService;)Lcom/motorola/server/BeepSoundService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

    return-object p1
.end method

.method private getGpsState()Z
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getPhoneInterface()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 344
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private gotoHome()V
    .locals 4

    .prologue
    .line 308
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 309
    .local v0, homeIntent:Landroid/content/Intent;
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    const/high16 v2, 0x1020

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 312
    iget-object v2, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 313
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 314
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 316
    return-void
.end method

.method private setBluetooth(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 348
    const-string v4, "bluetooth"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 352
    .local v0, bluetooth:Landroid/bluetooth/IBluetooth;
    if-eqz v0, :cond_0

    .line 354
    if-eqz p1, :cond_1

    :try_start_0
    iget-boolean v4, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->disableBluetooth:Z

    if-eqz v4, :cond_1

    .line 355
    const-string v3, "BatteryTempService"

    const-string v4, "Enable Bluetooth..."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->disableBluetooth:Z

    .line 357
    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->enable()Z

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    if-nez p1, :cond_0

    .line 359
    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_2

    .line 360
    .local v1, bluetoothOff:Z
    :goto_1
    if-nez v1, :cond_0

    .line 361
    const-string v3, "BatteryTempService"

    const-string v4, "Disabling Bluetooth..."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/bluetooth/IBluetooth;->disable(Z)Z

    .line 363
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->disableBluetooth:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 366
    .end local v1           #bluetoothOff:Z
    :catch_0
    move-exception v2

    .line 367
    .local v2, ex:Landroid/os/RemoteException;
    const-string v3, "BatteryTempService"

    const-string v4, "RemoteException during bluetooth shutdown"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v2           #ex:Landroid/os/RemoteException;
    :cond_2
    move v1, v3

    .line 359
    goto :goto_1
.end method

.method private setGPSEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 322
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/motorola/server/batterytemp/BatteryTempService;->getGpsState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    :goto_0
    return-void

    .line 325
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->disableGPS:Z

    .line 326
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_0

    .line 325
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private showBatteryCountdownDialog()V
    .locals 5

    .prologue
    .line 252
    new-instance v0, Lcom/motorola/server/batterytemp/BattTempCountDownDialog;

    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/motorola/server/batterytemp/BattTempCountDownDialog;-><init>(Landroid/content/Context;Lcom/motorola/server/batterytemp/BatteryTempService;)V

    .line 253
    .local v0, countDownDialog:Lcom/motorola/server/batterytemp/BattTempCountDownDialog;
    invoke-virtual {v0}, Lcom/motorola/server/batterytemp/BattTempCountDownDialog;->show()V

    .line 255
    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

    invoke-virtual {v1}, Lcom/motorola/server/BeepSoundService;->isThreadNotRun()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

    .line 257
    new-instance v1, Lcom/motorola/server/BeepSoundService;

    const/4 v2, 0x2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3, v4}, Lcom/motorola/server/BeepSoundService;-><init>(IILandroid/content/Context;)V

    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

    .line 259
    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

    invoke-virtual {v1}, Lcom/motorola/server/BeepSoundService;->start()V

    .line 261
    :cond_1
    return-void
.end method

.method private showBatteryTempAlertDialog(Z)V
    .locals 5
    .parameter "charging"

    .prologue
    .line 225
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 226
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x10805ee

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 227
    const v1, 0x1040549

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 228
    if-eqz p1, :cond_2

    .line 229
    const v1, 0x104054a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 232
    :goto_0
    const v1, 0x104000a

    new-instance v2, Lcom/motorola/server/batterytemp/BatteryTempService$1;

    invoke-direct {v2, p0}, Lcom/motorola/server/batterytemp/BatteryTempService$1;-><init>(Lcom/motorola/server/batterytemp/BatteryTempService;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 239
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempAlert:Landroid/app/AlertDialog;

    .line 240
    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempAlert:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 241
    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempAlert:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 243
    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

    invoke-virtual {v1}, Lcom/motorola/server/BeepSoundService;->isThreadNotRun()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 244
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

    .line 245
    new-instance v1, Lcom/motorola/server/BeepSoundService;

    const/4 v2, 0x2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3, v4}, Lcom/motorola/server/BeepSoundService;-><init>(IILandroid/content/Context;)V

    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

    .line 247
    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

    invoke-virtual {v1}, Lcom/motorola/server/BeepSoundService;->start()V

    .line 249
    :cond_1
    return-void

    .line 231
    :cond_2
    const v1, 0x104054b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private showCooldownMode()V
    .locals 4

    .prologue
    .line 331
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.batteryreport.TEMPERATURE_COOLDOWN_ACTION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 332
    .local v2, intent:Landroid/content/Intent;
    const/high16 v3, 0x1080

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 335
    :try_start_0
    iget-object v3, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 341
    :goto_0
    return-void

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 338
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v1

    .line 339
    .local v1, ex:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method private showTempOKDialog(Z)V
    .locals 5
    .parameter "chargingCont"

    .prologue
    .line 264
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 265
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x10805ef

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 266
    const v1, 0x104054c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 267
    if-eqz p1, :cond_2

    .line 268
    const v1, 0x104054d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 271
    :goto_0
    const v1, 0x104000a

    new-instance v2, Lcom/motorola/server/batterytemp/BatteryTempService$2;

    invoke-direct {v2, p0}, Lcom/motorola/server/batterytemp/BatteryTempService$2;-><init>(Lcom/motorola/server/batterytemp/BatteryTempService;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 283
    new-instance v1, Lcom/motorola/server/batterytemp/BatteryTempService$3;

    invoke-direct {v1, p0}, Lcom/motorola/server/batterytemp/BatteryTempService$3;-><init>(Lcom/motorola/server/batterytemp/BatteryTempService;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 292
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempOK:Landroid/app/AlertDialog;

    .line 293
    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempOK:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 294
    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempOK:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 296
    if-nez p1, :cond_1

    .line 298
    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

    invoke-virtual {v1}, Lcom/motorola/server/BeepSoundService;->isThreadNotRun()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 299
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

    .line 300
    new-instance v1, Lcom/motorola/server/BeepSoundService;

    const/4 v2, 0x2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3, v4}, Lcom/motorola/server/BeepSoundService;-><init>(IILandroid/content/Context;)V

    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

    .line 301
    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

    invoke-virtual {v1}, Lcom/motorola/server/BeepSoundService;->start()V

    .line 305
    :cond_1
    return-void

    .line 270
    :cond_2
    const v1, 0x104054e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method


# virtual methods
.method public getBatteryTempState()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mCurrentState:I

    return v0
.end method

.method public isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 166
    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onBatteryCooldownMode(I)V
    .locals 2
    .parameter "batteryTemp"

    .prologue
    const/4 v1, 0x0

    .line 125
    iget v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mCurrentState:I

    packed-switch v0, :pswitch_data_0

    .line 143
    :goto_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mCurrentState:I

    .line 144
    return-void

    .line 129
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempOK:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempOK:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 131
    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempOK:Landroid/app/AlertDialog;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempAlert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 135
    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempAlert:Landroid/app/AlertDialog;

    .line 137
    :cond_1
    invoke-direct {p0}, Lcom/motorola/server/batterytemp/BatteryTempService;->showBatteryCountdownDialog()V

    goto :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onBatteryTempAlertCharging(I)V
    .locals 3
    .parameter "batteryTemp"

    .prologue
    .line 86
    iget v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mCurrentState:I

    packed-switch v0, :pswitch_data_0

    .line 102
    :goto_0
    :pswitch_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mCurrentState:I

    .line 103
    :pswitch_1
    return-void

    .line 91
    :pswitch_2
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempOK:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempOK:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempOK:Landroid/app/AlertDialog;

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.BATTERY_TEMP_ALERT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 96
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/motorola/server/batterytemp/BatteryTempService;->showBatteryTempAlertDialog(Z)V

    goto :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBatteryTempAlertNoCharging(I)V
    .locals 1
    .parameter "batteryTemp"

    .prologue
    .line 106
    iget v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mCurrentState:I

    packed-switch v0, :pswitch_data_0

    .line 121
    :goto_0
    :pswitch_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mCurrentState:I

    .line 122
    :pswitch_1
    return-void

    .line 111
    :pswitch_2
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempOK:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempOK:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempOK:Landroid/app/AlertDialog;

    .line 115
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/server/batterytemp/BatteryTempService;->showBatteryTempAlertDialog(Z)V

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBatteryTempNormal(I)V
    .locals 5
    .parameter "batteryTemp"

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 55
    iget v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mCurrentState:I

    packed-switch v0, :pswitch_data_0

    .line 82
    :goto_0
    iput v3, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mCurrentState:I

    .line 83
    return-void

    .line 57
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempAlert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 59
    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempAlert:Landroid/app/AlertDialog;

    .line 61
    :cond_0
    invoke-direct {p0, v3}, Lcom/motorola/server/batterytemp/BatteryTempService;->showTempOKDialog(Z)V

    goto :goto_0

    .line 65
    :pswitch_1
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempAlert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 67
    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempAlert:Landroid/app/AlertDialog;

    .line 69
    :cond_1
    invoke-direct {p0, v3}, Lcom/motorola/server/batterytemp/BatteryTempService;->showTempOKDialog(Z)V

    goto :goto_0

    .line 73
    :pswitch_2
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.BATTERY_TEMP_NORMAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 74
    invoke-virtual {p0, v4}, Lcom/motorola/server/batterytemp/BatteryTempService;->setCooldownModeEnabled(Z)V

    .line 75
    invoke-direct {p0, v4}, Lcom/motorola/server/batterytemp/BatteryTempService;->showTempOKDialog(Z)V

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onDispThermalProtectionMode(II)V
    .locals 3
    .parameter "batteryTemp"
    .parameter "capPercentage"

    .prologue
    .line 147
    if-lez p2, :cond_0

    const/4 v0, 0x1

    .line 154
    .local v0, enabled:Z
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.motorola.internal.intent.action.DISPLAY_THERMAL_PROTECTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.motorola.internal.intent.extra.DISPLAY_THERMAL_PROTECTION_ENABLED"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 156
    const-string v2, "com.motorola.internal.intent.extra.DISPLAY_THERMAL_PROTECTION_CAP"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 157
    const-string v2, "com.motorola.internal.intent.extra.DISPLAY_THERMAL_PROTECTION_TEMP"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 158
    iget-object v2, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 159
    return-void

    .line 147
    .end local v0           #enabled:Z
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCooldownModeEnabled(Z)V
    .locals 7
    .parameter "enabled"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 171
    if-eqz p1, :cond_2

    .line 172
    invoke-direct {p0}, Lcom/motorola/server/batterytemp/BatteryTempService;->gotoHome()V

    .line 173
    invoke-direct {p0}, Lcom/motorola/server/batterytemp/BatteryTempService;->showCooldownMode()V

    .line 175
    iget-object v3, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "cooldown_mode_on"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 183
    :goto_0
    iget-object v3, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 185
    .local v2, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {p0}, Lcom/motorola/server/batterytemp/BatteryTempService;->isAirplaneModeOn()Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz p1, :cond_3

    .line 186
    invoke-direct {p0, v5}, Lcom/motorola/server/batterytemp/BatteryTempService;->setBluetooth(Z)V

    .line 188
    iget-object v3, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_on"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    .line 190
    invoke-virtual {v2, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 191
    iput-boolean v6, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->disableWifi:Z

    .line 194
    :cond_0
    iget-object v3, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "location_providers_allowed"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, allowedProviders:Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v3, "gps"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 199
    invoke-direct {p0, v5}, Lcom/motorola/server/batterytemp/BatteryTempService;->setGPSEnabled(Z)V

    .line 219
    .end local v0           #allowedProviders:Ljava/lang/String;
    :cond_1
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.BATTERY_TEMP_COOLDOWN_MODE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 220
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "state"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 221
    iget-object v3, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 222
    return-void

    .line 179
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_2
    iget-object v3, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "cooldown_mode_on"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 201
    .restart local v2       #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_3
    if-nez p1, :cond_1

    .line 202
    iget-boolean v3, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->disableBluetooth:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->disableWifi:Z

    if-eqz v3, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/motorola/server/batterytemp/BatteryTempService;->isAirplaneModeOn()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 203
    iget-object v3, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 205
    :cond_5
    invoke-direct {p0, v6}, Lcom/motorola/server/batterytemp/BatteryTempService;->setBluetooth(Z)V

    .line 207
    iget-boolean v3, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->disableWifi:Z

    if-eqz v3, :cond_6

    .line 208
    iget-object v3, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_on"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 210
    invoke-virtual {v2, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 211
    iput-boolean v5, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->disableWifi:Z

    .line 214
    :cond_6
    iget-boolean v3, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->disableGPS:Z

    if-eqz v3, :cond_1

    .line 215
    invoke-direct {p0, v6}, Lcom/motorola/server/batterytemp/BatteryTempService;->setGPSEnabled(Z)V

    goto :goto_1
.end method
