.class public Lcom/android/internal/policy/impl/PasswordSetupScreen;
.super Landroid/widget/LinearLayout;
.source "PasswordSetupScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;
    }
.end annotation


# static fields
.field private static final CONFIRM_EXISTING_REQUEST:I = 0x3a

.field public static DEBUG:Z = false

.field private static final ERROR_MESSAGE_TIMEOUT:J = 0xbb8L

.field private static final KEY_FIRST_PIN:Ljava/lang/String; = "first_pin"

.field private static final KEY_UI_STAGE:Ljava/lang/String; = "ui_stage"

.field public static final PASSWORD_MAX_KEY:Ljava/lang/String; = "lockscreen.password_max"

.field public static final PASSWORD_MIN_COMPLEXITY_KEY:Ljava/lang/String; = "lockscreen.password_min_complexity"

.field public static final PASSWORD_MIN_KEY:Ljava/lang/String; = "lockscreen.password_min"

.field private static final POLICY_MESSAGE_TIMEOUT:I = 0x7530

.field public static TAG:Ljava/lang/String;

.field private static mFirstPin:Ljava/lang/String;

.field private static mHandler:Landroid/os/Handler;

.field private static mShowPolicy:Z

.field private static mUiStage:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;


# instance fields
.field private dialog:Landroid/app/AlertDialog;

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCreationHardKeyboardHidden:I

.field private mCreationOrientation:I

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEmergencyCallButton:Landroid/widget/Button;

.field private mEndHeaderText:Landroid/widget/TextView;

.field private mHeaderImage:Landroid/widget/ImageView;

.field private mHeaderText:Landroid/widget/TextView;

.field private mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

.field private final mIsAlpha:Z

.field private mIsKeyboardOpen:Z

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardView:Landroid/inputmethodservice/KeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMaxComplexity:I

.field private mPasswordEntry:Landroid/widget/EditText;

.field private mPasswordMaxLength:I

.field private mPasswordMinComplexity:I

.field private mPasswordMinLength:I

.field protected mPhoneState:I

.field private mRequestedQuality:I

.field private mResuming:Z

.field private final mShowEmergencyButtonByDefault:Z

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private final mUseSystemIME:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->DEBUG:Z

    .line 77
    const-string v0, "PasswordSetupScreen"

    sput-object v0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->TAG:Ljava/lang/String;

    .line 91
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mShowPolicy:Z

    .line 99
    sget-object v0, Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;->Introduction:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    sput-object v0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mUiStage:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    .line 117
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 10
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 156
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 87
    const/4 v6, 0x4

    iput v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordMinLength:I

    .line 88
    const/16 v6, 0x10

    iput v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordMaxLength:I

    .line 89
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordMinComplexity:I

    .line 90
    const/4 v6, 0x4

    iput v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mMaxComplexity:I

    .line 92
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mUseSystemIME:Z

    .line 93
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mResuming:Z

    .line 95
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mIsKeyboardOpen:Z

    .line 98
    const/high16 v6, 0x2

    iput v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mRequestedQuality:I

    .line 798
    new-instance v6, Lcom/android/internal/policy/impl/PasswordSetupScreen$8;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen$8;-><init>(Lcom/android/internal/policy/impl/PasswordSetupScreen;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    .line 158
    iget v6, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mCreationHardKeyboardHidden:I

    .line 159
    iget v6, p2, Landroid/content/res/Configuration;->orientation:I

    iput v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mCreationOrientation:I

    .line 160
    iput-object p4, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 161
    iput-object p5, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 162
    iput-object p3, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 164
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 165
    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    iget v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mCreationOrientation:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_a

    .line 166
    const v6, 0x10900c2

    const/4 v7, 0x1

    invoke-virtual {v1, v6, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 172
    :goto_0
    const-string v6, "device_policy"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/admin/DevicePolicyManager;

    iput-object v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 173
    iget-object v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v2

    .line 174
    .local v2, minLength:I
    sget-boolean v6, Lcom/android/internal/policy/impl/PasswordSetupScreen;->DEBUG:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/internal/policy/impl/PasswordSetupScreen;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Policy: password length="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_0
    iget v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordMinLength:I

    if-ge v6, v2, :cond_1

    .line 176
    iput v2, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordMinLength:I

    .line 179
    :cond_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getMotDevicePolicyManager()Lcom/motorola/motepm/MotDevicePolicyManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/motorola/motepm/MotDevicePolicyManager;->getPasswordMinimumComplexity(Landroid/content/ComponentName;)I

    move-result v6

    iput v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordMinComplexity:I

    .line 180
    sget-boolean v6, Lcom/android/internal/policy/impl/PasswordSetupScreen;->DEBUG:Z

    if-eqz v6, :cond_2

    sget-object v6, Lcom/android/internal/policy/impl/PasswordSetupScreen;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Policy: password min complexity="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordMinComplexity:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_2
    iget v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordMinComplexity:I

    iget v7, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mMaxComplexity:I

    if-le v6, v7, :cond_3

    .line 182
    iget v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mMaxComplexity:I

    iput v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordMinComplexity:I

    .line 185
    :cond_3
    iget-object v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality()I

    move-result v3

    .line 186
    .local v3, minMode:I
    sget-boolean v6, Lcom/android/internal/policy/impl/PasswordSetupScreen;->DEBUG:Z

    if-eqz v6, :cond_4

    sget-object v6, Lcom/android/internal/policy/impl/PasswordSetupScreen;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Policy: password quality="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_4
    iget v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mRequestedQuality:I

    if-ge v6, v3, :cond_5

    .line 188
    iput v3, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mRequestedQuality:I

    .line 192
    :cond_5
    const v6, 0x10202bf

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mHeaderText:Landroid/widget/TextView;

    .line 193
    const v6, 0x1020374

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mHeaderImage:Landroid/widget/ImageView;

    .line 194
    const v6, 0x1020375

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mEndHeaderText:Landroid/widget/TextView;

    .line 197
    const v6, 0x10202ba

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordEntry:Landroid/widget/EditText;

    .line 198
    iget-object v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->requestFocus()Z

    .line 199
    iget-object v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v6, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 202
    const v6, 0x1020215

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    .line 203
    new-instance v6, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v7, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    const/4 v8, 0x0

    invoke-direct {v6, p1, v7, p0, v8}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;Z)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    .line 204
    iget-object v7, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "lock_pattern_tactile_feedback_enabled"

    const/4 v9, 0x0

    invoke-static {v6, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_b

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v7, v6}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setEnableHaptics(Z)V

    .line 211
    iget v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mRequestedQuality:I

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->isPasswordType(I)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->isPasswordType(I)Z

    move-result v6

    if-eqz v6, :cond_c

    :cond_6
    const/4 v6, 0x1

    :goto_2
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mIsAlpha:Z

    .line 215
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mIsAlpha:Z

    if-eqz v6, :cond_d

    .line 217
    iget-object v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 218
    iget-object v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/inputmethodservice/KeyboardView;->setVisibility(I)V

    .line 240
    :cond_7
    :goto_3
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mIsAlpha:Z

    if-eqz v6, :cond_f

    .line 241
    iget-object v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 242
    iget-object v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordEntry:Landroid/widget/EditText;

    const/16 v7, 0x81

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 251
    :goto_4
    iget-object v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordEntry:Landroid/widget/EditText;

    new-instance v7, Lcom/android/internal/policy/impl/PasswordSetupScreen$2;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen$2;-><init>(Lcom/android/internal/policy/impl/PasswordSetupScreen;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordEntry:Landroid/widget/EditText;

    new-instance v7, Lcom/android/internal/policy/impl/PasswordSetupScreen$3;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen$3;-><init>(Lcom/android/internal/policy/impl/PasswordSetupScreen;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 277
    const v6, 0x10202bc

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 278
    .local v5, switchImeButton:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "input_method"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 280
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mIsAlpha:Z

    if-eqz v6, :cond_8

    if-eqz v5, :cond_8

    const/4 v6, 0x0

    invoke-direct {p0, v0, v6}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 281
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 282
    new-instance v6, Lcom/android/internal/policy/impl/PasswordSetupScreen$4;

    invoke-direct {v6, p0, v0}, Lcom/android/internal/policy/impl/PasswordSetupScreen$4;-><init>(Lcom/android/internal/policy/impl/PasswordSetupScreen;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    :cond_8
    const v6, 0x102029f

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mEmergencyCallButton:Landroid/widget/Button;

    .line 292
    iget-object v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mEmergencyCallButton:Landroid/widget/Button;

    if-eqz v6, :cond_9

    .line 293
    iget-object v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mEmergencyCallButton:Landroid/widget/Button;

    const v7, 0x10402f2

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 294
    iget-object v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mEmergencyCallButton:Landroid/widget/Button;

    new-instance v7, Lcom/android/internal/policy/impl/PasswordSetupScreen$5;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen$5;-><init>(Lcom/android/internal/policy/impl/PasswordSetupScreen;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    iget-object v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mEmergencyCallButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setFocusable(Z)V

    .line 301
    :cond_9
    iget-object v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v7, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 302
    sget-object v6, Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;->Introduction:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    sput-object v6, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mUiStage:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    .line 303
    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mShowPolicy:Z

    .line 304
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->updateUi()V

    .line 305
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mShowEmergencyButtonByDefault:Z

    .line 306
    return-void

    .line 168
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v2           #minLength:I
    .end local v3           #minMode:I
    .end local v5           #switchImeButton:Landroid/view/View;
    :cond_a
    const v6, 0x10900c1

    const/4 v7, 0x1

    invoke-virtual {v1, v6, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    .line 204
    .restart local v2       #minLength:I
    .restart local v3       #minMode:I
    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 211
    :cond_c
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 221
    :cond_d
    iget-object v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 222
    iget-object v7, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mCreationHardKeyboardHidden:I

    const/4 v8, 0x1

    if-ne v6, v8, :cond_e

    const/4 v6, 0x4

    :goto_5
    invoke-virtual {v7, v6}, Landroid/inputmethodservice/KeyboardView;->setVisibility(I)V

    .line 227
    const v6, 0x10202bb

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 228
    .local v4, pinDelete:Landroid/view/View;
    if-eqz v4, :cond_7

    .line 229
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 230
    new-instance v6, Lcom/android/internal/policy/impl/PasswordSetupScreen$1;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen$1;-><init>(Lcom/android/internal/policy/impl/PasswordSetupScreen;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 222
    .end local v4           #pinDelete:Landroid/view/View;
    :cond_e
    const/4 v6, 0x0

    goto :goto_5

    .line 245
    :cond_f
    iget-object v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 246
    iget-object v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordEntry:Landroid/widget/EditText;

    const/16 v7, 0x12

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_4
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/PasswordSetupScreen;)Lcom/android/internal/widget/PasswordEntryKeyboardHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/PasswordSetupScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$200()Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mUiStage:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;)Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    sput-object p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mUiStage:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/PasswordSetupScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->updateUi()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/PasswordSetupScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mResuming:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    sput-boolean p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mShowPolicy:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/PasswordSetupScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->updateEmergencyCallButtonState(I)V

    return-void
.end method

.method private handleNext()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 588
    iget-object v3, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 589
    .local v1, pin:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 622
    :cond_0
    :goto_0
    return-void

    .line 592
    :cond_1
    const/4 v0, 0x0

    .line 593
    .local v0, errorMsg:Ljava/lang/String;
    sget-object v3, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mUiStage:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    sget-object v4, Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;->Introduction:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    if-ne v3, v4, :cond_3

    .line 594
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 595
    if-nez v0, :cond_2

    .line 596
    sput-object v1, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mFirstPin:Ljava/lang/String;

    .line 597
    sget-object v3, Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;->NeedToConfirm:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->updateStage(Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;)V

    .line 598
    iget-object v3, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordEntry:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 619
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 620
    sget-object v3, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mUiStage:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    invoke-direct {p0, v0, v3}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->showError(Ljava/lang/String;Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;)V

    goto :goto_0

    .line 600
    :cond_3
    sget-object v3, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mUiStage:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    sget-object v4, Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;->NeedToConfirm:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    if-ne v3, v4, :cond_2

    .line 601
    sget-object v3, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mFirstPin:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 602
    iget-object v3, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 603
    iget-object v3, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mRequestedQuality:I

    invoke-virtual {v3, v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;I)V

    .line 604
    iget-object v3, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getMotDevicePolicyManager()Lcom/motorola/motepm/MotDevicePolicyManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/motorola/motepm/MotDevicePolicyManager;->enforcePasswordSet(Z)V

    .line 605
    iget-object v3, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v3, v3, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMotoUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->setDeviceRequestPasswordSetup(Z)V

    .line 607
    sget-object v3, Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;->Introduction:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    sput-object v3, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mUiStage:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    .line 608
    sput-boolean v6, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mShowPolicy:Z

    .line 609
    const-string v3, ""

    sput-object v3, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mFirstPin:Ljava/lang/String;

    .line 610
    iget-object v3, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v3, v6}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    goto :goto_1

    .line 612
    :cond_4
    sget-object v3, Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;->ConfirmWrong:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->updateStage(Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;)V

    .line 613
    iget-object v3, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 614
    .local v2, tmp:Ljava/lang/CharSequence;
    if-eqz v2, :cond_2

    move-object v3, v2

    .line 615
    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {v3, v5, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_1
.end method

.method private handlePrevious()V
    .locals 2

    .prologue
    .line 625
    sget-object v0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mUiStage:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    sget-object v1, Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;->Introduction:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    if-eq v0, v1, :cond_0

    .line 626
    const-string v0, ""

    sput-object v0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mFirstPin:Ljava/lang/String;

    .line 627
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordEntry:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 628
    sget-object v0, Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;->Introduction:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->updateStage(Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;)V

    .line 630
    :cond_0
    return-void
.end method

.method private hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z
    .locals 12
    .parameter "imm"
    .parameter "shouldIncludeAuxiliarySubtypes"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 317
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 320
    .local v1, enabledImis:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v2, 0x0

    .line 322
    .local v2, filteredImisCount:I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 324
    .local v5, imi:Landroid/view/inputmethod/InputMethodInfo;
    if-le v2, v10, :cond_1

    .line 349
    .end local v5           #imi:Landroid/view/inputmethod/InputMethodInfo;
    :goto_1
    return v10

    .line 325
    .restart local v5       #imi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    invoke-virtual {p1, v5, v10}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v8

    .line 328
    .local v8, subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 329
    add-int/lit8 v2, v2, 0x1

    .line 330
    goto :goto_0

    .line 332
    :cond_2
    const/4 v0, 0x0

    .line 333
    .local v0, auxCount:I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodSubtype;

    .line 334
    .local v7, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 335
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 338
    .end local v7           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    sub-int v6, v11, v0

    .line 343
    .local v6, nonAuxCount:I
    if-gtz v6, :cond_5

    if-eqz p2, :cond_0

    if-le v0, v10, :cond_0

    .line 344
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 345
    goto :goto_0

    .line 349
    .end local v0           #auxCount:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v6           #nonAuxCount:I
    .end local v8           #subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_6
    if-gt v2, v10, :cond_7

    const/4 v11, 0x0

    invoke-virtual {p1, v11, v9}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v10, :cond_8

    :cond_7
    move v9, v10

    :cond_8
    move v10, v9

    goto :goto_1
.end method

.method private isPasswordType(I)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 357
    const/high16 v0, 0x4

    if-eq v0, p1, :cond_0

    const/high16 v0, 0x5

    if-eq v0, p1, :cond_0

    const/high16 v0, 0x6

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showError(Ljava/lang/String;Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;)V
    .locals 4
    .parameter "msg"
    .parameter "next"

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 634
    sget-object v0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PasswordSetupScreen$6;

    invoke-direct {v1, p0, p2}, Lcom/android/internal/policy/impl/PasswordSetupScreen$6;-><init>(Lcom/android/internal/policy/impl/PasswordSetupScreen;Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 639
    return-void
.end method

.method private showPolicy()V
    .locals 12

    .prologue
    const/high16 v11, 0x6

    const/4 v10, 0x4

    const/4 v9, 0x0

    const/4 v8, 0x1

    const v7, 0x10405e7

    .line 707
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mIsAlpha:Z

    if-eqz v2, :cond_9

    const v2, 0x1040630

    :goto_0
    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 711
    .local v1, title:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mIsAlpha:Z

    if-eqz v2, :cond_a

    const v2, 0x104061b

    :goto_1
    new-array v4, v8, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordMinLength:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 714
    .local v0, message:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 717
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 718
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mIsAlpha:Z

    if-eqz v2, :cond_b

    const v2, 0x104061f

    :goto_2
    new-array v5, v8, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordMaxLength:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 720
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 724
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mIsAlpha:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mRequestedQuality:I

    if-ne v11, v2, :cond_1

    .line 725
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 726
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1040624

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 727
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 731
    :cond_1
    const/high16 v2, 0x5

    iget v3, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mRequestedQuality:I

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mRequestedQuality:I

    if-ne v11, v2, :cond_3

    .line 733
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 734
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1040625

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 735
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 739
    :cond_3
    iget v2, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mRequestedQuality:I

    if-ne v11, v2, :cond_4

    .line 740
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 741
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1040626

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 742
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 747
    :cond_4
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mIsAlpha:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordMinComplexity:I

    if-le v2, v8, :cond_5

    .line 748
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 749
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x104051a

    new-array v5, v8, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordMinComplexity:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 754
    :cond_5
    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getMotDevicePolicyManager()Lcom/motorola/motepm/MotDevicePolicyManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v10}, Lcom/motorola/motepm/MotDevicePolicyManager;->isPolicyAllowed(Landroid/content/ComponentName;I)Z

    move-result v2

    if-nez v2, :cond_6

    const/high16 v2, 0x2

    iget v3, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mRequestedQuality:I

    if-ne v2, v3, :cond_6

    .line 756
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 757
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1040503

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 758
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 760
    :cond_6
    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getMotDevicePolicyManager()Lcom/motorola/motepm/MotDevicePolicyManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v10}, Lcom/motorola/motepm/MotDevicePolicyManager;->isPolicyAllowed(Landroid/content/ComponentName;I)Z

    move-result v2

    if-nez v2, :cond_7

    const/high16 v2, 0x4

    iget v3, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mRequestedQuality:I

    if-ne v2, v3, :cond_7

    .line 762
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 763
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1040505

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 764
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 767
    :cond_7
    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->dialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_8

    .line 768
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x108009b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/internal/policy/impl/PasswordSetupScreen$7;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen$7;-><init>(Lcom/android/internal/policy/impl/PasswordSetupScreen;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->dialog:Landroid/app/AlertDialog;

    .line 779
    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 780
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 782
    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v10, v10}, Landroid/view/Window;->setFlags(II)V

    .line 787
    :cond_8
    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 788
    return-void

    .line 707
    .end local v0           #message:Ljava/lang/String;
    .end local v1           #title:Ljava/lang/String;
    :cond_9
    const v2, 0x1040631

    goto/16 :goto_0

    .line 711
    .restart local v1       #title:Ljava/lang/String;
    :cond_a
    const v2, 0x104061c

    goto/16 :goto_1

    .line 718
    .restart local v0       #message:Ljava/lang/String;
    :cond_b
    const v2, 0x1040620

    goto/16 :goto_2
.end method

.method private updateEmergencyCallButtonState(I)V
    .locals 3
    .parameter "phoneState"

    .prologue
    .line 791
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mEmergencyCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mShowEmergencyButtonByDefault:Z

    if-eqz v0, :cond_1

    .line 792
    sget-boolean v0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mEmergencyCallButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;IZ)V

    .line 795
    :cond_1
    return-void
.end method

.method private updateUi()V
    .locals 12

    .prologue
    const/16 v8, 0x8

    const/4 v11, 0x0

    .line 655
    iget-object v7, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 656
    .local v6, password:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    .line 657
    .local v4, length:I
    iget-object v7, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 658
    iget-object v7, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mEndHeaderText:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 660
    sget-object v7, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mUiStage:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    sget-object v8, Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;->Introduction:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    if-ne v7, v8, :cond_9

    if-lez v4, :cond_9

    .line 661
    const/4 v2, 0x0

    .line 662
    .local v2, hasIllegalCharacter:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 663
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 664
    .local v0, c:C
    const/16 v7, 0x20

    if-le v0, v7, :cond_0

    const/16 v7, 0x7f

    if-le v0, v7, :cond_2

    .line 665
    :cond_0
    const/4 v2, 0x1

    .line 666
    iget-object v7, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mEndHeaderText:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 670
    .end local v0           #c:C
    :cond_1
    if-eqz v2, :cond_3

    .line 671
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x1040623

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 673
    .local v5, msg:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 700
    .end local v2           #hasIllegalCharacter:Z
    .end local v3           #i:I
    .end local v5           #msg:Ljava/lang/String;
    :goto_1
    return-void

    .line 662
    .restart local v0       #c:C
    .restart local v2       #hasIllegalCharacter:Z
    .restart local v3       #i:I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 674
    .end local v0           #c:C
    :cond_3
    iget v7, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordMinLength:I

    if-ge v4, v7, :cond_5

    .line 675
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mIsAlpha:Z

    if-eqz v7, :cond_4

    const v7, 0x104061b

    :goto_2
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    iget v10, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordMinLength:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v8, v7, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 678
    .restart local v5       #msg:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 675
    .end local v5           #msg:Ljava/lang/String;
    :cond_4
    const v7, 0x104061c

    goto :goto_2

    .line 680
    :cond_5
    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 681
    .local v1, error:Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 682
    iget-object v7, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 684
    :cond_6
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mIsKeyboardOpen:Z

    if-eqz v7, :cond_7

    .line 685
    iget-object v7, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mHeaderText:Landroid/widget/TextView;

    const v8, 0x1040582

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 686
    iget-object v7, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 687
    iget-object v7, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mEndHeaderText:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 689
    :cond_7
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mIsAlpha:Z

    if-eqz v7, :cond_8

    .line 690
    iget-object v7, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mHeaderText:Landroid/widget/TextView;

    const v8, 0x1040633

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 692
    :cond_8
    iget-object v7, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mHeaderText:Landroid/widget/TextView;

    const v8, 0x1040632

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 698
    .end local v1           #error:Ljava/lang/String;
    .end local v2           #hasIllegalCharacter:Z
    .end local v3           #i:I
    :cond_9
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mHeaderText:Landroid/widget/TextView;

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mIsAlpha:Z

    if-eqz v7, :cond_a

    sget-object v7, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mUiStage:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    iget v7, v7, Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;->alphaHint:I

    :goto_3
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_a
    sget-object v7, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mUiStage:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    iget v7, v7, Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;->numericHint:I

    goto :goto_3
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .parameter "password"

    .prologue
    .line 467
    const/4 v5, 0x0

    .line 468
    .local v5, hasDigit:Z
    const/4 v7, 0x0

    .line 469
    .local v7, hasSymbol:Z
    const/4 v8, 0x0

    .line 470
    .local v8, hasUpperAlpha:Z
    const/4 v6, 0x0

    .line 471
    .local v6, hasLowerAlpha:Z
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v9, v14, :cond_6

    .line 472
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 474
    .local v4, c:C
    const/16 v14, 0x20

    if-le v4, v14, :cond_0

    const/16 v14, 0x7f

    if-le v4, v14, :cond_2

    .line 475
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x1040623

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 583
    .end local v4           #c:C
    :cond_1
    :goto_1
    return-object v12

    .line 477
    .restart local v4       #c:C
    :cond_2
    const/16 v14, 0x30

    if-lt v4, v14, :cond_3

    const/16 v14, 0x39

    if-gt v4, v14, :cond_3

    .line 478
    const/4 v5, 0x1

    .line 471
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 479
    :cond_3
    const/16 v14, 0x41

    if-lt v4, v14, :cond_4

    const/16 v14, 0x5a

    if-gt v4, v14, :cond_4

    .line 480
    const/4 v8, 0x1

    goto :goto_2

    .line 481
    :cond_4
    const/16 v14, 0x61

    if-lt v4, v14, :cond_5

    const/16 v14, 0x7a

    if-gt v4, v14, :cond_5

    .line 482
    const/4 v6, 0x1

    goto :goto_2

    .line 484
    :cond_5
    const/4 v7, 0x1

    goto :goto_2

    .line 487
    .end local v4           #c:C
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordSimple(Ljava/lang/String;)Z

    move-result v10

    .line 491
    .local v10, isSimple:Z
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordMinLength:I

    if-ge v14, v15, :cond_8

    .line 492
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mIsAlpha:Z

    if-eqz v14, :cond_7

    const v14, 0x104061b

    :goto_3
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordMinLength:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v15, v14, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    :cond_7
    const v14, 0x104061c

    goto :goto_3

    .line 497
    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordMaxLength:I

    if-le v14, v15, :cond_a

    .line 498
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mIsAlpha:Z

    if-eqz v14, :cond_9

    const v14, 0x104061f

    :goto_4
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordMaxLength:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v15, v14, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    :cond_9
    const v14, 0x1040620

    goto :goto_4

    .line 503
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/internal/widget/LockPatternUtils;->checkPasswordHistory(Ljava/lang/String;)Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_b

    .line 504
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x104056a

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 508
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mIsAlpha:Z

    if-nez v14, :cond_10

    .line 511
    if-nez v6, :cond_c

    if-nez v8, :cond_c

    if-eqz v7, :cond_d

    .line 512
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x1040621

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 515
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternUtils;->getMotDevicePolicyManager()Lcom/motorola/motepm/MotDevicePolicyManager;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x4

    invoke-virtual/range {v14 .. v16}, Lcom/motorola/motepm/MotDevicePolicyManager;->isPolicyAllowed(Landroid/content/ComponentName;I)Z

    move-result v14

    if-nez v14, :cond_e

    const/4 v13, 0x1

    .line 517
    .local v13, numeric_not_simple:Z
    :goto_5
    if-eqz v10, :cond_f

    if-eqz v13, :cond_f

    .line 518
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x1040502

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 515
    .end local v13           #numeric_not_simple:Z
    :cond_e
    const/4 v13, 0x0

    goto :goto_5

    .line 520
    .restart local v13       #numeric_not_simple:Z
    :cond_f
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 525
    .end local v13           #numeric_not_simple:Z
    :cond_10
    const/high16 v14, 0x4

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mRequestedQuality:I

    if-eq v14, v15, :cond_11

    const/high16 v14, 0x6

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mRequestedQuality:I

    if-ne v14, v15, :cond_13

    :cond_11
    const/4 v1, 0x1

    .line 528
    .local v1, alphabetic:Z
    :goto_6
    const/high16 v14, 0x5

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mRequestedQuality:I

    if-eq v14, v15, :cond_12

    const/high16 v14, 0x6

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mRequestedQuality:I

    if-ne v14, v15, :cond_14

    :cond_12
    const/4 v3, 0x1

    .line 533
    .local v3, alphanumeric:Z
    :goto_7
    if-nez v6, :cond_15

    if-nez v8, :cond_15

    .line 534
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x1040624

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 525
    .end local v1           #alphabetic:Z
    .end local v3           #alphanumeric:Z
    :cond_13
    const/4 v1, 0x0

    goto :goto_6

    .line 528
    .restart local v1       #alphabetic:Z
    :cond_14
    const/4 v3, 0x0

    goto :goto_7

    .line 537
    .restart local v3       #alphanumeric:Z
    :cond_15
    if-eqz v3, :cond_16

    if-nez v5, :cond_16

    .line 538
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x1040625

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 541
    :cond_16
    const/high16 v14, 0x6

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mRequestedQuality:I

    if-ne v14, v15, :cond_17

    if-nez v7, :cond_17

    .line 542
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x1040626

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 546
    :cond_17
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternUtils;->getMotDevicePolicyManager()Lcom/motorola/motepm/MotDevicePolicyManager;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x4

    invoke-virtual/range {v14 .. v16}, Lcom/motorola/motepm/MotDevicePolicyManager;->isPolicyAllowed(Landroid/content/ComponentName;I)Z

    move-result v14

    if-nez v14, :cond_18

    const/4 v2, 0x1

    .line 548
    .local v2, alphabetic_not_simple:Z
    :goto_8
    if-eqz v10, :cond_19

    if-eqz v2, :cond_19

    .line 549
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x1040504

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 546
    .end local v2           #alphabetic_not_simple:Z
    :cond_18
    const/4 v2, 0x0

    goto :goto_8

    .line 552
    .restart local v2       #alphabetic_not_simple:Z
    :cond_19
    const/4 v11, 0x0

    .line 553
    .local v11, m_Complexity:I
    if-eqz v5, :cond_1a

    add-int/lit8 v11, v11, 0x1

    .line 554
    :cond_1a
    if-eqz v8, :cond_1b

    add-int/lit8 v11, v11, 0x1

    .line 555
    :cond_1b
    if-eqz v6, :cond_1c

    add-int/lit8 v11, v11, 0x1

    .line 556
    :cond_1c
    if-eqz v7, :cond_1d

    add-int/lit8 v11, v11, 0x1

    .line 557
    :cond_1d
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordMinComplexity:I

    if-ge v11, v14, :cond_26

    .line 558
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x1040627

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 560
    .local v12, message:Ljava/lang/String;
    if-nez v5, :cond_1e

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x1040628

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 562
    :cond_1e
    if-nez v8, :cond_20

    .line 563
    if-nez v5, :cond_1f

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x104062c

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 565
    :cond_1f
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x1040629

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 568
    :cond_20
    if-nez v6, :cond_23

    .line 569
    if-eqz v5, :cond_21

    if-nez v8, :cond_22

    :cond_21
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x104062c

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 571
    :cond_22
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x104062a

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 574
    :cond_23
    if-nez v7, :cond_1

    .line 575
    if-eqz v5, :cond_24

    if-eqz v8, :cond_24

    if-nez v6, :cond_25

    :cond_24
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x104062c

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 577
    :cond_25
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x104062b

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 583
    .end local v12           #message:Ljava/lang/String;
    :cond_26
    const/4 v12, 0x0

    goto/16 :goto_1
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 410
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 414
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 416
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->handlePrevious()V

    .line 417
    const/4 v0, 0x1

    .line 419
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getCreationOrientation()I
    .locals 1

    .prologue
    .line 833
    iget v0, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mCreationOrientation:I

    return v0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 371
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mIsAlpha:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 430
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 431
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 432
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mCreationOrientation:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v2, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mCreationHardKeyboardHidden:I

    if-eq v1, v2, :cond_1

    .line 434
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1, v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 436
    :cond_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 441
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 442
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mCreationOrientation:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v1, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mCreationHardKeyboardHidden:I

    if-eq v0, v1, :cond_1

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 446
    :cond_1
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 643
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 645
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->handleNext()V

    .line 646
    const/4 v0, 0x1

    .line 648
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 425
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyboardChange(Z)V
    .locals 2
    .parameter "isKeyboardOpen"

    .prologue
    .line 449
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mIsKeyboardOpen:Z

    .line 450
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v0}, Landroid/inputmethodservice/KeyboardView;->setVisibility(I)V

    .line 451
    return-void

    .line 450
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 378
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->dialog:Landroid/app/AlertDialog;

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 381
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 384
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mResuming:Z

    .line 385
    sget-object v3, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mUiStage:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->updateStage(Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;)V

    .line 387
    sget-object v3, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mUiStage:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    sget-object v4, Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;->Introduction:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    if-ne v3, v4, :cond_0

    .line 388
    const-string v3, ""

    sput-object v3, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mFirstPin:Ljava/lang/String;

    .line 392
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordEntry:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 393
    iget-object v3, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 396
    iget-object v3, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v0

    .line 397
    .local v0, admins:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 398
    .local v1, hasActiveAdmins:Z
    :goto_0
    if-eqz v1, :cond_1

    sget-boolean v3, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mShowPolicy:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mUiStage:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    sget-object v4, Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;->Introduction:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    if-ne v3, v4, :cond_1

    .line 399
    iget-object v3, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v4, 0x7530

    invoke-interface {v3, v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 400
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->showPolicy()V

    .line 402
    :cond_1
    iget v3, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPhoneState:I

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->updateEmergencyCallButtonState(I)V

    .line 403
    iget-object v3, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 404
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mResuming:Z

    .line 405
    return-void

    .end local v1           #hasActiveAdmins:Z
    :cond_2
    move v1, v2

    .line 397
    goto :goto_0
.end method

.method protected updateStage(Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;)V
    .locals 0
    .parameter "stage"

    .prologue
    .line 454
    sput-object p1, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mUiStage:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    .line 455
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->updateUi()V

    .line 456
    return-void
.end method
