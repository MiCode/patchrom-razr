.class Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;
.super Landroid/view/WindowOrientationListener;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyOrientationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 619
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 620
    invoke-direct {p0, p2}, Landroid/view/WindowOrientationListener;-><init>(Landroid/content/Context;)V

    .line 621
    return-void
.end method


# virtual methods
.method public onProposedRotationChanged(I)V
    .locals 2
    .parameter "rotation"

    .prologue
    .line 626
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    const-string v0, "KPI-ORT-3"

    const-string v1, "PhoneWindowManager.onProposedRotationChanged start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    .line 632
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 633
    const-string v0, "KPI-ORT-7"

    const-string v1, "PhoneWindowManager.onProposedRotationChanged complete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_1
    return-void
.end method
