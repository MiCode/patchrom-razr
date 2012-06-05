.class Lcom/android/internal/policy/impl/PhoneWindowManager$FmVolumeKey;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FmVolumeKey"
.end annotation


# instance fields
.field mKeycode:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;I)V
    .locals 0
    .parameter
    .parameter "keycode"

    .prologue
    .line 3794
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FmVolumeKey;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3795
    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FmVolumeKey;->mKeycode:I

    .line 3796
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 3799
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3800
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.motorola.fmradio.volume.change"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3801
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "type"

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FmVolumeKey;->mKeycode:I

    const/16 v4, 0x19

    if-ne v0, v4, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3803
    const-string v0, "keyguard"

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3804
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FmVolumeKey;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FmVolumeKey;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastDone:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FmVolumeKey;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v5, -0x1

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 3807
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return-void

    .line 3801
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method
