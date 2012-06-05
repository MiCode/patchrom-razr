.class public Landroid/content/res/CompatibilityInfo;
.super Ljava/lang/Object;
.source "CompatibilityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/CompatibilityInfo$Translator;
    }
.end annotation


# static fields
.field private static final ALWAYS_NEEDS_COMPAT:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/res/CompatibilityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field public static final DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo; = null

.field public static DEFAULT_NORMAL_SHORT_DIMENSION:I = 0x0

.field public static MAXIMUM_ASPECT_RATIO:F = 0.0f

.field private static final NEEDS_SCREEN_COMPAT:I = 0x8

.field private static final NEEDS_WEBTOP_COMPAT:I = 0x400

.field private static final NEVER_NEEDS_COMPAT:I = 0x4

.field private static final SCALING_REQUIRED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CompatibilityInfo"


# instance fields
.field public final applicationDensity:I

.field public final applicationInvertedScale:F

.field public final applicationScale:F

.field private final mCompatibilityFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Landroid/content/res/CompatibilityInfo$1;

    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$1;-><init>()V

    sput-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    .line 60
    const/16 v0, 0x140

    sput v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_NORMAL_SHORT_DIMENSION:I

    .line 66
    const v0, 0x3fe3bbbc

    sput v0, Landroid/content/res/CompatibilityInfo;->MAXIMUM_ASPECT_RATIO:F

    .line 684
    new-instance v0, Landroid/content/res/CompatibilityInfo$2;

    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$2;-><init>()V

    sput-object v0, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f80

    .line 336
    const/4 v0, 0x4

    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-direct {p0, v0, v1, v2, v2}, Landroid/content/res/CompatibilityInfo;-><init>(IIFF)V

    .line 339
    return-void
.end method

.method private constructor <init>(IIFF)V
    .locals 0
    .parameter "compFlags"
    .parameter "dens"
    .parameter "scale"
    .parameter "invertedScale"

    .prologue
    .line 328
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 329
    iput p1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 330
    iput p2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 331
    iput p3, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 332
    iput p4, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 333
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ApplicationInfo;IIZ)V
    .locals 6
    .parameter "appInfo"
    .parameter "screenLayout"
    .parameter "sw"
    .parameter "forceCompat"

    .prologue
    .line 144
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZZ)V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ApplicationInfo;IIZZ)V
    .locals 14
    .parameter "appInfo"
    .parameter "screenLayout"
    .parameter "sw"
    .parameter "forceCompat"
    .parameter "isInWhitelist"

    .prologue
    .line 148
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const/4 v6, 0x0

    .line 155
    .local v6, compatFlags:I
    and-int/lit8 v11, p2, 0xf

    .line 156
    .local v11, sizeMask:I
    const/4 v12, 0x4

    if-eq v11, v12, :cond_0

    const/4 v12, 0x3

    if-ne v11, v12, :cond_2

    :cond_0
    const/4 v7, 0x1

    .line 158
    .local v7, isWebtopActive:Z
    :goto_0
    sget-boolean v12, Landroid/util/DisplayMetrics;->IS_WEBTOP_ENABLED:Z

    if-eqz v12, :cond_3

    if-eqz v7, :cond_3

    if-nez p5, :cond_3

    .line 164
    const/16 v6, 0x400

    .line 165
    if-eqz p4, :cond_1

    .line 167
    or-int/lit8 v6, v6, 0x9

    .line 170
    :cond_1
    sget v12, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v12, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 171
    const/high16 v12, 0x3f80

    iput v12, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 172
    const/high16 v12, 0x3f80

    iput v12, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 324
    :goto_1
    iput v6, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 325
    return-void

    .line 156
    .end local v7           #isWebtopActive:Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 174
    .restart local v7       #isWebtopActive:Z
    :cond_3
    sget-boolean v12, Landroid/util/DisplayMetrics;->IS_WEBTOP_ENABLED:Z

    if-eqz v12, :cond_4

    if-nez v7, :cond_4

    .line 176
    const/16 p4, 0x0

    .line 179
    :cond_4
    iget v12, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    if-nez v12, :cond_5

    iget v12, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    if-nez v12, :cond_5

    iget v12, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    if-eqz v12, :cond_e

    .line 182
    :cond_5
    iget v12, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    if-eqz v12, :cond_9

    iget v9, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 185
    .local v9, required:I
    :goto_2
    if-nez v9, :cond_6

    .line 186
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 188
    :cond_6
    iget v12, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    if-eqz v12, :cond_a

    iget v5, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 190
    .local v5, compat:I
    :goto_3
    if-ge v5, v9, :cond_7

    .line 191
    move v5, v9

    .line 193
    :cond_7
    iget v8, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 195
    .local v8, largest:I
    sget v12, Landroid/content/res/CompatibilityInfo;->DEFAULT_NORMAL_SHORT_DIMENSION:I

    if-le v9, v12, :cond_b

    .line 202
    or-int/lit8 v6, v6, 0x4

    .line 219
    :cond_8
    :goto_4
    sget v12, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v12, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 220
    const/high16 v12, 0x3f80

    iput v12, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 221
    const/high16 v12, 0x3f80

    iput v12, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    goto :goto_1

    .line 182
    .end local v5           #compat:I
    .end local v8           #largest:I
    .end local v9           #required:I
    :cond_9
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    goto :goto_2

    .restart local v9       #required:I
    :cond_a
    move v5, v9

    .line 188
    goto :goto_3

    .line 203
    .restart local v5       #compat:I
    .restart local v8       #largest:I
    :cond_b
    if-eqz v8, :cond_c

    move/from16 v0, p3

    if-le v0, v8, :cond_c

    .line 207
    or-int/lit8 v6, v6, 0xa

    goto :goto_4

    .line 208
    :cond_c
    move/from16 v0, p3

    if-lt v5, v0, :cond_d

    .line 211
    or-int/lit8 v6, v6, 0x4

    goto :goto_4

    .line 212
    :cond_d
    if-eqz p4, :cond_8

    .line 215
    or-int/lit8 v6, v6, 0x8

    goto :goto_4

    .line 228
    .end local v5           #compat:I
    .end local v8           #largest:I
    .end local v9           #required:I
    :cond_e
    const/4 v1, 0x2

    .line 234
    .local v1, EXPANDABLE:I
    const/16 v2, 0x8

    .line 240
    .local v2, LARGE_SCREENS:I
    const/16 v3, 0x20

    .line 242
    .local v3, XLARGE_SCREENS:I
    const/4 v10, 0x0

    .line 246
    .local v10, sizeInfo:I
    const/4 v4, 0x0

    .line 248
    .local v4, anyResizeable:Z
    iget v12, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v12, v12, 0x800

    if-eqz v12, :cond_f

    .line 249
    or-int/lit8 v10, v10, 0x8

    .line 250
    const/4 v4, 0x1

    .line 251
    if-nez p4, :cond_f

    .line 255
    or-int/lit8 v10, v10, 0x22

    .line 258
    :cond_f
    iget v12, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v13, 0x8

    and-int/2addr v12, v13

    if-eqz v12, :cond_10

    .line 259
    const/4 v4, 0x1

    .line 260
    if-nez p4, :cond_10

    .line 261
    or-int/lit8 v10, v10, 0x22

    .line 264
    :cond_10
    iget v12, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v12, v12, 0x1000

    if-eqz v12, :cond_11

    .line 265
    const/4 v4, 0x1

    .line 266
    or-int/lit8 v10, v10, 0x2

    .line 269
    :cond_11
    if-eqz p4, :cond_12

    .line 274
    and-int/lit8 v10, v10, -0x3

    .line 277
    :cond_12
    or-int/lit8 v6, v6, 0x8

    .line 278
    and-int/lit8 v12, p2, 0xf

    packed-switch v12, :pswitch_data_0

    .line 297
    :cond_13
    :goto_5
    const/high16 v12, 0x1000

    and-int v12, v12, p2

    if-eqz v12, :cond_18

    .line 298
    and-int/lit8 v12, v10, 0x2

    if-eqz v12, :cond_17

    .line 299
    and-int/lit8 v6, v6, -0x9

    .line 308
    :cond_14
    :goto_6
    iget v12, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v12, v12, 0x2000

    if-eqz v12, :cond_19

    .line 309
    sget v12, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v12, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 310
    const/high16 v12, 0x3f80

    iput v12, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 311
    const/high16 v12, 0x3f80

    iput v12, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    goto/16 :goto_1

    .line 280
    :pswitch_0
    and-int/lit8 v12, v10, 0x20

    if-eqz v12, :cond_15

    .line 281
    and-int/lit8 v6, v6, -0x9

    .line 283
    :cond_15
    iget v12, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v13, 0x8

    and-int/2addr v12, v13

    if-eqz v12, :cond_13

    .line 284
    or-int/lit8 v6, v6, 0x4

    goto :goto_5

    .line 288
    :pswitch_1
    and-int/lit8 v12, v10, 0x8

    if-eqz v12, :cond_16

    .line 289
    and-int/lit8 v6, v6, -0x9

    .line 291
    :cond_16
    iget v12, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v12, v12, 0x800

    if-eqz v12, :cond_13

    .line 292
    or-int/lit8 v6, v6, 0x4

    goto :goto_5

    .line 300
    :cond_17
    if-nez v4, :cond_14

    .line 301
    or-int/lit8 v6, v6, 0x2

    goto :goto_6

    .line 304
    :cond_18
    and-int/lit8 v6, v6, -0x9

    .line 305
    or-int/lit8 v6, v6, 0x4

    goto :goto_6

    .line 313
    :cond_19
    const/16 v12, 0xa0

    iput v12, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 314
    sget v12, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v12, v12

    const/high16 v13, 0x4320

    div-float/2addr v12, v13

    iput v12, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 316
    const/high16 v12, 0x3f80

    iget v13, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    div-float/2addr v12, v13

    iput v12, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 317
    or-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 278
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/content/res/CompatibilityInfo$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/content/res/CompatibilityInfo;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 695
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 696
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 697
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 698
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 699
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 700
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/res/CompatibilityInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F
    .locals 14
    .parameter "dm"
    .parameter "outDm"

    .prologue
    .line 583
    iget v11, p0, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 584
    .local v11, width:I
    iget v1, p0, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 586
    .local v1, height:I
    if-ge v11, v1, :cond_3

    .line 587
    move v9, v11

    .line 588
    .local v9, shortSize:I
    move v2, v1

    .line 593
    .local v2, longSize:I
    :goto_0
    sget v12, Landroid/content/res/CompatibilityInfo;->DEFAULT_NORMAL_SHORT_DIMENSION:I

    int-to-float v12, v12

    iget v13, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v12, v13

    const/high16 v13, 0x3f00

    add-float/2addr v12, v13

    float-to-int v5, v12

    .line 594
    .local v5, newShortSize:I
    int-to-float v12, v2

    int-to-float v13, v9

    div-float v0, v12, v13

    .line 595
    .local v0, aspect:F
    sget v12, Landroid/content/res/CompatibilityInfo;->MAXIMUM_ASPECT_RATIO:F

    cmpl-float v12, v0, v12

    if-lez v12, :cond_0

    .line 596
    sget v0, Landroid/content/res/CompatibilityInfo;->MAXIMUM_ASPECT_RATIO:F

    .line 598
    :cond_0
    int-to-float v12, v5

    mul-float/2addr v12, v0

    const/high16 v13, 0x3f00

    add-float/2addr v12, v13

    float-to-int v4, v12

    .line 600
    .local v4, newLongSize:I
    if-ge v11, v1, :cond_4

    .line 601
    move v6, v5

    .line 602
    .local v6, newWidth:I
    move v3, v4

    .line 608
    .local v3, newHeight:I
    :goto_1
    int-to-float v12, v11

    int-to-float v13, v6

    div-float v10, v12, v13

    .line 609
    .local v10, sw:F
    int-to-float v12, v1

    int-to-float v13, v3

    div-float v8, v12, v13

    .line 610
    .local v8, sh:F
    cmpg-float v12, v10, v8

    if-gez v12, :cond_5

    move v7, v10

    .line 611
    .local v7, scale:F
    :goto_2
    const/high16 v12, 0x3f80

    cmpg-float v12, v7, v12

    if-gez v12, :cond_1

    .line 612
    const/high16 v7, 0x3f80

    .line 615
    :cond_1
    if-eqz p1, :cond_2

    .line 616
    iput v6, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 617
    iput v3, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 620
    :cond_2
    return v7

    .line 590
    .end local v0           #aspect:F
    .end local v2           #longSize:I
    .end local v3           #newHeight:I
    .end local v4           #newLongSize:I
    .end local v5           #newShortSize:I
    .end local v6           #newWidth:I
    .end local v7           #scale:F
    .end local v8           #sh:F
    .end local v9           #shortSize:I
    .end local v10           #sw:F
    :cond_3
    move v9, v1

    .line 591
    .restart local v9       #shortSize:I
    move v2, v11

    .restart local v2       #longSize:I
    goto :goto_0

    .line 604
    .restart local v0       #aspect:F
    .restart local v4       #newLongSize:I
    .restart local v5       #newShortSize:I
    :cond_4
    move v6, v4

    .line 605
    .restart local v6       #newWidth:I
    move v3, v5

    .restart local v3       #newHeight:I
    goto :goto_1

    .restart local v8       #sh:F
    .restart local v10       #sw:F
    :cond_5
    move v7, v8

    .line 610
    goto :goto_2
.end method

.method public static init(II)V
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 122
    if-ge p0, p1, :cond_1

    .line 123
    move v1, p0

    .line 124
    .local v1, shortSize:I
    move v0, p1

    .line 130
    .local v0, longSize:I
    :goto_0
    if-lez v1, :cond_0

    .line 131
    int-to-float v2, v0

    int-to-float v3, v1

    div-float/2addr v2, v3

    sput v2, Landroid/content/res/CompatibilityInfo;->MAXIMUM_ASPECT_RATIO:F

    .line 132
    sput v1, Landroid/content/res/CompatibilityInfo;->DEFAULT_NORMAL_SHORT_DIMENSION:I

    .line 137
    :cond_0
    return-void

    .line 126
    .end local v0           #longSize:I
    .end local v1           #shortSize:I
    :cond_1
    move v1, p1

    .line 127
    .restart local v1       #shortSize:I
    move v0, p0

    .restart local v0       #longSize:I
    goto :goto_0
.end method


# virtual methods
.method public alwaysSupportsScreen()Z
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public applyToConfiguration(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "inoutConfig"

    .prologue
    .line 549
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 553
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, -0x10

    or-int/lit8 v2, v2, 0x2

    iput v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 557
    iget v2, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_1

    .line 558
    sget v2, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_ORIGINAL:I

    int-to-float v2, v2

    const/high16 v3, 0x4320

    div-float v1, v2, v3

    .line 559
    .local v1, density:F
    iget v2, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    int-to-float v2, v2

    iget v3, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 562
    .local v0, compatRatio:F
    sget v2, Landroid/content/res/CompatibilityInfo;->MAXIMUM_ASPECT_RATIO:F

    sget v3, Landroid/content/res/CompatibilityInfo;->DEFAULT_NORMAL_SHORT_DIMENSION:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 563
    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 564
    sget v2, Landroid/content/res/CompatibilityInfo;->DEFAULT_NORMAL_SHORT_DIMENSION:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 572
    .end local v0           #compatRatio:F
    .end local v1           #density:F
    :cond_0
    :goto_0
    return-void

    .line 566
    :cond_1
    iget v2, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 567
    iget v2, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 568
    iget v2, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    goto :goto_0
.end method

.method public applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .locals 4
    .parameter "inoutDm"

    .prologue
    const/high16 v2, 0x4320

    const/high16 v3, 0x3f00

    .line 519
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 522
    invoke-static {p1, p1}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    .line 528
    :goto_0
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 529
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 531
    .local v0, invertedRatio:F
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_2

    .line 532
    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_ORIGINAL:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    iput v1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 533
    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_ORIGINAL:I

    iput v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 534
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    iget v2, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    iput v1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 541
    :goto_1
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->xdpi:F

    .line 542
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    .line 543
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 544
    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 546
    .end local v0           #invertedRatio:F
    :cond_0
    return-void

    .line 524
    :cond_1
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iput v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 525
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    iput v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    .line 536
    .restart local v0       #invertedRatio:F
    :cond_2
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatDensity:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 537
    iget v1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 538
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    goto :goto_1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 673
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v3, 0x0

    .line 626
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/content/res/CompatibilityInfo;

    move-object v2, v0

    .line 627
    .local v2, oc:Landroid/content/res/CompatibilityInfo;
    iget v4, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    iget v5, v2, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    if-eq v4, v5, :cond_1

    .line 633
    .end local v2           #oc:Landroid/content/res/CompatibilityInfo;
    :cond_0
    :goto_0
    return v3

    .line 628
    .restart local v2       #oc:Landroid/content/res/CompatibilityInfo;
    :cond_1
    iget v4, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    iget v5, v2, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    if-ne v4, v5, :cond_0

    .line 629
    iget v4, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iget v5, v2, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 630
    iget v4, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    iget v5, v2, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 631
    const/4 v3, 0x1

    goto :goto_0

    .line 632
    .end local v2           #oc:Landroid/content/res/CompatibilityInfo;
    :catch_0
    move-exception v1

    .line 633
    .local v1, e:Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method public getTranslator()Landroid/content/res/CompatibilityInfo$Translator;
    .locals 1

    .prologue
    .line 371
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/res/CompatibilityInfo$Translator;

    invoke-direct {v0, p0}, Landroid/content/res/CompatibilityInfo$Translator;-><init>(Landroid/content/res/CompatibilityInfo;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 663
    const/16 v0, 0x11

    .line 664
    .local v0, result:I
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    add-int/lit16 v0, v1, 0x20f

    .line 665
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    add-int v0, v1, v2

    .line 666
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 667
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 668
    return v0
.end method

.method public isScalingRequired()Z
    .locals 1

    .prologue
    .line 345
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needsWebtopCompat()Z
    .locals 1

    .prologue
    .line 362
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public neverSupportsScreen()Z
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supportsScreen()Z
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 640
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 642
    const-string v1, "dpi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 644
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 646
    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 649
    const-string v1, " resizing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 652
    const-string v1, " never-compat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    :cond_2
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 655
    const-string v1, " always-compat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    :cond_3
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 678
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 679
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 680
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 681
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 682
    return-void
.end method
