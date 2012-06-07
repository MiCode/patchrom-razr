.class public Lcom/motorola/Camera/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
#the value of this static final field might be set in the static constructor
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "MotoCamera"

.field public static final TAG_KPI:Ljava/lang/String; = "MotoCameraKPI"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/motorola/Camera/Util;->DEBUG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method private static computeSampleSize(III)I
    .locals 4
    .parameter "w"
    .parameter "h"
    .parameter "minSideLength"

    .prologue
    const/4 v1, 0x1

    .line 119
    div-int v2, p0, p2

    div-int v3, p1, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 120
    .local v0, initialSize:I
    if-gt v0, v1, :cond_0

    .line 122
    :goto_0
    return v1

    :cond_0
    const/16 v1, 0x8

    if-gt v0, v1, :cond_1

    invoke-static {v0}, Lcom/motorola/Camera/Util;->prevPowerOf2(I)I

    move-result v1

    goto :goto_0

    :cond_1
    div-int/lit8 v1, v0, 0x8

    mul-int/lit8 v1, v1, 0x8

    goto :goto_0
.end method

.method public static getThumbnail(Landroid/content/ContentResolver;JLjava/lang/String;ZI)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "resolver"
    .parameter "id"
    .parameter "fileName"
    .parameter "image"
    .parameter "side"

    .prologue
    const/4 v3, 0x1

    .line 65
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 66
    .local v1, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v0, 0x0

    .line 67
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz p4, :cond_1

    .line 69
    invoke-static {p0, p1, p2, v3, v1}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 71
    if-nez v0, :cond_0

    .line 72
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 73
    invoke-static {p3, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 74
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 75
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v3, v4, p5}, Lcom/motorola/Camera/Util;->computeSampleSize(III)I

    move-result v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 76
    invoke-static {p3, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 88
    :cond_0
    :goto_0
    return-object v0

    .line 79
    :cond_1
    invoke-static {p0, p1, p2, v3, v1}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 82
    if-nez v0, :cond_0

    invoke-static {p3}, Lcom/motorola/Camera/Util;->isFilePathValid(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 84
    .local v2, retriever:Landroid/media/MediaMetadataRetriever;
    invoke-virtual {v2, p3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 85
    const-wide/16 v3, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static isFilePathValid(Ljava/lang/String;)Z
    .locals 4
    .parameter "fileName"

    .prologue
    .line 100
    const/4 v1, 0x0

    .line 102
    .local v1, fi:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 103
    .end local v1           #fi:Ljava/io/FileInputStream;
    .local v2, fi:Ljava/io/FileInputStream;
    if-eqz v2, :cond_0

    .line 104
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    move-object v1, v2

    .line 113
    .end local v2           #fi:Ljava/io/FileInputStream;
    .restart local v1       #fi:Ljava/io/FileInputStream;
    :goto_0
    const/4 v3, 0x1

    :goto_1
    return v3

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, ex:Ljava/io/FileNotFoundException;
    :goto_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 108
    const/4 v3, 0x0

    goto :goto_1

    .line 109
    .end local v0           #ex:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 111
    .local v0, ex:Ljava/io/IOException;
    :goto_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 109
    .end local v0           #ex:Ljava/io/IOException;
    .end local v1           #fi:Ljava/io/FileInputStream;
    .restart local v2       #fi:Ljava/io/FileInputStream;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2           #fi:Ljava/io/FileInputStream;
    .restart local v1       #fi:Ljava/io/FileInputStream;
    goto :goto_3

    .line 106
    .end local v1           #fi:Ljava/io/FileInputStream;
    .restart local v2       #fi:Ljava/io/FileInputStream;
    :catch_3
    move-exception v0

    move-object v1, v2

    .end local v2           #fi:Ljava/io/FileInputStream;
    .restart local v1       #fi:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private static prevPowerOf2(I)I
    .locals 1
    .parameter "n"

    .prologue
    .line 127
    if-gtz p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 128
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    return v0
.end method
