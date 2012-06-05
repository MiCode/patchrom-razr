.class Landroid/widget/WebtopScrollViewScroller;
.super Ljava/lang/Object;
.source "WebtopScrollViewScroller.java"


# static fields
.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_VISIBLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ScrollViewScroller"


# instance fields
.field private mLastIsMouseLeftButton:Z

.field private mLastThumbY:I

.field private mLastTouchY:F

.field private mScrollCompleted:Z

.field private mScrollView:Landroid/widget/ScrollView;

.field private mState:I

.field private mThumbH:I

.field private mThumbW:I


# direct methods
.method public constructor <init>(Landroid/widget/ScrollView;)V
    .locals 1
    .parameter "scrollView"

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/WebtopScrollViewScroller;->mScrollCompleted:Z

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/WebtopScrollViewScroller;->mState:I

    .line 42
    iput-object p1, p0, Landroid/widget/WebtopScrollViewScroller;->mScrollView:Landroid/widget/ScrollView;

    .line 43
    return-void
.end method

.method private beginDrag()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/WebtopScrollViewScroller;->mScrollCompleted:Z

    .line 81
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/WebtopScrollViewScroller;->setState(I)V

    .line 82
    return-void
.end method

.method private getThumbOffset()I
    .locals 4

    .prologue
    .line 198
    iget-object v3, p0, Landroid/widget/WebtopScrollViewScroller;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getChildViewHeight()I

    move-result v2

    .line 199
    .local v2, viewHeight:I
    iget-object v3, p0, Landroid/widget/WebtopScrollViewScroller;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getChildContentHeight()I

    move-result v0

    .line 200
    .local v0, contentHeight:I
    iget-object v3, p0, Landroid/widget/WebtopScrollViewScroller;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->computeVerticalScrollOffset()I

    move-result v1

    .line 201
    .local v1, offset:I
    mul-int v3, v1, v2

    div-int/2addr v3, v0

    return v3
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 50
    iput-boolean v3, p0, Landroid/widget/WebtopScrollViewScroller;->mScrollCompleted:Z

    .line 51
    iget-object v5, p0, Landroid/widget/WebtopScrollViewScroller;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v5, :cond_0

    .line 52
    iget-object v5, p0, Landroid/widget/WebtopScrollViewScroller;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v5}, Landroid/widget/ScrollView;->getChildViewHeight()I

    move-result v2

    .line 53
    .local v2, viewHeight:I
    iget-object v5, p0, Landroid/widget/WebtopScrollViewScroller;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v5}, Landroid/widget/ScrollView;->getChildContentHeight()I

    move-result v1

    .line 56
    .local v1, contentHeight:I
    if-lez v2, :cond_1

    if-le v1, v2, :cond_1

    move v0, v3

    .line 58
    .local v0, canScroll:Z
    :goto_0
    if-eqz v0, :cond_2

    .line 59
    mul-int v4, v2, v2

    div-int/2addr v4, v1

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Landroid/widget/WebtopScrollViewScroller;->mThumbH:I

    .line 62
    iget-object v4, p0, Landroid/widget/WebtopScrollViewScroller;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getVerticalScrollbarWidth()I

    move-result v4

    iput v4, p0, Landroid/widget/WebtopScrollViewScroller;->mThumbW:I

    .line 64
    iput v3, p0, Landroid/widget/WebtopScrollViewScroller;->mState:I

    .line 70
    .end local v0           #canScroll:Z
    .end local v1           #contentHeight:I
    .end local v2           #viewHeight:I
    :cond_0
    :goto_1
    return-void

    .restart local v1       #contentHeight:I
    .restart local v2       #viewHeight:I
    :cond_1
    move v0, v4

    .line 56
    goto :goto_0

    .line 67
    .restart local v0       #canScroll:Z
    :cond_2
    iput v4, p0, Landroid/widget/WebtopScrollViewScroller;->mState:I

    goto :goto_1
.end method

.method private isOnThumb(F)Z
    .locals 2
    .parameter "y"

    .prologue
    .line 206
    iget v0, p0, Landroid/widget/WebtopScrollViewScroller;->mLastThumbY:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/widget/WebtopScrollViewScroller;->mLastThumbY:I

    iget v1, p0, Landroid/widget/WebtopScrollViewScroller;->mThumbH:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 207
    :cond_0
    const/4 v0, 0x0

    .line 208
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isPointInside(FF)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 212
    const/4 v0, 0x0

    .line 215
    .local v0, inside:Z
    iget-object v3, p0, Landroid/widget/WebtopScrollViewScroller;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getVerticalScrollbarPosition()I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 216
    iget v3, p0, Landroid/widget/WebtopScrollViewScroller;->mThumbW:I

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_0

    move v0, v1

    .line 221
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 216
    goto :goto_0

    .line 219
    :cond_1
    iget-object v3, p0, Landroid/widget/WebtopScrollViewScroller;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/widget/WebtopScrollViewScroller;->mThumbW:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_2

    move v0, v1

    :goto_1
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method private prepareDrag(F)V
    .locals 1
    .parameter "y"

    .prologue
    .line 85
    iput p1, p0, Landroid/widget/WebtopScrollViewScroller;->mLastTouchY:F

    .line 86
    invoke-direct {p0}, Landroid/widget/WebtopScrollViewScroller;->getThumbOffset()I

    move-result v0

    iput v0, p0, Landroid/widget/WebtopScrollViewScroller;->mLastThumbY:I

    .line 87
    return-void
.end method


# virtual methods
.method onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "ev"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 90
    iget v6, p0, Landroid/widget/WebtopScrollViewScroller;->mState:I

    if-nez v6, :cond_1

    .line 114
    :cond_0
    :goto_0
    return v4

    .line 93
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    .line 94
    .local v0, buttonState:I
    if-ne v0, v5, :cond_2

    move v1, v5

    .line 96
    .local v1, isMouseLeftButton:Z
    :goto_1
    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 99
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 100
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 101
    .local v3, y:F
    invoke-direct {p0, v2, v3}, Landroid/widget/WebtopScrollViewScroller;->isPointInside(FF)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 102
    invoke-direct {p0, v3}, Landroid/widget/WebtopScrollViewScroller;->prepareDrag(F)V

    .line 103
    invoke-direct {p0, v3}, Landroid/widget/WebtopScrollViewScroller;->isOnThumb(F)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 104
    invoke-direct {p0}, Landroid/widget/WebtopScrollViewScroller;->beginDrag()V

    move v4, v5

    .line 105
    goto :goto_0

    .end local v1           #isMouseLeftButton:Z
    .end local v2           #x:F
    .end local v3           #y:F
    :cond_2
    move v1, v4

    .line 94
    goto :goto_1

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method onLayoutChanged()V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Landroid/widget/WebtopScrollViewScroller;->init()V

    .line 195
    return-void
.end method

.method onScrollChanged(IIII)V
    .locals 1
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/WebtopScrollViewScroller;->mScrollCompleted:Z

    .line 191
    return-void
.end method

.method onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "me"

    .prologue
    const/4 v13, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 118
    iget v12, p0, Landroid/widget/WebtopScrollViewScroller;->mState:I

    if-nez v12, :cond_1

    move v10, v11

    .line 186
    :cond_0
    :goto_0
    return v10

    .line 122
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    .line 123
    .local v1, buttonState:I
    if-ne v1, v10, :cond_2

    move v4, v10

    .line 124
    .local v4, isMouseLeftButton:Z
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 127
    .local v0, action:I
    if-ne v0, v10, :cond_3

    iget-boolean v12, p0, Landroid/widget/WebtopScrollViewScroller;->mLastIsMouseLeftButton:Z

    if-eqz v12, :cond_3

    .line 128
    const/4 v4, 0x1

    .line 132
    :goto_2
    if-eqz v4, :cond_b

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 134
    .local v8, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 135
    .local v9, y:F
    if-nez v0, :cond_7

    .line 136
    invoke-direct {p0, v8, v9}, Landroid/widget/WebtopScrollViewScroller;->isPointInside(FF)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 137
    invoke-direct {p0, v9}, Landroid/widget/WebtopScrollViewScroller;->prepareDrag(F)V

    .line 138
    invoke-direct {p0, v9}, Landroid/widget/WebtopScrollViewScroller;->isOnThumb(F)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 139
    invoke-direct {p0}, Landroid/widget/WebtopScrollViewScroller;->beginDrag()V

    goto :goto_0

    .end local v0           #action:I
    .end local v4           #isMouseLeftButton:Z
    .end local v8           #x:F
    .end local v9           #y:F
    :cond_2
    move v4, v11

    .line 123
    goto :goto_1

    .line 130
    .restart local v0       #action:I
    .restart local v4       #isMouseLeftButton:Z
    :cond_3
    iput-boolean v4, p0, Landroid/widget/WebtopScrollViewScroller;->mLastIsMouseLeftButton:Z

    goto :goto_2

    .line 141
    .restart local v8       #x:F
    .restart local v9       #y:F
    :cond_4
    iget-boolean v12, p0, Landroid/widget/WebtopScrollViewScroller;->mScrollCompleted:Z

    if-eqz v12, :cond_0

    .line 142
    invoke-direct {p0}, Landroid/widget/WebtopScrollViewScroller;->getThumbOffset()I

    move-result v12

    iput v12, p0, Landroid/widget/WebtopScrollViewScroller;->mLastThumbY:I

    .line 143
    iget v12, p0, Landroid/widget/WebtopScrollViewScroller;->mLastThumbY:I

    int-to-float v12, v12

    cmpl-float v12, v9, v12

    if-lez v12, :cond_5

    move v3, v10

    .line 144
    .local v3, down:Z
    :goto_3
    iget-object v12, p0, Landroid/widget/WebtopScrollViewScroller;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v3, :cond_6

    const/16 v11, 0x82

    :goto_4
    invoke-virtual {v12, v11}, Landroid/widget/ScrollView;->pageScroll(I)Z

    goto :goto_0

    .end local v3           #down:Z
    :cond_5
    move v3, v11

    .line 143
    goto :goto_3

    .line 144
    .restart local v3       #down:Z
    :cond_6
    const/16 v11, 0x21

    goto :goto_4

    .line 149
    .end local v3           #down:Z
    :cond_7
    if-ne v0, v10, :cond_8

    .line 150
    iget v12, p0, Landroid/widget/WebtopScrollViewScroller;->mState:I

    if-ne v12, v13, :cond_b

    .line 154
    iget-object v12, p0, Landroid/widget/WebtopScrollViewScroller;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v12, v11}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    .line 155
    invoke-virtual {p0, v10}, Landroid/widget/WebtopScrollViewScroller;->setState(I)V

    .line 156
    iget-object v11, p0, Landroid/widget/WebtopScrollViewScroller;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v11}, Landroid/widget/ScrollView;->invalidate()V

    goto :goto_0

    .line 160
    :cond_8
    if-ne v0, v13, :cond_b

    .line 161
    iget v12, p0, Landroid/widget/WebtopScrollViewScroller;->mState:I

    if-ne v12, v13, :cond_b

    .line 162
    iget v11, p0, Landroid/widget/WebtopScrollViewScroller;->mLastTouchY:F

    sub-float v2, v9, v11

    .line 163
    .local v2, deltaY:F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v11

    const/high16 v12, 0x3f80

    cmpl-float v11, v11, v12

    if-lez v11, :cond_0

    .line 164
    iget-boolean v11, p0, Landroid/widget/WebtopScrollViewScroller;->mScrollCompleted:Z

    if-eqz v11, :cond_0

    .line 165
    iget-object v11, p0, Landroid/widget/WebtopScrollViewScroller;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v11}, Landroid/widget/ScrollView;->getChildViewHeight()I

    move-result v7

    .line 166
    .local v7, viewHeight:I
    iget v11, p0, Landroid/widget/WebtopScrollViewScroller;->mLastThumbY:I

    float-to-int v12, v2

    add-int v6, v11, v12

    .line 167
    .local v6, newThumbY:I
    if-gez v6, :cond_a

    .line 168
    const/4 v6, 0x0

    .line 173
    :cond_9
    :goto_5
    iget v11, p0, Landroid/widget/WebtopScrollViewScroller;->mLastThumbY:I

    sub-int/2addr v11, v6

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    if-lt v11, v13, :cond_0

    .line 176
    iget-object v11, p0, Landroid/widget/WebtopScrollViewScroller;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v11}, Landroid/widget/ScrollView;->getChildContentHeight()I

    move-result v11

    mul-int/2addr v11, v6

    div-int v5, v11, v7

    .line 177
    .local v5, newScrollY:I
    iput v6, p0, Landroid/widget/WebtopScrollViewScroller;->mLastThumbY:I

    .line 178
    iput v9, p0, Landroid/widget/WebtopScrollViewScroller;->mLastTouchY:F

    .line 179
    iget-object v11, p0, Landroid/widget/WebtopScrollViewScroller;->mScrollView:Landroid/widget/ScrollView;

    iget-object v12, p0, Landroid/widget/WebtopScrollViewScroller;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v12}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v12

    invoke-virtual {v11, v12, v5}, Landroid/widget/ScrollView;->scrollTo(II)V

    goto/16 :goto_0

    .line 170
    .end local v5           #newScrollY:I
    :cond_a
    iget v11, p0, Landroid/widget/WebtopScrollViewScroller;->mThumbH:I

    add-int/2addr v11, v6

    if-le v11, v7, :cond_9

    .line 171
    iget v11, p0, Landroid/widget/WebtopScrollViewScroller;->mThumbH:I

    sub-int v6, v7, v11

    goto :goto_5

    .end local v2           #deltaY:F
    .end local v6           #newThumbY:I
    .end local v7           #viewHeight:I
    .end local v8           #x:F
    .end local v9           #y:F
    :cond_b
    move v10, v11

    .line 186
    goto/16 :goto_0
.end method

.method setState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 46
    iput p1, p0, Landroid/widget/WebtopScrollViewScroller;->mState:I

    .line 47
    return-void
.end method

.method stop()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/WebtopScrollViewScroller;->setState(I)V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/WebtopScrollViewScroller;->mScrollView:Landroid/widget/ScrollView;

    .line 76
    return-void
.end method
