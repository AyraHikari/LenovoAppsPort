.class public Lcom/zui/gallery/ui/CustomeViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "CustomeViewPager.java"


# static fields
.field private static DURATION_TIME:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "CustomeViewPager"


# instance fields
.field private final MAX_SCROLL_SIZE:I

.field private final RATE:F

.field private final SCROLL_SIZE:I

.field private animator:Landroid/animation/ValueAnimator;

.field private canDoEffect:Z

.field private doEffect:Z

.field private isHandScroll:Z

.field private lastScrollValue:F

.field private mIndicatorView:Lcom/zui/gallery/ui/IndicatorView;

.field private mIsScroll:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLayoutRect:Landroid/graphics/Rect;

.field private page_count:I

.field private startX:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 43
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 24
    iput p1, p0, Lcom/zui/gallery/ui/CustomeViewPager;->page_count:I

    const/16 v0, 0x28

    .line 25
    iput v0, p0, Lcom/zui/gallery/ui/CustomeViewPager;->SCROLL_SIZE:I

    const/16 v0, 0x96

    .line 26
    iput v0, p0, Lcom/zui/gallery/ui/CustomeViewPager;->MAX_SCROLL_SIZE:I

    const v0, 0x3f333333    # 0.7f

    .line 27
    iput v0, p0, Lcom/zui/gallery/ui/CustomeViewPager;->RATE:F

    .line 28
    iput-boolean p1, p0, Lcom/zui/gallery/ui/CustomeViewPager;->isHandScroll:Z

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/zui/gallery/ui/CustomeViewPager;->mLayoutRect:Landroid/graphics/Rect;

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/zui/gallery/ui/CustomeViewPager;->mIsScroll:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/high16 v0, -0x40800000    # -1.0f

    .line 35
    iput v0, p0, Lcom/zui/gallery/ui/CustomeViewPager;->lastScrollValue:F

    .line 36
    iput-boolean p1, p0, Lcom/zui/gallery/ui/CustomeViewPager;->doEffect:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 24
    iput p1, p0, Lcom/zui/gallery/ui/CustomeViewPager;->page_count:I

    const/16 p2, 0x28

    .line 25
    iput p2, p0, Lcom/zui/gallery/ui/CustomeViewPager;->SCROLL_SIZE:I

    const/16 p2, 0x96

    .line 26
    iput p2, p0, Lcom/zui/gallery/ui/CustomeViewPager;->MAX_SCROLL_SIZE:I

    const p2, 0x3f333333    # 0.7f

    .line 27
    iput p2, p0, Lcom/zui/gallery/ui/CustomeViewPager;->RATE:F

    .line 28
    iput-boolean p1, p0, Lcom/zui/gallery/ui/CustomeViewPager;->isHandScroll:Z

    const/4 p2, 0x0

    .line 29
    iput-object p2, p0, Lcom/zui/gallery/ui/CustomeViewPager;->mLayoutRect:Landroid/graphics/Rect;

    .line 34
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/zui/gallery/ui/CustomeViewPager;->mIsScroll:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/high16 p2, -0x40800000    # -1.0f

    .line 35
    iput p2, p0, Lcom/zui/gallery/ui/CustomeViewPager;->lastScrollValue:F

    .line 36
    iput-boolean p1, p0, Lcom/zui/gallery/ui/CustomeViewPager;->doEffect:Z

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/ui/CustomeViewPager;)Lcom/zui/gallery/ui/IndicatorView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/zui/gallery/ui/CustomeViewPager;->mIndicatorView:Lcom/zui/gallery/ui/IndicatorView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/zui/gallery/ui/CustomeViewPager;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/zui/gallery/ui/CustomeViewPager;->canDoEffect:Z

    return p1
.end method

.method static synthetic access$200(Lcom/zui/gallery/ui/CustomeViewPager;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/zui/gallery/ui/CustomeViewPager;->page_count:I

    return p0
.end method

.method static synthetic access$302(Lcom/zui/gallery/ui/CustomeViewPager;F)F
    .locals 0

    .line 19
    iput p1, p0, Lcom/zui/gallery/ui/CustomeViewPager;->lastScrollValue:F

    return p1
.end method

.method static synthetic access$400(Lcom/zui/gallery/ui/CustomeViewPager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/zui/gallery/ui/CustomeViewPager;->mIsScroll:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$500(Lcom/zui/gallery/ui/CustomeViewPager;)Landroid/graphics/Rect;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/zui/gallery/ui/CustomeViewPager;->mLayoutRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method private snackBack()Z
    .locals 4

    .line 130
    invoke-virtual {p0}, Lcom/zui/gallery/ui/CustomeViewPager;->getLeft()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 132
    invoke-virtual {p0}, Lcom/zui/gallery/ui/CustomeViewPager;->getLeft()I

    move-result v3

    aput v3, v0, v2

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/ui/CustomeViewPager;->animator:Landroid/animation/ValueAnimator;

    .line 133
    sget v2, Lcom/zui/gallery/ui/CustomeViewPager;->DURATION_TIME:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 134
    iget-object v0, p0, Lcom/zui/gallery/ui/CustomeViewPager;->animator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 135
    iget-object v0, p0, Lcom/zui/gallery/ui/CustomeViewPager;->animator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/zui/gallery/ui/CustomeViewPager$2;

    invoke-direct {v2, p0}, Lcom/zui/gallery/ui/CustomeViewPager$2;-><init>(Lcom/zui/gallery/ui/CustomeViewPager;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 142
    iget-object v0, p0, Lcom/zui/gallery/ui/CustomeViewPager;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method private update(F)Z
    .locals 4

    .line 151
    invoke-virtual {p0}, Lcom/zui/gallery/ui/CustomeViewPager;->getCurrentItem()I

    move-result v0

    const/high16 v1, 0x43160000    # 150.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_3

    .line 152
    invoke-virtual {p0}, Lcom/zui/gallery/ui/CustomeViewPager;->getLeft()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    return v3

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/ui/CustomeViewPager;->getLeft()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/zui/gallery/ui/CustomeViewPager;->getLeft()I

    move-result v0

    float-to-int p1, p1

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/zui/gallery/ui/CustomeViewPager;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/zui/gallery/ui/CustomeViewPager;->getRight()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {p0}, Lcom/zui/gallery/ui/CustomeViewPager;->getBottom()I

    move-result p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/zui/gallery/ui/CustomeViewPager;->layout(IIII)V

    goto/16 :goto_0

    .line 159
    :cond_1
    iget v0, p0, Lcom/zui/gallery/ui/CustomeViewPager;->page_count:I

    if-ne v0, v3, :cond_2

    invoke-virtual {p0}, Lcom/zui/gallery/ui/CustomeViewPager;->getRight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p1

    iget-object v1, p0, Lcom/zui/gallery/ui/CustomeViewPager;->mLayoutRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 161
    invoke-virtual {p0}, Lcom/zui/gallery/ui/CustomeViewPager;->getLeft()I

    move-result v0

    float-to-int p1, p1

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/zui/gallery/ui/CustomeViewPager;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/zui/gallery/ui/CustomeViewPager;->getRight()I

    move-result v2

    add-int/2addr v2, p1

    .line 162
    invoke-virtual {p0}, Lcom/zui/gallery/ui/CustomeViewPager;->getBottom()I

    move-result p1

    .line 161
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/zui/gallery/ui/CustomeViewPager;->layout(IIII)V

    goto :goto_0

    .line 163
    :cond_2
    invoke-virtual {p0}, Lcom/zui/gallery/ui/CustomeViewPager;->getLeft()I

    move-result p1

    if-eqz p1, :cond_6

    .line 165
    invoke-virtual {p0}, Lcom/zui/gallery/ui/CustomeViewPager;->getTop()I

    move-result p1

    iget-object v0, p0, Lcom/zui/gallery/ui/CustomeViewPager;->mLayoutRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/zui/gallery/ui/CustomeViewPager;->getBottom()I

    move-result v1

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/zui/gallery/ui/CustomeViewPager;->layout(IIII)V

    goto :goto_0

    .line 171
    :cond_3
    invoke-virtual {p0}, Lcom/zui/gallery/ui/CustomeViewPager;->getLeft()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_4

    return v3

    .line 174
    :cond_4
    invoke-virtual {p0}, Lcom/zui/gallery/ui/CustomeViewPager;->getRight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p1

    iget-object v1, p0, Lcom/zui/gallery/ui/CustomeViewPager;->mLayoutRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_5

    .line 176
    invoke-virtual {p0}, Lcom/zui/gallery/ui/CustomeViewPager;->getLeft()I

    move-result v0

    float-to-int p1, p1

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/zui/gallery/ui/CustomeViewPager;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/zui/gallery/ui/CustomeViewPager;->getRight()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {p0}, Lcom/zui/gallery/ui/CustomeViewPager;->getBottom()I

    move-result p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/zui/gallery/ui/CustomeViewPager;->layout(IIII)V

    :goto_0
    move v2, v3

    goto :goto_1

    .line 178
    :cond_5
    invoke-virtual {p0}, Lcom/zui/gallery/ui/CustomeViewPager;->getRight()I

    move-result p1

    iget-object v0, p0, Lcom/zui/gallery/ui/CustomeViewPager;->mLayoutRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-eq p1, v0, :cond_6

    .line 180
    invoke-virtual {p0}, Lcom/zui/gallery/ui/CustomeViewPager;->getTop()I

    move-result p1

    iget-object v0, p0, Lcom/zui/gallery/ui/CustomeViewPager;->mLayoutRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/zui/gallery/ui/CustomeViewPager;->getBottom()I

    move-result v1

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/zui/gallery/ui/CustomeViewPager;->layout(IIII)V

    goto :goto_0

    :cond_6
    :goto_1
    return v2
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 97
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/zui/gallery/ui/CustomeViewPager;->startX:F

    .line 99
    iget-object v0, p0, Lcom/zui/gallery/ui/CustomeViewPager;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const-string v0, "CustomeViewPager"

    const-string v1, "down"

    .line 101
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_1
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 89
    invoke-super/range {p0 .. p5}, Landroidx/viewpager/widget/ViewPager;->onLayout(ZIIII)V

    .line 90
    iget-object p1, p0, Lcom/zui/gallery/ui/CustomeViewPager;->mLayoutRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 91
    iget-object p1, p0, Lcom/zui/gallery/ui/CustomeViewPager;->mLayoutRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 108
    iget-boolean v0, p0, Lcom/zui/gallery/ui/CustomeViewPager;->doEffect:Z

    if-nez v0, :cond_0

    .line 109
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 111
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 114
    iget v1, p0, Lcom/zui/gallery/ui/CustomeViewPager;->startX:F

    sub-float v1, v0, v1

    const v3, 0x3f333333    # 0.7f

    mul-float/2addr v1, v3

    .line 115
    iput v0, p0, Lcom/zui/gallery/ui/CustomeViewPager;->startX:F

    .line 116
    iget-boolean v0, p0, Lcom/zui/gallery/ui/CustomeViewPager;->canDoEffect:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/zui/gallery/ui/CustomeViewPager;->getCurrentItem()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/zui/gallery/ui/CustomeViewPager;->getCurrentItem()I

    move-result v0

    iget v3, p0, Lcom/zui/gallery/ui/CustomeViewPager;->page_count:I

    sub-int/2addr v3, v2

    if-ne v0, v3, :cond_3

    .line 117
    :cond_1
    invoke-direct {p0, v1}, Lcom/zui/gallery/ui/CustomeViewPager;->update(F)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/gallery/ui/CustomeViewPager;->isHandScroll:Z

    goto :goto_0

    .line 120
    :cond_2
    invoke-direct {p0}, Lcom/zui/gallery/ui/CustomeViewPager;->snackBack()Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/gallery/ui/CustomeViewPager;->isHandScroll:Z

    .line 122
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/zui/gallery/ui/CustomeViewPager;->isHandScroll:Z

    if-eqz v0, :cond_4

    return v2

    .line 125
    :cond_4
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 53
    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/ui/CustomeViewPager;->page_count:I

    .line 54
    iget-object v0, p0, Lcom/zui/gallery/ui/CustomeViewPager;->mIndicatorView:Lcom/zui/gallery/ui/IndicatorView;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/IndicatorView;->setCircleCount(I)V

    .line 55
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/ui/CustomeViewPager;->mLayoutRect:Landroid/graphics/Rect;

    .line 57
    new-instance p1, Lcom/zui/gallery/ui/CustomeViewPager$1;

    invoke-direct {p1, p0}, Lcom/zui/gallery/ui/CustomeViewPager$1;-><init>(Lcom/zui/gallery/ui/CustomeViewPager;)V

    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/CustomeViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public setIndicatorView(Lcom/zui/gallery/ui/IndicatorView;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/zui/gallery/ui/CustomeViewPager;->mIndicatorView:Lcom/zui/gallery/ui/IndicatorView;

    return-void
.end method
