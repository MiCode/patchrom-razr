.class public Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;
.super Ljava/lang/Object;
.source "CdmaOperatorInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorOtherInfo;,
        Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorWaitingInfo;,
        Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;
    }
.end annotation


# instance fields
.field public mCallForwordInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

.field public mId:Ljava/lang/String;

.field public mOperatorName:Ljava/lang/String;

.field public mOtherInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorOtherInfo;

.field public mShowSpn:Ljava/lang/String;

.field public mWaitingInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorWaitingInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    invoke-direct {v0, p0}, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;-><init>(Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;)V

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mCallForwordInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    .line 18
    new-instance v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorWaitingInfo;

    invoke-direct {v0, p0}, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorWaitingInfo;-><init>(Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;)V

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mWaitingInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorWaitingInfo;

    .line 20
    new-instance v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorOtherInfo;

    invoke-direct {v0, p0}, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorOtherInfo;-><init>(Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;)V

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mOtherInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorOtherInfo;

    .line 77
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmOperatorName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mOperatorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmCallForwordInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mCallForwordInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmWaittingInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mWaitingInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorWaitingInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmOtherInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mOtherInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorOtherInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmShowSpn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mShowSpn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
