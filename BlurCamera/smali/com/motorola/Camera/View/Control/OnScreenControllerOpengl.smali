.class public Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;
.super Lcom/motorola/Camera/View/Control/OnScreenController;
.source "OnScreenControllerOpengl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/motorola/Camera/DialogCallbackInterface;
.implements Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$18;,
        Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$ViewAnimationHandler;
    }
.end annotation


# static fields
.field private static final BRIGHTNESS:I = 0x6

.field private static final CLICK_TOUCH_THRESHOLD:I = 0x14

.field private static final DIALOG_HEIGHT_PADDING:I = 0x18

.field private static final DIALOG_MARGIN_PADDING:I = 0xe

.field public static final DefaultTimeout:I = 0x1388

.field private static final EFFECTS:I = 0x2

.field private static final FLASH:I = 0x3

.field private static final MODE:I = 0x4

.field public static final MSG_REQUESTRENDER:I = 0x3

.field public static final MSG_SCENECLICKED:I = 0x2

.field public static final MSG_SCENESCLOSED:I = 0x1

.field public static final MSG_SCENESELECTED:I = 0x0

.field private static final NOSETTING:I = 0x0

.field private static final SCENES:I = 0x1

.field private static final SETTINGS:I = 0x5

.field private static final TAG:Ljava/lang/String; = "MotoOnScreenControllerOpenGL"

.field private static final TAG1:Ljava/lang/String; = "MyMotoOnScreenControllerOpenGL"

.field public static final TAG_KPI:Ljava/lang/String; = "MotoCameraKPI"

.field private static final USER_THRESHOLD:I = 0xa

.field private static final ZOOMBAR_UPPER_PADDING:I = 0x50

.field private static final ZOOM_BAR_TOLERANCE:I = 0x14

.field private static mFilteredResources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected frameParams:Landroid/view/WindowManager$LayoutParams;

.field private mActivity:Landroid/app/Activity;

.field private mBrightnessButton:Landroid/widget/ImageView;

.field private mBtnBottom:I

.field private mBtnHeight:I

.field private mBtnLeft:I

.field private mBtnRight:I

.field private mBtnTop:I

.field private mBtnWidth:I

.field private mCAFStatus:Landroid/widget/ImageView;

.field private mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

.field private mClickTouchThreshold:I

.field private mCurrentEffect:I

.field private mCurrentFlash:I

.field private mCurrentMode:I

.field private mCurrentOrientation:I

.field private mCurrentScenes:I

.field private mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

.field private mDialog:Lcom/motorola/Camera/DialogSettingsView;

.field private mDialogCloseInProgress:Z

.field private mDialogHeightPadding:I

.field private mDialogMarginPadding:I

.field private mEffectsButton:Landroid/widget/ImageView;

.field private mFlashButton:Landroid/widget/ImageView;

.field private mFlashSet:Landroid/view/View;

.field private mFocusManager:Lcom/motorola/Camera/FocusManager;

.field private mFocusView:Lcom/motorola/Camera/View/FocusView;

.field private mGridDataArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/Camera/DialogGridData;",
            ">;"
        }
    .end annotation
.end field

.field private mHandShakeViewAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

.field private mHandshake:Landroid/widget/ImageView;

.field private mHandshakeViewAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

.field private mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;

.field mImageCaptureMode:Ljava/lang/Boolean;

.field private mLastBrightnessProgress:I

.field private mLastProgress:I

.field private mLocationTagsView:Landroid/widget/TextView;

.field private mLocationTagsViewAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

.field private mLocationTagsViewAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

.field private mLockRightSet:Z

.field private mModesButton:Landroid/widget/ImageView;

.field private mNewThumbAnimationImage:Landroid/widget/ImageView;

.field private mNub:Landroid/widget/LinearLayout;

.field private mOldChildView:Landroid/view/View;

.field private mOnScreenMenuShowing:Z

.field private mPanCapturing:Z

.field private mPrevButtonClicked:I

.field private mProgressBar:Lcom/motorola/Camera/DialogProgressBar;

.field private mRecording:Z

.field private mResolutionImgViewAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

.field private mResolutionImgViewAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

.field private mScale:F

.field private mScaleAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mScenesButton:Landroid/widget/ImageView;

.field mScreen:Landroid/widget/RelativeLayout;

.field private volatile mSecondaryDialogType:Z

.field private volatile mSettingSecondaryDialog:Z

.field private mSettingsButton:Landroid/widget/ImageView;

.field mSliderContainer:Landroid/widget/RelativeLayout;

.field private mSliderContainerBottom:I

.field private mSliderContainerHeight:I

.field private mSliderContainerLeft:I

.field private mSliderContainerRight:I

.field private mSliderContainerTop:I

.field private mSliderContainerWidth:I

.field private mSlidingDrawerClosed:Z

.field private mStatus:I

.field private mStatusResolutionTextIcon:Landroid/widget/TextView;

.field private mStillImageCaptureInProgress:Z

.field private mThumbnailAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

.field private mThumbnailAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

.field private mThumbnailAnimationPostShotListener:Landroid/view/animation/Animation$AnimationListener;

.field private mThumbnailImageView:Landroid/widget/ImageButton;

.field private mToolBarButtonClicked:Z

.field private mToolbarAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

.field private mToolbarAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

.field private mToolbarDialogAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mToolbarFaded:Z

.field private mToolbarHandle:Landroid/widget/ImageView;

.field private mToolbarHideAnimationInProgress:Z

.field private mToolbarShowAnimationInProgress:Z

.field private mTransitionBetweenDialogs:Z

.field private mTransitionDialogFadeInListener:Landroid/view/animation/Animation$AnimationListener;

.field private mTranslateIn:Landroid/view/animation/AnimationSet;

.field private mTranslateOut:Landroid/view/animation/AnimationSet;

.field private mUserThreshold:I

.field private mVStabImage:Landroid/widget/ImageView;

.field private mVideoCaptureInProgress:Z

.field private mVideoCaptureStopping:Z

.field private mViewGroup:Landroid/view/ViewGroup;

.field protected mWindowManager:Landroid/view/WindowManager;

.field private mX:F

.field private mY:F

.field private mZoomBarTolerance:I

.field private mZoomBarUpperPadding:I

.field private mZoombarAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

.field private mZoombarAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

.field private thumbAnimation:Landroid/view/animation/AnimationSet;

.field private trayDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFilteredResources:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 232
    invoke-direct {p0, p1}, Lcom/motorola/Camera/View/Control/OnScreenController;-><init>(Landroid/content/Context;)V

    .line 113
    iput v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 120
    iput-boolean v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLockRightSet:Z

    .line 123
    iput-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOnScreenMenuShowing:Z

    .line 143
    iput-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSlidingDrawerClosed:Z

    .line 185
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mImageCaptureMode:Ljava/lang/Boolean;

    .line 198
    iput-boolean v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mPanCapturing:Z

    .line 206
    iput-boolean v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mVideoCaptureStopping:Z

    .line 213
    iput v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCurrentOrientation:I

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->thumbAnimation:Landroid/view/animation/AnimationSet;

    .line 301
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$1;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$1;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailAnimationPostShotListener:Landroid/view/animation/Animation$AnimationListener;

    .line 1083
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$2;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$2;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mTransitionDialogFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2078
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$4;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$4;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mZoombarAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2126
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$5;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$5;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mZoombarAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2181
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$6;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$6;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2229
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$7;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$7;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2258
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$8;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$8;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScaleAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2333
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$9;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$9;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsViewAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2384
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$10;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$10;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsViewAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2423
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$11;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$11;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mResolutionImgViewAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2461
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$12;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$12;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mResolutionImgViewAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2758
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$13;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$13;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarDialogAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 3609
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$14;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$14;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    .line 3655
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$15;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$15;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    .line 3976
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$16;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$16;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mHandshakeViewAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    .line 4005
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$17;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$17;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mHandShakeViewAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    .line 233
    iput-object p1, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    .line 234
    invoke-static {p1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getInstance(Landroid/content/Context;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    .line 235
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 226
    invoke-direct {p0, p1, p2}, Lcom/motorola/Camera/View/Control/OnScreenController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    iput v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 120
    iput-boolean v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLockRightSet:Z

    .line 123
    iput-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOnScreenMenuShowing:Z

    .line 143
    iput-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSlidingDrawerClosed:Z

    .line 185
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mImageCaptureMode:Ljava/lang/Boolean;

    .line 198
    iput-boolean v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mPanCapturing:Z

    .line 206
    iput-boolean v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mVideoCaptureStopping:Z

    .line 213
    iput v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCurrentOrientation:I

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->thumbAnimation:Landroid/view/animation/AnimationSet;

    .line 301
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$1;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$1;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailAnimationPostShotListener:Landroid/view/animation/Animation$AnimationListener;

    .line 1083
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$2;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$2;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mTransitionDialogFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2078
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$4;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$4;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mZoombarAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2126
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$5;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$5;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mZoombarAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2181
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$6;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$6;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2229
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$7;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$7;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2258
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$8;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$8;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScaleAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2333
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$9;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$9;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsViewAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2384
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$10;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$10;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsViewAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2423
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$11;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$11;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mResolutionImgViewAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2461
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$12;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$12;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mResolutionImgViewAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2758
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$13;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$13;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarDialogAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 3609
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$14;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$14;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    .line 3655
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$15;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$15;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    .line 3976
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$16;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$16;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mHandshakeViewAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    .line 4005
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$17;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$17;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mHandShakeViewAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    .line 227
    iput-object p1, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    .line 228
    invoke-static {p1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getInstance(Landroid/content/Context;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    .line 229
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 220
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/Camera/View/Control/OnScreenController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 113
    iput v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 120
    iput-boolean v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLockRightSet:Z

    .line 123
    iput-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOnScreenMenuShowing:Z

    .line 143
    iput-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSlidingDrawerClosed:Z

    .line 185
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mImageCaptureMode:Ljava/lang/Boolean;

    .line 198
    iput-boolean v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mPanCapturing:Z

    .line 206
    iput-boolean v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mVideoCaptureStopping:Z

    .line 213
    iput v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCurrentOrientation:I

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->thumbAnimation:Landroid/view/animation/AnimationSet;

    .line 301
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$1;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$1;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailAnimationPostShotListener:Landroid/view/animation/Animation$AnimationListener;

    .line 1083
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$2;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$2;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mTransitionDialogFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2078
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$4;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$4;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mZoombarAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2126
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$5;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$5;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mZoombarAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2181
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$6;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$6;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2229
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$7;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$7;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2258
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$8;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$8;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScaleAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2333
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$9;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$9;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsViewAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2384
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$10;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$10;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsViewAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2423
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$11;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$11;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mResolutionImgViewAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2461
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$12;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$12;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mResolutionImgViewAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2758
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$13;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$13;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarDialogAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 3609
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$14;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$14;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    .line 3655
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$15;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$15;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    .line 3976
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$16;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$16;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mHandshakeViewAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    .line 4005
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$17;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$17;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mHandShakeViewAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    .line 221
    iput-object p1, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    .line 222
    invoke-static {p1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getInstance(Landroid/content/Context;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    .line 223
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mNewThumbAnimationImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mNewThumbAnimationImage:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mViewGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolBarButtonClicked:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolBarButtonClicked:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput p1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    return p1
.end method

.method static synthetic access$1202(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput p1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mPrevButtonClicked:I

    return p1
.end method

.method static synthetic access$1302(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarFaded:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)Lcom/motorola/Camera/CustomSlidingDrawer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarHideAnimationInProgress:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarShowAnimationInProgress:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mHandshake:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOldChildView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOldChildView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$300(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)Lcom/motorola/Camera/widget/ZoomControlBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$602(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;Landroid/view/animation/AnimationSet;)Landroid/view/animation/AnimationSet;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->thumbAnimation:Landroid/view/animation/AnimationSet;

    return-object p1
.end method

.method static synthetic access$700(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatusResolutionTextIcon:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$902(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialogCloseInProgress:Z

    return p1
.end method

.method private getLayoutData(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 2895
    const v1, 0x7f0d002c

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mNub:Landroid/widget/LinearLayout;

    .line 2898
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mNub:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    invoke-virtual {v2}, Lcom/motorola/Camera/CustomSlidingDrawer;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBtnLeft:I

    .line 2899
    iget v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBtnLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBtnRight:I

    .line 2900
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mNub:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    invoke-virtual {v2}, Lcom/motorola/Camera/CustomSlidingDrawer;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBtnTop:I

    .line 2901
    iget v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBtnTop:I

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBtnBottom:I

    .line 2902
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBtnWidth:I

    .line 2903
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBtnHeight:I

    .line 2904
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 2905
    const-string v1, "MotoOnScreenControllerOpenGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBtnLeft:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBtnLeft:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mBtnRight:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBtnRight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mBtnWidth:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBtnWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mBtnTop:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBtnTop:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mBtnBottom:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBtnBottom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mBtnHeight:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBtnHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2910
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainerWidth:I

    .line 2911
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v1

    iput v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainerLeft:I

    .line 2912
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getRight()I

    move-result v1

    iput v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainerRight:I

    .line 2913
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainerHeight:I

    .line 2914
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v1

    iput v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainerTop:I

    .line 2915
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v1

    iput v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainerBottom:I

    .line 2916
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    .line 2917
    const-string v1, "MotoOnScreenControllerOpenGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSliderContainerLeft:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainerLeft:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  :mSliderContainerRight"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainerRight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mSliderContainerWidth:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainerWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mSliderContainerHeight:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainerHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mSliderContainerTop:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainerTop:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mSliderContainerBottom:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainerBottom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2924
    :cond_1
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    .line 2925
    const-string v1, "MotoOnScreenControllerOpenGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "myDrawerWidth:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    invoke-virtual {v3}, Lcom/motorola/Camera/CustomSlidingDrawer;->getCompleteWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  :myDrawerHeight"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    invoke-virtual {v3}, Lcom/motorola/Camera/CustomSlidingDrawer;->getCompleteHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2930
    :cond_2
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_3

    .line 2932
    const-string v1, "MotoOnScreenControllerOpenGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "screen_left:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  :screen_right"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getRight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  screen_width:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  screen_height:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  screen_bottom:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  screen_top:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2940
    :cond_3
    const v1, 0x7f0d000b

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/View/CaptureCluster;

    .line 2941
    .local v0, captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_4

    .line 2942
    const-string v1, "MotoOnScreenControllerOpenGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "captureClusterLeft:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/motorola/Camera/View/CaptureCluster;->getLeft()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  :captureClusterRight"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/motorola/Camera/View/CaptureCluster;->getRight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  :captureClusterTop"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/motorola/Camera/View/CaptureCluster;->getTop()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2946
    :cond_4
    return-void
.end method

.method private initForMode()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1284
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 1285
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v4, "initForMode() - Enter"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    :cond_0
    const v1, 0x7f0d000b

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/View/CaptureCluster;

    .line 1288
    .local v0, captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentAppMode()I

    move-result v1

    if-nez v1, :cond_3

    .line 1291
    if-eqz v0, :cond_1

    .line 1292
    invoke-virtual {v0, v3}, Lcom/motorola/Camera/View/CaptureCluster;->setCameraMode(I)V

    .line 1302
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/CaptureCluster;->enableCamcorderSwitch(Z)V

    .line 1305
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v1

    if-nez v1, :cond_5

    :goto_2
    invoke-virtual {v0, v2}, Lcom/motorola/Camera/View/CaptureCluster;->enableVideoSnapshot(Z)V

    .line 1307
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    .line 1308
    const-string v1, "MotoOnScreenControllerOpenGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scenes effects mode app:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentAppMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v2, "initForMode() - Exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    :cond_2
    return-void

    .line 1294
    :cond_3
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentAppMode()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 1297
    if-eqz v0, :cond_1

    .line 1298
    invoke-virtual {v0, v2}, Lcom/motorola/Camera/View/CaptureCluster;->setCameraMode(I)V

    goto :goto_0

    :cond_4
    move v1, v3

    .line 1302
    goto :goto_1

    :cond_5
    move v2, v3

    .line 1305
    goto :goto_2
.end method

.method private positionDialog(Landroid/view/View;Landroid/view/View;III)V
    .locals 0
    .parameter "v"
    .parameter "childView"
    .parameter "passedWidth"
    .parameter "passedHeight"
    .parameter "viewElements"

    .prologue
    .line 3213
    invoke-direct/range {p0 .. p5}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->positionViewLand(Landroid/view/View;Landroid/view/View;III)V

    .line 3214
    return-void
.end method

.method private positionViewLand(Landroid/view/View;Landroid/view/View;III)V
    .locals 10
    .parameter "v"
    .parameter "childView"
    .parameter "passedWidth"
    .parameter "passedHeight"
    .parameter "viewElements"

    .prologue
    .line 2963
    const v7, 0x7f0d000b

    invoke-virtual {p0, v7}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/motorola/Camera/View/CaptureCluster;

    .line 2964
    .local v2, captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    iget-object v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v7

    iget-object v8, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialogMarginPadding:I

    sub-int v0, v7, v8

    .line 2965
    .local v0, availableHeight:I
    iget-object v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOldChildView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getRight()I

    move-result v8

    invoke-virtual {v2}, Lcom/motorola/Camera/View/CaptureCluster;->getRight()I

    move-result v9

    sub-int/2addr v8, v9

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialogMarginPadding:I

    div-int/lit8 v8, v8, 0x2

    sub-int v1, v7, v8

    .line 2968
    .local v1, availableWidth:I
    if-le v0, p4, :cond_0

    .line 2970
    move v0, p4

    .line 2974
    :cond_0
    if-gt p4, v0, :cond_1

    .line 2976
    iget v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialogMarginPadding:I

    add-int/2addr v7, p3

    if-le v1, v7, :cond_1

    .line 2978
    iget v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialogMarginPadding:I

    add-int v1, p3, v7

    .line 2982
    :cond_1
    const-string v7, "MyMotoOnScreenControllerOpenGL"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "availableWidth:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  availableHeight:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2983
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_2

    .line 2984
    const-string v7, "MotoOnScreenControllerOpenGL"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "availableHeight:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2985
    const-string v7, "MotoOnScreenControllerOpenGL"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "availableWidth:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2987
    :cond_2
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2994
    .local v5, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBtnLeft:I

    iget v8, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBtnWidth:I

    div-int/lit8 v8, v8, 0x2

    add-int v3, v7, v8

    .line 2995
    .local v3, center_button:I
    move v4, v3

    .line 2996
    .local v4, left_screen_to_center_button:I
    invoke-virtual {v2}, Lcom/motorola/Camera/View/CaptureCluster;->getLeft()I

    move-result v7

    sub-int v6, v7, v3

    .line 2998
    .local v6, right_screen_to_center_button:I
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_3

    .line 2999
    const-string v7, "MotoOnScreenControllerOpenGL"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "left_screen_to_center_button:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  :right_screen_to_center_button"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3004
    :cond_3
    div-int/lit8 v7, v1, 0x2

    if-le v4, v7, :cond_7

    div-int/lit8 v7, v1, 0x2

    if-le v6, v7, :cond_7

    .line 3007
    div-int/lit8 v7, v1, 0x2

    sub-int v7, v4, v7

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 3009
    if-gez p5, :cond_5

    .line 3011
    const v7, 0x7f0200d4

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3021
    :goto_0
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_4

    .line 3022
    const-string v7, "MotoOnScreenControllerOpenGL"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Good case:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3067
    :cond_4
    :goto_1
    iget-object v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v7

    if-le v7, v0, :cond_d

    .line 3069
    iget-object v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v7

    sub-int/2addr v7, v0

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 3076
    :goto_2
    iget-object v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v7, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3077
    iget-object v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v7, p2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3078
    return-void

    .line 3013
    :cond_5
    const/4 v7, 0x3

    if-le p5, v7, :cond_6

    .line 3015
    const v7, 0x7f0200d4

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 3019
    :cond_6
    const v7, 0x7f0200d4

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 3025
    :cond_7
    div-int/lit8 v7, v1, 0x2

    if-ge v4, v7, :cond_a

    .line 3027
    iget v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBtnLeft:I

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 3028
    if-gez p5, :cond_8

    .line 3030
    const v7, 0x7f0200d5

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3040
    :goto_3
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_4

    .line 3041
    const-string v7, "MotoOnScreenControllerOpenGL"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Left case:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3032
    :cond_8
    const/4 v7, 0x3

    if-le p5, v7, :cond_9

    .line 3034
    const v7, 0x7f0200d5

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 3038
    :cond_9
    const v7, 0x7f0200d5

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 3045
    :cond_a
    div-int/lit8 v7, v1, 0x2

    if-ge v6, v7, :cond_4

    .line 3047
    iget v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBtnRight:I

    sub-int/2addr v7, v1

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 3048
    if-gez p5, :cond_b

    .line 3050
    const v7, 0x7f0200d6

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3060
    :goto_4
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_4

    .line 3061
    const-string v7, "MotoOnScreenControllerOpenGL"

    const-string v8, "Right case"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3052
    :cond_b
    const/4 v7, 0x3

    if-le p5, v7, :cond_c

    .line 3054
    const v7, 0x7f0200d4

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    .line 3058
    :cond_c
    const v7, 0x7f0200d6

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    .line 3073
    :cond_d
    const/4 v7, 0x0

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_2
.end method

.method private positionViewPort(Landroid/view/View;Landroid/view/View;III)V
    .locals 10
    .parameter "v"
    .parameter "childView"
    .parameter "passedWidth"
    .parameter "passedHeight"
    .parameter "viewElements"

    .prologue
    .line 3096
    const v7, 0x7f0d000b

    invoke-virtual {p0, v7}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/motorola/Camera/View/CaptureCluster;

    .line 3098
    .local v3, captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    iget-object v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v7

    iget-object v8, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOldChildView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialogMarginPadding:I

    div-int/lit8 v8, v8, 0x2

    sub-int v1, v7, v8

    .line 3099
    .local v1, availableWidth:I
    iget-object v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v7

    iget v8, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialogMarginPadding:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v8

    sub-int v0, v7, v8

    .line 3102
    .local v0, availableHeight:I
    if-le v0, p4, :cond_0

    .line 3104
    move v0, p4

    .line 3108
    :cond_0
    if-gt p4, v0, :cond_1

    .line 3110
    iget v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialogMarginPadding:I

    add-int/2addr v7, p3

    if-le v1, v7, :cond_1

    .line 3112
    iget v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialogMarginPadding:I

    add-int v1, p3, v7

    .line 3116
    :cond_1
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_2

    .line 3117
    const-string v7, "MotoOnScreenControllerOpenGL"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "availableHeight:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3118
    const-string v7, "MotoOnScreenControllerOpenGL"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "availableWidth:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3121
    :cond_2
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3128
    .local v5, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBtnTop:I

    iget v8, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBtnHeight:I

    div-int/lit8 v8, v8, 0x2

    add-int v4, v7, v8

    .line 3129
    .local v4, center_button:I
    move v6, v4

    .line 3130
    .local v6, top_screen_to_center_button:I
    iget-object v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v7

    invoke-virtual {v3}, Lcom/motorola/Camera/View/CaptureCluster;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int v2, v7, v4

    .line 3132
    .local v2, bottom_screen_to_center_button:I
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_3

    .line 3133
    const-string v7, "MotoOnScreenControllerOpenGL"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "top_screen_to_center_button:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  :bottom_screen_to_center_button"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3138
    :cond_3
    div-int/lit8 v7, v0, 0x2

    if-le v6, v7, :cond_7

    div-int/lit8 v7, v0, 0x2

    if-le v2, v7, :cond_7

    .line 3141
    div-int/lit8 v7, v0, 0x2

    sub-int v7, v6, v7

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 3143
    if-gez p5, :cond_5

    .line 3145
    const v7, 0x7f0200d4

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3155
    :goto_0
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_4

    .line 3156
    const-string v7, "MotoOnScreenControllerOpenGL"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Good case:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3199
    :cond_4
    :goto_1
    iget-object v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getRight()I

    move-result v7

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 3200
    iget-object v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v7, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3201
    iget-object v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v7, p2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3206
    const/high16 v7, 0x42b4

    invoke-virtual {p2, v7}, Landroid/view/View;->setRotation(F)V

    .line 3208
    sub-int v7, v0, v1

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {p2, v7}, Landroid/view/View;->setTranslationX(F)V

    .line 3209
    return-void

    .line 3147
    :cond_5
    const/4 v7, 0x3

    if-le p5, v7, :cond_6

    .line 3149
    const v7, 0x7f0200d4

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 3153
    :cond_6
    const v7, 0x7f0200d4

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 3159
    :cond_7
    div-int/lit8 v7, v0, 0x2

    if-ge v6, v7, :cond_a

    .line 3161
    iget v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBtnTop:I

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 3162
    if-gez p5, :cond_8

    .line 3163
    const v7, 0x7f0200d5

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3172
    :goto_2
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_4

    .line 3173
    const-string v7, "MotoOnScreenControllerOpenGL"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "top case:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3165
    :cond_8
    const/4 v7, 0x3

    if-le p5, v7, :cond_9

    .line 3166
    const v7, 0x7f0200d5

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 3169
    :cond_9
    const v7, 0x7f0200d5

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 3177
    :cond_a
    div-int/lit8 v7, v0, 0x2

    if-ge v2, v7, :cond_4

    .line 3179
    iget v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBtnBottom:I

    sub-int/2addr v7, v0

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 3180
    if-gez p5, :cond_b

    .line 3182
    const v7, 0x7f0200d6

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3192
    :goto_3
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_4

    .line 3193
    const-string v7, "MotoOnScreenControllerOpenGL"

    const-string v8, "Bottom case"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3184
    :cond_b
    const/4 v7, 0x3

    if-le p5, v7, :cond_c

    .line 3186
    const v7, 0x7f0200d4

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 3190
    :cond_c
    const v7, 0x7f0200d6

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3
.end method

.method private processOnClick(Landroid/view/View;)V
    .locals 54
    .parameter "v"

    .prologue
    .line 494
    const/4 v13, 0x0

    .line 495
    .local v13, DialogView:Landroid/view/View;
    const/16 v50, 0x0

    .line 497
    .local v50, numElements:I
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_0

    .line 499
    const-string v5, "MotoOnScreenControllerOpenGL"

    const-string v6, "processOnClick enter"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mContext:Landroid/content/Context;

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v45

    .line 504
    .local v45, display:Landroid/view/Display;
    invoke-virtual/range {v45 .. v45}, Landroid/view/Display;->getRotation()I

    move-result v51

    .line 507
    .local v51, rotation:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v5

    add-int/lit8 v5, v5, -0xa

    const/high16 v6, -0x8000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v53

    .line 508
    .local v53, widthMeasureSpec:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0xa

    const/high16 v6, -0x8000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v49

    .line 509
    .local v49, heightMeasureSpec:I
    const/4 v15, 0x0

    .line 510
    .local v15, DialogViewHeight:I
    const/4 v14, 0x0

    .line 511
    .local v14, DialogViewWidth:I
    const/4 v10, -0x1

    .line 513
    .local v10, selectedPosition:I
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mShowing:Z

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mRecording:Z

    if-eqz v5, :cond_4

    .line 515
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mRecording:Z

    if-eqz v5, :cond_2

    .line 517
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolBarButtonClicked:Z

    :cond_2
    move/from16 v28, v50

    .line 1081
    .end local v50           #numElements:I
    .local v28, numElements:I
    :cond_3
    :goto_0
    return-void

    .line 522
    .end local v28           #numElements:I
    .restart local v50       #numElements:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    invoke-static {v5}, Lcom/motorola/Camera/CameraGlobalTools;->resetScreenTimeout(Landroid/os/Handler;)V

    .line 523
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    invoke-static {v5}, Lcom/motorola/Camera/CameraGlobalTools;->resetCameraTimeout(Landroid/os/Handler;)V

    .line 525
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :goto_1
    :pswitch_0
    move/from16 v28, v50

    .line 1015
    .end local v50           #numElements:I
    .restart local v28       #numElements:I
    :goto_2
    move-object/from16 v0, p0

    iget v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-eqz v5, :cond_c

    .line 1017
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mTransitionBetweenDialogs:Z

    if-nez v5, :cond_5

    .line 1019
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->hideZoomControlSet(Z)V

    .line 1022
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    if-eqz v5, :cond_6

    .line 1024
    const/16 v46, 0x0

    .line 1025
    .local v46, flag1:Z
    const/16 v47, 0x0

    .line 1026
    .local v47, flag2:Z
    const/16 v48, 0x0

    .line 1028
    .local v48, flag3:Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_53

    .line 1030
    const/16 v48, 0x1

    .line 1042
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v47

    move/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->hideThumbnail(ZZZ)V

    .line 1045
    .end local v46           #flag1:Z
    .end local v47           #flag2:Z
    .end local v48           #flag3:Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsView:Landroid/widget/TextView;

    if-eqz v5, :cond_8

    .line 1047
    const/16 v46, 0x0

    .line 1048
    .restart local v46       #flag1:Z
    const/16 v47, 0x0

    .line 1050
    .restart local v47       #flag2:Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_7

    .line 1052
    const/16 v46, 0x1

    .line 1054
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->hideLocationTags(ZZ)V

    .line 1057
    .end local v46           #flag1:Z
    .end local v47           #flag2:Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatusResolutionTextIcon:Landroid/widget/TextView;

    if-eqz v5, :cond_a

    .line 1058
    const/16 v46, 0x0

    .line 1059
    .restart local v46       #flag1:Z
    const/16 v47, 0x0

    .line 1061
    .restart local v47       #flag2:Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatusResolutionTextIcon:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_9

    .line 1062
    const/16 v46, 0x1

    .line 1064
    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->hideResolutionTextIcon(ZZ)V

    .line 1067
    .end local v46           #flag1:Z
    .end local v47           #flag2:Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mHandshake:Landroid/widget/ImageView;

    if-eqz v5, :cond_b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mHandshake:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_b

    .line 1068
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->hideHandshake(ZZ)V

    .line 1071
    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCAFStatus:Landroid/widget/ImageView;

    if-eqz v5, :cond_c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCAFStatus:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_c

    .line 1072
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->hideCafStatus(Z)V

    .line 1075
    :cond_c
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolBarButtonClicked:Z

    .line 1077
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_3

    .line 1079
    const-string v5, "MotoOnScreenControllerOpenGL"

    const-string v6, "processOnClick exit"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 530
    .end local v28           #numElements:I
    .restart local v50       #numElements:I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move/from16 v28, v50

    .line 531
    .end local v50           #numElements:I
    .restart local v28       #numElements:I
    goto/16 :goto_2

    .line 535
    .end local v28           #numElements:I
    .restart local v50       #numElements:I
    :pswitch_2
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_d

    .line 536
    const-string v5, "MotoOnScreenControllerOpenGL"

    const-string v6, "Settings button clicked"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 541
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v6, 0x76

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 542
    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showcontrollerElements()V

    .line 543
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 544
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mPrevButtonClicked:I

    move/from16 v28, v50

    .line 545
    .end local v50           #numElements:I
    .restart local v28       #numElements:I
    goto/16 :goto_2

    .line 548
    .end local v28           #numElements:I
    .restart local v50       #numElements:I
    :cond_e
    move-object/from16 v0, p0

    iget v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    const/4 v6, 0x5

    if-eq v5, v6, :cond_15

    .line 549
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSettingsButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getLayoutData(Landroid/view/View;)V

    .line 551
    new-instance v4, Lcom/motorola/Camera/DialogSettingsView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mViewGroup:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    const v9, 0x7f0b0008

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCurrentOrientation:I

    move-object/from16 v8, p0

    invoke-direct/range {v4 .. v12}, Lcom/motorola/Camera/DialogSettingsView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/ArrayList;Lcom/motorola/Camera/DialogCallbackInterface;Ljava/lang/String;ILandroid/app/Activity;I)V

    .line 554
    .local v4, effectsview:Lcom/motorola/Camera/DialogSettingsView;
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialog:Lcom/motorola/Camera/DialogSettingsView;

    .line 555
    invoke-virtual {v4}, Lcom/motorola/Camera/DialogSettingsView;->getView()Landroid/view/View;

    move-result-object v13

    .line 556
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOldChildView:Landroid/view/View;

    .line 558
    move/from16 v0, v53

    move/from16 v1, v49

    invoke-virtual {v13, v0, v1}, Landroid/view/View;->measure(II)V

    .line 559
    invoke-virtual {v4}, Lcom/motorola/Camera/DialogSettingsView;->getChildWidth()I

    move-result v14

    .line 560
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 562
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_f

    .line 563
    const-string v5, "MotoOnScreenControllerOpenGL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DialogViewHeight:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " DialogViewWidth:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_f
    if-eqz v51, :cond_10

    const/4 v5, 0x2

    move/from16 v0, v51

    if-ne v0, v5, :cond_13

    .line 569
    :cond_10
    const/16 v16, 0x5

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    invoke-direct/range {v11 .. v16}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->positionViewPort(Landroid/view/View;Landroid/view/View;III)V

    .line 576
    :goto_4
    move-object/from16 v0, p0

    iget v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-nez v5, :cond_12

    .line 578
    if-eqz v51, :cond_11

    const/4 v5, 0x2

    move/from16 v0, v51

    if-ne v0, v5, :cond_14

    .line 580
    :cond_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v13, v5}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationPortFadeIn(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    .line 588
    :cond_12
    :goto_5
    const/4 v5, 0x5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 589
    const v5, 0x7f0d002d

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mPrevButtonClicked:I

    move/from16 v28, v50

    .line 590
    .end local v50           #numElements:I
    .restart local v28       #numElements:I
    goto/16 :goto_2

    .line 573
    .end local v28           #numElements:I
    .restart local v50       #numElements:I
    :cond_13
    const/16 v16, 0x5

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    invoke-direct/range {v11 .. v16}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->positionViewLand(Landroid/view/View;Landroid/view/View;III)V

    goto :goto_4

    .line 584
    :cond_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v13, v5}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationLandFadeIn(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    goto :goto_5

    .line 593
    .end local v4           #effectsview:Lcom/motorola/Camera/DialogSettingsView;
    :cond_15
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 594
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mPrevButtonClicked:I

    move/from16 v28, v50

    .line 596
    .end local v50           #numElements:I
    .restart local v28       #numElements:I
    goto/16 :goto_2

    .line 598
    .end local v28           #numElements:I
    .restart local v50       #numElements:I
    :pswitch_3
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_16

    .line 599
    const-string v5, "MotoOnScreenControllerOpenGL"

    const-string v6, "Effects button clicked"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_16
    move-object/from16 v0, p0

    iget v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1f

    .line 605
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportedEffects()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_17

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportedEffects()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_18

    .line 607
    :cond_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v6, 0x80

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 608
    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showcontrollerElements()V

    .line 609
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 610
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mPrevButtonClicked:I

    move/from16 v28, v50

    .line 611
    .end local v50           #numElements:I
    .restart local v28       #numElements:I
    goto/16 :goto_2

    .line 613
    .end local v28           #numElements:I
    .restart local v50       #numElements:I
    :cond_18
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getEffectsDataEntries()Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mGridDataArray:Ljava/util/ArrayList;

    .line 614
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mEffectsButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getLayoutData(Landroid/view/View;)V

    .line 616
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentEffect()I

    move-result v10

    .line 617
    new-instance v4, Lcom/motorola/Camera/DialogGridView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mViewGroup:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mGridDataArray:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    const v9, 0x7f0b0007

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v8, p0

    invoke-direct/range {v4 .. v10}, Lcom/motorola/Camera/DialogGridView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/ArrayList;Lcom/motorola/Camera/DialogCallbackInterface;Ljava/lang/String;I)V

    .line 620
    .local v4, effectsview:Lcom/motorola/Camera/DialogGridView;
    invoke-virtual {v4}, Lcom/motorola/Camera/DialogGridView;->getView()Landroid/view/View;

    move-result-object v13

    .line 621
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOldChildView:Landroid/view/View;

    .line 623
    move/from16 v0, v53

    move/from16 v1, v49

    invoke-virtual {v13, v0, v1}, Landroid/view/View;->measure(II)V

    .line 624
    invoke-virtual {v4}, Lcom/motorola/Camera/DialogGridView;->getChildWidth()I

    move-result v14

    .line 625
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialogHeightPadding:I

    add-int/2addr v5, v6

    add-int/lit8 v15, v5, -0x5

    .line 627
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_19

    .line 628
    const-string v5, "MotoOnScreenControllerOpenGL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DialogViewHeight:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " DialogViewWidth:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const-string v5, "MotoOnScreenControllerOpenGL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GridSize"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mGridDataArray:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :cond_19
    if-eqz v51, :cond_1a

    const/4 v5, 0x2

    move/from16 v0, v51

    if-ne v0, v5, :cond_1d

    .line 635
    :cond_1a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mGridDataArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v16

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    invoke-direct/range {v11 .. v16}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->positionViewPort(Landroid/view/View;Landroid/view/View;III)V

    .line 641
    :goto_6
    move-object/from16 v0, p0

    iget v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-nez v5, :cond_1c

    .line 643
    if-eqz v51, :cond_1b

    const/4 v5, 0x2

    move/from16 v0, v51

    if-ne v0, v5, :cond_1e

    .line 645
    :cond_1b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v13, v5}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationPortFadeIn(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    .line 653
    :cond_1c
    :goto_7
    const/4 v5, 0x2

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 654
    const v5, 0x7f0d002e

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mPrevButtonClicked:I

    move/from16 v28, v50

    .line 655
    .end local v50           #numElements:I
    .restart local v28       #numElements:I
    goto/16 :goto_2

    .line 639
    .end local v28           #numElements:I
    .restart local v50       #numElements:I
    :cond_1d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mGridDataArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v16

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    invoke-direct/range {v11 .. v16}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->positionViewLand(Landroid/view/View;Landroid/view/View;III)V

    goto :goto_6

    .line 649
    :cond_1e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v13, v5}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationLandFadeIn(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    goto :goto_7

    .line 658
    .end local v4           #effectsview:Lcom/motorola/Camera/DialogGridView;
    :cond_1f
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 659
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mPrevButtonClicked:I

    move/from16 v28, v50

    .line 662
    .end local v50           #numElements:I
    .restart local v28       #numElements:I
    goto/16 :goto_2

    .line 665
    .end local v28           #numElements:I
    .restart local v50       #numElements:I
    :pswitch_4
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_20

    .line 666
    const-string v5, "MotoOnScreenControllerOpenGL"

    const-string v6, "Scenes button clicked"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :cond_20
    move-object/from16 v0, p0

    iget v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2b

    .line 672
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    monitor-enter v6

    .line 673
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportedScenes()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_21

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v5

    const/4 v7, 0x1

    if-eq v5, v7, :cond_21

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v5

    const/4 v7, 0x2

    if-eq v5, v7, :cond_21

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v5

    const/4 v7, 0x3

    if-eq v5, v7, :cond_21

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v5

    const/4 v7, 0x6

    if-eq v5, v7, :cond_21

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v5

    const/16 v7, 0xd

    if-eq v5, v7, :cond_21

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v5

    if-eqz v5, :cond_21

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isAudioScenesSupported()Z

    move-result v5

    if-eqz v5, :cond_22

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v5

    const/16 v7, 0x9

    if-eq v5, v7, :cond_21

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentAppMode()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_22

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 683
    :cond_21
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v7, 0x2b

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 684
    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showcontrollerElements()V

    .line 685
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 686
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mPrevButtonClicked:I

    .line 687
    monitor-exit v6

    move/from16 v28, v50

    .end local v50           #numElements:I
    .restart local v28       #numElements:I
    goto/16 :goto_2

    .line 689
    .end local v28           #numElements:I
    .restart local v50       #numElements:I
    :cond_22
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 691
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getScenesDataEntries()Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mGridDataArray:Ljava/util/ArrayList;

    .line 693
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScenesButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getLayoutData(Landroid/view/View;)V

    .line 695
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    const v6, 0x7f0b0006

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 696
    .local v21, titleString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isAudioScenesSupported()Z

    move-result v5

    if-eqz v5, :cond_23

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentAppMode()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_23

    .line 698
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    const v6, 0x7f0b00f7

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 700
    :cond_23
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v10

    .line 701
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_24

    .line 702
    const-string v5, "MotoOnScreenControllerOpenGL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Scenes button clicked:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_24
    new-instance v16, Lcom/motorola/Camera/DialogGridView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mViewGroup:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mGridDataArray:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v20, p0

    move/from16 v22, v10

    invoke-direct/range {v16 .. v22}, Lcom/motorola/Camera/DialogGridView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/ArrayList;Lcom/motorola/Camera/DialogCallbackInterface;Ljava/lang/String;I)V

    .line 707
    .local v16, scenesview:Lcom/motorola/Camera/DialogGridView;
    invoke-virtual/range {v16 .. v16}, Lcom/motorola/Camera/DialogGridView;->getView()Landroid/view/View;

    move-result-object v13

    .line 708
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOldChildView:Landroid/view/View;

    .line 710
    move/from16 v0, v53

    move/from16 v1, v49

    invoke-virtual {v13, v0, v1}, Landroid/view/View;->measure(II)V

    .line 711
    invoke-virtual/range {v16 .. v16}, Lcom/motorola/Camera/DialogGridView;->getChildWidth()I

    move-result v14

    .line 712
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialogHeightPadding:I

    add-int/2addr v5, v6

    add-int/lit8 v15, v5, -0x5

    .line 714
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_25

    .line 715
    const-string v5, "MotoOnScreenControllerOpenGL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DialogViewHeight:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " DialogViewWidth:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :cond_25
    if-eqz v51, :cond_26

    const/4 v5, 0x2

    move/from16 v0, v51

    if-ne v0, v5, :cond_29

    .line 721
    :cond_26
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mGridDataArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v27

    move-object/from16 v22, p0

    move-object/from16 v23, p1

    move-object/from16 v24, v13

    move/from16 v25, v14

    move/from16 v26, v15

    invoke-direct/range {v22 .. v27}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->positionViewPort(Landroid/view/View;Landroid/view/View;III)V

    .line 728
    :goto_8
    move-object/from16 v0, p0

    iget v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-nez v5, :cond_28

    .line 730
    if-eqz v51, :cond_27

    const/4 v5, 0x2

    move/from16 v0, v51

    if-ne v0, v5, :cond_2a

    .line 732
    :cond_27
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v13, v5}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationPortFadeIn(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    .line 740
    :cond_28
    :goto_9
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 741
    const v5, 0x7f0d002f

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mPrevButtonClicked:I

    move/from16 v28, v50

    .line 742
    .end local v50           #numElements:I
    .restart local v28       #numElements:I
    goto/16 :goto_2

    .line 689
    .end local v16           #scenesview:Lcom/motorola/Camera/DialogGridView;
    .end local v21           #titleString:Ljava/lang/String;
    .end local v28           #numElements:I
    .restart local v50       #numElements:I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 725
    .restart local v16       #scenesview:Lcom/motorola/Camera/DialogGridView;
    .restart local v21       #titleString:Ljava/lang/String;
    :cond_29
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mGridDataArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v27

    move-object/from16 v22, p0

    move-object/from16 v23, p1

    move-object/from16 v24, v13

    move/from16 v25, v14

    move/from16 v26, v15

    invoke-direct/range {v22 .. v27}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->positionViewLand(Landroid/view/View;Landroid/view/View;III)V

    goto :goto_8

    .line 736
    :cond_2a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v13, v5}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationLandFadeIn(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    goto :goto_9

    .line 745
    .end local v16           #scenesview:Lcom/motorola/Camera/DialogGridView;
    .end local v21           #titleString:Ljava/lang/String;
    :cond_2b
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 746
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mPrevButtonClicked:I

    move/from16 v28, v50

    .line 749
    .end local v50           #numElements:I
    .restart local v28       #numElements:I
    goto/16 :goto_2

    .line 752
    .end local v28           #numElements:I
    .restart local v50       #numElements:I
    :pswitch_5
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_2c

    .line 753
    const-string v5, "MotoOnScreenControllerOpenGL"

    const-string v6, "Modes button clicked"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    const-string v5, "MotoOnScreenControllerOpenGL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mStatus:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    :cond_2c
    move-object/from16 v0, p0

    iget v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_36

    .line 759
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getModesDataEntries()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_2d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 761
    :cond_2d
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_2e

    .line 762
    const-string v5, "MotoOnScreenControllerOpenGL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mStatus:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :cond_2e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v6, 0x77

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 765
    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showcontrollerElements()V

    .line 766
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 767
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mPrevButtonClicked:I

    move/from16 v28, v50

    .line 768
    .end local v50           #numElements:I
    .restart local v28       #numElements:I
    goto/16 :goto_2

    .line 771
    .end local v28           #numElements:I
    .restart local v50       #numElements:I
    :cond_2f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getModesDataEntries()Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mGridDataArray:Ljava/util/ArrayList;

    .line 772
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mModesButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getLayoutData(Landroid/view/View;)V

    .line 774
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getPositionFromMode(I)I

    move-result v10

    .line 776
    new-instance v22, Lcom/motorola/Camera/DialogGridView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mViewGroup:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mGridDataArray:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    const v6, 0x7f0b000c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v26, p0

    move/from16 v28, v10

    invoke-direct/range {v22 .. v28}, Lcom/motorola/Camera/DialogGridView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/ArrayList;Lcom/motorola/Camera/DialogCallbackInterface;Ljava/lang/String;I)V

    .line 779
    .local v22, modesview:Lcom/motorola/Camera/DialogGridView;
    invoke-virtual/range {v22 .. v22}, Lcom/motorola/Camera/DialogGridView;->getView()Landroid/view/View;

    move-result-object v13

    .line 780
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOldChildView:Landroid/view/View;

    .line 782
    move/from16 v0, v53

    move/from16 v1, v49

    invoke-virtual {v13, v0, v1}, Landroid/view/View;->measure(II)V

    .line 783
    invoke-virtual/range {v22 .. v22}, Lcom/motorola/Camera/DialogGridView;->getChildWidth()I

    move-result v14

    .line 784
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialogHeightPadding:I

    add-int v15, v5, v6

    .line 786
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_30

    .line 787
    const-string v5, "MotoOnScreenControllerOpenGL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DialogViewHeight:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " DialogViewWidth:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    :cond_30
    if-eqz v51, :cond_31

    const/4 v5, 0x2

    move/from16 v0, v51

    if-ne v0, v5, :cond_34

    .line 793
    :cond_31
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mGridDataArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v28

    move-object/from16 v23, p0

    move-object/from16 v24, p1

    move-object/from16 v25, v13

    move/from16 v26, v14

    move/from16 v27, v15

    invoke-direct/range {v23 .. v28}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->positionViewPort(Landroid/view/View;Landroid/view/View;III)V

    .line 800
    :goto_a
    move-object/from16 v0, p0

    iget v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-nez v5, :cond_33

    .line 802
    if-eqz v51, :cond_32

    const/4 v5, 0x2

    move/from16 v0, v51

    if-ne v0, v5, :cond_35

    .line 804
    :cond_32
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v13, v5}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationPortFadeIn(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    .line 812
    :cond_33
    :goto_b
    const/4 v5, 0x4

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 813
    const v5, 0x7f0d0030

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mPrevButtonClicked:I

    move/from16 v28, v50

    .line 814
    .end local v50           #numElements:I
    .restart local v28       #numElements:I
    goto/16 :goto_2

    .line 797
    .end local v28           #numElements:I
    .restart local v50       #numElements:I
    :cond_34
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mGridDataArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v28

    move-object/from16 v23, p0

    move-object/from16 v24, p1

    move-object/from16 v25, v13

    move/from16 v26, v14

    move/from16 v27, v15

    invoke-direct/range {v23 .. v28}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->positionViewLand(Landroid/view/View;Landroid/view/View;III)V

    goto :goto_a

    .line 808
    :cond_35
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v13, v5}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationLandFadeIn(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    goto :goto_b

    .line 817
    .end local v22           #modesview:Lcom/motorola/Camera/DialogGridView;
    :cond_36
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 818
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mPrevButtonClicked:I

    move/from16 v28, v50

    .line 821
    .end local v50           #numElements:I
    .restart local v28       #numElements:I
    goto/16 :goto_2

    .line 824
    .end local v28           #numElements:I
    .restart local v50       #numElements:I
    :pswitch_6
    const/16 v28, -0x1

    .line 825
    .end local v50           #numElements:I
    .restart local v28       #numElements:I
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_37

    .line 826
    const-string v5, "MotoOnScreenControllerOpenGL"

    const-string v6, "Brightness button clicked"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :cond_37
    move-object/from16 v0, p0

    iget v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    const/4 v6, 0x6

    if-eq v5, v6, :cond_43

    .line 831
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMaxExpCompensationIndex()I

    move-result v5

    if-nez v5, :cond_38

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMinExpCompensationIndex()I

    move-result v5

    if-eqz v5, :cond_39

    :cond_38
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v5

    const/4 v6, 0x7

    if-ne v5, v6, :cond_3b

    .line 834
    :cond_39
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_3a

    .line 835
    const-string v5, "MotoOnScreenControllerOpenGL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mStatus:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    :cond_3a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v6, 0x83

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 838
    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showcontrollerElements()V

    .line 839
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 840
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mPrevButtonClicked:I

    goto/16 :goto_2

    .line 844
    :cond_3b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBrightnessButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getLayoutData(Landroid/view/View;)V

    .line 845
    new-instance v42, Lcom/motorola/Camera/DialogProgressBar;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mViewGroup:Landroid/view/ViewGroup;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-direct {v0, v5, v6, v1}, Lcom/motorola/Camera/DialogProgressBar;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/motorola/Camera/DialogCallbackInterface;)V

    .line 847
    .local v42, brightnessview:Lcom/motorola/Camera/DialogProgressBar;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentExpValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLastBrightnessProgress:I

    .line 848
    move-object/from16 v0, p0

    iget v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLastBrightnessProgress:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMinExpCompensationIndex()I

    move-result v6

    sub-int v43, v5, v6

    .line 849
    .local v43, currentEV:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMaxExpCompensationIndex()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMinExpCompensationIndex()I

    move-result v6

    sub-int v52, v5, v6

    .line 850
    .local v52, scale:I
    mul-int/lit8 v5, v43, 0x64

    div-int v5, v5, v52

    int-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v41

    .line 852
    .local v41, actualProgress:I
    move-object/from16 v0, v42

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/DialogProgressBar;->setSliderProgress(I)V

    .line 853
    move-object/from16 v0, v42

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mProgressBar:Lcom/motorola/Camera/DialogProgressBar;

    .line 855
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_3c

    .line 856
    const-string v5, "MotoOnScreenControllerOpenGL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "progress bar is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mProgressBar:Lcom/motorola/Camera/DialogProgressBar;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    :cond_3c
    invoke-virtual/range {v42 .. v42}, Lcom/motorola/Camera/DialogProgressBar;->getView()Landroid/view/View;

    move-result-object v13

    .line 859
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOldChildView:Landroid/view/View;

    .line 861
    move/from16 v0, v53

    move/from16 v1, v49

    invoke-virtual {v13, v0, v1}, Landroid/view/View;->measure(II)V

    .line 862
    invoke-virtual/range {v42 .. v42}, Lcom/motorola/Camera/DialogProgressBar;->getChildWidth()I

    move-result v14

    .line 863
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 865
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_3d

    .line 866
    const-string v5, "MotoOnScreenControllerOpenGL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DialogViewHeight:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " DialogViewWidth:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    :cond_3d
    if-eqz v51, :cond_3e

    const/4 v5, 0x2

    move/from16 v0, v51

    if-ne v0, v5, :cond_41

    :cond_3e
    move-object/from16 v23, p0

    move-object/from16 v24, p1

    move-object/from16 v25, v13

    move/from16 v26, v14

    move/from16 v27, v15

    .line 872
    invoke-direct/range {v23 .. v28}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->positionViewPort(Landroid/view/View;Landroid/view/View;III)V

    .line 879
    :goto_c
    move-object/from16 v0, p0

    iget v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-nez v5, :cond_40

    .line 881
    if-eqz v51, :cond_3f

    const/4 v5, 0x2

    move/from16 v0, v51

    if-ne v0, v5, :cond_42

    .line 883
    :cond_3f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v13, v5}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationPortFadeIn(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    .line 891
    :cond_40
    :goto_d
    const/4 v5, 0x6

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 892
    const v5, 0x7f0d0031

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mPrevButtonClicked:I

    goto/16 :goto_2

    :cond_41
    move-object/from16 v23, p0

    move-object/from16 v24, p1

    move-object/from16 v25, v13

    move/from16 v26, v14

    move/from16 v27, v15

    .line 876
    invoke-direct/range {v23 .. v28}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->positionViewLand(Landroid/view/View;Landroid/view/View;III)V

    goto :goto_c

    .line 887
    :cond_42
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v13, v5}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationLandFadeIn(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    goto :goto_d

    .line 896
    .end local v41           #actualProgress:I
    .end local v42           #brightnessview:Lcom/motorola/Camera/DialogProgressBar;
    .end local v43           #currentEV:I
    .end local v52           #scale:I
    :cond_43
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 897
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mPrevButtonClicked:I

    goto/16 :goto_2

    .line 903
    .end local v28           #numElements:I
    .restart local v50       #numElements:I
    :pswitch_7
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_44

    .line 904
    const-string v5, "MotoOnScreenControllerOpenGL"

    const-string v6, "Flash button clicked"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    :cond_44
    move-object/from16 v0, p0

    iget v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_51

    .line 909
    const-string v34, "Flash"

    .line 910
    .local v34, gridDialogTitle:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v44

    .line 913
    .local v44, currentScene:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentAppMode()I

    move-result v5

    if-nez v5, :cond_4b

    .line 915
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_45

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_45

    const/4 v5, 0x2

    move/from16 v0, v44

    if-eq v0, v5, :cond_45

    const/4 v5, 0x4

    move/from16 v0, v44

    if-eq v0, v5, :cond_45

    const/4 v5, 0x5

    move/from16 v0, v44

    if-eq v0, v5, :cond_45

    const/4 v5, 0x3

    move/from16 v0, v44

    if-eq v0, v5, :cond_45

    const/4 v5, 0x6

    move/from16 v0, v44

    if-eq v0, v5, :cond_45

    const/4 v5, 0x7

    move/from16 v0, v44

    if-eq v0, v5, :cond_45

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v5

    if-nez v5, :cond_46

    .line 925
    :cond_45
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v6, 0x35

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 926
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 927
    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showcontrollerElements()V

    .line 928
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 929
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mPrevButtonClicked:I

    move/from16 v28, v50

    .line 930
    .end local v50           #numElements:I
    .restart local v28       #numElements:I
    goto/16 :goto_2

    .line 934
    .end local v28           #numElements:I
    .restart local v50       #numElements:I
    :cond_46
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    const v6, 0x7f0b000a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 953
    :goto_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getFlashDataEntries()Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mGridDataArray:Ljava/util/ArrayList;

    .line 955
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFlashButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getLayoutData(Landroid/view/View;)V

    .line 957
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentFlash()I

    move-result v10

    .line 958
    new-instance v29, Lcom/motorola/Camera/DialogGridView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mViewGroup:Landroid/view/ViewGroup;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mGridDataArray:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v33, p0

    move/from16 v35, v10

    invoke-direct/range {v29 .. v35}, Lcom/motorola/Camera/DialogGridView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/ArrayList;Lcom/motorola/Camera/DialogCallbackInterface;Ljava/lang/String;I)V

    .line 961
    .local v29, flashview:Lcom/motorola/Camera/DialogGridView;
    invoke-virtual/range {v29 .. v29}, Lcom/motorola/Camera/DialogGridView;->getView()Landroid/view/View;

    move-result-object v13

    .line 962
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOldChildView:Landroid/view/View;

    .line 964
    move/from16 v0, v53

    move/from16 v1, v49

    invoke-virtual {v13, v0, v1}, Landroid/view/View;->measure(II)V

    .line 965
    invoke-virtual/range {v29 .. v29}, Lcom/motorola/Camera/DialogGridView;->getChildWidth()I

    move-result v14

    .line 966
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialogHeightPadding:I

    add-int v15, v5, v6

    .line 968
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_47

    .line 969
    const-string v5, "MotoOnScreenControllerOpenGL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DialogViewHeight:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " DialogViewWidth:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    :cond_47
    if-eqz v51, :cond_48

    const/4 v5, 0x2

    move/from16 v0, v51

    if-ne v0, v5, :cond_4f

    .line 975
    :cond_48
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mGridDataArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v40

    move-object/from16 v35, p0

    move-object/from16 v36, p1

    move-object/from16 v37, v13

    move/from16 v38, v14

    move/from16 v39, v15

    invoke-direct/range {v35 .. v40}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->positionViewPort(Landroid/view/View;Landroid/view/View;III)V

    .line 982
    :goto_f
    move-object/from16 v0, p0

    iget v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-nez v5, :cond_4a

    .line 984
    if-eqz v51, :cond_49

    const/4 v5, 0x2

    move/from16 v0, v51

    if-ne v0, v5, :cond_50

    .line 986
    :cond_49
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v13, v5}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationPortFadeIn(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    .line 994
    :cond_4a
    :goto_10
    const/4 v5, 0x3

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 995
    const v5, 0x7f0d0032

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mPrevButtonClicked:I

    move/from16 v28, v50

    .line 996
    .end local v50           #numElements:I
    .restart local v28       #numElements:I
    goto/16 :goto_2

    .line 939
    .end local v28           #numElements:I
    .end local v29           #flashview:Lcom/motorola/Camera/DialogGridView;
    .restart local v50       #numElements:I
    :cond_4b
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->FLASH:Z

    if-eqz v5, :cond_4c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isTorchSupported()Z

    move-result v5

    if-eqz v5, :cond_4d

    :cond_4c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v5

    if-nez v5, :cond_4e

    .line 942
    :cond_4d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v6, 0x35

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 943
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 944
    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showcontrollerElements()V

    .line 945
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 946
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mPrevButtonClicked:I

    move/from16 v28, v50

    .line 947
    .end local v50           #numElements:I
    .restart local v28       #numElements:I
    goto/16 :goto_2

    .line 950
    .end local v28           #numElements:I
    .restart local v50       #numElements:I
    :cond_4e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    const v6, 0x7f0b0040

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v34

    goto/16 :goto_e

    .line 979
    .restart local v29       #flashview:Lcom/motorola/Camera/DialogGridView;
    :cond_4f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mGridDataArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v40

    move-object/from16 v35, p0

    move-object/from16 v36, p1

    move-object/from16 v37, v13

    move/from16 v38, v14

    move/from16 v39, v15

    invoke-direct/range {v35 .. v40}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->positionViewLand(Landroid/view/View;Landroid/view/View;III)V

    goto/16 :goto_f

    .line 990
    :cond_50
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v13, v5}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationLandFadeIn(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    goto :goto_10

    .line 999
    .end local v29           #flashview:Lcom/motorola/Camera/DialogGridView;
    .end local v34           #gridDialogTitle:Ljava/lang/String;
    .end local v44           #currentScene:I
    :cond_51
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 1000
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mPrevButtonClicked:I

    move/from16 v28, v50

    .line 1003
    .end local v50           #numElements:I
    .restart local v28       #numElements:I
    goto/16 :goto_2

    .line 1006
    .end local v28           #numElements:I
    .restart local v50       #numElements:I
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1007
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mshowRemainTime:Z

    if-nez v5, :cond_52

    .line 1008
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mshowRemainTime:Z

    .line 1012
    :goto_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 1010
    :cond_52
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mshowRemainTime:Z

    goto :goto_11

    .line 1032
    .end local v50           #numElements:I
    .restart local v28       #numElements:I
    .restart local v46       #flag1:Z
    .restart local v47       #flag2:Z
    .restart local v48       #flag3:Z
    :cond_53
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v5

    if-nez v5, :cond_54

    .line 1034
    const/16 v46, 0x1

    .line 1035
    const/16 v47, 0x1

    goto/16 :goto_3

    .line 1039
    :cond_54
    const/16 v47, 0x1

    goto/16 :goto_3

    .line 525
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d002d
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method private showcontrollerElements()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2871
    iget-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStillImageCaptureInProgress:Z

    if-nez v0, :cond_0

    .line 2873
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showZoomControlSet()V

    .line 2874
    iget-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mVideoCaptureInProgress:Z

    if-nez v0, :cond_0

    .line 2876
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showThumbnail()V

    .line 2877
    invoke-virtual {p0, v1, v2}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showLocationTags(ZZ)V

    .line 2878
    invoke-virtual {p0, v1}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showResolutionTextIcon(Z)V

    .line 2879
    invoke-virtual {p0, v1, v2}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showHandshake(ZZ)V

    .line 2882
    :cond_0
    return-void
.end method

.method private updateButtons()V
    .locals 1

    .prologue
    .line 1314
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->updateButtons(Z)V

    .line 1315
    return-void
.end method

.method private updateButtons(Z)V
    .locals 14
    .parameter "enable"

    .prologue
    const/4 v13, 0x5

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/high16 v9, 0x7600

    .line 1319
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_0

    .line 1320
    const-string v5, "MotoOnScreenControllerOpenGL"

    const-string v6, "updateButtons() - Enter"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    :cond_0
    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    monitor-enter v6

    .line 1325
    :try_start_0
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportedScenes()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1327
    :cond_1
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_2

    .line 1329
    const-string v5, "MotoOnScreenControllerOpenGL"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateButtons() currentScene= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    :cond_2
    const-string v5, "MotoOnScreenControllerOpenGL"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateButtons() currentScene= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getScenesDataEntries()Ljava/util/ArrayList;

    move-result-object v5

    iget-object v8, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/Camera/DialogGridData;

    invoke-virtual {v5}, Lcom/motorola/Camera/DialogGridData;->getResId()I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1339
    .local v1, draw:Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v5

    if-eq v5, v12, :cond_3

    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v5

    const/4 v7, 0x6

    if-ne v5, v7, :cond_13

    .line 1342
    :cond_3
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f020057

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1343
    const/high16 v5, 0x7600

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1377
    :goto_0
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScenesButton:Landroid/widget/ImageView;

    if-eqz v5, :cond_4

    .line 1378
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScenesButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1381
    :cond_4
    sget-object v5, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFilteredResources:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1385
    .end local v1           #draw:Landroid/graphics/drawable/Drawable;
    :cond_5
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mModesButton:Landroid/widget/ImageView;

    if-eqz v5, :cond_9

    .line 1388
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v5

    if-eq v5, v13, :cond_1c

    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v5

    const/16 v7, 0xd

    if-eq v5, v7, :cond_1c

    .line 1389
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    .line 1390
    .local v0, currentMode:I
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getModesValueEntries()[I

    move-result-object v3

    .line 1391
    .local v3, modesArray:[I
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getModesDataEntries()Ljava/util/ArrayList;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/Camera/DialogGridData;

    invoke-virtual {v5}, Lcom/motorola/Camera/DialogGridData;->getResId()I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1393
    .restart local v1       #draw:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .local v2, ind:I
    :goto_1
    array-length v5, v3

    if-ge v2, v5, :cond_6

    .line 1395
    aget v5, v3, v2

    if-ne v5, v0, :cond_1b

    .line 1397
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getModesDataEntries()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/Camera/DialogGridData;

    invoke-virtual {v5}, Lcom/motorola/Camera/DialogGridData;->getResId()I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1398
    if-eqz p1, :cond_1a

    .line 1399
    const/4 v5, 0x0

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1433
    .end local v0           #currentMode:I
    .end local v2           #ind:I
    .end local v3           #modesArray:[I
    :cond_6
    :goto_2
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getModesDataEntries()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v11, :cond_7

    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1435
    :cond_7
    const/high16 v5, 0x7600

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1437
    :cond_8
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mModesButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1441
    .end local v1           #draw:Landroid/graphics/drawable/Drawable;
    :cond_9
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getFlashModes()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v5

    if-nez v5, :cond_d

    .line 1443
    :cond_a
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentAppMode()I

    move-result v5

    if-ne v5, v11, :cond_25

    .line 1445
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->FLASH:Z

    if-eqz v5, :cond_22

    .line 1448
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentFlash()I

    move-result v5

    if-ne v5, v11, :cond_21

    .line 1449
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f020062

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1461
    .restart local v1       #draw:Landroid/graphics/drawable/Drawable;
    :goto_3
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v5

    if-nez v5, :cond_23

    .line 1462
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f020064

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1463
    if-eqz v1, :cond_b

    const/high16 v5, 0x7600

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1514
    :cond_b
    :goto_4
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFlashButton:Landroid/widget/ImageView;

    if-eqz v5, :cond_c

    .line 1515
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFlashButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1517
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFlashButton:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_c

    .line 1518
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFlashButton:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1519
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFlashButton:Landroid/widget/ImageView;

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1522
    :cond_c
    sget-object v5, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFilteredResources:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1526
    .end local v1           #draw:Landroid/graphics/drawable/Drawable;
    :cond_d
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportedEffects()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportedEffects()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, v11, :cond_2c

    .line 1528
    :cond_e
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f020068

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1529
    .restart local v1       #draw:Landroid/graphics/drawable/Drawable;
    const/high16 v5, 0x7600

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1553
    :goto_5
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mEffectsButton:Landroid/widget/ImageView;

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mEffectsButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1556
    :cond_f
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMinExpCompensationIndex()I

    move-result v5

    if-nez v5, :cond_10

    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMaxExpCompensationIndex()I

    move-result v5

    if-eqz v5, :cond_31

    :cond_10
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v5

    const/4 v7, 0x7

    if-eq v5, v7, :cond_31

    .line 1558
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f02005b

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1559
    if-eqz p1, :cond_30

    .line 1560
    const/4 v5, 0x0

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1571
    :goto_6
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBrightnessButton:Landroid/widget/ImageView;

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBrightnessButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1574
    :cond_11
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1575
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v5

    if-eqz v5, :cond_32

    .line 1576
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSettingsButton:Landroid/widget/ImageView;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v9, v6}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1585
    :goto_7
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_12

    .line 1586
    const-string v5, "MotoOnScreenControllerOpenGL"

    const-string v6, "updateButtons() - Exit"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    :cond_12
    return-void

    .line 1346
    :cond_13
    :try_start_1
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v5

    if-ne v5, v11, :cond_14

    .line 1348
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f020071

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1349
    const/high16 v5, 0x7600

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_0

    .line 1574
    .end local v1           #draw:Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 1352
    .restart local v1       #draw:Landroid/graphics/drawable/Drawable;
    :cond_14
    :try_start_2
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v5

    const/4 v7, 0x3

    if-ne v5, v7, :cond_15

    .line 1353
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f020065

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1354
    const/high16 v5, 0x7600

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_0

    .line 1356
    :cond_15
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentAppMode()I

    move-result v5

    if-ne v5, v11, :cond_17

    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isAudioScenesSupported()Z

    move-result v5

    if-eqz v5, :cond_17

    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v5

    const/16 v7, 0xd

    if-eq v5, v7, :cond_16

    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v5

    const/16 v7, 0x9

    if-eq v5, v7, :cond_16

    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v5

    if-nez v5, :cond_16

    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v5

    if-nez v5, :cond_17

    .line 1362
    :cond_16
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f020091

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1363
    const/high16 v5, 0x7600

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_0

    .line 1365
    :cond_17
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v5

    if-nez v5, :cond_18

    .line 1367
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f020057

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1368
    const/high16 v5, 0x7600

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_0

    .line 1370
    :cond_18
    if-nez p1, :cond_19

    .line 1371
    const/high16 v5, 0x7600

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_0

    .line 1374
    :cond_19
    const/4 v5, 0x0

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_0

    .line 1401
    .restart local v0       #currentMode:I
    .restart local v2       #ind:I
    .restart local v3       #modesArray:[I
    :cond_1a
    const/high16 v5, 0x7600

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_2

    .line 1393
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 1410
    .end local v0           #currentMode:I
    .end local v1           #draw:Landroid/graphics/drawable/Drawable;
    .end local v2           #ind:I
    .end local v3           #modesArray:[I
    :cond_1c
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v5

    if-ne v5, v13, :cond_1e

    .line 1411
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentAutoTimer()I

    move-result v5

    if-eqz v5, :cond_1d

    .line 1412
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    iget-object v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v7}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentAutoTimer()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getPositionFromAutoTimer(I)I

    move-result v2

    .line 1413
    .restart local v2       #ind:I
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v7}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getAutoTimerImgEntries()[I

    move-result-object v7

    aget v7, v7, v2

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1426
    .end local v2           #ind:I
    .restart local v1       #draw:Landroid/graphics/drawable/Drawable;
    :goto_8
    if-eqz p1, :cond_20

    .line 1427
    const/4 v5, 0x0

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_2

    .line 1415
    .end local v1           #draw:Landroid/graphics/drawable/Drawable;
    :cond_1d
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v7}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getAutoTimerImgEntries()[I

    move-result-object v7

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .restart local v1       #draw:Landroid/graphics/drawable/Drawable;
    goto :goto_8

    .line 1418
    .end local v1           #draw:Landroid/graphics/drawable/Drawable;
    :cond_1e
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    iget-object v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v7}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentTimeLapse()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getPositionFromTimeLapse(I)I

    move-result v2

    .line 1419
    .restart local v2       #ind:I
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentTimeLapse()I

    move-result v5

    if-eqz v5, :cond_1f

    if-ltz v2, :cond_1f

    .line 1420
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v7}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getTimelapseImgEntries()[I

    move-result-object v7

    aget v7, v7, v2

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .restart local v1       #draw:Landroid/graphics/drawable/Drawable;
    goto :goto_8

    .line 1422
    .end local v1           #draw:Landroid/graphics/drawable/Drawable;
    :cond_1f
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0200c5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .restart local v1       #draw:Landroid/graphics/drawable/Drawable;
    goto :goto_8

    .line 1429
    .end local v2           #ind:I
    :cond_20
    const/high16 v5, 0x7600

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_2

    .line 1452
    .end local v1           #draw:Landroid/graphics/drawable/Drawable;
    :cond_21
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f020064

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .restart local v1       #draw:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_3

    .line 1458
    .end local v1           #draw:Landroid/graphics/drawable/Drawable;
    :cond_22
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getFlashDataEntries()Ljava/util/ArrayList;

    move-result-object v5

    iget-object v8, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentFlash()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/Camera/DialogGridData;

    invoke-virtual {v5}, Lcom/motorola/Camera/DialogGridData;->getResId()I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .restart local v1       #draw:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_3

    .line 1466
    :cond_23
    if-eqz p1, :cond_24

    .line 1467
    if-eqz v1, :cond_b

    const/4 v5, 0x0

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_4

    .line 1469
    :cond_24
    if-eqz v1, :cond_b

    const/high16 v5, 0x7600

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_4

    .line 1476
    .end local v1           #draw:Landroid/graphics/drawable/Drawable;
    :cond_25
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v5

    if-eq v5, v12, :cond_26

    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v5

    if-eq v5, v11, :cond_26

    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v5

    if-nez v5, :cond_27

    .line 1480
    :cond_26
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f020060

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1481
    .restart local v1       #draw:Landroid/graphics/drawable/Drawable;
    const/high16 v5, 0x7600

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_4

    .line 1485
    .end local v1           #draw:Landroid/graphics/drawable/Drawable;
    :cond_27
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v4

    .line 1486
    .local v4, sceneMode:I
    const/4 v5, 0x3

    if-eq v4, v5, :cond_28

    if-eq v4, v12, :cond_28

    if-eq v4, v13, :cond_28

    const/4 v5, 0x6

    if-eq v4, v5, :cond_28

    const/4 v5, 0x7

    if-ne v4, v5, :cond_29

    .line 1492
    :cond_28
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f020060

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1493
    .restart local v1       #draw:Landroid/graphics/drawable/Drawable;
    const/high16 v5, 0x7600

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_4

    .line 1496
    .end local v1           #draw:Landroid/graphics/drawable/Drawable;
    :cond_29
    const/4 v5, 0x4

    if-ne v4, v5, :cond_2a

    .line 1498
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f020061

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1499
    .restart local v1       #draw:Landroid/graphics/drawable/Drawable;
    const/high16 v5, 0x7600

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_4

    .line 1503
    .end local v1           #draw:Landroid/graphics/drawable/Drawable;
    :cond_2a
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getFlashDataEntries()Ljava/util/ArrayList;

    move-result-object v5

    iget-object v8, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentFlash()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/Camera/DialogGridData;

    invoke-virtual {v5}, Lcom/motorola/Camera/DialogGridData;->getResId()I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1504
    .restart local v1       #draw:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_2b

    .line 1505
    const/4 v5, 0x0

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_4

    .line 1507
    :cond_2b
    const/high16 v5, 0x7600

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_4

    .line 1533
    .end local v1           #draw:Landroid/graphics/drawable/Drawable;
    .end local v4           #sceneMode:I
    :cond_2c
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentEffect()I

    move-result v5

    if-nez v5, :cond_2e

    .line 1535
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f020068

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1536
    .restart local v1       #draw:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_2d

    .line 1537
    const/4 v5, 0x0

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_5

    .line 1539
    :cond_2d
    const/high16 v5, 0x7600

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_5

    .line 1545
    .end local v1           #draw:Landroid/graphics/drawable/Drawable;
    :cond_2e
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f02005f

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1546
    .restart local v1       #draw:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_2f

    .line 1547
    const/4 v5, 0x0

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_5

    .line 1549
    :cond_2f
    const/high16 v5, 0x7600

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_5

    .line 1562
    :cond_30
    const/high16 v5, 0x7600

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_6

    .line 1567
    :cond_31
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f02005b

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1568
    const/high16 v5, 0x7600

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_6

    .line 1578
    :cond_32
    if-eqz p1, :cond_33

    .line 1579
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSettingsButton:Landroid/widget/ImageView;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v10, v6}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_7

    .line 1581
    :cond_33
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSettingsButton:Landroid/widget/ImageView;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v9, v6}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_7
.end method


# virtual methods
.method public animateThumbnail()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const v2, 0x3f8ccccd

    const/high16 v1, 0x3f80

    .line 2245
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getWidth()I

    move-result v3

    div-int/lit8 v7, v3, 0x2

    .line 2246
    .local v7, centerX:I
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getHeight()I

    move-result v3

    div-int/lit8 v8, v3, 0x2

    .line 2247
    .local v8, centerY:I
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->clearAnimation()V

    .line 2248
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    int-to-float v5, v7

    int-to-float v6, v8

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 2249
    .local v0, scale:Landroid/view/animation/ScaleAnimation;
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScaleAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2250
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 2251
    invoke-virtual {v0, v9}, Landroid/view/animation/ScaleAnimation;->setZAdjustment(I)V

    .line 2252
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->thumbAnimation:Landroid/view/animation/AnimationSet;

    .line 2253
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->thumbAnimation:Landroid/view/animation/AnimationSet;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2254
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->thumbAnimation:Landroid/view/animation/AnimationSet;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 2255
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->thumbAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2256
    return-void
.end method

.method public changeCaptureResource(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 2861
    return-void
.end method

.method public closePopupDialog(ZZ)V
    .locals 8
    .parameter "animation"
    .parameter "dialogsInProgress"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2692
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_0

    .line 2693
    const-string v3, "MotoOnScreenControllerOpenGL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "close pop dialog enter:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStillImageCaptureInProgress:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2696
    :cond_0
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 2698
    .local v1, display:Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 2699
    .local v2, rotation:I
    const/4 v0, 0x0

    .line 2701
    .local v0, a:Landroid/view/animation/Animation;
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOldChildView:Landroid/view/View;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOldChildView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    .line 2703
    iget-boolean v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialogCloseInProgress:Z

    if-nez v3, :cond_3

    .line 2705
    if-eqz p1, :cond_7

    .line 2707
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    if-eqz v3, :cond_2

    .line 2709
    if-eqz v2, :cond_1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 2711
    :cond_1
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOldChildView:Landroid/view/View;

    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationPortCloseFadeOut(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2717
    :goto_0
    if-eqz v0, :cond_2

    .line 2719
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarDialogAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2720
    iput-boolean v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialogCloseInProgress:Z

    .line 2730
    :cond_2
    :goto_1
    iput v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 2733
    :cond_3
    iget-boolean v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStillImageCaptureInProgress:Z

    if-nez v3, :cond_4

    if-eqz p2, :cond_4

    .line 2735
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showZoomControlSet()V

    .line 2736
    iget-boolean v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mVideoCaptureInProgress:Z

    if-nez v3, :cond_4

    .line 2738
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showThumbnail()V

    .line 2739
    invoke-virtual {p0, v6, v7}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showLocationTags(ZZ)V

    .line 2740
    invoke-virtual {p0, v6}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showResolutionTextIcon(Z)V

    .line 2741
    invoke-virtual {p0, v6, v7}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showHandshake(ZZ)V

    .line 2743
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    if-eqz v3, :cond_4

    .line 2744
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    invoke-virtual {v3}, Lcom/motorola/Camera/FocusManager;->shouldShowCafStatus()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2745
    invoke-virtual {p0, v6}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showCafStatus(Z)V

    .line 2753
    :cond_4
    :goto_2
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_5

    .line 2754
    const-string v3, "MotoOnScreenControllerOpenGL"

    const-string v4, "close pop dialog exit"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2756
    :cond_5
    return-void

    .line 2715
    :cond_6
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOldChildView:Landroid/view/View;

    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationLandCloseFadeOut(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 2726
    :cond_7
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOldChildView:Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2727
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mViewGroup:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOldChildView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2728
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOldChildView:Landroid/view/View;

    goto :goto_1

    .line 2747
    :cond_8
    invoke-virtual {p0, v6}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->hideCafStatus(Z)V

    goto :goto_2
.end method

.method public closeSettingSecondaryDialog()V
    .locals 1

    .prologue
    .line 3509
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialog:Lcom/motorola/Camera/DialogSettingsView;

    if-eqz v0, :cond_0

    .line 3511
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialog:Lcom/motorola/Camera/DialogSettingsView;

    invoke-virtual {v0}, Lcom/motorola/Camera/DialogSettingsView;->closeSettingSecondaryDialog()V

    .line 3513
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSettingSecondaryDialog:Z

    .line 3514
    return-void
.end method

.method public createSecondaryDialog(Landroid/widget/RelativeLayout;I)V
    .locals 7
    .parameter "view"
    .parameter "btnCenter"

    .prologue
    const/4 v6, 0x0

    .line 3907
    const/4 v2, 0x0

    .line 3908
    .local v2, layoutWidth:I
    const/4 v0, 0x0

    .line 3909
    .local v0, layoutHeight:I
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getBtnTop()I

    move-result v3

    .line 3911
    .local v3, mBtnTop:I
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getAvailableWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 3913
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    .line 3920
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getAvailableHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 3922
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    .line 3929
    :goto_1
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3932
    .local v1, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCurrentOrientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 3934
    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 3935
    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v5, v2, 0x2

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 3951
    :goto_2
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3952
    invoke-virtual {p1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3953
    return-void

    .line 3917
    .end local v1           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getAvailableWidth()I

    move-result v2

    goto :goto_0

    .line 3926
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getAvailableHeight()I

    move-result v0

    goto :goto_1

    .line 3939
    .restart local v1       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    const/high16 v4, 0x42b4

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setRotation(F)V

    .line 3941
    div-int/lit8 v4, v2, 0x2

    if-ge p2, v4, :cond_3

    .line 3943
    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_2

    .line 3947
    :cond_3
    div-int/lit8 v4, v2, 0x2

    sub-int v4, p2, v4

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_2
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 1720
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_0

    .line 1721
    const-string v5, "MotoOnScreenControllerOpenGL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchTouchEvent() - Enter:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mShowing:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1725
    .local v0, action:I
    iget-boolean v5, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mShowing:Z

    if-eqz v5, :cond_8

    .line 1727
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    invoke-static {v5}, Lcom/motorola/Camera/CameraGlobalTools;->resetScreenTimeout(Landroid/os/Handler;)V

    .line 1728
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    invoke-static {v5}, Lcom/motorola/Camera/CameraGlobalTools;->resetCameraTimeout(Landroid/os/Handler;)V

    .line 1729
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 1730
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 1732
    .local v3, y:F
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_1

    .line 1733
    const-string v5, "MotoOnScreenControllerOpenGL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "x:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  y:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    :cond_1
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isZoomSupported()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1737
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;

    invoke-virtual {v5}, Lcom/motorola/Camera/widget/ZoomControlBar;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    .line 1739
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    .line 1742
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getBottom()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mY:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    iget v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mY:F

    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;

    invoke-virtual {v6}, Lcom/motorola/Camera/widget/ZoomControlBar;->getTop()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    .line 1744
    iget v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mX:F

    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;

    invoke-virtual {v6}, Lcom/motorola/Camera/widget/ZoomControlBar;->getRight()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    .line 1810
    .end local v2           #x:F
    .end local v3           #y:F
    :cond_2
    :goto_0
    return v4

    .line 1751
    .restart local v2       #x:F
    .restart local v3       #y:F
    :cond_3
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    invoke-virtual {v5}, Lcom/motorola/Camera/CustomSlidingDrawer;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    .line 1754
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;

    invoke-virtual {v5}, Lcom/motorola/Camera/widget/ZoomControlBar;->getBottom()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mY:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_4

    iget v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mY:F

    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_4

    .line 1756
    iget v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mX:F

    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;

    invoke-virtual {v6}, Lcom/motorola/Camera/widget/ZoomControlBar;->getRight()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_2

    .line 1765
    :cond_4
    const/4 v1, 0x1

    .line 1766
    .local v1, touchedOutside:Z
    iget-boolean v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSettingSecondaryDialog:Z

    if-eqz v5, :cond_6

    .line 1768
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialog:Lcom/motorola/Camera/DialogSettingsView;

    if-eqz v5, :cond_6

    .line 1770
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialog:Lcom/motorola/Camera/DialogSettingsView;

    invoke-virtual {v5}, Lcom/motorola/Camera/DialogSettingsView;->getLeft()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, v5, v2

    if-gez v5, :cond_5

    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialog:Lcom/motorola/Camera/DialogSettingsView;

    invoke-virtual {v5}, Lcom/motorola/Camera/DialogSettingsView;->getRight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, v2, v5

    if-gtz v5, :cond_5

    .line 1772
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialog:Lcom/motorola/Camera/DialogSettingsView;

    invoke-virtual {v5}, Lcom/motorola/Camera/DialogSettingsView;->getTop()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, v5, v3

    if-gez v5, :cond_5

    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialog:Lcom/motorola/Camera/DialogSettingsView;

    invoke-virtual {v5}, Lcom/motorola/Camera/DialogSettingsView;->getRight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, v3, v5

    if-gtz v5, :cond_5

    .line 1774
    const/4 v1, 0x0

    .line 1778
    :cond_5
    if-eqz v1, :cond_6

    .line 1780
    if-ne v0, v4, :cond_2

    .line 1782
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialog:Lcom/motorola/Camera/DialogSettingsView;

    invoke-virtual {v5}, Lcom/motorola/Camera/DialogSettingsView;->closeSettingSecondaryDialog()V

    .line 1783
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSettingSecondaryDialog:Z

    goto :goto_0

    .line 1791
    :cond_6
    iget-boolean v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSecondaryDialogType:Z

    if-eqz v5, :cond_7

    .line 1793
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    invoke-virtual {v5}, Lcom/motorola/Camera/CustomSlidingDrawer;->getRight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, v2, v5

    if-gtz v5, :cond_7

    .line 1795
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    invoke-virtual {v5}, Lcom/motorola/Camera/CustomSlidingDrawer;->getBottom()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, v3, v5

    if-lez v5, :cond_2

    .line 1802
    :cond_7
    invoke-super {p0, p1}, Lcom/motorola/Camera/View/Control/OnScreenController;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 1808
    .end local v1           #touchedOutside:Z
    .end local v2           #x:F
    .end local v3           #y:F
    :cond_8
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_2

    const-string v5, "MotoOnScreenControllerOpenGL"

    const-string v6, "OnScreenController:dispatchTouchEvent: Event Consumed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public enableAllControls(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    const/4 v3, 0x0

    .line 3748
    const v1, 0x7f0d000b

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/View/CaptureCluster;

    .line 3749
    .local v0, captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    if-nez v0, :cond_0

    .line 3771
    :goto_0
    return-void

    .line 3752
    :cond_0
    invoke-virtual {v0, p1}, Lcom/motorola/Camera/View/CaptureCluster;->enableCamcorderSwitch(Z)V

    .line 3753
    invoke-virtual {v0, p1}, Lcom/motorola/Camera/View/CaptureCluster;->enableFrontCameraSwitch(Z)V

    .line 3754
    invoke-direct {p0, p1}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->updateButtons(Z)V

    .line 3756
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3757
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 3758
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScenesButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 3759
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mModesButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 3760
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFlashButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 3761
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mEffectsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 3762
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBrightnessButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 3763
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;

    invoke-virtual {v1, p1}, Lcom/motorola/Camera/widget/ZoomControlBar;->setEnabled(Z)V

    .line 3765
    if-eqz p1, :cond_1

    .line 3766
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v2}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 3768
    :cond_1
    invoke-virtual {p0, v3, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->closePopupDialog(ZZ)V

    .line 3769
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    const/high16 v2, 0x7600

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method public enableVideoSnapshotButton(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 3956
    const v1, 0x7f0d000b

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/View/CaptureCluster;

    .line 3957
    .local v0, captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    if-nez v0, :cond_0

    .line 3961
    :goto_0
    return-void

    .line 3959
    :cond_0
    invoke-virtual {v0, p1}, Lcom/motorola/Camera/View/CaptureCluster;->enableVideoSnapshot(Z)V

    goto :goto_0
.end method

.method public getAvailableHeight()I
    .locals 3

    .prologue
    .line 3853
    const/4 v0, 0x0

    .line 3855
    .local v0, allowedHeight:I
    iget v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCurrentOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 3857
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialogMarginPadding:I

    sub-int v0, v1, v2

    .line 3865
    :goto_0
    return v0

    .line 3861
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialogMarginPadding:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    sub-int v0, v1, v2

    goto :goto_0
.end method

.method public getAvailableWidth()I
    .locals 6

    .prologue
    .line 3830
    const v3, 0x7f0d000b

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/motorola/Camera/View/CaptureCluster;

    .line 3831
    .local v2, captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    const/4 v0, 0x0

    .line 3833
    .local v0, allowedWidth:I
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOldChildView:Landroid/view/View;

    if-nez v3, :cond_0

    move v1, v0

    .line 3848
    .end local v0           #allowedWidth:I
    .local v1, allowedWidth:I
    :goto_0
    return v1

    .line 3838
    .end local v1           #allowedWidth:I
    .restart local v0       #allowedWidth:I
    :cond_0
    iget v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCurrentOrientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 3840
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getRight()I

    move-result v4

    invoke-virtual {v2}, Lcom/motorola/Camera/View/CaptureCluster;->getRight()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialogMarginPadding:I

    div-int/lit8 v4, v4, 0x2

    sub-int v0, v3, v4

    :goto_1
    move v1, v0

    .line 3848
    .end local v0           #allowedWidth:I
    .restart local v1       #allowedWidth:I
    goto :goto_0

    .line 3845
    .end local v1           #allowedWidth:I
    .restart local v0       #allowedWidth:I
    :cond_1
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialogMarginPadding:I

    div-int/lit8 v4, v4, 0x2

    sub-int v0, v3, v4

    goto :goto_1
.end method

.method public getBtnCenter()I
    .locals 3

    .prologue
    .line 3885
    const/4 v0, 0x0

    .line 3887
    .local v0, btnCenter:I
    iget v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCurrentOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 3889
    iget v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBtnLeft:I

    iget v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBtnRight:I

    add-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 3896
    :goto_0
    return v0

    .line 3893
    :cond_0
    iget v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBtnTop:I

    iget v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBtnWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    goto :goto_0
.end method

.method public getBtnTop()I
    .locals 1

    .prologue
    .line 3871
    const/4 v0, 0x0

    .line 3880
    .local v0, btnTop:I
    return v0
.end method

.method public getRecordStopInProgress()Z
    .locals 3

    .prologue
    .line 3717
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 3718
    const-string v0, "MotoOnScreenControllerOpenGL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRecordStopInProgress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mVideoCaptureStopping:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3720
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mVideoCaptureStopping:Z

    return v0
.end method

.method public getSettingSecondaryDialog()Z
    .locals 1

    .prologue
    .line 3504
    iget-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSettingSecondaryDialog:Z

    return v0
.end method

.method public getThumbImageView()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getToolbarOpenState()Z
    .locals 1

    .prologue
    .line 3785
    iget-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSlidingDrawerClosed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideAnimatedThumbnail()V
    .locals 0

    .prologue
    .line 322
    return-void
.end method

.method public hideCafStatus(Z)V
    .locals 4
    .parameter "anim"

    .prologue
    const/4 v3, 0x4

    .line 4057
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCAFStatus:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 4068
    :goto_0
    return-void

    .line 4060
    :cond_0
    if-eqz p1, :cond_1

    .line 4061
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCAFStatus:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationThumbFadeOut(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 4062
    .local v0, a:Landroid/view/animation/Animation;
    new-instance v1, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$ViewAnimationHandler;

    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCAFStatus:Landroid/widget/ImageView;

    invoke-direct {v1, p0, v2, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$ViewAnimationHandler;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 4065
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_1
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCAFStatus:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 4066
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCAFStatus:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideCaptureCluster()V
    .locals 2

    .prologue
    .line 3725
    const v1, 0x7f0d000b

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/View/CaptureCluster;

    .line 3726
    .local v0, captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/CaptureCluster;->setVisibility(I)V

    .line 3727
    return-void
.end method

.method public hideControllerPanel(Z)V
    .locals 3
    .parameter "needsave"

    .prologue
    .line 2545
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 2546
    const-string v0, "MotoOnScreenControllerOpenGL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShowing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2548
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mShowing:Z

    if-eqz v0, :cond_1

    .line 2550
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mShowing:Z

    .line 2553
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2554
    return-void
.end method

.method public hideFocusBrackets()V
    .locals 2

    .prologue
    .line 2475
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFocusView:Lcom/motorola/Camera/View/FocusView;

    if-eqz v0, :cond_0

    .line 2476
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFocusView:Lcom/motorola/Camera/View/FocusView;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/FocusView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2477
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFocusView:Lcom/motorola/Camera/View/FocusView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/FocusView;->setVisibility(I)V

    .line 2479
    :cond_0
    return-void
.end method

.method public hideHandshake(ZZ)V
    .locals 4
    .parameter "anim"
    .parameter "gone"

    .prologue
    const/16 v3, 0x8

    .line 3990
    if-eqz p2, :cond_2

    .line 3991
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v2, "handshake visiblity"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3992
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mHandshake:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4001
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v2, "hide handshake exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4002
    :cond_1
    return-void

    .line 3993
    :cond_2
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mHandshake:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 3994
    if-eqz p1, :cond_3

    .line 3995
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mHandshake:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationThumbFadeOut(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 3996
    .local v0, a:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mHandShakeViewAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 3998
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_3
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mHandshake:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideLocationTags(ZZ)V
    .locals 3
    .parameter "animation"
    .parameter "setGone"

    .prologue
    .line 2309
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 2310
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v2, "hide location enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2313
    :cond_0
    if-eqz p2, :cond_3

    .line 2314
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2328
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    .line 2329
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v2, "hide location exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2331
    :cond_2
    return-void

    .line 2316
    :cond_3
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 2317
    if-eqz p1, :cond_4

    .line 2319
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationThumbFadeOut(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2320
    .local v0, a:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsViewAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 2324
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_4
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsView:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideRemainText()V
    .locals 0

    .prologue
    .line 2649
    return-void
.end method

.method public hideResolutionTextIcon(ZZ)V
    .locals 4
    .parameter "animation"
    .parameter "setGone"

    .prologue
    const/4 v3, 0x4

    .line 2437
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 2438
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v2, "hide resolution image enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2440
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentAppMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2441
    if-eqz p2, :cond_3

    .line 2442
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatusResolutionTextIcon:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2456
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    .line 2457
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v2, "hide resolution image exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    :cond_2
    return-void

    .line 2444
    :cond_3
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatusResolutionTextIcon:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 2445
    if-eqz p1, :cond_4

    .line 2446
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatusResolutionTextIcon:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationThumbFadeOut(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2447
    .local v0, a:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mResolutionImgViewAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 2450
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_4
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatusResolutionTextIcon:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideRightSet()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2620
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 2621
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v2, "hideRightSet"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2624
    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mImageCaptureMode:Ljava/lang/Boolean;

    .line 2627
    invoke-virtual {p0, v4, v4, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->hideThumbnail(ZZZ)V

    .line 2628
    const v1, 0x7f0d000b

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/View/CaptureCluster;

    .line 2629
    .local v0, captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    if-eqz v0, :cond_1

    .line 2630
    iget-boolean v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mVideoCaptureInProgress:Z

    if-nez v1, :cond_1

    .line 2631
    invoke-virtual {v0, v3}, Lcom/motorola/Camera/View/CaptureCluster;->setCleanView(Z)V

    .line 2633
    :cond_1
    return-void
.end method

.method public hideSceneDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2495
    iget v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2497
    :cond_0
    const-string v0, "MotoOnScreenControllerOpenGL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hidescenedialog :: ENTER - mstatus is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2500
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mleftStatusSet:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2503
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScenesButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 2504
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScenesButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 2506
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mEffectsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 2508
    iput v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 2510
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2511
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->rightSetFadeOut()V

    .line 2513
    :cond_2
    return-void
.end method

.method public hideStatusSet(Z)V
    .locals 1
    .parameter "save"

    .prologue
    .line 1815
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->hideStatusSet(ZZ)V

    .line 1816
    return-void
.end method

.method public hideStatusSet(ZZ)V
    .locals 6
    .parameter "save"
    .parameter "scenesAnim"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 1820
    iget v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1822
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFlashSet:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1823
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFlashSet:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1824
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFlashSet:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1826
    :cond_0
    if-eqz p1, :cond_1

    .line 1828
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    iget v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCurrentFlash:I

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentFlash(I)V

    .line 1858
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->updateController()V

    .line 1861
    if-eqz p1, :cond_2

    .line 1862
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1864
    :cond_2
    iput v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 1866
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1867
    return-void

    .line 1831
    :cond_3
    iget v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-eq v0, v4, :cond_4

    iget v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-eq v0, v5, :cond_4

    iget v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-ne v0, v3, :cond_1

    .line 1835
    :cond_4
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mleftStatusSet:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1838
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScenesButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 1839
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScenesButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1841
    :cond_5
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mEffectsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1843
    if-eqz p1, :cond_1

    .line 1845
    iget v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-ne v0, v4, :cond_6

    .line 1846
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    iget v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCurrentScenes:I

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentScene(I)V

    goto :goto_0

    .line 1848
    :cond_6
    iget v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-ne v0, v5, :cond_7

    .line 1849
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    iget v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCurrentEffect:I

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentEffect(I)V

    goto :goto_0

    .line 1851
    :cond_7
    iget v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-ne v0, v3, :cond_1

    .line 1852
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    iget v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCurrentMode:I

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentMode(I)V

    goto :goto_0
.end method

.method public hideThumbnail(ZZZ)V
    .locals 5
    .parameter "animation"
    .parameter "setInvisible"
    .parameter "setGone"

    .prologue
    const/4 v4, 0x4

    .line 2153
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 2154
    const-string v1, "MotoOnScreenControllerOpenGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hide thumbnail enter:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p3, :cond_4

    .line 2158
    :cond_1
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2176
    :cond_2
    :goto_0
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_3

    .line 2177
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v2, "hide thumbnail exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    :cond_3
    return-void

    .line 2160
    :cond_4
    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v1

    if-eq v1, v4, :cond_2

    .line 2162
    if-eqz p1, :cond_5

    .line 2164
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 2166
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationThumbFadeOut(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2167
    .local v0, a:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 2172
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_5
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideToolBar(Z)V
    .locals 5
    .parameter "fade"

    .prologue
    const/4 v4, 0x0

    .line 3581
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 3583
    const-string v1, "MotoOnScreenControllerOpenGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hideToolBar enter:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarHideAnimationInProgress:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3584
    const-string v1, "MotoOnScreenControllerOpenGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hideToolBar enter:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    invoke-virtual {v3}, Lcom/motorola/Camera/CustomSlidingDrawer;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3587
    :cond_0
    invoke-virtual {p0, v4, v4}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->closePopupDialog(ZZ)V

    .line 3588
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    invoke-virtual {v1}, Lcom/motorola/Camera/CustomSlidingDrawer;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 3590
    if-eqz p1, :cond_3

    .line 3592
    iget-boolean v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarHideAnimationInProgress:Z

    if-nez v1, :cond_1

    .line 3594
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarHideAnimationInProgress:Z

    .line 3595
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationThumbFadeOut(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 3596
    .local v0, a:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3605
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    .line 3606
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v2, "hideToolBar exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3607
    :cond_2
    return-void

    .line 3601
    :cond_3
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/CustomSlidingDrawer;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideTopStatusSet()V
    .locals 0

    .prologue
    .line 2659
    return-void
.end method

.method public hideVStabImage()V
    .locals 2

    .prologue
    .line 2280
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 2281
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v1, "hide vstab image"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2283
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mVStabImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 2284
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mVStabImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2286
    :cond_1
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    .line 2287
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v1, "hide vstab image exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2289
    :cond_2
    return-void
.end method

.method public hideZoomControlSet(Z)V
    .locals 3
    .parameter "fadeOut"

    .prologue
    .line 2049
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 2050
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v2, "hide zoombar enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isZoomSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 2056
    :cond_1
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    .line 2057
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v2, "Zoom is not supported!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    :cond_2
    :goto_0
    return-void

    .line 2062
    :cond_3
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;

    invoke-virtual {v1}, Lcom/motorola/Camera/widget/ZoomControlBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 2064
    if-eqz p1, :cond_5

    .line 2065
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;

    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationThumbFadeOut(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2067
    .local v0, a:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mZoombarAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2071
    .end local v0           #a:Landroid/view/animation/Animation;
    :goto_1
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/widget/ZoomControlBar;->setEnabled(Z)V

    .line 2073
    :cond_4
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    .line 2074
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v2, "hide zoombar exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2069
    :cond_5
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/widget/ZoomControlBar;->setVisibility(I)V

    goto :goto_1
.end method

.method public isPopupDialogOpen()Z
    .locals 1

    .prologue
    .line 2683
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOldChildView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOldChildView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2684
    const/4 v0, 0x1

    .line 2686
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needCenterVF()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2587
    iget v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDrawerStatus(Z)V
    .locals 4
    .parameter "closed"

    .prologue
    const/4 v3, 0x0

    .line 3365
    iput-boolean p1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSlidingDrawerClosed:Z

    .line 3366
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 3367
    const-string v0, "MotoOnScreenControllerOpenGL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawer status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSlidingDrawerClosed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3369
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSlidingDrawerClosed:Z

    if-eqz v0, :cond_1

    .line 3371
    iput v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 3374
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v3, v0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->closePopupDialog(ZZ)V

    .line 3375
    iput-boolean v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarFaded:Z

    .line 3377
    return-void
.end method

.method public notifyItemClicked(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter "adaptV"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 3227
    iget-boolean v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSecondaryDialogType:Z

    if-eqz v4, :cond_0

    .line 3292
    :goto_0
    return-void

    .line 3230
    :cond_0
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_1

    .line 3231
    const-string v4, "MotoOnScreenControllerOpenGL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "position in client:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  id in client"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " selectdPosition:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  selected id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItemId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  getPositionForView:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " childCount:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3237
    :cond_1
    const/4 v0, -0x1

    .line 3238
    .local v0, lastPosition:I
    const/4 v3, 0x0

    .line 3240
    .local v3, temp:Landroid/widget/ImageView;
    iget v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    packed-switch v4, :pswitch_data_0

    .line 3274
    :cond_2
    :goto_1
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_3

    .line 3275
    const-string v4, "MotoOnScreenControllerOpenGL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lastPosition:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3278
    :cond_3
    const/4 v4, -0x1

    if-eq v0, v4, :cond_6

    .line 3280
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v4

    if-lt v0, v4, :cond_4

    .line 3282
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v4

    sub-int/2addr v0, v4

    .line 3284
    :cond_4
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_5

    .line 3285
    const-string v4, "MotoOnScreenControllerOpenGL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lastPosition:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3287
    :cond_5
    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3290
    :cond_6
    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->closePopupDialog(ZZ)V

    .line 3291
    const/4 v4, 0x0

    iput v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    goto/16 :goto_0

    .line 3243
    :pswitch_0
    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentFlash()I

    move-result v0

    .line 3244
    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4, p3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentFlash(I)V

    .line 3245
    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v5, 0x6d

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 3248
    :pswitch_1
    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getPositionFromMode(I)I

    move-result v0

    .line 3249
    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v5, 0x74

    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getModesValueEntries()[I

    move-result-object v6

    aget v6, v6, p3

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 3250
    .local v2, switchMsg:Landroid/os/Message;
    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3252
    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getModesValueEntries()[I

    move-result-object v4

    aget v4, v4, p3

    const/4 v5, 0x5

    if-eq v4, v5, :cond_7

    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getModesValueEntries()[I

    move-result-object v4

    aget v4, v4, p3

    const/16 v5, 0xd

    if-ne v4, v5, :cond_2

    .line 3253
    :cond_7
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSecondaryDialogType:Z

    goto/16 :goto_0

    .line 3258
    .end local v2           #switchMsg:Landroid/os/Message;
    :pswitch_2
    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentEffect()I

    move-result v0

    .line 3259
    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4, p3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentEffect(I)V

    .line 3260
    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v5, 0x71

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 3263
    :pswitch_3
    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v0

    .line 3264
    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4, p3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentScene(I)V

    .line 3265
    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v5, 0x3a

    invoke-virtual {v4, v5, v0, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 3266
    .local v1, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3267
    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 3240
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public notifyProgressBarChanged(Lcom/motorola/Camera/widget/SliderBarWidget;IZ)V
    .locals 7
    .parameter "sliderBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 3305
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_0

    .line 3306
    const-string v3, "MotoOnScreenControllerOpenGL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "progress bar status:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3308
    :cond_0
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mProgressBar:Lcom/motorola/Camera/DialogProgressBar;

    if-eqz v3, :cond_4

    .line 3310
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMaxExpCompensationIndex()I

    move-result v3

    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMinExpCompensationIndex()I

    move-result v4

    sub-int v2, v3, v4

    .line 3311
    .local v2, scale:I
    mul-int v3, p2, v2

    div-int/lit8 v3, v3, 0x64

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMinExpCompensationIndex()I

    move-result v4

    add-int v0, v3, v4

    .line 3313
    .local v0, actualEV:I
    iget v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLastBrightnessProgress:I

    if-eq v0, v3, :cond_3

    .line 3314
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMinExpCompensationIndex()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMinExpCompensationIndex()I

    move-result v0

    .line 3315
    :cond_1
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMaxExpCompensationIndex()I

    move-result v3

    if-le v0, v3, :cond_2

    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMaxExpCompensationIndex()I

    move-result v0

    .line 3317
    :cond_2
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v5, 0x78

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3319
    :cond_3
    iput v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLastBrightnessProgress:I

    .line 3320
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v3, "#.#"

    invoke-direct {v1, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 3321
    .local v1, df:Ljava/text/DecimalFormat;
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mProgressBar:Lcom/motorola/Camera/DialogProgressBar;

    int-to-float v4, v0

    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getExpCompensationStep()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/motorola/Camera/DialogProgressBar;->setValue(Ljava/lang/String;)V

    .line 3323
    .end local v0           #actualEV:I
    .end local v1           #df:Ljava/text/DecimalFormat;
    .end local v2           #scale:I
    :cond_4
    return-void
.end method

.method public notifySettingSecondaryClosed()V
    .locals 1

    .prologue
    .line 3499
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSettingSecondaryDialog:Z

    .line 3500
    return-void
.end method

.method public notifySettingSecondaryOpened()V
    .locals 1

    .prologue
    .line 3494
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSettingSecondaryDialog:Z

    .line 3495
    return-void
.end method

.method public notifySettingsClicked(II)V
    .locals 7
    .parameter "setting"
    .parameter "selection"

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x0

    const/16 v5, 0x7b

    const/4 v1, 0x1

    .line 3426
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    .line 3427
    const-string v2, "MotoOnScreenControllerOpenGL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setting:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "selection:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3429
    :cond_0
    sget v2, Lcom/motorola/Camera/CameraGlobalType;->SETTING_WIDE_SCREEN:I

    if-ne p1, v2, :cond_5

    .line 3431
    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3432
    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 3433
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_1

    const-string v2, "MotoOnScreenControllerOpenGL"

    const-string v3, " Previous change wide/non wide screen request is removed from the queue"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3435
    :cond_1
    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    if-ne p2, v1, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {v2, v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentResolution(Z)V

    .line 3437
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3438
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_3

    const-string v2, "MotoOnScreenControllerOpenGL"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " The change to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-ne p2, v1, :cond_4

    const-string v0, "wide screen"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " resln is put in the queue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3490
    :cond_3
    :goto_1
    return-void

    .line 3438
    :cond_4
    const-string v0, "non-wide screen"

    goto :goto_0

    .line 3440
    :cond_5
    sget v2, Lcom/motorola/Camera/CameraGlobalType;->SETTING_VIDEO_RESOLUTION:I

    if-ne p1, v2, :cond_7

    .line 3442
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_6

    .line 3443
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v1, "Video resolution changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3446
    :cond_6
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 3448
    :cond_7
    sget v2, Lcom/motorola/Camera/CameraGlobalType;->SETTING_FACE_DETECTION:I

    if-eq p1, v2, :cond_3

    .line 3452
    sget v2, Lcom/motorola/Camera/CameraGlobalType;->SETTING_GEO_TAG:I

    if-ne p1, v2, :cond_a

    .line 3454
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_8

    .line 3455
    const-string v2, "MotoOnScreenControllerOpenGL"

    const-string v3, "geo tag setting updated"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3458
    :cond_8
    if-ne p2, v1, :cond_9

    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isEulaShown()Z

    move-result v2

    if-nez v2, :cond_9

    .line 3459
    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v3, 0x86

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3462
    :cond_9
    invoke-virtual {p0, v0, v1}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showLocationTags(ZZ)V

    goto :goto_1

    .line 3464
    :cond_a
    sget v2, Lcom/motorola/Camera/CameraGlobalType;->SETTING_SHUTTER_TONE:I

    if-eq p1, v2, :cond_3

    .line 3468
    sget v2, Lcom/motorola/Camera/CameraGlobalType;->SETTING_SHUTTER_ANIMATION:I

    if-eq p1, v2, :cond_3

    .line 3472
    sget v2, Lcom/motorola/Camera/CameraGlobalType;->SETTING_STORAGE_LOCATION:I

    if-ne p1, v2, :cond_c

    .line 3474
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_b

    .line 3475
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v1, "Storage Location changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3477
    :cond_b
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 3479
    :cond_c
    sget v2, Lcom/motorola/Camera/CameraGlobalType;->SETTING_VIDEO_STABILIZATION:I

    if-ne p1, v2, :cond_3

    .line 3480
    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 3481
    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 3482
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_d

    const-string v2, "MotoOnScreenControllerOpenGL"

    const-string v3, " Previous change video stabilization change request is removed from the queue"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3484
    :cond_d
    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    if-ne p2, v1, :cond_f

    :goto_2
    invoke-virtual {v2, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setVideoStabilization(Z)V

    .line 3485
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_e

    .line 3486
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v1, "Setting changed: Video Stabilization"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3488
    :cond_e
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    :cond_f
    move v1, v0

    .line 3484
    goto :goto_2
.end method

.method public notifyViewClicked(Landroid/view/View;I)V
    .locals 8
    .parameter "v"
    .parameter "direction"

    .prologue
    .line 3335
    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mProgressBar:Lcom/motorola/Camera/DialogProgressBar;

    invoke-virtual {v4}, Lcom/motorola/Camera/DialogProgressBar;->getSliderProgress()I

    move-result v2

    .line 3336
    .local v2, progress:I
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_0

    .line 3337
    const-string v4, "MotoOnScreenControllerOpenGL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "progress bar status:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3339
    :cond_0
    const/4 v4, 0x1

    if-ne p2, v4, :cond_2

    const/16 v4, 0x64

    if-ge v2, v4, :cond_2

    .line 3341
    add-int/lit8 v2, v2, 0x1

    .line 3347
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMaxExpCompensationIndex()I

    move-result v4

    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMinExpCompensationIndex()I

    move-result v5

    sub-int v3, v4, v5

    .line 3348
    .local v3, scale:I
    mul-int v4, v2, v3

    div-int/lit8 v4, v4, 0x64

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMinExpCompensationIndex()I

    move-result v5

    add-int v0, v4, v5

    .line 3349
    .local v0, actualEV:I
    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v6, 0x78

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3350
    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mProgressBar:Lcom/motorola/Camera/DialogProgressBar;

    invoke-virtual {v4, v2}, Lcom/motorola/Camera/DialogProgressBar;->setSliderProgress(I)V

    .line 3351
    iput v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLastBrightnessProgress:I

    .line 3352
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v4, "#.#"

    invoke-direct {v1, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 3353
    .local v1, df:Ljava/text/DecimalFormat;
    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mProgressBar:Lcom/motorola/Camera/DialogProgressBar;

    int-to-float v5, v0

    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getExpCompensationStep()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-double v5, v5

    invoke-virtual {v1, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/motorola/Camera/DialogProgressBar;->setValue(Ljava/lang/String;)V

    .line 3354
    return-void

    .line 3343
    .end local v0           #actualEV:I
    .end local v1           #df:Ljava/text/DecimalFormat;
    .end local v3           #scale:I
    :cond_2
    const/4 v4, -0x1

    if-ne p2, v4, :cond_1

    if-lez v2, :cond_1

    .line 3345
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method public notifyZoomProgress(II)V
    .locals 4
    .parameter "progress"
    .parameter "action"

    .prologue
    .line 3388
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 3389
    const-string v1, "MotoOnScreenControllerOpenGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "zoom progress:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mLastProgress:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLastProgress:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3392
    :cond_0
    if-gez p1, :cond_1

    .line 3394
    const/4 p1, 0x0

    .line 3397
    :cond_1
    sget v1, Lcom/motorola/Camera/CameraGlobalType;->ZOOM_MAX_VALUE:I

    if-le p1, v1, :cond_2

    .line 3399
    sget p1, Lcom/motorola/Camera/CameraGlobalType;->ZOOM_MAX_VALUE:I

    .line 3402
    :cond_2
    iget v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLastProgress:I

    if-eq p1, v1, :cond_5

    .line 3404
    if-eqz p2, :cond_3

    const/4 v1, 0x2

    if-ne p2, v1, :cond_6

    .line 3406
    :cond_3
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0x40

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 3407
    .local v0, zoomMsg:Landroid/os/Message;
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3413
    .end local v0           #zoomMsg:Landroid/os/Message;
    :cond_4
    :goto_0
    iput p1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLastProgress:I

    .line 3415
    :cond_5
    return-void

    .line 3409
    :cond_6
    const/4 v1, 0x1

    if-eq p2, v1, :cond_7

    const/4 v1, 0x3

    if-ne p2, v1, :cond_4

    .line 3411
    :cond_7
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0x6e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1705
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 1706
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v1, "onAnimationEnd() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1710
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1713
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 1714
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v1, "onAnimationStart() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    :cond_0
    return-void
.end method

.method public onAutoTimerItemCanceled()V
    .locals 1

    .prologue
    .line 3779
    const/4 v0, 0x4

    iput v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 3780
    return-void
.end method

.method public onAutoTimerItemSelected()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3774
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->closePopupDialog(ZZ)V

    .line 3775
    iput v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 3776
    return-void
.end method

.method public onCameraModeSwitch(Z)V
    .locals 5
    .parameter "isStillCamera"

    .prologue
    .line 3554
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 3555
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v2, "onCameraModeSwitch: isStillCamera - %s"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    const-string v0, "true"

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3557
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    if-eqz p1, :cond_2

    const/16 v0, 0x49

    :goto_1
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3558
    return-void

    .line 3555
    :cond_1
    const-string v0, "false"

    goto :goto_0

    .line 3557
    :cond_2
    const/16 v0, 0x1f

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 441
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 442
    const-string v0, "MotoOnScreenControllerOpenGL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick() - Enter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolBarButtonClicked:Z

    if-eqz v0, :cond_2

    .line 447
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    .line 448
    const-string v0, "MotoOnScreenControllerOpenGL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mToolBarButtonClicked:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolBarButtonClicked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_1
    :goto_0
    return-void

    .line 452
    :cond_2
    iput-boolean v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolBarButtonClicked:Z

    .line 455
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOldChildView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 457
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_3

    .line 459
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v1, "mOldChildView is not null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_3
    iget v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-eqz v0, :cond_1

    .line 465
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mPrevButtonClicked:I

    if-ne v0, v1, :cond_4

    .line 467
    iput-boolean v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mTransitionBetweenDialogs:Z

    .line 468
    invoke-virtual {p0, v4, v4}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->closePopupDialog(ZZ)V

    goto :goto_0

    .line 472
    :cond_4
    iput-boolean v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mTransitionBetweenDialogs:Z

    .line 473
    invoke-virtual {p0, v3, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->closePopupDialog(ZZ)V

    .line 474
    invoke-direct {p0, p1}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->processOnClick(Landroid/view/View;)V

    goto :goto_0

    .line 483
    :cond_5
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_6

    .line 485
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v1, "mOldChildView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_6
    iput-boolean v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mTransitionBetweenDialogs:Z

    .line 488
    invoke-direct {p0, p1}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->processOnClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/high16 v7, 0x41a0

    const/16 v8, 0x8

    const/4 v4, 0x0

    .line 1105
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_0

    .line 1106
    const-string v3, "MotoOnScreenControllerOpenGL"

    const-string v6, "onFinishInflate() - Enter"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    :cond_0
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 1109
    .local v2, metrics:Landroid/util/DisplayMetrics;
    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    iput v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScale:F

    .line 1111
    iget v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScale:F

    mul-float/2addr v3, v7

    float-to-int v3, v3

    iput v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mClickTouchThreshold:I

    .line 1112
    const/high16 v3, 0x41c0

    iget v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScale:F

    mul-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialogHeightPadding:I

    .line 1113
    const/high16 v3, 0x4160

    iget v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScale:F

    mul-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialogMarginPadding:I

    .line 1114
    iget v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialogMarginPadding:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialogMarginPadding:I

    .line 1115
    iget v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScale:F

    mul-float/2addr v3, v7

    float-to-int v3, v3

    iput v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mZoomBarTolerance:I

    .line 1116
    const/high16 v3, 0x42a0

    iget v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScale:F

    mul-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mZoomBarUpperPadding:I

    .line 1117
    const/high16 v3, 0x4120

    iget v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScale:F

    mul-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mUserThreshold:I

    .line 1119
    const v3, 0x7f0d0034

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mleftStatusSet:Landroid/view/View;

    .line 1120
    const v3, 0x7f0d0033

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/motorola/Camera/widget/RotateLayout;

    .line 1121
    .local v1, layout:Lcom/motorola/Camera/widget/RotateLayout;
    const/16 v3, 0x10e

    invoke-virtual {v1, v3}, Lcom/motorola/Camera/widget/RotateLayout;->setOrientation(I)V

    .line 1123
    const v3, 0x7f0d0037

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatusResolutionTextIcon:Landroid/widget/TextView;

    .line 1124
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatusResolutionTextIcon:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1126
    const v3, 0x7f0d003a

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsView:Landroid/widget/TextView;

    .line 1129
    invoke-direct {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->initForMode()V

    .line 1131
    const v3, 0x7f0d0036

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    .line 1133
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    if-eqz v3, :cond_1

    .line 1134
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1137
    :cond_1
    invoke-virtual {p0, v4, v4, v4}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->hideThumbnail(ZZZ)V

    .line 1138
    const v3, 0x7f0d0038

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mRecordingTimeView:Landroid/widget/TextView;

    .line 1139
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mRecordingTimeView:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 1141
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1142
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1143
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1146
    :cond_2
    const v3, 0x7f0d0039

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mVStabImage:Landroid/widget/ImageView;

    .line 1147
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mVStabImage:Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mVStabImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1149
    :cond_3
    const v3, 0x7f0d003b

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCAFStatus:Landroid/widget/ImageView;

    .line 1150
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCAFStatus:Landroid/widget/ImageView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCAFStatus:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1152
    :cond_4
    const v3, 0x7f0d0026

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScreen:Landroid/widget/RelativeLayout;

    .line 1153
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScreen:Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mViewGroup:Landroid/view/ViewGroup;

    .line 1154
    const v3, 0x7f0d0029

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainer:Landroid/widget/RelativeLayout;

    .line 1156
    const v3, 0x7f0d003c

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mHandshake:Landroid/widget/ImageView;

    .line 1157
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mHandshake:Landroid/widget/ImageView;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mHandshake:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1160
    :cond_5
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainer:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_6

    .line 1163
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainerWidth:I

    .line 1164
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v3

    iput v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainerLeft:I

    .line 1165
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getRight()I

    move-result v3

    iput v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainerRight:I

    .line 1166
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainerHeight:I

    .line 1167
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v3

    iput v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainerTop:I

    .line 1168
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v3

    iput v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainerBottom:I

    .line 1171
    :cond_6
    const v3, 0x7f0d002c

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mNub:Landroid/widget/LinearLayout;

    .line 1174
    const v3, 0x7f0d002d

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSettingsButton:Landroid/widget/ImageView;

    .line 1175
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSettingsButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_7

    .line 1176
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1177
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1178
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSettingsButton:Landroid/widget/ImageView;

    const/high16 v6, 0x7600

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v6, v7}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1181
    :cond_7
    const v3, 0x7f0d002e

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mEffectsButton:Landroid/widget/ImageView;

    .line 1182
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mEffectsButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_8

    .line 1183
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mEffectsButton:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1186
    :cond_8
    const v3, 0x7f0d002f

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScenesButton:Landroid/widget/ImageView;

    .line 1187
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScenesButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_9

    .line 1188
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScenesButton:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1191
    :cond_9
    const v3, 0x7f0d0030

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mModesButton:Landroid/widget/ImageView;

    .line 1192
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mModesButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_a

    .line 1193
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mModesButton:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1196
    :cond_a
    const v3, 0x7f0d0031

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBrightnessButton:Landroid/widget/ImageView;

    .line 1197
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBrightnessButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_b

    .line 1198
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBrightnessButton:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1202
    :cond_b
    const v3, 0x7f0d0032

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFlashButton:Landroid/widget/ImageView;

    .line 1203
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFlashButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_d

    .line 1204
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getFlashModes()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v3

    if-nez v3, :cond_14

    .line 1206
    :cond_c
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFlashButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1207
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFlashButton:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1215
    :cond_d
    :goto_0
    const v3, 0x7f0d002a

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/motorola/Camera/CustomSlidingDrawer;

    iput-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    .line 1216
    const v3, 0x7f0d002b

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarHandle:Landroid/widget/ImageView;

    .line 1218
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    if-eqz v3, :cond_e

    .line 1220
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    invoke-virtual {v3, p0}, Lcom/motorola/Camera/CustomSlidingDrawer;->setCallbackInterface(Lcom/motorola/Camera/DialogCallbackInterface;)V

    .line 1223
    :cond_e
    const v3, 0x7f0d003d

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/motorola/Camera/widget/ZoomControlBar;

    iput-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;

    .line 1224
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;

    if-eqz v3, :cond_f

    .line 1225
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;

    sget v6, Lcom/motorola/Camera/CameraGlobalType;->ZOOM_MAX_VALUE:I

    invoke-virtual {v3, v6}, Lcom/motorola/Camera/widget/ZoomControlBar;->setZoomMax(I)V

    .line 1226
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;

    invoke-virtual {v3, v4}, Lcom/motorola/Camera/widget/ZoomControlBar;->setZoomIndex(I)V

    .line 1227
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;

    new-instance v6, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$3;

    invoke-direct {v6, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$3;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    invoke-virtual {v3, v6}, Lcom/motorola/Camera/widget/ZoomControlBar;->setOnZoomChangeListener(Lcom/motorola/Camera/widget/ZoomControl$OnZoomChangedListener;)V

    .line 1244
    :cond_f
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isZoomSupported()Z

    move-result v3

    if-nez v3, :cond_10

    .line 1246
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_10

    .line 1247
    const-string v3, "MotoOnScreenControllerOpenGL"

    const-string v6, "Zoom is not supported!!"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    :cond_10
    const v3, 0x7f0d000b

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/View/CaptureCluster;

    .line 1253
    .local v0, captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    if-eqz v0, :cond_11

    .line 1254
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isDualCameraSupported()Z

    move-result v3

    if-eqz v3, :cond_15

    move v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Lcom/motorola/Camera/View/CaptureCluster;->setMode(I)V

    .line 1256
    invoke-virtual {v0, p0}, Lcom/motorola/Camera/View/CaptureCluster;->setCaptureClusterListener(Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;)V

    .line 1258
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v3

    if-nez v3, :cond_11

    .line 1260
    invoke-virtual {v0, v4}, Lcom/motorola/Camera/View/CaptureCluster;->setCameraMode(Z)V

    .line 1265
    :cond_11
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->trayDrawable:Landroid/graphics/drawable/Drawable;

    .line 1267
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getToolbarOpenStatus()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1269
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    if-eqz v3, :cond_12

    .line 1271
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    invoke-virtual {v3}, Lcom/motorola/Camera/CustomSlidingDrawer;->drawWithoutAnimation()V

    .line 1275
    :cond_12
    invoke-super {p0}, Lcom/motorola/Camera/View/Control/OnScreenController;->onFinishInflate()V

    .line 1277
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_13

    .line 1278
    const-string v3, "MotoOnScreenControllerOpenGL"

    const-string v4, "onFinishInflate() - Exit"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    :cond_13
    return-void

    .line 1211
    .end local v0           #captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    :cond_14
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFlashButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .restart local v0       #captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    :cond_15
    move v3, v5

    .line 1254
    goto :goto_1
.end method

.method public onFrontCameraSwitch()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3517
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0x73

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0x72

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3518
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 3519
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v2, "onFrontCameraSwitch"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3521
    :cond_0
    invoke-virtual {p0, v3, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->closePopupDialog(ZZ)V

    .line 3522
    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    monitor-enter v2

    .line 3523
    const/16 v0, 0x73

    .line 3524
    .local v0, msgCode:I
    :try_start_0
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3525
    const/16 v0, 0x72

    .line 3529
    :cond_1
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3530
    monitor-exit v2

    .line 3532
    .end local v0           #msgCode:I
    :cond_2
    return-void

    .line 3530
    .restart local v0       #msgCode:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 1099
    const/4 v0, 0x0

    return v0
.end method

.method public onMuteToggle(Z)V
    .locals 2
    .parameter "audioButtonEnabled"

    .prologue
    .line 3541
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/16 v0, 0x88

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3542
    return-void

    .line 3541
    :cond_0
    const/16 v0, 0x87

    goto :goto_0
.end method

.method public onStillCaptureDown(Z)V
    .locals 5
    .parameter "exitPanorama"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3561
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_0

    .line 3562
    const-string v3, "MotoOnScreenControllerOpenGL"

    const-string v4, "onStillCaptureDown"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3564
    :cond_0
    iput-boolean v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStillImageCaptureInProgress:Z

    .line 3566
    if-nez p1, :cond_1

    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 3567
    const v3, 0x7f0d000b

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/View/CaptureCluster;

    .line 3568
    .local v0, captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/motorola/Camera/View/CaptureCluster;->setCameraMode(I)V

    .line 3570
    .end local v0           #captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    :cond_1
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v4, 0x42

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3573
    if-nez p1, :cond_2

    .line 3574
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    iget-boolean v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSlidingDrawerClosed:Z

    if-nez v4, :cond_3

    :goto_0
    invoke-virtual {v3, v1}, Lcom/motorola/Camera/CustomSlidingDrawer;->setSliderRestoreState(Z)V

    .line 3576
    :cond_2
    iput v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 3577
    return-void

    :cond_3
    move v1, v2

    .line 3574
    goto :goto_0
.end method

.method public onStillCaptureFocus()V
    .locals 2

    .prologue
    .line 3675
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 3676
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v1, "onStillCaptureFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3677
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->rightSetFadeOut()V

    .line 3679
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3680
    return-void
.end method

.method public onStillCaptureUp()V
    .locals 2

    .prologue
    .line 3683
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 3684
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v1, "onStillCaptureUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3685
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->rightSetFadeIn()V

    .line 3686
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x43

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3687
    return-void
.end method

.method public onTimelapseItemSelected()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3809
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->closePopupDialog(ZZ)V

    .line 3810
    iput v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 3811
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 2864
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2866
    const/4 v0, 0x0

    return v0
.end method

.method public onVideoRecordingStarted()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 3690
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    .line 3691
    const-string v2, "MotoOnScreenControllerOpenGL"

    const-string v3, "onVideoRecordingStarted"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3693
    :cond_0
    iput-boolean v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mVideoCaptureInProgress:Z

    .line 3694
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->rightSetFadeOut()V

    .line 3697
    const v2, 0x7f0d000b

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/View/CaptureCluster;

    .line 3698
    .local v0, captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    if-eqz v0, :cond_1

    .line 3699
    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/CaptureCluster;->enableMute(Z)V

    .line 3702
    :cond_1
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0x1a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3703
    return-void

    .line 3699
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onVideoRecordingStopped()V
    .locals 2

    .prologue
    .line 3706
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 3707
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v1, "onVideoRecordingStopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3709
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mVideoCaptureInProgress:Z

    .line 3710
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mVideoCaptureStopping:Z

    .line 3711
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3712
    return-void
.end method

.method public onVideoSnapshot()V
    .locals 2

    .prologue
    .line 3536
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x89

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3537
    return-void
.end method

.method public removePicsStill()V
    .locals 4

    .prologue
    .line 287
    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mViewGroup:Landroid/view/ViewGroup;

    const v3, 0x7f0d0027

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/motorola/Camera/widget/RotateLayout;

    .line 289
    .local v1, rl:Lcom/motorola/Camera/widget/RotateLayout;
    if-nez v1, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    invoke-virtual {v1}, Lcom/motorola/Camera/widget/RotateLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 293
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/widget/RotateLayout;->setVisibility(I)V

    .line 294
    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mViewGroup:Landroid/view/ViewGroup;

    const v3, 0x7f0d0028

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 296
    .local v0, iv:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 297
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public resetFilter()V
    .locals 5

    .prologue
    .line 3794
    sget-object v2, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFilteredResources:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 3795
    sget-object v2, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFilteredResources:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 3797
    .local v0, draw:Landroid/graphics/drawable/Drawable;
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_1

    .line 3798
    const-string v2, "MotoOnScreenControllerOpenGL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Drawbles"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3800
    :cond_1
    if-eqz v0, :cond_0

    .line 3801
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_0

    .line 3804
    .end local v0           #draw:Landroid/graphics/drawable/Drawable;
    :cond_2
    sget-object v2, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFilteredResources:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3806
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method public rightSetFadeIn()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1890
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 1891
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v2, "rightSetFadeIn() - Enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    :cond_0
    iput-boolean v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStillImageCaptureInProgress:Z

    .line 1895
    iget-boolean v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOnScreenMenuShowing:Z

    if-nez v1, :cond_3

    .line 1897
    iput-boolean v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOnScreenMenuShowing:Z

    .line 1899
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getFlashModes()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFlashButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFlashButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1901
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFlashButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1902
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFlashButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1906
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showThumbnail()V

    .line 1907
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showZoomControlSet()V

    .line 1908
    invoke-virtual {p0, v4}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showToolBar(Z)V

    .line 1910
    iput v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 1912
    invoke-virtual {p0, v4, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showLocationTags(ZZ)V

    .line 1913
    invoke-virtual {p0, v4, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showHandshake(ZZ)V

    .line 1915
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    if-eqz v1, :cond_2

    .line 1916
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    invoke-virtual {v1}, Lcom/motorola/Camera/FocusManager;->shouldShowCafStatus()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1917
    invoke-virtual {p0, v4}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showCafStatus(Z)V

    .line 1922
    :cond_2
    :goto_0
    invoke-virtual {p0, v4}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showResolutionTextIcon(Z)V

    .line 1924
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mImageCaptureMode:Ljava/lang/Boolean;

    .line 1926
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1929
    :cond_3
    const v1, 0x7f0d000b

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/View/CaptureCluster;

    .line 1930
    .local v0, captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    if-eqz v0, :cond_4

    .line 1931
    invoke-virtual {v0, v3}, Lcom/motorola/Camera/View/CaptureCluster;->setCleanView(Z)V

    .line 1934
    :cond_4
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showCaptureCluster()V

    .line 1936
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_5

    .line 1937
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v2, "rightSetFadeIn() - Exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    :cond_5
    return-void

    .line 1919
    .end local v0           #captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    :cond_6
    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->hideCafStatus(Z)V

    goto :goto_0
.end method

.method public rightSetFadeOut()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1942
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 1943
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v2, "rightSetFadeOut() - Enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    :cond_0
    iget-boolean v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOnScreenMenuShowing:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mImageCaptureMode:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1946
    :cond_1
    iput-boolean v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOnScreenMenuShowing:Z

    .line 1948
    iget-boolean v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLockRightSet:Z

    if-nez v1, :cond_2

    .line 1950
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mImageCaptureMode:Ljava/lang/Boolean;

    .line 1953
    :cond_2
    invoke-virtual {p0, v3, v4}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->hideLocationTags(ZZ)V

    .line 1954
    invoke-virtual {p0, v3, v4}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->hideHandshake(ZZ)V

    .line 1955
    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->hideCafStatus(Z)V

    .line 1957
    invoke-virtual {p0, v3, v4}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->hideResolutionTextIcon(ZZ)V

    .line 1959
    iget v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-eqz v1, :cond_3

    .line 1961
    invoke-virtual {p0, v4, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->closePopupDialog(ZZ)V

    .line 1962
    iput v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 1966
    :cond_3
    iget-boolean v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mVideoCaptureInProgress:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isCamcorderZoomSupported()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1967
    :cond_4
    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->hideZoomControlSet(Z)V

    .line 1970
    :cond_5
    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->hideToolBar(Z)V

    .line 1971
    iput v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 1974
    invoke-virtual {p0, v3, v3, v4}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->hideThumbnail(ZZZ)V

    .line 1976
    const v1, 0x7f0d000b

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/View/CaptureCluster;

    .line 1977
    .local v0, captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    if-eqz v0, :cond_6

    .line 1981
    iget-boolean v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStillImageCaptureInProgress:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v1

    if-eq v1, v3, :cond_9

    .line 1983
    invoke-virtual {v0, v3, v3}, Lcom/motorola/Camera/View/CaptureCluster;->setCleanView(ZZ)V

    .line 1992
    :cond_6
    :goto_0
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1995
    .end local v0           #captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    :cond_7
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_8

    .line 1996
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v2, "rightSetFadeOut() - Exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    :cond_8
    return-void

    .line 1987
    .restart local v0       #captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    :cond_9
    iget-boolean v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mVideoCaptureInProgress:Z

    if-nez v1, :cond_6

    .line 1988
    invoke-virtual {v0, v3}, Lcom/motorola/Camera/View/CaptureCluster;->setCleanView(Z)V

    goto :goto_0
.end method

.method public secondaryDialogClosed()V
    .locals 1

    .prologue
    .line 3815
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSecondaryDialogType:Z

    .line 3816
    return-void
.end method

.method public secondaryDialogOpen()V
    .locals 1

    .prologue
    .line 3820
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSecondaryDialogType:Z

    .line 3821
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter "a"

    .prologue
    .line 3902
    iput-object p1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mActivity:Landroid/app/Activity;

    .line 3903
    return-void
.end method

.method public setCaptureClusterCameraMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 3740
    const v1, 0x7f0d000b

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/View/CaptureCluster;

    .line 3741
    .local v0, captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    if-nez v0, :cond_0

    .line 3745
    :goto_0
    return-void

    .line 3744
    :cond_0
    invoke-virtual {v0, p1}, Lcom/motorola/Camera/View/CaptureCluster;->setCameraMode(I)V

    goto :goto_0
.end method

.method public setCaptureResourceClickable(Z)V
    .locals 4
    .parameter "setClickable"

    .prologue
    .line 1683
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoOnScreenControllerOpenGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Setting the capture resource clickable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    :cond_0
    const v1, 0x7f0d000b

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/View/CaptureCluster;

    .line 1687
    .local v0, captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    if-eqz v0, :cond_1

    .line 1688
    invoke-virtual {v0, p1}, Lcom/motorola/Camera/View/CaptureCluster;->setCaptureResourceClickable(Z)V

    .line 1689
    :cond_1
    return-void
.end method

.method public setDialogStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 2800
    iput p1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 2801
    return-void
.end method

.method public setFocusBracket(Lcom/motorola/Camera/View/FocusView;)V
    .locals 0
    .parameter "focusView"

    .prologue
    .line 2795
    iput-object p1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFocusView:Lcom/motorola/Camera/View/FocusView;

    .line 2796
    return-void
.end method

.method public setMenuPress()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2806
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 2807
    const-string v0, "MotoOnScreenControllerOpenGL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMenuPress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOnScreenMenuShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2808
    const-string v0, "MotoOnScreenControllerOpenGL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMenuPress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSlidingDrawerClosed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2811
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSecondaryDialogType:Z

    if-eqz v0, :cond_1

    .line 2858
    :goto_0
    return-void

    .line 2814
    :cond_1
    iget-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOnScreenMenuShowing:Z

    if-nez v0, :cond_3

    .line 2816
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    invoke-virtual {v0, v3}, Lcom/motorola/Camera/CustomSlidingDrawer;->setSliderRestoreState(Z)V

    .line 2817
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    invoke-virtual {v0}, Lcom/motorola/Camera/CustomSlidingDrawer;->drawWithoutAnimation()V

    .line 2818
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->rightSetFadeIn()V

    .line 2857
    :cond_2
    :goto_1
    iput-boolean v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarFaded:Z

    goto :goto_0

    .line 2820
    :cond_3
    iget-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSlidingDrawerClosed:Z

    if-eqz v0, :cond_5

    .line 2823
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    if-eqz v0, :cond_2

    .line 2825
    iget-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarFaded:Z

    if-eqz v0, :cond_4

    .line 2827
    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showToolBar(Z)V

    goto :goto_1

    .line 2831
    :cond_4
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    invoke-virtual {v0, v3}, Lcom/motorola/Camera/CustomSlidingDrawer;->setSliderRestoreState(Z)V

    .line 2832
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    invoke-virtual {v0, v3}, Lcom/motorola/Camera/CustomSlidingDrawer;->animateOpen(Z)V

    goto :goto_1

    .line 2838
    :cond_5
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_6

    .line 2839
    const-string v0, "MotoOnScreenControllerOpenGL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mToolbarFaded:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarFaded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2843
    :cond_6
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    if-eqz v0, :cond_2

    .line 2845
    iget-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarFaded:Z

    if-eqz v0, :cond_7

    .line 2847
    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showToolBar(Z)V

    goto :goto_1

    .line 2851
    :cond_7
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    invoke-virtual {v0, v4}, Lcom/motorola/Camera/CustomSlidingDrawer;->setSliderRestoreState(Z)V

    .line 2852
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    invoke-virtual {v0, v3}, Lcom/motorola/Camera/CustomSlidingDrawer;->animateClose(Z)V

    .line 2853
    iput v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    goto :goto_1
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 3825
    iput p1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCurrentOrientation:I

    .line 3826
    return-void
.end method

.method public setParams(Landroid/os/Handler;Lcom/motorola/Camera/FocusManager;)V
    .locals 2
    .parameter "handler"
    .parameter "focusManager"

    .prologue
    .line 1692
    iput-object p1, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    .line 1693
    iput-object p2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    .line 1695
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    const v1, 0x7f040006

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationSet;

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mTranslateIn:Landroid/view/animation/AnimationSet;

    .line 1698
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mTranslateIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, p0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1699
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    const v1, 0x7f040007

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationSet;

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mTranslateOut:Landroid/view/animation/AnimationSet;

    .line 1701
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mTranslateOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, p0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1702
    return-void
.end method

.method public setRecordButton(Z)V
    .locals 4
    .parameter "recording"

    .prologue
    .line 1660
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 1661
    const-string v1, "MotoOnScreenControllerOpenGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recording:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentAppMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1666
    iput-boolean p1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mRecording:Z

    .line 1669
    const v1, 0x7f0d000b

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/View/CaptureCluster;

    .line 1670
    .local v0, captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    if-eqz v0, :cond_1

    .line 1671
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/motorola/Camera/View/CaptureCluster;->videoCapture(ZZ)V

    .line 1674
    .end local v0           #captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    :cond_1
    return-void
.end method

.method public setZoomBarMax(I)V
    .locals 2
    .parameter "max"

    .prologue
    .line 3789
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;

    sget v1, Lcom/motorola/Camera/CameraGlobalType;->ZOOM_MAX_VALUE:I

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/widget/ZoomControlBar;->setZoomMax(I)V

    .line 3790
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 2520
    const/16 v0, 0x1388

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->show(I)V

    .line 2521
    return-void
.end method

.method public show(I)V
    .locals 2
    .parameter "timeout"

    .prologue
    .line 2566
    iget-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mShowing:Z

    if-nez v0, :cond_0

    .line 2568
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->setVisibility(I)V

    .line 2569
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->invalidate()V

    .line 2570
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mShowing:Z

    .line 2573
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mShowing:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOnScreenMenuShowing:Z

    if-nez v0, :cond_1

    .line 2575
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->rightSetFadeIn()V

    .line 2578
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2579
    if-gtz p1, :cond_2

    .line 2581
    const/16 p1, 0x1388

    .line 2583
    :cond_2
    return-void
.end method

.method public show(Z)V
    .locals 1
    .parameter "lock"

    .prologue
    .line 2524
    iput-boolean p1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLockRightSet:Z

    .line 2525
    const/16 v0, 0x1388

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->show(I)V

    .line 2526
    return-void
.end method

.method public showCafStatus(Z)V
    .locals 4
    .parameter "anim"

    .prologue
    const/4 v3, 0x0

    .line 4042
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCAFStatus:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCAFStatus:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentAppMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 4053
    :cond_0
    :goto_0
    return-void

    .line 4045
    :cond_1
    if-eqz p1, :cond_2

    .line 4046
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCAFStatus:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationThumbFadeIn(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 4047
    .local v0, a:Landroid/view/animation/Animation;
    new-instance v1, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$ViewAnimationHandler;

    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCAFStatus:Landroid/widget/ImageView;

    invoke-direct {v1, p0, v2, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$ViewAnimationHandler;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 4050
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_2
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCAFStatus:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 4051
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCAFStatus:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showCameraCaptureControl(Z)V
    .locals 5
    .parameter "show"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2529
    const-string v0, "MotoOnScreenControllerOpenGL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showCameraCaptureControl() - Enter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2530
    iget-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mShowing:Z

    if-nez v0, :cond_0

    .line 2531
    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->setVisibility(I)V

    .line 2532
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->invalidate()V

    .line 2533
    iput-boolean v4, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mShowing:Z

    .line 2536
    :cond_0
    if-eqz p1, :cond_1

    .line 2537
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2538
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mImageCaptureMode:Ljava/lang/Boolean;

    .line 2542
    :goto_0
    return-void

    .line 2540
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mImageCaptureMode:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public showCaptureCluster()V
    .locals 3

    .prologue
    .line 3731
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 3732
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v2, "showCaptureCluster()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3734
    :cond_0
    const v1, 0x7f0d000b

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/View/CaptureCluster;

    .line 3735
    .local v0, captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/CaptureCluster;->setVisibility(I)V

    .line 3736
    return-void
.end method

.method public showFocusBrackets()V
    .locals 2

    .prologue
    .line 2483
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFocusView:Lcom/motorola/Camera/View/FocusView;

    if-eqz v0, :cond_0

    .line 2485
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFocusView:Lcom/motorola/Camera/View/FocusView;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/FocusView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2487
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFocusView:Lcom/motorola/Camera/View/FocusView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/FocusView;->setVisibility(I)V

    .line 2490
    :cond_0
    return-void
.end method

.method public showHandshake(ZZ)V
    .locals 4
    .parameter "anim"
    .parameter "override"

    .prologue
    const/4 v3, 0x0

    .line 3964
    if-eqz p2, :cond_1

    .line 3965
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mHandshake:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3974
    :cond_0
    :goto_0
    return-void

    .line 3966
    :cond_1
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mHandshake:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 3967
    if-eqz p1, :cond_2

    .line 3968
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mHandshake:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationThumbFadeIn(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 3969
    .local v0, a:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mHandshakeViewAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 3971
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_2
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mHandshake:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showLocationTags(ZZ)V
    .locals 4
    .parameter "animation"
    .parameter "setGone"

    .prologue
    .line 2351
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    .line 2352
    const-string v2, "MotoOnScreenControllerOpenGL"

    const-string v3, "show location enter"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2354
    :cond_0
    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isLocationOn()Z

    move-result v1

    .line 2356
    .local v1, isLocationOn:Z
    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->isPopupDialogOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialogCloseInProgress:Z

    if-eqz v2, :cond_6

    .line 2358
    :cond_1
    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    .line 2360
    if-eqz p1, :cond_5

    .line 2362
    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationThumbFadeIn(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2363
    .local v0, a:Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsViewAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2370
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->updateLocationText()V

    .line 2378
    :cond_3
    :goto_1
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_4

    .line 2379
    const-string v2, "MotoOnScreenControllerOpenGL"

    const-string v3, "show location exit"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2382
    :cond_4
    return-void

    .line 2367
    :cond_5
    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2372
    :cond_6
    if-eqz p2, :cond_3

    .line 2374
    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2375
    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public showPhoneLocationDialog()V
    .locals 2

    .prologue
    .line 1677
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialog:Lcom/motorola/Camera/DialogSettingsView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1678
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialog:Lcom/motorola/Camera/DialogSettingsView;

    invoke-virtual {v0}, Lcom/motorola/Camera/DialogSettingsView;->showPhoneLocationDialog()V

    .line 1680
    :cond_0
    return-void
.end method

.method public showPicsStill(Landroid/graphics/Bitmap;III)V
    .locals 4
    .parameter "image"
    .parameter "width"
    .parameter "height"
    .parameter "left"

    .prologue
    .line 276
    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mViewGroup:Landroid/view/ViewGroup;

    const v3, 0x7f0d0028

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 277
    .local v0, iv:Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mViewGroup:Landroid/view/ViewGroup;

    const v3, 0x7f0d0027

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/motorola/Camera/widget/RotateLayout;

    .line 278
    .local v1, rl:Lcom/motorola/Camera/widget/RotateLayout;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/widget/RotateLayout;->setVisibility(I)V

    .line 280
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 281
    const/high16 v2, -0x100

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 283
    const/16 v2, 0x10e

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/widget/RotateLayout;->setOrientation(I)V

    .line 284
    return-void
.end method

.method public showRecordingIndicator(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 2678
    return-void
.end method

.method public showRemainText()V
    .locals 0

    .prologue
    .line 2654
    return-void
.end method

.method public showResolutionTextIcon(Z)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 2401
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 2402
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v2, "show resolution Img enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2404
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentAppMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 2405
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatusResolutionTextIcon:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 2406
    if-eqz p1, :cond_4

    .line 2407
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatusResolutionTextIcon:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationThumbFadeIn(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2408
    .local v0, a:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mResolutionImgViewAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2415
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->updateResImg()V

    .line 2418
    :cond_2
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_3

    .line 2419
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v2, "show resolution Img exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2421
    :cond_3
    return-void

    .line 2411
    :cond_4
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatusResolutionTextIcon:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showRightSet()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2637
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mImageCaptureMode:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2638
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mImageCaptureMode:Ljava/lang/Boolean;

    .line 2641
    :cond_0
    const v1, 0x7f0d000b

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/View/CaptureCluster;

    .line 2642
    .local v0, captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    if-eqz v0, :cond_1

    .line 2643
    invoke-virtual {v0, v2}, Lcom/motorola/Camera/View/CaptureCluster;->setCleanView(Z)V

    .line 2644
    :cond_1
    return-void
.end method

.method public showThumbnail()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 2198
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 2199
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v2, "show thumbnail enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2201
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mPanCapturing:Z

    if-eqz v1, :cond_2

    .line 2205
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2224
    :goto_0
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    .line 2225
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v2, "show thumbnail exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2227
    :cond_1
    return-void

    .line 2208
    :cond_2
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2210
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 2214
    :cond_3
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2215
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->thumbAnimation:Landroid/view/animation/AnimationSet;

    if-nez v1, :cond_4

    .line 2216
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationThumbFadeIn(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2217
    .local v0, a:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 2220
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_4
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->thumbAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public showToolBar(Z)V
    .locals 4
    .parameter "fade"

    .prologue
    .line 3629
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 3630
    const-string v1, "MotoOnScreenControllerOpenGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showToolBar enter:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarShowAnimationInProgress:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3631
    const-string v1, "MotoOnScreenControllerOpenGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showToolBar enter:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    invoke-virtual {v3}, Lcom/motorola/Camera/CustomSlidingDrawer;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3634
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    invoke-virtual {v1}, Lcom/motorola/Camera/CustomSlidingDrawer;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 3636
    if-eqz p1, :cond_3

    .line 3638
    iget-boolean v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarShowAnimationInProgress:Z

    if-nez v1, :cond_1

    .line 3640
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarShowAnimationInProgress:Z

    .line 3641
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationThumbFadeIn(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 3642
    .local v0, a:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3651
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    .line 3652
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v2, "showToolBar exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3653
    :cond_2
    return-void

    .line 3647
    :cond_3
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/CustomSlidingDrawer;->setVisibility(I)V

    goto :goto_0
.end method

.method public showTopStatusSet()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2664
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showLocationTags(ZZ)V

    .line 2666
    invoke-virtual {p0, v1}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showResolutionTextIcon(Z)V

    .line 2669
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showThumbnail()V

    .line 2670
    invoke-virtual {p0, v1, v1}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showHandshake(ZZ)V

    .line 2671
    return-void
.end method

.method public showVStabImage()V
    .locals 2

    .prologue
    .line 2293
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 2294
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v1, "show vstab image enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2296
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getVideoStabilization()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2297
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->hideVStabImage()V

    .line 2301
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    .line 2302
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v1, "show vstab image exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2304
    :cond_2
    return-void

    .line 2298
    :cond_3
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mVStabImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 2299
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mVStabImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showZoomControlSet()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 2093
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_0

    .line 2094
    const-string v3, "MotoOnScreenControllerOpenGL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "show zoombar enter:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;

    invoke-virtual {v5}, Lcom/motorola/Camera/widget/ZoomControlBar;->getVisibility()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2095
    const-string v3, "MotoOnScreenControllerOpenGL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "show zoombar enter:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isZoomSupported()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    :cond_0
    const/4 v1, 0x0

    .line 2099
    .local v1, cameraMode:I
    const v3, 0x7f0d000b

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/motorola/Camera/View/CaptureCluster;

    .line 2100
    .local v2, captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    if-eqz v2, :cond_1

    .line 2102
    invoke-virtual {v2}, Lcom/motorola/Camera/View/CaptureCluster;->getCameraMode()I

    move-result v1

    .line 2105
    :cond_1
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isZoomSupported()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v3

    if-ne v3, v6, :cond_6

    .line 2108
    :cond_2
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_3

    .line 2109
    const-string v3, "MotoOnScreenControllerOpenGL"

    const-string v4, "Zoom is not supported!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    :cond_3
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/motorola/Camera/widget/ZoomControlBar;->setVisibility(I)V

    .line 2121
    :cond_4
    :goto_0
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_5

    .line 2122
    const-string v3, "MotoOnScreenControllerOpenGL"

    const-string v4, "show zoombar exit"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2124
    :cond_5
    return-void

    .line 2113
    :cond_6
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;

    invoke-virtual {v3}, Lcom/motorola/Camera/widget/ZoomControlBar;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_4

    .line 2115
    if-eqz v1, :cond_7

    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isCamcorderZoomSupported()Z

    move-result v3

    if-eqz v3, :cond_4

    if-ne v1, v6, :cond_4

    .line 2117
    :cond_7
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;

    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationThumbFadeIn(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2118
    .local v0, a:Landroid/view/animation/Animation;
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mZoombarAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method public thumbAnimation(Landroid/graphics/Bitmap;III)V
    .locals 7
    .parameter "image"
    .parameter "width"
    .parameter "height"
    .parameter "left"

    .prologue
    const/4 v6, 0x1

    .line 245
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_0

    .line 246
    const-string v3, "MyMotoOnScreenControllerOpenGL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "width:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " height:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " left:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 251
    .local v1, d:Landroid/graphics/drawable/Drawable;
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mNewThumbAnimationImage:Landroid/widget/ImageView;

    .line 253
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 256
    .local v2, params:Landroid/widget/RelativeLayout$LayoutParams;
    iput p4, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 257
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mViewGroup:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mNewThumbAnimationImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mNewThumbAnimationImage:Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 261
    const/4 v0, 0x0

    .line 263
    .local v0, a:Landroid/view/animation/Animation;
    if-gt p4, v6, :cond_1

    .line 265
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mNewThumbAnimationImage:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationWideThumbPostShot(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 272
    :goto_0
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailAnimationPostShotListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 273
    return-void

    .line 269
    :cond_1
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mNewThumbAnimationImage:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationThumbPostShot(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 270
    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    goto :goto_0
.end method

.method public toggleMediaControlsVisibility()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2592
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 2593
    const-string v0, "MotoOnScreenControllerOpenGL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toggleMediaControlsVisibility() - Enter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOnScreenMenuShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2594
    :cond_0
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    .line 2595
    const-string v0, "MotoOnScreenControllerOpenGL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2598
    :cond_1
    iget v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-eqz v0, :cond_3

    .line 2600
    invoke-virtual {p0, v3, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->closePopupDialog(ZZ)V

    .line 2601
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 2616
    :cond_2
    :goto_0
    return-void

    .line 2605
    :cond_3
    iget-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mShowing:Z

    if-nez v0, :cond_4

    .line 2606
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->show()V

    .line 2614
    :goto_1
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    .line 2615
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v1, "toggleMediaControlsVisibility() - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2608
    :cond_4
    iget-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOnScreenMenuShowing:Z

    if-eqz v0, :cond_5

    .line 2609
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->rightSetFadeOut()V

    goto :goto_1

    .line 2611
    :cond_5
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->rightSetFadeIn()V

    goto :goto_1
.end method

.method public updateCafStatus(Lcom/motorola/Camera/CameraGlobalType$CAF_STATUS;Z)V
    .locals 3
    .parameter "status"
    .parameter "lowLight"

    .prologue
    const/4 v2, 0x2

    .line 4022
    sget-object v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$18;->$SwitchMap$com$motorola$Camera$CameraGlobalType$CAF_STATUS:[I

    invoke-virtual {p1}, Lcom/motorola/Camera/CameraGlobalType$CAF_STATUS;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 4038
    :goto_0
    return-void

    .line 4024
    :pswitch_0
    if-eqz p2, :cond_0

    .line 4025
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCAFStatus:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0

    .line 4027
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCAFStatus:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0

    .line 4030
    :pswitch_1
    if-eqz p2, :cond_1

    .line 4031
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCAFStatus:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0

    .line 4033
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCAFStatus:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0

    .line 4022
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateController()V
    .locals 3

    .prologue
    .line 1871
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 1872
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v2, "updateController() - Enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    :cond_0
    const v1, 0x7f0d000b

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/View/CaptureCluster;

    .line 1875
    .local v0, captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    if-eqz v0, :cond_1

    .line 1876
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isDualCameraSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/CaptureCluster;->setMode(I)V

    .line 1881
    :cond_1
    invoke-direct {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->updateButtons()V

    .line 1882
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->updateStatusIcons()V

    .line 1884
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    .line 1885
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v2, "updateController() - Exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    :cond_2
    return-void

    .line 1876
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public updateLocationText()V
    .locals 5

    .prologue
    .line 2017
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    .line 2019
    .local v1, setting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isLocationOn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2046
    :cond_0
    :goto_0
    return-void

    .line 2021
    :cond_1
    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getLocStatus()I

    move-result v2

    if-nez v2, :cond_2

    .line 2023
    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0055

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2026
    :cond_2
    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getLocStatus()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 2028
    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0061

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2031
    :cond_3
    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getLocStatus()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 2033
    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0062

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2038
    :cond_4
    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentAddress()Ljava/lang/String;

    move-result-object v0

    .line 2039
    .local v0, adr:Ljava/lang/String;
    if-nez v0, :cond_5

    .line 2040
    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0060

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2043
    :cond_5
    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updatePanoramaCaptureStatus(Z)V
    .locals 0
    .parameter "capturing"

    .prologue
    .line 2000
    iput-boolean p1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mPanCapturing:Z

    .line 2001
    return-void
.end method

.method public updateResImg()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    .line 1606
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_0

    const-string v7, "MotoOnScreenControllerOpenGL"

    const-string v8, "update Resolution Img - Enter"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    :cond_0
    const/4 v0, 0x0

    .line 1612
    .local v0, currentRes:Ljava/lang/String;
    iget-object v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v7}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentAppMode()I

    move-result v7

    if-nez v7, :cond_3

    .line 1613
    iget-object v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatusResolutionTextIcon:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1655
    :cond_1
    :goto_0
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_2

    const-string v7, "MotoOnScreenControllerOpenGL"

    const-string v8, "update Resolution Img - Exit"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    :cond_2
    return-void

    .line 1615
    :cond_3
    iget-object v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v7}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentAppMode()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    .line 1617
    iget-object v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v7}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v1

    .line 1619
    .local v1, currentVideoMode:I
    iget-object v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v7}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getVideoResolution()Ljava/lang/String;

    move-result-object v0

    .line 1620
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_4

    const-string v7, "MotoOnScreenControllerOpenGL"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateResImg() - currentVideoMode currentRes"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    :cond_4
    iget-object v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v7}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getVideoResolutionValues()Ljava/util/List;

    move-result-object v6

    .line 1625
    .local v6, videoResolutionValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v7}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getVideoResolutionTextIcons()Ljava/util/List;

    move-result-object v5

    .line 1627
    .local v5, videoResolutionTextIcons:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_5

    .line 1628
    const-string v7, "MotoOnScreenControllerOpenGL"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateResImg() - videoResolutionValues videoResolutionImgs"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    :cond_5
    if-eqz v6, :cond_7

    if-eqz v0, :cond_7

    .line 1633
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 1634
    .local v3, num:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 1636
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1637
    .local v4, tempString:Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1639
    iget-object v8, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatusResolutionTextIcon:Landroid/widget/TextView;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1634
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1646
    .end local v2           #i:I
    .end local v3           #num:I
    .end local v4           #tempString:Ljava/lang/String;
    :cond_7
    iget-object v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatusResolutionTextIcon:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1651
    .end local v1           #currentVideoMode:I
    .end local v5           #videoResolutionTextIcons:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v6           #videoResolutionValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    const/4 v0, 0x0

    .line 1652
    const-string v7, "MotoOnScreenControllerOpenGL"

    const-string v8, "updateResImg() - bad state, how did we get here?"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public updateStatusIcons()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1591
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v1, "updateStatusIcons() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showLocationTags(ZZ)V

    .line 1594
    invoke-virtual {p0, v2}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showResolutionTextIcon(Z)V

    .line 1596
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v1, "updateStatusIcons() - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    :cond_1
    return-void
.end method

.method public updateSwitchCameraUI(Z)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 3546
    const v1, 0x7f0d000b

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/View/CaptureCluster;

    .line 3548
    .local v0, captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    if-eqz v0, :cond_0

    .line 3549
    invoke-virtual {v0, p1}, Lcom/motorola/Camera/View/CaptureCluster;->setCameraMode(Z)V

    .line 3550
    :cond_0
    return-void
.end method

.method public updateTagsSet()V
    .locals 2

    .prologue
    .line 1602
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v1, "updateTagsSet() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    :cond_0
    return-void
.end method

.method public updateThumbnail(Landroid/graphics/Bitmap;I)V
    .locals 13
    .parameter "image"
    .parameter "orientation"

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 327
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraKPI"

    const-string v2, "control updatethumb enter"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_0
    const/4 v9, 0x0

    .line 330
    .local v9, finalBitmap:Landroid/graphics/Bitmap;
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    .line 331
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v2, "updateThumbnail() - Enter"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_1
    iput-boolean v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStillImageCaptureInProgress:Z

    .line 336
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v12

    .line 337
    .local v12, width:I
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v10

    .line 339
    .local v10, height:I
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    .line 340
    const-string v0, "MotoOnScreenControllerOpenGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateThumbnail - mThumbnailImageView measured width x height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_2
    if-eqz v12, :cond_3

    if-eqz v10, :cond_3

    if-nez p1, :cond_b

    .line 347
    :cond_3
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_4

    .line 348
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v2, "updateThumbnail() - either thumbnail is null or widthxheight of our VIEW isn\'t valid"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_4
    const/4 v9, 0x0

    .line 387
    :goto_0
    if-nez v9, :cond_15

    .line 388
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 392
    :goto_1
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_5

    .line 393
    const-string v0, "MotoOnScreenControllerOpenGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mThumbnailImageView.getBottom():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getBottom()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_5
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_16

    .line 400
    iget v11, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mZoomBarUpperPadding:I

    .line 407
    .local v11, upperPadding:I
    :goto_2
    const/4 v8, 0x0

    .line 408
    .local v8, display:Landroid/view/Display;
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_6

    .line 409
    const-string v0, "MotoOnScreenControllerOpenGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upperPadding:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_6
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_7

    .line 413
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    .line 417
    :cond_7
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_8

    .line 418
    const-string v0, "MotoOnScreenControllerOpenGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ndroid.view.Display.getRotation():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Landroid/view/Display;->getRotation()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_8
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 424
    iput-boolean v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mVideoCaptureStopping:Z

    .line 427
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v0

    if-nez v0, :cond_9

    .line 429
    invoke-virtual {p0, v6}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showToolBar(Z)V

    .line 430
    const v0, 0x7f0d000b

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/motorola/Camera/View/CaptureCluster;

    .line 431
    .local v7, captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    if-eqz v7, :cond_9

    .line 432
    invoke-virtual {v7, v1}, Lcom/motorola/Camera/View/CaptureCluster;->setCleanView(Z)V

    .line 435
    .end local v7           #captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    :cond_9
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_a

    const-string v0, "MotoCameraKPI"

    const-string v1, "control updatethumb enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_a
    return-void

    .line 351
    .end local v8           #display:Landroid/view/Display;
    .end local v11           #upperPadding:I
    :cond_b
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 353
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 357
    :cond_c
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_d

    .line 358
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v2, "updateThumbnail() - everything is valid, set mini thumbnail"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_d
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_e

    .line 361
    const-string v0, "MotoOnScreenControllerOpenGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateThumbnail() - everything is valid, scale is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v12

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v10

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_e
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_f

    .line 364
    const-string v0, "MotoOnScreenControllerOpenGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateThumbnail() - everything is valid, w and h is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_f
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_10

    const-string v0, "MotoCameraKPI"

    const-string v2, "control updatethumb got wxh"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_10
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 370
    .local v5, rotationMatrix:Landroid/graphics/Matrix;
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_11

    const-string v0, "MotoOnScreenControllerOpenGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateThumbnail() - orientation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_11
    int-to-float v0, p2

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 373
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_12

    const-string v0, "MotoOnScreenControllerOpenGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateThumbnail() Scale W & H"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v12, -0xe

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v10, -0xe

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_12
    add-int/lit8 v0, v12, -0xe

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    add-int/lit8 v2, v10, -0xe

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 378
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 379
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_13

    .line 380
    const-string v0, "MotoOnScreenControllerOpenGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE_THUMBNAIL() - everything is valid, scaled w and h is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_13
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_14

    const-string v0, "MotoCameraKPI"

    const-string v2, "control updatethumb bitmap rotated"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_14
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    .line 390
    .end local v5           #rotationMatrix:Landroid/graphics/Matrix;
    :cond_15
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_1

    .line 404
    :cond_16
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBottom()I

    move-result v11

    .restart local v11       #upperPadding:I
    goto/16 :goto_2
.end method

.method public updateZoom(I)V
    .locals 2
    .parameter "zoomNum"

    .prologue
    .line 2004
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 2005
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLastProgress:I

    .line 2006
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;

    iget v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLastProgress:I

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/widget/ZoomControlBar;->setZoomIndex(I)V

    .line 2013
    :cond_0
    :goto_0
    return-void

    .line 2007
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getZoomNum()I

    move-result v0

    iget v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLastProgress:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2009
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getZoomNum()I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLastProgress:I

    .line 2010
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;

    iget v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLastProgress:I

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/widget/ZoomControlBar;->setZoomIndex(I)V

    goto :goto_0
.end method
