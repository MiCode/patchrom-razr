.class Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$1;
.super Landroid/content/BroadcastReceiver;
.source "HeadsetButtonDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;)V
    .locals 0
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$1;->this$0:Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 241
    invoke-static {}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->access$400()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    invoke-static {}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->access$400()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 244
    :cond_0
    return-void
.end method
