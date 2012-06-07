.class public Lcom/motorola/Camera/DialogGridData;
.super Ljava/lang/Object;
.source "DialogGridData.java"


# instance fields
.field resId:I

.field text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "input"
    .parameter "res"

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/motorola/Camera/DialogGridData;->text:Ljava/lang/String;

    .line 10
    iput p2, p0, Lcom/motorola/Camera/DialogGridData;->resId:I

    .line 11
    return-void
.end method


# virtual methods
.method public getResId()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/motorola/Camera/DialogGridData;->resId:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/motorola/Camera/DialogGridData;->text:Ljava/lang/String;

    return-object v0
.end method
