.class final Lcom/android/server/PowerManagerService$DispThermalProtectionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DispThermalProtectionReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 653
    iput-object p1, p0, Lcom/android/server/PowerManagerService$DispThermalProtectionReceiver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 653
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$DispThermalProtectionReceiver;-><init>(Lcom/android/server/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v4, 0x64

    const/4 v6, 0x0

    .line 656
    const-string v5, "com.motorola.internal.intent.extra.DISPLAY_THERMAL_PROTECTION_ENABLED"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 659
    .local v2, enabled:Z
    if-eqz v2, :cond_2

    .line 660
    const-string v5, "com.motorola.internal.intent.extra.DISPLAY_THERMAL_PROTECTION_CAP"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 662
    .local v0, capPercentage:I
    if-le v0, v4, :cond_0

    move v0, v4

    .line 663
    :cond_0
    rsub-int/lit8 v4, v0, 0x64

    mul-int/lit16 v4, v4, 0xff

    div-int/lit8 v1, v4, 0x64

    .line 666
    .local v1, cappedBrightness:I
    const/16 v4, 0x14

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 670
    .end local v0           #capPercentage:I
    :goto_0
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Max brightness capped at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    iget-object v4, p0, Lcom/android/server/PowerManagerService$DispThermalProtectionReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$800(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v5

    monitor-enter v5

    .line 672
    :try_start_0
    iget-object v4, p0, Lcom/android/server/PowerManagerService$DispThermalProtectionReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #setter for: Lcom/android/server/PowerManagerService;->mMaxAllowedBrightness:I
    invoke-static {v4, v1}, Lcom/android/server/PowerManagerService;->access$1702(Lcom/android/server/PowerManagerService;I)I

    .line 674
    iget-object v4, p0, Lcom/android/server/PowerManagerService$DispThermalProtectionReceiver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-virtual {v4}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 675
    iget-object v4, p0, Lcom/android/server/PowerManagerService$DispThermalProtectionReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$1800(Lcom/android/server/PowerManagerService;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/PowerManagerService$DispThermalProtectionReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$1900(Lcom/android/server/PowerManagerService;)I

    move-result v4

    if-gez v4, :cond_3

    .line 678
    iget-object v4, p0, Lcom/android/server/PowerManagerService$DispThermalProtectionReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorValue:F
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$2000(Lcom/android/server/PowerManagerService;)F

    move-result v4

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_1

    .line 679
    iget-object v4, p0, Lcom/android/server/PowerManagerService$DispThermalProtectionReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorValue:F
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$2000(Lcom/android/server/PowerManagerService;)F

    move-result v4

    float-to-int v3, v4

    .line 680
    .local v3, value:I
    iget-object v4, p0, Lcom/android/server/PowerManagerService$DispThermalProtectionReceiver;->this$0:Lcom/android/server/PowerManagerService;

    const/high16 v6, -0x4080

    #setter for: Lcom/android/server/PowerManagerService;->mLightSensorValue:F
    invoke-static {v4, v6}, Lcom/android/server/PowerManagerService;->access$2002(Lcom/android/server/PowerManagerService;F)F

    .line 681
    iget-object v4, p0, Lcom/android/server/PowerManagerService$DispThermalProtectionReceiver;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v6, -0x1

    #setter for: Lcom/android/server/PowerManagerService;->mAutoBrightnessLevel:I
    invoke-static {v4, v6}, Lcom/android/server/PowerManagerService;->access$2102(Lcom/android/server/PowerManagerService;I)I

    .line 682
    iget-object v4, p0, Lcom/android/server/PowerManagerService$DispThermalProtectionReceiver;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v6, -0x1

    #setter for: Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I
    invoke-static {v4, v6}, Lcom/android/server/PowerManagerService;->access$2202(Lcom/android/server/PowerManagerService;I)I

    .line 683
    iget-object v4, p0, Lcom/android/server/PowerManagerService$DispThermalProtectionReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->lightSensorChangedLocked(I)V
    invoke-static {v4, v3}, Lcom/android/server/PowerManagerService;->access$2300(Lcom/android/server/PowerManagerService;I)V

    .line 689
    .end local v3           #value:I
    :cond_1
    :goto_1
    monitor-exit v5

    .line 690
    return-void

    .line 668
    .end local v1           #cappedBrightness:I
    :cond_2
    const/16 v1, 0xff

    .restart local v1       #cappedBrightness:I
    goto :goto_0

    .line 686
    :cond_3
    iget-object v4, p0, Lcom/android/server/PowerManagerService$DispThermalProtectionReceiver;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v6, p0, Lcom/android/server/PowerManagerService$DispThermalProtectionReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mPowerState:I
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$1200(Lcom/android/server/PowerManagerService;)I

    move-result v6

    const/4 v7, 0x1

    #calls: Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V
    invoke-static {v4, v6, v7}, Lcom/android/server/PowerManagerService;->access$2400(Lcom/android/server/PowerManagerService;II)V

    goto :goto_1

    .line 689
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
