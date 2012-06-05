.class Lcom/android/internal/policy/impl/PhoneWindowManager$17;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter

    .prologue
    .line 3848
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$17;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3850
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3851
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v6, "com.motorola.internal.intent.action.LD_BRIGHTNESS_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3852
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$17;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->brightnessPanel:Landroid/view/BrightnessPanel;
    invoke-static {v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$800(Lcom/android/internal/policy/impl/PhoneWindowManager;)Landroid/view/BrightnessPanel;

    move-result-object v6

    if-nez v6, :cond_0

    .line 3853
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$17;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    new-instance v7, Landroid/view/BrightnessPanel;

    invoke-direct {v7, p1}, Landroid/view/BrightnessPanel;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->brightnessPanel:Landroid/view/BrightnessPanel;
    invoke-static {v6, v7}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$802(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/BrightnessPanel;)Landroid/view/BrightnessPanel;

    .line 3855
    :cond_0
    const-string v6, "brightness_level"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3861
    .local v1, brightnessLevel:I
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$17;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager;->readLapdockSettingBrightnessTime(Landroid/content/Context;)J
    invoke-static {v6, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$900(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)J

    move-result-wide v4

    .line 3862
    .local v4, lastBrightnessSettingTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3864
    .local v2, currentTime:J
    sub-long v6, v2, v4

    const-wide/16 v8, 0x3e8

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 3865
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$17;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->brightnessPanel:Landroid/view/BrightnessPanel;
    invoke-static {v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$800(Lcom/android/internal/policy/impl/PhoneWindowManager;)Landroid/view/BrightnessPanel;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7, v1}, Landroid/view/BrightnessPanel;->postBrightnessChanged(II)V

    .line 3869
    .end local v1           #brightnessLevel:I
    .end local v2           #currentTime:J
    .end local v4           #lastBrightnessSettingTime:J
    :cond_1
    return-void
.end method
