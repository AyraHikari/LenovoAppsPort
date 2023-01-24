.class public Lcom/zui/gallery/filtershow/state/StatePanelTrack;
.super Landroid/widget/LinearLayout;
.source "StatePanelTrack.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/state/PanelTrack;


# static fields
.field private static final ALLOWS_DRAG:Z = false

.field private static final ALLOWS_DUPLICATES:Z = false

.field private static final LOGTAG:Ljava/lang/String; = "StatePanelTrack"


# instance fields
.field private mAdapter:Lcom/zui/gallery/filtershow/state/StateAdapter;

.field private mCurrentSelectedView:Lcom/zui/gallery/filtershow/state/StateView;

.field private mCurrentView:Lcom/zui/gallery/filtershow/state/StateView;

.field private mDeleteSlope:F

.field private mDragListener:Lcom/zui/gallery/filtershow/state/DragListener;

.field private mElemEndSize:I

.field private mElemHeight:I

.field private mElemSize:I

.field private mElemWidth:I

.field private mEndElemHeight:I

.field private mEndElemWidth:I

.field private mExited:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mMaxTouchDelay:I

.field private mObserver:Landroid/database/DataSetObserver;

.field private mStartedDrag:Z

.field private mTouchPoint:Landroid/graphics/Point;

.field private mTouchTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mExited:Z

    .line 49
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mStartedDrag:Z

    .line 51
    new-instance v1, Lcom/zui/gallery/filtershow/state/DragListener;

    invoke-direct {v1, p0}, Lcom/zui/gallery/filtershow/state/DragListener;-><init>(Lcom/zui/gallery/filtershow/state/PanelTrack;)V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mDragListener:Lcom/zui/gallery/filtershow/state/DragListener;

    const v1, 0x3e4ccccd    # 0.2f

    .line 52
    iput v1, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mDeleteSlope:F

    const/16 v1, 0x12c

    .line 61
    iput v1, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mMaxTouchDelay:I

    .line 64
    new-instance v1, Lcom/zui/gallery/filtershow/state/StatePanelTrack$1;

    invoke-direct {v1, p0}, Lcom/zui/gallery/filtershow/state/StatePanelTrack$1;-><init>(Lcom/zui/gallery/filtershow/state/StatePanelTrack;)V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mObserver:Landroid/database/DataSetObserver;

    .line 80
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/zui/gallery/R$styleable;->StatePanelTrack:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v1, 0x1

    .line 81
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mElemSize:I

    .line 82
    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mElemEndSize:I

    .line 83
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->getOrientation()I

    move-result p2

    const/4 v0, -0x1

    if-nez p2, :cond_0

    .line 84
    iget p2, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mElemSize:I

    iput p2, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mElemWidth:I

    .line 85
    iput v0, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mElemHeight:I

    .line 86
    iget p2, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mElemEndSize:I

    iput p2, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mEndElemWidth:I

    .line 87
    iput v0, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mEndElemHeight:I

    goto :goto_0

    .line 89
    :cond_0
    iput v0, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mElemWidth:I

    .line 90
    iget p2, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mElemSize:I

    iput p2, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mElemHeight:I

    .line 91
    iput v0, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mEndElemWidth:I

    .line 92
    iget p2, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mElemEndSize:I

    iput p2, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mEndElemHeight:I

    .line 94
    :goto_0
    new-instance p2, Lcom/zui/gallery/filtershow/state/StatePanelTrack$2;

    invoke-direct {p2, p0}, Lcom/zui/gallery/filtershow/state/StatePanelTrack$2;-><init>(Lcom/zui/gallery/filtershow/state/StatePanelTrack;)V

    .line 106
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/filtershow/state/StatePanelTrack;Landroid/view/MotionEvent;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->longPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/zui/gallery/filtershow/state/StatePanelTrack;Landroid/view/MotionEvent;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->addDuplicate(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private addDuplicate(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method private longPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public checkEndState()V
    .locals 5

    const/4 v0, 0x0

    .line 284
    iput-object v0, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mTouchPoint:Landroid/graphics/Point;

    const-wide/16 v1, 0x0

    .line 285
    iput-wide v1, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mTouchTime:J

    .line 286
    iget-boolean v1, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mExited:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mCurrentView:Lcom/zui/gallery/filtershow/state/StateView;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/state/StateView;->getBackgroundAlpha()F

    move-result v1

    iget v2, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mDeleteSlope:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    goto :goto_0

    .line 302
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mCurrentView:Lcom/zui/gallery/filtershow/state/StateView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/zui/gallery/filtershow/state/StateView;->setBackgroundAlpha(F)V

    .line 303
    iget-object v1, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mCurrentView:Lcom/zui/gallery/filtershow/state/StateView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/zui/gallery/filtershow/state/StateView;->setTranslationX(F)V

    .line 304
    iget-object v1, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mCurrentView:Lcom/zui/gallery/filtershow/state/StateView;

    invoke-virtual {v1, v2}, Lcom/zui/gallery/filtershow/state/StateView;->setTranslationY(F)V

    goto :goto_1

    .line 287
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mCurrentView:Lcom/zui/gallery/filtershow/state/StateView;

    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->findChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 289
    iget-object v2, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mAdapter:Lcom/zui/gallery/filtershow/state/StateAdapter;

    invoke-virtual {v2, v1}, Lcom/zui/gallery/filtershow/state/StateAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/state/State;

    .line 290
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getCurrentFilterRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v2

    .line 291
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/state/State;->getFilterRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v3

    .line 292
    iget-object v4, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mAdapter:Lcom/zui/gallery/filtershow/state/StateAdapter;

    invoke-virtual {v4, v1}, Lcom/zui/gallery/filtershow/state/StateAdapter;->remove(Lcom/zui/gallery/filtershow/state/State;)V

    const/4 v1, 0x1

    .line 293
    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->fillContent(Z)V

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 295
    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getFilterClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getFilterClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 296
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/FilterShowActivity;

    .line 297
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->backToMain()V

    return-void

    .line 306
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mCurrentSelectedView:Lcom/zui/gallery/filtershow/state/StateView;

    if-eqz v1, :cond_3

    .line 307
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/state/StateView;->invalidate()V

    .line 309
    :cond_3
    iget-object v1, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mCurrentView:Lcom/zui/gallery/filtershow/state/StateView;

    if-eqz v1, :cond_4

    .line 310
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/state/StateView;->invalidate()V

    .line 312
    :cond_4
    iput-object v0, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mCurrentView:Lcom/zui/gallery/filtershow/state/StateView;

    const/4 v0, 0x0

    .line 313
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mExited:Z

    .line 314
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mStartedDrag:Z

    return-void
.end method

.method public fillContent(Z)V
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 157
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mAdapter:Lcom/zui/gallery/filtershow/state/StateAdapter;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/state/StateAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    .line 160
    :goto_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 161
    invoke-virtual {p0, v3}, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/zui/gallery/filtershow/state/StateView;

    .line 162
    invoke-virtual {v4}, Lcom/zui/gallery/filtershow/state/StateView;->resetPosition()V

    .line 163
    iget-object v5, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mAdapter:Lcom/zui/gallery/filtershow/state/StateAdapter;

    invoke-virtual {v4}, Lcom/zui/gallery/filtershow/state/StateView;->getState()Lcom/zui/gallery/filtershow/state/State;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/zui/gallery/filtershow/state/StateAdapter;->contains(Lcom/zui/gallery/filtershow/state/State;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 164
    invoke-virtual {p0, v4}, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->removeView(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 167
    :cond_2
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mElemWidth:I

    iget v5, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mElemHeight:I

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_4

    .line 169
    iget-object v5, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mAdapter:Lcom/zui/gallery/filtershow/state/StateAdapter;

    invoke-virtual {v5, v4}, Lcom/zui/gallery/filtershow/state/StateAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/gallery/filtershow/state/State;

    .line 170
    invoke-virtual {p0, v5}, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->findChildWithState(Lcom/zui/gallery/filtershow/state/State;)Lcom/zui/gallery/filtershow/state/StateView;

    move-result-object v5

    if-nez v5, :cond_3

    .line 171
    iget-object v5, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mAdapter:Lcom/zui/gallery/filtershow/state/StateAdapter;

    invoke-virtual {v5, v4, v0, p0}, Lcom/zui/gallery/filtershow/state/StateAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 172
    invoke-virtual {p0, v5, v4, v3}, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-ge v2, v1, :cond_7

    .line 177
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mAdapter:Lcom/zui/gallery/filtershow/state/StateAdapter;

    invoke-virtual {v0, v2}, Lcom/zui/gallery/filtershow/state/StateAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/state/State;

    .line 178
    invoke-virtual {p0, v2}, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/filtershow/state/StateView;

    .line 179
    invoke-virtual {v3, v0}, Lcom/zui/gallery/filtershow/state/StateView;->setState(Lcom/zui/gallery/filtershow/state/State;)V

    if-nez v2, :cond_5

    .line 181
    sget v0, Lcom/zui/gallery/filtershow/state/StateView;->BEGIN:I

    invoke-virtual {v3, v0}, Lcom/zui/gallery/filtershow/state/StateView;->setType(I)V

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v1, -0x1

    if-ne v2, v0, :cond_6

    .line 183
    sget v0, Lcom/zui/gallery/filtershow/state/StateView;->END:I

    invoke-virtual {v3, v0}, Lcom/zui/gallery/filtershow/state/StateView;->setType(I)V

    goto :goto_3

    .line 185
    :cond_6
    sget v0, Lcom/zui/gallery/filtershow/state/StateView;->DEFAULT:I

    invoke-virtual {v3, v0}, Lcom/zui/gallery/filtershow/state/StateView;->setType(I)V

    .line 187
    :goto_3
    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/state/StateView;->resetPosition()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    if-nez p1, :cond_8

    .line 191
    new-instance p1, Landroid/animation/LayoutTransition;

    invoke-direct {p1}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    :cond_8
    return-void
.end method

.method public findChild(Landroid/view/View;)I
    .locals 2

    const/4 v0, 0x0

    .line 332
    :goto_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 333
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public findChildAt(II)Landroid/view/View;
    .locals 4

    .line 318
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 319
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->getScrollX()I

    move-result v1

    add-int/2addr v1, p1

    .line 320
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->getScrollY()I

    move-result p1

    add-int/2addr p1, p2

    const/4 p2, 0x0

    .line 321
    :goto_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->getChildCount()I

    move-result v2

    if-ge p2, v2, :cond_1

    .line 322
    invoke-virtual {p0, p2}, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 323
    invoke-virtual {v2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 324
    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public findChildWithState(Lcom/zui/gallery/filtershow/state/State;)Lcom/zui/gallery/filtershow/state/StateView;
    .locals 3

    const/4 v0, 0x0

    .line 146
    :goto_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 147
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/state/StateView;

    .line 148
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/state/StateView;->getState()Lcom/zui/gallery/filtershow/state/State;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAdapter()Landroid/widget/Adapter;
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mAdapter:Lcom/zui/gallery/filtershow/state/StateAdapter;

    return-object v0
.end method

.method public getCurrentView()Lcom/zui/gallery/filtershow/state/StateView;
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mCurrentView:Lcom/zui/gallery/filtershow/state/StateView;

    return-object v0
.end method

.method public getTouchPoint()Landroid/graphics/Point;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mTouchPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 219
    iget-object p1, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mCurrentView:Lcom/zui/gallery/filtershow/state/StateView;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onTouch(Landroid/view/MotionEvent;Lcom/zui/gallery/filtershow/state/StateView;)V
    .locals 1

    .line 196
    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/state/StateView;->isDraggable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 199
    :cond_0
    iput-object p2, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mCurrentView:Lcom/zui/gallery/filtershow/state/StateView;

    .line 200
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mCurrentSelectedView:Lcom/zui/gallery/filtershow/state/StateView;

    if-ne v0, p2, :cond_1

    return-void

    :cond_1
    if-eqz v0, :cond_2

    const/4 p2, 0x0

    .line 204
    invoke-virtual {v0, p2}, Lcom/zui/gallery/filtershow/state/StateView;->setSelected(Z)V

    .line 208
    :cond_2
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p2

    const/4 v0, 0x3

    .line 209
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 210
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 211
    iget-object p2, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mCurrentView:Lcom/zui/gallery/filtershow/state/StateView;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mCurrentSelectedView:Lcom/zui/gallery/filtershow/state/StateView;

    .line 213
    iget-object p2, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mTouchTime:J

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 227
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mCurrentView:Lcom/zui/gallery/filtershow/state/StateView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 230
    :cond_0
    iget-wide v2, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mTouchTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mTouchTime:J

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 234
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mTouchPoint:Landroid/graphics/Point;

    if-nez v0, :cond_2

    .line 235
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mTouchPoint:Landroid/graphics/Point;

    .line 236
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 237
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mTouchPoint:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 240
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_4

    .line 241
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v2, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mTouchPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 242
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v4, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mCurrentView:Lcom/zui/gallery/filtershow/state/StateView;

    invoke-virtual {v4}, Lcom/zui/gallery/filtershow/state/StateView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v2, v4, v2

    .line 243
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->getOrientation()I

    move-result v5

    if-ne v5, v3, :cond_3

    .line 244
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mTouchPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 245
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v5, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mCurrentView:Lcom/zui/gallery/filtershow/state/StateView;

    invoke-virtual {v5}, Lcom/zui/gallery/filtershow/state/StateView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v2, v5

    sub-float v2, v4, v2

    .line 246
    iget-object v4, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mCurrentView:Lcom/zui/gallery/filtershow/state/StateView;

    invoke-virtual {v4, v0}, Lcom/zui/gallery/filtershow/state/StateView;->setTranslationX(F)V

    goto :goto_0

    .line 248
    :cond_3
    iget-object v4, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mCurrentView:Lcom/zui/gallery/filtershow/state/StateView;

    invoke-virtual {v4, v0}, Lcom/zui/gallery/filtershow/state/StateView;->setTranslationY(F)V

    .line 250
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mCurrentView:Lcom/zui/gallery/filtershow/state/StateView;

    invoke-virtual {v0, v2}, Lcom/zui/gallery/filtershow/state/StateView;->setBackgroundAlpha(F)V

    .line 258
    :cond_4
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mExited:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mCurrentView:Lcom/zui/gallery/filtershow/state/StateView;

    if-eqz v0, :cond_5

    .line 259
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/state/StateView;->getBackgroundAlpha()F

    move-result v0

    iget v2, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mDeleteSlope:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5

    .line 260
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 261
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mTouchTime:J

    sub-long/2addr v4, v6

    iget v0, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mMaxTouchDelay:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-gez v0, :cond_5

    .line 262
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mCurrentView:Lcom/zui/gallery/filtershow/state/StateView;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/state/StateView;->getState()Lcom/zui/gallery/filtershow/state/State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/state/State;->getFilterRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    .line 263
    iget-object v2, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mCurrentView:Lcom/zui/gallery/filtershow/state/StateView;

    invoke-virtual {v2, v3}, Lcom/zui/gallery/filtershow/state/StateView;->setSelected(Z)V

    .line 264
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getCurrentFilterRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v2

    if-eq v0, v2, :cond_5

    .line 265
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/FilterShowActivity;

    .line 266
    invoke-virtual {v2, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->showRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 267
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mCurrentView:Lcom/zui/gallery/filtershow/state/StateView;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/state/StateView;->setSelected(Z)V

    .line 270
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v3, :cond_6

    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mStartedDrag:Z

    if-nez v0, :cond_7

    .line 271
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_7

    .line 272
    :cond_6
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->checkEndState()V

    .line 273
    iget-object p1, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mCurrentView:Lcom/zui/gallery/filtershow/state/StateView;

    if-eqz p1, :cond_7

    .line 274
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/state/StateView;->getState()Lcom/zui/gallery/filtershow/state/State;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/state/State;->getFilterRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p1

    .line 275
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getEditorId()I

    move-result p1

    const v0, 0x7f0801e9

    if-ne p1, v0, :cond_7

    .line 276
    iget-object p1, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mCurrentView:Lcom/zui/gallery/filtershow/state/StateView;

    invoke-virtual {p1, v1}, Lcom/zui/gallery/filtershow/state/StateView;->setSelected(Z)V

    :cond_7
    return v3
.end method

.method public setAdapter(Lcom/zui/gallery/filtershow/state/StateAdapter;)V
    .locals 1

    .line 138
    iput-object p1, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mAdapter:Lcom/zui/gallery/filtershow/state/StateAdapter;

    .line 139
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/state/StateAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 140
    iget-object p1, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mAdapter:Lcom/zui/gallery/filtershow/state/StateAdapter;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->getOrientation()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/state/StateAdapter;->setOrientation(I)V

    const/4 p1, 0x0

    .line 141
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->fillContent(Z)V

    .line 142
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->requestLayout()V

    return-void
.end method

.method public setCurrentView(Landroid/view/View;)V
    .locals 0

    .line 346
    check-cast p1, Lcom/zui/gallery/filtershow/state/StateView;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mCurrentView:Lcom/zui/gallery/filtershow/state/StateView;

    return-void
.end method

.method public setExited(Z)V
    .locals 0

    .line 350
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->mExited:Z

    return-void
.end method
