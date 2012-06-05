.class public final Lcom/motorola/motepm/ReportResultToEPM;
.super Ljava/lang/Object;
.source "ReportResultToEPM.java"


# static fields
.field public static final COMPONET_NAME:Ljava/lang/String; = "componet_name"

.field public static final NATIVE_STATUS:Ljava/lang/String; = "native_status"

.field public static final POLICY_NAME:Ljava/lang/String; = "policy_name"

.field public static final TAG:Ljava/lang/String; = "EpmResultReport"


# instance fields
.field private mAdminName:Landroid/content/ComponentName;

.field private mContext:Landroid/content/Context;

.field private final mDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

.field private mEnable:Z

.field private mPolicyName:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "c"
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/motorola/motepm/ReportResultToEPM;->mContext:Landroid/content/Context;

    .line 44
    const-string v0, "policy_name"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/motepm/ReportResultToEPM;->mPolicyName:I

    .line 45
    const-string v0, "componet_name"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/motorola/motepm/ReportResultToEPM;->mAdminName:Landroid/content/ComponentName;

    .line 46
    const-string v0, "native_status"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/motepm/ReportResultToEPM;->mEnable:Z

    .line 47
    iget-object v0, p0, Lcom/motorola/motepm/ReportResultToEPM;->mContext:Landroid/content/Context;

    const-string v1, "mot_device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/motepm/MotDevicePolicyManager;

    iput-object v0, p0, Lcom/motorola/motepm/ReportResultToEPM;->mDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

    .line 48
    iget-object v0, p0, Lcom/motorola/motepm/ReportResultToEPM;->mDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

    if-nez v0, :cond_0

    .line 49
    const-string v0, "EpmResultReport"

    const-string v1, "Can\'t get EPM service!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    return-void
.end method


# virtual methods
.method public reportResultCode(ILandroid/os/Bundle;)V
    .locals 4
    .parameter "result_code"
    .parameter "extraArg"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/motorola/motepm/ReportResultToEPM;->mDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/motorola/motepm/ReportResultToEPM;->mDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

    iget-object v1, p0, Lcom/motorola/motepm/ReportResultToEPM;->mAdminName:Landroid/content/ComponentName;

    iget v2, p0, Lcom/motorola/motepm/ReportResultToEPM;->mPolicyName:I

    iget-boolean v3, p0, Lcom/motorola/motepm/ReportResultToEPM;->mEnable:Z

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/motorola/motepm/MotDevicePolicyManager;->reportPolicyEnforcedResult(Landroid/content/ComponentName;IIZ)V

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    const-string v0, "EpmResultReport"

    const-string v1, "Didn\'t get EPM service!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
