.class public final Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;
.super Ljava/lang/Object;
.source "GsmNumberHandleForAssistedDialing.java"


# static fields
.field private static final DBG:Z


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final USIDD_LEN:I

.field private final US_CC:Ljava/lang/String;

.field private final US_IDD:Ljava/lang/String;

.field private final US_NDD:Ljava/lang/String;

.field private cr:Landroid/content/ContentResolver;

.field private isoCountryName:Ljava/lang/String;

.field private mCurrentMcc:I

.field private mMccTable:Lcom/motorola/android/telephony/MCCTables;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "GsmNumberHandleForAssistedDialing"

    iput-object v0, p0, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->LOG_TAG:Ljava/lang/String;

    .line 28
    const-string v0, "011"

    iput-object v0, p0, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->US_IDD:Ljava/lang/String;

    .line 29
    const-string v0, "1"

    iput-object v0, p0, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->US_CC:Ljava/lang/String;

    .line 30
    const-string v0, "1"

    iput-object v0, p0, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->US_NDD:Ljava/lang/String;

    .line 31
    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->USIDD_LEN:I

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->mCurrentMcc:I

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->isoCountryName:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    .line 35
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    .line 38
    new-instance v0, Lcom/motorola/android/telephony/MCCTables;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/MCCTables;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    .line 40
    return-void
.end method

.method private manipulateNumberinGsmNetwork(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 23
    .parameter "sourceNumber"
    .parameter "byWhom"

    .prologue
    .line 66
    move-object/from16 v6, p1

    .line 67
    .local v6, manipulatedNumber:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    .line 79
    .local v7, numLength:I
    const-string v3, ""

    .line 82
    .local v3, areaCode:Ljava/lang/String;
    sget-object v20, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mADLock:Ljava/lang/Object;

    monitor-enter v20

    .line 83
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v19, v0

    const-string v21, "cur_country_idd"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 84
    .local v10, otaIdd:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v19, v0

    const-string v21, "cur_country_ndd"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 85
    .local v12, otaNdd:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v19, v0

    const-string v21, "cur_country_code"

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 89
    .local v8, otaCC:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v19, v0

    const-string v21, "ref_country_idd"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 90
    .local v15, refIdd:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v19, v0

    const-string v21, "ref_country_ndd"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 91
    .local v17, refNdd:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v19, v0

    const-string v21, "ref_country_code"

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    .line 94
    .local v14, refCC:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v19, v0

    const-string v21, "cur_country_updated_by_user"

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 99
    .local v4, areaCodeUpdated:I
    if-eqz v4, :cond_0

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v19, v0

    const-string v21, "ref_country_area_code"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 103
    :cond_0
    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    if-nez v4, :cond_1

    .line 106
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v5

    .line 108
    .local v5, mMdn:Ljava/lang/String;
    if-nez v5, :cond_9

    const-string v5, ""

    .line 109
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_1

    .line 110
    const/16 v19, 0x0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 123
    .end local v5           #mMdn:Ljava/lang/String;
    :cond_1
    const/4 v11, 0x0

    .line 124
    .local v11, otaIddLength:I
    if-eqz v10, :cond_2

    .line 125
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    .line 127
    :cond_2
    const/4 v13, 0x0

    .line 128
    .local v13, otaNddLength:I
    if-eqz v12, :cond_3

    .line 129
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    .line 131
    :cond_3
    const/4 v9, 0x0

    .line 132
    .local v9, otaCCLength:I
    if-eqz v8, :cond_4

    .line 133
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    .line 135
    :cond_4
    const/16 v16, 0x0

    .line 136
    .local v16, refIddLength:I
    if-eqz v15, :cond_5

    .line 137
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v16

    .line 140
    :cond_5
    const/16 v18, 0x0

    .line 141
    .local v18, refNddLength:I
    if-eqz v17, :cond_6

    .line 142
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v18

    .line 146
    :cond_6
    if-eqz v7, :cond_7

    .line 152
    move/from16 v0, v16

    if-lt v7, v0, :cond_a

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 154
    const-string v19, "+"

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 204
    :cond_7
    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 205
    const/4 v6, 0x0

    .line 208
    :cond_8
    return-object v6

    .line 103
    .end local v4           #areaCodeUpdated:I
    .end local v8           #otaCC:Ljava/lang/String;
    .end local v9           #otaCCLength:I
    .end local v10           #otaIdd:Ljava/lang/String;
    .end local v11           #otaIddLength:I
    .end local v12           #otaNdd:Ljava/lang/String;
    .end local v13           #otaNddLength:I
    .end local v14           #refCC:Ljava/lang/String;
    .end local v15           #refIdd:Ljava/lang/String;
    .end local v16           #refIddLength:I
    .end local v17           #refNdd:Ljava/lang/String;
    .end local v18           #refNddLength:I
    :catchall_0
    move-exception v19

    :try_start_1
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v19

    .line 108
    .restart local v4       #areaCodeUpdated:I
    .restart local v5       #mMdn:Ljava/lang/String;
    .restart local v8       #otaCC:Ljava/lang/String;
    .restart local v10       #otaIdd:Ljava/lang/String;
    .restart local v12       #otaNdd:Ljava/lang/String;
    .restart local v14       #refCC:Ljava/lang/String;
    .restart local v15       #refIdd:Ljava/lang/String;
    .restart local v17       #refNdd:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/motorola/android/telephony/MCCTables;->formatNANPMDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 159
    .end local v5           #mMdn:Ljava/lang/String;
    .restart local v9       #otaCCLength:I
    .restart local v11       #otaIddLength:I
    .restart local v13       #otaNddLength:I
    .restart local v16       #refIddLength:I
    .restart local v18       #refNddLength:I
    :cond_a
    const-string v19, "BY_CONTACT"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    const/16 v19, 0xb

    move/from16 v0, v19

    if-ne v7, v0, :cond_b

    const-string v19, "1"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "1"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 163
    const-string v19, "+"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 169
    :cond_b
    const-string v19, "BY_CONTACT"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    const-string v19, "1"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    const/16 v19, 0xa

    move/from16 v0, v19

    if-ne v7, v0, :cond_c

    .line 172
    const-string v19, "+"

    const-string v20, "1"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 178
    :cond_c
    const-string v19, "BY_CONTACT"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    const-string v19, "1"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    const/16 v19, 0x7

    move/from16 v0, v19

    if-ne v7, v0, :cond_d

    .line 181
    const-string v19, "+"

    const-string v20, "1"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 187
    :cond_d
    const-string v19, "BY_CONTACT"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    const-string v19, "1"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_7

    move/from16 v0, v18

    if-lt v7, v0, :cond_7

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 191
    const/16 v19, 0x3

    move/from16 v0, v19

    if-lt v7, v0, :cond_e

    const/16 v19, 0x0

    const/16 v20, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "011"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 193
    const-string v19, "+"

    const/16 v20, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 195
    :cond_e
    const-string v19, "+"

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1
.end method


# virtual methods
.method public getManipulatedNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "sourceNumber"
    .parameter "byWhom"

    .prologue
    .line 47
    sget-object v1, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mADLock:Ljava/lang/Object;

    monitor-enter v1

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    const-string v2, "cur_country_mcc"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->mCurrentMcc:I

    .line 49
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    iget v0, p0, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->mCurrentMcc:I

    invoke-static {v0}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->isoCountryName:Ljava/lang/String;

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->manipulateNumberinGsmNetwork(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
