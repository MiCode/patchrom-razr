.class public Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;
.super Ljava/lang/Object;
.source "XMPDateTimeImpl.java"

# interfaces
.implements Lcom/motorola/android/xmp/XMPDateTime;


# instance fields
.field private day:I

.field private hour:I

.field private minute:I

.field private month:I

.field private nanoSeconds:I

.field private second:I

.field private timeZone:Ljava/util/TimeZone;

.field private year:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput v0, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->year:I

    .line 51
    iput v0, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->month:I

    .line 53
    iput v0, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->day:I

    .line 55
    iput v0, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->hour:I

    .line 57
    iput v0, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->minute:I

    .line 59
    iput v0, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->second:I

    .line 61
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "strValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 137
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput v0, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->year:I

    .line 51
    iput v0, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->month:I

    .line 53
    iput v0, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->day:I

    .line 55
    iput v0, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->hour:I

    .line 57
    iput v0, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->minute:I

    .line 59
    iput v0, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->second:I

    .line 61
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    .line 138
    invoke-static {p1, p0}, Lcom/motorola/android/xmp/impl/ISO8601Converter;->parse(Ljava/lang/String;Lcom/motorola/android/xmp/XMPDateTime;)Lcom/motorola/android/xmp/XMPDateTime;

    .line 139
    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 6
    .parameter "calendar"

    .prologue
    const/4 v3, 0x0

    .line 84
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput v3, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->year:I

    .line 51
    iput v3, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->month:I

    .line 53
    iput v3, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->day:I

    .line 55
    iput v3, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->hour:I

    .line 57
    iput v3, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->minute:I

    .line 59
    iput v3, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->second:I

    .line 61
    const-string v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    .line 86
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 87
    .local v0, date:Ljava/util/Date;
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    .line 91
    .local v2, zone:Ljava/util/TimeZone;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    check-cast v1, Ljava/util/GregorianCalendar;

    .line 93
    .local v1, intCalendar:Ljava/util/GregorianCalendar;
    new-instance v3, Ljava/util/Date;

    const-wide/high16 v4, -0x8000

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    .line 94
    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 95
    invoke-virtual {v1, v0}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 97
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->year:I

    .line 98
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->month:I

    .line 99
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->day:I

    .line 100
    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->hour:I

    .line 101
    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->minute:I

    .line 102
    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->second:I

    .line 103
    const/16 v3, 0xe

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    const v4, 0xf4240

    mul-int/2addr v3, v4

    iput v3, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->nanoSeconds:I

    .line 104
    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/TimeZone;)V
    .locals 3
    .parameter "date"
    .parameter "timeZone"

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput v1, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->year:I

    .line 51
    iput v1, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->month:I

    .line 53
    iput v1, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->day:I

    .line 55
    iput v1, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->hour:I

    .line 57
    iput v1, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->minute:I

    .line 59
    iput v1, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->second:I

    .line 61
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    .line 117
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 118
    .local v0, calendar:Ljava/util/GregorianCalendar;
    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 119
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->year:I

    .line 120
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->month:I

    .line 121
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->day:I

    .line 122
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->hour:I

    .line 123
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->minute:I

    .line 124
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->second:I

    .line 125
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    const v2, 0xf4240

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->nanoSeconds:I

    .line 126
    iput-object p2, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    .line 127
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 9
    .parameter "dt"

    .prologue
    const-wide/16 v7, 0x2

    .line 295
    invoke-virtual {p0}, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->getCalendar()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    move-object v2, p1

    check-cast v2, Lcom/motorola/android/xmp/XMPDateTime;

    invoke-interface {v2}, Lcom/motorola/android/xmp/XMPDateTime;->getCalendar()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    sub-long v0, v3, v5

    .line 297
    .local v0, d:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 299
    rem-long v2, v0, v7

    long-to-int v2, v2

    .line 305
    .end local p1
    :goto_0
    return v2

    .line 304
    .restart local p1
    :cond_0
    iget v2, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->nanoSeconds:I

    check-cast p1, Lcom/motorola/android/xmp/XMPDateTime;

    .end local p1
    invoke-interface {p1}, Lcom/motorola/android/xmp/XMPDateTime;->getNanoSecond()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-long v0, v2

    .line 305
    rem-long v2, v0, v7

    long-to-int v2, v2

    goto :goto_0
.end method

.method public getCalendar()Ljava/util/Calendar;
    .locals 4

    .prologue
    .line 333
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    .line 334
    .local v0, calendar:Ljava/util/GregorianCalendar;
    new-instance v1, Ljava/util/Date;

    const-wide/high16 v2, -0x8000

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    .line 335
    iget-object v1, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 336
    const/4 v1, 0x1

    iget v2, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->year:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 337
    const/4 v1, 0x2

    iget v2, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->month:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 338
    const/4 v1, 0x5

    iget v2, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->day:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 339
    const/16 v1, 0xb

    iget v2, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->hour:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 340
    const/16 v1, 0xc

    iget v2, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->minute:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 341
    const/16 v1, 0xd

    iget v2, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->second:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 342
    const/16 v1, 0xe

    iget v2, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->nanoSeconds:I

    const v3, 0xf4240

    div-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 343
    return-object v0
.end method

.method public getDay()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->day:I

    return v0
.end method

.method public getHour()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->hour:I

    return v0
.end method

.method public getISO8601String()Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    invoke-static {p0}, Lcom/motorola/android/xmp/impl/ISO8601Converter;->render(Lcom/motorola/android/xmp/XMPDateTime;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMinute()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->minute:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->month:I

    return v0
.end method

.method public getNanoSecond()I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->nanoSeconds:I

    return v0
.end method

.method public getSecond()I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->second:I

    return v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->year:I

    return v0
.end method

.method public setDay(I)V
    .locals 2
    .parameter "day"

    .prologue
    const/16 v1, 0x1f

    const/4 v0, 0x1

    .line 203
    if-ge p1, v0, :cond_0

    .line 205
    iput v0, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->day:I

    .line 215
    :goto_0
    return-void

    .line 207
    :cond_0
    if-le p1, v1, :cond_1

    .line 209
    iput v1, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->day:I

    goto :goto_0

    .line 213
    :cond_1
    iput p1, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->day:I

    goto :goto_0
.end method

.method public setHour(I)V
    .locals 2
    .parameter "hour"

    .prologue
    .line 232
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x17

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->hour:I

    .line 233
    return-void
.end method

.method public setMinute(I)V
    .locals 2
    .parameter "minute"

    .prologue
    .line 250
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x3b

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->minute:I

    .line 251
    return-void
.end method

.method public setMonth(I)V
    .locals 2
    .parameter "month"

    .prologue
    const/16 v1, 0xc

    const/4 v0, 0x1

    .line 174
    if-ge p1, v0, :cond_0

    .line 176
    iput v0, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->month:I

    .line 186
    :goto_0
    return-void

    .line 178
    :cond_0
    if-le p1, v1, :cond_1

    .line 180
    iput v1, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->month:I

    goto :goto_0

    .line 184
    :cond_1
    iput p1, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->month:I

    goto :goto_0
.end method

.method public setNanoSecond(I)V
    .locals 0
    .parameter "nanoSecond"

    .prologue
    .line 286
    iput p1, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->nanoSeconds:I

    .line 287
    return-void
.end method

.method public setSecond(I)V
    .locals 2
    .parameter "second"

    .prologue
    .line 268
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x3b

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->second:I

    .line 269
    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 0
    .parameter "timeZone"

    .prologue
    .line 324
    iput-object p1, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    .line 325
    return-void
.end method

.method public setYear(I)V
    .locals 2
    .parameter "year"

    .prologue
    .line 156
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x270f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->year:I

    .line 157
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;->getISO8601String()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
