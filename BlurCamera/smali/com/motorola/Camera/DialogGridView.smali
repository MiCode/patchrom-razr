.class public Lcom/motorola/Camera/DialogGridView;
.super Ljava/lang/Object;
.source "DialogGridView.java"


# instance fields
.field TAG:Ljava/lang/String;

.field grid_listener:Landroid/widget/AdapterView$OnItemClickListener;

.field mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

.field mDataAdapter:Lcom/motorola/Camera/DialogGridDataAdapter;

.field private mDataArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/Camera/DialogGridData;",
            ">;"
        }
    .end annotation
.end field

.field mElementWidth:I

.field mGridView:Landroid/widget/GridView;

.field mNumColumns:I

.field mParentView:Landroid/view/ViewGroup;

.field mViewContainer:Landroid/widget/RelativeLayout;

.field m_context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/ArrayList;Lcom/motorola/Camera/DialogCallbackInterface;Ljava/lang/String;I)V
    .locals 7
    .parameter "context"
    .parameter "v"
    .parameter
    .parameter "interfaceParam"
    .parameter "title"
    .parameter "selectedPosition"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/Camera/DialogGridData;",
            ">;",
            "Lcom/motorola/Camera/DialogCallbackInterface;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p3, arraylist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/Camera/DialogGridData;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v3, "DialogGridView"

    iput-object v3, p0, Lcom/motorola/Camera/DialogGridView;->TAG:Ljava/lang/String;

    .line 122
    new-instance v3, Lcom/motorola/Camera/DialogGridView$1;

    invoke-direct {v3, p0}, Lcom/motorola/Camera/DialogGridView$1;-><init>(Lcom/motorola/Camera/DialogGridView;)V

    iput-object v3, p0, Lcom/motorola/Camera/DialogGridView;->grid_listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 51
    iput-object p1, p0, Lcom/motorola/Camera/DialogGridView;->m_context:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/motorola/Camera/DialogGridView;->mParentView:Landroid/view/ViewGroup;

    .line 54
    iput-object p3, p0, Lcom/motorola/Camera/DialogGridView;->mDataArray:Ljava/util/ArrayList;

    .line 55
    iput-object p4, p0, Lcom/motorola/Camera/DialogGridView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    .line 58
    iget-object v3, p0, Lcom/motorola/Camera/DialogGridView;->m_context:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 59
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f03001a

    iget-object v4, p0, Lcom/motorola/Camera/DialogGridView;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 61
    .local v2, viewLayout:Landroid/view/View;
    const v3, 0x7f0d0019

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 62
    .local v1, text:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {v1, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :cond_0
    new-instance v3, Lcom/motorola/Camera/DialogGridDataAdapter;

    iget-object v4, p0, Lcom/motorola/Camera/DialogGridView;->m_context:Landroid/content/Context;

    const v5, 0x7f03001a

    iget-object v6, p0, Lcom/motorola/Camera/DialogGridView;->mDataArray:Ljava/util/ArrayList;

    invoke-direct {v3, v4, v5, v6, p6}, Lcom/motorola/Camera/DialogGridDataAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;I)V

    iput-object v3, p0, Lcom/motorola/Camera/DialogGridView;->mDataAdapter:Lcom/motorola/Camera/DialogGridDataAdapter;

    .line 70
    const v3, 0x7f0d001a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    iput-object v3, p0, Lcom/motorola/Camera/DialogGridView;->mGridView:Landroid/widget/GridView;

    .line 71
    iget-object v3, p0, Lcom/motorola/Camera/DialogGridView;->mGridView:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/motorola/Camera/DialogGridView;->mDataAdapter:Lcom/motorola/Camera/DialogGridDataAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    iget-object v3, p0, Lcom/motorola/Camera/DialogGridView;->mGridView:Landroid/widget/GridView;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 75
    iget-object v3, p0, Lcom/motorola/Camera/DialogGridView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 77
    iget-object v3, p0, Lcom/motorola/Camera/DialogGridView;->mGridView:Landroid/widget/GridView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 78
    const/4 v3, 0x1

    iput v3, p0, Lcom/motorola/Camera/DialogGridView;->mNumColumns:I

    .line 91
    :goto_0
    iget-object v3, p0, Lcom/motorola/Camera/DialogGridView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getCount()I

    move-result v3

    const/4 v4, 0x6

    if-le v3, v4, :cond_4

    .line 93
    iget-object v3, p0, Lcom/motorola/Camera/DialogGridView;->mGridView:Landroid/widget/GridView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setVerticalScrollBarEnabled(Z)V

    .line 99
    :goto_1
    iget-object v3, p0, Lcom/motorola/Camera/DialogGridView;->mGridView:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/motorola/Camera/DialogGridView;->grid_listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 100
    const v3, 0x7f0d0018

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/motorola/Camera/DialogGridView;->mViewContainer:Landroid/widget/RelativeLayout;

    .line 101
    iget-object v3, p0, Lcom/motorola/Camera/DialogGridView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3, p6}, Landroid/widget/GridView;->setSelection(I)V

    .line 102
    return-void

    .line 80
    :cond_1
    iget-object v3, p0, Lcom/motorola/Camera/DialogGridView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getCount()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/motorola/Camera/DialogGridView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getCount()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 82
    :cond_2
    iget-object v3, p0, Lcom/motorola/Camera/DialogGridView;->mGridView:Landroid/widget/GridView;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 83
    const/4 v3, 0x2

    iput v3, p0, Lcom/motorola/Camera/DialogGridView;->mNumColumns:I

    goto :goto_0

    .line 87
    :cond_3
    iget-object v3, p0, Lcom/motorola/Camera/DialogGridView;->mGridView:Landroid/widget/GridView;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 88
    const/4 v3, 0x3

    iput v3, p0, Lcom/motorola/Camera/DialogGridView;->mNumColumns:I

    goto :goto_0

    .line 97
    :cond_4
    iget-object v3, p0, Lcom/motorola/Camera/DialogGridView;->mGridView:Landroid/widget/GridView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method public getChildWidth()I
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/motorola/Camera/DialogGridView;->mDataAdapter:Lcom/motorola/Camera/DialogGridDataAdapter;

    invoke-virtual {v0}, Lcom/motorola/Camera/DialogGridDataAdapter;->getElementWidth()I

    move-result v0

    iget v1, p0, Lcom/motorola/Camera/DialogGridView;->mNumColumns:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/motorola/Camera/DialogGridView;->mElementWidth:I

    .line 152
    iget v0, p0, Lcom/motorola/Camera/DialogGridView;->mElementWidth:I

    return v0
.end method

.method public getNumColumns()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/motorola/Camera/DialogGridView;->mNumColumns:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/motorola/Camera/DialogGridView;->mViewContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method
