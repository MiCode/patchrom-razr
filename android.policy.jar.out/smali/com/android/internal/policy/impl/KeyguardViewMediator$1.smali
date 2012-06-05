.class Lcom/android/internal/policy/impl/KeyguardViewMediator$1;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .locals 0
    .parameter

    .prologue
    .line 967
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 23
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 970
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 972
    .local v4, action:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 1060
    :cond_0
    :goto_0
    return-void

    .line 974
    :cond_1
    const-string v19, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 976
    const-string v19, "seq"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 978
    .local v14, sequence:I
    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$000()Z

    move-result v19

    if-eqz v19, :cond_2

    const-string v19, "KeyguardViewMediator"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "received DELAYED_KEYGUARD_ACTION with seq = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", mDelayedShowingSequence = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v21, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mDelayedShowingSequence:I
    invoke-static/range {v21 .. v21}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$100(Lcom/android/internal/policy/impl/KeyguardViewMediator;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 987
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mDelayedShowingSequence:I
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$100(Lcom/android/internal/policy/impl/KeyguardViewMediator;)I

    move-result v19

    move/from16 v0, v19

    if-ne v0, v14, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mRealPowerManager:Landroid/os/LocalPowerManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Landroid/os/LocalPowerManager;->isScreenOn()Z

    move-result v19

    if-nez v19, :cond_3

    .line 990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v19, v0

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    #setter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSuppressNextLockSound:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$202(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)Z

    .line 992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v19, v0

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$300(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    .line 993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v19, v0

    const-string v21, "willBeInSTOP"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v21

    #setter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mInSecurityTimeoutPeriod:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$402(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)Z

    .line 996
    :cond_3
    monitor-exit v20

    goto/16 :goto_0

    :catchall_0
    move-exception v19

    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v19

    .line 998
    .end local v14           #sequence:I
    :cond_4
    const-string v19, "com.android.internal.policy.impl.PhoneWindowManager.SECURITY_TIMEOUT"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 999
    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$000()Z

    move-result v19

    if-eqz v19, :cond_5

    const-string v19, "KeyguardViewMediator"

    const-string v20, "received SECURITY_TIMEOUT_ACTION"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mInSecurityTimeoutPeriod:Z
    invoke-static/range {v19 .. v20}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$402(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)Z

    .line 1001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$500(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Lcom/android/internal/policy/impl/KeyguardViewManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/policy/impl/KeyguardViewManager;->securityTimeoutOver()V

    goto/16 :goto_0

    .line 1003
    :cond_6
    const-string v19, "android.intent.action.PHONE_STATE"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v19, v0

    const-string v20, "state"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    #setter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;
    invoke-static/range {v19 .. v20}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$602(Lcom/android/internal/policy/impl/KeyguardViewMediator;Ljava/lang/String;)Ljava/lang/String;

    .line 1006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1007
    :try_start_1
    sget-object v19, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v21, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$600(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mScreenOn:Z
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$700(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Z

    move-result v19

    if-nez v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExternallyEnabled:Z
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$800(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 1015
    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$000()Z

    move-result v19

    if-eqz v19, :cond_7

    const-string v19, "KeyguardViewMediator"

    const-string v21, "screen is off and call ended, let\'s make sure the keyguard is showing"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$900(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1019
    .local v5, cr:Landroid/content/ContentResolver;
    const-string v19, "screen_off_timeout"

    const/16 v21, 0x7530

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v5, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    move/from16 v0, v19

    int-to-long v6, v0

    .line 1021
    .local v6, displayTimeout:J
    const-string v19, "lock_screen_lock_after_timeout"

    const/16 v21, 0x1388

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v5, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    move/from16 v0, v19

    int-to-long v8, v0

    .line 1024
    .local v8, lockAfterTimeout:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1000(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v19

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v10

    .line 1027
    .local v10, policyTimeout:J
    const-wide/16 v21, 0x0

    cmp-long v19, v10, v21

    if-lez v19, :cond_9

    .line 1028
    const-wide/16 v21, 0x0

    move-wide/from16 v0, v21

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 1029
    sub-long v21, v10, v6

    move-wide/from16 v0, v21

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v15

    .line 1033
    .local v15, timeout:J
    :goto_1
    const-wide/16 v21, 0x0

    cmp-long v19, v15, v21

    if-gtz v19, :cond_a

    .line 1034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    #setter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mInSecurityTimeoutPeriod:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$402(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)Z

    .line 1045
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v19, v0

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$300(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    .line 1047
    .end local v5           #cr:Landroid/content/ContentResolver;
    .end local v6           #displayTimeout:J
    .end local v8           #lockAfterTimeout:J
    .end local v10           #policyTimeout:J
    .end local v15           #timeout:J
    :cond_8
    monitor-exit v20

    goto/16 :goto_0

    :catchall_1
    move-exception v19

    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v19

    .line 1031
    .restart local v5       #cr:Landroid/content/ContentResolver;
    .restart local v6       #displayTimeout:J
    .restart local v8       #lockAfterTimeout:J
    .restart local v10       #policyTimeout:J
    :cond_9
    move-wide v15, v8

    .restart local v15       #timeout:J
    goto :goto_1

    .line 1036
    :cond_a
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v19, v0

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    #setter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mInSecurityTimeoutPeriod:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$402(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)Z

    .line 1037
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v21

    add-long v17, v21, v15

    .line 1038
    .local v17, when:J
    new-instance v12, Landroid/content/Intent;

    const-string v19, "com.android.internal.policy.impl.PhoneWindowManager.SECURITY_TIMEOUT"

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1039
    .local v12, securityIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$900(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/content/Context;

    move-result-object v19

    const/16 v21, 0x0

    const/high16 v22, 0x1000

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v12, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 1041
    .local v13, sender:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1100(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/app/AlarmManager;

    move-result-object v19

    const/16 v21, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v21

    move-wide/from16 v2, v17

    invoke-virtual {v0, v1, v2, v3, v13}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 1049
    .end local v5           #cr:Landroid/content/ContentResolver;
    .end local v6           #displayTimeout:J
    .end local v8           #lockAfterTimeout:J
    .end local v10           #policyTimeout:J
    .end local v12           #securityIntent:Landroid/content/Intent;
    .end local v13           #sender:Landroid/app/PendingIntent;
    .end local v15           #timeout:J
    .end local v17           #when:J
    :cond_b
    const-string v19, "com.motorola.internal.intent.SHOW_KEYGUARD_NOW"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 1050
    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$000()Z

    move-result v19

    if-eqz v19, :cond_c

    const-string v19, "KeyguardViewMediator"

    const-string v20, "SHOW_KEYGUARD_NOW_ACTION received"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    :cond_c
    invoke-static {}, Lcom/motorola/webtop/WebtopMode;->getInstance()Lcom/motorola/webtop/WebtopMode;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/motorola/webtop/WebtopMode;->isActive()Z

    move-result v19

    if-eqz v19, :cond_d

    .line 1053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked(I)V
    invoke-static/range {v19 .. v20}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1200(Lcom/android/internal/policy/impl/KeyguardViewMediator;I)V

    goto/16 :goto_0

    .line 1055
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v19, v0

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$300(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto/16 :goto_0
.end method
