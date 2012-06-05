.class public Lcom/motorola/android/graphics/VectorAsset$NinePatchData;
.super Ljava/lang/Object;
.source "VectorAsset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/graphics/VectorAsset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NinePatchData"
.end annotation


# static fields
.field private static final NO_COLOR:I


# instance fields
.field private final mPadding:Landroid/graphics/RectF;

.field private final x_vals:[F

.field private final y_vals:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    sput v0, Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->NO_COLOR:I

    return-void
.end method

.method public constructor <init>([F[FLandroid/graphics/RectF;)V
    .locals 1
    .parameter "xvals"
    .parameter "yvals"
    .parameter "padding"

    .prologue
    .line 270
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 272
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 273
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 275
    :cond_1
    iput-object p1, p0, Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->x_vals:[F

    .line 276
    iput-object p2, p0, Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->y_vals:[F

    .line 277
    iput-object p3, p0, Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->mPadding:Landroid/graphics/RectF;

    .line 278
    return-void
.end method

.method static synthetic access$000(Ljava/io/DataInputStream;)Lcom/motorola/android/graphics/VectorAsset$NinePatchData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 248
    invoke-static {p0}, Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->createFromStream(Ljava/io/DataInputStream;)Lcom/motorola/android/graphics/VectorAsset$NinePatchData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/android/graphics/VectorAsset$NinePatchData;Ljava/io/DataOutputStream;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    invoke-direct {p0, p1}, Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->writeToStream(Ljava/io/DataOutputStream;)V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/android/graphics/VectorAsset$NinePatchData;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->x_vals:[F

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/android/graphics/VectorAsset$NinePatchData;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->y_vals:[F

    return-object v0
.end method

.method private static createFromStream(Ljava/io/DataInputStream;)Lcom/motorola/android/graphics/VectorAsset$NinePatchData;
    .locals 7
    .parameter "in"

    .prologue
    .line 291
    :try_start_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v4

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v5

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v6

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 297
    .local v0, padding:Landroid/graphics/RectF;
    invoke-static {p0}, Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->readCutlines(Ljava/io/DataInputStream;)[F

    move-result-object v1

    .line 298
    .local v1, xvals:[F
    invoke-static {p0}, Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->readCutlines(Ljava/io/DataInputStream;)[F

    move-result-object v2

    .line 301
    .local v2, yvals:[F
    new-instance v3, Lcom/motorola/android/graphics/VectorAsset$NinePatchData;

    invoke-direct {v3, v1, v2, v0}, Lcom/motorola/android/graphics/VectorAsset$NinePatchData;-><init>([F[FLandroid/graphics/RectF;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    .end local v0           #padding:Landroid/graphics/RectF;
    .end local v1           #xvals:[F
    .end local v2           #yvals:[F
    :goto_0
    return-object v3

    .line 302
    :catch_0
    move-exception v3

    .line 304
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static final floatToInt(F)I
    .locals 1
    .parameter "f"

    .prologue
    .line 352
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f00

    :goto_0
    add-float/2addr v0, p0

    float-to-int v0, v0

    return v0

    :cond_0
    const/high16 v0, -0x4100

    goto :goto_0
.end method

.method private static readCutlines(Ljava/io/DataInputStream;)[F
    .locals 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    .line 313
    .local v0, count:I
    new-array v2, v0, [F

    .line 315
    .local v2, vals:[F
    const/4 v1, 0x0

    .local v1, n:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 316
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    aput v3, v2, v1

    .line 315
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 319
    :cond_0
    return-object v2
.end method

.method private writeToStream(Ljava/io/DataOutputStream;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 332
    iget-object v1, p0, Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->mPadding:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 333
    iget-object v1, p0, Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->mPadding:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 334
    iget-object v1, p0, Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->mPadding:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 335
    iget-object v1, p0, Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->mPadding:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 338
    iget-object v1, p0, Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->x_vals:[F

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 339
    const/4 v0, 0x0

    .local v0, n:I
    :goto_0
    iget-object v1, p0, Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->x_vals:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 340
    iget-object v1, p0, Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->x_vals:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 339
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 344
    :cond_0
    iget-object v1, p0, Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->y_vals:[F

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 345
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->y_vals:[F

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 346
    iget-object v1, p0, Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->y_vals:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 345
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 348
    :cond_1
    return-void
.end method


# virtual methods
.method public getNPTCChunk(I)[B
    .locals 16
    .parameter "density"

    .prologue
    .line 381
    move/from16 v0, p1

    int-to-float v14, v0

    const/high16 v15, 0x4320

    div-float v3, v14, v15

    .line 384
    .local v3, dpiScale:F
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->x_vals:[F

    array-length v14, v14

    and-int/lit8 v14, v14, 0x1

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->x_vals:[F

    array-length v14, v14

    add-int/lit8 v12, v14, -0x1

    .line 385
    .local v12, xDivsCnt:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->y_vals:[F

    array-length v14, v14

    and-int/lit8 v14, v14, 0x1

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->y_vals:[F

    array-length v14, v14

    add-int/lit8 v13, v14, -0x1

    .line 388
    .local v13, yDivsCnt:I
    :goto_1
    add-int/lit8 v14, v12, 0x1

    add-int/lit8 v15, v13, 0x1

    mul-int v2, v14, v15

    .line 392
    .local v2, colorsLength:I
    add-int v14, v12, v13

    add-int/2addr v14, v2

    mul-int/lit8 v14, v14, 0x4

    add-int/lit8 v1, v14, 0x20

    .line 396
    .local v1, chunkLength:I
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 397
    .local v6, npTc:Ljava/io/ByteArrayOutputStream;
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 404
    .local v7, out:Ljava/io/DataOutputStream;
    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 407
    invoke-virtual {v7, v12}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 410
    invoke-virtual {v7, v13}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 413
    invoke-virtual {v7, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 416
    const-wide/16 v14, 0x0

    invoke-virtual {v7, v14, v15}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 422
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->mPadding:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->left:F

    mul-float/2addr v14, v3

    invoke-static {v14}, Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->floatToInt(F)I

    move-result v9

    .line 423
    .local v9, paddingLeft:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->mPadding:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->top:F

    mul-float/2addr v14, v3

    invoke-static {v14}, Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->floatToInt(F)I

    move-result v11

    .line 424
    .local v11, paddingTop:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->mPadding:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->right:F

    mul-float/2addr v14, v3

    invoke-static {v14}, Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->floatToInt(F)I

    move-result v10

    .line 425
    .local v10, paddingRight:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->mPadding:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v14, v3

    invoke-static {v14}, Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->floatToInt(F)I

    move-result v8

    .line 428
    .local v8, paddingBottom:I
    invoke-static {v9}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v14

    invoke-virtual {v7, v14}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 429
    invoke-static {v10}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v14

    invoke-virtual {v7, v14}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 430
    invoke-static {v11}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v14

    invoke-virtual {v7, v14}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 431
    invoke-static {v8}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v14

    invoke-virtual {v7, v14}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 434
    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 437
    const/4 v5, 0x0

    .local v5, n:I
    :goto_2
    if-ge v5, v12, :cond_2

    .line 438
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->x_vals:[F

    aget v14, v14, v5

    mul-float/2addr v14, v3

    invoke-static {v14}, Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->floatToInt(F)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v14

    invoke-virtual {v7, v14}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 437
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 384
    .end local v1           #chunkLength:I
    .end local v2           #colorsLength:I
    .end local v5           #n:I
    .end local v6           #npTc:Ljava/io/ByteArrayOutputStream;
    .end local v7           #out:Ljava/io/DataOutputStream;
    .end local v8           #paddingBottom:I
    .end local v9           #paddingLeft:I
    .end local v10           #paddingRight:I
    .end local v11           #paddingTop:I
    .end local v12           #xDivsCnt:I
    .end local v13           #yDivsCnt:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->x_vals:[F

    array-length v12, v14

    goto/16 :goto_0

    .line 385
    .restart local v12       #xDivsCnt:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->y_vals:[F

    array-length v13, v14

    goto/16 :goto_1

    .line 442
    .restart local v1       #chunkLength:I
    .restart local v2       #colorsLength:I
    .restart local v5       #n:I
    .restart local v6       #npTc:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #out:Ljava/io/DataOutputStream;
    .restart local v8       #paddingBottom:I
    .restart local v9       #paddingLeft:I
    .restart local v10       #paddingRight:I
    .restart local v11       #paddingTop:I
    .restart local v13       #yDivsCnt:I
    :cond_2
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v13, :cond_3

    .line 443
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->y_vals:[F

    aget v14, v14, v5

    mul-float/2addr v14, v3

    invoke-static {v14}, Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->floatToInt(F)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v14

    invoke-virtual {v7, v14}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 442
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 449
    :cond_3
    move v5, v2

    :goto_4
    if-lez v5, :cond_4

    .line 450
    sget v14, Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->NO_COLOR:I

    invoke-virtual {v7, v14}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 449
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 452
    :cond_4
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V

    .line 455
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 460
    .end local v1           #chunkLength:I
    .end local v2           #colorsLength:I
    .end local v5           #n:I
    .end local v6           #npTc:Ljava/io/ByteArrayOutputStream;
    .end local v7           #out:Ljava/io/DataOutputStream;
    .end local v8           #paddingBottom:I
    .end local v9           #paddingLeft:I
    .end local v10           #paddingRight:I
    .end local v11           #paddingTop:I
    .end local v12           #xDivsCnt:I
    .end local v13           #yDivsCnt:I
    :goto_5
    return-object v14

    .line 457
    :catch_0
    move-exception v4

    .line 458
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 460
    const/4 v14, 0x0

    goto :goto_5
.end method

.method public getPadding(I)Landroid/graphics/Rect;
    .locals 6
    .parameter "density"

    .prologue
    .line 363
    int-to-float v1, p1

    const/high16 v2, 0x4320

    div-float v0, v1, v2

    .line 365
    .local v0, dpiScale:F
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->mPadding:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    mul-float/2addr v2, v0

    invoke-static {v2}, Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->floatToInt(F)I

    move-result v2

    iget-object v3, p0, Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->mPadding:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    mul-float/2addr v3, v0

    invoke-static {v3}, Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->floatToInt(F)I

    move-result v3

    iget-object v4, p0, Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->mPadding:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    mul-float/2addr v4, v0

    invoke-static {v4}, Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->floatToInt(F)I

    move-result v4

    iget-object v5, p0, Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->mPadding:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v5, v0

    invoke-static {v5}, Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->floatToInt(F)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method
