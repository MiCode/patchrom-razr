.class public Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;
.super Ljava/lang/Object;
.source "GsmOperatorHelper.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static sLanguageSupport:Ljava/lang/String;

.field private static sLocaleMcc:Ljava/util/Locale;

.field private static sMccMnc:I

.field private static sOperatorName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "GsmOperatorHelper"

    sput-object v0, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLanguageSupport(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "mccmnc"

    .prologue
    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v0, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 57
    .local v0, locale:Ljava/util/Locale;
    sget v2, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->sMccMnc:I

    if-ne p1, v2, :cond_0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->sLocaleMcc:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    sget-object v2, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->sLanguageSupport:Ljava/lang/String;

    .line 65
    :goto_0
    return-object v2

    .line 60
    :cond_0
    sput p1, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->sMccMnc:I

    .line 61
    sput-object v0, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->sLocaleMcc:Ljava/util/Locale;

    .line 62
    invoke-static {p0, p1}, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->getOperatorFromDb(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, result:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    sput-object v2, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->sOperatorName:Ljava/lang/String;

    .line 64
    const/4 v2, 0x1

    aget-object v2, v1, v2

    sput-object v2, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->sLanguageSupport:Ljava/lang/String;

    .line 65
    sget-object v2, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->sLanguageSupport:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getOperatorFromDb(Landroid/content/Context;I)[Ljava/lang/String;
    .locals 12
    .parameter "context"
    .parameter "mccmnc"

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 69
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    sget-object v0, Lcom/motorola/android/provider/GsmOperator;->mOperatorCoulumns:[Ljava/lang/String;

    aget-object v0, v0, v10

    aput-object v0, v2, v10

    sget-object v0, Lcom/motorola/android/provider/GsmOperator;->mOperatorCoulumns:[Ljava/lang/String;

    aget-object v0, v0, v9

    aput-object v0, v2, v9

    sget-object v0, Lcom/motorola/android/provider/GsmOperator;->mOperatorCoulumns:[Ljava/lang/String;

    aget-object v0, v0, v11

    aput-object v0, v2, v11

    .line 74
    .local v2, columns:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MCC_MNC_NO = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, sWhere:Ljava/lang/String;
    new-array v8, v11, [Ljava/lang/String;

    aput-object v4, v8, v10

    aput-object v4, v8, v9

    .line 80
    .local v8, result:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 82
    .local v6, cur:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/motorola/android/provider/GsmOperator$MccMnc;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 88
    :goto_0
    if-nez v6, :cond_0

    .line 97
    :goto_1
    return-object v8

    .line 84
    :catch_0
    move-exception v7

    .line 85
    .local v7, e:Ljava/lang/Exception;
    sget-object v0, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->TAG:Ljava/lang/String;

    const-string v1, "Exception in getOperatorFromDb"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 92
    .end local v7           #e:Ljava/lang/Exception;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    sget-object v0, Lcom/motorola/android/provider/GsmOperator;->mOperatorCoulumns:[Ljava/lang/String;

    aget-object v0, v0, v9

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v10

    .line 94
    sget-object v0, Lcom/motorola/android/provider/GsmOperator;->mOperatorCoulumns:[Ljava/lang/String;

    aget-object v0, v0, v11

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v9

    .line 96
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public static getOperatorName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "mccmnc"

    .prologue
    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v0, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 38
    .local v0, locale:Ljava/util/Locale;
    sget v2, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->sMccMnc:I

    if-ne p1, v2, :cond_0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->sLocaleMcc:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    sget-object v2, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->sOperatorName:Ljava/lang/String;

    .line 46
    :goto_0
    return-object v2

    .line 41
    :cond_0
    sput p1, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->sMccMnc:I

    .line 42
    sput-object v0, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->sLocaleMcc:Ljava/util/Locale;

    .line 43
    invoke-static {p0, p1}, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->getOperatorFromDb(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, result:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    sput-object v2, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->sOperatorName:Ljava/lang/String;

    .line 45
    const/4 v2, 0x1

    aget-object v2, v1, v2

    sput-object v2, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->sLanguageSupport:Ljava/lang/String;

    .line 46
    sget-object v2, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->sOperatorName:Ljava/lang/String;

    goto :goto_0
.end method
