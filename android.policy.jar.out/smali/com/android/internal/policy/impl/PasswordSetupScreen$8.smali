.class Lcom/android/internal/policy/impl/PasswordSetupScreen$8;
.super Ljava/lang/Object;
.source "PasswordSetupScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PasswordSetupScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PasswordSetupScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PasswordSetupScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 799
    iput-object p1, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen$8;->this$0:Lcom/android/internal/policy/impl/PasswordSetupScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClockVisibilityChanged()V
    .locals 0

    .prologue
    .line 823
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .prologue
    .line 827
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 1
    .parameter "phoneState"

    .prologue
    .line 816
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen$8;->this$0:Lcom/android/internal/policy/impl/PasswordSetupScreen;

    iput p1, v0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPhoneState:I

    .line 817
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen$8;->this$0:Lcom/android/internal/policy/impl/PasswordSetupScreen;

    #calls: Lcom/android/internal/policy/impl/PasswordSetupScreen;->updateEmergencyCallButtonState(I)V
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->access$600(Lcom/android/internal/policy/impl/PasswordSetupScreen;I)V

    .line 818
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 0
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 803
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 809
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen$8;->this$0:Lcom/android/internal/policy/impl/PasswordSetupScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen$8;->this$0:Lcom/android/internal/policy/impl/PasswordSetupScreen;

    iget v1, v1, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPhoneState:I

    #calls: Lcom/android/internal/policy/impl/PasswordSetupScreen;->updateEmergencyCallButtonState(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->access$600(Lcom/android/internal/policy/impl/PasswordSetupScreen;I)V

    .line 810
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 813
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 806
    return-void
.end method
