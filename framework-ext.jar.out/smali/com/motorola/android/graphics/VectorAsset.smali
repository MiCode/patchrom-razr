.class public Lcom/motorola/android/graphics/VectorAsset;
.super Ljava/lang/Object;
.source "VectorAsset.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/graphics/VectorAsset$NinePatchData;
    }
.end annotation


# instance fields
.field private final mNinePatchData:Lcom/motorola/android/graphics/VectorAsset$NinePatchData;

.field private final mPicture:Landroid/graphics/Picture;


# direct methods
.method public constructor <init>(Landroid/graphics/Picture;Lcom/motorola/android/graphics/VectorAsset$NinePatchData;)V
    .locals 0
    .parameter "p"
    .parameter "ninePatchData"

    .prologue
    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/motorola/android/graphics/VectorAsset;->mPicture:Landroid/graphics/Picture;

    .line 73
    iput-object p2, p0, Lcom/motorola/android/graphics/VectorAsset;->mNinePatchData:Lcom/motorola/android/graphics/VectorAsset$NinePatchData;

    .line 74
    return-void
.end method

.method public static createFromByteArray([BII)Lcom/motorola/android/graphics/VectorAsset;
    .locals 1
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 85
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0, p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-static {v0}, Lcom/motorola/android/graphics/VectorAsset;->createFromStream(Ljava/io/InputStream;)Lcom/motorola/android/graphics/VectorAsset;

    move-result-object v0

    return-object v0
.end method

.method public static createFromStream(Ljava/io/InputStream;)Lcom/motorola/android/graphics/VectorAsset;
    .locals 9
    .parameter "in"

    .prologue
    const/4 v6, 0x0

    .line 101
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v5

    const/16 v7, 0x70

    if-ne v5, v7, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v5

    const/16 v7, 0x69

    if-ne v5, v7, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v5

    const/16 v7, 0x63

    if-eq v5, v7, :cond_1

    :cond_0
    move-object v5, v6

    .line 130
    :goto_0
    return-object v5

    .line 107
    :cond_1
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 109
    .local v0, data_in:Ljava/io/DataInputStream;
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 110
    .local v4, thumb_length:I
    if-lez v4, :cond_2

    .line 111
    int-to-long v7, v4

    invoke-virtual {p0, v7, v8}, Ljava/io/InputStream;->skip(J)J

    .line 115
    :cond_2
    const/4 v2, 0x0

    .line 117
    .local v2, np:Lcom/motorola/android/graphics/VectorAsset$NinePatchData;
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_3

    .line 119
    #calls: Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->createFromStream(Ljava/io/DataInputStream;)Lcom/motorola/android/graphics/VectorAsset$NinePatchData;
    invoke-static {v0}, Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->access$000(Ljava/io/DataInputStream;)Lcom/motorola/android/graphics/VectorAsset$NinePatchData;

    move-result-object v2

    .line 123
    :cond_3
    invoke-static {p0}, Landroid/graphics/Picture;->createFromStream(Ljava/io/InputStream;)Landroid/graphics/Picture;

    move-result-object v3

    .line 126
    .local v3, p:Landroid/graphics/Picture;
    new-instance v5, Lcom/motorola/android/graphics/VectorAsset;

    invoke-direct {v5, v3, v2}, Lcom/motorola/android/graphics/VectorAsset;-><init>(Landroid/graphics/Picture;Lcom/motorola/android/graphics/VectorAsset$NinePatchData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    .end local v0           #data_in:Ljava/io/DataInputStream;
    .end local v2           #np:Lcom/motorola/android/graphics/VectorAsset$NinePatchData;
    .end local v3           #p:Landroid/graphics/Picture;
    .end local v4           #thumb_length:I
    :catch_0
    move-exception v1

    .line 128
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v5, v6

    .line 130
    goto :goto_0
.end method

.method private sumStretchyRegions([F)F
    .locals 4
    .parameter "cutlines"

    .prologue
    .line 470
    const/4 v1, 0x0

    .line 472
    .local v1, s:F
    const/4 v0, 0x1

    .local v0, n:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 474
    aget v2, p1, v0

    add-int/lit8 v3, v0, -0x1

    aget v3, p1, v3

    sub-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 472
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 476
    :cond_0
    return v1
.end method


# virtual methods
.method public drawContent(Landroid/graphics/Canvas;II)V
    .locals 4
    .parameter "canvas"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/motorola/android/graphics/VectorAsset;->mPicture:Landroid/graphics/Picture;

    .line 177
    .local v0, p:Landroid/graphics/Picture;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 180
    int-to-float v1, p2

    invoke-virtual {v0}, Landroid/graphics/Picture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, p3

    invoke-virtual {v0}, Landroid/graphics/Picture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 184
    invoke-virtual {v0, p1}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    .line 186
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 187
    return-void
.end method

.method public drawNinePatchContent(Landroid/graphics/Canvas;III)V
    .locals 34
    .parameter "canvas"
    .parameter "w"
    .parameter "h"
    .parameter "density"

    .prologue
    .line 497
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v32, v0

    const/high16 v33, 0x4320

    div-float v10, v32, v33

    .line 500
    .local v10, dpiScale:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/graphics/VectorAsset;->mPicture:Landroid/graphics/Picture;

    move-object/from16 v19, v0

    .line 501
    .local v19, p:Landroid/graphics/Picture;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/graphics/VectorAsset;->mNinePatchData:Lcom/motorola/android/graphics/VectorAsset$NinePatchData;

    move-object/from16 v18, v0

    .line 505
    .local v18, np:Lcom/motorola/android/graphics/VectorAsset$NinePatchData;
    move v11, v10

    .line 506
    .local v11, fixedColumnScale:F
    move v13, v10

    .line 509
    .local v13, fixedRowScale:F
    #getter for: Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->x_vals:[F
    invoke-static/range {v18 .. v18}, Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->access$200(Lcom/motorola/android/graphics/VectorAsset$NinePatchData;)[F

    move-result-object v29

    .line 510
    .local v29, xvals:[F
    #getter for: Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->y_vals:[F
    invoke-static/range {v18 .. v18}, Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->access$300(Lcom/motorola/android/graphics/VectorAsset$NinePatchData;)[F

    move-result-object v31

    .line 513
    .local v31, yvals:[F
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/motorola/android/graphics/VectorAsset;->sumStretchyRegions([F)F

    move-result v15

    .line 515
    .local v15, h_stretchy_sum:F
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/motorola/android/graphics/VectorAsset;->sumStretchyRegions([F)F

    move-result v27

    .line 518
    .local v27, v_stretchy_sum:F
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Picture;->getWidth()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v32, v32, v15

    mul-float v14, v32, v10

    .line 519
    .local v14, fixedWidth:F
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Picture;->getHeight()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v32, v32, v27

    mul-float v12, v32, v10

    .line 522
    .local v12, fixedHeight:F
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v32, v0

    cmpl-float v32, v14, v32

    if-lez v32, :cond_0

    .line 524
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v32, v32, v14

    mul-float v11, v11, v32

    .line 525
    move/from16 v0, p2

    int-to-float v14, v0

    .line 527
    :cond_0
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v32, v0

    cmpl-float v32, v12, v32

    if-lez v32, :cond_1

    .line 529
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v32, v32, v12

    mul-float v13, v13, v32

    .line 530
    move/from16 v0, p3

    int-to-float v12, v0

    .line 536
    :cond_1
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v32, v32, v14

    div-float v25, v32, v15

    .line 537
    .local v25, stretchyColumnScale:F
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v32, v32, v12

    div-float v26, v32, v27

    .line 540
    .local v26, stretchyRowScale:F
    const/16 v20, 0x0

    .line 543
    .local v20, rowIsStretchy:Z
    const/16 v24, 0x0

    .line 544
    .local v24, srcTop:I
    const/16 v21, 0x0

    .line 546
    .local v21, srcBottom:I
    move/from16 v9, v24

    .line 547
    .local v9, destTop:I
    move/from16 v6, v21

    .line 550
    .local v6, destBottom:I
    const/16 v16, 0x0

    .local v16, m:I
    :goto_0
    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v16

    move/from16 v1, v32

    if-ge v0, v1, :cond_8

    .line 553
    move/from16 v24, v21

    .line 554
    aget v32, v31, v16

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v21, v0

    .line 558
    if-eqz v20, :cond_3

    move/from16 v30, v26

    .line 559
    .local v30, yscale:F
    :goto_1
    move v9, v6

    .line 560
    sub-int v32, v21, v24

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v32, v32, v30

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    add-int v6, v6, v32

    .line 562
    if-le v6, v9, :cond_6

    .line 565
    const/16 v22, 0x0

    .line 566
    .local v22, srcLeft:I
    const/16 v23, 0x0

    .line 569
    .local v23, srcRight:I
    move/from16 v7, v22

    .line 570
    .local v7, destLeft:I
    move/from16 v8, v23

    .line 573
    .local v8, destRight:I
    const/4 v5, 0x0

    .line 576
    .local v5, columnIsStretchy:Z
    const/16 v17, 0x0

    .local v17, n:I
    :goto_2
    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v17

    move/from16 v1, v32

    if-ge v0, v1, :cond_6

    .line 579
    move/from16 v22, v23

    .line 580
    aget v32, v29, v17

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v23, v0

    .line 584
    if-eqz v5, :cond_4

    move/from16 v28, v25

    .line 585
    .local v28, xscale:F
    :goto_3
    move v7, v8

    .line 586
    sub-int v32, v23, v22

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v32, v32, v28

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    add-int v8, v8, v32

    .line 588
    if-le v8, v7, :cond_2

    .line 590
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 593
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v9, v8, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 596
    sub-int v32, v7, v22

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-int v33, v9, v24

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    move-object/from16 v0, p1

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 597
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v33, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v30

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 600
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    .line 602
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 605
    :cond_2
    if-nez v5, :cond_5

    const/4 v5, 0x1

    .line 576
    :goto_4
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .end local v5           #columnIsStretchy:Z
    .end local v7           #destLeft:I
    .end local v8           #destRight:I
    .end local v17           #n:I
    .end local v22           #srcLeft:I
    .end local v23           #srcRight:I
    .end local v28           #xscale:F
    .end local v30           #yscale:F
    :cond_3
    move/from16 v30, v13

    .line 558
    goto/16 :goto_1

    .restart local v5       #columnIsStretchy:Z
    .restart local v7       #destLeft:I
    .restart local v8       #destRight:I
    .restart local v17       #n:I
    .restart local v22       #srcLeft:I
    .restart local v23       #srcRight:I
    .restart local v30       #yscale:F
    :cond_4
    move/from16 v28, v11

    .line 584
    goto :goto_3

    .line 605
    .restart local v28       #xscale:F
    :cond_5
    const/4 v5, 0x0

    goto :goto_4

    .line 609
    .end local v5           #columnIsStretchy:Z
    .end local v7           #destLeft:I
    .end local v8           #destRight:I
    .end local v17           #n:I
    .end local v22           #srcLeft:I
    .end local v23           #srcRight:I
    .end local v28           #xscale:F
    :cond_6
    if-nez v20, :cond_7

    const/16 v20, 0x1

    .line 550
    :goto_5
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 609
    :cond_7
    const/16 v20, 0x0

    goto :goto_5

    .line 611
    .end local v30           #yscale:F
    :cond_8
    return-void
.end method

.method public getBitmap(I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "density"

    .prologue
    .line 219
    iget-object v1, p0, Lcom/motorola/android/graphics/VectorAsset;->mPicture:Landroid/graphics/Picture;

    invoke-virtual {v1}, Landroid/graphics/Picture;->getWidth()I

    move-result v1

    mul-int/2addr v1, p1

    div-int/lit16 v1, v1, 0xa0

    iget-object v2, p0, Lcom/motorola/android/graphics/VectorAsset;->mPicture:Landroid/graphics/Picture;

    invoke-virtual {v2}, Landroid/graphics/Picture;->getHeight()I

    move-result v2

    mul-int/2addr v2, p1

    div-int/lit16 v2, v2, 0xa0

    invoke-virtual {p0, v1, v2}, Lcom/motorola/android/graphics/VectorAsset;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 221
    .local v0, img:Landroid/graphics/Bitmap;
    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 222
    return-object v0
.end method

.method public getBitmap(II)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "w"
    .parameter "h"

    .prologue
    .line 199
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 201
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 205
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 206
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0, v1, p1, p2}, Lcom/motorola/android/graphics/VectorAsset;->drawContent(Landroid/graphics/Canvas;II)V

    .line 209
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNinePatchData()Lcom/motorola/android/graphics/VectorAsset$NinePatchData;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/motorola/android/graphics/VectorAsset;->mNinePatchData:Lcom/motorola/android/graphics/VectorAsset$NinePatchData;

    return-object v0
.end method

.method public getPicture()Landroid/graphics/Picture;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/motorola/android/graphics/VectorAsset;->mPicture:Landroid/graphics/Picture;

    return-object v0
.end method

.method public writeToStream(Ljava/io/OutputStream;)V
    .locals 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 141
    const/16 v1, 0x70

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 142
    const/16 v1, 0x69

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 143
    const/16 v1, 0x63

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 145
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 148
    .local v0, data_out:Ljava/io/DataOutputStream;
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 151
    iget-object v1, p0, Lcom/motorola/android/graphics/VectorAsset;->mNinePatchData:Lcom/motorola/android/graphics/VectorAsset$NinePatchData;

    if-eqz v1, :cond_0

    .line 153
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 155
    iget-object v1, p0, Lcom/motorola/android/graphics/VectorAsset;->mNinePatchData:Lcom/motorola/android/graphics/VectorAsset$NinePatchData;

    #calls: Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->writeToStream(Ljava/io/DataOutputStream;)V
    invoke-static {v1, v0}, Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->access$100(Lcom/motorola/android/graphics/VectorAsset$NinePatchData;Ljava/io/DataOutputStream;)V

    .line 162
    :goto_0
    iget-object v1, p0, Lcom/motorola/android/graphics/VectorAsset;->mPicture:Landroid/graphics/Picture;

    invoke-virtual {v1, p1}, Landroid/graphics/Picture;->writeToStream(Ljava/io/OutputStream;)V

    .line 163
    return-void

    .line 158
    :cond_0
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->write(I)V

    goto :goto_0
.end method
