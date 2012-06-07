.class public Lcom/motorola/Camera/DialogListData;
.super Ljava/lang/Object;
.source "DialogListData.java"


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "input"

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/motorola/Camera/DialogListData;->text:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/motorola/Camera/DialogListData;->text:Ljava/lang/String;

    return-object v0
.end method
