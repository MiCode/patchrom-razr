.class public Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;
.super Ljava/lang/Object;
.source "CdmaOperatorHelper.java"


# static fields
.field private static final DBG:Z

.field private static TAG:Ljava/lang/String;

.field private static sLocaleMcc:Ljava/util/Locale;

.field private static sLocaleSid:Ljava/util/Locale;

.field private static sMccMnc:I

.field private static sNid:I

.field private static sOperatorInfoMcc:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;

.field private static sOperatorInfoSid:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;

.field private static sSid:I

.field private static sTimeZone:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 22
    const-string v2, "CdmaOperatorHelper"

    sput-object v2, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->TAG:Ljava/lang/String;

    .line 40
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->DBG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOperatorInfo(Landroid/content/Context;I)Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;
    .locals 4
    .parameter "context"
    .parameter "mccmnc"

    .prologue
    .line 193
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 194
    .local v0, locale:Ljava/util/Locale;
    sget v1, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->sMccMnc:I

    if-ne p1, v1, :cond_1

    if-eqz v0, :cond_1

    sget-object v1, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->sLocaleMcc:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    sget-boolean v1, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->DBG:Z

    if-eqz v1, :cond_0

    .line 196
    sget-object v1, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOperatorInfo use buffered sOperatorInfoMcc:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->sOperatorInfoMcc:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    sget-object v1, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->sOperatorInfoMcc:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;

    .line 206
    :goto_0
    return-object v1

    .line 200
    :cond_1
    sput p1, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->sMccMnc:I

    .line 201
    sput-object v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->sLocaleMcc:Ljava/util/Locale;

    .line 202
    sget-boolean v1, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->DBG:Z

    if-eqz v1, :cond_2

    .line 203
    sget-object v1, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOperatorInfo use new sOperatorInfoMcc:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->sOperatorInfoMcc:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_2
    invoke-static {p0, p1}, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->getOperatorInfoFromDB(Landroid/content/Context;I)Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;

    move-result-object v1

    sput-object v1, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->sOperatorInfoMcc:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;

    .line 206
    sget-object v1, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->sOperatorInfoMcc:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;

    goto :goto_0
.end method

.method public static getOperatorInfo(Landroid/content/Context;III)Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;
    .locals 4
    .parameter "context"
    .parameter "sid"
    .parameter "nid"
    .parameter "timezone"

    .prologue
    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 168
    .local v0, locale:Ljava/util/Locale;
    sget v1, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->sSid:I

    if-ne p1, v1, :cond_1

    sget v1, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->sNid:I

    if-ne p2, v1, :cond_1

    sget v1, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->sTimeZone:I

    if-ne p3, v1, :cond_1

    if-eqz v0, :cond_1

    sget-object v1, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->sLocaleSid:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    sget-boolean v1, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->DBG:Z

    if-eqz v1, :cond_0

    .line 171
    sget-object v1, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOperatorInfo use buffered sOperatorInfoSid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->sOperatorInfoSid:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_0
    sget-object v1, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->sOperatorInfoSid:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;

    .line 183
    :goto_0
    return-object v1

    .line 175
    :cond_1
    sput p1, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->sSid:I

    .line 176
    sput p2, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->sNid:I

    .line 177
    sput p3, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->sTimeZone:I

    .line 178
    sput-object v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->sLocaleSid:Ljava/util/Locale;

    .line 179
    sget-boolean v1, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->DBG:Z

    if-eqz v1, :cond_2

    .line 180
    sget-object v1, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOperatorInfo use new sOperatorInfoSid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->sOperatorInfoSid:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->getOperatorInfoFromDB(Landroid/content/Context;III)Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;

    move-result-object v1

    sput-object v1, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->sOperatorInfoSid:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;

    .line 183
    sget-object v1, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->sOperatorInfoSid:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;

    goto :goto_0
.end method

.method private static getOperatorInfoFromDB(Landroid/content/Context;I)Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;
    .locals 9
    .parameter "context"
    .parameter "mccmnc"

    .prologue
    .line 118
    new-instance v8, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;

    invoke-direct {v8}, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;-><init>()V

    .line 119
    .local v8, info:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MCC_MNC_NO = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, sWhere:Ljava/lang/String;
    const/4 v6, 0x0

    .line 122
    .local v6, cur:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/motorola/android/provider/CdmaOperator$MccMnc;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 126
    :goto_0
    if-nez v6, :cond_0

    .line 152
    :goto_1
    return-object v8

    .line 123
    :catch_0
    move-exception v7

    .line 124
    .local v7, e:Ljava/lang/Exception;
    sget-object v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->TAG:Ljava/lang/String;

    const-string v1, "Exception in getOperatorInfoFromDB"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 129
    .end local v7           #e:Ljava/lang/Exception;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    sget-object v0, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mId:Ljava/lang/String;

    .line 131
    sget-object v0, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mOperatorName:Ljava/lang/String;

    .line 132
    iget-object v0, v8, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mCallForwordInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    sget-object v1, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mUnconditionalCallForwordEnable:Ljava/lang/String;

    .line 133
    iget-object v0, v8, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mCallForwordInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    sget-object v1, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mUnconditionalCallForwordDisable:Ljava/lang/String;

    .line 134
    iget-object v0, v8, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mCallForwordInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    sget-object v1, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mDefaultCallForwordEnable:Ljava/lang/String;

    .line 135
    iget-object v0, v8, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mCallForwordInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    sget-object v1, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mDefaultCallForwaordDisable:Ljava/lang/String;

    .line 136
    iget-object v0, v8, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mCallForwordInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    sget-object v1, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mBusyCallForwordEnable:Ljava/lang/String;

    .line 137
    iget-object v0, v8, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mCallForwordInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    sget-object v1, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mBusyCallForwordDisable:Ljava/lang/String;

    .line 138
    iget-object v0, v8, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mCallForwordInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    sget-object v1, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mNoAnswerCallForwordEnable:Ljava/lang/String;

    .line 139
    iget-object v0, v8, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mCallForwordInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    sget-object v1, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mNoAnswerCallForwordDisable:Ljava/lang/String;

    .line 140
    iget-object v0, v8, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mWaitingInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorWaitingInfo;

    sget-object v1, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorWaitingInfo;->mCallWaitingEnable:Ljava/lang/String;

    .line 141
    iget-object v0, v8, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mWaitingInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorWaitingInfo;

    sget-object v1, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorWaitingInfo;->mCallWaitingDisable:Ljava/lang/String;

    .line 142
    iget-object v0, v8, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mCallForwordInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    sget-object v1, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mCancelAllCallForwordEnable:Ljava/lang/String;

    .line 143
    iget-object v0, v8, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mCallForwordInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    sget-object v1, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mCancelAllCallForwordDisable:Ljava/lang/String;

    .line 144
    iget-object v0, v8, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mOtherInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorOtherInfo;

    sget-object v1, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/16 v2, 0xe

    aget-object v1, v1, v2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorOtherInfo;->mPerCallBlocking:Ljava/lang/String;

    .line 145
    iget-object v0, v8, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mOtherInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorOtherInfo;

    sget-object v1, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorOtherInfo;->mDeactivatePerLineBlocking:Ljava/lang/String;

    .line 146
    iget-object v0, v8, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mOtherInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorOtherInfo;

    sget-object v1, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorOtherInfo;->mThreeWayCallFeatureCode:Ljava/lang/String;

    .line 147
    iget-object v0, v8, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mOtherInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorOtherInfo;

    sget-object v1, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorOtherInfo;->mPauseResumeFeatureCode:Ljava/lang/String;

    .line 148
    iget-object v0, v8, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mOtherInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorOtherInfo;

    sget-object v1, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorOtherInfo;->mVoiceMailNumber:Ljava/lang/String;

    .line 149
    sget-object v0, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/16 v1, 0x13

    aget-object v0, v0, v1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mShowSpn:Ljava/lang/String;

    .line 151
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1
.end method

.method private static getOperatorInfoFromDB(Landroid/content/Context;III)Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;
    .locals 10
    .parameter "context"
    .parameter "sid"
    .parameter "nid"
    .parameter "timezone"

    .prologue
    const/4 v9, 0x1

    .line 55
    new-instance v8, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;

    invoke-direct {v8}, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;-><init>()V

    .line 57
    .local v8, info:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIDMIN <= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND SIDMAX >= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND  NIDMIN <= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND NIDMAX >= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, sWhere:Ljava/lang/String;
    const/4 v6, 0x0

    .line 61
    .local v6, cur:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/motorola/android/provider/CdmaOperator$SidNid;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 66
    :goto_0
    if-nez v6, :cond_1

    .line 108
    :cond_0
    :goto_1
    return-object v8

    .line 62
    :catch_0
    move-exception v7

    .line 63
    .local v7, e:Ljava/lang/Exception;
    sget-object v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->TAG:Ljava/lang/String;

    const-string v1, "Exception in getOperatorInfoFromDB"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 70
    .end local v7           #e:Ljava/lang/Exception;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-le v0, v9, :cond_2

    .line 71
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIDMIN <= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND SIDMAX >= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND  NIDMIN <= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND NIDMAX >= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "TIMEZONE == 60 OR TIMEZONE == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 76
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/motorola/android/provider/CdmaOperator$SidNid;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 80
    :goto_2
    if-eqz v6, :cond_0

    .line 85
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86
    sget-object v0, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mId:Ljava/lang/String;

    .line 87
    sget-object v0, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    aget-object v0, v0, v9

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mOperatorName:Ljava/lang/String;

    .line 88
    iget-object v0, v8, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mCallForwordInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    sget-object v1, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mUnconditionalCallForwordEnable:Ljava/lang/String;

    .line 89
    iget-object v0, v8, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mCallForwordInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    sget-object v1, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mUnconditionalCallForwordDisable:Ljava/lang/String;

    .line 90
    iget-object v0, v8, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mCallForwordInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    sget-object v1, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mDefaultCallForwordEnable:Ljava/lang/String;

    .line 91
    iget-object v0, v8, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mCallForwordInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    sget-object v1, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mDefaultCallForwaordDisable:Ljava/lang/String;

    .line 92
    iget-object v0, v8, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mCallForwordInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    sget-object v1, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mBusyCallForwordEnable:Ljava/lang/String;

    .line 93
    iget-object v0, v8, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mCallForwordInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    sget-object v1, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mBusyCallForwordDisable:Ljava/lang/String;

    .line 94
    iget-object v0, v8, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mCallForwordInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    sget-object v1, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mNoAnswerCallForwordEnable:Ljava/lang/String;

    .line 95
    iget-object v0, v8, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mCallForwordInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    sget-object v1, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mNoAnswerCallForwordDisable:Ljava/lang/String;

    .line 96
    iget-object v0, v8, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mWaitingInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorWaitingInfo;

    sget-object v1, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorWaitingInfo;->mCallWaitingEnable:Ljava/lang/String;

    .line 97
    iget-object v0, v8, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mWaitingInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorWaitingInfo;

    sget-object v1, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorWaitingInfo;->mCallWaitingDisable:Ljava/lang/String;

    .line 98
    iget-object v0, v8, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mCallForwordInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    sget-object v1, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mCancelAllCallForwordEnable:Ljava/lang/String;

    .line 99
    iget-object v0, v8, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mCallForwordInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    sget-object v1, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mCancelAllCallForwordDisable:Ljava/lang/String;

    .line 100
    iget-object v0, v8, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mOtherInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorOtherInfo;

    sget-object v1, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/16 v2, 0xe

    aget-object v1, v1, v2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorOtherInfo;->mPerCallBlocking:Ljava/lang/String;

    .line 101
    iget-object v0, v8, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mOtherInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorOtherInfo;

    sget-object v1, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorOtherInfo;->mDeactivatePerLineBlocking:Ljava/lang/String;

    .line 102
    iget-object v0, v8, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mOtherInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorOtherInfo;

    sget-object v1, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorOtherInfo;->mThreeWayCallFeatureCode:Ljava/lang/String;

    .line 103
    iget-object v0, v8, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mOtherInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorOtherInfo;

    sget-object v1, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorOtherInfo;->mPauseResumeFeatureCode:Ljava/lang/String;

    .line 104
    iget-object v0, v8, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mOtherInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorOtherInfo;

    sget-object v1, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorOtherInfo;->mVoiceMailNumber:Ljava/lang/String;

    .line 105
    sget-object v0, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/16 v1, 0x13

    aget-object v0, v0, v1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mShowSpn:Ljava/lang/String;

    .line 107
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 77
    :catch_1
    move-exception v7

    .line 78
    .restart local v7       #e:Ljava/lang/Exception;
    sget-object v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->TAG:Ljava/lang/String;

    const-string v1, "Exception in getOperatorInfoFromDB"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2
.end method
