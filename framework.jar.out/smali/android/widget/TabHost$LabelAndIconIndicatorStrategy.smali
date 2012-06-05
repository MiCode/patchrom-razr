.class Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;
.super Ljava/lang/Object;
.source "TabHost.java"

# interfaces
.implements Landroid/widget/TabHost$IndicatorStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LabelAndIconIndicatorStrategy"
.end annotation


# instance fields
.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mLabel:Ljava/lang/CharSequence;

.field final synthetic this$0:Landroid/widget/TabHost;


# direct methods
.method private constructor <init>(Landroid/widget/TabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter "label"
    .parameter "icon"

    .prologue
    .line 583
    iput-object p1, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 584
    iput-object p2, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    .line 585
    iput-object p3, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 586
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/widget/TabHost$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 578
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;-><init>(Landroid/widget/TabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public createIndicatorView()Landroid/view/View;
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 589
    iget-object v9, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    invoke-virtual {v9}, Landroid/widget/TabHost;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 590
    .local v1, context:Landroid/content/Context;
    const-string v9, "layout_inflater"

    invoke-virtual {v1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 594
    .local v4, inflater:Landroid/view/LayoutInflater;
    const/4 v5, 0x0

    .line 595
    .local v5, tabIndicator:Landroid/view/View;
    iget-object v9, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    #getter for: Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;
    invoke-static {v9}, Landroid/widget/TabHost;->access$900(Landroid/widget/TabHost;)Landroid/widget/TabWidget;

    move-result-object v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    #getter for: Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;
    invoke-static {v9}, Landroid/widget/TabHost;->access$900(Landroid/widget/TabHost;)Landroid/widget/TabWidget;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TabWidget;->getOrientation()I

    move-result v9

    if-nez v9, :cond_5

    .line 598
    iget-object v9, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    #getter for: Landroid/widget/TabHost;->mTabLayoutId:I
    invoke-static {v9}, Landroid/widget/TabHost;->access$1000(Landroid/widget/TabHost;)I

    move-result v9

    iget-object v10, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    #getter for: Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;
    invoke-static {v10}, Landroid/widget/TabHost;->access$900(Landroid/widget/TabHost;)Landroid/widget/TabWidget;

    move-result-object v10

    invoke-virtual {v4, v9, v10, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 611
    :cond_0
    :goto_0
    const v9, 0x1020016

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 612
    .local v6, tv:Landroid/widget/TextView;
    const v9, 0x1020006

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 615
    .local v3, iconView:Landroid/widget/ImageView;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_6

    move v2, v8

    .line 616
    .local v2, exclusive:Z
    :goto_1
    if-eqz v2, :cond_1

    iget-object v9, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_1
    move v0, v8

    .line 618
    .local v0, bindIcon:Z
    :goto_2
    iget-object v9, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 620
    if-eqz v0, :cond_2

    iget-object v9, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_2

    .line 621
    iget-object v9, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 622
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 625
    :cond_2
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v9, 0x4

    if-gt v7, v9, :cond_4

    .line 629
    iget-object v7, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    #getter for: Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;
    invoke-static {v7}, Landroid/widget/TabHost;->access$900(Landroid/widget/TabHost;)Landroid/widget/TabWidget;

    move-result-object v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    #getter for: Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;
    invoke-static {v7}, Landroid/widget/TabHost;->access$900(Landroid/widget/TabHost;)Landroid/widget/TabWidget;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TabWidget;->getOrientation()I

    move-result v7

    if-nez v7, :cond_8

    .line 632
    const v7, 0x1080590

    invoke-virtual {v5, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 640
    :cond_3
    :goto_3
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1060076

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 643
    :cond_4
    return-object v5

    .line 603
    .end local v0           #bindIcon:Z
    .end local v2           #exclusive:Z
    .end local v3           #iconView:Landroid/widget/ImageView;
    .end local v6           #tv:Landroid/widget/TextView;
    :cond_5
    iget-object v9, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    #getter for: Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;
    invoke-static {v9}, Landroid/widget/TabHost;->access$900(Landroid/widget/TabHost;)Landroid/widget/TabWidget;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    #getter for: Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;
    invoke-static {v9}, Landroid/widget/TabHost;->access$900(Landroid/widget/TabHost;)Landroid/widget/TabWidget;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TabWidget;->getOrientation()I

    move-result v9

    if-ne v9, v8, :cond_0

    .line 604
    const v9, 0x10900d3

    iget-object v10, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    #getter for: Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;
    invoke-static {v10}, Landroid/widget/TabHost;->access$900(Landroid/widget/TabHost;)Landroid/widget/TabWidget;

    move-result-object v10

    invoke-virtual {v4, v9, v10, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    goto/16 :goto_0

    .restart local v3       #iconView:Landroid/widget/ImageView;
    .restart local v6       #tv:Landroid/widget/TextView;
    :cond_6
    move v2, v7

    .line 615
    goto :goto_1

    .restart local v2       #exclusive:Z
    :cond_7
    move v0, v7

    .line 616
    goto :goto_2

    .line 635
    .restart local v0       #bindIcon:Z
    :cond_8
    iget-object v7, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    #getter for: Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;
    invoke-static {v7}, Landroid/widget/TabHost;->access$900(Landroid/widget/TabHost;)Landroid/widget/TabWidget;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    #getter for: Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;
    invoke-static {v7}, Landroid/widget/TabHost;->access$900(Landroid/widget/TabHost;)Landroid/widget/TabWidget;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TabWidget;->getOrientation()I

    move-result v7

    if-ne v7, v8, :cond_3

    .line 636
    const v7, 0x1080635

    invoke-virtual {v5, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3
.end method
