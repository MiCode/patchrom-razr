.class public final Lcom/motorola/android/telephony/MCCTables;
.super Ljava/lang/Object;
.source "MCCTables.java"


# static fields
.field private static final DBG:Z


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, "MCCTables"

    iput-object v0, p0, Lcom/motorola/android/telephony/MCCTables;->LOG_TAG:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    .line 53
    return-void
.end method

.method private isNANPFormat1(Ljava/lang/String;)Z
    .locals 4
    .parameter "code"

    .prologue
    .line 519
    const/4 v1, 0x0

    .line 521
    .local v1, isNANP:Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 522
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 523
    .local v0, c:C
    const/16 v2, 0x2b

    if-eq v0, v2, :cond_0

    const/16 v2, 0x30

    if-eq v0, v2, :cond_0

    const/16 v2, 0x31

    if-ne v0, v2, :cond_1

    .line 529
    .end local v0           #c:C
    :cond_0
    :goto_0
    return v1

    .line 526
    .restart local v0       #c:C
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isNANPFormat2(Ljava/lang/String;)Z
    .locals 8
    .parameter "code"

    .prologue
    const/16 v7, 0x31

    const/16 v6, 0x30

    const/16 v5, 0x2b

    .line 536
    const/4 v2, 0x0

    .line 538
    .local v2, isNANP:Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    .line 539
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 540
    .local v0, c0:C
    if-eq v0, v5, :cond_0

    if-eq v0, v6, :cond_0

    if-ne v0, v7, :cond_1

    .line 551
    .end local v0           #c0:C
    :cond_0
    :goto_0
    return v2

    .line 543
    .restart local v0       #c0:C
    :cond_1
    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 544
    .local v1, c3:C
    if-eq v1, v5, :cond_0

    if-eq v1, v6, :cond_0

    if-eq v1, v7, :cond_0

    .line 547
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isNANPFormat3(Ljava/lang/String;)Z
    .locals 3
    .parameter "code"

    .prologue
    .line 558
    const/4 v0, 0x0

    .line 559
    .local v0, isNANP:Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    .line 560
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x31

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/motorola/android/telephony/MCCTables;->isNANPFormat2(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 561
    const/4 v0, 0x1

    .line 564
    :cond_0
    return v0
.end method

.method private isNANPFormat4(Ljava/lang/String;)Z
    .locals 3
    .parameter "code"

    .prologue
    .line 571
    const/4 v0, 0x0

    .line 572
    .local v0, isNANP:Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 573
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/motorola/android/telephony/MCCTables;->isNANPFormat3(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 574
    const/4 v0, 0x1

    .line 577
    :cond_0
    return v0
.end method

.method private isNANPFormat5(Ljava/lang/String;)Z
    .locals 5
    .parameter "code"

    .prologue
    .line 584
    const/4 v2, 0x0

    .line 585
    .local v2, isNANP:Z
    iget-object v3, p0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    const-string v4, "cur_country_idd"

    invoke-static {v3, v4}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 586
    .local v0, curIdd:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 587
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 588
    .local v1, iddLen:I
    if-lez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v4, v1, 0xb

    if-ne v3, v4, :cond_0

    .line 589
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/motorola/android/telephony/MCCTables;->isNANPFormat3(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 591
    const/4 v2, 0x1

    .line 595
    .end local v1           #iddLen:I
    :cond_0
    return v2
.end method


# virtual methods
.method public addUnknownCountry(Lcom/motorola/android/telephony/MCCEntry;)V
    .locals 4
    .parameter "entry"

    .prologue
    const/4 v3, 0x0

    .line 412
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 414
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "sid"

    sget v2, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentSid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 415
    const-string v1, "mcc"

    iget v2, p1, Lcom/motorola/android/telephony/MCCEntry;->MCC:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 416
    const-string v1, "country_code"

    iget v2, p1, Lcom/motorola/android/telephony/MCCEntry;->countryCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 417
    const-string v1, "country_name"

    iget-object v2, p1, Lcom/motorola/android/telephony/MCCEntry;->countryName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const-string v1, "ndd"

    iget-object v2, p1, Lcom/motorola/android/telephony/MCCEntry;->NDD:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string v1, "idd"

    iget-object v2, p1, Lcom/motorola/android/telephony/MCCEntry;->IDD:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string v1, "area_code"

    iget-object v2, p1, Lcom/motorola/android/telephony/MCCEntry;->areaCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string v1, "mdn_length"

    iget v2, p1, Lcom/motorola/android/telephony/MCCEntry;->MDNLength:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 422
    const-string v1, "dst_flag"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 423
    const-string v1, "nanps"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 424
    const-string v1, "nbpcd"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 425
    const-string v1, "time_zone"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 427
    iget-object v1, p0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/motorola/android/provider/Dlut$Useradd;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 428
    return-void
.end method

.method public checkUnknownMcc(III)I
    .locals 30
    .parameter "sid"
    .parameter "tz"
    .parameter "DSTflag"

    .prologue
    .line 60
    const/16 v28, 0x0

    .line 63
    .local v28, tmpMcc:I
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "mcc"

    aput-object v3, v4, v2

    .line 64
    .local v4, projection1:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/motorola/android/provider/Dlut$Useradd;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 67
    .local v20, c1:Landroid/database/Cursor;
    if-eqz v20, :cond_1

    .line 68
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 70
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    .line 71
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 74
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    move/from16 v29, v28

    .line 173
    .end local v28           #tmpMcc:I
    .local v29, tmpMcc:I
    :goto_0
    return v29

    .line 77
    .end local v29           #tmpMcc:I
    .restart local v28       #tmpMcc:I
    :cond_0
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 81
    :cond_1
    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "mcc"

    aput-object v3, v7, v2

    .line 82
    .local v7, projection2:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/motorola/android/provider/Dlut$Unresolve;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 85
    .local v21, c2:Landroid/database/Cursor;
    if-eqz v21, :cond_3

    .line 86
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 88
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    .line 89
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 91
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    move/from16 v29, v28

    .line 92
    .end local v28           #tmpMcc:I
    .restart local v29       #tmpMcc:I
    goto :goto_0

    .line 94
    .end local v29           #tmpMcc:I
    .restart local v28       #tmpMcc:I
    :cond_2
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 98
    :cond_3
    const/4 v2, 0x1

    new-array v10, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "mcc"

    aput-object v3, v10, v2

    .line 99
    .local v10, projection3:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    sget-object v9, Lcom/motorola/android/provider/Dlut$Conflicts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sid_conflict="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 102
    .local v22, c3:Landroid/database/Cursor;
    if-eqz v22, :cond_8

    .line 104
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 106
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    .line 107
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 109
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    move/from16 v29, v28

    .line 110
    .end local v28           #tmpMcc:I
    .restart local v29       #tmpMcc:I
    goto/16 :goto_0

    .line 114
    .end local v29           #tmpMcc:I
    .restart local v28       #tmpMcc:I
    :cond_4
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_7

    .line 119
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    .line 120
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v25

    .line 121
    .local v25, count:I
    const/16 v27, 0x0

    .local v27, i:I
    :goto_1
    move/from16 v0, v27

    move/from16 v1, v25

    if-ge v0, v1, :cond_7

    .line 122
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 123
    .local v26, foundMcc:I
    const/4 v2, 0x1

    new-array v13, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "mcc"

    aput-object v3, v13, v2

    .line 124
    .local v13, projection4:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    sget-object v12, Lcom/motorola/android/provider/Dlut$Lookup;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mcc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and ((("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "gmt_offset_low"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") and ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "gmt_offset_high"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") and ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")) or (("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "gmt_dst_low"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") and ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "gmt_dst_high"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") and ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")))"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 133
    .local v23, c4:Landroid/database/Cursor;
    if-eqz v23, :cond_6

    .line 134
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_5

    .line 136
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToFirst()Z

    .line 137
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 139
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 140
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    move/from16 v29, v28

    .line 141
    .end local v28           #tmpMcc:I
    .restart local v29       #tmpMcc:I
    goto/16 :goto_0

    .line 143
    .end local v29           #tmpMcc:I
    .restart local v28       #tmpMcc:I
    :cond_5
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 145
    :cond_6
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    .line 121
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_1

    .line 148
    .end local v13           #projection4:[Ljava/lang/String;
    .end local v23           #c4:Landroid/database/Cursor;
    .end local v25           #count:I
    .end local v26           #foundMcc:I
    .end local v27           #i:I
    :cond_7
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 152
    :cond_8
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    const-string v3, "mcc"

    aput-object v3, v16, v2

    .line 153
    .local v16, projection5:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    sget-object v15, Lcom/motorola/android/provider/Dlut$Range;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sid_range_low<="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "sid_range_high"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 157
    .local v24, c5:Landroid/database/Cursor;
    if-eqz v24, :cond_a

    .line 158
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_9

    .line 160
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToFirst()Z

    .line 161
    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 163
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    move/from16 v29, v28

    .line 164
    .end local v28           #tmpMcc:I
    .restart local v29       #tmpMcc:I
    goto/16 :goto_0

    .line 166
    .end local v29           #tmpMcc:I
    .restart local v28       #tmpMcc:I
    :cond_9
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    :cond_a
    move/from16 v29, v28

    .line 173
    .end local v28           #tmpMcc:I
    .restart local v29       #tmpMcc:I
    goto/16 :goto_0
.end method

.method public formatNANPMDN(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "rawMdn"

    .prologue
    .line 715
    invoke-direct {p0, p1}, Lcom/motorola/android/telephony/MCCTables;->isNANPFormat3(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 716
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 722
    .local v0, pureMdn:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 717
    .end local v0           #pureMdn:Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1}, Lcom/motorola/android/telephony/MCCTables;->isNANPFormat4(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 718
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #pureMdn:Ljava/lang/String;
    goto :goto_0

    .line 720
    .end local v0           #pureMdn:Ljava/lang/String;
    :cond_1
    move-object v0, p1

    .restart local v0       #pureMdn:Ljava/lang/String;
    goto :goto_0
.end method

.method public getAllCountryListInDb()[Lcom/motorola/android/telephony/MCCEntry;
    .locals 20

    .prologue
    .line 319
    const-string v18, ""

    .line 321
    .local v18, lastCountryName:Ljava/lang/String;
    const/16 v17, 0x0

    .line 322
    .local v17, j:I
    const/16 v19, 0x0

    .line 324
    .local v19, mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "mcc"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "country_code"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string v2, "country_name"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    const-string v2, "ndd"

    aput-object v2, v3, v1

    .line 328
    .local v3, projection:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/motorola/android/provider/Dlut$Lookup;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "country_name"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 329
    .local v12, c:Landroid/database/Cursor;
    if-nez v12, :cond_0

    .line 330
    const/4 v14, 0x0

    move-object/from16 v4, v19

    .line 355
    .end local v19           #mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    .local v4, mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    :goto_0
    return-object v14

    .line 333
    .end local v4           #mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    .restart local v19       #mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    :cond_0
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 334
    .local v13, count:I
    add-int/lit8 v1, v13, 0x1

    new-array v14, v1, [Lcom/motorola/android/telephony/MCCEntry;

    .line 336
    .local v14, countryList:[Lcom/motorola/android/telephony/MCCEntry;
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 337
    const/16 v16, 0x0

    .local v16, i:I
    move-object/from16 v4, v19

    .end local v19           #mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    .restart local v4       #mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    :goto_1
    move/from16 v0, v16

    if-ge v0, v13, :cond_2

    .line 338
    const/4 v1, 0x2

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 339
    .local v15, curCountryName:Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 340
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 341
    .local v5, MCC:I
    const/4 v1, 0x1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 342
    .local v6, countryCode:I
    move-object v7, v15

    .line 343
    .local v7, countryName:Ljava/lang/String;
    const/4 v1, 0x3

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 344
    .local v8, NDD:Ljava/lang/String;
    new-instance v4, Lcom/motorola/android/telephony/MCCEntry;

    .end local v4           #mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    const-string v9, "011"

    const-string v10, "847"

    const/16 v11, 0xa

    invoke-direct/range {v4 .. v11}, Lcom/motorola/android/telephony/MCCEntry;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 345
    .restart local v4       #mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    aput-object v4, v14, v17

    .line 346
    add-int/lit8 v17, v17, 0x1

    .line 347
    move-object/from16 v18, v15

    .line 349
    .end local v5           #MCC:I
    .end local v6           #countryCode:I
    .end local v7           #countryName:Ljava/lang/String;
    .end local v8           #NDD:Ljava/lang/String;
    :cond_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    .line 337
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 351
    .end local v15           #curCountryName:Ljava/lang/String;
    :cond_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 352
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/android/telephony/MCCTables;->getCountryFromUserTable()Lcom/motorola/android/telephony/MCCEntry;

    move-result-object v1

    aput-object v1, v14, v13

    goto :goto_0
.end method

.method public getCountryByMCC(I)Lcom/motorola/android/telephony/MCCEntry;
    .locals 26
    .parameter "mcc"

    .prologue
    .line 184
    const-string v9, ""

    .line 185
    .local v9, NDD:Ljava/lang/String;
    const-string v10, ""

    .line 186
    .local v10, IDD:Ljava/lang/String;
    const-string v11, ""

    .line 187
    .local v11, areaCode:Ljava/lang/String;
    const/4 v12, 0x0

    .line 188
    .local v12, MDNLength:I
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v24

    .line 190
    .local v24, mMdn:Ljava/lang/String;
    const/16 v25, 0x0

    .line 191
    .local v25, mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    const/16 v22, 0x0

    .line 194
    .local v22, c:Landroid/database/Cursor;
    if-nez v24, :cond_1

    const-string v24, ""

    .line 197
    :goto_0
    const/4 v2, -0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_2

    .line 198
    const/4 v2, 0x5

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "mcc"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "country_code"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "ndd"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "country_name"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "idd"

    aput-object v3, v4, v2

    .line 203
    .local v4, projection1:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/motorola/android/provider/Dlut$Useradd;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 205
    if-eqz v22, :cond_7

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_7

    .line 207
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    .line 208
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 209
    .local v6, MCC:I
    const/4 v2, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 210
    .local v7, countryCode:I
    const/4 v2, 0x2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 211
    const/4 v2, 0x3

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 212
    .local v8, countryName:Ljava/lang/String;
    const/4 v2, 0x4

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 213
    new-instance v5, Lcom/motorola/android/telephony/MCCEntry;

    invoke-direct/range {v5 .. v12}, Lcom/motorola/android/telephony/MCCEntry;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 259
    .end local v4           #projection1:[Ljava/lang/String;
    .end local v6           #MCC:I
    .end local v7           #countryCode:I
    .end local v8           #countryName:Ljava/lang/String;
    .end local v25           #mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    .local v5, mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    :goto_1
    if-eqz v22, :cond_0

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 262
    :cond_0
    return-object v5

    .line 194
    .end local v5           #mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    .restart local v25       #mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/MCCTables;->formatNANPMDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    goto :goto_0

    .line 218
    :cond_2
    const/4 v2, 0x4

    new-array v15, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "mcc"

    aput-object v3, v15, v2

    const/4 v2, 0x1

    const-string v3, "country_code"

    aput-object v3, v15, v2

    const/4 v2, 0x2

    const-string v3, "ndd"

    aput-object v3, v15, v2

    const/4 v2, 0x3

    const-string v3, "country_name"

    aput-object v3, v15, v2

    .line 223
    .local v15, projection2:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    sget-object v14, Lcom/motorola/android/provider/Dlut$Lookup;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mcc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 226
    if-eqz v22, :cond_7

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_7

    .line 228
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    .line 229
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 230
    .restart local v6       #MCC:I
    const/4 v2, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 231
    .restart local v7       #countryCode:I
    const/4 v2, 0x2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 232
    const/4 v2, 0x3

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 233
    .restart local v8       #countryName:Ljava/lang/String;
    if-eqz v24, :cond_6

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v12

    .line 234
    :goto_2
    const-string v2, "United States of America"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    if-lt v12, v2, :cond_3

    .line 235
    const/4 v2, 0x0

    const/4 v3, 0x3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 244
    :cond_3
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/4 v2, 0x0

    const-string v3, "idd"

    aput-object v3, v18, v2

    .line 245
    .local v18, projection3:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    move-object/from16 v16, v0

    sget-object v17, Lcom/motorola/android/provider/Dlut$Idd;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mcc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v16 .. v21}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 247
    .local v23, cur:Landroid/database/Cursor;
    if-eqz v23, :cond_5

    .line 248
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_4

    .line 250
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToFirst()Z

    .line 251
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 254
    :cond_4
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 256
    :cond_5
    new-instance v5, Lcom/motorola/android/telephony/MCCEntry;

    invoke-direct/range {v5 .. v12}, Lcom/motorola/android/telephony/MCCEntry;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .end local v25           #mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    .restart local v5       #mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    goto/16 :goto_1

    .line 233
    .end local v5           #mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    .end local v18           #projection3:[Ljava/lang/String;
    .end local v23           #cur:Landroid/database/Cursor;
    .restart local v25       #mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    :cond_6
    const/4 v12, 0x0

    goto :goto_2

    .end local v6           #MCC:I
    .end local v7           #countryCode:I
    .end local v8           #countryName:Ljava/lang/String;
    .end local v15           #projection2:[Ljava/lang/String;
    :cond_7
    move-object/from16 v5, v25

    .end local v25           #mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    .restart local v5       #mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    goto/16 :goto_1
.end method

.method public getCountryFromUserTable()Lcom/motorola/android/telephony/MCCEntry;
    .locals 15

    .prologue
    .line 271
    const/4 v14, 0x0

    .line 272
    .local v14, mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    const/4 v13, 0x0

    .line 273
    .local v13, mcc:I
    const/4 v12, 0x0

    .line 274
    .local v12, countryCode:I
    const/4 v10, 0x0

    .line 275
    .local v10, mdnLength:I
    const/4 v7, 0x0

    .line 276
    .local v7, ndd:Ljava/lang/String;
    const/4 v8, 0x0

    .line 277
    .local v8, idd:Ljava/lang/String;
    const/4 v6, 0x0

    .line 278
    .local v6, countryName:Ljava/lang/String;
    const/4 v9, 0x0

    .line 280
    .local v9, areaCode:Ljava/lang/String;
    const/4 v0, 0x7

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "mcc"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "country_code"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "ndd"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "country_name"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "idd"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "area_code"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "mdn_length"

    aput-object v1, v2, v0

    .line 288
    .local v2, projection:[Ljava/lang/String;
    iget-object v0, p0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/motorola/android/provider/Dlut$Useradd;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 289
    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_1

    .line 290
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 292
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 293
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 294
    .end local v13           #mcc:I
    .local v4, mcc:I
    const/4 v0, 0x1

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 295
    .end local v12           #countryCode:I
    .local v5, countryCode:I
    const/4 v0, 0x2

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 296
    const/4 v0, 0x3

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 297
    const/4 v0, 0x4

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 298
    const/4 v0, 0x5

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 299
    const/4 v0, 0x6

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 300
    new-instance v3, Lcom/motorola/android/telephony/MCCEntry;

    invoke-direct/range {v3 .. v10}, Lcom/motorola/android/telephony/MCCEntry;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 302
    .end local v14           #mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    .local v3, mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 306
    :goto_1
    return-object v3

    .end local v3           #mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    .end local v4           #mcc:I
    .end local v5           #countryCode:I
    .restart local v12       #countryCode:I
    .restart local v13       #mcc:I
    .restart local v14       #mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    :cond_0
    move v5, v12

    .end local v12           #countryCode:I
    .restart local v5       #countryCode:I
    move v4, v13

    .end local v13           #mcc:I
    .restart local v4       #mcc:I
    move-object v3, v14

    .end local v14           #mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    .restart local v3       #mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    goto :goto_0

    .end local v3           #mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    .end local v4           #mcc:I
    .end local v5           #countryCode:I
    .restart local v12       #countryCode:I
    .restart local v13       #mcc:I
    .restart local v14       #mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    :cond_1
    move v5, v12

    .end local v12           #countryCode:I
    .restart local v5       #countryCode:I
    move v4, v13

    .end local v13           #mcc:I
    .restart local v4       #mcc:I
    move-object v3, v14

    .end local v14           #mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    .restart local v3       #mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    goto :goto_1
.end method

.method public isCtryNameExist(Ljava/lang/String;)Z
    .locals 8
    .parameter "countryName"

    .prologue
    const/4 v2, 0x0

    .line 465
    const/4 v7, 0x0

    .line 466
    .local v7, result:Z
    iget-object v0, p0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/motorola/android/provider/Dlut$Lookup;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "country_name= \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 469
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 470
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 472
    const/4 v7, 0x1

    .line 474
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 478
    :cond_1
    return v7
.end method

.method public isLastNBPCDAttmptExpired(II)Z
    .locals 13
    .parameter "mcc"
    .parameter "sid"

    .prologue
    .line 650
    const/4 v12, 0x0

    .line 652
    .local v12, result:Z
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "nbpcd_last_attempt"

    aput-object v1, v2, v0

    .line 653
    .local v2, projection:[Ljava/lang/String;
    iget-object v0, p0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/motorola/android/provider/Dlut$Range;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mcc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "sid_range_low"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "sid_range_high"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 658
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 659
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 661
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 662
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 664
    .local v10, lastAttmptDateLong:J
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-lez v0, :cond_2

    .line 665
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 666
    .local v9, lastAttmptDate:Ljava/util/Date;
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 667
    .local v8, curDate:Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 669
    .local v7, calendar:Ljava/util/Calendar;
    invoke-virtual {v7, v9}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 670
    const/4 v0, 0x2

    const/4 v1, 0x6

    invoke-virtual {v7, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 672
    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    const/4 v12, 0x1

    .line 678
    .end local v7           #calendar:Ljava/util/Calendar;
    .end local v8           #curDate:Ljava/util/Date;
    .end local v9           #lastAttmptDate:Ljava/util/Date;
    .end local v10           #lastAttmptDateLong:J
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 683
    :cond_1
    return v12

    .line 674
    .restart local v10       #lastAttmptDateLong:J
    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-nez v0, :cond_0

    .line 675
    const/4 v12, 0x1

    goto :goto_0
.end method

.method public isMCCSupportNBPCD(II)Z
    .locals 11
    .parameter "mcc"
    .parameter "sid"

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 618
    const/4 v8, 0x0

    .line 619
    .local v8, result:I
    const/4 v7, 0x0

    .line 620
    .local v7, nbpcdStatus:Z
    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "nbpcd"

    aput-object v0, v2, v9

    .line 622
    .local v2, projection:[Ljava/lang/String;
    iget-object v0, p0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/motorola/android/provider/Dlut$Range;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mcc="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " and "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "sid_range_low"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "<="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " and "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "sid_range_high"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ">="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 627
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 628
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 630
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 631
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 632
    if-ne v8, v10, :cond_0

    const/4 v7, 0x1

    .line 634
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 639
    :cond_1
    return v7
.end method

.method public isNANPFormat(Ljava/lang/String;)Z
    .locals 1
    .parameter "code"

    .prologue
    .line 602
    invoke-direct {p0, p1}, Lcom/motorola/android/telephony/MCCTables;->isNANPFormat1(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/motorola/android/telephony/MCCTables;->isNANPFormat2(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/motorola/android/telephony/MCCTables;->isNANPFormat3(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/motorola/android/telephony/MCCTables;->isNANPFormat4(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/motorola/android/telephony/MCCTables;->isNANPFormat5(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnknownCountryExist()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 445
    const/4 v7, 0x0

    .line 446
    .local v7, result:Z
    iget-object v0, p0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/motorola/android/provider/Dlut$Useradd;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 447
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 448
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 450
    const/4 v7, 0x1

    .line 452
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 456
    :cond_1
    return v7
.end method

.method public isValidCountryCode(Ljava/lang/String;)Z
    .locals 10
    .parameter "code"

    .prologue
    const/4 v2, 0x0

    .line 363
    const/4 v8, 0x0

    .line 364
    .local v8, result:Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v9, v8

    .line 382
    .end local v8           #result:Z
    .local v9, result:I
    :goto_0
    return v9

    .line 368
    .end local v9           #result:I
    .restart local v8       #result:Z
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 369
    .local v7, countryCode:I
    iget-object v0, p0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/motorola/android/provider/Dlut$Lookup;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "country_code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 373
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 374
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 376
    const/4 v8, 0x1

    .line 378
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v9, v8

    .line 382
    .restart local v9       #result:I
    goto :goto_0
.end method

.method public isValidIDD(Ljava/lang/String;)Z
    .locals 8
    .parameter "code"

    .prologue
    const/4 v2, 0x0

    .line 390
    const/4 v7, 0x0

    .line 391
    .local v7, result:Z
    iget-object v0, p0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/motorola/android/provider/Dlut$Idd;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "idd= \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 394
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 395
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 397
    const/4 v7, 0x1

    .line 399
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 403
    :cond_1
    return v7
.end method

.method public isValidNANPAreaCode(Ljava/lang/String;)Z
    .locals 9
    .parameter "code"

    .prologue
    const/4 v2, 0x0

    .line 487
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 488
    .local v6, areaCode:I
    const/4 v8, 0x0

    .line 489
    .local v8, result:Z
    iget-object v0, p0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/motorola/android/provider/Dlut$Nanp;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "area_code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 492
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 493
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 495
    const/4 v8, 0x1

    .line 497
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 501
    :cond_1
    return v8
.end method

.method public removeUnknownCountry()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 436
    iget-object v0, p0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/motorola/android/provider/Dlut$Useradd;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 438
    return-void
.end method

.method public updateNBPCDSupportInfo(IIZZ)V
    .locals 6
    .parameter "mcc"
    .parameter "sid"
    .parameter "oldStatus"
    .parameter "curStatus"

    .prologue
    .line 693
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 695
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "nbpcd"

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 696
    if-nez p4, :cond_0

    .line 697
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 698
    .local v0, curDate:Ljava/util/Date;
    const-string v2, "nbpcd_last_attempt"

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 700
    .end local v0           #curDate:Ljava/util/Date;
    :cond_0
    iget-object v2, p0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/motorola/android/provider/Dlut$Range;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mcc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "sid_range_low"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "sid_range_high"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 705
    return-void
.end method
