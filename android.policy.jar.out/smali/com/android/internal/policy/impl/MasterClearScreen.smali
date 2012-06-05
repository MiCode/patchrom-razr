.class public Lcom/android/internal/policy/impl/MasterClearScreen;
.super Landroid/widget/RelativeLayout;
.source "MasterClearScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final AWAKE_POKE_MILLIS:I = 0x7530

.field private static final DBG:Z = false

.field private static final LOW_BATTERY_LEVEL:I = 0x19

.field private static final TAG:Ljava/lang/String; = "MasterClearLockScreen"


# instance fields
.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:I

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field mContext:Landroid/content/Context;

.field private mCreationHardKeyboardHidden:I

.field private mCreationOrientation:I

.field private mFinalButton:Landroid/widget/Button;

.field private mFinalView:Landroid/view/View;

.field private mInitialView:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 3
    .parameter "context"
    .parameter "configuration"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "lockPatternUtils"

    .prologue
    const/4 v2, 0x1

    .line 86
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/MasterClearScreen;->mBatteryLevel:I

    .line 66
    new-instance v0, Lcom/android/internal/policy/impl/MasterClearScreen$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MasterClearScreen$1;-><init>(Lcom/android/internal/policy/impl/MasterClearScreen;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MasterClearScreen;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 87
    iput-object p4, p0, Lcom/android/internal/policy/impl/MasterClearScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 88
    iput-object p5, p0, Lcom/android/internal/policy/impl/MasterClearScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 89
    iput-object p1, p0, Lcom/android/internal/policy/impl/MasterClearScreen;->mContext:Landroid/content/Context;

    .line 92
    iget v0, p2, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/internal/policy/impl/MasterClearScreen;->mCreationOrientation:I

    .line 93
    iget v0, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Lcom/android/internal/policy/impl/MasterClearScreen;->mCreationHardKeyboardHidden:I

    .line 96
    iget-object v0, p0, Lcom/android/internal/policy/impl/MasterClearScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x10900cd

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MasterClearScreen;->mInitialView:Landroid/view/View;

    .line 99
    const v0, 0x102038a

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MasterClearScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MasterClearScreen;->mInitiateButton:Landroid/widget/Button;

    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/MasterClearScreen;->mInitiateButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/MasterClearScreen;->mInitialView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 103
    iget-object v0, p0, Lcom/android/internal/policy/impl/MasterClearScreen;->mInitialView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 105
    iput-object p3, p0, Lcom/android/internal/policy/impl/MasterClearScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 107
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/MasterClearScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/android/internal/policy/impl/MasterClearScreen;->mBatteryLevel:I

    return p1
.end method


# virtual methods
.method public cleanUp()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 177
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 179
    iget-object v0, p0, Lcom/android/internal/policy/impl/MasterClearScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/android/internal/policy/impl/MasterClearScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->forgotPattern(Z)V

    .line 186
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 188
    :goto_1
    return v0

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/MasterClearScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/internal/policy/impl/MasterClearScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->forgotPassword(Z)V

    goto :goto_0

    .line 188
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public getCreationOrientation()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/android/internal/policy/impl/MasterClearScreen;->mCreationOrientation:I

    return v0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 194
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 195
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MasterClearScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 196
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/android/internal/policy/impl/MasterClearScreen;->mCreationOrientation:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v2, p0, Lcom/android/internal/policy/impl/MasterClearScreen;->mCreationHardKeyboardHidden:I

    if-eq v1, v2, :cond_1

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/MasterClearScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1, v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 200
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 140
    iget-object v2, p0, Lcom/android/internal/policy/impl/MasterClearScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v3, 0x7530

    invoke-interface {v2, v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 141
    iget-object v2, p0, Lcom/android/internal/policy/impl/MasterClearScreen;->mInitiateButton:Landroid/widget/Button;

    if-ne p1, v2, :cond_0

    .line 142
    iget v2, p0, Lcom/android/internal/policy/impl/MasterClearScreen;->mBatteryLevel:I

    const/16 v3, 0x19

    if-lt v2, v3, :cond_2

    .line 143
    iget-object v2, p0, Lcom/android/internal/policy/impl/MasterClearScreen;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x10900ce

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/MasterClearScreen;->mFinalView:Landroid/view/View;

    .line 146
    const v2, 0x102038b

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/MasterClearScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/policy/impl/MasterClearScreen;->mFinalButton:Landroid/widget/Button;

    .line 147
    iget-object v2, p0, Lcom/android/internal/policy/impl/MasterClearScreen;->mFinalButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v2, p0, Lcom/android/internal/policy/impl/MasterClearScreen;->mFinalView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 150
    iget-object v2, p0, Lcom/android/internal/policy/impl/MasterClearScreen;->mFinalView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 151
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MasterClearScreen;->requestLayout()V

    .line 153
    iget-object v2, p0, Lcom/android/internal/policy/impl/MasterClearScreen;->mFinalView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 154
    iget-object v2, p0, Lcom/android/internal/policy/impl/MasterClearScreen;->mFinalView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 167
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/MasterClearScreen;->mFinalButton:Landroid/widget/Button;

    if-ne p1, v2, :cond_1

    .line 168
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    .local v1, intent_mc:Landroid/content/Intent;
    const-string v2, "partition"

    const-string v3, "ap"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    iget-object v2, p0, Lcom/android/internal/policy/impl/MasterClearScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 173
    .end local v1           #intent_mc:Landroid/content/Intent;
    :cond_1
    return-void

    .line 156
    :cond_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/internal/policy/impl/MasterClearScreen;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040574

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MasterClearScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040572

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 162
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 163
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 205
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 206
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/internal/policy/impl/MasterClearScreen;->mCreationOrientation:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v1, p0, Lcom/android/internal/policy/impl/MasterClearScreen;->mCreationHardKeyboardHidden:I

    if-eq v0, v1, :cond_1

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MasterClearScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 210
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MasterClearScreen;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MasterClearScreen;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/internal/policy/impl/MasterClearScreen;->mInitialView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocusFromTouch()Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/internal/policy/impl/MasterClearScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x7530

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 129
    iget-object v0, p0, Lcom/android/internal/policy/impl/MasterClearScreen;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MasterClearScreen;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 131
    return-void
.end method
