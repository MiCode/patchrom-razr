.class public abstract Lcom/motorola/Camera/View/Control/OnScreenController;
.super Landroid/widget/RelativeLayout;
.source "OnScreenController.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "MotoOnScreenControllerBasic"

.field protected static mDisplayHeight:I

.field protected static mDisplayOrientation:I

.field protected static mDisplayWidth:I


# instance fields
.field protected mMainContext:Landroid/content/Context;

.field protected mMainHandler:Landroid/os/Handler;

.field protected mRecordingIndicatorView:Landroid/widget/ImageView;

.field protected mRecordingTimeView:Landroid/widget/TextView;

.field protected mRightSet:Landroid/view/View;

.field protected mShowing:Z

.field protected mTagsSet:Landroid/view/View;

.field protected mThinBarImage:Landroid/view/View;

.field protected mZoomBar:Landroid/widget/ProgressBar;

.field protected mleftStatusSet:Landroid/view/View;

.field protected mshowRemainTime:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    sput v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mDisplayWidth:I

    .line 49
    sput v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mDisplayHeight:I

    .line 50
    sput v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mDisplayOrientation:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mShowing:Z

    .line 67
    iput-object p1, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mShowing:Z

    .line 61
    iput-object p1, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mShowing:Z

    .line 55
    iput-object p1, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    .line 56
    return-void
.end method


# virtual methods
.method public abstract animateThumbnail()V
.end method

.method public abstract changeCaptureResource(I)V
.end method

.method public closePopupDialog(ZZ)V
    .locals 0
    .parameter "animation"
    .parameter "showZoom"

    .prologue
    .line 177
    return-void
.end method

.method public closeSettingSecondaryDialog()V
    .locals 0

    .prologue
    .line 242
    return-void
.end method

.method public createSecondaryDialog(Landroid/widget/RelativeLayout;I)V
    .locals 0
    .parameter "view"
    .parameter "btnCenter"

    .prologue
    .line 233
    return-void
.end method

.method public abstract enableAllControls(Z)V
.end method

.method public abstract enableVideoSnapshotButton(Z)V
.end method

.method public getAvailableHeight()I
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method public getAvailableWidth()I
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public getBtnCenter()I
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public getBtnTop()I
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getRecordStopInProgress()Z
.end method

.method public getSettingSecondaryDialog()Z
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getThumbImageView()Landroid/widget/ImageButton;
.end method

.method public abstract getToolbarOpenState()Z
.end method

.method public abstract hideAnimatedThumbnail()V
.end method

.method public abstract hideCafStatus(Z)V
.end method

.method public abstract hideCaptureCluster()V
.end method

.method public abstract hideControllerPanel(Z)V
.end method

.method public abstract hideHandshake(ZZ)V
.end method

.method public abstract hideLocationTags(ZZ)V
.end method

.method public abstract hideRemainText()V
.end method

.method public abstract hideResolutionTextIcon(ZZ)V
.end method

.method public abstract hideRightSet()V
.end method

.method public abstract hideSceneDialog()V
.end method

.method public abstract hideStatusSet(Z)V
.end method

.method public abstract hideToolBar(Z)V
.end method

.method public abstract hideTopStatusSet()V
.end method

.method public abstract hideVStabImage()V
.end method

.method public abstract hideZoomControlSet(Z)V
.end method

.method public isPopupDialogOpen()Z
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public abstract needCenterVF()Z
.end method

.method public abstract onAutoTimerItemCanceled()V
.end method

.method public abstract onAutoTimerItemSelected()V
.end method

.method public abstract onTimelapseItemSelected()V
.end method

.method public abstract removePicsStill()V
.end method

.method public abstract resetFilter()V
.end method

.method public abstract rightSetFadeIn()V
.end method

.method public abstract rightSetFadeOut()V
.end method

.method public secondaryDialogClosed()V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method public secondaryDialogOpen()V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter "a"

    .prologue
    .line 229
    return-void
.end method

.method public abstract setCaptureClusterCameraMode(I)V
.end method

.method public abstract setCaptureResourceClickable(Z)V
.end method

.method public setDialogStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 193
    return-void
.end method

.method public setFocusBracket(Lcom/motorola/Camera/View/FocusView;)V
    .locals 0
    .parameter "focusView"

    .prologue
    .line 189
    return-void
.end method

.method public setMenuPress()V
    .locals 0

    .prologue
    .line 183
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 205
    return-void
.end method

.method public abstract setParams(Landroid/os/Handler;Lcom/motorola/Camera/FocusManager;)V
.end method

.method public abstract setRecordButton(Z)V
.end method

.method public setRecordingTime(JI)V
    .locals 2
    .parameter "seconds"
    .parameter "color"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 139
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/motorola/Camera/CameraGlobalTools;->format2Time(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    return-void
.end method

.method public setRecordingTime(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 131
    if-eqz p1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    :cond_0
    return-void
.end method

.method public setRecordingTime(Ljava/lang/String;I)V
    .locals 1
    .parameter "text"
    .parameter "color"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 145
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    return-void
.end method

.method public setShowRemainTime(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mshowRemainTime:Z

    .line 164
    return-void
.end method

.method public abstract setZoomBarMax(I)V
.end method

.method public abstract show()V
.end method

.method public abstract show(Z)V
.end method

.method public abstract showCafStatus(Z)V
.end method

.method public abstract showCameraCaptureControl(Z)V
.end method

.method public abstract showCaptureCluster()V
.end method

.method public abstract showHandshake(ZZ)V
.end method

.method public abstract showLocationTags(ZZ)V
.end method

.method public abstract showPhoneLocationDialog()V
.end method

.method public abstract showPicsStill(Landroid/graphics/Bitmap;III)V
.end method

.method public showRecordingIndicator(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 150
    if-eqz p1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mRecordingIndicatorView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mRecordingIndicatorView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showRecordingTime(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 123
    if-eqz p1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mRecordingTimeView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mRecordingTimeView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public abstract showRemainText()V
.end method

.method public showRemainTime()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mshowRemainTime:Z

    return v0
.end method

.method public abstract showResolutionTextIcon(Z)V
.end method

.method public abstract showRightSet()V
.end method

.method public abstract showTopStatusSet()V
.end method

.method public abstract showVStabImage()V
.end method

.method public abstract showZoomControlSet()V
.end method

.method public abstract thumbAnimation(Landroid/graphics/Bitmap;III)V
.end method

.method public abstract toggleMediaControlsVisibility()V
.end method

.method public abstract updateCafStatus(Lcom/motorola/Camera/CameraGlobalType$CAF_STATUS;Z)V
.end method

.method public abstract updateController()V
.end method

.method public abstract updateLocationText()V
.end method

.method public abstract updatePanoramaCaptureStatus(Z)V
.end method

.method public abstract updateStatusIcons()V
.end method

.method public abstract updateSwitchCameraUI(Z)V
.end method

.method public abstract updateThumbnail(Landroid/graphics/Bitmap;I)V
.end method

.method public abstract updateZoom(I)V
.end method
