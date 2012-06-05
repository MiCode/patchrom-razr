.class public Lcom/motorola/android/bmessage/BMessageUtils;
.super Ljava/lang/Object;
.source "BMessageUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDigit(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 140
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 141
    const/4 v0, 0x1

    .line 143
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLetter(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 130
    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_2

    .line 131
    :cond_1
    const/4 v0, 0x1

    .line 133
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidDigits(Ljava/lang/String;)Z
    .locals 3
    .parameter "str"

    .prologue
    const/4 v1, 0x0

    .line 113
    const-string v0, "^[\\d]+$"

    .line 115
    .local v0, DIGITS_REGEX:Ljava/lang/String;
    if-nez p0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v1

    .line 119
    :cond_1
    const-string v2, "^[\\d]+$"

    invoke-static {v2, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isValidEmailAddress(Ljava/lang/String;)Z
    .locals 6
    .parameter "str"

    .prologue
    const/4 v4, 0x0

    .line 91
    const-string v0, "^[\\w\\.=-]+@[\\w\\.-]+\\.[\\w]{2,6}$"

    .line 92
    .local v0, EMAIL_REGEX:Ljava/lang/String;
    const/4 v3, 0x6

    .line 93
    .local v3, minLength:I
    const/16 v2, 0x80

    .line 95
    .local v2, maxLength:I
    if-nez p0, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v4

    .line 99
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 100
    .local v1, length:I
    const/4 v5, 0x6

    if-lt v1, v5, :cond_0

    const/16 v5, 0x80

    if-gt v1, v5, :cond_0

    .line 102
    const-string v5, "^[\\w\\.=-]+@[\\w\\.-]+\\.[\\w]{2,6}$"

    invoke-static {v5, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 105
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static isValidTelNumber(Ljava/lang/String;)Z
    .locals 3
    .parameter "str"

    .prologue
    const/4 v1, 0x0

    .line 72
    const-string v0, "^\\+?(\\d+)$"

    .line 74
    .local v0, TEL_REGEX:Ljava/lang/String;
    if-nez p0, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v1

    .line 78
    :cond_1
    const-string v2, "^\\+?(\\d+)$"

    invoke-static {v2, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isValidWordWithSlash(Ljava/lang/String;)Z
    .locals 3
    .parameter "str"

    .prologue
    const/4 v1, 0x0

    .line 55
    const-string v0, "[\\w\\\\]+"

    .line 57
    .local v0, WORD_SLASH_REGEX:Ljava/lang/String;
    if-nez p0, :cond_1

    .line 64
    :cond_0
    :goto_0
    return v1

    .line 61
    :cond_1
    const-string v2, "[\\w\\\\]+"

    invoke-static {v2, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static maybeUnescapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "str"

    .prologue
    .line 29
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 30
    const-string v5, ""

    .line 48
    :goto_0
    return-object v5

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 35
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 36
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 37
    .local v1, ch:C
    const/16 v5, 0x5c

    if-ne v1, v5, :cond_3

    add-int/lit8 v5, v3, -0x1

    if-ge v2, v5, :cond_3

    .line 38
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 39
    .local v4, next_ch:C
    const/16 v5, 0x6e

    if-eq v4, v5, :cond_1

    const/16 v5, 0x4e

    if-ne v4, v5, :cond_2

    .line 40
    :cond_1
    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .end local v4           #next_ch:C
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 42
    .restart local v4       #next_ch:C
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 45
    .end local v4           #next_ch:C
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 48
    .end local v1           #ch:C
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method
