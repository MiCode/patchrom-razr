.class public final Lcom/motorola/android/xmp/impl/XMPPropertyImpl;
.super Ljava/lang/Object;
.source "XMPPropertyImpl.java"

# interfaces
.implements Lcom/motorola/android/xmp/properties/XMPProperty;


# instance fields
.field private language:Ljava/lang/String;

.field private options:I

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/motorola/android/xmp/impl/XMPPropertyImpl;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getOptions()Lcom/motorola/android/xmp/options/PropertyOptions;
    .locals 3

    .prologue
    .line 48
    :try_start_0
    new-instance v1, Lcom/motorola/android/xmp/options/PropertyOptions;

    iget v2, p0, Lcom/motorola/android/xmp/impl/XMPPropertyImpl;->options:I

    invoke-direct {v1, v2}, Lcom/motorola/android/xmp/options/PropertyOptions;-><init>(I)V
    :try_end_0
    .catch Lcom/motorola/android/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-object v1

    .line 50
    :catch_0
    move-exception v0

    .line 52
    .local v0, exp:Lcom/motorola/android/xmp/XMPException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/motorola/android/xmp/impl/XMPPropertyImpl;->value:Ljava/lang/String;

    return-object v0
.end method
