.class final Lcom/android/server/PowerManagerService$ShiftReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShiftReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 613
    iput-object p1, p0, Lcom/android/server/PowerManagerService$ShiftReceiver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 613
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$ShiftReceiver;-><init>(Lcom/android/server/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 616
    const-string v1, "led_shift_enabled"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 618
    .local v0, shiftled:Z
    if-eqz v0, :cond_0

    .line 619
    const-string v1, "PowerManagerService"

    const-string v2, "SHIFT with true "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    iget-object v1, p0, Lcom/android/server/PowerManagerService$ShiftReceiver;->this$0:Lcom/android/server/PowerManagerService;

    iput-boolean v3, v1, Lcom/android/server/PowerManagerService;->mShiftLight_enabled:Z

    .line 624
    iget-object v1, p0, Lcom/android/server/PowerManagerService$ShiftReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mShiftLight:Lcom/android/server/LightsService$Light;
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$1600(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v1

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 632
    :goto_0
    return-void

    .line 628
    :cond_0
    iget-object v1, p0, Lcom/android/server/PowerManagerService$ShiftReceiver;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/PowerManagerService;->mShiftLight_enabled:Z

    .line 630
    iget-object v1, p0, Lcom/android/server/PowerManagerService$ShiftReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mShiftLight:Lcom/android/server/LightsService$Light;
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$1600(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/LightsService$Light;->turnOff()V

    goto :goto_0
.end method
