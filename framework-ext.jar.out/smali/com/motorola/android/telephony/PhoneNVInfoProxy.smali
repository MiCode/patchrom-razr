.class public Lcom/motorola/android/telephony/PhoneNVInfoProxy;
.super Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;
.source "PhoneNVInfoProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhoneNVInfoProxy"


# instance fields
.field private mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;


# direct methods
.method public constructor <init>(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;)V
    .locals 1
    .parameter "phoneNVInfo"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    .line 42
    const-string v0, "iphonenvinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 43
    const-string v0, "iphonenvinfo"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 45
    :cond_0
    return-void
.end method


# virtual methods
.method public getCDMAAkeyHashValue()[B
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_CDMA_AKEY_HASH:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getEHRPDStatus()I
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->RDE_NV_EHRPD_ENABLED:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoInt(I)I

    move-result v0

    return v0
.end method

.method public getHDRSCPSessionStatus()I
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->RDE_NV_HDRSCP_SESSION_STATUS_I:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoInt(I)I

    move-result v0

    return v0
.end method

.method public getIPV6Enable()Z
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IPV6_ENABLED:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoBoolean(I)Z

    move-result v0

    return v0
.end method

.method public getImsCdmaScanTimer()I
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_CDMA_SCAN_TIMER:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoInt(I)I

    move-result v0

    return v0
.end method

.method public getImsEmpaSupported()Z
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_EPMA_SUPPORTED:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoBoolean(I)Z

    move-result v0

    return v0
.end method

.method public getImsHomeDomain()Ljava/lang/String;
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_HOME_DOMAIN:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImsMultimodeScanTimer()I
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_MULTIMODE_SCAN_TIMER:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoInt(I)I

    move-result v0

    return v0
.end method

.method public getImsPcscfPort()I
    .locals 4

    .prologue
    .line 77
    iget-object v2, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_PCSCF_PORT:I

    invoke-virtual {v2, v3}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoString(I)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, port:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 82
    :goto_0
    return v2

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, ex:Ljava/lang/NumberFormatException;
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getImsPhoneContextURI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_PHONE_CONTEXT_URI:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImsSigComp()Z
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_SIG_COMP:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoBoolean(I)Z

    move-result v0

    return v0
.end method

.method public getImsSmsFormat()Z
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_SMS_FORMAT:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoBoolean(I)Z

    move-result v0

    return v0
.end method

.method public getImsSmsOverIP()Z
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_SMS_OVER_IP:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoBoolean(I)Z

    move-result v0

    return v0
.end method

.method public getImsT1Timer()I
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_T1_TIMER:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoInt(I)I

    move-result v0

    return v0
.end method

.method public getImsT2Timer()I
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_T2_TIMER:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoInt(I)I

    move-result v0

    return v0
.end method

.method public getImsTestMode()Z
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_TEST_MODE:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoBoolean(I)Z

    move-result v0

    return v0
.end method

.method public getImsTfTimer()I
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_TF_TIMER:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoInt(I)I

    move-result v0

    return v0
.end method

.method public getModemAPN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    invoke-virtual {v0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getModemAPN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public registerObserver(Lcom/motorola/android/telephony/IPhoneNVInfoObserver;)V
    .locals 1
    .parameter "ob"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    invoke-virtual {v0, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->registerObserver(Lcom/motorola/android/telephony/IPhoneNVInfoObserver;)V

    .line 180
    return-void
.end method

.method public setEHRPDStatus(I)I
    .locals 2
    .parameter "status"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->RDE_NV_EHRPD_ENABLED:I

    invoke-virtual {v0, v1, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setPhoneNVInfo(II)I

    move-result v0

    return v0
.end method

.method public setHDRSCPSessionStatus(I)I
    .locals 2
    .parameter "status"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->RDE_NV_HDRSCP_SESSION_STATUS_I:I

    invoke-virtual {v0, v1, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setPhoneNVInfo(II)I

    move-result v0

    return v0
.end method

.method public setIPV6Enable(Z)I
    .locals 2
    .parameter "bEnable"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IPV6_ENABLED:I

    invoke-virtual {v0, v1, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setPhoneNVInfo(IZ)I

    move-result v0

    return v0
.end method

.method public setImsCdmaScanTimer(I)I
    .locals 2
    .parameter "cdma"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_CDMA_SCAN_TIMER:I

    invoke-virtual {v0, v1, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setPhoneNVInfo(II)I

    move-result v0

    return v0
.end method

.method public setImsHomeDomain(Ljava/lang/String;)I
    .locals 2
    .parameter "domain"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_HOME_DOMAIN:I

    invoke-virtual {v0, v1, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setPhoneNVInfo(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setImsMultimodeScanTimer(I)I
    .locals 2
    .parameter "mm"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_MULTIMODE_SCAN_TIMER:I

    invoke-virtual {v0, v1, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setPhoneNVInfo(II)I

    move-result v0

    return v0
.end method

.method public setImsPcscfPort(I)I
    .locals 3
    .parameter "port"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_PCSCF_PORT:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setPhoneNVInfo(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setImsSmsFormat(Z)I
    .locals 2
    .parameter "format"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_SMS_FORMAT:I

    invoke-virtual {v0, v1, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setPhoneNVInfo(IZ)I

    move-result v0

    return v0
.end method

.method public setImsSmsOverIP(Z)I
    .locals 2
    .parameter "on"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_SMS_OVER_IP:I

    invoke-virtual {v0, v1, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setPhoneNVInfo(IZ)I

    move-result v0

    return v0
.end method

.method public setImsT1Timer(I)I
    .locals 2
    .parameter "t1"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_T1_TIMER:I

    invoke-virtual {v0, v1, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setPhoneNVInfo(II)I

    move-result v0

    return v0
.end method

.method public setImsT2Timer(I)I
    .locals 2
    .parameter "t2"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_T2_TIMER:I

    invoke-virtual {v0, v1, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setPhoneNVInfo(II)I

    move-result v0

    return v0
.end method

.method public setImsTestMode(Z)I
    .locals 2
    .parameter "enabled"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_TEST_MODE:I

    invoke-virtual {v0, v1, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setPhoneNVInfo(IZ)I

    move-result v0

    return v0
.end method

.method public setImsTfTimer(I)I
    .locals 2
    .parameter "tf"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_TF_TIMER:I

    invoke-virtual {v0, v1, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setPhoneNVInfo(II)I

    move-result v0

    return v0
.end method

.method public setModemAPN(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "apn_str"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    invoke-virtual {v0, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setModemAPN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterObserver(Lcom/motorola/android/telephony/IPhoneNVInfoObserver;)V
    .locals 1
    .parameter "ob"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    invoke-virtual {v0, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->unregisterObserver(Lcom/motorola/android/telephony/IPhoneNVInfoObserver;)V

    .line 184
    return-void
.end method
