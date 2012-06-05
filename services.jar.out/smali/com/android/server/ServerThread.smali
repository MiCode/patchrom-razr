.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# static fields
.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 1012
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1013
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1015
    const-string v1, "SystemServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1017
    return-void
.end method


# virtual methods
.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 106
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    return-void
.end method

.method public run()V
    .locals 119

    .prologue
    .line 112
    const/16 v3, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v3, v9, v10}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 115
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 117
    const/4 v3, -0x2

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 120
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 121
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 125
    const-string v3, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v96

    .line 127
    .local v96, shutdownAction:Ljava/lang/String;
    if-eqz v96, :cond_0

    invoke-virtual/range {v96 .. v96}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 128
    const/4 v3, 0x0

    move-object/from16 v0, v96

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v9, 0x31

    if-ne v3, v9, :cond_b

    const/16 v90, 0x1

    .line 131
    .local v90, reboot:Z
    :goto_0
    invoke-virtual/range {v96 .. v96}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v9, 0x1

    if-le v3, v9, :cond_c

    .line 132
    const/4 v3, 0x1

    invoke-virtual/range {v96 .. v96}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v96

    invoke-virtual {v0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v89

    .line 137
    .local v89, reason:Ljava/lang/String;
    :goto_1
    move/from16 v0, v90

    move-object/from16 v1, v89

    invoke-static {v0, v1}, Lcom/android/internal/app/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 141
    .end local v89           #reason:Ljava/lang/String;
    .end local v90           #reboot:Z
    :cond_0
    const-string v3, "ro.factorytest"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v66

    .line 142
    .local v66, factoryTestStr:Ljava/lang/String;
    const-string v3, ""

    move-object/from16 v0, v66

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/16 v65, 0x0

    .line 145
    .local v65, factoryTest:I
    :goto_2
    const/16 v71, 0x0

    .line 146
    .local v71, lights:Lcom/android/server/LightsService;
    const/16 v88, 0x0

    .line 147
    .local v88, power:Lcom/android/server/PowerManagerService;
    const/16 v43, 0x0

    .line 148
    .local v43, battery:Lcom/android/server/BatteryService;
    const/16 v40, 0x0

    .line 149
    .local v40, alarm:Lcom/android/server/AlarmManagerService;
    const/4 v13, 0x0

    .line 150
    .local v13, networkManagement:Lcom/android/server/NetworkManagementService;
    const/4 v12, 0x0

    .line 151
    .local v12, networkStats:Lcom/android/server/net/NetworkStatsService;
    const/16 v80, 0x0

    .line 152
    .local v80, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v50, 0x0

    .line 155
    .local v50, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v107, 0x0

    .line 156
    .local v107, vzwConnectivity:Lcom/motorola/server/VzwConnectivityService;
    const/16 v116, 0x0

    .line 157
    .local v116, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v114, 0x0

    .line 160
    .local v114, wifi:Lcom/android/server/WifiService;
    const/16 v87, 0x0

    .line 161
    .local v87, pm:Landroid/content/pm/IPackageManager;
    const/4 v4, 0x0

    .line 162
    .local v4, context:Landroid/content/Context;
    const/16 v118, 0x0

    .line 163
    .local v118, wm:Lcom/android/server/wm/WindowManagerService;
    const/16 v44, 0x0

    .line 164
    .local v44, bluetooth:Landroid/server/BluetoothService;
    const/16 v46, 0x0

    .line 165
    .local v46, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    const/16 v59, 0x0

    .line 166
    .local v59, dock:Lcom/android/server/DockObserver;
    const/16 v105, 0x0

    .line 170
    .local v105, usb:Lcom/android/server/usb/UsbService;
    const/16 v78, 0x0

    .line 174
    .local v78, motDock:Lcom/motorola/server/MotDockObserver;
    const/16 v103, 0x0

    .line 175
    .local v103, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v91, 0x0

    .line 176
    .local v91, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v99, 0x0

    .line 177
    .local v99, throttle:Lcom/android/server/ThrottleService;
    const/16 v82, 0x0

    .line 179
    .local v82, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    const/16 v55, 0x0

    .line 184
    .local v55, deviceManager:Lcom/android/server/DeviceManager3LMService;
    :try_start_0
    const-string v3, "SystemServer"

    const-string v9, "Entropy Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const-string v3, "entropy"

    new-instance v9, Lcom/android/server/EntropyService;

    invoke-direct {v9}, Lcom/android/server/EntropyService;-><init>()V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 187
    const-string v3, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v6, Lcom/android/server/PowerManagerService;

    invoke-direct {v6}, Lcom/android/server/PowerManagerService;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_48

    .line 189
    .end local v88           #power:Lcom/android/server/PowerManagerService;
    .local v6, power:Lcom/android/server/PowerManagerService;
    :try_start_1
    const-string v3, "power"

    invoke-static {v3, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 192
    const-string v3, "SystemServer"

    const-string v9, "DeviceManager3LM"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    new-instance v56, Lcom/android/server/DeviceManager3LMService;

    invoke-direct/range {v56 .. v56}, Lcom/android/server/DeviceManager3LMService;-><init>()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_49

    .line 194
    .end local v55           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .local v56, deviceManager:Lcom/android/server/DeviceManager3LMService;
    :try_start_2
    const-string v3, "DeviceManager3LM"

    move-object/from16 v0, v56

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 197
    const-string v3, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-static/range {v65 .. v65}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v4

    .line 200
    const-string v3, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const-string v3, "telephony.registry"

    new-instance v9, Lcom/android/server/TelephonyRegistry;

    invoke-direct {v9, v4}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 203
    invoke-static {v4}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 205
    const-string v3, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const-string v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .line 208
    .local v54, cryptState:Ljava/lang/String;
    const/16 v86, 0x0

    .line 209
    .local v86, onlyCore:Z
    const-string v3, "trigger_restart_min_framework"

    move-object/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 210
    const-string v3, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/16 v86, 0x1

    .line 217
    :cond_1
    :goto_3
    if-eqz v65, :cond_f

    const/4 v3, 0x1

    :goto_4
    move/from16 v0, v86

    invoke-static {v4, v3, v0}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;ZZ)Landroid/content/pm/IPackageManager;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v87

    .line 220
    const/16 v67, 0x0

    .line 222
    .local v67, firstBoot:Z
    :try_start_3
    invoke-interface/range {v87 .. v87}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_31
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v67

    .line 226
    :goto_5
    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 228
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 232
    :try_start_5
    const-string v3, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-string v3, "account"

    new-instance v9, Landroid/accounts/AccountManagerService;

    invoke-direct {v9, v4}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 239
    :goto_6
    :try_start_6
    const-string v3, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/4 v3, 0x1

    move/from16 v0, v65

    if-ne v0, v3, :cond_10

    const/4 v3, 0x1

    :goto_7
    invoke-static {v4, v3}, Landroid/content/ContentService;->main(Landroid/content/Context;Z)Landroid/content/IContentService;

    .line 243
    const-string v3, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 246
    const-string v3, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    new-instance v72, Lcom/android/server/MiuiLightsService;

    move-object/from16 v0, v72

    invoke-direct {v0, v4}, Lcom/android/server/MiuiLightsService;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    .line 249
    .end local v71           #lights:Lcom/android/server/LightsService;
    .local v72, lights:Lcom/android/server/LightsService;
    :try_start_7
    const-string v3, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance v5, Lcom/android/server/BatteryService;

    move-object/from16 v0, v72

    invoke-direct {v5, v4, v0}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_4a

    .line 251
    .end local v43           #battery:Lcom/android/server/BatteryService;
    .local v5, battery:Lcom/android/server/BatteryService;
    :try_start_8
    const-string v3, "battery"

    invoke-static {v3, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 253
    const-string v3, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const-string v3, "vibrator"

    new-instance v9, Lcom/android/server/VibratorService;

    invoke-direct {v9, v4}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 258
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v72

    invoke-virtual {v6, v4, v0, v3, v5}, Lcom/android/server/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Landroid/app/IActivityManager;Lcom/android/server/BatteryService;)V

    .line 260
    const-string v3, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    new-instance v7, Lcom/android/server/AlarmManagerService;

    invoke-direct {v7, v4}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_4b

    .line 262
    .end local v40           #alarm:Lcom/android/server/AlarmManagerService;
    .local v7, alarm:Lcom/android/server/AlarmManagerService;
    :try_start_9
    const-string v3, "alarm"

    invoke-static {v3, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 264
    const-string v3, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 268
    const-string v3, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v3, 0x1

    move/from16 v0, v65

    if-eq v0, v3, :cond_11

    const/4 v3, 0x1

    move v9, v3

    :goto_8
    if-nez v67, :cond_12

    const/4 v3, 0x1

    :goto_9
    invoke-static {v4, v6, v9, v3}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v118

    .line 272
    const-string v3, "window"

    move-object/from16 v0, v118

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 274
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v118

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 279
    const-string v3, "ro.kernel.qemu"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "1"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 280
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2

    :goto_a
    move-object/from16 v55, v56

    .end local v56           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v55       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    move-object/from16 v71, v72

    .line 307
    .end local v54           #cryptState:Ljava/lang/String;
    .end local v67           #firstBoot:Z
    .end local v72           #lights:Lcom/android/server/LightsService;
    .end local v86           #onlyCore:Z
    .restart local v71       #lights:Lcom/android/server/LightsService;
    :goto_b
    const/16 v57, 0x0

    .line 309
    .local v57, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v76, 0x0

    .line 310
    .local v76, motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    const/16 v97, 0x0

    .line 311
    .local v97, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v68, 0x0

    .line 312
    .local v68, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v41, 0x0

    .line 313
    .local v41, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v84, 0x0

    .line 314
    .local v84, notification:Lcom/android/server/NotificationManagerService;
    const/16 v112, 0x0

    .line 315
    .local v112, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v73, 0x0

    .line 318
    .local v73, location:Lcom/android/server/LocationManagerService;
    const/16 v109, 0x0

    .line 324
    .local v109, vzwLocation:Lcom/vzw/location/VzwLocationManagerService;
    const/16 v93, 0x0

    .line 327
    .local v93, sensorHub:Lcom/motorola/server/SensorHubService;
    const/16 v52, 0x0

    .line 328
    .local v52, countryDetector:Lcom/android/server/CountryDetectorService;
    const/16 v101, 0x0

    .line 331
    .local v101, tsms:Lcom/android/server/TextServicesManagerService;
    const/16 v62, 0x0

    .line 335
    .local v62, encryption:Lcom/motorola/server/encryption/EncryptionService;
    const/4 v3, 0x1

    move/from16 v0, v65

    if-eq v0, v3, :cond_2

    .line 337
    :try_start_a
    const-string v3, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    new-instance v69, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v69

    invoke-direct {v0, v4}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3

    .line 339
    .end local v68           #imm:Lcom/android/server/InputMethodManagerService;
    .local v69, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_b
    const-string v3, "input_method"

    move-object/from16 v0, v69

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_47

    move-object/from16 v68, v69

    .line 345
    .end local v69           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v68       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_c
    :try_start_c
    const-string v3, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const-string v3, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4

    .line 354
    :goto_d
    :try_start_d
    const-string v3, "SystemServer"

    const-string v9, "Motorola encryption service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    new-instance v63, Lcom/motorola/server/encryption/EncryptionService;

    move-object/from16 v0, v63

    invoke-direct {v0, v4}, Lcom/motorola/server/encryption/EncryptionService;-><init>(Landroid/content/Context;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_5

    .line 356
    .end local v62           #encryption:Lcom/motorola/server/encryption/EncryptionService;
    .local v63, encryption:Lcom/motorola/server/encryption/EncryptionService;
    :try_start_e
    const-string v3, "mot_encryption_service"

    move-object/from16 v0, v63

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_46

    move-object/from16 v62, v63

    .line 364
    .end local v63           #encryption:Lcom/motorola/server/encryption/EncryptionService;
    .restart local v62       #encryption:Lcom/motorola/server/encryption/EncryptionService;
    :cond_2
    :goto_e
    :try_start_f
    invoke-virtual/range {v118 .. v118}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_6

    .line 370
    :goto_f
    :try_start_10
    invoke-interface/range {v87 .. v87}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_7

    .line 376
    :goto_10
    :try_start_11
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10403cd

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v3, v9, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_45

    .line 383
    :goto_11
    const/4 v3, 0x1

    move/from16 v0, v65

    if-eq v0, v3, :cond_18

    .line 385
    :try_start_12
    const-string v3, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    new-instance v58, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v58

    invoke-direct {v0, v4}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_8

    .line 387
    .end local v57           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v58, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_13
    const-string v3, "device_policy"

    move-object/from16 v0, v58

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_44

    move-object/from16 v57, v58

    .line 397
    .end local v58           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v57       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_12
    :try_start_14
    const-string v3, "SystemServer"

    const-string v9, "Mot Device Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    new-instance v77, Lcom/motorola/motepm/MotDevicePolicyManagerService;

    move-object/from16 v0, v77

    invoke-direct {v0, v4}, Lcom/motorola/motepm/MotDevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_9

    .line 399
    .end local v76           #motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    .local v77, motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    :try_start_15
    const-string v3, "mot_device_policy"

    move-object/from16 v0, v77

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_43

    move-object/from16 v76, v77

    .line 407
    .end local v77           #motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    .restart local v76       #motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    :goto_13
    :try_start_16
    const-string v3, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    new-instance v98, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v98

    move-object/from16 v1, v118

    invoke-direct {v0, v4, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_a

    .line 409
    .end local v97           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v98, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_17
    const-string v3, "statusbar"

    move-object/from16 v0, v98

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_42

    move-object/from16 v97, v98

    .line 415
    .end local v98           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v97       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_14
    :try_start_18
    const-string v3, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const-string v3, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v4}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_b

    .line 423
    :goto_15
    :try_start_19
    const-string v3, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v13

    .line 425
    const-string v3, "network_management"

    invoke-static {v3, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_c

    .line 431
    :goto_16
    :try_start_1a
    const-string v3, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    new-instance v102, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v102

    invoke-direct {v0, v4}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_d

    .line 433
    .end local v101           #tsms:Lcom/android/server/TextServicesManagerService;
    .local v102, tsms:Lcom/android/server/TextServicesManagerService;
    :try_start_1b
    const-string v3, "textservices"

    move-object/from16 v0, v102

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_41

    move-object/from16 v101, v102

    .line 439
    .end local v102           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v101       #tsms:Lcom/android/server/TextServicesManagerService;
    :goto_17
    :try_start_1c
    const-string v3, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    new-instance v81, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v81

    invoke-direct {v0, v4, v13, v7}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_e

    .line 441
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .local v81, networkStats:Lcom/android/server/net/NetworkStatsService;
    :try_start_1d
    const-string v3, "netstats"

    move-object/from16 v0, v81

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_40

    move-object/from16 v12, v81

    .line 447
    .end local v81           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :goto_18
    :try_start_1e
    const-string v3, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    move-object v9, v4

    move-object v11, v6

    invoke-direct/range {v8 .. v13}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_f

    .line 451
    .end local v80           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .local v8, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_1f
    const-string v3, "netpolicy"

    invoke-static {v3, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_3f

    .line 457
    :goto_19
    :try_start_20
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    new-instance v117, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v117

    invoke-direct {v0, v4}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_10

    .line 459
    .end local v116           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .local v117, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_21
    const-string v3, "wifip2p"

    move-object/from16 v0, v117

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_3e

    move-object/from16 v116, v117

    .line 465
    .end local v117           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v116       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :goto_1a
    :try_start_22
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    new-instance v115, Lcom/android/server/WifiService;

    move-object/from16 v0, v115

    invoke-direct {v0, v4}, Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_11

    .line 467
    .end local v114           #wifi:Lcom/android/server/WifiService;
    .local v115, wifi:Lcom/android/server/WifiService;
    :try_start_23
    const-string v3, "wifi"

    move-object/from16 v0, v115

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_3d

    move-object/from16 v114, v115

    .line 475
    .end local v115           #wifi:Lcom/android/server/WifiService;
    .restart local v114       #wifi:Lcom/android/server/WifiService;
    :goto_1b
    :try_start_24
    const-string v3, "SystemServer"

    const-string v9, "Ethernet Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    new-instance v64, Lcom/android/server/EthernetService;

    move-object/from16 v0, v64

    invoke-direct {v0, v4}, Lcom/android/server/EthernetService;-><init>(Landroid/content/Context;)V

    .line 477
    .local v64, ethernet:Lcom/android/server/EthernetService;
    const-string v3, "ethernet"

    move-object/from16 v0, v64

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_12

    .line 485
    .end local v64           #ethernet:Lcom/android/server/EthernetService;
    :goto_1c
    :try_start_25
    const-string v3, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    new-instance v51, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v51

    invoke-direct {v0, v4, v13, v12, v8}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_13

    .line 488
    .end local v50           #connectivity:Lcom/android/server/ConnectivityService;
    .local v51, connectivity:Lcom/android/server/ConnectivityService;
    :try_start_26
    const-string v3, "connectivity"

    move-object/from16 v0, v51

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 489
    move-object/from16 v0, v51

    invoke-virtual {v12, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 490
    move-object/from16 v0, v51

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 491
    invoke-virtual/range {v114 .. v114}, Lcom/android/server/WifiService;->checkAndStartWifi()V

    .line 492
    invoke-virtual/range {v116 .. v116}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_3c

    move-object/from16 v50, v51

    .line 499
    .end local v51           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v50       #connectivity:Lcom/android/server/ConnectivityService;
    :goto_1d
    :try_start_27
    const-string v3, "SystemServer"

    const-string v9, "VzwConnectivity Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    new-instance v108, Lcom/motorola/server/VzwConnectivityService;

    move-object/from16 v0, v108

    invoke-direct {v0, v4}, Lcom/motorola/server/VzwConnectivityService;-><init>(Landroid/content/Context;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_14

    .line 501
    .end local v107           #vzwConnectivity:Lcom/motorola/server/VzwConnectivityService;
    .local v108, vzwConnectivity:Lcom/motorola/server/VzwConnectivityService;
    :try_start_28
    const-string v3, "vzwconnectivity"

    move-object/from16 v0, v108

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 503
    move-object/from16 v0, v108

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/motorola/server/VzwConnectivityService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_3b

    move-object/from16 v107, v108

    .line 511
    .end local v108           #vzwConnectivity:Lcom/motorola/server/VzwConnectivityService;
    .restart local v107       #vzwConnectivity:Lcom/motorola/server/VzwConnectivityService;
    :goto_1e
    :try_start_29
    const-string v3, "SystemServer"

    const-string v9, "Throttle Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    new-instance v100, Lcom/android/server/ThrottleService;

    move-object/from16 v0, v100

    invoke-direct {v0, v4}, Lcom/android/server/ThrottleService;-><init>(Landroid/content/Context;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_15

    .line 513
    .end local v99           #throttle:Lcom/android/server/ThrottleService;
    .local v100, throttle:Lcom/android/server/ThrottleService;
    :try_start_2a
    const-string v3, "throttle"

    move-object/from16 v0, v100

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_3a

    move-object/from16 v99, v100

    .line 524
    .end local v100           #throttle:Lcom/android/server/ThrottleService;
    .restart local v99       #throttle:Lcom/android/server/ThrottleService;
    :goto_1f
    :try_start_2b
    const-string v3, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const-string v3, "mount"

    new-instance v9, Lcom/android/server/MountService;

    invoke-direct {v9, v4}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_16

    .line 531
    :goto_20
    :try_start_2c
    const-string v3, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    new-instance v85, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v85

    move-object/from16 v1, v97

    move-object/from16 v2, v71

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_17

    .line 533
    .end local v84           #notification:Lcom/android/server/NotificationManagerService;
    .local v85, notification:Lcom/android/server/NotificationManagerService;
    :try_start_2d
    const-string v3, "notification"

    move-object/from16 v0, v85

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 534
    move-object/from16 v0, v85

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_39

    move-object/from16 v84, v85

    .line 540
    .end local v85           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v84       #notification:Lcom/android/server/NotificationManagerService;
    :goto_21
    :try_start_2e
    const-string v3, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const-string v3, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v4}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_18

    .line 548
    :goto_22
    :try_start_2f
    const-string v3, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    new-instance v74, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v74

    invoke-direct {v0, v4}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_19

    .line 550
    .end local v73           #location:Lcom/android/server/LocationManagerService;
    .local v74, location:Lcom/android/server/LocationManagerService;
    :try_start_30
    const-string v3, "location"

    move-object/from16 v0, v74

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_38

    move-object/from16 v73, v74

    .line 560
    .end local v74           #location:Lcom/android/server/LocationManagerService;
    .restart local v73       #location:Lcom/android/server/LocationManagerService;
    :goto_23
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v9, "agps_feature_enabled"

    const/4 v10, 0x1

    invoke-static {v3, v9, v10}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_16

    const/16 v70, 0x1

    .line 563
    .local v70, isAgpsFtrEnabled:Z
    :goto_24
    if-eqz v70, :cond_3

    .line 566
    :try_start_31
    const-string v3, "SystemServer"

    const-string v9, "Vzw Location Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    new-instance v110, Lcom/vzw/location/VzwLocationManagerService;

    move-object/from16 v0, v110

    invoke-direct {v0, v4}, Lcom/vzw/location/VzwLocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_1a

    .line 568
    .end local v109           #vzwLocation:Lcom/vzw/location/VzwLocationManagerService;
    .local v110, vzwLocation:Lcom/vzw/location/VzwLocationManagerService;
    :try_start_32
    const-string v3, "VZW_LOCATION_SERVICE"

    move-object/from16 v0, v110

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_37

    move-object/from16 v109, v110

    .line 578
    .end local v110           #vzwLocation:Lcom/vzw/location/VzwLocationManagerService;
    .restart local v109       #vzwLocation:Lcom/vzw/location/VzwLocationManagerService;
    :cond_3
    :goto_25
    :try_start_33
    const-string v3, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    new-instance v53, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_1b

    .line 580
    .end local v52           #countryDetector:Lcom/android/server/CountryDetectorService;
    .local v53, countryDetector:Lcom/android/server/CountryDetectorService;
    :try_start_34
    const-string v3, "country_detector"

    move-object/from16 v0, v53

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_36

    move-object/from16 v52, v53

    .line 587
    .end local v53           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v52       #countryDetector:Lcom/android/server/CountryDetectorService;
    :goto_26
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x111005e

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v95

    .line 589
    .local v95, sensorHubExists:Z
    if-eqz v95, :cond_4

    .line 591
    :try_start_35
    const-string v3, "SystemServer"

    const-string v9, "SensorHub Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    new-instance v94, Lcom/motorola/server/SensorHubService;

    move-object/from16 v0, v94

    invoke-direct {v0, v4}, Lcom/motorola/server/SensorHubService;-><init>(Landroid/content/Context;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_1c

    .line 593
    .end local v93           #sensorHub:Lcom/motorola/server/SensorHubService;
    .local v94, sensorHub:Lcom/motorola/server/SensorHubService;
    :try_start_36
    const-string v3, "sensorhub"

    move-object/from16 v0, v94

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_35

    move-object/from16 v93, v94

    .line 602
    .end local v94           #sensorHub:Lcom/motorola/server/SensorHubService;
    .restart local v93       #sensorHub:Lcom/motorola/server/SensorHubService;
    :cond_4
    :goto_27
    :try_start_37
    const-string v3, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    const-string v3, "search"

    new-instance v9, Landroid/server/search/SearchManagerService;

    invoke-direct {v9, v4}, Landroid/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_1d

    .line 610
    :goto_28
    :try_start_38
    const-string v3, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const-string v3, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v11, "/data/system/dropbox"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v4, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_1e

    .line 622
    :goto_29
    :try_start_39
    const-string v3, "SystemServer"

    const-string v9, "Starting Checkin Mot Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    const-string v3, "checkin_mot"

    new-instance v9, Lcom/motorola/android/server/checkin/CheckinService;

    invoke-direct {v9, v4}, Lcom/motorola/android/server/checkin/CheckinService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_1f

    .line 632
    :goto_2a
    :try_start_3a
    const-string v3, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    new-instance v113, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v113

    invoke-direct {v0, v4}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_20

    .line 634
    .end local v112           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v113, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_3b
    const-string v3, "wallpaper"

    move-object/from16 v0, v113

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_34

    move-object/from16 v112, v113

    .line 640
    .end local v113           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v112       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :goto_2b
    :try_start_3c
    const-string v3, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    const-string v3, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v4}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_21

    .line 647
    :goto_2c
    :try_start_3d
    const-string v3, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    new-instance v60, Lcom/android/server/DockObserver;

    move-object/from16 v0, v60

    invoke-direct {v0, v4, v6}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_22

    .end local v59           #dock:Lcom/android/server/DockObserver;
    .local v60, dock:Lcom/android/server/DockObserver;
    move-object/from16 v59, v60

    .line 655
    .end local v60           #dock:Lcom/android/server/DockObserver;
    .restart local v59       #dock:Lcom/android/server/DockObserver;
    :goto_2d
    :try_start_3e
    const-string v3, "SystemServer"

    const-string v9, "Wired Accessory Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    new-instance v3, Lcom/android/server/WiredAccessoryObserver;

    invoke-direct {v3, v4}, Lcom/android/server/WiredAccessoryObserver;-><init>(Landroid/content/Context;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_23

    .line 663
    :goto_2e
    :try_start_3f
    const-string v3, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    new-instance v106, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v106

    invoke-direct {v0, v4}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_24

    .line 666
    .end local v105           #usb:Lcom/android/server/usb/UsbService;
    .local v106, usb:Lcom/android/server/usb/UsbService;
    :try_start_40
    const-string v3, "usb"

    move-object/from16 v0, v106

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_33

    move-object/from16 v105, v106

    .line 675
    .end local v106           #usb:Lcom/android/server/usb/UsbService;
    .restart local v105       #usb:Lcom/android/server/usb/UsbService;
    :goto_2f
    :try_start_41
    const-string v3, "SystemServer"

    const-string v9, "Mot Dock Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    new-instance v79, Lcom/motorola/server/MotDockObserver;

    move-object/from16 v0, v79

    invoke-direct {v0, v4}, Lcom/motorola/server/MotDockObserver;-><init>(Landroid/content/Context;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_25

    .end local v78           #motDock:Lcom/motorola/server/MotDockObserver;
    .local v79, motDock:Lcom/motorola/server/MotDockObserver;
    move-object/from16 v78, v79

    .line 688
    .end local v79           #motDock:Lcom/motorola/server/MotDockObserver;
    .restart local v78       #motDock:Lcom/motorola/server/MotDockObserver;
    :goto_30
    :try_start_42
    const-string v3, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    new-instance v104, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v104

    invoke-direct {v0, v4}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_26

    .end local v103           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v104, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v103, v104

    .line 696
    .end local v104           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v103       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_31
    :try_start_43
    const-string v3, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    const-string v3, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_27

    .line 704
    :goto_32
    :try_start_44
    const-string v3, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    new-instance v42, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v42

    invoke-direct {v0, v4}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_28

    .line 706
    .end local v41           #appWidget:Lcom/android/server/AppWidgetService;
    .local v42, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_45
    const-string v3, "appwidget"

    move-object/from16 v0, v42

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_32

    move-object/from16 v41, v42

    .line 712
    .end local v42           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v41       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_33
    :try_start_46
    const-string v3, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    new-instance v92, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v92

    invoke-direct {v0, v4}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_29

    .end local v91           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v92, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v91, v92

    .line 719
    .end local v92           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v91       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_34
    :try_start_47
    const-string v3, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    const-string v3, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v4}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_2a

    .line 730
    :goto_35
    :try_start_48
    const-string v3, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    const-string v3, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v4}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_2b

    .line 738
    :goto_36
    :try_start_49
    const-string v3, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    new-instance v83, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v83

    invoke-direct {v0, v4}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_2c

    .end local v82           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .local v83, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v82, v83

    .line 745
    .end local v83           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v82       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :goto_37
    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Lcom/android/server/DeviceManager3LMService;->init(Landroid/content/Context;)V

    .line 750
    const-string v3, "ro.3LM.extended"

    const/4 v9, 0x0

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v9, 0x1

    if-ne v3, v9, :cond_5

    .line 751
    const-string v3, "SystemServer"

    const-string v9, "3LM OEM Extended Api Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    const-string v3, "OemExtendedApi3LM"

    new-instance v9, Lcom/android/server/OemExtendedApi3LMService;

    const/4 v10, 0x0

    invoke-direct {v9, v4, v10}, Lcom/android/server/OemExtendedApi3LMService;-><init>(Landroid/content/Context;Landroid/os/IDeviceManagerRestrictable3LM;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 760
    .end local v70           #isAgpsFtrEnabled:Z
    .end local v95           #sensorHubExists:Z
    :cond_5
    :goto_38
    invoke-virtual/range {v118 .. v118}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v28

    .line 761
    .local v28, safeMode:Z
    if-eqz v28, :cond_17

    .line 762
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 764
    const/4 v3, 0x1

    sput-boolean v3, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 766
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 774
    :goto_39
    if-eqz v57, :cond_6

    .line 776
    :try_start_4a
    invoke-virtual/range {v57 .. v57}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_2d

    .line 782
    :cond_6
    :goto_3a
    if-eqz v84, :cond_7

    .line 784
    :try_start_4b
    invoke-virtual/range {v84 .. v84}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_2e

    .line 791
    :cond_7
    :goto_3b
    if-eqz v76, :cond_8

    .line 792
    invoke-virtual/range {v76 .. v76}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->systemReady()V

    .line 797
    :cond_8
    :try_start_4c
    invoke-virtual/range {v118 .. v118}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_2f

    .line 802
    :goto_3c
    if-eqz v28, :cond_9

    .line 803
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 809
    :cond_9
    invoke-virtual/range {v118 .. v118}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v49

    .line 810
    .local v49, config:Landroid/content/res/Configuration;
    new-instance v75, Landroid/util/DisplayMetrics;

    invoke-direct/range {v75 .. v75}, Landroid/util/DisplayMetrics;-><init>()V

    .line 811
    .local v75, metrics:Landroid/util/DisplayMetrics;
    const-string v3, "window"

    invoke-virtual {v4, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v111

    check-cast v111, Landroid/view/WindowManager;

    .line 812
    .local v111, w:Landroid/view/WindowManager;
    invoke-interface/range {v111 .. v111}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    move-object/from16 v0, v75

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 813
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v49

    move-object/from16 v1, v75

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 815
    invoke-virtual {v6}, Lcom/android/server/PowerManagerService;->systemReady()V

    .line 817
    :try_start_4d
    invoke-interface/range {v87 .. v87}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_30

    .line 823
    :goto_3d
    move-object/from16 v16, v4

    .line 824
    .local v16, contextF:Landroid/content/Context;
    move-object/from16 v17, v5

    .line 825
    .local v17, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v18, v13

    .line 826
    .local v18, networkManagementF:Lcom/android/server/NetworkManagementService;
    move-object/from16 v19, v12

    .line 827
    .local v19, networkStatsF:Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v20, v8

    .line 828
    .local v20, networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v21, v50

    .line 829
    .local v21, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v22, v59

    .line 830
    .local v22, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v23, v105

    .line 833
    .local v23, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v24, v78

    .line 836
    .local v24, motDockF:Lcom/motorola/server/MotDockObserver;
    move-object/from16 v36, v99

    .line 837
    .local v36, throttleF:Lcom/android/server/ThrottleService;
    move-object/from16 v25, v103

    .line 838
    .local v25, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v27, v41

    .line 839
    .local v27, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v29, v112

    .line 840
    .local v29, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v30, v68

    .line 841
    .local v30, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v26, v91

    .line 842
    .local v26, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v32, v73

    .line 845
    .local v32, locationF:Lcom/android/server/LocationManagerService;
    move-object/from16 v33, v109

    .line 848
    .local v33, vzwLocationF:Lcom/vzw/location/VzwLocationManagerService;
    move-object/from16 v35, v52

    .line 849
    .local v35, countryDetectorF:Lcom/android/server/CountryDetectorService;
    move-object/from16 v37, v82

    .line 850
    .local v37, networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v38, v101

    .line 851
    .local v38, textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    move-object/from16 v31, v97

    .line 854
    .local v31, statusBarF:Lcom/android/server/StatusBarManagerService;
    move-object/from16 v34, v93

    .line 864
    .local v34, sensorHubF:Lcom/motorola/server/SensorHubService;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    new-instance v14, Lcom/android/server/ServerThread$1;

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v38}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/motorola/server/MotDockObserver;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/vzw/location/VzwLocationManagerService;Lcom/motorola/server/SensorHubService;Lcom/android/server/CountryDetectorService;Lcom/android/server/ThrottleService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/TextServicesManagerService;)V

    invoke-virtual {v3, v14}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1003
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1004
    const-string v3, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    :cond_a
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1008
    const-string v3, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    return-void

    .line 128
    .end local v4           #context:Landroid/content/Context;
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .end local v13           #networkManagement:Lcom/android/server/NetworkManagementService;
    .end local v16           #contextF:Landroid/content/Context;
    .end local v17           #batteryF:Lcom/android/server/BatteryService;
    .end local v18           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v19           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v20           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v21           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v22           #dockF:Lcom/android/server/DockObserver;
    .end local v23           #usbF:Lcom/android/server/usb/UsbService;
    .end local v24           #motDockF:Lcom/motorola/server/MotDockObserver;
    .end local v25           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v26           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v27           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v28           #safeMode:Z
    .end local v29           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v30           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v31           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v32           #locationF:Lcom/android/server/LocationManagerService;
    .end local v33           #vzwLocationF:Lcom/vzw/location/VzwLocationManagerService;
    .end local v34           #sensorHubF:Lcom/motorola/server/SensorHubService;
    .end local v35           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v36           #throttleF:Lcom/android/server/ThrottleService;
    .end local v37           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v38           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v41           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v44           #bluetooth:Landroid/server/BluetoothService;
    .end local v46           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v49           #config:Landroid/content/res/Configuration;
    .end local v50           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v52           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v55           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .end local v57           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v59           #dock:Lcom/android/server/DockObserver;
    .end local v62           #encryption:Lcom/motorola/server/encryption/EncryptionService;
    .end local v65           #factoryTest:I
    .end local v66           #factoryTestStr:Ljava/lang/String;
    .end local v68           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v71           #lights:Lcom/android/server/LightsService;
    .end local v73           #location:Lcom/android/server/LocationManagerService;
    .end local v75           #metrics:Landroid/util/DisplayMetrics;
    .end local v76           #motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    .end local v78           #motDock:Lcom/motorola/server/MotDockObserver;
    .end local v82           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .end local v84           #notification:Lcom/android/server/NotificationManagerService;
    .end local v87           #pm:Landroid/content/pm/IPackageManager;
    .end local v91           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v93           #sensorHub:Lcom/motorola/server/SensorHubService;
    .end local v97           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v99           #throttle:Lcom/android/server/ThrottleService;
    .end local v101           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v103           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v105           #usb:Lcom/android/server/usb/UsbService;
    .end local v107           #vzwConnectivity:Lcom/motorola/server/VzwConnectivityService;
    .end local v109           #vzwLocation:Lcom/vzw/location/VzwLocationManagerService;
    .end local v111           #w:Landroid/view/WindowManager;
    .end local v112           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v114           #wifi:Lcom/android/server/WifiService;
    .end local v116           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .end local v118           #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_b
    const/16 v90, 0x0

    goto/16 :goto_0

    .line 134
    .restart local v90       #reboot:Z
    :cond_c
    const/16 v89, 0x0

    .restart local v89       #reason:Ljava/lang/String;
    goto/16 :goto_1

    .line 142
    .end local v89           #reason:Ljava/lang/String;
    .end local v90           #reboot:Z
    .restart local v66       #factoryTestStr:Ljava/lang/String;
    :cond_d
    invoke-static/range {v66 .. v66}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v65

    goto/16 :goto_2

    .line 212
    .restart local v4       #context:Landroid/content/Context;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v13       #networkManagement:Lcom/android/server/NetworkManagementService;
    .restart local v40       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v43       #battery:Lcom/android/server/BatteryService;
    .restart local v44       #bluetooth:Landroid/server/BluetoothService;
    .restart local v46       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v50       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v54       #cryptState:Ljava/lang/String;
    .restart local v56       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v59       #dock:Lcom/android/server/DockObserver;
    .restart local v65       #factoryTest:I
    .restart local v71       #lights:Lcom/android/server/LightsService;
    .restart local v78       #motDock:Lcom/motorola/server/MotDockObserver;
    .restart local v80       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v82       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v86       #onlyCore:Z
    .restart local v87       #pm:Landroid/content/pm/IPackageManager;
    .restart local v91       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v99       #throttle:Lcom/android/server/ThrottleService;
    .restart local v103       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v105       #usb:Lcom/android/server/usb/UsbService;
    .restart local v107       #vzwConnectivity:Lcom/motorola/server/VzwConnectivityService;
    .restart local v114       #wifi:Lcom/android/server/WifiService;
    .restart local v116       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v118       #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_e
    :try_start_4e
    const-string v3, "1"

    move-object/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 213
    const-string v3, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/16 v86, 0x1

    goto/16 :goto_3

    .line 217
    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 235
    .restart local v67       #firstBoot:Z
    :catch_0
    move-exception v61

    .line 236
    .local v61, e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v61

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4e
    .catch Ljava/lang/RuntimeException; {:try_start_4e .. :try_end_4e} :catch_1

    goto/16 :goto_6

    .line 302
    .end local v54           #cryptState:Ljava/lang/String;
    .end local v61           #e:Ljava/lang/Throwable;
    .end local v67           #firstBoot:Z
    .end local v86           #onlyCore:Z
    :catch_1
    move-exception v61

    move-object/from16 v55, v56

    .end local v56           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v55       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    move-object/from16 v7, v40

    .end local v40           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v43

    .line 303
    .end local v43           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .local v61, e:Ljava/lang/RuntimeException;
    :goto_3e
    const-string v3, "System"

    const-string v9, "******************************************"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const-string v3, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v61

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .line 240
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v55           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .end local v61           #e:Ljava/lang/RuntimeException;
    .restart local v40       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v43       #battery:Lcom/android/server/BatteryService;
    .restart local v54       #cryptState:Ljava/lang/String;
    .restart local v56       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v67       #firstBoot:Z
    .restart local v86       #onlyCore:Z
    :cond_10
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 269
    .end local v40           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v43           #battery:Lcom/android/server/BatteryService;
    .end local v71           #lights:Lcom/android/server/LightsService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v72       #lights:Lcom/android/server/LightsService;
    :cond_11
    const/4 v3, 0x0

    move v9, v3

    goto/16 :goto_8

    :cond_12
    const/4 v3, 0x0

    goto/16 :goto_9

    .line 281
    :cond_13
    const/4 v3, 0x1

    move/from16 v0, v65

    if-ne v0, v3, :cond_14

    .line 282
    :try_start_4f
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 302
    :catch_2
    move-exception v61

    move-object/from16 v55, v56

    .end local v56           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v55       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    move-object/from16 v71, v72

    .end local v72           #lights:Lcom/android/server/LightsService;
    .restart local v71       #lights:Lcom/android/server/LightsService;
    goto :goto_3e

    .line 284
    .end local v55           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .end local v71           #lights:Lcom/android/server/LightsService;
    .restart local v56       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v72       #lights:Lcom/android/server/LightsService;
    :cond_14
    const-string v3, "SystemServer"

    const-string v9, "Bluetooth Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    new-instance v45, Landroid/server/BluetoothService;

    move-object/from16 v0, v45

    invoke-direct {v0, v4}, Landroid/server/BluetoothService;-><init>(Landroid/content/Context;)V
    :try_end_4f
    .catch Ljava/lang/RuntimeException; {:try_start_4f .. :try_end_4f} :catch_2

    .line 286
    .end local v44           #bluetooth:Landroid/server/BluetoothService;
    .local v45, bluetooth:Landroid/server/BluetoothService;
    :try_start_50
    const-string v3, "bluetooth"

    move-object/from16 v0, v45

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 287
    invoke-virtual/range {v45 .. v45}, Landroid/server/BluetoothService;->initAfterRegistration()V

    .line 288
    new-instance v47, Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v47

    move-object/from16 v1, v45

    invoke-direct {v0, v4, v1}, Landroid/server/BluetoothA2dpService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_50
    .catch Ljava/lang/RuntimeException; {:try_start_50 .. :try_end_50} :catch_4c

    .line 289
    .end local v46           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .local v47, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :try_start_51
    const-string v3, "bluetooth_a2dp"

    move-object/from16 v0, v47

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 291
    invoke-virtual/range {v45 .. v45}, Landroid/server/BluetoothService;->initAfterA2dpRegistration()V

    .line 293
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "airplane_mode_on"

    const/4 v10, 0x0

    invoke-static {v3, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v39

    .line 295
    .local v39, airplaneModeOn:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "bluetooth_on"

    const/4 v10, 0x0

    invoke-static {v3, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v48

    .line 297
    .local v48, bluetoothOn:I
    if-nez v39, :cond_15

    if-eqz v48, :cond_15

    .line 298
    invoke-virtual/range {v45 .. v45}, Landroid/server/BluetoothService;->enable()Z
    :try_end_51
    .catch Ljava/lang/RuntimeException; {:try_start_51 .. :try_end_51} :catch_4d

    :cond_15
    move-object/from16 v46, v47

    .end local v47           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v46       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v44, v45

    .end local v45           #bluetooth:Landroid/server/BluetoothService;
    .restart local v44       #bluetooth:Landroid/server/BluetoothService;
    goto/16 :goto_a

    .line 340
    .end local v39           #airplaneModeOn:I
    .end local v48           #bluetoothOn:I
    .end local v54           #cryptState:Ljava/lang/String;
    .end local v56           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .end local v67           #firstBoot:Z
    .end local v72           #lights:Lcom/android/server/LightsService;
    .end local v86           #onlyCore:Z
    .restart local v41       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v52       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v55       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v57       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v62       #encryption:Lcom/motorola/server/encryption/EncryptionService;
    .restart local v68       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v71       #lights:Lcom/android/server/LightsService;
    .restart local v73       #location:Lcom/android/server/LocationManagerService;
    .restart local v76       #motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    .restart local v84       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v93       #sensorHub:Lcom/motorola/server/SensorHubService;
    .restart local v97       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v101       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v109       #vzwLocation:Lcom/vzw/location/VzwLocationManagerService;
    .restart local v112       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_3
    move-exception v61

    .line 341
    .local v61, e:Ljava/lang/Throwable;
    :goto_3f
    const-string v3, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 348
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_4
    move-exception v61

    .line 349
    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 357
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_5
    move-exception v61

    .line 358
    .restart local v61       #e:Ljava/lang/Throwable;
    :goto_40
    const-string v3, "SystemServer"

    const-string v9, "Failure starting encryption service"

    move-object/from16 v0, v61

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_e

    .line 365
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_6
    move-exception v61

    .line 366
    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 371
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_7
    move-exception v61

    .line 372
    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 388
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_8
    move-exception v61

    .line 389
    .restart local v61       #e:Ljava/lang/Throwable;
    :goto_41
    const-string v3, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 400
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_9
    move-exception v61

    .line 401
    .restart local v61       #e:Ljava/lang/Throwable;
    :goto_42
    const-string v3, "Failure starting MotDevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 410
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_a
    move-exception v61

    .line 411
    .restart local v61       #e:Ljava/lang/Throwable;
    :goto_43
    const-string v3, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 418
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_b
    move-exception v61

    .line 419
    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 426
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_c
    move-exception v61

    .line 427
    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 434
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v61

    .line 435
    .restart local v61       #e:Ljava/lang/Throwable;
    :goto_44
    const-string v3, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 442
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v61

    .line 443
    .restart local v61       #e:Ljava/lang/Throwable;
    :goto_45
    const-string v3, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 452
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v61

    move-object/from16 v8, v80

    .line 453
    .end local v80           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v61       #e:Ljava/lang/Throwable;
    :goto_46
    const-string v3, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 460
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v61

    .line 461
    .restart local v61       #e:Ljava/lang/Throwable;
    :goto_47
    const-string v3, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 468
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_11
    move-exception v61

    .line 469
    .restart local v61       #e:Ljava/lang/Throwable;
    :goto_48
    const-string v3, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 478
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_12
    move-exception v61

    .line 479
    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "starting Ethernet Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 493
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_13
    move-exception v61

    .line 494
    .restart local v61       #e:Ljava/lang/Throwable;
    :goto_49
    const-string v3, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 505
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_14
    move-exception v61

    .line 506
    .restart local v61       #e:Ljava/lang/Throwable;
    :goto_4a
    const-string v3, "starting VzwConnectivityService"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 515
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_15
    move-exception v61

    .line 516
    .restart local v61       #e:Ljava/lang/Throwable;
    :goto_4b
    const-string v3, "starting ThrottleService"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 526
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_16
    move-exception v61

    .line 527
    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 535
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_17
    move-exception v61

    .line 536
    .restart local v61       #e:Ljava/lang/Throwable;
    :goto_4c
    const-string v3, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 543
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_18
    move-exception v61

    .line 544
    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 551
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_19
    move-exception v61

    .line 552
    .restart local v61       #e:Ljava/lang/Throwable;
    :goto_4d
    const-string v3, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 560
    .end local v61           #e:Ljava/lang/Throwable;
    :cond_16
    const/16 v70, 0x0

    goto/16 :goto_24

    .line 569
    .restart local v70       #isAgpsFtrEnabled:Z
    :catch_1a
    move-exception v61

    .line 570
    .restart local v61       #e:Ljava/lang/Throwable;
    :goto_4e
    const-string v3, "starting Vzw Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 581
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_1b
    move-exception v61

    .line 582
    .restart local v61       #e:Ljava/lang/Throwable;
    :goto_4f
    const-string v3, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 594
    .end local v61           #e:Ljava/lang/Throwable;
    .restart local v95       #sensorHubExists:Z
    :catch_1c
    move-exception v61

    .line 595
    .restart local v61       #e:Ljava/lang/Throwable;
    :goto_50
    const-string v3, "SystemServer"

    const-string v9, "Failure starting SensorHub Service"

    move-object/from16 v0, v61

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_27

    .line 605
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_1d
    move-exception v61

    .line 606
    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 613
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_1e
    move-exception v61

    .line 614
    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 625
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_1f
    move-exception v61

    .line 626
    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "Failure starting Checkin Mot Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 635
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_20
    move-exception v61

    .line 636
    .restart local v61       #e:Ljava/lang/Throwable;
    :goto_51
    const-string v3, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 642
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_21
    move-exception v61

    .line 643
    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 650
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_22
    move-exception v61

    .line 651
    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 658
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_23
    move-exception v61

    .line 659
    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "starting WiredAccessoryObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 667
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_24
    move-exception v61

    .line 668
    .restart local v61       #e:Ljava/lang/Throwable;
    :goto_52
    const-string v3, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 680
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_25
    move-exception v61

    .line 681
    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting MotDockObserver"

    move-object/from16 v0, v61

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_30

    .line 691
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_26
    move-exception v61

    .line 692
    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 699
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_27
    move-exception v61

    .line 700
    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v61

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_32

    .line 707
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_28
    move-exception v61

    .line 708
    .restart local v61       #e:Ljava/lang/Throwable;
    :goto_53
    const-string v3, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 714
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_29
    move-exception v61

    .line 715
    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .line 721
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_2a
    move-exception v61

    .line 722
    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 733
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_2b
    move-exception v61

    .line 734
    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .line 740
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_2c
    move-exception v61

    .line 741
    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .line 769
    .end local v61           #e:Ljava/lang/Throwable;
    .end local v70           #isAgpsFtrEnabled:Z
    .end local v95           #sensorHubExists:Z
    .restart local v28       #safeMode:Z
    :cond_17
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_39

    .line 777
    :catch_2d
    move-exception v61

    .line 778
    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .line 785
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_2e
    move-exception v61

    .line 786
    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b

    .line 798
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_2f
    move-exception v61

    .line 799
    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3c

    .line 818
    .end local v61           #e:Ljava/lang/Throwable;
    .restart local v49       #config:Landroid/content/res/Configuration;
    .restart local v75       #metrics:Landroid/util/DisplayMetrics;
    .restart local v111       #w:Landroid/view/WindowManager;
    :catch_30
    move-exception v61

    .line 819
    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 223
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v28           #safeMode:Z
    .end local v41           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v49           #config:Landroid/content/res/Configuration;
    .end local v52           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v55           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .end local v57           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v61           #e:Ljava/lang/Throwable;
    .end local v62           #encryption:Lcom/motorola/server/encryption/EncryptionService;
    .end local v68           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v73           #location:Lcom/android/server/LocationManagerService;
    .end local v75           #metrics:Landroid/util/DisplayMetrics;
    .end local v76           #motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    .end local v84           #notification:Lcom/android/server/NotificationManagerService;
    .end local v93           #sensorHub:Lcom/motorola/server/SensorHubService;
    .end local v97           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v101           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v109           #vzwLocation:Lcom/vzw/location/VzwLocationManagerService;
    .end local v111           #w:Landroid/view/WindowManager;
    .end local v112           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v40       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v43       #battery:Lcom/android/server/BatteryService;
    .restart local v54       #cryptState:Ljava/lang/String;
    .restart local v56       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v67       #firstBoot:Z
    .restart local v80       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v86       #onlyCore:Z
    :catch_31
    move-exception v3

    goto/16 :goto_5

    .line 707
    .end local v40           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v43           #battery:Lcom/android/server/BatteryService;
    .end local v54           #cryptState:Ljava/lang/String;
    .end local v56           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .end local v67           #firstBoot:Z
    .end local v80           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v86           #onlyCore:Z
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v42       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v52       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v55       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v57       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v62       #encryption:Lcom/motorola/server/encryption/EncryptionService;
    .restart local v68       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v70       #isAgpsFtrEnabled:Z
    .restart local v73       #location:Lcom/android/server/LocationManagerService;
    .restart local v76       #motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    .restart local v84       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v93       #sensorHub:Lcom/motorola/server/SensorHubService;
    .restart local v95       #sensorHubExists:Z
    .restart local v97       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v101       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v109       #vzwLocation:Lcom/vzw/location/VzwLocationManagerService;
    .restart local v112       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_32
    move-exception v61

    move-object/from16 v41, v42

    .end local v42           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v41       #appWidget:Lcom/android/server/AppWidgetService;
    goto :goto_53

    .line 667
    .end local v105           #usb:Lcom/android/server/usb/UsbService;
    .restart local v106       #usb:Lcom/android/server/usb/UsbService;
    :catch_33
    move-exception v61

    move-object/from16 v105, v106

    .end local v106           #usb:Lcom/android/server/usb/UsbService;
    .restart local v105       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_52

    .line 635
    .end local v112           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v113       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_34
    move-exception v61

    move-object/from16 v112, v113

    .end local v113           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v112       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_51

    .line 594
    .end local v93           #sensorHub:Lcom/motorola/server/SensorHubService;
    .restart local v94       #sensorHub:Lcom/motorola/server/SensorHubService;
    :catch_35
    move-exception v61

    move-object/from16 v93, v94

    .end local v94           #sensorHub:Lcom/motorola/server/SensorHubService;
    .restart local v93       #sensorHub:Lcom/motorola/server/SensorHubService;
    goto/16 :goto_50

    .line 581
    .end local v52           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v95           #sensorHubExists:Z
    .restart local v53       #countryDetector:Lcom/android/server/CountryDetectorService;
    :catch_36
    move-exception v61

    move-object/from16 v52, v53

    .end local v53           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v52       #countryDetector:Lcom/android/server/CountryDetectorService;
    goto/16 :goto_4f

    .line 569
    .end local v109           #vzwLocation:Lcom/vzw/location/VzwLocationManagerService;
    .restart local v110       #vzwLocation:Lcom/vzw/location/VzwLocationManagerService;
    :catch_37
    move-exception v61

    move-object/from16 v109, v110

    .end local v110           #vzwLocation:Lcom/vzw/location/VzwLocationManagerService;
    .restart local v109       #vzwLocation:Lcom/vzw/location/VzwLocationManagerService;
    goto/16 :goto_4e

    .line 551
    .end local v70           #isAgpsFtrEnabled:Z
    .end local v73           #location:Lcom/android/server/LocationManagerService;
    .restart local v74       #location:Lcom/android/server/LocationManagerService;
    :catch_38
    move-exception v61

    move-object/from16 v73, v74

    .end local v74           #location:Lcom/android/server/LocationManagerService;
    .restart local v73       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_4d

    .line 535
    .end local v84           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v85       #notification:Lcom/android/server/NotificationManagerService;
    :catch_39
    move-exception v61

    move-object/from16 v84, v85

    .end local v85           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v84       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_4c

    .line 515
    .end local v99           #throttle:Lcom/android/server/ThrottleService;
    .restart local v100       #throttle:Lcom/android/server/ThrottleService;
    :catch_3a
    move-exception v61

    move-object/from16 v99, v100

    .end local v100           #throttle:Lcom/android/server/ThrottleService;
    .restart local v99       #throttle:Lcom/android/server/ThrottleService;
    goto/16 :goto_4b

    .line 505
    .end local v107           #vzwConnectivity:Lcom/motorola/server/VzwConnectivityService;
    .restart local v108       #vzwConnectivity:Lcom/motorola/server/VzwConnectivityService;
    :catch_3b
    move-exception v61

    move-object/from16 v107, v108

    .end local v108           #vzwConnectivity:Lcom/motorola/server/VzwConnectivityService;
    .restart local v107       #vzwConnectivity:Lcom/motorola/server/VzwConnectivityService;
    goto/16 :goto_4a

    .line 493
    .end local v50           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v51       #connectivity:Lcom/android/server/ConnectivityService;
    :catch_3c
    move-exception v61

    move-object/from16 v50, v51

    .end local v51           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v50       #connectivity:Lcom/android/server/ConnectivityService;
    goto/16 :goto_49

    .line 468
    .end local v114           #wifi:Lcom/android/server/WifiService;
    .restart local v115       #wifi:Lcom/android/server/WifiService;
    :catch_3d
    move-exception v61

    move-object/from16 v114, v115

    .end local v115           #wifi:Lcom/android/server/WifiService;
    .restart local v114       #wifi:Lcom/android/server/WifiService;
    goto/16 :goto_48

    .line 460
    .end local v116           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v117       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :catch_3e
    move-exception v61

    move-object/from16 v116, v117

    .end local v117           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v116       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_47

    .line 452
    :catch_3f
    move-exception v61

    goto/16 :goto_46

    .line 442
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v80       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v81       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :catch_40
    move-exception v61

    move-object/from16 v12, v81

    .end local v81           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_45

    .line 434
    .end local v101           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v102       #tsms:Lcom/android/server/TextServicesManagerService;
    :catch_41
    move-exception v61

    move-object/from16 v101, v102

    .end local v102           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v101       #tsms:Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_44

    .line 410
    .end local v97           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v98       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_42
    move-exception v61

    move-object/from16 v97, v98

    .end local v98           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v97       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_43

    .line 400
    .end local v76           #motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    .restart local v77       #motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    :catch_43
    move-exception v61

    move-object/from16 v76, v77

    .end local v77           #motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    .restart local v76       #motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    goto/16 :goto_42

    .line 388
    .end local v57           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v58       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_44
    move-exception v61

    move-object/from16 v57, v58

    .end local v58           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v57       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_41

    .line 380
    :catch_45
    move-exception v3

    goto/16 :goto_11

    .line 357
    .end local v62           #encryption:Lcom/motorola/server/encryption/EncryptionService;
    .restart local v63       #encryption:Lcom/motorola/server/encryption/EncryptionService;
    :catch_46
    move-exception v61

    move-object/from16 v62, v63

    .end local v63           #encryption:Lcom/motorola/server/encryption/EncryptionService;
    .restart local v62       #encryption:Lcom/motorola/server/encryption/EncryptionService;
    goto/16 :goto_40

    .line 340
    .end local v68           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v69       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_47
    move-exception v61

    move-object/from16 v68, v69

    .end local v69           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v68       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_3f

    .line 302
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v41           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v52           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v57           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v62           #encryption:Lcom/motorola/server/encryption/EncryptionService;
    .end local v68           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v73           #location:Lcom/android/server/LocationManagerService;
    .end local v76           #motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    .end local v84           #notification:Lcom/android/server/NotificationManagerService;
    .end local v93           #sensorHub:Lcom/motorola/server/SensorHubService;
    .end local v97           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v101           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v109           #vzwLocation:Lcom/vzw/location/VzwLocationManagerService;
    .end local v112           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v40       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v43       #battery:Lcom/android/server/BatteryService;
    .restart local v88       #power:Lcom/android/server/PowerManagerService;
    :catch_48
    move-exception v61

    move-object/from16 v7, v40

    .end local v40           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v43

    .end local v43           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v88

    .end local v88           #power:Lcom/android/server/PowerManagerService;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    goto/16 :goto_3e

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v40       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v43       #battery:Lcom/android/server/BatteryService;
    :catch_49
    move-exception v61

    move-object/from16 v7, v40

    .end local v40           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v43

    .end local v43           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    goto/16 :goto_3e

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v55           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .end local v71           #lights:Lcom/android/server/LightsService;
    .restart local v40       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v43       #battery:Lcom/android/server/BatteryService;
    .restart local v54       #cryptState:Ljava/lang/String;
    .restart local v56       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v67       #firstBoot:Z
    .restart local v72       #lights:Lcom/android/server/LightsService;
    .restart local v86       #onlyCore:Z
    :catch_4a
    move-exception v61

    move-object/from16 v55, v56

    .end local v56           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v55       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    move-object/from16 v7, v40

    .end local v40           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v43

    .end local v43           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v71, v72

    .end local v72           #lights:Lcom/android/server/LightsService;
    .restart local v71       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_3e

    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v55           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .end local v71           #lights:Lcom/android/server/LightsService;
    .restart local v40       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v56       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v72       #lights:Lcom/android/server/LightsService;
    :catch_4b
    move-exception v61

    move-object/from16 v55, v56

    .end local v56           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v55       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    move-object/from16 v7, v40

    .end local v40           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v71, v72

    .end local v72           #lights:Lcom/android/server/LightsService;
    .restart local v71       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_3e

    .end local v44           #bluetooth:Landroid/server/BluetoothService;
    .end local v55           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .end local v71           #lights:Lcom/android/server/LightsService;
    .restart local v45       #bluetooth:Landroid/server/BluetoothService;
    .restart local v56       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v72       #lights:Lcom/android/server/LightsService;
    :catch_4c
    move-exception v61

    move-object/from16 v55, v56

    .end local v56           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v55       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    move-object/from16 v44, v45

    .end local v45           #bluetooth:Landroid/server/BluetoothService;
    .restart local v44       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v71, v72

    .end local v72           #lights:Lcom/android/server/LightsService;
    .restart local v71       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_3e

    .end local v44           #bluetooth:Landroid/server/BluetoothService;
    .end local v46           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v55           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .end local v71           #lights:Lcom/android/server/LightsService;
    .restart local v45       #bluetooth:Landroid/server/BluetoothService;
    .restart local v47       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v56       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v72       #lights:Lcom/android/server/LightsService;
    :catch_4d
    move-exception v61

    move-object/from16 v55, v56

    .end local v56           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v55       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    move-object/from16 v46, v47

    .end local v47           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v46       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v44, v45

    .end local v45           #bluetooth:Landroid/server/BluetoothService;
    .restart local v44       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v71, v72

    .end local v72           #lights:Lcom/android/server/LightsService;
    .restart local v71       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_3e

    .end local v54           #cryptState:Ljava/lang/String;
    .end local v67           #firstBoot:Z
    .end local v86           #onlyCore:Z
    .restart local v41       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v52       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v57       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v62       #encryption:Lcom/motorola/server/encryption/EncryptionService;
    .restart local v68       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v73       #location:Lcom/android/server/LocationManagerService;
    .restart local v76       #motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    .restart local v84       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v93       #sensorHub:Lcom/motorola/server/SensorHubService;
    .restart local v97       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v101       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v109       #vzwLocation:Lcom/vzw/location/VzwLocationManagerService;
    .restart local v112       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_18
    move-object/from16 v8, v80

    .end local v80           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_38
.end method
