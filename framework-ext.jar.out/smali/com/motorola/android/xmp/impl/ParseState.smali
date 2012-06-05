.class Lcom/motorola/android/xmp/impl/ParseState;
.super Ljava/lang/Object;
.source "ISO8601Converter.java"


# instance fields
.field private pos:I

.field private str:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 410
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 403
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/android/xmp/impl/ParseState;->pos:I

    .line 411
    iput-object p1, p0, Lcom/motorola/android/xmp/impl/ParseState;->str:Ljava/lang/String;

    .line 412
    return-void
.end method


# virtual methods
.method public ch()C
    .locals 2

    .prologue
    .line 450
    iget v0, p0, Lcom/motorola/android/xmp/impl/ParseState;->pos:I

    iget-object v1, p0, Lcom/motorola/android/xmp/impl/ParseState;->str:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/motorola/android/xmp/impl/ParseState;->str:Ljava/lang/String;

    iget v1, p0, Lcom/motorola/android/xmp/impl/ParseState;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ch(I)C
    .locals 1
    .parameter "index"

    .prologue
    .line 439
    iget-object v0, p0, Lcom/motorola/android/xmp/impl/ParseState;->str:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/xmp/impl/ParseState;->str:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public gatherInt(Ljava/lang/String;I)I
    .locals 5
    .parameter "errorMsg"
    .parameter "maxValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 483
    const/4 v2, 0x0

    .line 484
    .local v2, value:I
    const/4 v1, 0x0

    .line 485
    .local v1, success:Z
    iget v3, p0, Lcom/motorola/android/xmp/impl/ParseState;->pos:I

    invoke-virtual {p0, v3}, Lcom/motorola/android/xmp/impl/ParseState;->ch(I)C

    move-result v0

    .line 486
    .local v0, ch:C
    :goto_0
    const/16 v3, 0x30

    if-gt v3, v0, :cond_0

    const/16 v3, 0x39

    if-gt v0, v3, :cond_0

    .line 488
    mul-int/lit8 v3, v2, 0xa

    add-int/lit8 v4, v0, -0x30

    add-int v2, v3, v4

    .line 489
    const/4 v1, 0x1

    .line 490
    iget v3, p0, Lcom/motorola/android/xmp/impl/ParseState;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/motorola/android/xmp/impl/ParseState;->pos:I

    .line 491
    iget v3, p0, Lcom/motorola/android/xmp/impl/ParseState;->pos:I

    invoke-virtual {p0, v3}, Lcom/motorola/android/xmp/impl/ParseState;->ch(I)C

    move-result v0

    goto :goto_0

    .line 494
    :cond_0
    if-eqz v1, :cond_3

    .line 496
    if-le v2, p2, :cond_1

    .line 506
    .end local p2
    :goto_1
    return p2

    .line 500
    .restart local p2
    :cond_1
    if-gez v2, :cond_2

    .line 502
    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    move p2, v2

    .line 506
    goto :goto_1

    .line 511
    :cond_3
    new-instance v3, Lcom/motorola/android/xmp/XMPException;

    const/4 v4, 0x5

    invoke-direct {v3, p1, v4}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 429
    iget v0, p0, Lcom/motorola/android/xmp/impl/ParseState;->pos:I

    iget-object v1, p0, Lcom/motorola/android/xmp/impl/ParseState;->str:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/motorola/android/xmp/impl/ParseState;->str:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public pos()I
    .locals 1

    .prologue
    .line 470
    iget v0, p0, Lcom/motorola/android/xmp/impl/ParseState;->pos:I

    return v0
.end method

.method public skip()V
    .locals 1

    .prologue
    .line 461
    iget v0, p0, Lcom/motorola/android/xmp/impl/ParseState;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/motorola/android/xmp/impl/ParseState;->pos:I

    .line 462
    return-void
.end method
