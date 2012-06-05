.class Lcom/android/internal/policy/impl/KeyguardStatusViewManager$2;
.super Ljava/lang/Object;
.source "KeyguardStatusViewManager.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 878
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClockVisibilityChanged()V
    .locals 0

    .prologue
    .line 917
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .prologue
    .line 921
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 1
    .parameter "phoneState"

    .prologue
    .line 910
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iput p1, v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPhoneState:I

    .line 911
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateEmergencyCallButtonState(I)V
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1600(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;I)V

    .line 912
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 4
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 882
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #setter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingBatteryInfo:Z
    invoke-static {v1, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$502(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Z)Z

    .line 883
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #setter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPluggedIn:Z
    invoke-static {v1, p2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$602(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Z)Z

    .line 884
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #setter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mBatteryLevel:I
    invoke-static {v1, p3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$702(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;I)I

    .line 885
    new-instance v0, Llibcore/util/MutableInt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Llibcore/util/MutableInt;-><init>(I)V

    .line 886
    .local v0, tmpIcon:Llibcore/util/MutableInt;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    const/16 v2, 0xf

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getAltTextMessage(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;
    invoke-static {v3, v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$100(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Llibcore/util/MutableInt;)Ljava/lang/CharSequence;

    move-result-object v3

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V
    invoke-static {v1, v2, v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$800(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;ILjava/lang/CharSequence;)V

    .line 887
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 894
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #setter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$902(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 895
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #setter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSpn:Ljava/lang/CharSequence;
    invoke-static {v0, p2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1002(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 896
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateCarrierStateWithSimStatus(Lcom/android/internal/telephony/IccCard$State;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1100(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Lcom/android/internal/telephony/IccCard$State;)V

    .line 897
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 904
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1300(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    #setter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mRingerMode:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1202(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;I)I

    .line 905
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSlidingDoorView:Lcom/motorola/android/widget/SlidingDoor;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1400(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Lcom/motorola/android/widget/SlidingDoor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mRingerMode:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1200(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)I

    move-result v1

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->ringerModeChanged(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1500(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;I)V

    .line 907
    :cond_0
    return-void
.end method

.method public onTimeChanged()V
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->refreshDate()V

    .line 891
    return-void
.end method
