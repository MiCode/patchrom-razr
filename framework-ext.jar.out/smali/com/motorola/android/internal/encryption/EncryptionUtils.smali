.class public Lcom/motorola/android/internal/encryption/EncryptionUtils;
.super Ljava/lang/Object;
.source "EncryptionUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EncryptUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static getByteArray(Ljava/lang/String;)[B
    .locals 7
    .parameter "hexString"

    .prologue
    .line 35
    if-nez p0, :cond_1

    .line 36
    const/4 v3, 0x0

    .line 51
    :cond_0
    :goto_0
    return-object v3

    .line 38
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    new-array v3, v5, [B

    .line 40
    .local v3, result:[B
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v2, 0x0

    .line 42
    .local v2, j:I
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 43
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v1, 0x2

    invoke-virtual {p0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Short;->decode(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v4

    .line 44
    .local v4, shortVal:Ljava/lang/Short;
    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    add-int/lit8 v1, v1, 0x2

    .line 46
    add-int/lit8 v2, v2, 0x1

    .line 47
    goto :goto_1

    .line 48
    .end local v4           #shortVal:Ljava/lang/Short;
    :catch_0
    move-exception v0

    .line 49
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v5, "EncryptUtils"

    const-string v6, "Invalid number format for hex string; failed to parse"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getHexString([B)Ljava/lang/String;
    .locals 5
    .parameter "bytes"

    .prologue
    .line 24
    const-string v0, "0123456789abcdef"

    .line 25
    .local v0, hexdigits:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 27
    .local v2, result:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-eqz p0, :cond_0

    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 28
    const-string v3, "0123456789abcdef"

    aget-byte v4, p0, v1

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 29
    const-string v3, "0123456789abcdef"

    aget-byte v4, p0, v1

    and-int/lit8 v4, v4, 0xf

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 27
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
