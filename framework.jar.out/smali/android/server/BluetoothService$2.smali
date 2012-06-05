.class Landroid/server/BluetoothService$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothService;)V
    .locals 0
    .parameter

    .prologue
    .line 2322
    iput-object p1, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2325
    if-nez p2, :cond_1

    .line 2448
    :cond_0
    :goto_0
    return-void

    .line 2327
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 2328
    .local v2, action:Ljava/lang/String;
    const-string v14, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 2329
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 2332
    .local v10, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v14}, Landroid/server/BluetoothService;->isAirplaneModeOn()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 2333
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;
    invoke-static {v14}, Landroid/server/BluetoothService;->access$900(Landroid/server/BluetoothService;)Landroid/server/BluetoothAdapterStateMachine;

    move-result-object v14

    const/16 v15, 0x37

    invoke-virtual {v14, v15}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 2335
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;
    invoke-static {v14}, Landroid/server/BluetoothService;->access$900(Landroid/server/BluetoothService;)Landroid/server/BluetoothAdapterStateMachine;

    move-result-object v14

    const/16 v15, 0x38

    invoke-virtual {v14, v15}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 2337
    .end local v10           #resolver:Landroid/content/ContentResolver;
    :cond_3
    const-string v14, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 2338
    const-string v14, "android.intent.extra.DOCK_STATE"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 2340
    .local v13, state:I
    const-string v14, "BluetoothService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Received ACTION_DOCK_EVENT with State:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    if-nez v13, :cond_4

    .line 2342
    const/4 v14, 0x0

    invoke-static {v14}, Landroid/server/BluetoothService;->access$1002(Ljava/lang/String;)Ljava/lang/String;

    .line 2343
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v15, 0x0

    #setter for: Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;
    invoke-static {v14, v15}, Landroid/server/BluetoothService;->access$1102(Landroid/server/BluetoothService;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 2345
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mContext:Landroid/content/Context;
    invoke-static {v14}, Landroid/server/BluetoothService;->access$1200(Landroid/server/BluetoothService;)Landroid/content/Context;

    move-result-object v14

    const-string v15, "bluetooth_service_settings"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v16, v0

    #getter for: Landroid/server/BluetoothService;->mContext:Landroid/content/Context;
    invoke-static/range {v16 .. v16}, Landroid/server/BluetoothService;->access$1200(Landroid/server/BluetoothService;)Landroid/content/Context;

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 2348
    .local v8, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "dock_bluetooth_address"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/server/BluetoothService;->access$1000()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v8, v14, v15}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2349
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 2352
    .end local v8           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v13           #state:I
    :cond_5
    const-string v14, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 2353
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 2354
    .restart local v10       #resolver:Landroid/content/ContentResolver;
    const-string v14, "airplane_mode_on"

    const/4 v15, 0x0

    invoke-static {v10, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 2356
    .local v3, airplaneModeOn:I
    const-string v14, "bluetooth_on"

    const/4 v15, 0x0

    invoke-static {v10, v14, v15}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 2358
    .local v6, bluetoothOn:I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const-string v14, "mot_device_policy"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/motorola/motepm/MotDevicePolicyManager;

    #setter for: Landroid/server/BluetoothService;->mDPM:Lcom/motorola/motepm/MotDevicePolicyManager;
    invoke-static {v15, v14}, Landroid/server/BluetoothService;->access$1302(Landroid/server/BluetoothService;Lcom/motorola/motepm/MotDevicePolicyManager;)Lcom/motorola/motepm/MotDevicePolicyManager;

    .line 2359
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mDPM:Lcom/motorola/motepm/MotDevicePolicyManager;
    invoke-static {v14}, Landroid/server/BluetoothService;->access$1300(Landroid/server/BluetoothService;)Lcom/motorola/motepm/MotDevicePolicyManager;

    move-result-object v14

    if-eqz v14, :cond_6

    .line 2360
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mDPM:Lcom/motorola/motepm/MotDevicePolicyManager;
    invoke-static {v15}, Landroid/server/BluetoothService;->access$1300(Landroid/server/BluetoothService;)Lcom/motorola/motepm/MotDevicePolicyManager;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x9

    invoke-virtual/range {v15 .. v17}, Lcom/motorola/motepm/MotDevicePolicyManager;->isPolicyAllowed(Landroid/content/ComponentName;I)Z

    move-result v15

    #setter for: Landroid/server/BluetoothService;->mPolicyAllowedForBT:Z
    invoke-static {v14, v15}, Landroid/server/BluetoothService;->access$1402(Landroid/server/BluetoothService;Z)Z

    .line 2362
    :cond_6
    if-nez v3, :cond_0

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mDPM:Lcom/motorola/motepm/MotDevicePolicyManager;
    invoke-static {v14}, Landroid/server/BluetoothService;->access$1300(Landroid/server/BluetoothService;)Lcom/motorola/motepm/MotDevicePolicyManager;

    move-result-object v14

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mDPM:Lcom/motorola/motepm/MotDevicePolicyManager;
    invoke-static {v14}, Landroid/server/BluetoothService;->access$1300(Landroid/server/BluetoothService;)Lcom/motorola/motepm/MotDevicePolicyManager;

    move-result-object v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mPolicyAllowedForBT:Z
    invoke-static {v14}, Landroid/server/BluetoothService;->access$1400(Landroid/server/BluetoothService;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 2363
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v14}, Landroid/server/BluetoothService;->enable()Z

    goto/16 :goto_0

    .line 2365
    .end local v3           #airplaneModeOn:I
    .end local v6           #bluetoothOn:I
    .end local v10           #resolver:Landroid/content/ContentResolver;
    :cond_8
    const-string v14, "com.motorola.app.action.BLUETOOTH_ALLOWED_CHANGED"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 2366
    new-instance v12, Lcom/motorola/motepm/ReportResultToEPM;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v12, v0, v1}, Lcom/motorola/motepm/ReportResultToEPM;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2367
    .local v12, resultReport:Lcom/motorola/motepm/ReportResultToEPM;
    if-nez v12, :cond_9

    .line 2368
    const-string v14, "BluetoothService"

    const-string v15, "failed to get an instance of ReportResult"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2371
    :cond_9
    const/4 v11, -0x1

    .line 2372
    .local v11, resultCode:I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mDPM:Lcom/motorola/motepm/MotDevicePolicyManager;
    invoke-static {v14}, Landroid/server/BluetoothService;->access$1300(Landroid/server/BluetoothService;)Lcom/motorola/motepm/MotDevicePolicyManager;

    move-result-object v14

    if-eqz v14, :cond_a

    .line 2373
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mDPM:Lcom/motorola/motepm/MotDevicePolicyManager;
    invoke-static {v15}, Landroid/server/BluetoothService;->access$1300(Landroid/server/BluetoothService;)Lcom/motorola/motepm/MotDevicePolicyManager;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x9

    invoke-virtual/range {v15 .. v17}, Lcom/motorola/motepm/MotDevicePolicyManager;->isPolicyAllowed(Landroid/content/ComponentName;I)Z

    move-result v15

    #setter for: Landroid/server/BluetoothService;->mPolicyAllowedForBT:Z
    invoke-static {v14, v15}, Landroid/server/BluetoothService;->access$1402(Landroid/server/BluetoothService;Z)Z

    .line 2375
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mPolicyAllowedForBT:Z
    invoke-static {v14}, Landroid/server/BluetoothService;->access$1400(Landroid/server/BluetoothService;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 2376
    const/4 v11, 0x0

    .line 2388
    :goto_1
    const/4 v14, 0x0

    invoke-virtual {v12, v11, v14}, Lcom/motorola/motepm/ReportResultToEPM;->reportResultCode(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 2378
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v14}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v14

    if-eqz v14, :cond_d

    .line 2379
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v14}, Landroid/server/BluetoothService;->disable()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 2380
    const/4 v11, 0x0

    goto :goto_1

    .line 2382
    :cond_c
    const/4 v11, -0x1

    goto :goto_1

    .line 2385
    :cond_d
    const/4 v11, 0x0

    goto :goto_1

    .line 2390
    .end local v11           #resultCode:I
    .end local v12           #resultReport:Lcom/motorola/motepm/ReportResultToEPM;
    :cond_e
    const-string v14, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 2391
    const-string v14, "android.bluetooth.profile.extra.STATE"

    const/16 v15, 0xa

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 2393
    .local v5, audioState:I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mConnectionManager:Landroid/server/BluetoothService$ConnectionManager;
    invoke-static {v14}, Landroid/server/BluetoothService;->access$1500(Landroid/server/BluetoothService;)Landroid/server/BluetoothService$ConnectionManager;

    move-result-object v15

    const/16 v14, 0xc

    if-ne v5, v14, :cond_f

    const/4 v14, 0x1

    :goto_2
    invoke-virtual {v15, v14}, Landroid/server/BluetoothService$ConnectionManager;->setScoAudioActive(Z)V

    goto/16 :goto_0

    :cond_f
    const/4 v14, 0x0

    goto :goto_2

    .line 2394
    .end local v5           #audioState:I
    :cond_10
    const-string v14, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    .line 2395
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mA2dpService:Landroid/server/BluetoothA2dpService;
    invoke-static {v14}, Landroid/server/BluetoothService;->access$1600(Landroid/server/BluetoothService;)Landroid/server/BluetoothA2dpService;

    move-result-object v14

    if-eqz v14, :cond_13

    .line 2397
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mA2dpService:Landroid/server/BluetoothA2dpService;
    invoke-static {v14}, Landroid/server/BluetoothService;->access$1600(Landroid/server/BluetoothService;)Landroid/server/BluetoothA2dpService;

    move-result-object v14

    invoke-virtual {v14}, Landroid/server/BluetoothA2dpService;->getConnectedDevices()Ljava/util/List;

    move-result-object v4

    .line 2398
    .local v4, audioDevices:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    const/4 v9, 0x0

    .local v9, i:I
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    if-ge v9, v14, :cond_12

    .line 2399
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mA2dpService:Landroid/server/BluetoothA2dpService;
    invoke-static {v14}, Landroid/server/BluetoothService;->access$1600(Landroid/server/BluetoothService;)Landroid/server/BluetoothA2dpService;

    move-result-object v15

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v15, v14}, Landroid/server/BluetoothA2dpService;->isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_11

    .line 2400
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mConnectionManager:Landroid/server/BluetoothService$ConnectionManager;
    invoke-static {v14}, Landroid/server/BluetoothService;->access$1500(Landroid/server/BluetoothService;)Landroid/server/BluetoothService$ConnectionManager;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/server/BluetoothService$ConnectionManager;->setA2dpAudioActive(Z)V

    goto/16 :goto_0

    .line 2398
    :cond_11
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 2404
    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mConnectionManager:Landroid/server/BluetoothService$ConnectionManager;
    invoke-static {v14}, Landroid/server/BluetoothService;->access$1500(Landroid/server/BluetoothService;)Landroid/server/BluetoothService$ConnectionManager;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/server/BluetoothService$ConnectionManager;->setA2dpAudioActive(Z)V

    goto/16 :goto_0

    .line 2406
    .end local v4           #audioDevices:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v9           #i:I
    :cond_13
    const-string v14, "BluetoothService"

    const-string v15, "BluetoothA2dp service not available"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2408
    :cond_14
    const-string v14, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17

    .line 2409
    const-string v14, "BluetoothService"

    const-string v15, "Received ACTION_CONNECTION_ACCESS_REPLY"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    const-string v14, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    .line 2411
    .local v7, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v7, :cond_0

    .line 2415
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;
    invoke-static {v14}, Landroid/server/BluetoothService;->access$1700(Landroid/server/BluetoothService;)Landroid/server/BluetoothEventLoop;

    move-result-object v14

    invoke-virtual {v14}, Landroid/server/BluetoothEventLoop;->getAuthorizationRequestData()Ljava/util/HashMap;

    move-result-object v14

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_15

    .line 2416
    const-string v14, "BluetoothService"

    const-string v15, "SAP authorization not in progress, ignoring this intent"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2420
    :cond_15
    const-string v14, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    const/4 v15, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_16

    .line 2423
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Landroid/server/BluetoothService;->sapAuthorize(Ljava/lang/String;Z)Z

    .line 2424
    const-string v14, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 2425
    const-string v14, "BluetoothService"

    const-string v15, "Setting trust state to true"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2426
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Landroid/server/BluetoothService;->setTrust(Ljava/lang/String;Z)Z

    goto/16 :goto_0

    .line 2429
    :cond_16
    const-string v14, "BluetoothService"

    const-string v15, "User did not accept the SIM access request"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2430
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/server/BluetoothService;->sapAuthorize(Ljava/lang/String;Z)Z

    goto/16 :goto_0

    .line 2433
    .end local v7           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_17
    const-string v14, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 2434
    const-string v14, "BluetoothService"

    const-string v15, "Received ACTION_ACL_DISCONNECTED"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2435
    const-string v14, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    .line 2437
    .restart local v7       #device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v7, :cond_18

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mGattDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v14}, Landroid/server/BluetoothService;->access$1800(Landroid/server/BluetoothService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v14

    if-nez v14, :cond_19

    .line 2438
    :cond_18
    const-string v14, "BluetoothService"

    const-string v15, "No device specified in intent ACL_DISCONNECTED, ignore."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2441
    :cond_19
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mGattDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v14}, Landroid/server/BluetoothService;->access$1800(Landroid/server/BluetoothService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->isGattConnected:Z
    invoke-static {v14}, Landroid/server/BluetoothService;->access$1900(Landroid/server/BluetoothService;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 2442
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v15, 0x0

    #setter for: Landroid/server/BluetoothService;->isGattConnected:Z
    invoke-static {v14, v15}, Landroid/server/BluetoothService;->access$1902(Landroid/server/BluetoothService;Z)Z

    .line 2443
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v15, 0x0

    #setter for: Landroid/server/BluetoothService;->mGattDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v14, v15}, Landroid/server/BluetoothService;->access$1802(Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 2444
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/16 v15, 0x8

    const/16 v16, 0x0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v7, v15, v0, v1}, Landroid/server/BluetoothService;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V

    goto/16 :goto_0
.end method
