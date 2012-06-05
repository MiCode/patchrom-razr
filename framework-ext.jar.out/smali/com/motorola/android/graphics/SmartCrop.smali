.class public Lcom/motorola/android/graphics/SmartCrop;
.super Ljava/lang/Object;
.source "SmartCrop.java"


# static fields
.field private static final MAP_SIZE:I = 0x7

.field private static final MAX_LOSS_PCT:I = 0x19

.field private static final MAX_REGION_LOSS_PCT:I = 0x12c

.field private static final MIN_STRIP_SIZE:I = 0x8

.field private static final SENSITIVITY:I = 0x15e

.field private static final UNDEFINED:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cropHeight(Landroid/graphics/Bitmap;I)I
    .locals 16
    .parameter "image"
    .parameter "cropAmount"

    .prologue
    .line 188
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 189
    .local v12, w:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 191
    .local v5, h:I
    add-int/lit8 v13, v5, -0x1

    move/from16 v0, p1

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 192
    if-lez p1, :cond_5

    .line 195
    new-instance v6, Lcom/motorola/android/graphics/NullOutputStream;

    invoke-direct {v6}, Lcom/motorola/android/graphics/NullOutputStream;-><init>()V

    .line 199
    .local v6, nullStream:Lcom/motorola/android/graphics/NullOutputStream;
    div-int/lit8 v13, v5, 0xa

    const/16 v14, 0x8

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 200
    .local v8, stripSize:I
    sget-object v13, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v8, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 204
    .local v7, strip:Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 207
    .local v4, canvas:Landroid/graphics/Canvas;
    const/4 v10, -0x1

    .line 208
    .local v10, topValue:I
    const/4 v3, -0x1

    .line 211
    .local v3, bottomValue:I
    const/4 v9, 0x0

    .line 213
    .local v9, top:I
    move v2, v5

    .line 216
    .local v2, bottom:I
    :cond_0
    const/4 v13, -0x1

    if-ne v10, v13, :cond_1

    .line 217
    const/4 v13, 0x0

    neg-int v14, v9

    int-to-float v14, v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v13, v14, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 218
    invoke-static {v7, v6}, Lcom/motorola/android/graphics/SmartCrop;->getCompressedSize(Landroid/graphics/Bitmap;Lcom/motorola/android/graphics/NullOutputStream;)I

    move-result v10

    .line 220
    :cond_1
    const/4 v13, -0x1

    if-ne v3, v13, :cond_2

    .line 221
    const/4 v13, 0x0

    sub-int v14, v2, v8

    neg-int v14, v14

    int-to-float v14, v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v13, v14, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 222
    invoke-static {v7, v6}, Lcom/motorola/android/graphics/SmartCrop;->getCompressedSize(Landroid/graphics/Bitmap;Lcom/motorola/android/graphics/NullOutputStream;)I

    move-result v3

    .line 225
    :cond_2
    sub-int v13, v10, v3

    mul-int/lit16 v13, v13, 0x15e

    add-int v14, v10, v3

    div-int v1, v13, v14

    .line 228
    .local v1, bias:I
    if-gez v1, :cond_3

    .line 230
    move/from16 v0, p1

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 231
    .local v11, trimAmount:I
    add-int/2addr v9, v11

    .line 232
    sub-int p1, p1, v11

    .line 233
    const/4 v10, -0x1

    .line 250
    :goto_0
    if-gtz p1, :cond_0

    .line 252
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 256
    .end local v1           #bias:I
    .end local v2           #bottom:I
    .end local v3           #bottomValue:I
    .end local v4           #canvas:Landroid/graphics/Canvas;
    .end local v6           #nullStream:Lcom/motorola/android/graphics/NullOutputStream;
    .end local v7           #strip:Landroid/graphics/Bitmap;
    .end local v8           #stripSize:I
    .end local v9           #top:I
    .end local v10           #topValue:I
    .end local v11           #trimAmount:I
    :goto_1
    return v9

    .line 234
    .restart local v1       #bias:I
    .restart local v2       #bottom:I
    .restart local v3       #bottomValue:I
    .restart local v4       #canvas:Landroid/graphics/Canvas;
    .restart local v6       #nullStream:Lcom/motorola/android/graphics/NullOutputStream;
    .restart local v7       #strip:Landroid/graphics/Bitmap;
    .restart local v8       #stripSize:I
    .restart local v9       #top:I
    .restart local v10       #topValue:I
    :cond_3
    if-lez v1, :cond_4

    .line 236
    move/from16 v0, p1

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 237
    .restart local v11       #trimAmount:I
    sub-int/2addr v2, v11

    .line 238
    sub-int p1, p1, v11

    .line 239
    const/4 v3, -0x1

    .line 240
    goto :goto_0

    .line 242
    .end local v11           #trimAmount:I
    :cond_4
    shl-int/lit8 v13, v8, 0x1

    move/from16 v0, p1

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 243
    .restart local v11       #trimAmount:I
    shr-int/lit8 v13, v11, 0x1

    add-int/2addr v9, v13

    .line 244
    shr-int/lit8 v13, v11, 0x1

    sub-int v13, v11, v13

    sub-int/2addr v2, v13

    .line 245
    sub-int p1, p1, v11

    .line 246
    const/4 v10, -0x1

    .line 247
    const/4 v3, -0x1

    goto :goto_0

    .line 256
    .end local v1           #bias:I
    .end local v2           #bottom:I
    .end local v3           #bottomValue:I
    .end local v4           #canvas:Landroid/graphics/Canvas;
    .end local v6           #nullStream:Lcom/motorola/android/graphics/NullOutputStream;
    .end local v7           #strip:Landroid/graphics/Bitmap;
    .end local v8           #stripSize:I
    .end local v9           #top:I
    .end local v10           #topValue:I
    .end local v11           #trimAmount:I
    :cond_5
    const/4 v9, 0x0

    goto :goto_1
.end method

.method public static cropWidth(Landroid/graphics/Bitmap;I)I
    .locals 16
    .parameter "image"
    .parameter "cropAmount"

    .prologue
    .line 97
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 98
    .local v12, w:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 100
    .local v3, h:I
    add-int/lit8 v13, v12, -0x1

    move/from16 v0, p1

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 101
    if-lez p1, :cond_5

    .line 104
    new-instance v6, Lcom/motorola/android/graphics/NullOutputStream;

    invoke-direct {v6}, Lcom/motorola/android/graphics/NullOutputStream;-><init>()V

    .line 108
    .local v6, nullStream:Lcom/motorola/android/graphics/NullOutputStream;
    div-int/lit8 v13, v12, 0xa

    const/16 v14, 0x8

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 109
    .local v10, stripSize:I
    sget-object v13, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v3, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 113
    .local v9, strip:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 116
    .local v2, canvas:Landroid/graphics/Canvas;
    const/4 v5, -0x1

    .line 117
    .local v5, leftValue:I
    const/4 v8, -0x1

    .line 120
    .local v8, rightValue:I
    const/4 v4, 0x0

    .line 122
    .local v4, left:I
    move v7, v12

    .line 126
    .local v7, right:I
    :cond_0
    const/4 v13, -0x1

    if-ne v5, v13, :cond_1

    .line 128
    neg-int v13, v4

    int-to-float v13, v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v13, v14, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 129
    invoke-static {v9, v6}, Lcom/motorola/android/graphics/SmartCrop;->getCompressedSize(Landroid/graphics/Bitmap;Lcom/motorola/android/graphics/NullOutputStream;)I

    move-result v5

    .line 132
    :cond_1
    const/4 v13, -0x1

    if-ne v8, v13, :cond_2

    .line 133
    sub-int v13, v7, v10

    neg-int v13, v13

    int-to-float v13, v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v13, v14, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 134
    invoke-static {v9, v6}, Lcom/motorola/android/graphics/SmartCrop;->getCompressedSize(Landroid/graphics/Bitmap;Lcom/motorola/android/graphics/NullOutputStream;)I

    move-result v8

    .line 137
    :cond_2
    sub-int v13, v5, v8

    mul-int/lit16 v13, v13, 0x15e

    add-int v14, v5, v8

    div-int v1, v13, v14

    .line 141
    .local v1, bias:I
    if-gez v1, :cond_3

    .line 143
    move/from16 v0, p1

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 144
    .local v11, trimAmount:I
    add-int/2addr v4, v11

    .line 145
    sub-int p1, p1, v11

    .line 146
    const/4 v5, -0x1

    .line 164
    :goto_0
    if-gtz p1, :cond_0

    .line 166
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 170
    .end local v1           #bias:I
    .end local v2           #canvas:Landroid/graphics/Canvas;
    .end local v4           #left:I
    .end local v5           #leftValue:I
    .end local v6           #nullStream:Lcom/motorola/android/graphics/NullOutputStream;
    .end local v7           #right:I
    .end local v8           #rightValue:I
    .end local v9           #strip:Landroid/graphics/Bitmap;
    .end local v10           #stripSize:I
    .end local v11           #trimAmount:I
    :goto_1
    return v4

    .line 147
    .restart local v1       #bias:I
    .restart local v2       #canvas:Landroid/graphics/Canvas;
    .restart local v4       #left:I
    .restart local v5       #leftValue:I
    .restart local v6       #nullStream:Lcom/motorola/android/graphics/NullOutputStream;
    .restart local v7       #right:I
    .restart local v8       #rightValue:I
    .restart local v9       #strip:Landroid/graphics/Bitmap;
    .restart local v10       #stripSize:I
    :cond_3
    if-lez v1, :cond_4

    .line 149
    move/from16 v0, p1

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 150
    .restart local v11       #trimAmount:I
    sub-int/2addr v7, v11

    .line 151
    sub-int p1, p1, v11

    .line 152
    const/4 v8, -0x1

    .line 153
    goto :goto_0

    .line 155
    .end local v11           #trimAmount:I
    :cond_4
    shl-int/lit8 v13, v10, 0x1

    move/from16 v0, p1

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 156
    .restart local v11       #trimAmount:I
    shr-int/lit8 v13, v11, 0x1

    add-int/2addr v4, v13

    .line 157
    shr-int/lit8 v13, v11, 0x1

    sub-int v13, v11, v13

    sub-int/2addr v7, v13

    .line 158
    sub-int p1, p1, v11

    .line 159
    const/4 v5, -0x1

    .line 160
    const/4 v8, -0x1

    goto :goto_0

    .line 170
    .end local v1           #bias:I
    .end local v2           #canvas:Landroid/graphics/Canvas;
    .end local v4           #left:I
    .end local v5           #leftValue:I
    .end local v6           #nullStream:Lcom/motorola/android/graphics/NullOutputStream;
    .end local v7           #right:I
    .end local v8           #rightValue:I
    .end local v9           #strip:Landroid/graphics/Bitmap;
    .end local v10           #stripSize:I
    .end local v11           #trimAmount:I
    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static getCompressedSize(Landroid/graphics/Bitmap;Lcom/motorola/android/graphics/NullOutputStream;)I
    .locals 2
    .parameter "img"
    .parameter "nos"

    .prologue
    .line 77
    invoke-virtual {p1}, Lcom/motorola/android/graphics/NullOutputStream;->reset()V

    .line 78
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 79
    invoke-virtual {p1}, Lcom/motorola/android/graphics/NullOutputStream;->getBytesWritten()I

    move-result v0

    return v0
.end method

.method public static zoom(Landroid/graphics/Bitmap;Landroid/graphics/Rect;II)V
    .locals 37
    .parameter "image"
    .parameter "clip"
    .parameter "minWidth"
    .parameter "minHeight"

    .prologue
    .line 278
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v34

    div-int/lit8 v31, v34, 0x7

    .line 279
    .local v31, w:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v34

    div-int/lit8 v10, v34, 0x7

    .line 284
    .local v10, h:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v34

    sub-int v34, v34, p2

    div-int v34, v34, v31

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v35

    sub-int v35, v35, p3

    div-int v35, v35, v10

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 287
    .local v17, loopLimit:I
    if-gtz v17, :cond_1

    .line 386
    :cond_0
    return-void

    .line 292
    :cond_1
    new-instance v21, Lcom/motorola/android/graphics/NullOutputStream;

    invoke-direct/range {v21 .. v21}, Lcom/motorola/android/graphics/NullOutputStream;-><init>()V

    .line 295
    .local v21, nullStream:Lcom/motorola/android/graphics/NullOutputStream;
    const/16 v34, 0x7

    const/16 v35, 0x7

    filled-new-array/range {v34 .. v35}, [I

    move-result-object v34

    sget-object v35, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [[I

    .line 299
    .local v20, mHeatmap:[[I
    sget-object v34, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v31

    move-object/from16 v1, v34

    invoke-static {v0, v10, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v23

    .line 302
    .local v23, region:Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Canvas;

    move-object/from16 v0, v23

    invoke-direct {v9, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 305
    .local v9, canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/motorola/android/graphics/SmartCrop;->getCompressedSize(Landroid/graphics/Bitmap;Lcom/motorola/android/graphics/NullOutputStream;)I

    move-result v6

    .line 308
    .local v6, baseline:I
    const/16 v27, 0x0

    .line 310
    .local v27, sum:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v33, v0

    .line 311
    .local v33, y:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    const/16 v34, 0x7

    move/from16 v0, v34

    if-ge v11, v0, :cond_3

    .line 313
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v32, v0

    .line 314
    .local v32, x:I
    const/4 v13, 0x0

    .local v13, j:I
    :goto_1
    const/16 v34, 0x7

    move/from16 v0, v34

    if-ge v13, v0, :cond_2

    .line 316
    move/from16 v0, v32

    neg-int v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    move/from16 v0, v33

    neg-int v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v35

    move-object/from16 v3, v36

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 318
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/motorola/android/graphics/SmartCrop;->getCompressedSize(Landroid/graphics/Bitmap;Lcom/motorola/android/graphics/NullOutputStream;)I

    move-result v34

    sub-int v12, v34, v6

    .line 320
    .local v12, interest:I
    aget-object v34, v20, v11

    aput v12, v34, v13

    .line 321
    add-int v27, v27, v12

    .line 323
    add-int v32, v32, v31

    .line 314
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 326
    .end local v12           #interest:I
    :cond_2
    add-int v33, v33, v10

    .line 311
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 328
    .end local v13           #j:I
    .end local v32           #x:I
    :cond_3
    mul-int/lit8 v34, v27, 0x19

    div-int/lit8 v19, v34, 0x64

    .line 330
    .local v19, lossBudget:I
    move/from16 v0, v27

    mul-int/lit16 v0, v0, 0x12c

    move/from16 v34, v0

    move/from16 v0, v34

    div-int/lit16 v0, v0, 0x1324

    move/from16 v24, v0

    .line 334
    .local v24, regionLossMax:I
    const/4 v14, 0x0

    .line 335
    .local v14, l:I
    const/16 v22, 0x6

    .line 336
    .local v22, r:I
    const/16 v28, 0x0

    .line 337
    .local v28, t:I
    const/4 v5, 0x6

    .local v5, b:I
    move/from16 v18, v17

    .line 341
    .end local v17           #loopLimit:I
    .local v18, loopLimit:I
    :goto_2
    add-int/lit8 v17, v18, -0x1

    .end local v18           #loopLimit:I
    .restart local v17       #loopLimit:I
    if-lez v18, :cond_0

    .line 344
    const/16 v30, 0x0

    .line 345
    .local v30, topSum:I
    const/4 v8, 0x0

    .line 346
    .local v8, bottomSum:I
    add-int/lit8 v4, v14, 0x1

    .local v4, a:I
    :goto_3
    move/from16 v0, v22

    if-ge v4, v0, :cond_6

    .line 347
    aget-object v34, v20, v28

    aget v29, v34, v4

    .line 348
    .local v29, top:I
    move/from16 v0, v29

    move/from16 v1, v24

    if-le v0, v1, :cond_4

    const/16 v34, 0x2710

    :goto_4
    add-int v34, v34, v29

    add-int v30, v30, v34

    .line 349
    aget-object v34, v20, v5

    aget v7, v34, v4

    .line 350
    .local v7, bottom:I
    move/from16 v0, v24

    if-le v7, v0, :cond_5

    const/16 v34, 0x2710

    :goto_5
    add-int v34, v34, v7

    add-int v8, v8, v34

    .line 346
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 348
    .end local v7           #bottom:I
    :cond_4
    const/16 v34, 0x0

    goto :goto_4

    .line 350
    .restart local v7       #bottom:I
    :cond_5
    const/16 v34, 0x0

    goto :goto_5

    .line 356
    .end local v7           #bottom:I
    .end local v29           #top:I
    :cond_6
    const/16 v16, 0x0

    .line 357
    .local v16, leftSum:I
    const/16 v26, 0x0

    .line 358
    .local v26, rightSum:I
    move/from16 v4, v28

    :goto_6
    if-gt v4, v5, :cond_9

    .line 359
    aget-object v34, v20, v4

    aget v15, v34, v14

    .line 360
    .local v15, left:I
    move/from16 v0, v24

    if-le v15, v0, :cond_7

    const/16 v15, 0x2710

    .end local v15           #left:I
    :cond_7
    add-int v16, v16, v15

    .line 361
    aget-object v34, v20, v4

    aget v25, v34, v22

    .line 362
    .local v25, right:I
    move/from16 v0, v25

    move/from16 v1, v24

    if-le v0, v1, :cond_8

    const/16 v25, 0x2710

    .end local v25           #right:I
    :cond_8
    add-int v26, v26, v25

    .line 358
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 365
    :cond_9
    move/from16 v0, v16

    move/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v34

    move/from16 v0, v30

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v35

    add-int v34, v34, v35

    sub-int v19, v19, v34

    .line 366
    if-ltz v19, :cond_0

    .line 371
    move/from16 v0, v16

    move/from16 v1, v26

    if-ge v0, v1, :cond_a

    .line 372
    add-int/lit8 v14, v14, 0x1

    .line 373
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v34, v0

    add-int v34, v34, v31

    move/from16 v0, v34

    move-object/from16 v1, p1

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 378
    :goto_7
    move/from16 v0, v30

    if-ge v0, v8, :cond_b

    .line 379
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v34, v0

    add-int v34, v34, v10

    move/from16 v0, v34

    move-object/from16 v1, p1

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 380
    add-int/lit8 v28, v28, 0x1

    :goto_8
    move/from16 v18, v17

    .line 385
    .end local v17           #loopLimit:I
    .restart local v18       #loopLimit:I
    goto/16 :goto_2

    .line 375
    .end local v18           #loopLimit:I
    .restart local v17       #loopLimit:I
    :cond_a
    add-int/lit8 v22, v22, -0x1

    .line 376
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v34, v0

    sub-int v34, v34, v31

    move/from16 v0, v34

    move-object/from16 v1, p1

    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto :goto_7

    .line 382
    :cond_b
    add-int/lit8 v5, v5, -0x1

    .line 383
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v34, v0

    sub-int v34, v34, v10

    move/from16 v0, v34

    move-object/from16 v1, p1

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_8
.end method
