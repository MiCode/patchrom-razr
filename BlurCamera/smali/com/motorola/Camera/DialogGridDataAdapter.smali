.class public Lcom/motorola/Camera/DialogGridDataAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DialogGridDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/motorola/Camera/DialogGridData;",
        ">;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/Camera/DialogGridData;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mMaxChildWidth:I

.field mSelectedPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;I)V
    .locals 0
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
            "Lcom/motorola/Camera/DialogGridData;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/Camera/DialogGridData;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 39
    iput-object p3, p0, Lcom/motorola/Camera/DialogGridDataAdapter;->items:Ljava/util/ArrayList;

    .line 40
    iput-object p1, p0, Lcom/motorola/Camera/DialogGridDataAdapter;->mContext:Landroid/content/Context;

    .line 41
    iput p4, p0, Lcom/motorola/Camera/DialogGridDataAdapter;->mSelectedPosition:I

    .line 42
    return-void
.end method


# virtual methods
.method public getElementWidth()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/motorola/Camera/DialogGridDataAdapter;->mMaxChildWidth:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 47
    move-object v0, p2

    .line 48
    .local v0, convert_view:Landroid/view/View;
    if-nez v0, :cond_0

    .line 50
    iget-object v5, p0, Lcom/motorola/Camera/DialogGridDataAdapter;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 51
    .local v4, vi:Landroid/view/LayoutInflater;
    const v5, 0x7f03001b

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 54
    .end local v4           #vi:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v5, p0, Lcom/motorola/Camera/DialogGridDataAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/Camera/DialogGridData;

    .line 55
    .local v1, data:Lcom/motorola/Camera/DialogGridData;
    if-eqz v1, :cond_5

    .line 57
    const v5, 0x7f0d001d

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 58
    .local v3, text:Landroid/widget/TextView;
    const v5, 0x7f0d001c

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 60
    .local v2, image:Landroid/widget/ImageView;
    if-eqz v3, :cond_1

    .line 62
    invoke-virtual {v1}, Lcom/motorola/Camera/DialogGridData;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    :cond_1
    if-eqz v2, :cond_2

    .line 66
    invoke-virtual {v1}, Lcom/motorola/Camera/DialogGridData;->getResId()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    :cond_2
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    iget v6, p0, Lcom/motorola/Camera/DialogGridDataAdapter;->mMaxChildWidth:I

    if-le v5, v6, :cond_3

    .line 72
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    iput v5, p0, Lcom/motorola/Camera/DialogGridDataAdapter;->mMaxChildWidth:I

    .line 75
    :cond_3
    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    iget v6, p0, Lcom/motorola/Camera/DialogGridDataAdapter;->mMaxChildWidth:I

    if-le v5, v6, :cond_4

    .line 77
    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    iput v5, p0, Lcom/motorola/Camera/DialogGridDataAdapter;->mMaxChildWidth:I

    .line 79
    :cond_4
    iget v5, p0, Lcom/motorola/Camera/DialogGridDataAdapter;->mSelectedPosition:I

    if-eq p1, v5, :cond_6

    .line 81
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 88
    .end local v2           #image:Landroid/widget/ImageView;
    .end local v3           #text:Landroid/widget/TextView;
    :cond_5
    :goto_0
    return-object v0

    .line 85
    .restart local v2       #image:Landroid/widget/ImageView;
    .restart local v3       #text:Landroid/widget/TextView;
    :cond_6
    const v5, 0x7f02002a

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setSelectedPosition(I)V
    .locals 0
    .parameter "selectedPosition"

    .prologue
    .line 98
    iput p1, p0, Lcom/motorola/Camera/DialogGridDataAdapter;->mSelectedPosition:I

    .line 99
    return-void
.end method
