.class public final Lcom/motorola/android/xmp/impl/ISO8601Converter;
.super Ljava/lang/Object;
.source "ISO8601Converter.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/motorola/android/xmp/XMPDateTime;
    .locals 1
    .parameter "iso8601String"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 93
    new-instance v0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;

    invoke-direct {v0}, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;-><init>()V

    invoke-static {p0, v0}, Lcom/motorola/android/xmp/impl/ISO8601Converter;->parse(Ljava/lang/String;Lcom/motorola/android/xmp/XMPDateTime;)Lcom/motorola/android/xmp/XMPDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Lcom/motorola/android/xmp/XMPDateTime;)Lcom/motorola/android/xmp/XMPDateTime;
    .locals 11
    .parameter "iso8601String"
    .parameter "binValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-static {p0}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertNotNull(Ljava/lang/Object;)V

    .line 107
    new-instance v1, Lcom/motorola/android/xmp/impl/ParseState;

    invoke-direct {v1, p0}, Lcom/motorola/android/xmp/impl/ParseState;-><init>(Ljava/lang/String;)V

    .line 110
    .local v1, input:Lcom/motorola/android/xmp/impl/ParseState;
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/motorola/android/xmp/impl/ParseState;->ch(I)C

    move-result v8

    const/16 v9, 0x54

    if-eq v8, v9, :cond_1

    invoke-virtual {v1}, Lcom/motorola/android/xmp/impl/ParseState;->length()I

    move-result v8

    const/4 v9, 0x2

    if-lt v8, v9, :cond_0

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lcom/motorola/android/xmp/impl/ParseState;->ch(I)C

    move-result v8

    const/16 v9, 0x3a

    if-eq v8, v9, :cond_1

    :cond_0
    invoke-virtual {v1}, Lcom/motorola/android/xmp/impl/ParseState;->length()I

    move-result v8

    const/4 v9, 0x3

    if-lt v8, v9, :cond_3

    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Lcom/motorola/android/xmp/impl/ParseState;->ch(I)C

    move-result v8

    const/16 v9, 0x3a

    if-ne v8, v9, :cond_3

    :cond_1
    const/4 v3, 0x1

    .line 115
    .local v3, timeOnly:Z
    :goto_0
    if-nez v3, :cond_b

    .line 117
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/motorola/android/xmp/impl/ParseState;->ch(I)C

    move-result v8

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_2

    .line 119
    invoke-virtual {v1}, Lcom/motorola/android/xmp/impl/ParseState;->skip()V

    .line 124
    :cond_2
    const-string v8, "Invalid year in date string"

    const/16 v9, 0x270f

    invoke-virtual {v1, v8, v9}, Lcom/motorola/android/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v7

    .line 125
    .local v7, value:I
    invoke-virtual {v1}, Lcom/motorola/android/xmp/impl/ParseState;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v1}, Lcom/motorola/android/xmp/impl/ParseState;->ch()C

    move-result v8

    const/16 v9, 0x2d

    if-eq v8, v9, :cond_4

    .line 127
    new-instance v8, Lcom/motorola/android/xmp/XMPException;

    const-string v9, "Invalid date string, after year"

    const/4 v10, 0x5

    invoke-direct {v8, v9, v10}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v8

    .line 110
    .end local v3           #timeOnly:Z
    .end local v7           #value:I
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 130
    .restart local v3       #timeOnly:Z
    .restart local v7       #value:I
    :cond_4
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/motorola/android/xmp/impl/ParseState;->ch(I)C

    move-result v8

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_5

    .line 132
    neg-int v7, v7

    .line 134
    :cond_5
    invoke-interface {p1, v7}, Lcom/motorola/android/xmp/XMPDateTime;->setYear(I)V

    .line 135
    invoke-virtual {v1}, Lcom/motorola/android/xmp/impl/ParseState;->hasNext()Z

    move-result v8

    if-nez v8, :cond_7

    .line 287
    :cond_6
    return-object p1

    .line 139
    :cond_7
    invoke-virtual {v1}, Lcom/motorola/android/xmp/impl/ParseState;->skip()V

    .line 143
    const-string v8, "Invalid month in date string"

    const/16 v9, 0xc

    invoke-virtual {v1, v8, v9}, Lcom/motorola/android/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v7

    .line 144
    invoke-virtual {v1}, Lcom/motorola/android/xmp/impl/ParseState;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v1}, Lcom/motorola/android/xmp/impl/ParseState;->ch()C

    move-result v8

    const/16 v9, 0x2d

    if-eq v8, v9, :cond_8

    .line 146
    new-instance v8, Lcom/motorola/android/xmp/XMPException;

    const-string v9, "Invalid date string, after month"

    const/4 v10, 0x5

    invoke-direct {v8, v9, v10}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v8

    .line 148
    :cond_8
    invoke-interface {p1, v7}, Lcom/motorola/android/xmp/XMPDateTime;->setMonth(I)V

    .line 149
    invoke-virtual {v1}, Lcom/motorola/android/xmp/impl/ParseState;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 153
    invoke-virtual {v1}, Lcom/motorola/android/xmp/impl/ParseState;->skip()V

    .line 157
    const-string v8, "Invalid day in date string"

    const/16 v9, 0x1f

    invoke-virtual {v1, v8, v9}, Lcom/motorola/android/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v7

    .line 158
    invoke-virtual {v1}, Lcom/motorola/android/xmp/impl/ParseState;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v1}, Lcom/motorola/android/xmp/impl/ParseState;->ch()C

    move-result v8

    const/16 v9, 0x54

    if-eq v8, v9, :cond_9

    .line 160
    new-instance v8, Lcom/motorola/android/xmp/XMPException;

    const-string v9, "Invalid date string, after day"

    const/4 v10, 0x5

    invoke-direct {v8, v9, v10}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v8

    .line 162
    :cond_9
    invoke-interface {p1, v7}, Lcom/motorola/android/xmp/XMPDateTime;->setDay(I)V

    .line 163
    invoke-virtual {v1}, Lcom/motorola/android/xmp/impl/ParseState;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 175
    .end local v7           #value:I
    :goto_1
    invoke-virtual {v1}, Lcom/motorola/android/xmp/impl/ParseState;->ch()C

    move-result v8

    const/16 v9, 0x54

    if-ne v8, v9, :cond_c

    .line 177
    invoke-virtual {v1}, Lcom/motorola/android/xmp/impl/ParseState;->skip()V

    .line 187
    :cond_a
    const-string v8, "Invalid hour in date string"

    const/16 v9, 0x17

    invoke-virtual {v1, v8, v9}, Lcom/motorola/android/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v7

    .line 188
    .restart local v7       #value:I
    invoke-virtual {v1}, Lcom/motorola/android/xmp/impl/ParseState;->ch()C

    move-result v8

    const/16 v9, 0x3a

    if-eq v8, v9, :cond_d

    .line 190
    new-instance v8, Lcom/motorola/android/xmp/XMPException;

    const-string v9, "Invalid date string, after hour"

    const/4 v10, 0x5

    invoke-direct {v8, v9, v10}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v8

    .line 171
    .end local v7           #value:I
    :cond_b
    const/4 v8, 0x1

    invoke-interface {p1, v8}, Lcom/motorola/android/xmp/XMPDateTime;->setMonth(I)V

    .line 172
    const/4 v8, 0x1

    invoke-interface {p1, v8}, Lcom/motorola/android/xmp/XMPDateTime;->setDay(I)V

    goto :goto_1

    .line 179
    :cond_c
    if-nez v3, :cond_a

    .line 181
    new-instance v8, Lcom/motorola/android/xmp/XMPException;

    const-string v9, "Invalid date string, missing \'T\' after date"

    const/4 v10, 0x5

    invoke-direct {v8, v9, v10}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v8

    .line 192
    .restart local v7       #value:I
    :cond_d
    invoke-interface {p1, v7}, Lcom/motorola/android/xmp/XMPDateTime;->setHour(I)V

    .line 195
    invoke-virtual {v1}, Lcom/motorola/android/xmp/impl/ParseState;->skip()V

    .line 199
    const-string v8, "Invalid minute in date string"

    const/16 v9, 0x3b

    invoke-virtual {v1, v8, v9}, Lcom/motorola/android/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v7

    .line 200
    invoke-virtual {v1}, Lcom/motorola/android/xmp/impl/ParseState;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-virtual {v1}, Lcom/motorola/android/xmp/impl/ParseState;->ch()C

    move-result v8

    const/16 v9, 0x3a

    if-eq v8, v9, :cond_e

    invoke-virtual {v1}, Lcom/motorola/android/xmp/impl/ParseState;->ch()C

    move-result v8

    const/16 v9, 0x5a

    if-eq v8, v9, :cond_e

    invoke-virtual {v1}, Lcom/motorola/android/xmp/impl/ParseState;->ch()C

    move-result v8

    const/16 v9, 0x2b

    if-eq v8, v9, :cond_e

    invoke-virtual {v1}, Lcom/motorola/android/xmp/impl/ParseState;->ch()C

    move-result v8

    const/16 v9, 0x2d

    if-eq v8, v9, :cond_e

    .line 203
    new-instance v8, Lcom/motorola/android/xmp/XMPException;

    const-string v9, "Invalid date string, after minute"

    const/4 v10, 0x5

    invoke-direct {v8, v9, v10}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v8

    .line 205
    :cond_e
    invoke-interface {p1, v7}, Lcom/motorola/android/xmp/XMPDateTime;->setMinute(I)V

    .line 207
    invoke-virtual {v1}, Lcom/motorola/android/xmp/impl/ParseState;->ch()C

    move-result v8

    const/16 v9, 0x3a

    if-ne v8, v9, :cond_13

    .line 209
    invoke-virtual {v1}, Lcom/motorola/android/xmp/impl/ParseState;->skip()V

    .line 210
    const-string v8, "Invalid whole seconds in date string"

    const/16 v9, 0x3b

    invoke-virtual {v1, v8, v9}, Lcom/motorola/android/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v7

    .line 211
    invoke-virtual {v1}, Lcom/motorola/android/xmp/impl/ParseState;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-virtual {v1}, Lcom/motorola/android/xmp/impl/ParseState;->ch()C

    move-result v8

    const/16 v9, 0x2e

    if-eq v8, v9, :cond_f

    invoke-virtual {v1}, Lcom/motorola/android/xmp/impl/ParseState;->ch()C

    move-result v8

    const/16 v9, 0x5a

    if-eq v8, v9, :cond_f

    invoke-virtual {v1}, Lcom/motorola/android/xmp/impl/ParseState;->ch()C

    move-result v8

    const/16 v9, 0x2b

    if-eq v8, v9, :cond_f

    invoke-virtual {v1}, Lcom/motorola/android/xmp/impl/ParseState;->ch()C

    move-result v8

    const/16 v9, 0x2d

    if-eq v8, v9, :cond_f

    .line 214
    new-instance v8, Lcom/motorola/android/xmp/XMPException;

    const-string v9, "Invalid date string, after whole seconds"

    const/4 v10, 0x5

    invoke-direct {v8, v9, v10}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v8

    .line 217
    :cond_f
    invoke-interface {p1, v7}, Lcom/motorola/android/xmp/XMPDateTime;->setSecond(I)V

    .line 218
    invoke-virtual {v1}, Lcom/motorola/android/xmp/impl/ParseState;->ch()C

    move-result v8

    const/16 v9, 0x2e

    if-ne v8, v9, :cond_13

    .line 220
    invoke-virtual {v1}, Lcom/motorola/android/xmp/impl/ParseState;->skip()V

    .line 221
    invoke-virtual {v1}, Lcom/motorola/android/xmp/impl/ParseState;->pos()I

    move-result v0

    .line 222
    .local v0, digits:I
    const-string v8, "Invalid fractional seconds in date string"

    const v9, 0x3b9ac9ff

    invoke-virtual {v1, v8, v9}, Lcom/motorola/android/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v7

    .line 223
    invoke-virtual {v1}, Lcom/motorola/android/xmp/impl/ParseState;->ch()C

    move-result v8

    const/16 v9, 0x5a

    if-eq v8, v9, :cond_10

    invoke-virtual {v1}, Lcom/motorola/android/xmp/impl/ParseState;->ch()C

    move-result v8

    const/16 v9, 0x2b

    if-eq v8, v9, :cond_10

    invoke-virtual {v1}, Lcom/motorola/android/xmp/impl/ParseState;->ch()C

    move-result v8

    const/16 v9, 0x2d

    if-eq v8, v9, :cond_10

    .line 225
    new-instance v8, Lcom/motorola/android/xmp/XMPException;

    const-string v9, "Invalid date string, after fractional second"

    const/4 v10, 0x5

    invoke-direct {v8, v9, v10}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v8

    .line 228
    :cond_10
    invoke-virtual {v1}, Lcom/motorola/android/xmp/impl/ParseState;->pos()I

    move-result v8

    sub-int v0, v8, v0

    .line 229
    :goto_2
    const/16 v8, 0x9

    if-le v0, v8, :cond_11

    .line 231
    div-int/lit8 v7, v7, 0xa

    .line 229
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 233
    :cond_11
    :goto_3
    const/16 v8, 0x9

    if-ge v0, v8, :cond_12

    .line 235
    mul-int/lit8 v7, v7, 0xa

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 237
    :cond_12
    invoke-interface {p1, v7}, Lcom/motorola/android/xmp/XMPDateTime;->setNanoSecond(I)V

    .line 241
    .end local v0           #digits:I
    :cond_13
    const/4 v6, 0x0

    .line 242
    .local v6, tzSign:I
    const/4 v4, 0x0

    .line 243
    .local v4, tzHour:I
    const/4 v5, 0x0

    .line 244
    .local v5, tzMinute:I
    invoke-virtual {v1}, Lcom/motorola/android/xmp/impl/ParseState;->ch()C

    move-result v8

    const/16 v9, 0x5a

    if-ne v8, v9, :cond_15

    .line 246
    invoke-virtual {v1}, Lcom/motorola/android/xmp/impl/ParseState;->skip()V

    .line 279
    :cond_14
    :goto_4
    mul-int/lit16 v8, v4, 0xe10

    mul-int/lit16 v8, v8, 0x3e8

    mul-int/lit8 v9, v5, 0x3c

    mul-int/lit16 v9, v9, 0x3e8

    add-int/2addr v8, v9

    mul-int v2, v8, v6

    .line 280
    .local v2, offset:I
    new-instance v8, Ljava/util/SimpleTimeZone;

    const-string v9, ""

    invoke-direct {v8, v2, v9}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v8}, Lcom/motorola/android/xmp/XMPDateTime;->setTimeZone(Ljava/util/TimeZone;)V

    .line 281
    invoke-virtual {v1}, Lcom/motorola/android/xmp/impl/ParseState;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 283
    new-instance v8, Lcom/motorola/android/xmp/XMPException;

    const-string v9, "Invalid date string, extra chars at end"

    const/4 v10, 0x5

    invoke-direct {v8, v9, v10}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v8

    .line 248
    .end local v2           #offset:I
    :cond_15
    invoke-virtual {v1}, Lcom/motorola/android/xmp/impl/ParseState;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_14

    .line 250
    invoke-virtual {v1}, Lcom/motorola/android/xmp/impl/ParseState;->ch()C

    move-result v8

    const/16 v9, 0x2b

    if-ne v8, v9, :cond_16

    .line 252
    const/4 v6, 0x1

    .line 264
    :goto_5
    invoke-virtual {v1}, Lcom/motorola/android/xmp/impl/ParseState;->skip()V

    .line 266
    const-string v8, "Invalid time zone hour in date string"

    const/16 v9, 0x17

    invoke-virtual {v1, v8, v9}, Lcom/motorola/android/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v4

    .line 267
    invoke-virtual {v1}, Lcom/motorola/android/xmp/impl/ParseState;->ch()C

    move-result v8

    const/16 v9, 0x3a

    if-eq v8, v9, :cond_18

    .line 269
    new-instance v8, Lcom/motorola/android/xmp/XMPException;

    const-string v9, "Invalid date string, after time zone hour"

    const/4 v10, 0x5

    invoke-direct {v8, v9, v10}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v8

    .line 254
    :cond_16
    invoke-virtual {v1}, Lcom/motorola/android/xmp/impl/ParseState;->ch()C

    move-result v8

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_17

    .line 256
    const/4 v6, -0x1

    goto :goto_5

    .line 260
    :cond_17
    new-instance v8, Lcom/motorola/android/xmp/XMPException;

    const-string v9, "Time zone must begin with \'Z\', \'+\', or \'-\'"

    const/4 v10, 0x5

    invoke-direct {v8, v9, v10}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v8

    .line 272
    :cond_18
    invoke-virtual {v1}, Lcom/motorola/android/xmp/impl/ParseState;->skip()V

    .line 275
    const-string v8, "Invalid time zone minute in date string"

    const/16 v9, 0x3b

    invoke-virtual {v1, v8, v9}, Lcom/motorola/android/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v5

    goto :goto_4
.end method

.method public static render(Lcom/motorola/android/xmp/XMPDateTime;)Ljava/lang/String;
    .locals 15
    .parameter "dateTime"

    .prologue
    .line 325
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 328
    .local v0, buffer:Ljava/lang/StringBuffer;
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v9, "0000"

    new-instance v10, Ljava/text/DecimalFormatSymbols;

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v10, v11}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {v1, v9, v10}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 329
    .local v1, df:Ljava/text/DecimalFormat;
    invoke-interface {p0}, Lcom/motorola/android/xmp/XMPDateTime;->getYear()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v1, v9, v10}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 330
    invoke-interface {p0}, Lcom/motorola/android/xmp/XMPDateTime;->getMonth()I

    move-result v9

    if-nez v9, :cond_0

    .line 332
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    .line 391
    :goto_0
    return-object v9

    .line 336
    :cond_0
    const-string v9, "\'-\'00"

    invoke-virtual {v1, v9}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 337
    invoke-interface {p0}, Lcom/motorola/android/xmp/XMPDateTime;->getMonth()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v1, v9, v10}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 338
    invoke-interface {p0}, Lcom/motorola/android/xmp/XMPDateTime;->getDay()I

    move-result v9

    if-nez v9, :cond_1

    .line 340
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 344
    :cond_1
    invoke-interface {p0}, Lcom/motorola/android/xmp/XMPDateTime;->getDay()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v1, v9, v10}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 347
    invoke-interface {p0}, Lcom/motorola/android/xmp/XMPDateTime;->getHour()I

    move-result v9

    if-nez v9, :cond_2

    invoke-interface {p0}, Lcom/motorola/android/xmp/XMPDateTime;->getMinute()I

    move-result v9

    if-nez v9, :cond_2

    invoke-interface {p0}, Lcom/motorola/android/xmp/XMPDateTime;->getSecond()I

    move-result v9

    if-nez v9, :cond_2

    invoke-interface {p0}, Lcom/motorola/android/xmp/XMPDateTime;->getNanoSecond()I

    move-result v9

    if-nez v9, :cond_2

    invoke-interface {p0}, Lcom/motorola/android/xmp/XMPDateTime;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-interface {p0}, Lcom/motorola/android/xmp/XMPDateTime;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v9

    if-eqz v9, :cond_5

    .line 354
    :cond_2
    const/16 v9, 0x54

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 355
    const-string v9, "00"

    invoke-virtual {v1, v9}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 356
    invoke-interface {p0}, Lcom/motorola/android/xmp/XMPDateTime;->getHour()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v1, v9, v10}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 357
    const/16 v9, 0x3a

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 358
    invoke-interface {p0}, Lcom/motorola/android/xmp/XMPDateTime;->getMinute()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v1, v9, v10}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 361
    invoke-interface {p0}, Lcom/motorola/android/xmp/XMPDateTime;->getSecond()I

    move-result v9

    if-nez v9, :cond_3

    invoke-interface {p0}, Lcom/motorola/android/xmp/XMPDateTime;->getNanoSecond()I

    move-result v9

    if-eqz v9, :cond_4

    .line 363
    :cond_3
    invoke-interface {p0}, Lcom/motorola/android/xmp/XMPDateTime;->getSecond()I

    move-result v9

    int-to-double v9, v9

    invoke-interface {p0}, Lcom/motorola/android/xmp/XMPDateTime;->getNanoSecond()I

    move-result v11

    int-to-double v11, v11

    const-wide v13, 0x41cdcd6500000000L

    div-double/2addr v11, v13

    add-double v3, v9, v11

    .line 365
    .local v3, seconds:D
    const-string v9, ":00.#########"

    invoke-virtual {v1, v9}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v1, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 370
    .end local v3           #seconds:D
    :cond_4
    invoke-interface {p0}, Lcom/motorola/android/xmp/XMPDateTime;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 373
    invoke-interface {p0}, Lcom/motorola/android/xmp/XMPDateTime;->getCalendar()Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 374
    .local v6, timeInMillis:J
    invoke-interface {p0}, Lcom/motorola/android/xmp/XMPDateTime;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    .line 375
    .local v2, offset:I
    if-nez v2, :cond_6

    .line 378
    const/16 v9, 0x5a

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 391
    .end local v2           #offset:I
    .end local v6           #timeInMillis:J
    :cond_5
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 382
    .restart local v2       #offset:I
    .restart local v6       #timeInMillis:J
    :cond_6
    const v9, 0x36ee80

    div-int v5, v2, v9

    .line 383
    .local v5, thours:I
    const v9, 0x36ee80

    rem-int v9, v2, v9

    const v10, 0xea60

    div-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 384
    .local v8, tminutes:I
    const-string v9, "+00;-00"

    invoke-virtual {v1, v9}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 385
    int-to-long v9, v5

    invoke-virtual {v1, v9, v10}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 386
    const-string v9, ":00"

    invoke-virtual {v1, v9}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 387
    int-to-long v9, v8

    invoke-virtual {v1, v9, v10}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method
