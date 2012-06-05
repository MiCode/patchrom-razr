.class Lcom/motorola/android/graphics/drawable/VectorDrawable$VectorConstantState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/graphics/drawable/VectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VectorConstantState"
.end annotation


# instance fields
.field final mAsset:Lcom/motorola/android/graphics/VectorAsset;

.field final synthetic this$0:Lcom/motorola/android/graphics/drawable/VectorDrawable;


# direct methods
.method public constructor <init>(Lcom/motorola/android/graphics/drawable/VectorDrawable;Lcom/motorola/android/graphics/VectorAsset;)V
    .locals 0
    .parameter
    .parameter "v"

    .prologue
    .line 239
    iput-object p1, p0, Lcom/motorola/android/graphics/drawable/VectorDrawable$VectorConstantState;->this$0:Lcom/motorola/android/graphics/drawable/VectorDrawable;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 240
    iput-object p2, p0, Lcom/motorola/android/graphics/drawable/VectorDrawable$VectorConstantState;->mAsset:Lcom/motorola/android/graphics/VectorAsset;

    .line 241
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 253
    new-instance v0, Lcom/motorola/android/graphics/drawable/VectorDrawable;

    iget-object v1, p0, Lcom/motorola/android/graphics/drawable/VectorDrawable$VectorConstantState;->mAsset:Lcom/motorola/android/graphics/VectorAsset;

    const/16 v2, 0xa0

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/graphics/drawable/VectorDrawable;-><init>(Lcom/motorola/android/graphics/VectorAsset;I)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "res"

    .prologue
    .line 248
    new-instance v0, Lcom/motorola/android/graphics/drawable/VectorDrawable;

    iget-object v1, p0, Lcom/motorola/android/graphics/drawable/VectorDrawable$VectorConstantState;->mAsset:Lcom/motorola/android/graphics/VectorAsset;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/graphics/drawable/VectorDrawable;-><init>(Lcom/motorola/android/graphics/VectorAsset;I)V

    return-object v0
.end method
