.class Landroid/widget/TabHost$LabelIndicatorStrategy;
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
    name = "LabelIndicatorStrategy"
.end annotation


# instance fields
.field private final mLabel:Ljava/lang/CharSequence;

.field final synthetic this$0:Landroid/widget/TabHost;


# direct methods
.method private constructor <init>(Landroid/widget/TabHost;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter "label"

    .prologue
    .line 523
    iput-object p1, p0, Landroid/widget/TabHost$LabelIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 524
    iput-object p2, p0, Landroid/widget/TabHost$LabelIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    .line 525
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TabHost;Ljava/lang/CharSequence;Landroid/widget/TabHost$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 519
    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost$LabelIndicatorStrategy;-><init>(Landroid/widget/TabHost;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public createIndicatorView()Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 528
    iget-object v4, p0, Landroid/widget/TabHost$LabelIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 529
    .local v0, context:Landroid/content/Context;
    const-string v4, "layout_inflater"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 533
    .local v1, inflater:Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    .line 534
    .local v2, tabIndicator:Landroid/view/View;
    iget-object v4, p0, Landroid/widget/TabHost$LabelIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    #getter for: Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;
    invoke-static {v4}, Landroid/widget/TabHost;->access$900(Landroid/widget/TabHost;)Landroid/widget/TabWidget;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/widget/TabHost$LabelIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    #getter for: Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;
    invoke-static {v4}, Landroid/widget/TabHost;->access$900(Landroid/widget/TabHost;)Landroid/widget/TabWidget;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TabWidget;->getOrientation()I

    move-result v4

    if-nez v4, :cond_3

    .line 537
    iget-object v4, p0, Landroid/widget/TabHost$LabelIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    #getter for: Landroid/widget/TabHost;->mTabLayoutId:I
    invoke-static {v4}, Landroid/widget/TabHost;->access$1000(Landroid/widget/TabHost;)I

    move-result v4

    iget-object v5, p0, Landroid/widget/TabHost$LabelIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    #getter for: Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;
    invoke-static {v5}, Landroid/widget/TabHost;->access$900(Landroid/widget/TabHost;)Landroid/widget/TabWidget;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 550
    :cond_0
    :goto_0
    const v4, 0x1020016

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 551
    .local v3, tv:Landroid/widget/TextView;
    iget-object v4, p0, Landroid/widget/TabHost$LabelIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 553
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v5, 0x4

    if-gt v4, v5, :cond_2

    .line 557
    iget-object v4, p0, Landroid/widget/TabHost$LabelIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    #getter for: Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;
    invoke-static {v4}, Landroid/widget/TabHost;->access$900(Landroid/widget/TabHost;)Landroid/widget/TabWidget;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/widget/TabHost$LabelIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    #getter for: Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;
    invoke-static {v4}, Landroid/widget/TabHost;->access$900(Landroid/widget/TabHost;)Landroid/widget/TabWidget;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TabWidget;->getOrientation()I

    move-result v4

    if-nez v4, :cond_4

    .line 560
    const v4, 0x1080590

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 568
    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1060076

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 571
    :cond_2
    return-object v2

    .line 542
    .end local v3           #tv:Landroid/widget/TextView;
    :cond_3
    iget-object v4, p0, Landroid/widget/TabHost$LabelIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    #getter for: Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;
    invoke-static {v4}, Landroid/widget/TabHost;->access$900(Landroid/widget/TabHost;)Landroid/widget/TabWidget;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/TabHost$LabelIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    #getter for: Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;
    invoke-static {v4}, Landroid/widget/TabHost;->access$900(Landroid/widget/TabHost;)Landroid/widget/TabWidget;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TabWidget;->getOrientation()I

    move-result v4

    if-ne v4, v7, :cond_0

    .line 543
    const v4, 0x10900d3

    iget-object v5, p0, Landroid/widget/TabHost$LabelIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    #getter for: Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;
    invoke-static {v5}, Landroid/widget/TabHost;->access$900(Landroid/widget/TabHost;)Landroid/widget/TabWidget;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 563
    .restart local v3       #tv:Landroid/widget/TextView;
    :cond_4
    iget-object v4, p0, Landroid/widget/TabHost$LabelIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    #getter for: Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;
    invoke-static {v4}, Landroid/widget/TabHost;->access$900(Landroid/widget/TabHost;)Landroid/widget/TabWidget;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/widget/TabHost$LabelIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    #getter for: Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;
    invoke-static {v4}, Landroid/widget/TabHost;->access$900(Landroid/widget/TabHost;)Landroid/widget/TabWidget;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TabWidget;->getOrientation()I

    move-result v4

    if-ne v4, v7, :cond_1

    .line 564
    const v4, 0x1080635

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method
