.class public final Lcom/motorola/android/internal/telephony/PlmnTable;
.super Ljava/lang/Object;
.source "PlmnTable.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "PlmnTable"

.field static final PLMN_SYSTEM_FILE_PATH:Ljava/lang/String; = "/system/etc/motorola/preferred_networks/plmn_text_table.bin"

.field protected static plmnTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/motorola/android/internal/telephony/Mcc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/android/internal/telephony/PlmnTable;->plmnTable:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getMccFromPlmn(Ljava/lang/String;)Lcom/motorola/android/internal/telephony/Mcc;
    .locals 3
    .parameter "mccStr"

    .prologue
    .line 37
    const-string v0, "PlmnTable"

    const-string v1, ">>>>>>>>>> getMccFromPlmn"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    sget-object v0, Lcom/motorola/android/internal/telephony/PlmnTable;->plmnTable:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 39
    const-string v0, "PlmnTable"

    const-string v1, "Loading PLMNTable"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-static {}, Lcom/motorola/android/internal/telephony/PlmnTable;->loadPlmnTable()V

    .line 43
    :cond_0
    const-string v0, "PlmnTable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mccStr :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    sget-object v0, Lcom/motorola/android/internal/telephony/PlmnTable;->plmnTable:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/android/internal/telephony/PlmnTable;->plmnTable:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 46
    :cond_1
    const-string v0, "PlmnTable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DON\'T HAVE the key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/4 v0, 0x0

    .line 51
    :goto_0
    return-object v0

    .line 49
    :cond_2
    const-string v0, "PlmnTable"

    const-string v1, "getMccFromPlmn >>>>>>>>>> "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    sget-object v0, Lcom/motorola/android/internal/telephony/PlmnTable;->plmnTable:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/internal/telephony/Mcc;

    goto :goto_0
.end method

.method public static getMncLength(Ljava/lang/String;I)I
    .locals 8
    .parameter "imsi"
    .parameter "mncLengthInit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    .line 164
    const-string v4, "PlmnTable"

    const-string v5, ">>>>>>>>>> getMncLength"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-string v1, ""

    .line 166
    .local v1, mccStr:Ljava/lang/String;
    move v2, p1

    .line 168
    .local v2, mncLength:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 169
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 172
    :cond_0
    const-string v4, "PlmnTable"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " mccStr: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mncLenght: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-static {v1}, Lcom/motorola/android/internal/telephony/PlmnTable;->getMccFromPlmn(Ljava/lang/String;)Lcom/motorola/android/internal/telephony/Mcc;

    move-result-object v0

    .line 178
    .local v0, mcc:Lcom/motorola/android/internal/telephony/Mcc;
    if-nez v0, :cond_2

    .line 179
    const-string v4, "PlmnTable"

    const-string v5, " mcc is NULL "

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 204
    .end local v2           #mncLength:I
    .local v3, mncLength:I
    :goto_0
    return v3

    .line 188
    .end local v3           #mncLength:I
    .restart local v2       #mncLength:I
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 184
    :cond_2
    if-lez v2, :cond_3

    .line 185
    add-int/lit8 v4, v2, 0x3

    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/motorola/android/internal/telephony/Mcc;->hasMnc(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v2

    .line 186
    .end local v2           #mncLength:I
    .restart local v3       #mncLength:I
    goto :goto_0

    .line 191
    .end local v3           #mncLength:I
    .restart local v2       #mncLength:I
    :cond_3
    const-string v4, "PlmnTable"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mncLength: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    if-nez v2, :cond_4

    .line 195
    const-string v4, "PlmnTable"

    const-string v5, "no mnc found"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v4, 0x6

    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/motorola/android/internal/telephony/Mcc;->hasMnc(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 197
    const-string v4, "PlmnTable"

    const-string v5, "mnc has 3 digits."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 v2, 0x3

    .line 202
    :cond_4
    const-string v4, "PlmnTable"

    const-string v5, "getMncLength >>>>>>>>>>"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 204
    .end local v2           #mncLength:I
    .restart local v3       #mncLength:I
    goto :goto_0
.end method

.method protected static loadPlmnTable()V
    .locals 16

    .prologue
    .line 58
    const-string v13, "PlmnTable"

    const-string v14, "loadPlmnTable >>>>>>>>>>>"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    sget-object v13, Lcom/motorola/android/internal/telephony/PlmnTable;->plmnTable:Ljava/util/HashMap;

    if-eqz v13, :cond_0

    .line 157
    :goto_0
    return-void

    .line 65
    :cond_0
    const/4 v3, 0x0

    .line 67
    .local v3, inputStream:Ljava/io/FileInputStream;
    :try_start_0
    const-string v13, "PlmnTable"

    const-string v14, "Try to open the following file /system/etc/motorola/preferred_networks/plmn_text_table.bin"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v3, Ljava/io/FileInputStream;

    .end local v3           #inputStream:Ljava/io/FileInputStream;
    new-instance v13, Ljava/io/File;

    const-string v14, "/system/etc/motorola/preferred_networks/plmn_text_table.bin"

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .restart local v3       #inputStream:Ljava/io/FileInputStream;
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    sput-object v13, Lcom/motorola/android/internal/telephony/PlmnTable;->plmnTable:Ljava/util/HashMap;

    .line 78
    const/4 v13, 0x3

    new-array v9, v13, [I

    .line 80
    .local v9, plmnBytes:[I
    const-wide/16 v4, 0x0

    .line 81
    .local v4, length:J
    const-wide/16 v11, 0x0

    .line 85
    .local v11, skipped_length:J
    const/4 v13, 0x6

    :try_start_1
    new-array v10, v13, [Ljava/lang/String;

    .line 87
    .local v10, plmnStr:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 90
    .local v6, mcc:Lcom/motorola/android/internal/telephony/Mcc;
    :cond_1
    :goto_1
    const/4 v13, 0x0

    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v14

    aput v14, v9, v13

    const/4 v13, -0x1

    if-eq v14, v13, :cond_4

    const/4 v13, 0x1

    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v14

    aput v14, v9, v13

    const/4 v13, -0x1

    if-eq v14, v13, :cond_4

    const/4 v13, 0x2

    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v14

    aput v14, v9, v13

    const/4 v13, -0x1

    if-eq v14, v13, :cond_4

    .line 92
    const-string v13, "PlmnTable"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "values read: plmnBytes:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    aget v15, v9, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    aget v15, v9, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x2

    aget v15, v9, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    array-length v13, v9

    if-ge v2, v13, :cond_2

    .line 97
    mul-int/lit8 v13, v2, 0x2

    aget v14, v9, v2

    and-int/lit16 v14, v14, 0xf0

    div-int/lit8 v14, v14, 0x10

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v10, v13

    .line 98
    mul-int/lit8 v13, v2, 0x2

    add-int/lit8 v13, v13, 0x1

    aget v14, v9, v2

    and-int/lit8 v14, v14, 0xf

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v10, v13
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 96
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 70
    .end local v2           #i:I
    .end local v3           #inputStream:Ljava/io/FileInputStream;
    .end local v4           #length:J
    .end local v6           #mcc:Lcom/motorola/android/internal/telephony/Mcc;
    .end local v9           #plmnBytes:[I
    .end local v10           #plmnStr:[Ljava/lang/String;
    .end local v11           #skipped_length:J
    :catch_0
    move-exception v1

    .line 71
    .local v1, exSystem:Ljava/io/FileNotFoundException;
    const-string v13, "PlmnTable"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 101
    .end local v1           #exSystem:Ljava/io/FileNotFoundException;
    .restart local v2       #i:I
    .restart local v3       #inputStream:Ljava/io/FileInputStream;
    .restart local v4       #length:J
    .restart local v6       #mcc:Lcom/motorola/android/internal/telephony/Mcc;
    .restart local v9       #plmnBytes:[I
    .restart local v10       #plmnStr:[Ljava/lang/String;
    .restart local v11       #skipped_length:J
    :cond_2
    :try_start_2
    const-string v13, "PlmnTable"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "values MCC STR: plmnStr:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    aget-object v15, v10, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v15, v10, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x3

    aget-object v15, v10, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v13, "PlmnTable"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "values MNC STR: plmnStr:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x5

    aget-object v15, v10, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x4

    aget-object v15, v10, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " * "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x5

    aget-object v15, v10, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x4

    aget-object v15, v10, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x2

    aget-object v15, v10, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x1

    aget-object v14, v10, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v14, v10, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x3

    aget-object v14, v10, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 112
    .local v7, mccStr:Ljava/lang/String;
    const/4 v13, 0x2

    aget-object v13, v10, v13

    const-string v14, "15"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x5

    aget-object v14, v10, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x4

    aget-object v14, v10, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 117
    .local v8, mncStr:Ljava/lang/String;
    :goto_3
    sget-object v13, Lcom/motorola/android/internal/telephony/PlmnTable;->plmnTable:Ljava/util/HashMap;

    invoke-virtual {v13, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 118
    const-string v13, "PlmnTable"

    const-string v14, "plmnTable contains the key"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    sget-object v13, Lcom/motorola/android/internal/telephony/PlmnTable;->plmnTable:Ljava/util/HashMap;

    invoke-virtual {v13, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #mcc:Lcom/motorola/android/internal/telephony/Mcc;
    check-cast v6, Lcom/motorola/android/internal/telephony/Mcc;

    .line 126
    .restart local v6       #mcc:Lcom/motorola/android/internal/telephony/Mcc;
    :goto_4
    if-eqz v6, :cond_3

    .line 127
    invoke-virtual {v6, v8}, Lcom/motorola/android/internal/telephony/Mcc;->addMnc(Ljava/lang/String;)V

    .line 131
    :cond_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_7

    .line 151
    .end local v2           #i:I
    .end local v6           #mcc:Lcom/motorola/android/internal/telephony/Mcc;
    .end local v7           #mccStr:Ljava/lang/String;
    .end local v8           #mncStr:Ljava/lang/String;
    .end local v10           #plmnStr:[Ljava/lang/String;
    :cond_4
    :goto_5
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 156
    :goto_6
    const-string v13, "PlmnTable"

    const-string v14, ">>>>>>>>>>>>>> loadPlmnTable"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 112
    .restart local v2       #i:I
    .restart local v6       #mcc:Lcom/motorola/android/internal/telephony/Mcc;
    .restart local v7       #mccStr:Ljava/lang/String;
    .restart local v10       #plmnStr:[Ljava/lang/String;
    :cond_5
    :try_start_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x5

    aget-object v14, v10, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x4

    aget-object v14, v10, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x2

    aget-object v14, v10, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 122
    .restart local v8       #mncStr:Ljava/lang/String;
    :cond_6
    new-instance v6, Lcom/motorola/android/internal/telephony/Mcc;

    .end local v6           #mcc:Lcom/motorola/android/internal/telephony/Mcc;
    invoke-direct {v6, v7}, Lcom/motorola/android/internal/telephony/Mcc;-><init>(Ljava/lang/String;)V

    .line 123
    .restart local v6       #mcc:Lcom/motorola/android/internal/telephony/Mcc;
    sget-object v13, Lcom/motorola/android/internal/telephony/PlmnTable;->plmnTable:Ljava/util/HashMap;

    invoke-virtual {v13, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    .line 146
    .end local v2           #i:I
    .end local v6           #mcc:Lcom/motorola/android/internal/telephony/Mcc;
    .end local v7           #mccStr:Ljava/lang/String;
    .end local v8           #mncStr:Ljava/lang/String;
    .end local v10           #plmnStr:[Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 147
    .local v0, e:Ljava/io/IOException;
    const-string v13, "PlmnTable"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 134
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #i:I
    .restart local v6       #mcc:Lcom/motorola/android/internal/telephony/Mcc;
    .restart local v7       #mccStr:Ljava/lang/String;
    .restart local v8       #mncStr:Ljava/lang/String;
    .restart local v10       #plmnStr:[Ljava/lang/String;
    :cond_7
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v13

    int-to-long v4, v13

    const-wide/16 v13, -0x1

    cmp-long v13, v4, v13

    if-eqz v13, :cond_4

    .line 141
    :cond_8
    invoke-virtual {v3, v4, v5}, Ljava/io/FileInputStream;->skip(J)J
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-wide v11

    .line 142
    sub-long/2addr v4, v11

    .line 143
    const-wide/16 v13, 0x0

    cmp-long v13, v4, v13

    if-lez v13, :cond_1

    const-wide/16 v13, 0x0

    cmp-long v13, v11, v13

    if-gtz v13, :cond_8

    goto/16 :goto_1

    .line 153
    .end local v2           #i:I
    .end local v6           #mcc:Lcom/motorola/android/internal/telephony/Mcc;
    .end local v7           #mccStr:Ljava/lang/String;
    .end local v8           #mncStr:Ljava/lang/String;
    .end local v10           #plmnStr:[Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 154
    .restart local v0       #e:Ljava/io/IOException;
    const-string v13, "PlmnTable"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method
