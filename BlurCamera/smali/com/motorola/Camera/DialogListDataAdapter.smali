.class public Lcom/motorola/Camera/DialogListDataAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DialogListDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/motorola/Camera/DialogListData;",
        ">;"
    }
.end annotation


# instance fields
.field TAG:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/Camera/DialogListData;",
            ">;"
        }
    .end annotation
.end field

.field mMaxChildWidth:I

.field mSelectedPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;I)V
    .locals 1
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .parameter "selectedPosition"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/Camera/DialogListData;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p3, inputData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/Camera/DialogListData;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 20
    const-string v0, "DialogListDataAdapter"

    iput-object v0, p0, Lcom/motorola/Camera/DialogListDataAdapter;->TAG:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/motorola/Camera/DialogListDataAdapter;->mItems:Ljava/util/ArrayList;

    .line 30
    iput-object p1, p0, Lcom/motorola/Camera/DialogListDataAdapter;->mContext:Landroid/content/Context;

    .line 31
    iput p4, p0, Lcom/motorola/Camera/DialogListDataAdapter;->mSelectedPosition:I

    .line 32
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/motorola/Camera/DialogListDataAdapter;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/motorola/Camera/DialogListDataAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 84
    :goto_0
    return v0

    .line 81
    :cond_0
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/motorola/Camera/DialogListDataAdapter;->TAG:Ljava/lang/String;

    const-string v1, "get count is 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getElementWidth()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/motorola/Camera/DialogListDataAdapter;->mMaxChildWidth:I

    return v0
.end method

.method public getItem(I)Lcom/motorola/Camera/DialogListData;
    .locals 1
    .parameter "position"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/motorola/Camera/DialogListDataAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/DialogListData;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/motorola/Camera/DialogListDataAdapter;->getItem(I)Lcom/motorola/Camera/DialogListData;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 93
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 37
    move-object v2, p2

    .line 38
    .local v2, v:Landroid/view/View;
    if-nez v2, :cond_0

    .line 40
    iget-object v4, p0, Lcom/motorola/Camera/DialogListDataAdapter;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 41
    .local v3, vi:Landroid/view/LayoutInflater;
    const v4, 0x7f03001e

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 44
    .end local v3           #vi:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v4, p0, Lcom/motorola/Camera/DialogListDataAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/DialogListData;

    .line 45
    .local v0, data:Lcom/motorola/Camera/DialogListData;
    if-eqz v0, :cond_3

    .line 47
    const v4, 0x7f0d0025

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 50
    .local v1, text:Landroid/widget/TextView;
    if-eqz v1, :cond_1

    .line 52
    invoke-virtual {v0}, Lcom/motorola/Camera/DialogListData;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    :cond_1
    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lcom/motorola/Camera/DialogListDataAdapter;->mMaxChildWidth:I

    if-le v4, v5, :cond_2

    .line 57
    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    iput v4, p0, Lcom/motorola/Camera/DialogListDataAdapter;->mMaxChildWidth:I

    .line 60
    :cond_2
    iget v4, p0, Lcom/motorola/Camera/DialogListDataAdapter;->mSelectedPosition:I

    if-eq p1, v4, :cond_4

    .line 62
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 70
    .end local v1           #text:Landroid/widget/TextView;
    :cond_3
    :goto_0
    return-object v2

    .line 66
    .restart local v1       #text:Landroid/widget/TextView;
    :cond_4
    const v4, 0x7f02002a

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setSelectedPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 103
    iput p1, p0, Lcom/motorola/Camera/DialogListDataAdapter;->mSelectedPosition:I

    .line 104
    return-void
.end method
