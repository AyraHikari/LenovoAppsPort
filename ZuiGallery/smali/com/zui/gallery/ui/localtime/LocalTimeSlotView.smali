.class public Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;
.super Lcom/zui/gallery/ui/GLView;
.source "LocalTimeSlotView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;,
        Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;,
        Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$ScatteringAnimation;,
        Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$RisingAnimation;,
        Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$SlotAnimation;,
        Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$SlotRenderer;,
        Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$SimpleListener;,
        Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Listener;
    }
.end annotation


# static fields
.field private static final INDEX_NONE:I = -0x1

.field private static final OVERSCROLL_3D:I = 0x0

.field private static final OVERSCROLL_NONE:I = 0x2

.field private static final OVERSCROLL_SYSTEM:I = 0x1

.field private static final RENDER_MORE_FRAME:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LocalTimeSlotView"

.field private static final WIDE:Z = false


# instance fields
.field private customScrollBarMaxLength:I

.field private longTapItemPath:Lcom/zui/gallery/data/Path;

.field private mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

.field private mAlphaAnimation:Lcom/zui/gallery/ui/GLView$BaseAnimation;

.field private mAnimation:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$SlotAnimation;

.field private mDownInScrolling:Z

.field private final mGestureDetector:Lcom/zui/gallery/util/LenovoOneGestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

.field private mListener:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Listener;

.field private final mLongTapAbslateRect:Landroid/graphics/Rect;

.field private mMyGestureListener:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;

.field private mOverscrollEffect:I

.field private final mPaper:Lcom/zui/gallery/ui/Paper;

.field private mRenderer:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

.field private mScaleAnimation:Lcom/zui/gallery/ui/GLView$BaseAnimation;

.field private final mScroller:Lcom/zui/gallery/ui/ScrollerHelper;

.field private mStartIndex:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mUIListener:Lcom/zui/gallery/ui/UserInteractionListener;

.field private volatile mbAnimating:Z

.field private position:I


# direct methods
.method public constructor <init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;)V
    .locals 3

    .line 190
    invoke-direct {p0}, Lcom/zui/gallery/ui/GLView;-><init>()V

    .line 151
    new-instance v0, Lcom/zui/gallery/ui/Paper;

    invoke-direct {v0}, Lcom/zui/gallery/ui/Paper;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mPaper:Lcom/zui/gallery/ui/Paper;

    const/4 v0, 0x0

    .line 156
    iput-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mAnimation:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$SlotAnimation;

    const/4 v1, -0x1

    .line 161
    iput v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mStartIndex:I

    const/4 v1, 0x0

    .line 165
    iput v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mOverscrollEffect:I

    .line 176
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mTempRect:Landroid/graphics/Rect;

    .line 177
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mLongTapAbslateRect:Landroid/graphics/Rect;

    .line 1209
    iput-boolean v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mbAnimating:Z

    .line 191
    iput-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 192
    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mMyGestureListener:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;

    if-nez v1, :cond_0

    .line 193
    new-instance v1, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;

    invoke-direct {v1, p0, v0}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;-><init>(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$1;)V

    iput-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mMyGestureListener:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;

    .line 195
    :cond_0
    new-instance v0, Lcom/zui/gallery/util/LenovoOneGestureDetector;

    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mMyGestureListener:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;

    invoke-direct {v0, p1, v1}, Lcom/zui/gallery/util/LenovoOneGestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mGestureDetector:Lcom/zui/gallery/util/LenovoOneGestureDetector;

    .line 196
    new-instance v0, Lcom/zui/gallery/ui/ScrollerHelper;

    invoke-direct {v0, p1}, Lcom/zui/gallery/ui/ScrollerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mScroller:Lcom/zui/gallery/ui/ScrollerHelper;

    .line 197
    new-instance v0, Lcom/zui/gallery/ui/SynchronizedHandler;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zui/gallery/ui/SynchronizedHandler;-><init>(Lcom/zui/gallery/ui/GLRoot;)V

    iput-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mHandler:Landroid/os/Handler;

    .line 198
    new-instance p1, Lcom/zui/gallery/ui/localtime/ListLayout;

    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-direct {p1, v0, p2, p0}, Lcom/zui/gallery/ui/localtime/ListLayout;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)V

    iput-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    return-void
.end method

.method static synthetic access$100(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/localtime/ListLayout;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Listener;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListener:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Listener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/ScrollerHelper;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mScroller:Lcom/zui/gallery/ui/ScrollerHelper;

    return-object p0
.end method

.method static synthetic access$400(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/UserInteractionListener;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mUIListener:Lcom/zui/gallery/ui/UserInteractionListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mRenderer:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    return-object p0
.end method

.method static synthetic access$600(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mOverscrollEffect:I

    return p0
.end method

.method static synthetic access$700(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/Paper;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mPaper:Lcom/zui/gallery/ui/Paper;

    return-object p0
.end method

.method static synthetic access$800(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mDownInScrolling:Z

    return p0
.end method

.method private static expandIntArray([II)[I
    .locals 1

    .line 421
    :goto_0
    array-length v0, p0

    if-ge v0, p1, :cond_0

    .line 422
    array-length p0, p0

    mul-int/lit8 p0, p0, 0x2

    new-array p0, p0, [I

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private renderEmptyPic(Lcom/zui/gallery/glrenderer/GLCanvas;)V
    .locals 2

    const/4 v0, 0x3

    .line 666
    invoke-interface {p1, v0}, Lcom/zui/gallery/glrenderer/GLCanvas;->save(I)V

    .line 667
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/ListLayout;->getFullRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 668
    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mRenderer:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    invoke-virtual {v1, p1, v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->renderEmptyPic(Lcom/zui/gallery/glrenderer/GLCanvas;Landroid/graphics/Rect;)V

    .line 669
    invoke-interface {p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->restore()V

    return-void
.end method

.method private renderItem(Lcom/zui/gallery/glrenderer/GLCanvas;IIZ)I
    .locals 7

    const/4 v0, 0x3

    .line 543
    invoke-interface {p1, v0}, Lcom/zui/gallery/glrenderer/GLCanvas;->save(I)V

    .line 544
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, v1}, Lcom/zui/gallery/ui/localtime/ListLayout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz p4, :cond_0

    .line 549
    iget-object p4, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mPaper:Lcom/zui/gallery/ui/Paper;

    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    .line 550
    invoke-virtual {v1, p2}, Lcom/zui/gallery/ui/localtime/ListLayout;->getSlotLineIndex(I)I

    move-result v1

    iget-object v2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    .line 551
    invoke-virtual {v2}, Lcom/zui/gallery/ui/localtime/ListLayout;->getLineCount()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 550
    invoke-virtual {p4, v0, v1, v2, v3}, Lcom/zui/gallery/ui/Paper;->getTransformNew(Landroid/graphics/Rect;III)[F

    move-result-object p4

    const/4 v1, 0x0

    .line 549
    invoke-interface {p1, p4, v1}, Lcom/zui/gallery/glrenderer/GLCanvas;->multiplyMatrix([FI)V

    goto :goto_0

    .line 554
    :cond_0
    iget p4, v0, Landroid/graphics/Rect;->left:I

    int-to-float p4, p4

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-interface {p1, p4, v1, v2}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FFF)V

    .line 557
    :goto_0
    iget-object p4, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mAnimation:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$SlotAnimation;

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$SlotAnimation;->isActive()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 558
    iget-object p4, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mAnimation:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$SlotAnimation;

    invoke-virtual {p4, p1, p2, v0}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$SlotAnimation;->apply(Lcom/zui/gallery/glrenderer/GLCanvas;ILandroid/graphics/Rect;)V

    .line 562
    :cond_1
    iget-object p4, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mRenderer:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    invoke-virtual {p4}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->inSelectModel()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 563
    iget-object p4, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mScaleAnimation:Lcom/zui/gallery/ui/GLView$BaseAnimation;

    if-eqz p4, :cond_2

    iget-object p4, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mRenderer:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    .line 564
    invoke-virtual {p4, p2}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->getItemPath(I)Lcom/zui/gallery/data/Path;

    move-result-object p4

    if-eqz p4, :cond_2

    iget-object p4, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mRenderer:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    invoke-virtual {p4, p2}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->getItemPath(I)Lcom/zui/gallery/data/Path;

    move-result-object p4

    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mScaleAnimation:Lcom/zui/gallery/ui/GLView$BaseAnimation;

    .line 565
    invoke-virtual {v1}, Lcom/zui/gallery/ui/GLView$BaseAnimation;->getSelectPath()Lcom/zui/gallery/data/Path;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    iget-object p4, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mScaleAnimation:Lcom/zui/gallery/ui/GLView$BaseAnimation;

    invoke-virtual {p4}, Lcom/zui/gallery/ui/GLView$BaseAnimation;->isActive()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 566
    iget-object p4, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mScaleAnimation:Lcom/zui/gallery/ui/GLView$BaseAnimation;

    invoke-virtual {p4, p1, p2, v0}, Lcom/zui/gallery/ui/GLView$BaseAnimation;->apply(Lcom/zui/gallery/glrenderer/GLCanvas;ILandroid/graphics/Rect;)V

    .line 571
    :cond_2
    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mRenderer:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    iget p4, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int v5, p4, v2

    iget p4, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v6, p4, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->renderSlot(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)I

    move-result p2

    .line 574
    invoke-interface {p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->restore()V

    return p2
.end method

.method private renderLabel(Lcom/zui/gallery/glrenderer/GLCanvas;IZ)I
    .locals 9

    const/4 v0, 0x3

    .line 609
    invoke-interface {p1, v0}, Lcom/zui/gallery/glrenderer/GLCanvas;->save(I)V

    .line 610
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 612
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 613
    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v1, p2}, Lcom/zui/gallery/ui/localtime/ListLayout;->getLableRect(I)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 615
    :goto_0
    iget-object v2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v2, p2}, Lcom/zui/gallery/ui/localtime/ListLayout;->isSelectAll(I)Z

    move-result v8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz p3, :cond_3

    .line 622
    iget-object p3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {p3, p2}, Lcom/zui/gallery/ui/localtime/ListLayout;->getLabelFirstSlotIndex(I)I

    move-result p3

    .line 623
    iget-object v5, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v5}, Lcom/zui/gallery/ui/localtime/ListLayout;->getSlotHeight()I

    move-result v5

    .line 626
    invoke-virtual {p0, p2}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->isClipLabel(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 627
    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/localtime/ListLayout;->getTobLabeRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 628
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_1

    .line 629
    iget v0, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v7, v7, 0x72

    invoke-virtual {v1, v0, v4, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 632
    :cond_1
    invoke-virtual {p0, p2}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->isClipLabel(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mScroller:Lcom/zui/gallery/ui/ScrollerHelper;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/ScrollerHelper;->getPosition()I

    move-result v0

    if-lez v0, :cond_2

    .line 635
    iget p3, v1, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    iget v0, v1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-interface {p1, p3, v0, v2}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FFF)V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_5

    .line 638
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mPaper:Lcom/zui/gallery/ui/Paper;

    iget-object v2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    .line 639
    invoke-virtual {v2, p3}, Lcom/zui/gallery/ui/localtime/ListLayout;->getSlotLineIndex(I)I

    move-result p3

    iget-object v2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    .line 640
    invoke-virtual {v2}, Lcom/zui/gallery/ui/localtime/ListLayout;->getLineCount()I

    move-result v2

    .line 639
    invoke-virtual {v0, v1, p3, v2, v5}, Lcom/zui/gallery/ui/Paper;->getTransformNew(Landroid/graphics/Rect;III)[F

    move-result-object p3

    .line 638
    invoke-interface {p1, p3, v3}, Lcom/zui/gallery/glrenderer/GLCanvas;->multiplyMatrix([FI)V

    goto :goto_1

    .line 645
    :cond_3
    invoke-virtual {p0, p2}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->isClipLabel(I)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 646
    iget-object p3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {p3}, Lcom/zui/gallery/ui/localtime/ListLayout;->getTobLabeRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 647
    iget p3, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne p3, v4, :cond_4

    .line 648
    iget-object p3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v0, 0x7f060202

    invoke-virtual {p3, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDimens(I)I

    move-result p3

    .line 649
    iget v0, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, p3

    invoke-virtual {v1, v0, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    :cond_4
    if-eqz v1, :cond_5

    .line 653
    iget p3, v1, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    iget v0, v1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-interface {p1, p3, v0, v2}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FFF)V

    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    .line 658
    iget-object v3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mRenderer:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    iget p3, v1, Landroid/graphics/Rect;->right:I

    iget v0, v1, Landroid/graphics/Rect;->left:I

    sub-int v6, p3, v0

    iget p3, v1, Landroid/graphics/Rect;->bottom:I

    iget v0, v1, Landroid/graphics/Rect;->top:I

    sub-int v7, p3, v0

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v3 .. v8}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->renderLabel(Lcom/zui/gallery/glrenderer/GLCanvas;IIIZ)I

    move-result v3

    .line 661
    :cond_6
    invoke-interface {p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->restore()V

    return v3
.end method

.method private renderTimeAxis(Lcom/zui/gallery/glrenderer/GLCanvas;IZ)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    const/4 v1, 0x3

    .line 580
    invoke-interface {v7, v1}, Lcom/zui/gallery/glrenderer/GLCanvas;->save(I)V

    .line 581
    iget-object v1, v0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/localtime/ListLayout;->getGridLayout()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/ui/localtime/GridLayout;

    .line 582
    invoke-virtual {v1}, Lcom/zui/gallery/ui/localtime/GridLayout;->getStartPosition()I

    move-result v9

    .line 583
    invoke-virtual {v1}, Lcom/zui/gallery/ui/localtime/GridLayout;->getEndPosition()I

    move-result v10

    .line 585
    iget-object v1, v0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/localtime/ListLayout;->getWidth()I

    move-result v1

    iget-object v2, v0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v2}, Lcom/zui/gallery/ui/localtime/ListLayout;->getMarginRight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int/lit8 v11, v1, 0xa

    .line 586
    iget-object v1, v0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/localtime/ListLayout;->getWidth()I

    move-result v1

    iget-object v2, v0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v2}, Lcom/zui/gallery/ui/localtime/ListLayout;->getMarginRight()I

    move-result v2

    sub-int v12, v1, v2

    .line 588
    iget-object v1, v0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050136

    .line 589
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    .line 590
    iget-object v1, v0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050134

    .line 591
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    add-int/lit16 v15, v9, 0xa0

    move v6, v15

    :goto_0
    if-ge v6, v10, :cond_1

    if-ne v6, v15, :cond_0

    int-to-float v2, v11

    int-to-float v3, v6

    const/high16 v4, 0x42700000    # 60.0f

    const/high16 v5, 0x41a00000    # 20.0f

    move-object/from16 v1, p1

    move/from16 p3, v10

    move v10, v6

    move v6, v13

    .line 594
    invoke-interface/range {v1 .. v6}, Lcom/zui/gallery/glrenderer/GLCanvas;->fillRect(FFFFI)V

    goto :goto_1

    :cond_0
    move/from16 p3, v10

    move v10, v6

    int-to-float v2, v11

    int-to-float v3, v10

    const/high16 v4, 0x41a00000    # 20.0f

    const/high16 v5, 0x41a00000    # 20.0f

    move-object/from16 v1, p1

    move v6, v14

    .line 598
    invoke-interface/range {v1 .. v6}, Lcom/zui/gallery/glrenderer/GLCanvas;->fillRect(FFFFI)V

    :goto_1
    add-int/lit8 v6, v10, 0x50

    move/from16 v10, p3

    goto :goto_0

    :cond_1
    move v10, v6

    int-to-float v2, v11

    add-int/lit8 v6, v10, -0x50

    int-to-float v3, v6

    const/high16 v4, 0x42700000    # 60.0f

    const/high16 v5, 0x41a00000    # 20.0f

    move-object/from16 v1, p1

    move v6, v13

    .line 601
    invoke-interface/range {v1 .. v6}, Lcom/zui/gallery/glrenderer/GLCanvas;->fillRect(FFFFI)V

    .line 603
    iget-object v1, v0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mRenderer:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    add-int/lit16 v9, v9, 0x82

    invoke-virtual {v1, v7, v8, v12, v9}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->renderTime(Lcom/zui/gallery/glrenderer/GLCanvas;III)I

    .line 604
    invoke-interface/range {p1 .. p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->restore()V

    const/4 v1, 0x0

    return v1
.end method

.method private setScrollPosition(I)V
    .locals 2

    .line 274
    iput p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->position:I

    .line 275
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/ListLayout;->getScrollLimit()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/zui/gallery/common/Utils;->clamp(III)I

    move-result p1

    .line 276
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mScroller:Lcom/zui/gallery/ui/ScrollerHelper;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/ScrollerHelper;->setPosition(I)V

    .line 277
    invoke-direct {p0, p1, v1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->updateScrollPosition(IZ)V

    return-void
.end method

.method private updateScrollPosition(IZ)V
    .locals 0

    if-nez p2, :cond_0

    .line 326
    iget p2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mScrollY:I

    if-ne p1, p2, :cond_0

    return-void

    .line 331
    :cond_0
    iput p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mScrollY:I

    .line 333
    iget-object p2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {p2, p1}, Lcom/zui/gallery/ui/localtime/ListLayout;->setScrollPosition(I)V

    .line 334
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->onScrollPositionChanged(I)V

    return-void
.end method


# virtual methods
.method public addComponent(Lcom/zui/gallery/ui/GLView;)V
    .locals 0

    .line 282
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getAlphaAnimation()Lcom/zui/gallery/ui/GLView$BaseAnimation;
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mAlphaAnimation:Lcom/zui/gallery/ui/GLView$BaseAnimation;

    return-object v0
.end method

.method public getCenterIndex()I
    .locals 1

    .line 1156
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    if-eqz v0, :cond_0

    .line 1157
    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/ListLayout;->getCenterSlotIndex()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLableHeight()I
    .locals 1

    .line 1190
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/ListLayout;->getLableHeight()I

    move-result v0

    return v0
.end method

.method public getLableRect(I)Landroid/graphics/Rect;
    .locals 1

    .line 1194
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/localtime/ListLayout;->getLableRect(I)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public getLongTapItemPath()Lcom/zui/gallery/data/Path;
    .locals 1

    .line 1239
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->longTapItemPath:Lcom/zui/gallery/data/Path;

    return-object v0
.end method

.method public getScrollX()I
    .locals 1

    .line 1109
    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mScrollX:I

    return v0
.end method

.method public getScrollY()I
    .locals 1

    .line 1113
    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mScrollY:I

    return v0
.end method

.method public getSlotGap()I
    .locals 1

    .line 1182
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/ListLayout;->getSlotGap()I

    move-result v0

    return v0
.end method

.method public getSlotHeight()I
    .locals 1

    .line 1186
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/ListLayout;->getSlotHeight()I

    move-result v0

    return v0
.end method

.method public getSlotRect(I)Landroid/graphics/Rect;
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/zui/gallery/ui/localtime/ListLayout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public getSlotRect(ILcom/zui/gallery/ui/GLView;)Landroid/graphics/Rect;
    .locals 2

    .line 1118
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1119
    invoke-virtual {p2, p0, v0}, Lcom/zui/gallery/ui/GLView;->getBoundsOf(Lcom/zui/gallery/ui/GLView;Landroid/graphics/Rect;)Z

    .line 1120
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object p1

    .line 1121
    iget p2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->getScrollX()I

    move-result v1

    sub-int/2addr p2, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 1122
    invoke-virtual {p0}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->getScrollY()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1121
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Rect;->offset(II)V

    return-object p1
.end method

.method public getSlotWidth()I
    .locals 1

    .line 1178
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/ListLayout;->getSlotWidth()I

    move-result v0

    return v0
.end method

.method public getTimeLayout()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zui/gallery/ui/localtime/GridLayout;",
            ">;"
        }
    .end annotation

    .line 1198
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/ListLayout;->getTimeLayout()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getViewModel()Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;
    .locals 1

    .line 1127
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/ListLayout;->getViewModel()Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    move-result-object v0

    return-object v0
.end method

.method public getVisibleEnd()I
    .locals 1

    .line 1105
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/ListLayout;->getVisibleEnd()I

    move-result v0

    return v0
.end method

.method public getVisibleLabelEnd()I
    .locals 1

    .line 1206
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/ListLayout;->getVisibleLabelEnd()I

    move-result v0

    return v0
.end method

.method public getVisibleLabelStart()I
    .locals 1

    .line 1202
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/ListLayout;->getVisibleLabelStart()I

    move-result v0

    return v0
.end method

.method public getVisibleStart()I
    .locals 1

    .line 1101
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/ListLayout;->getVisibleStart()I

    move-result v0

    return v0
.end method

.method public isClipLabel(I)Z
    .locals 2

    .line 1163
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1164
    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/ListLayout;->getClipIndex()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isModelDay(Landroid/view/MotionEvent;)V
    .locals 6

    .line 1036
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mMyGestureListener:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->access$900(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;Z)V

    .line 1037
    iget-boolean v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mDownInScrolling:Z

    if-eqz v0, :cond_0

    return-void

    .line 1039
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->lockRendering()V

    .line 1042
    :try_start_0
    invoke-virtual {p0}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->getViewModel()Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    move-result-object v0

    sget-object v2, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->DAY:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    if-ne v0, v2, :cond_3

    .line 1043
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/zui/gallery/ui/localtime/ListLayout;->getSlotIndexByPosition(FF)[I

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1044
    aget v2, v0, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 1047
    :cond_1
    aget v0, v0, v1

    if-eq v0, v3, :cond_3

    .line 1054
    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    iget-object v2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mLongTapAbslateRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Lcom/zui/gallery/ui/localtime/ListLayout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 1055
    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mLongTapAbslateRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 1056
    iget-object v2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mLongTapAbslateRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 1057
    iget-object v3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v3}, Lcom/zui/gallery/ui/localtime/ListLayout;->getScrollPosition()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1058
    iget-object v3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mLongTapAbslateRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mLongTapAbslateRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mLongTapAbslateRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    invoke-virtual {v3, v4, v2, v5, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1059
    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListener:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Listener;

    iget-object v2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mLongTapAbslateRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result p1

    invoke-interface {v1, v0, v2, p1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Listener;->onLongTap(ILandroid/graphics/Rect;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1078
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->unlockRendering()V

    return-void

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->unlockRendering()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->unlockRendering()V

    .line 1079
    throw p1
.end method

.method public isSelectAll()Z
    .locals 1

    .line 1170
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mRenderer:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    if-eqz v0, :cond_0

    .line 1171
    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->isSelectAll()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public makeSlotVisible(I)V
    .locals 5

    .line 255
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/zui/gallery/ui/localtime/ListLayout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 256
    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mScrollY:I

    .line 257
    invoke-virtual {p0}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->getHeight()I

    move-result v1

    add-int v2, v0, v1

    .line 259
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 260
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v4, p1, v3

    if-ge v1, v4, :cond_0

    goto :goto_0

    :cond_0
    if-ge v3, v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    if-le p1, v2, :cond_2

    sub-int v0, p1, v1

    .line 270
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->setScrollPosition(I)V

    return-void
.end method

.method public onCustomScrollBarPostionChange(II)V
    .locals 1

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    .line 1140
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/ListLayout;->getScrollLimit()I

    move-result v0

    mul-int/2addr p1, v0

    .line 1141
    div-int/2addr p1, p2

    if-lt v0, p1, :cond_0

    .line 1143
    iget-object p2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mScroller:Lcom/zui/gallery/ui/ScrollerHelper;

    invoke-virtual {p2, p1}, Lcom/zui/gallery/ui/ScrollerHelper;->setPosition(I)V

    .line 1144
    invoke-virtual {p0}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onDetachFromRoot()V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->unRegisterConnectGenericMotionEventListener()V

    .line 219
    :cond_0
    invoke-super {p0}, Lcom/zui/gallery/ui/GLView;->onDetachFromRoot()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 292
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    .line 293
    invoke-virtual {p1}, Lcom/zui/gallery/ui/localtime/ListLayout;->getVisibleStart()I

    move-result p1

    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/ListLayout;->getVisibleEnd()I

    move-result v0

    add-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    .line 294
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    invoke-virtual {v0, p4, p5}, Lcom/zui/gallery/ui/localtime/ListLayout;->setSize(II)V

    .line 295
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->makeSlotVisible(I)V

    .line 296
    iget p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mOverscrollEffect:I

    if-nez p1, :cond_1

    .line 297
    iget-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mPaper:Lcom/zui/gallery/ui/Paper;

    invoke-virtual {p1, p4, p5}, Lcom/zui/gallery/ui/Paper;->setSize(II)V

    :cond_1
    return-void
.end method

.method public onScrollBarMaxLengthAvailable(I)V
    .locals 0

    .line 1136
    iput p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->customScrollBarMaxLength:I

    return-void
.end method

.method protected onScrollPositionChanged(I)V
    .locals 8

    .line 338
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/ListLayout;->getScrollLimit()I

    move-result v0

    if-lez v0, :cond_2

    .line 340
    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/localtime/ListLayout;->isDayViewModel()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 342
    invoke-virtual {p0}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->getVisibleLabelStart()I

    move-result v1

    .line 343
    invoke-virtual {p0}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->getVisibleLabelEnd()I

    move-result v2

    const-wide/16 v3, -0x1

    if-ltz v1, :cond_1

    .line 346
    invoke-virtual {p0}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->getVisibleStart()I

    move-result v5

    .line 347
    iget-object v6, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mRenderer:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    invoke-virtual {v6, v5}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->getItemPath(I)Lcom/zui/gallery/data/Path;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 349
    invoke-virtual {v5}, Lcom/zui/gallery/data/Path;->getObject()Lcom/zui/gallery/data/MediaObject;

    move-result-object v3

    .line 350
    invoke-virtual {v3}, Lcom/zui/gallery/data/MediaObject;->getDateInMs()J

    move-result-wide v3

    .line 351
    iget v5, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->customScrollBarMaxLength:I

    if-lez v5, :cond_1

    mul-int/2addr v5, p1

    .line 352
    div-int/2addr v5, v0

    add-int v6, p1, v5

    .line 353
    invoke-virtual {p0}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->getLableHeight()I

    move-result v7

    add-int/2addr v6, v7

    if-ltz v5, :cond_1

    .line 354
    iget v7, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->customScrollBarMaxLength:I

    if-gt v5, v7, :cond_1

    .line 355
    iget-object v5, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v5, v1, v6}, Lcom/zui/gallery/ui/localtime/ListLayout;->inCurrentLayout(II)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    if-gt v1, v2, :cond_1

    .line 359
    iget-object v5, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v5, v1, v6}, Lcom/zui/gallery/ui/localtime/ListLayout;->inCurrentLayout(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 360
    iget-object v2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v2, v1}, Lcom/zui/gallery/ui/localtime/ListLayout;->getLabelFirstSlotIndex(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 362
    iget-object v2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mRenderer:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    invoke-virtual {v2, v1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->getItemPath(I)Lcom/zui/gallery/data/Path;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 364
    invoke-virtual {v1}, Lcom/zui/gallery/data/Path;->getObject()Lcom/zui/gallery/data/MediaObject;

    move-result-object v1

    .line 365
    invoke-virtual {v1}, Lcom/zui/gallery/data/MediaObject;->getDateInMs()J

    move-result-wide v3

    .line 376
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1, p1, v0, v3, v4}, Lcom/zui/gallery/app/AbstractGalleryActivity;->onPhotoScroll(IIJ)V

    .line 377
    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListener:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Listener;

    invoke-interface {v1, p1, v0}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Listener;->onScrollPositionChanged(II)V

    :cond_2
    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mUIListener:Lcom/zui/gallery/ui/UserInteractionListener;

    if-eqz v0, :cond_0

    .line 389
    invoke-interface {v0}, Lcom/zui/gallery/ui/UserInteractionListener;->onUserInteraction()V

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mMyGestureListener:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->onContextClick(Landroid/view/MotionEvent;)Z

    .line 393
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mGestureDetector:Lcom/zui/gallery/util/LenovoOneGestureDetector;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/util/LenovoOneGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 394
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 400
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mPaper:Lcom/zui/gallery/ui/Paper;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/Paper;->onRelease()V

    .line 401
    invoke-virtual {p0}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->invalidate()V

    goto :goto_0

    .line 396
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mScroller:Lcom/zui/gallery/ui/ScrollerHelper;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/ScrollerHelper;->isFinished()Z

    move-result p1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mDownInScrolling:Z

    .line 397
    iget-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mScroller:Lcom/zui/gallery/ui/ScrollerHelper;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/ScrollerHelper;->forceFinished()V

    :goto_0
    return v0
.end method

.method protected render(Lcom/zui/gallery/glrenderer/GLCanvas;)V
    .locals 7

    .line 429
    invoke-super {p0, p1}, Lcom/zui/gallery/ui/GLView;->render(Lcom/zui/gallery/glrenderer/GLCanvas;)V

    .line 431
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mRenderer:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    if-nez v0, :cond_0

    return-void

    .line 433
    :cond_0
    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->prepareDrawing()V

    .line 435
    invoke-static {}, Lcom/zui/gallery/ui/AnimationTime;->get()J

    move-result-wide v0

    .line 436
    iget-object v2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mScroller:Lcom/zui/gallery/ui/ScrollerHelper;

    invoke-virtual {v2, v0, v1}, Lcom/zui/gallery/ui/ScrollerHelper;->advanceAnimation(J)Z

    move-result v2

    .line 437
    iget-object v3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v3, v0, v1}, Lcom/zui/gallery/ui/localtime/ListLayout;->advanceAnimation(J)Z

    move-result v3

    or-int/2addr v2, v3

    .line 438
    iget v3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mScrollX:I

    .line 442
    iget-object v4, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mScroller:Lcom/zui/gallery/ui/ScrollerHelper;

    invoke-virtual {v4}, Lcom/zui/gallery/ui/ScrollerHelper;->getPosition()I

    move-result v4

    const/4 v5, 0x0

    if-gez v4, :cond_1

    .line 445
    iget-object v4, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mScroller:Lcom/zui/gallery/ui/ScrollerHelper;

    invoke-virtual {v4}, Lcom/zui/gallery/ui/ScrollerHelper;->forceFinished()V

    move v4, v5

    goto :goto_0

    .line 447
    :cond_1
    iget-object v6, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v6}, Lcom/zui/gallery/ui/localtime/ListLayout;->getScrollLimit()I

    move-result v6

    if-le v4, v6, :cond_2

    .line 448
    iget-object v4, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v4}, Lcom/zui/gallery/ui/localtime/ListLayout;->getScrollLimit()I

    move-result v4

    .line 449
    iget-object v6, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mScroller:Lcom/zui/gallery/ui/ScrollerHelper;

    invoke-virtual {v6}, Lcom/zui/gallery/ui/ScrollerHelper;->forceFinished()V

    .line 451
    :cond_2
    :goto_0
    invoke-direct {p0, v4, v5}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->updateScrollPosition(IZ)V

    .line 455
    iget v4, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mOverscrollEffect:I

    if-nez v4, :cond_7

    .line 457
    iget v4, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mScrollX:I

    .line 458
    iget-object v6, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v6}, Lcom/zui/gallery/ui/localtime/ListLayout;->getScrollLimit()I

    move-result v6

    if-lez v3, :cond_3

    if-eqz v4, :cond_4

    :cond_3
    if-ge v3, v6, :cond_6

    if-ne v4, v6, :cond_6

    .line 460
    :cond_4
    iget-object v3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mScroller:Lcom/zui/gallery/ui/ScrollerHelper;

    invoke-virtual {v3}, Lcom/zui/gallery/ui/ScrollerHelper;->getCurrVelocity()F

    move-result v3

    if-ne v4, v6, :cond_5

    neg-float v3, v3

    .line 465
    :cond_5
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_6

    .line 466
    iget-object v4, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mPaper:Lcom/zui/gallery/ui/Paper;

    invoke-virtual {v4, v3}, Lcom/zui/gallery/ui/Paper;->edgeReached(F)V

    .line 469
    :cond_6
    iget-object v3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mPaper:Lcom/zui/gallery/ui/Paper;

    invoke-virtual {v3}, Lcom/zui/gallery/ui/Paper;->advanceAnimation()Z

    move-result v3

    goto :goto_1

    :cond_7
    move v3, v5

    :goto_1
    or-int/2addr v2, v3

    .line 474
    iget-object v4, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mAnimation:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$SlotAnimation;

    if-eqz v4, :cond_8

    .line 475
    invoke-virtual {v4, v0, v1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$SlotAnimation;->calculate(J)Z

    move-result v0

    or-int/2addr v2, v0

    .line 479
    :cond_8
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mScaleAnimation:Lcom/zui/gallery/ui/GLView$BaseAnimation;

    if-eqz v0, :cond_9

    .line 480
    invoke-virtual {v0}, Lcom/zui/gallery/ui/GLView$BaseAnimation;->isActive()Z

    move-result v0

    or-int/2addr v2, v0

    .line 484
    :cond_9
    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mScrollX:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mScrollY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-interface {p1, v0, v1}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FF)V

    .line 499
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/ListLayout;->getVisibleEnd()I

    move-result v0

    :goto_2
    const/4 v1, 0x1

    if-ltz v0, :cond_b

    iget-object v4, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v4}, Lcom/zui/gallery/ui/localtime/ListLayout;->getVisibleStart()I

    move-result v4

    if-lt v0, v4, :cond_b

    .line 500
    invoke-direct {p0, p1, v0, v5, v3}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->renderItem(Lcom/zui/gallery/glrenderer/GLCanvas;IIZ)I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_a

    move v2, v1

    :cond_a
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 507
    :cond_b
    iget-boolean v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mbAnimating:Z

    if-nez v0, :cond_d

    .line 508
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/ListLayout;->getVisibleLabelStart()I

    move-result v0

    :goto_3
    if-ltz v0, :cond_d

    .line 509
    iget-object v4, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v4}, Lcom/zui/gallery/ui/localtime/ListLayout;->getVisibleLabelEnd()I

    move-result v4

    if-gt v0, v4, :cond_d

    .line 510
    invoke-direct {p0, p1, v0, v3}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->renderLabel(Lcom/zui/gallery/glrenderer/GLCanvas;IZ)I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_c

    move v2, v1

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 518
    :cond_d
    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mScrollX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mScrollY:I

    int-to-float v1, v1

    invoke-interface {p1, v0, v1}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FF)V

    .line 521
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/ListLayout;->getTimeEntry()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/ListLayout;->getSlotCount()I

    move-result v0

    if-nez v0, :cond_e

    .line 522
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->renderEmptyPic(Lcom/zui/gallery/glrenderer/GLCanvas;)V

    :cond_e
    if-eqz v2, :cond_f

    .line 527
    invoke-virtual {p0}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->invalidate()V

    :cond_f
    return-void
.end method

.method public resume()V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mGestureDetector:Lcom/zui/gallery/util/LenovoOneGestureDetector;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->registerConnectGenericMotionEventListener(Lcom/zui/gallery/util/LenovoOneGestureDetector;)V

    return-void
.end method

.method public selectALl(Z)V
    .locals 1

    .line 678
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    if-eqz v0, :cond_0

    .line 679
    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/localtime/ListLayout;->selectAll(Z)V

    :cond_0
    return-void
.end method

.method public setAnimating(Z)V
    .locals 0

    .line 1212
    iput-boolean p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mbAnimating:Z

    return-void
.end method

.method public setCenterIndex(I)V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/ListLayout;->getSlotCount()I

    move-result v0

    if-ltz p1, :cond_1

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/zui/gallery/ui/localtime/ListLayout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 238
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    .line 240
    invoke-virtual {p0}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 242
    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/ListLayout;->getLableHeight()I

    move-result v0

    sub-int/2addr p1, v0

    .line 243
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/ListLayout;->getScrollLimit()I

    move-result v0

    .line 244
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->setScrollPosition(I)V

    if-ge v0, p1, :cond_1

    .line 246
    iget-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/localtime/ListLayout;->getVisibleStart()I

    move-result p1

    .line 247
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/zui/gallery/ui/localtime/ListLayout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 248
    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/ListLayout;->getLableHeight()I

    move-result v0

    sub-int/2addr p1, v0

    .line 249
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->setScrollPosition(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setListener(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Listener;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListener:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Listener;

    return-void
.end method

.method public setLongTapItemPath(Lcom/zui/gallery/data/Path;)V
    .locals 0

    .line 1235
    iput-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->longTapItemPath:Lcom/zui/gallery/data/Path;

    return-void
.end method

.method public setOverscrollEffect(I)V
    .locals 2

    .line 416
    iput p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mOverscrollEffect:I

    .line 417
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mScroller:Lcom/zui/gallery/ui/ScrollerHelper;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/ScrollerHelper;->setOverfling(Z)V

    return-void
.end method

.method public setSelectionIconRect(Landroid/graphics/Rect;)V
    .locals 1

    .line 1150
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    if-eqz v0, :cond_0

    .line 1151
    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/localtime/ListLayout;->setSelectionIconRect(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public setSlotCount(ILjava/util/List;Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;",
            ">;",
            "Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;",
            ")Z"
        }
    .end annotation

    .line 1088
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v0, p1, p2, p3}, Lcom/zui/gallery/ui/localtime/ListLayout;->setSlotCount(ILjava/util/List;Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;)Z

    move-result p1

    .line 1091
    iget p2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mStartIndex:I

    const/4 p3, -0x1

    if-eq p2, p3, :cond_0

    .line 1092
    invoke-virtual {p0, p2}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->setCenterIndex(I)V

    .line 1093
    iput p3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mStartIndex:I

    .line 1096
    :cond_0
    iget p2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mScrollY:I

    invoke-direct {p0, p2}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->setScrollPosition(I)V

    return p1
.end method

.method public setSlotRenderer(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;)V
    .locals 1

    .line 223
    iput-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mRenderer:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    if-eqz p1, :cond_0

    .line 224
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/localtime/ListLayout;->setRender(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;)V

    :cond_0
    return-void
.end method

.method public setSlotSpec(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;)V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/localtime/ListLayout;->setSlotSpec(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;)V

    return-void
.end method

.method public setStartIndex(I)V
    .locals 0

    .line 1083
    iput p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mStartIndex:I

    return-void
.end method

.method public setUserInteractionListener(Lcom/zui/gallery/ui/UserInteractionListener;)V
    .locals 0

    .line 412
    iput-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mUIListener:Lcom/zui/gallery/ui/UserInteractionListener;

    return-void
.end method

.method public startRisingAnimation()V
    .locals 1

    .line 310
    new-instance v0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$RisingAnimation;

    invoke-direct {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$RisingAnimation;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mAnimation:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$SlotAnimation;

    .line 311
    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$SlotAnimation;->start()V

    .line 312
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/ListLayout;->getSlotCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->invalidate()V

    :cond_0
    return-void
.end method

.method public startScatteringAnimation(Lcom/zui/gallery/ui/RelativePosition;)V
    .locals 1

    .line 303
    new-instance v0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$ScatteringAnimation;

    invoke-direct {v0, p1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$ScatteringAnimation;-><init>(Lcom/zui/gallery/ui/RelativePosition;)V

    iput-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mAnimation:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$SlotAnimation;

    .line 304
    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$SlotAnimation;->start()V

    .line 305
    iget-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/localtime/ListLayout;->getSlotCount()I

    move-result p1

    if-eqz p1, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->invalidate()V

    :cond_0
    return-void
.end method

.method public startSelectionAnimation(Lcom/zui/gallery/data/Path;Z)V
    .locals 1

    .line 317
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->startScaleAnimation(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/ui/GLView$BaseAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mScaleAnimation:Lcom/zui/gallery/ui/GLView$BaseAnimation;

    .line 318
    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->startAlpahAnimation(Lcom/zui/gallery/data/Path;Z)Lcom/zui/gallery/ui/GLView$BaseAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mAlphaAnimation:Lcom/zui/gallery/ui/GLView$BaseAnimation;

    return-void
.end method

.method public stopScrolling()V
    .locals 1

    .line 1131
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mScroller:Lcom/zui/gallery/ui/ScrollerHelper;

    if-eqz v0, :cond_0

    .line 1132
    invoke-virtual {v0}, Lcom/zui/gallery/ui/ScrollerHelper;->forceFinished()V

    :cond_0
    return-void
.end method

.method public updateScrollBarPosition(II)V
    .locals 1

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    .line 1217
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mListLayout:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/ListLayout;->getScrollLimit()I

    move-result v0

    mul-int/2addr p1, v0

    .line 1218
    div-int/2addr p1, p2

    if-lt v0, p1, :cond_0

    .line 1228
    iget-object p2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->mScroller:Lcom/zui/gallery/ui/ScrollerHelper;

    invoke-virtual {p2, p1}, Lcom/zui/gallery/ui/ScrollerHelper;->setPosition(I)V

    .line 1229
    invoke-virtual {p0}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->invalidate()V

    :cond_0
    return-void
.end method
