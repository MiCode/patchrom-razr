.class Lcom/motorola/android/bmessage/BMessageBuilder$Property;
.super Ljava/lang/Object;
.source "BMessageBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/bmessage/BMessageBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Property"
.end annotation


# instance fields
.field private mPropertyBytes:[[B

.field private mPropertyName:I

.field private mPropertyValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 398
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 399
    invoke-virtual {p0}, Lcom/motorola/android/bmessage/BMessageBuilder$Property;->clear()V

    .line 400
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/android/bmessage/BMessageBuilder$Property;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 391
    iget v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder$Property;->mPropertyName:I

    return v0
.end method

.method static synthetic access$100(Lcom/motorola/android/bmessage/BMessageBuilder$Property;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 391
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder$Property;->mPropertyValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/android/bmessage/BMessageBuilder$Property;)[[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 391
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder$Property;->mPropertyBytes:[[B

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 419
    const/4 v1, -0x1

    iput v1, p0, Lcom/motorola/android/bmessage/BMessageBuilder$Property;->mPropertyName:I

    .line 420
    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder$Property;->mPropertyValue:Ljava/lang/String;

    .line 421
    check-cast v0, [[B

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder$Property;->mPropertyBytes:[[B

    .line 422
    return-void
.end method

.method public setPropertyBytes([[B)V
    .locals 0
    .parameter "propertyBytes"

    .prologue
    .line 414
    iput-object p1, p0, Lcom/motorola/android/bmessage/BMessageBuilder$Property;->mPropertyBytes:[[B

    .line 415
    return-void
.end method

.method public setPropertyName(I)V
    .locals 0
    .parameter "propertyName"

    .prologue
    .line 404
    iput p1, p0, Lcom/motorola/android/bmessage/BMessageBuilder$Property;->mPropertyName:I

    .line 405
    return-void
.end method

.method public setPropertyValue(Ljava/lang/String;)V
    .locals 0
    .parameter "propertyValue"

    .prologue
    .line 409
    iput-object p1, p0, Lcom/motorola/android/bmessage/BMessageBuilder$Property;->mPropertyValue:Ljava/lang/String;

    .line 410
    return-void
.end method
