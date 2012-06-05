.class public Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MotoKeyguardUpdateMonitor"
.end annotation


# static fields
.field public static final GOOGLE_USER_CREDS_TYPE:Ljava/lang/String; = "com.google"


# instance fields
.field private account:[Landroid/accounts/Account;

.field private accountMgr:Landroid/accounts/AccountManager;

.field private mAddedListener:Z

.field private mDeviceRequestPasswordSetup:Z

.field private mGoogleAcctUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

.field private mHasGoogleAccount:Z

.field private mMDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

.field private mMotoEncryptionManager:Lcom/motorola/android/internal/encryption/EncryptionAdminManager;

.field private mMotoUMHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 762
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 753
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mDeviceRequestPasswordSetup:Z

    .line 757
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mMotoEncryptionManager:Lcom/motorola/android/internal/encryption/EncryptionAdminManager;

    .line 761
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mAddedListener:Z

    .line 763
    new-instance v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor$1;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor$1;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mMotoUMHandler:Landroid/os/Handler;

    .line 764
    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->accountMgr:Landroid/accounts/AccountManager;

    .line 765
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->accountMgr:Landroid/accounts/AccountManager;

    const-string v3, "com.google"

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->account:[Landroid/accounts/Account;

    .line 766
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->account:[Landroid/accounts/Account;

    array-length v2, v2

    if-lez v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mHasGoogleAccount:Z

    .line 770
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mHasGoogleAccount:Z

    if-nez v0, :cond_1

    .line 772
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor$2;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor$2;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mGoogleAcctUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

    .line 781
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->accountMgr:Landroid/accounts/AccountManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mGoogleAcctUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mMotoUMHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, v1}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 782
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mAddedListener:Z

    .line 785
    :cond_1
    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;)[Landroid/accounts/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 745
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->account:[Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;[Landroid/accounts/Account;)[Landroid/accounts/Account;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 745
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->account:[Landroid/accounts/Account;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;)Landroid/accounts/AccountManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 745
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->accountMgr:Landroid/accounts/AccountManager;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 745
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mHasGoogleAccount:Z

    return p1
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .prologue
    .line 819
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mAddedListener:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mGoogleAcctUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

    if-eqz v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mGoogleAcctUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 821
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mAddedListener:Z

    .line 822
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mGoogleAcctUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

    .line 824
    :cond_0
    return-void
.end method

.method public hasGoogleAccount()Z
    .locals 1

    .prologue
    .line 790
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mHasGoogleAccount:Z

    return v0
.end method

.method public isActivePolicyPasswordNeedChange()Z
    .locals 3

    .prologue
    .line 798
    const/4 v0, 0x0

    .line 799
    .local v0, isNeedChange:Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mMDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

    if-nez v1, :cond_0

    .line 800
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "mot_device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mMDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

    .line 802
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mMDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

    if-eqz v1, :cond_2

    .line 803
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mMDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

    invoke-virtual {v1}, Lcom/motorola/motepm/MotDevicePolicyManager;->isPasswordSetEnforced()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mDeviceRequestPasswordSetup:Z

    if-eqz v1, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 805
    :cond_2
    :goto_0
    return v0

    .line 803
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeviceRequestPasswordSetup()Z
    .locals 1

    .prologue
    .line 810
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mDeviceRequestPasswordSetup:Z

    return v0
.end method

.method reportEncryptionLocked()V
    .locals 2

    .prologue
    .line 832
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mMotoEncryptionManager:Lcom/motorola/android/internal/encryption/EncryptionAdminManager;

    if-nez v0, :cond_0

    .line 833
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "mot_encryption_admin"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mMotoEncryptionManager:Lcom/motorola/android/internal/encryption/EncryptionAdminManager;

    .line 836
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mMotoEncryptionManager:Lcom/motorola/android/internal/encryption/EncryptionAdminManager;

    if-nez v0, :cond_1

    .line 837
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "unable to get ENCRYPT_ADMIN_SERVICE!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    :goto_0
    return-void

    .line 839
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mMotoEncryptionManager:Lcom/motorola/android/internal/encryption/EncryptionAdminManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;->onScreenLocked(Z)V

    goto :goto_0
.end method

.method reportEncryptionUnlocked(ZLjava/lang/String;)V
    .locals 2
    .parameter "recovery"
    .parameter "password"

    .prologue
    .line 846
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mMotoEncryptionManager:Lcom/motorola/android/internal/encryption/EncryptionAdminManager;

    if-nez v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "mot_encryption_admin"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mMotoEncryptionManager:Lcom/motorola/android/internal/encryption/EncryptionAdminManager;

    .line 850
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mMotoEncryptionManager:Lcom/motorola/android/internal/encryption/EncryptionAdminManager;

    if-nez v0, :cond_1

    .line 851
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "unable to get ENCRYPT_ADMIN_SERVICE!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :goto_0
    return-void

    .line 853
    :cond_1
    if-nez p1, :cond_2

    .line 854
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mMotoEncryptionManager:Lcom/motorola/android/internal/encryption/EncryptionAdminManager;

    invoke-virtual {v0, p2}, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;->onPasswordVerified(Ljava/lang/String;)V

    goto :goto_0

    .line 856
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mMotoEncryptionManager:Lcom/motorola/android/internal/encryption/EncryptionAdminManager;

    invoke-virtual {v0, p2}, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;->onRecoveryPasswordVerified(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDeviceRequestPasswordSetup(Z)V
    .locals 0
    .parameter "need"

    .prologue
    .line 814
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mDeviceRequestPasswordSetup:Z

    .line 815
    return-void
.end method
