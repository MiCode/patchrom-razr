.class Lcom/motorola/android/graphics/NullOutputStream;
.super Ljava/io/OutputStream;
.source "SmartCrop.java"


# instance fields
.field private length:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 395
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 397
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/android/graphics/NullOutputStream;->length:I

    return-void
.end method


# virtual methods
.method getBytesWritten()I
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Lcom/motorola/android/graphics/NullOutputStream;->length:I

    return v0
.end method

.method reset()V
    .locals 1

    .prologue
    .line 403
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/android/graphics/NullOutputStream;->length:I

    .line 404
    return-void
.end method

.method public write(I)V
    .locals 1
    .parameter "oneByte"

    .prologue
    .line 417
    iget v0, p0, Lcom/motorola/android/graphics/NullOutputStream;->length:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/motorola/android/graphics/NullOutputStream;->length:I

    .line 418
    return-void
.end method

.method public write([BII)V
    .locals 1
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 421
    iget v0, p0, Lcom/motorola/android/graphics/NullOutputStream;->length:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/motorola/android/graphics/NullOutputStream;->length:I

    .line 422
    return-void
.end method
