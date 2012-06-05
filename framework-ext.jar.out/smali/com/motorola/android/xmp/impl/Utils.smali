.class public Lcom/motorola/android/xmp/impl/Utils;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Lcom/motorola/android/xmp/XMPConst;


# static fields
.field public static final UUID_LENGTH:I = 0x24

.field public static final UUID_SEGMENT_COUNT:I = 0x4

.field private static xmlNameChars:[Z

.field private static xmlNameStartChars:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 50
    invoke-static {}, Lcom/motorola/android/xmp/impl/Utils;->initCharTables()V

    .line 51
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method static checkUUIDFormat(Ljava/lang/String;)Z
    .locals 7
    .parameter "uuid"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 290
    const/4 v2, 0x1

    .line 291
    .local v2, result:Z
    const/4 v0, 0x0

    .line 292
    .local v0, delimCnt:I
    const/4 v1, 0x0

    .line 294
    .local v1, delimPos:I
    if-nez p0, :cond_0

    .line 309
    :goto_0
    return v4

    .line 299
    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 301
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_2

    .line 303
    add-int/lit8 v0, v0, 0x1

    .line 304
    if-eqz v2, :cond_3

    const/16 v5, 0x8

    if-eq v1, v5, :cond_1

    const/16 v5, 0xd

    if-eq v1, v5, :cond_1

    const/16 v5, 0x12

    if-eq v1, v5, :cond_1

    const/16 v5, 0x17

    if-ne v1, v5, :cond_3

    :cond_1
    move v2, v3

    .line 299
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v2, v4

    .line 304
    goto :goto_2

    .line 309
    :cond_4
    if-eqz v2, :cond_5

    const/4 v5, 0x4

    if-ne v5, v0, :cond_5

    const/16 v5, 0x24

    if-ne v5, v1, :cond_5

    :goto_3
    move v4, v3

    goto :goto_0

    :cond_5
    move v3, v4

    goto :goto_3
.end method

.method public static escapeXML(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 8
    .parameter "value"
    .parameter "forAttribute"
    .parameter "escapeWhitespaces"

    .prologue
    const/16 v7, 0xd

    const/16 v6, 0xa

    const/16 v5, 0x9

    .line 389
    const/4 v3, 0x0

    .line 390
    .local v3, needsEscaping:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 392
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 393
    .local v1, c:C
    const/16 v4, 0x3c

    if-eq v1, v4, :cond_1

    const/16 v4, 0x3e

    if-eq v1, v4, :cond_1

    const/16 v4, 0x26

    if-eq v1, v4, :cond_1

    if-eqz p2, :cond_0

    if-eq v1, v5, :cond_1

    if-eq v1, v6, :cond_1

    if-eq v1, v7, :cond_1

    :cond_0
    if-eqz p1, :cond_3

    const/16 v4, 0x22

    if-ne v1, v4, :cond_3

    .line 398
    :cond_1
    const/4 v3, 0x1

    .line 403
    .end local v1           #c:C
    :cond_2
    if-nez v3, :cond_4

    .line 437
    .end local p0
    :goto_1
    return-object p0

    .line 390
    .restart local v1       #c:C
    .restart local p0
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 411
    .end local v1           #c:C
    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    div-int/lit8 v4, v4, 0x3

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 412
    .local v0, buffer:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_8

    .line 414
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 415
    .restart local v1       #c:C
    if-eqz p2, :cond_5

    if-eq v1, v5, :cond_7

    if-eq v1, v6, :cond_7

    if-eq v1, v7, :cond_7

    .line 417
    :cond_5
    sparse-switch v1, :sswitch_data_0

    .line 425
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 412
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 421
    :sswitch_0
    const-string v4, "&lt;"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 422
    :sswitch_1
    const-string v4, "&gt;"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 423
    :sswitch_2
    const-string v4, "&amp;"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 424
    :sswitch_3
    if-eqz p1, :cond_6

    const-string v4, "&quot;"

    :goto_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_6
    const-string v4, "\""

    goto :goto_4

    .line 432
    :cond_7
    const-string v4, "&#x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 433
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 434
    const/16 v4, 0x3b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 437
    .end local v1           #c:C
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 417
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x26 -> :sswitch_2
        0x3c -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method private static initCharTables()V
    .locals 8

    .prologue
    const/16 v7, 0x5a

    const/16 v6, 0x41

    const/16 v5, 0x3a

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 501
    const/16 v1, 0x100

    new-array v1, v1, [Z

    sput-object v1, Lcom/motorola/android/xmp/impl/Utils;->xmlNameChars:[Z

    .line 502
    const/16 v1, 0x100

    new-array v1, v1, [Z

    sput-object v1, Lcom/motorola/android/xmp/impl/Utils;->xmlNameStartChars:[Z

    .line 504
    const/4 v0, 0x0

    .local v0, ch:C
    :goto_0
    sget-object v1, Lcom/motorola/android/xmp/impl/Utils;->xmlNameChars:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_b

    .line 506
    sget-object v4, Lcom/motorola/android/xmp/impl/Utils;->xmlNameStartChars:[Z

    const/16 v1, 0x61

    if-gt v1, v0, :cond_0

    const/16 v1, 0x7a

    if-le v0, v1, :cond_3

    :cond_0
    if-gt v6, v0, :cond_1

    if-le v0, v7, :cond_3

    :cond_1
    if-eq v0, v5, :cond_3

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_3

    const/16 v1, 0xc0

    if-gt v1, v0, :cond_2

    const/16 v1, 0xd6

    if-le v0, v1, :cond_3

    :cond_2
    const/16 v1, 0xd8

    if-gt v1, v0, :cond_9

    const/16 v1, 0xf6

    if-gt v0, v1, :cond_9

    :cond_3
    move v1, v2

    :goto_1
    aput-boolean v1, v4, v0

    .line 514
    sget-object v4, Lcom/motorola/android/xmp/impl/Utils;->xmlNameChars:[Z

    const/16 v1, 0x61

    if-gt v1, v0, :cond_4

    const/16 v1, 0x7a

    if-le v0, v1, :cond_8

    :cond_4
    if-gt v6, v0, :cond_5

    if-le v0, v7, :cond_8

    :cond_5
    const/16 v1, 0x30

    if-gt v1, v0, :cond_6

    const/16 v1, 0x39

    if-le v0, v1, :cond_8

    :cond_6
    if-eq v0, v5, :cond_8

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_8

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_8

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_8

    const/16 v1, 0xb7

    if-eq v0, v1, :cond_8

    const/16 v1, 0xc0

    if-gt v1, v0, :cond_7

    const/16 v1, 0xd6

    if-le v0, v1, :cond_8

    :cond_7
    const/16 v1, 0xd8

    if-gt v1, v0, :cond_a

    const/16 v1, 0xf6

    if-gt v0, v1, :cond_a

    :cond_8
    move v1, v2

    :goto_2
    aput-boolean v1, v4, v0

    .line 504
    add-int/lit8 v1, v0, 0x1

    int-to-char v0, v1

    goto :goto_0

    :cond_9
    move v1, v3

    .line 506
    goto :goto_1

    :cond_a
    move v1, v3

    .line 514
    goto :goto_2

    .line 526
    :cond_b
    return-void
.end method

.method static isControlChar(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 369
    const/16 v0, 0x1f

    if-le p0, v0, :cond_0

    const/16 v0, 0x7f

    if-ne p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isInternalProperty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "schema"
    .parameter "prop"

    .prologue
    .line 179
    const/4 v0, 0x0

    .line 181
    .local v0, isInternal:Z
    const-string v1, "http://purl.org/dc/elements/1.1/"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 183
    const-string v1, "dc:format"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "dc:language"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    :cond_0
    const/4 v0, 0x1

    .line 271
    :cond_1
    :goto_0
    return v0

    .line 188
    :cond_2
    const-string v1, "http://ns.adobe.com/xap/1.0/"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 190
    const-string v1, "xmp:BaseURL"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "xmp:CreatorTool"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "xmp:Format"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "xmp:Locale"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "xmp:MetadataDate"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "xmp:ModifyDate"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 197
    :cond_4
    const-string v1, "http://ns.adobe.com/pdf/1.3/"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 199
    const-string v1, "pdf:BaseURL"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "pdf:Creator"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "pdf:ModDate"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "pdf:PDFVersion"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "pdf:Producer"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 203
    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    .line 206
    :cond_6
    const-string v1, "http://ns.adobe.com/tiff/1.0/"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 208
    const/4 v0, 0x1

    .line 209
    const-string v1, "tiff:ImageDescription"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "tiff:Artist"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "tiff:Copyright"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 215
    :cond_8
    const-string v1, "http://ns.adobe.com/exif/1.0/"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 217
    const/4 v0, 0x1

    .line 218
    const-string v1, "exif:UserComment"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 223
    :cond_9
    const-string v1, "http://ns.adobe.com/exif/1.0/aux/"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 225
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 227
    :cond_a
    const-string v1, "http://ns.adobe.com/photoshop/1.0/"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 229
    const-string v1, "photoshop:ICCProfile"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 231
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 234
    :cond_b
    const-string v1, "http://ns.adobe.com/camera-raw-settings/1.0/"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 236
    const-string v1, "crs:Version"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "crs:RawFileName"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "crs:ToneCurveName"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    :cond_c
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 242
    :cond_d
    const-string v1, "http://ns.adobe.com/StockPhoto/1.0/"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 244
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 246
    :cond_e
    const-string v1, "http://ns.adobe.com/xap/1.0/mm/"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 248
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 250
    :cond_f
    const-string v1, "http://ns.adobe.com/xap/1.0/t/"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 252
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 254
    :cond_10
    const-string v1, "http://ns.adobe.com/xap/1.0/t/pg/"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 256
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 258
    :cond_11
    const-string v1, "http://ns.adobe.com/xap/1.0/g/"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 260
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 262
    :cond_12
    const-string v1, "http://ns.adobe.com/xap/1.0/g/img/"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 264
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 266
    :cond_13
    const-string v1, "http://ns.adobe.com/xap/1.0/sType/Font#"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 268
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private static isNameChar(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 492
    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    sget-object v0, Lcom/motorola/android/xmp/impl/Utils;->xmlNameChars:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNameStartChar(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 475
    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    sget-object v0, Lcom/motorola/android/xmp/impl/Utils;->xmlNameStartChars:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isXMLName(Ljava/lang/String;)Z
    .locals 3
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 324
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/motorola/android/xmp/impl/Utils;->isNameStartChar(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 335
    :cond_0
    :goto_0
    return v1

    .line 328
    :cond_1
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 330
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/motorola/android/xmp/impl/Utils;->isNameChar(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 328
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 335
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isXMLNameNS(Ljava/lang/String;)Z
    .locals 4
    .parameter "name"

    .prologue
    const/16 v3, 0x3a

    const/4 v1, 0x0

    .line 348
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/motorola/android/xmp/impl/Utils;->isNameStartChar(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    .line 359
    :cond_0
    :goto_0
    return v1

    .line 352
    :cond_1
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 354
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/motorola/android/xmp/impl/Utils;->isNameChar(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v3, :cond_0

    .line 352
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 359
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static normalizeLangValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "value"

    .prologue
    .line 81
    const-string v3, "x-default"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 115
    .end local p0
    :goto_0
    return-object p0

    .line 86
    .restart local p0
    :cond_0
    const/4 v2, 0x1

    .line 87
    .local v2, subTag:I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 89
    .local v0, buffer:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 91
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 104
    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 106
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 89
    :goto_2
    :sswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 96
    :sswitch_1
    const/16 v3, 0x2d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 97
    add-int/lit8 v2, v2, 0x1

    .line 98
    goto :goto_2

    .line 110
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 115
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 91
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x2d -> :sswitch_1
        0x5f -> :sswitch_1
    .end sparse-switch
.end method

.method static removeControlChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "value"

    .prologue
    .line 451
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 452
    .local v0, buffer:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 454
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/motorola/android/xmp/impl/Utils;->isControlChar(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 456
    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 452
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 459
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static splitNameAndValue(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .parameter "selector"

    .prologue
    .line 140
    const/16 v6, 0x3d

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 141
    .local v1, eq:I
    const/4 v3, 0x1

    .line 142
    .local v3, pos:I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3f

    if-ne v6, v7, :cond_0

    .line 144
    add-int/lit8 v3, v3, 0x1

    .line 146
    :cond_0
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, name:Ljava/lang/String;
    add-int/lit8 v3, v1, 0x1

    .line 150
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 151
    .local v4, quote:C
    add-int/lit8 v3, v3, 0x1

    .line 152
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v0, v6, -0x2

    .line 153
    .local v0, end:I
    new-instance v5, Ljava/lang/StringBuffer;

    sub-int v6, v0, v1

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 154
    .local v5, value:Ljava/lang/StringBuffer;
    :cond_1
    :goto_0
    if-ge v3, v0, :cond_2

    .line 156
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 157
    add-int/lit8 v3, v3, 0x1

    .line 158
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_1

    .line 161
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 164
    :cond_2
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    return-object v6
.end method
