.class Lcom/android/internal/policy/impl/PhoneWindowManager$13;
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
    .line 3775
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$13;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3777
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$13;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const-string v1, "state"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mAccessibilityZoomEnabled:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$602(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    .line 3778
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$13;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mAccessibilityZoomEnabled:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$600(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3779
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$13;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showPhoneZoom()V

    .line 3784
    :goto_0
    return-void

    .line 3781
    :cond_0
    const-string v0, "WindowManager"

    const-string v1, "onReceive() mAccessibilityZoomEnabled = false hidePhoneZoom()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3782
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$13;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->hidePhoneZoom()V

    goto :goto_0
.end method
