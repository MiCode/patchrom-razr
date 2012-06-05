.class public Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType;
.super Ljava/lang/Object;
.source "KddiJudgeSmsType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;,
        Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;,
        Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;
    }
.end annotation


# static fields
.field private static final KDDI_CUT_WORD:Ljava/lang/String; = ","

.field private static final KDDI_NEW_SMS_TYPE:[B = null

.field private static final KDDI_SMS_ARRAY_COUNT:I = 0x2

.field private static final KDDI_SMS_TYPE_TBL:[Ljava/lang/String; = null

.field private static final KDDI_TAG:Ljava/lang/String; = "KDDI_SMS"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mSmsTypeRecordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 37
    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType;->KDDI_NEW_SMS_TYPE:[B

    .line 40
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.kddi.android.intent.action.LOCKSMS_RECEIVED,com.kddi.android.permission.RECEIVE_LOCKSMS,2,0x000E,0x00,,,,,,"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.kddi.android.intent.action.KUPSMS_RECEIVED,com.kddi.android.permission.RECEIVE_KUPSMS,2,0xFFFF,0x01,0,3,0x000701,,,"

    aput-object v2, v0, v1

    const-string v1, "com.kddi.android.intent.action.UNSUP_SMS_RECEIVED,com.kddi.android.permission.RECEIVE_UNSUP_SMS,0,0xEF43,0x00,,,,,,"

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-string v2, "com.kddi.android.intent.action.UNSUP_SMS_RECEIVED,com.kddi.android.permission.RECEIVE_UNSUP_SMS,0,0xEF40,0x00,,,,,,"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.kddi.android.intent.action.UNSUP_SMS_RECEIVED,com.kddi.android.permission.RECEIVE_UNSUP_SMS,0,0xFFFF,0xFF,0,2,0xEF44,0,2,0xEF55"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, ",,1,0xFFFF,0xFF,0,2,0xEF56,0,2,0xEF7E"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ",,1,0xFFFF,0xFF,0,2,0x0002,0,2,0x005F"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ",,0,0xFFFF,0xFF,0,2,0x0060,0,2,0x00AF"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.kddi.android.intent.action.UNSUP_SMS_RECEIVED,com.kddi.android.permission.RECEIVE_UNSUP_SMS,0,0xFFFF,0xFF,0,2,0x00B0,0,2,0x00FF"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.kddi.android.intent.action.ESIGNAL_RECEIVED,com.kddi.android.permission.RECEIVE_ESIGNAL,0,0xFFFF,0x01,0,10,0x5349474E414C5549443A,,,"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType;->KDDI_SMS_TYPE_TBL:[Ljava/lang/String;

    return-void

    .line 37
    :array_0
    .array-data 0x1
        0x0t
        0x70t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType;->mContext:Landroid/content/Context;

    .line 55
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType;->kddiReadSmsTypeTable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    const-string v0, "KDDI_SMS"

    const-string v1, "KDDIreadSmsTypeTable() failed to read target resource"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_0
    return-void
.end method

.method private kddiAsByteArray(Ljava/lang/String;I)[B
    .locals 5
    .parameter "hex"
    .parameter "count"

    .prologue
    const/4 v4, 0x2

    .line 346
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 347
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 351
    :cond_0
    new-array v0, p2, [B

    .line 354
    .local v0, bytes:[B
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 356
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v1, 0x1

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 354
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 363
    :cond_1
    return-object v0
.end method

.method private kddiCheckNullWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "word"

    .prologue
    .line 331
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 332
    const/4 p1, 0x0

    .line 334
    :cond_0
    return-object p1
.end method

.method private kddiSetRecord([Ljava/lang/String;)Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;
    .locals 18
    .parameter "splitList"

    .prologue
    .line 245
    const-string v4, ""

    .line 246
    .local v4, sendAction:Ljava/lang/String;
    const-string v5, ""

    .line 247
    .local v5, sendPermission:Ljava/lang/String;
    const/4 v6, 0x0

    .line 248
    .local v6, responseType:I
    const/4 v7, 0x0

    .line 249
    .local v7, smsType:[B
    const/4 v8, 0x0

    .line 250
    .local v8, addCondition:B
    const/4 v11, 0x0

    .line 251
    .local v11, conditionOffset:I
    const/4 v10, 0x0

    .line 252
    .local v10, conditionLen:I
    const/4 v9, 0x0

    .line 255
    .local v9, conditionFree:[B
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    const/4 v3, 0x5

    if-ge v12, v3, :cond_1

    .line 256
    packed-switch v12, :pswitch_data_0

    .line 255
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 258
    :pswitch_0
    aget-object v3, p1, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType;->kddiCheckNullWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 259
    goto :goto_1

    .line 261
    :pswitch_1
    aget-object v3, p1, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType;->kddiCheckNullWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 262
    goto :goto_1

    .line 264
    :pswitch_2
    aget-object v3, p1, v12

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 265
    goto :goto_1

    .line 267
    :pswitch_3
    aget-object v3, p1, v12

    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v3, v1}, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType;->kddiAsByteArray(Ljava/lang/String;I)[B

    move-result-object v7

    .line 268
    goto :goto_1

    .line 271
    :pswitch_4
    const-string v16, ""

    .line 272
    .local v16, str:Ljava/lang/String;
    aget-object v16, p1, v12

    .line 273
    const/4 v3, 0x0

    const/16 v17, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v17, "0x"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 274
    const/4 v3, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 276
    :cond_0
    const/16 v3, 0x10

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v8, v3

    .line 277
    goto :goto_1

    .line 284
    .end local v16           #str:Ljava/lang/String;
    :cond_1
    new-instance v2, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;-><init>(Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType;Ljava/lang/String;Ljava/lang/String;I[BB)V

    .line 286
    .local v2, smsTypeRecord:Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;->mAddConditionList:Ljava/util/ArrayList;

    .line 289
    if-eqz v8, :cond_3

    .line 292
    const/4 v3, -0x1

    if-ne v8, v3, :cond_2

    .line 293
    const/4 v14, 0x2

    .line 300
    .local v14, loopCnt:I
    :goto_2
    const/4 v12, 0x5

    .line 301
    const/4 v13, 0x0

    .local v13, j:I
    :goto_3
    if-ge v13, v14, :cond_3

    .line 303
    aget-object v3, p1, v12

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 304
    add-int/lit8 v12, v12, 0x1

    .line 307
    aget-object v3, p1, v12

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 308
    add-int/lit8 v12, v12, 0x1

    .line 311
    aget-object v3, p1, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v10}, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType;->kddiAsByteArray(Ljava/lang/String;I)[B

    move-result-object v9

    .line 312
    add-int/lit8 v12, v12, 0x1

    .line 315
    new-instance v15, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v11, v10, v9}, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;-><init>(Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType;II[B)V

    .line 317
    .local v15, smsTypeAddCondition:Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;
    iget-object v3, v2, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;->mAddConditionList:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 296
    .end local v13           #j:I
    .end local v14           #loopCnt:I
    .end local v15           #smsTypeAddCondition:Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;
    :cond_2
    move v14, v8

    .restart local v14       #loopCnt:I
    goto :goto_2

    .line 321
    .end local v14           #loopCnt:I
    :cond_3
    return-object v2

    .line 256
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public kddiJudgeType([B)Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;
    .locals 7
    .parameter "userdata"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 68
    const/4 v2, 0x0

    .line 71
    .local v2, offset:I
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType;->mSmsTypeRecordList:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType;->kddiReadSmsTypeTable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 73
    const-string v3, "KDDI_SMS"

    const-string v4, "KDDIreadSmsTypeTable() failed to read target resource"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v0, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;

    const-string v3, "android.provider.Telephony.SMS_RECEIVED"

    const-string v4, "android.permission.RECEIVE_SMS"

    invoke-direct {v0, p0, v3, v4, v5}, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;-><init>(Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType;Ljava/lang/String;Ljava/lang/String;I)V

    .local v0, accessory:Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;
    move-object v1, v0

    .line 89
    .end local v0           #accessory:Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;
    .local v1, accessory:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 81
    .end local v1           #accessory:Ljava/lang/Object;
    :cond_0
    array-length v3, p1

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1

    .line 82
    sget-object v3, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType;->KDDI_NEW_SMS_TYPE:[B

    aget-byte v3, v3, v5

    aget-byte v4, p1, v5

    if-ne v3, v4, :cond_1

    sget-object v3, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType;->KDDI_NEW_SMS_TYPE:[B

    aget-byte v3, v3, v6

    aget-byte v4, p1, v6

    if-ne v3, v4, :cond_1

    .line 84
    const/4 v2, 0x2

    .line 88
    :cond_1
    invoke-virtual {p0, p1, v2}, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType;->kddiUserdataJudgment([BI)Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;

    move-result-object v0

    .restart local v0       #accessory:Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;
    move-object v1, v0

    .line 89
    .restart local v1       #accessory:Ljava/lang/Object;
    goto :goto_0
.end method

.method protected kddiReadSmsTypeTable()Z
    .locals 7

    .prologue
    .line 208
    const/4 v2, 0x0

    .line 212
    .local v2, result:Z
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType;->mSmsTypeRecordList:Ljava/util/ArrayList;

    .line 215
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v5, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType;->KDDI_SMS_TYPE_TBL:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    .line 217
    sget-object v5, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType;->KDDI_SMS_TYPE_TBL:[Ljava/lang/String;

    aget-object v5, v5, v1

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 220
    .local v4, splitStr:[Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType;->kddiSetRecord([Ljava/lang/String;)Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;

    move-result-object v3

    .line 223
    .local v3, smsTypeRecord:Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType;->mSmsTypeRecordList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 225
    .end local v3           #smsTypeRecord:Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;
    .end local v4           #splitStr:[Ljava/lang/String;
    :cond_0
    const/4 v2, 0x1

    .line 230
    .end local v1           #i:I
    :goto_1
    return v2

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1
.end method

.method protected kddiUserdataJudgment([BI)Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;
    .locals 14
    .parameter "userdata"
    .parameter "offset"

    .prologue
    .line 95
    const/4 v6, 0x0

    .line 96
    .local v6, listNum:I
    const/4 v5, 0x0

    .line 101
    .local v5, judgeSms:Z
    array-length v10, p1

    .line 104
    .local v10, userdataLen:I
    :goto_0
    iget-object v11, p0, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType;->mSmsTypeRecordList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v6, v11, :cond_7

    .line 106
    move/from16 v8, p2

    .line 108
    .local v8, pos:I
    iget-object v11, p0, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType;->mSmsTypeRecordList:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;

    .line 112
    .local v9, smsTypeRecord:Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;
    iget-object v11, v9, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;->mSmsType:[B

    const/4 v12, 0x0

    aget-byte v11, v11, v12

    const/4 v12, -0x1

    if-ne v11, v12, :cond_0

    iget-object v11, v9, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;->mSmsType:[B

    const/4 v12, 0x1

    aget-byte v11, v11, v12

    const/4 v12, -0x1

    if-eq v11, v12, :cond_3

    .line 114
    :cond_0
    sub-int v11, v10, v8

    const/4 v12, 0x2

    if-lt v11, v12, :cond_1

    .line 115
    aget-byte v11, p1, v8

    iget-object v12, v9, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;->mSmsType:[B

    const/4 v13, 0x0

    aget-byte v12, v12, v13

    if-ne v11, v12, :cond_1

    add-int/lit8 v11, v8, 0x1

    aget-byte v11, p1, v11

    iget-object v12, v9, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;->mSmsType:[B

    const/4 v13, 0x1

    aget-byte v12, v12, v13

    if-eq v11, v12, :cond_2

    .line 104
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 120
    :cond_2
    const/4 v5, 0x1

    .line 129
    :cond_3
    iget-byte v11, v9, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;->mAddCondition:B

    const/4 v12, -0x1

    if-eq v11, v12, :cond_9

    .line 131
    iget-byte v2, v9, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;->mAddCondition:B

    .line 133
    .local v2, conditionNum:I
    if-lez v2, :cond_6

    .line 134
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_6

    .line 136
    iget-object v11, v9, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;->mAddConditionList:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;

    .line 138
    .local v1, addCondition:Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;
    iget v11, v1, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;->mConditionOffset:I

    add-int/2addr v8, v11

    .line 141
    sub-int v11, v10, v8

    iget v12, v1, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;->mConditionLen:I

    if-lt v11, v12, :cond_5

    .line 142
    const/4 v4, 0x0

    .local v4, j:I
    :goto_2
    iget v11, v1, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;->mConditionLen:I

    if-ge v4, v11, :cond_5

    .line 143
    aget-byte v11, p1, v8

    iget-object v12, v1, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;->mCondition:[B

    aget-byte v12, v12, v4

    if-ne v11, v12, :cond_4

    .line 144
    const/4 v5, 0x1

    .line 145
    add-int/lit8 v8, v8, 0x1

    .line 142
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 147
    :cond_4
    const/4 v5, 0x0

    .line 152
    .end local v4           #j:I
    :cond_5
    const/4 v11, 0x1

    if-eq v5, v11, :cond_8

    .line 184
    .end local v1           #addCondition:Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;
    .end local v2           #conditionNum:I
    .end local v3           #i:I
    :cond_6
    :goto_3
    const/4 v11, 0x1

    if-ne v5, v11, :cond_1

    .line 190
    .end local v8           #pos:I
    .end local v9           #smsTypeRecord:Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;
    :cond_7
    const/4 v11, 0x1

    if-ne v5, v11, :cond_b

    .line 191
    iget-object v11, p0, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType;->mSmsTypeRecordList:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;

    iget-object v0, v11, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;->mKddiSmsAccessory:Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;

    .line 196
    .local v0, accessory:Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;
    :goto_4
    return-object v0

    .line 134
    .end local v0           #accessory:Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;
    .restart local v1       #addCondition:Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;
    .restart local v2       #conditionNum:I
    .restart local v3       #i:I
    .restart local v8       #pos:I
    .restart local v9       #smsTypeRecord:Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 161
    .end local v1           #addCondition:Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;
    .end local v2           #conditionNum:I
    .end local v3           #i:I
    :cond_9
    iget-object v11, v9, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;->mAddConditionList:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;

    .line 163
    .restart local v1       #addCondition:Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;
    iget-object v11, v9, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;->mAddConditionList:Ljava/util/ArrayList;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;

    .line 165
    .local v7, nextRecord:Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;
    iget v11, v1, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;->mConditionOffset:I

    add-int/2addr v8, v11

    .line 168
    sub-int v11, v10, v8

    iget v12, v1, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;->mConditionLen:I

    if-lt v11, v12, :cond_6

    .line 169
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_5
    iget v11, v1, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;->mConditionLen:I

    if-ge v3, v11, :cond_6

    .line 170
    aget-byte v11, p1, v8

    and-int/lit16 v11, v11, 0xff

    iget-object v12, v1, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;->mCondition:[B

    aget-byte v12, v12, v3

    and-int/lit16 v12, v12, 0xff

    if-lt v11, v12, :cond_6

    aget-byte v11, p1, v8

    and-int/lit16 v11, v11, 0xff

    iget-object v12, v7, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;->mCondition:[B

    aget-byte v12, v12, v3

    and-int/lit16 v12, v12, 0xff

    if-gt v11, v12, :cond_6

    .line 172
    iget-object v11, v1, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;->mCondition:[B

    aget-byte v11, v11, v3

    iget-object v12, v7, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;->mCondition:[B

    aget-byte v12, v12, v3

    if-eq v11, v12, :cond_a

    .line 173
    const/4 v5, 0x1

    .line 174
    goto :goto_3

    .line 176
    :cond_a
    add-int/lit8 v8, v8, 0x1

    .line 169
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 194
    .end local v1           #addCondition:Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;
    .end local v3           #i:I
    .end local v7           #nextRecord:Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;
    .end local v8           #pos:I
    .end local v9           #smsTypeRecord:Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;
    :cond_b
    new-instance v0, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;

    const-string v11, "android.provider.Telephony.SMS_RECEIVED"

    const-string v12, "android.permission.RECEIVE_SMS"

    const/4 v13, 0x0

    invoke-direct {v0, p0, v11, v12, v13}, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;-><init>(Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType;Ljava/lang/String;Ljava/lang/String;I)V

    .restart local v0       #accessory:Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;
    goto :goto_4
.end method
