.class Lcom/android/internal/policy/impl/LockScreen;
.super Landroid/widget/LinearLayout;
.source "LockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/LockScreen$DimHandler;,
        Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;,
        Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;,
        Lcom/android/internal/policy/impl/LockScreen$WaveViewMethods;,
        Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;,
        Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final ENABLE_MENU_KEY_FILE:Ljava/lang/String; = "/data/local/enable_menu_key"

.field private static final MSG_BEGIN_DIM:I = 0x64

.field private static final MSG_FINISH_DIM:I = 0x66

.field private static final MSG_RESUME_DIM:I = 0x65

.field private static final ON_RESUME_PING_DELAY:I = 0x1f4

.field private static final STAY_ON_WHILE_GRABBED_TIMEOUT:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "LockScreen"

.field private static final WAIT_FOR_ANIMATION_TIMEOUT:I


# instance fields
.field private final DIM_ALPHA:I

.field private final DIM_DELTA_ALPHA:I

.field private final FADE_OUT_DELAY_TIME:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCreationOrientation:I

.field private mCreationScreenLayout:I

.field private mCurrentBgAlpha:I

.field private mCurrentBgColor:I

.field private mDimHandler:Lcom/android/internal/policy/impl/LockScreen$DimHandler;

.field private mEnableMenuKeyInLockScreen:Z

.field private mIsTablet:Z

.field private mKeyboardHidden:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mOnResumePing:Ljava/lang/Runnable;

.field private mPingDelayTime:I

.field private mShouldDim:Z

.field private mSilentMode:Z

.field private mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

.field private mUnlockWidget:Landroid/view/View;

.field private mUnlockWidgetLocation:[I

.field private mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 17
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 687
    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 120
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetLocation:[I

    .line 128
    const/16 v2, 0x99

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/LockScreen;->DIM_ALPHA:I

    .line 129
    const/16 v2, 0x22

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/LockScreen;->DIM_DELTA_ALPHA:I

    .line 130
    const/4 v2, 0x5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/LockScreen;->FADE_OUT_DELAY_TIME:I

    .line 131
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/LockScreen;->mCurrentBgColor:I

    .line 132
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/LockScreen;->mCurrentBgAlpha:I

    .line 133
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/LockScreen;->mShouldDim:Z

    .line 134
    new-instance v2, Lcom/android/internal/policy/impl/LockScreen$DimHandler;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/internal/policy/impl/LockScreen$DimHandler;-><init>(Lcom/android/internal/policy/impl/LockScreen;Lcom/android/internal/policy/impl/LockScreen$1;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/LockScreen;->mDimHandler:Lcom/android/internal/policy/impl/LockScreen$DimHandler;

    .line 135
    const/16 v2, 0x1f4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/LockScreen;->mPingDelayTime:I

    .line 138
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/LockScreen;->mIsTablet:Z

    .line 838
    new-instance v2, Lcom/android/internal/policy/impl/LockScreen$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/internal/policy/impl/LockScreen$2;-><init>(Lcom/android/internal/policy/impl/LockScreen;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/LockScreen;->mOnResumePing:Ljava/lang/Runnable;

    .line 688
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 689
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 690
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 692
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/LockScreen;->shouldEnableMenuKey()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/LockScreen;->mEnableMenuKeyInLockScreen:Z

    .line 694
    move-object/from16 v0, p2

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    .line 697
    move-object/from16 v0, p2

    iget v2, v0, Landroid/content/res/Configuration;->screenLayout:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/LockScreen;->mCreationScreenLayout:I

    .line 700
    move-object/from16 v0, p2

    iget v2, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/LockScreen;->mKeyboardHidden:I

    .line 703
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/LockScreen;->isTablet()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/LockScreen;->mIsTablet:Z

    .line 712
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 714
    .local v8, inflater:Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 715
    const v2, 0x1090058

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v8, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 720
    :goto_0
    new-instance v2, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/LockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    .line 723
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/LockScreen;->setFocusable(Z)V

    .line 724
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/LockScreen;->setFocusableInTouchMode(Z)V

    .line 725
    const/high16 v2, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/LockScreen;->setDescendantFocusability(I)V

    .line 727
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    .line 728
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/LockScreen;->isSilentMode()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    .line 730
    const v2, 0x10202dc

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    .line 731
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    instance-of v2, v2, Lcom/android/internal/widget/SlidingTab;

    if-eqz v2, :cond_1

    .line 732
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v14, Lcom/android/internal/widget/SlidingTab;

    .line 733
    .local v14, slidingTabView:Lcom/android/internal/widget/SlidingTab;
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v14, v2, v3}, Lcom/android/internal/widget/SlidingTab;->setHoldAfterTrigger(ZZ)V

    .line 734
    const v2, 0x104031c

    invoke-virtual {v14, v2}, Lcom/android/internal/widget/SlidingTab;->setLeftHintText(I)V

    .line 735
    const v2, 0x10802cb

    const v3, 0x1080396

    const v4, 0x1080377

    const v5, 0x108038a

    invoke-virtual {v14, v2, v3, v4, v5}, Lcom/android/internal/widget/SlidingTab;->setLeftTabResources(IIII)V

    .line 740
    new-instance v13, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;-><init>(Lcom/android/internal/policy/impl/LockScreen;Lcom/android/internal/widget/SlidingTab;)V

    .line 741
    .local v13, slidingTabMethods:Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;
    invoke-virtual {v14, v13}, Lcom/android/internal/widget/SlidingTab;->setOnTriggerListener(Lcom/android/internal/widget/SlidingTab$OnTriggerListener;)V

    .line 742
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;

    .line 768
    .end local v13           #slidingTabMethods:Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;
    .end local v14           #slidingTabView:Lcom/android/internal/widget/SlidingTab;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;->updateResources()V

    .line 771
    return-void

    .line 717
    :cond_0
    const v2, 0x1090059

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v8, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    .line 743
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    instance-of v2, v2, Lcom/android/internal/widget/WaveView;

    if-eqz v2, :cond_2

    .line 744
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v15, Lcom/android/internal/widget/WaveView;

    .line 745
    .local v15, waveView:Lcom/android/internal/widget/WaveView;
    new-instance v16, Lcom/android/internal/policy/impl/LockScreen$WaveViewMethods;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lcom/android/internal/policy/impl/LockScreen$WaveViewMethods;-><init>(Lcom/android/internal/policy/impl/LockScreen;Lcom/android/internal/widget/WaveView;)V

    .line 746
    .local v16, waveViewMethods:Lcom/android/internal/policy/impl/LockScreen$WaveViewMethods;
    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/widget/WaveView;->setOnTriggerListener(Lcom/android/internal/widget/WaveView$OnTriggerListener;)V

    .line 747
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;

    goto :goto_1

    .line 748
    .end local v15           #waveView:Lcom/android/internal/widget/WaveView;
    .end local v16           #waveViewMethods:Lcom/android/internal/policy/impl/LockScreen$WaveViewMethods;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    instance-of v2, v2, Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    if-eqz v2, :cond_3

    .line 749
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v9, Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    .line 750
    .local v9, multiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;
    new-instance v10, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v9}, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;-><init>(Lcom/android/internal/policy/impl/LockScreen;Lcom/android/internal/widget/multiwaveview/MultiWaveView;)V

    .line 751
    .local v10, multiWaveViewMethods:Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;
    invoke-virtual {v9, v10}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;)V

    .line 752
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;

    goto :goto_1

    .line 755
    .end local v9           #multiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;
    .end local v10           #multiWaveViewMethods:Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    instance-of v2, v2, Lcom/motorola/android/widget/RunwayLauncher;

    if-eqz v2, :cond_4

    .line 756
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v11, Lcom/motorola/android/widget/RunwayLauncher;

    .line 757
    .local v11, runwayLauncher:Lcom/motorola/android/widget/RunwayLauncher;
    new-instance v12, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v11}, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;-><init>(Lcom/android/internal/policy/impl/LockScreen;Lcom/motorola/android/widget/RunwayLauncher;)V

    .line 758
    .local v12, runwaylauncherMethods:Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lcom/motorola/android/widget/RunwayLauncher;->setVibrateEnabled(Z)V

    .line 759
    invoke-virtual {v11, v12}, Lcom/motorola/android/widget/RunwayLauncher;->setOnTriggerListener(Lcom/motorola/android/widget/RunwayLauncher$OnTriggerListener;)V

    .line 760
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;

    .line 761
    const/16 v2, 0x64

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/LockScreen;->mPingDelayTime:I

    goto :goto_1

    .line 764
    .end local v11           #runwayLauncher:Lcom/motorola/android/widget/RunwayLauncher;
    .end local v12           #runwaylauncherMethods:Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized unlock widget: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 120
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/LockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/LockScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/LockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mIsTablet:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/LockScreen$DimHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mDimHandler:Lcom/android/internal/policy/impl/LockScreen$DimHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/LockScreen;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/LockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->resumeBackgroundColor()V

    return-void
.end method

.method static synthetic access$2102(Lcom/android/internal/policy/impl/LockScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockScreen;->mShouldDim:Z

    return p1
.end method

.method static synthetic access$2202(Lcom/android/internal/policy/impl/LockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput p1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCurrentBgAlpha:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/LockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->toggleRingMode()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/LockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->isSilentMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/LockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->requestUnlockScreen()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;

    return-object v0
.end method

.method private isSilentMode()Z
    .locals 2

    .prologue
    .line 774
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTablet()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 933
    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 935
    .local v1, wm:Landroid/view/IWindowManager;
    const/4 v0, 0x0

    .line 937
    .local v0, status:Z
    if-eqz v1, :cond_0

    .line 938
    :try_start_0
    invoke-interface {v1}, Landroid/view/IWindowManager;->canStatusBarHide()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 942
    :cond_0
    :goto_0
    if-ne v0, v2, :cond_1

    .line 943
    const/4 v2, 0x0

    .line 946
    :cond_1
    return v2

    .line 940
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private requestUnlockScreen()V
    .locals 3

    .prologue
    .line 637
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/LockScreen$1;-><init>(Lcom/android/internal/policy/impl/LockScreen;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/LockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 643
    return-void
.end method

.method private resumeBackgroundColor()V
    .locals 4

    .prologue
    .line 597
    iget v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCurrentBgAlpha:I

    const/16 v1, 0x99

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCurrentBgAlpha:I

    if-lez v0, :cond_0

    .line 598
    iget v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCurrentBgAlpha:I

    add-int/lit8 v0, v0, -0x22

    iput v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCurrentBgAlpha:I

    .line 599
    iget v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCurrentBgAlpha:I

    if-gez v0, :cond_0

    .line 600
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCurrentBgAlpha:I

    .line 603
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCurrentBgAlpha:I

    if-eqz v0, :cond_1

    .line 604
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mDimHandler:Lcom/android/internal/policy/impl/LockScreen$DimHandler;

    const/16 v1, 0x65

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/LockScreen$DimHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 608
    :goto_0
    return-void

    .line 606
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mDimHandler:Lcom/android/internal/policy/impl/LockScreen$DimHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockScreen$DimHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private shouldEnableMenuKey()Z
    .locals 6

    .prologue
    .line 669
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 670
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x111001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 671
    .local v0, configDisabled:Z
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v2

    .line 672
    .local v2, isTestHarness:Z
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/local/enable_menu_key"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    .line 673
    .local v1, fileOverride:Z
    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private toggleRingMode()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 647
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    .line 648
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v1, :cond_3

    .line 649
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "vibrate_in_silent"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v0, v2

    .line 653
    .local v0, vibe:Z
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 659
    .end local v0           #vibe:Z
    :goto_3
    return-void

    :cond_0
    move v1, v3

    .line 647
    goto :goto_0

    :cond_1
    move v0, v3

    .line 649
    goto :goto_1

    .restart local v0       #vibe:Z
    :cond_2
    move v2, v3

    .line 653
    goto :goto_2

    .line 657
    .end local v0           #vibe:Z
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_3
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 856
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mDimHandler:Lcom/android/internal/policy/impl/LockScreen$DimHandler;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/LockScreen$DimHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 857
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mOnResumePing:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 859
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 864
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 899
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mShouldDim:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCurrentBgAlpha:I

    if-lez v0, :cond_0

    .line 900
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 901
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 903
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 904
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mShouldDim:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCurrentBgAlpha:I

    if-lez v0, :cond_1

    .line 905
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 906
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 907
    iget v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCurrentBgAlpha:I

    shl-int/lit8 v0, v0, 0x18

    iput v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCurrentBgColor:I

    .line 908
    iget v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCurrentBgColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 909
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 911
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetLocation:[I

    aget v0, v0, v2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetLocation:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 913
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v1

    invoke-super {p0, p1, v0, v1, v2}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 914
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 916
    :cond_1
    return-void
.end method

.method public getCreationOrientation()I
    .locals 1

    .prologue
    .line 880
    iget v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    return v0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 826
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 803
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 809
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateConfiguration()V

    .line 810
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 815
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 821
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateConfiguration()V

    .line 822
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "ev"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 923
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mShouldDim:Z

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 924
    new-instance v0, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 926
    .local v0, rect:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetLocation:[I

    aget v3, v3, v2

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetLocation:[I

    aget v4, v4, v1

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 927
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 929
    .end local v0           #rect:Landroid/graphics/Rect;
    :goto_0
    return v1

    .restart local v0       #rect:Landroid/graphics/Rect;
    :cond_0
    move v1, v2

    .line 927
    goto :goto_0

    .line 929
    .end local v0           #rect:Landroid/graphics/Rect;
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 779
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEnableMenuKeyInLockScreen:Z

    if-eqz v0, :cond_0

    .line 780
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 782
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 887
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 888
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetLocation:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 891
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetLocation:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    aput v2, v0, v1

    .line 892
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetLocation:[I

    const/4 v1, 0x1

    aget v2, v0, v1

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    aput v2, v0, v1

    .line 895
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 831
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onPause()V

    .line 832
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;->reset(Z)V

    .line 834
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mDimHandler:Lcom/android/internal/policy/impl/LockScreen$DimHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockScreen$DimHandler;->sendEmptyMessage(I)Z

    .line 836
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 876
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 846
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onResume()V

    .line 848
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mOnResumePing:Ljava/lang/Runnable;

    iget v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mPingDelayTime:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/LockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 850
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 868
    const/4 v1, 0x2

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 869
    .local v0, silent:Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eq v0, v1, :cond_0

    .line 870
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    .line 871
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;->updateResources()V

    .line 873
    :cond_0
    return-void

    .line 868
    .end local v0           #silent:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateConfiguration()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 786
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 789
    .local v1, newConfig:Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->orientation:I

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    if-ne v2, v3, :cond_0

    iget v2, v1, Landroid/content/res/Configuration;->screenLayout:I

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mCreationScreenLayout:I

    if-eq v2, v3, :cond_2

    .line 791
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 799
    :cond_1
    :goto_0
    return-void

    .line 792
    :cond_2
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mKeyboardHidden:I

    if-eq v2, v3, :cond_1

    .line 793
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mKeyboardHidden:I

    .line 794
    iget v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mKeyboardHidden:I

    if-ne v2, v0, :cond_3

    .line 795
    .local v0, isKeyboardOpen:Z
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isKeyguardBypassEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 796
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    .line 794
    .end local v0           #isKeyboardOpen:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
