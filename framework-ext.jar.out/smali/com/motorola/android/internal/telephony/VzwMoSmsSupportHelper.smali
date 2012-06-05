.class public Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;
.super Ljava/lang/Object;
.source "VzwMoSmsSupportHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper$MccMncPair;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VzwMoSmsSupportHelper"

.field private static final sVZWNetworkOperatorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sVZWSimcardOperatorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCdmaHomeOperatorIsnan:Z

.field private final mGsmRoutesUsSmsc:Z

.field private final mNbpcdSupported:Z

.field private mNetworkOperator:Ljava/lang/String;

.field private mPhoneType:I

.field private mSimOperator:Ljava/lang/String;

.field private mSimState:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 157
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "20404"

    aput-object v1, v0, v2

    const-string v1, "311480"

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->sVZWSimcardOperatorList:Ljava/util/List;

    .line 164
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "310004"

    aput-object v1, v0, v2

    const-string v1, "310005"

    aput-object v1, v0, v3

    const-string v1, "310012"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "311480"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->sVZWNetworkOperatorList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "phoneType"
    .parameter "simState"
    .parameter "simOperator"
    .parameter "networkOperator"

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const-string v0, "cdma.nbpcd.supported"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->mNbpcdSupported:Z

    .line 115
    const-string v0, "ro.cdma.home.operator.isnan"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->mCdmaHomeOperatorIsnan:Z

    .line 118
    const-string v0, "ro.telephony.gsm-routes-us-smsc"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->mGsmRoutesUsSmsc:Z

    .line 123
    iput p1, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->mPhoneType:I

    .line 124
    iput p2, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->mSimState:I

    .line 125
    invoke-static {p3}, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->deNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->mSimOperator:Ljava/lang/String;

    .line 126
    invoke-static {p4}, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->deNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->mNetworkOperator:Ljava/lang/String;

    .line 127
    return-void
.end method

.method private static final deNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "s"

    .prologue
    .line 144
    if-nez p0, :cond_0

    const-string p0, ""

    .end local p0
    :cond_0
    return-object p0
.end method

.method private needToDo()Z
    .locals 1

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->phoneTypeIsCDMA()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->mCdmaHomeOperatorIsnan:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->phoneTypeIsGSM()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->mGsmRoutesUsSmsc:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->simcardIsVZW()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final networkIsVZW()Z
    .locals 2

    .prologue
    .line 169
    sget-object v0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->sVZWNetworkOperatorList:Ljava/util/List;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->mNetworkOperator:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final phoneTypeIsCDMA()Z
    .locals 2

    .prologue
    .line 152
    iget v0, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->mPhoneType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final phoneTypeIsGSM()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 148
    iget v1, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->mPhoneType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final simcardIsVZW()Z
    .locals 2

    .prologue
    .line 159
    sget-object v0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->sVZWSimcardOperatorList:Ljava/util/List;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->mSimOperator:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public filterDestAddr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "destAddr"

    .prologue
    .line 204
    const-string v1, "VzwMoSmsSupportHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enter filterDestAddr. this="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ", destAddr=\""

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "\""

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    if-eqz p2, :cond_0

    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 208
    :cond_0
    const-string v1, "VzwMoSmsSupportHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "destAddr"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " is not a global phone number!"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, p2

    .line 236
    .end local p2
    .local v6, destAddr:Ljava/lang/String;
    :goto_0
    return-object v6

    .line 213
    .end local v6           #destAddr:Ljava/lang/String;
    .restart local p2
    :cond_1
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->needToDo()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 214
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->getNetworkType()I

    move-result v5

    .line 215
    .local v5, networkType:I
    const/4 v1, -0x1

    if-eq v5, v1, :cond_2

    .line 216
    new-instance v7, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper$MccMncPair;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->mNetworkOperator:Ljava/lang/String;

    invoke-direct {v7, v1}, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper$MccMncPair;-><init>(Ljava/lang/String;)V

    .line 217
    .local v7, mmp:Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper$MccMncPair;
    invoke-virtual {v7}, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper$MccMncPair;->getMCC()Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, networkMcc:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper$MccMncPair;->getMNC()Ljava/lang/String;

    move-result-object v3

    .line 221
    .local v3, networkMnc:Ljava/lang/String;
    const-string v1, "VzwMoSmsSupportHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "networkMcc=\""

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "\", networkMnc=\""

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "\""

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 224
    const-string v1, "VzwMoSmsSupportHelper"

    const-string v4, "begin to call SMSNumberHandler.formatNumber;"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    new-instance v0, Lcom/motorola/android/internal/telephony/SMSNumberHandler;

    invoke-direct {v0, p1}, Lcom/motorola/android/internal/telephony/SMSNumberHandler;-><init>(Landroid/content/Context;)V

    .line 226
    .local v0, npl:Lcom/motorola/android/internal/telephony/SMSNumberHandler;
    iget-boolean v4, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->mNbpcdSupported:Z

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p2

    .line 235
    .end local v0           #npl:Lcom/motorola/android/internal/telephony/SMSNumberHandler;
    .end local v2           #networkMcc:Ljava/lang/String;
    .end local v3           #networkMnc:Ljava/lang/String;
    .end local v5           #networkType:I
    .end local v7           #mmp:Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper$MccMncPair;
    :cond_2
    const-string v1, "VzwMoSmsSupportHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "leave filterDestAddr, new destAddr=\""

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "\""

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, p2

    .line 236
    .end local p2
    .restart local v6       #destAddr:Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public getNetworkType()I
    .locals 4

    .prologue
    .line 173
    const/4 v0, -0x1

    .line 175
    .local v0, networkType:I
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->phoneTypeIsGSM()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    const/4 v0, 0x0

    .line 187
    :goto_0
    return v0

    .line 177
    :cond_0
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->phoneTypeIsCDMA()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 178
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->networkIsVZW()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    const/4 v0, 0x1

    goto :goto_0

    .line 181
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 184
    :cond_2
    const-string v1, "VzwMoSmsSupportHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "warning! unknown mPhoneType value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->mPhoneType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VzwMoSmsSupportHelper : { mPhoneType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->mPhoneType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSimState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->mSimState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSimOperator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->mSimOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNetworkOperator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->mNetworkOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNbpcdSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->mNbpcdSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCdmaHomeOperatorIsnan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->mCdmaHomeOperatorIsnan:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mGsmRoutesUsSmsc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->mGsmRoutesUsSmsc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; getNetworkType()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->getNetworkType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
