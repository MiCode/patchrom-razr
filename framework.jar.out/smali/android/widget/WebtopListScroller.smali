.class Landroid/widget/WebtopListScroller;
.super Ljava/lang/Object;
.source "WebtopListScroller.java"


# static fields
.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_VISIBLE:I = 0x1


# instance fields
.field private mFirstVisiblePosition:I

.field private mInitialThumbY:I

.field private mInitialTouchY:F

.field private mList:Landroid/widget/AbsListView;

.field private mScrollCompleted:Z

.field private mState:I

.field private mThumbH:I

.field private mThumbW:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/AbsListView;)V
    .locals 1
    .parameter "context"
    .parameter "listView"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/WebtopListScroller;->mInitialTouchY:F

    .line 30
    const/high16 v0, -0x8000

    iput v0, p0, Landroid/widget/WebtopListScroller;->mInitialThumbY:I

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/WebtopListScroller;->mScrollCompleted:Z

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/WebtopListScroller;->mState:I

    .line 38
    iput-object p2, p0, Landroid/widget/WebtopListScroller;->mList:Landroid/widget/AbsListView;

    .line 39
    return-void
.end method

.method private beginDrag()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 99
    iput-boolean v1, p0, Landroid/widget/WebtopListScroller;->mScrollCompleted:Z

    .line 100
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/WebtopListScroller;->mState:I

    .line 102
    iget-object v0, p0, Landroid/widget/WebtopListScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Landroid/widget/WebtopListScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 104
    iget-object v0, p0, Landroid/widget/WebtopListScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 106
    :cond_0
    return-void
.end method

.method private getThumbOffset()I
    .locals 6

    .prologue
    .line 197
    iget-object v4, p0, Landroid/widget/WebtopListScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->computeVerticalScrollRange()I

    move-result v2

    .line 198
    .local v2, range:I
    iget-object v4, p0, Landroid/widget/WebtopListScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->computeVerticalScrollExtent()I

    move-result v0

    .line 199
    .local v0, extent:I
    iget-object v4, p0, Landroid/widget/WebtopListScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->computeVerticalScrollOffset()I

    move-result v1

    .line 200
    .local v1, offset:I
    iget-object v4, p0, Landroid/widget/WebtopListScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/WebtopListScroller;->mThumbH:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v5, v1

    mul-float/2addr v4, v5

    sub-int v5, v2, v0

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 201
    .local v3, result:I
    iget v4, p0, Landroid/widget/WebtopListScroller;->mThumbH:I

    add-int/2addr v4, v3

    iget-object v5, p0, Landroid/widget/WebtopListScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 202
    iget-object v4, p0, Landroid/widget/WebtopListScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/WebtopListScroller;->mThumbH:I

    sub-int v3, v4, v5

    .line 204
    :cond_0
    return v3
.end method

.method private isPointInside(FF)Z
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x0

    .line 215
    iget v4, p0, Landroid/widget/WebtopListScroller;->mThumbW:I

    .line 216
    .local v4, thumbW:I
    iget-object v6, p0, Landroid/widget/WebtopListScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getScrollBarStyle()I

    move-result v1

    .line 220
    .local v1, style:I
    const/high16 v6, 0x100

    if-eq v1, v6, :cond_0

    if-nez v1, :cond_2

    :cond_0
    const/4 v0, -0x1

    .line 223
    .local v0, inside:I
    :goto_0
    const/4 v2, 0x0

    .line 224
    .local v2, thumbL:I
    iget-object v6, p0, Landroid/widget/WebtopListScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getVerticalScrollbarPosition()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 228
    iget-object v6, p0, Landroid/widget/WebtopListScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getWidth()I

    move-result v6

    iget-object v7, p0, Landroid/widget/WebtopListScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getPaddingRight()I

    move-result v7

    and-int/2addr v7, v0

    sub-int/2addr v6, v7

    sub-int v2, v6, v4

    .line 235
    :goto_1
    add-int v3, v2, v4

    .line 236
    .local v3, thumbR:I
    int-to-float v6, v2

    cmpl-float v6, p1, v6

    if-lez v6, :cond_1

    int-to-float v6, v3

    cmpg-float v6, p1, v6

    if-gez v6, :cond_1

    const/4 v5, 0x1

    :cond_1
    return v5

    .end local v0           #inside:I
    .end local v2           #thumbL:I
    .end local v3           #thumbR:I
    :cond_2
    move v0, v5

    .line 220
    goto :goto_0

    .line 231
    .restart local v0       #inside:I
    .restart local v2       #thumbL:I
    :pswitch_0
    iget-object v6, p0, Landroid/widget/WebtopListScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getPaddingLeft()I

    move-result v6

    and-int v2, v6, v0

    goto :goto_1

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private isScrollByTap(F)Z
    .locals 2
    .parameter "y"

    .prologue
    .line 209
    iget v0, p0, Landroid/widget/WebtopListScroller;->mInitialTouchY:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    iget v0, p0, Landroid/widget/WebtopListScroller;->mInitialThumbY:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/widget/WebtopListScroller;->mInitialThumbY:I

    iget v1, p0, Landroid/widget/WebtopListScroller;->mThumbH:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private prepareDrag(F)V
    .locals 1
    .parameter "y"

    .prologue
    .line 109
    iput p1, p0, Landroid/widget/WebtopListScroller;->mInitialTouchY:F

    .line 110
    invoke-direct {p0}, Landroid/widget/WebtopListScroller;->getThumbOffset()I

    move-result v0

    iput v0, p0, Landroid/widget/WebtopListScroller;->mInitialThumbY:I

    .line 111
    iget-object v0, p0, Landroid/widget/WebtopListScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Landroid/widget/WebtopListScroller;->mFirstVisiblePosition:I

    .line 112
    return-void
.end method

.method private resetThumbSize()V
    .locals 4

    .prologue
    .line 51
    iget-object v2, p0, Landroid/widget/WebtopListScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->computeVerticalScrollRange()I

    move-result v1

    .line 52
    .local v1, range:I
    iget-object v2, p0, Landroid/widget/WebtopListScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->computeVerticalScrollExtent()I

    move-result v0

    .line 53
    .local v0, extent:I
    iget-object v2, p0, Landroid/widget/WebtopListScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getVerticalScrollbarWidth()I

    move-result v2

    iput v2, p0, Landroid/widget/WebtopListScroller;->mThumbW:I

    .line 54
    if-eqz v1, :cond_0

    .line 55
    iget-object v2, p0, Landroid/widget/WebtopListScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    mul-float/2addr v2, v3

    int-to-float v3, v1

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Landroid/widget/WebtopListScroller;->mThumbH:I

    .line 57
    :cond_0
    return-void
.end method

.method private scrollTo(I)V
    .locals 5
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 75
    iput-boolean v4, p0, Landroid/widget/WebtopListScroller;->mScrollCompleted:Z

    .line 77
    iget-object v2, p0, Landroid/widget/WebtopListScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getCount()I

    move-result v0

    .line 78
    .local v0, count:I
    iget v2, p0, Landroid/widget/WebtopListScroller;->mFirstVisiblePosition:I

    add-int/2addr p1, v2

    .line 80
    if-gez p1, :cond_1

    .line 81
    const/4 p1, 0x0

    .line 86
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/widget/WebtopListScroller;->mList:Landroid/widget/AbsListView;

    instance-of v2, v2, Landroid/widget/ExpandableListView;

    if-eqz v2, :cond_2

    .line 87
    iget-object v1, p0, Landroid/widget/WebtopListScroller;->mList:Landroid/widget/AbsListView;

    check-cast v1, Landroid/widget/ExpandableListView;

    .line 88
    .local v1, expList:Landroid/widget/ExpandableListView;
    invoke-static {p1}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v2

    invoke-virtual {v1, v2, v4}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    .line 95
    .end local v1           #expList:Landroid/widget/ExpandableListView;
    :goto_1
    return-void

    .line 82
    :cond_1
    add-int/lit8 v2, v0, -0x1

    if-le p1, v2, :cond_0

    .line 83
    add-int/lit8 p1, v0, -0x1

    goto :goto_0

    .line 90
    :cond_2
    iget-object v2, p0, Landroid/widget/WebtopListScroller;->mList:Landroid/widget/AbsListView;

    instance-of v2, v2, Landroid/widget/ListView;

    if-eqz v2, :cond_3

    .line 91
    iget-object v2, p0, Landroid/widget/WebtopListScroller;->mList:Landroid/widget/AbsListView;

    check-cast v2, Landroid/widget/ListView;

    invoke-virtual {v2, p1, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_1

    .line 93
    :cond_3
    iget-object v2, p0, Landroid/widget/WebtopListScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v2, p1}, Landroid/widget/AbsListView;->setSelection(I)V

    goto :goto_1
.end method


# virtual methods
.method onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    const/4 v0, 0x0

    .line 116
    iget v1, p0, Landroid/widget/WebtopListScroller;->mState:I

    if-nez v1, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v0

    .line 120
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 122
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/widget/WebtopListScroller;->isPointInside(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/WebtopListScroller;->prepareDrag(F)V

    .line 124
    invoke-direct {p0}, Landroid/widget/WebtopListScroller;->beginDrag()V

    .line 125
    const/4 v0, 0x1

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method onItemCountChanged(II)V
    .locals 0
    .parameter "oldCount"
    .parameter "newCount"

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/widget/WebtopListScroller;->resetThumbSize()V

    .line 48
    return-void
.end method

.method onScroll(Landroid/widget/AbsListView;III)V
    .locals 3
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    const/4 v2, 0x1

    .line 62
    if-ne p3, p4, :cond_1

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/WebtopListScroller;->mState:I

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iput-boolean v2, p0, Landroid/widget/WebtopListScroller;->mScrollCompleted:Z

    .line 68
    iget v0, p0, Landroid/widget/WebtopListScroller;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 69
    iput v2, p0, Landroid/widget/WebtopListScroller;->mState:I

    goto :goto_0
.end method

.method onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "me"

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 137
    iget v8, p0, Landroid/widget/WebtopListScroller;->mState:I

    if-nez v8, :cond_1

    .line 193
    :cond_0
    :goto_0
    return v6

    .line 141
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 142
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 143
    .local v5, y:F
    if-nez v0, :cond_2

    .line 144
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-direct {p0, v8, v5}, Landroid/widget/WebtopListScroller;->isPointInside(FF)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 145
    invoke-direct {p0, v5}, Landroid/widget/WebtopListScroller;->prepareDrag(F)V

    .line 146
    invoke-direct {p0}, Landroid/widget/WebtopListScroller;->beginDrag()V

    move v6, v7

    .line 147
    goto :goto_0

    .line 149
    :cond_2
    if-ne v0, v7, :cond_5

    .line 150
    iget v8, p0, Landroid/widget/WebtopListScroller;->mState:I

    if-ne v8, v9, :cond_0

    .line 153
    invoke-direct {p0, v5}, Landroid/widget/WebtopListScroller;->isScrollByTap(F)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 154
    iget-boolean v8, p0, Landroid/widget/WebtopListScroller;->mScrollCompleted:Z

    if-eqz v8, :cond_3

    .line 155
    iget v8, p0, Landroid/widget/WebtopListScroller;->mInitialThumbY:I

    int-to-float v8, v8

    sub-float v2, v5, v8

    .line 156
    .local v2, deltaY:F
    iget-object v8, p0, Landroid/widget/WebtopListScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v8}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    .line 157
    .local v4, viewHeight:I
    iget-object v8, p0, Landroid/widget/WebtopListScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v8}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    .line 158
    .local v1, count:I
    int-to-float v8, v1

    mul-float/2addr v8, v2

    iget v9, p0, Landroid/widget/WebtopListScroller;->mThumbH:I

    sub-int v9, v4, v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    float-to-int v3, v8

    .line 159
    .local v3, position:I
    invoke-direct {p0, v3}, Landroid/widget/WebtopListScroller;->scrollTo(I)V

    .line 164
    .end local v1           #count:I
    .end local v2           #deltaY:F
    .end local v3           #position:I
    .end local v4           #viewHeight:I
    :cond_3
    iget-object v8, p0, Landroid/widget/WebtopListScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v8, :cond_4

    .line 168
    iget-object v8, p0, Landroid/widget/WebtopListScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v8, v6}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 169
    iget-object v8, p0, Landroid/widget/WebtopListScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v8, v6}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 170
    iget-object v6, p0, Landroid/widget/WebtopListScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->invalidate()V

    .line 172
    :cond_4
    iput v7, p0, Landroid/widget/WebtopListScroller;->mState:I

    move v6, v7

    .line 173
    goto :goto_0

    .line 175
    :cond_5
    if-ne v0, v9, :cond_0

    .line 176
    iget v8, p0, Landroid/widget/WebtopListScroller;->mState:I

    if-ne v8, v9, :cond_0

    .line 179
    iget v6, p0, Landroid/widget/WebtopListScroller;->mInitialTouchY:F

    sub-float v2, v5, v6

    .line 180
    .restart local v2       #deltaY:F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/4 v8, 0x0

    cmpl-float v6, v6, v8

    if-nez v6, :cond_6

    move v6, v7

    goto :goto_0

    .line 183
    :cond_6
    iget-boolean v6, p0, Landroid/widget/WebtopListScroller;->mScrollCompleted:Z

    if-eqz v6, :cond_7

    .line 184
    iget-object v6, p0, Landroid/widget/WebtopListScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    .line 185
    .restart local v4       #viewHeight:I
    iget-object v6, p0, Landroid/widget/WebtopListScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    .line 186
    .restart local v1       #count:I
    int-to-float v6, v1

    mul-float/2addr v6, v2

    iget v8, p0, Landroid/widget/WebtopListScroller;->mThumbH:I

    sub-int v8, v4, v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    float-to-int v3, v6

    .line 187
    .restart local v3       #position:I
    invoke-direct {p0, v3}, Landroid/widget/WebtopListScroller;->scrollTo(I)V

    .end local v1           #count:I
    .end local v3           #position:I
    .end local v4           #viewHeight:I
    :cond_7
    move v6, v7

    .line 190
    goto/16 :goto_0
.end method

.method stop()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/WebtopListScroller;->mState:I

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/WebtopListScroller;->mList:Landroid/widget/AbsListView;

    .line 44
    return-void
.end method
