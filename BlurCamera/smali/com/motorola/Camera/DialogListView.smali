.class public Lcom/motorola/Camera/DialogListView;
.super Ljava/lang/Object;
.source "DialogListView.java"


# instance fields
.field TAG:Ljava/lang/String;

.field dialogueListener:Landroid/widget/AdapterView$OnItemClickListener;

.field mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

.field mContext:Landroid/content/Context;

.field mDataAdapter:Lcom/motorola/Camera/DialogListDataAdapter;

.field private mDataArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/Camera/DialogListData;",
            ">;"
        }
    .end annotation
.end field

.field mElementWidth:I

.field mListView:Landroid/widget/ListView;

.field mListViewContainer:Landroid/widget/RelativeLayout;

.field parentView:Landroid/view/ViewGroup;


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
            "Lcom/motorola/Camera/DialogListData;",
            ">;",
            "Lcom/motorola/Camera/DialogCallbackInterface;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p3, arraylist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/Camera/DialogListData;>;"
    const v6, 0x7f03001d

    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v3, "DialogListView"

    iput-object v3, p0, Lcom/motorola/Camera/DialogListView;->TAG:Ljava/lang/String;

    .line 99
    new-instance v3, Lcom/motorola/Camera/DialogListView$1;

    invoke-direct {v3, p0}, Lcom/motorola/Camera/DialogListView$1;-><init>(Lcom/motorola/Camera/DialogListView;)V

    iput-object v3, p0, Lcom/motorola/Camera/DialogListView;->dialogueListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 48
    iput-object p1, p0, Lcom/motorola/Camera/DialogListView;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/motorola/Camera/DialogListView;->parentView:Landroid/view/ViewGroup;

    .line 51
    iput-object p3, p0, Lcom/motorola/Camera/DialogListView;->mDataArray:Ljava/util/ArrayList;

    .line 52
    iput-object p4, p0, Lcom/motorola/Camera/DialogListView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    .line 55
    iget-object v3, p0, Lcom/motorola/Camera/DialogListView;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 56
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget-object v3, p0, Lcom/motorola/Camera/DialogListView;->parentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 58
    .local v1, listviewlayout:Landroid/view/View;
    const v3, 0x7f0d0022

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 59
    .local v2, text:Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 61
    invoke-virtual {v2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :cond_0
    new-instance v3, Lcom/motorola/Camera/DialogListDataAdapter;

    iget-object v4, p0, Lcom/motorola/Camera/DialogListView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/motorola/Camera/DialogListView;->mDataArray:Ljava/util/ArrayList;

    invoke-direct {v3, v4, v6, v5, p6}, Lcom/motorola/Camera/DialogListDataAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;I)V

    iput-object v3, p0, Lcom/motorola/Camera/DialogListView;->mDataAdapter:Lcom/motorola/Camera/DialogListDataAdapter;

    .line 68
    const v3, 0x7f0d0023

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/motorola/Camera/DialogListView;->mListView:Landroid/widget/ListView;

    .line 69
    iget-object v3, p0, Lcom/motorola/Camera/DialogListView;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/motorola/Camera/DialogListView;->mDataAdapter:Lcom/motorola/Camera/DialogListDataAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 71
    iget-object v3, p0, Lcom/motorola/Camera/DialogListView;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/motorola/Camera/DialogListView;->dialogueListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 73
    iget-object v3, p0, Lcom/motorola/Camera/DialogListView;->mListView:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 74
    iget-object v3, p0, Lcom/motorola/Camera/DialogListView;->mListView:Landroid/widget/ListView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 76
    const v3, 0x7f0d0021

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/motorola/Camera/DialogListView;->mListViewContainer:Landroid/widget/RelativeLayout;

    .line 77
    iget-object v3, p0, Lcom/motorola/Camera/DialogListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, p6}, Landroid/widget/ListView;->setSelection(I)V

    .line 78
    return-void
.end method


# virtual methods
.method public getChildWidth()I
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/motorola/Camera/DialogListView;->mDataAdapter:Lcom/motorola/Camera/DialogListDataAdapter;

    invoke-virtual {v0}, Lcom/motorola/Camera/DialogListDataAdapter;->getElementWidth()I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/DialogListView;->mElementWidth:I

    .line 118
    iget v0, p0, Lcom/motorola/Camera/DialogListView;->mElementWidth:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/motorola/Camera/DialogListView;->mListViewContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method
