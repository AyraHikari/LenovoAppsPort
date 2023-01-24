.class public Lcom/zui/gallery/ui/SlotView;
.super Lcom/zui/gallery/ui/GLView;
.source "SlotView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/ui/SlotView$IntegerAnimation;,
        Lcom/zui/gallery/ui/SlotView$MyGestureListener;,
        Lcom/zui/gallery/ui/SlotView$Layout;,
        Lcom/zui/gallery/ui/SlotView$Spec;,
        Lcom/zui/gallery/ui/SlotView$ScatteringAnimation;,
        Lcom/zui/gallery/ui/SlotView$RisingAnimation;,
        Lcom/zui/gallery/ui/SlotView$SlotAnimation;,
        Lcom/zui/gallery/ui/SlotView$SlotRenderer;,
        Lcom/zui/gallery/ui/SlotView$SimpleListener;,
        Lcom/zui/gallery/ui/SlotView$Listener;
    }
.end annotation


# static fields
.field private static final INDEX_NONE:I = -0x1

.field public static final OVERSCROLL_3D:I = 0x0

.field public static final OVERSCROLL_NONE:I = 0x2

.field public static final OVERSCROLL_SYSTEM:I = 0x1

.field public static final RENDER_MORE_FRAME:I = 0x2

.field public static final RENDER_MORE_PASS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SlotView"

.field private static final WIDE:Z = false


# instance fields
.field private customScrollBarMaxLength:I

.field private longTapItemPath:Lcom/zui/gallery/data/Path;

.field private mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

.field private mAlphaAnimation:Lcom/zui/gallery/ui/GLView$BaseAnimation;

.field private mAnimation:Lcom/zui/gallery/ui/SlotView$SlotAnimation;

.field private mDownInScrolling:Z

.field private final mGestureDetector:Lcom/zui/gallery/util/LenovoOneGestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private mIsPanoAlbum:Z

.field private final mLayout:Lcom/zui/gallery/ui/SlotView$Layout;

.field private mListener:Lcom/zui/gallery/ui/SlotView$Listener;

.field private final mLongTapAbslateRect:Landroid/graphics/Rect;

.field private mMoreAnimation:Z

.field private mMyGestureListener:Lcom/zui/gallery/ui/SlotView$MyGestureListener;

.field private mOverscrollEffect:I

.field private mPaddingTop:I

.field private final mPaper:Lcom/zui/gallery/ui/Paper;

.field private mRenderer:Lcom/zui/gallery/ui/SlotView$SlotRenderer;

.field private mRequestRenderSlots:[I

.field private mScaleAnimation:Lcom/zui/gallery/ui/GLView$BaseAnimation;

.field private final mScroller:Lcom/zui/gallery/ui/ScrollerHelper;

.field private final mSlotViewBackground:Lcom/zui/gallery/glrenderer/ColorTexture;

.field private final mSlotViewPaddingTop:I

.field private final mSlotViewPaddingTopMark:Lcom/zui/gallery/glrenderer/ColorTexture;

.field private mStartIndex:I

.field private mState:Lcom/zui/gallery/app/ActivityState;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mUIListener:Lcom/zui/gallery/ui/UserInteractionListener;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/ui/SlotView$Spec;)V
    .locals 3

    .line 151
    invoke-direct {p0}, Lcom/zui/gallery/ui/GLView;-><init>()V

    .line 102
    new-instance v0, Lcom/zui/gallery/ui/Paper;

    invoke-direct {v0}, Lcom/zui/gallery/ui/Paper;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/SlotView;->mPaper:Lcom/zui/gallery/ui/Paper;

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lcom/zui/gallery/ui/SlotView;->mMoreAnimation:Z

    const/4 v1, 0x0

    .line 108
    iput-object v1, p0, Lcom/zui/gallery/ui/SlotView;->mAnimation:Lcom/zui/gallery/ui/SlotView$SlotAnimation;

    .line 109
    new-instance v2, Lcom/zui/gallery/ui/SlotView$Layout;

    invoke-direct {v2, p0}, Lcom/zui/gallery/ui/SlotView$Layout;-><init>(Lcom/zui/gallery/ui/SlotView;)V

    iput-object v2, p0, Lcom/zui/gallery/ui/SlotView;->mLayout:Lcom/zui/gallery/ui/SlotView$Layout;

    const/4 v2, -0x1

    .line 110
    iput v2, p0, Lcom/zui/gallery/ui/SlotView;->mStartIndex:I

    .line 114
    iput v0, p0, Lcom/zui/gallery/ui/SlotView;->mOverscrollEffect:I

    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 119
    iput-object v0, p0, Lcom/zui/gallery/ui/SlotView;->mRequestRenderSlots:[I

    .line 127
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/SlotView;->mTempRect:Landroid/graphics/Rect;

    .line 149
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/SlotView;->mLongTapAbslateRect:Landroid/graphics/Rect;

    .line 152
    iput-object p1, p0, Lcom/zui/gallery/ui/SlotView;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 153
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView;->mMyGestureListener:Lcom/zui/gallery/ui/SlotView$MyGestureListener;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;

    invoke-direct {v0, p0, v1}, Lcom/zui/gallery/ui/SlotView$MyGestureListener;-><init>(Lcom/zui/gallery/ui/SlotView;Lcom/zui/gallery/ui/SlotView$1;)V

    iput-object v0, p0, Lcom/zui/gallery/ui/SlotView;->mMyGestureListener:Lcom/zui/gallery/ui/SlotView$MyGestureListener;

    .line 156
    :cond_0
    new-instance v0, Lcom/zui/gallery/util/LenovoOneGestureDetector;

    iget-object v1, p0, Lcom/zui/gallery/ui/SlotView;->mMyGestureListener:Lcom/zui/gallery/ui/SlotView$MyGestureListener;

    invoke-direct {v0, p1, v1}, Lcom/zui/gallery/util/LenovoOneGestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/zui/gallery/ui/SlotView;->mGestureDetector:Lcom/zui/gallery/util/LenovoOneGestureDetector;

    .line 157
    new-instance v0, Lcom/zui/gallery/ui/ScrollerHelper;

    invoke-direct {v0, p1}, Lcom/zui/gallery/ui/ScrollerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/gallery/ui/SlotView;->mScroller:Lcom/zui/gallery/ui/ScrollerHelper;

    .line 158
    new-instance v0, Lcom/zui/gallery/ui/SynchronizedHandler;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zui/gallery/ui/SynchronizedHandler;-><init>(Lcom/zui/gallery/ui/GLRoot;)V

    iput-object v0, p0, Lcom/zui/gallery/ui/SlotView;->mHandler:Landroid/os/Handler;

    .line 159
    invoke-virtual {p0, p2}, Lcom/zui/gallery/ui/SlotView;->setSlotSpec(Lcom/zui/gallery/ui/SlotView$Spec;)V

    .line 162
    iget-object p1, p0, Lcom/zui/gallery/ui/SlotView;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0600bc

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/zui/gallery/ui/SlotView;->mSlotViewPaddingTop:I

    .line 164
    new-instance p1, Lcom/zui/gallery/glrenderer/ColorTexture;

    iget-object p2, p0, Lcom/zui/gallery/ui/SlotView;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0500b3

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-direct {p1, p2}, Lcom/zui/gallery/glrenderer/ColorTexture;-><init>(I)V

    iput-object p1, p0, Lcom/zui/gallery/ui/SlotView;->mSlotViewPaddingTopMark:Lcom/zui/gallery/glrenderer/ColorTexture;

    .line 165
    new-instance p1, Lcom/zui/gallery/glrenderer/ColorTexture;

    iget-object p2, p0, Lcom/zui/gallery/ui/SlotView;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-direct {p1, p2}, Lcom/zui/gallery/glrenderer/ColorTexture;-><init>(I)V

    iput-object p1, p0, Lcom/zui/gallery/ui/SlotView;->mSlotViewBackground:Lcom/zui/gallery/glrenderer/ColorTexture;

    .line 169
    iget-object p1, p0, Lcom/zui/gallery/ui/SlotView;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/app/StateManager;->getTopState()Lcom/zui/gallery/app/ActivityState;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/ui/SlotView;->mState:Lcom/zui/gallery/app/ActivityState;

    return-void
.end method

.method static synthetic access$1000(Lcom/zui/gallery/ui/SlotView;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/zui/gallery/ui/SlotView;->mIsPanoAlbum:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/zui/gallery/ui/SlotView;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/zui/gallery/ui/SlotView;->mPaddingTop:I

    return p0
.end method

.method static synthetic access$1200(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/app/ActivityState;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/zui/gallery/ui/SlotView;->mState:Lcom/zui/gallery/app/ActivityState;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/ui/SlotView$SlotRenderer;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/zui/gallery/ui/SlotView;->mRenderer:Lcom/zui/gallery/ui/SlotView$SlotRenderer;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/ui/SlotView$Layout;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/zui/gallery/ui/SlotView;->mLayout:Lcom/zui/gallery/ui/SlotView$Layout;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/ui/SlotView$Listener;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/zui/gallery/ui/SlotView;->mListener:Lcom/zui/gallery/ui/SlotView$Listener;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/ui/ScrollerHelper;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/zui/gallery/ui/SlotView;->mScroller:Lcom/zui/gallery/ui/ScrollerHelper;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/ui/UserInteractionListener;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/zui/gallery/ui/SlotView;->mUIListener:Lcom/zui/gallery/ui/UserInteractionListener;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/zui/gallery/ui/SlotView;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/zui/gallery/ui/SlotView;->mOverscrollEffect:I

    return p0
.end method

.method static synthetic access$1900(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/ui/Paper;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/zui/gallery/ui/SlotView;->mPaper:Lcom/zui/gallery/ui/Paper;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/zui/gallery/ui/SlotView;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/zui/gallery/ui/SlotView;->mDownInScrolling:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/zui/gallery/ui/SlotView;Landroid/view/MotionEvent;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/SlotView;->isModelDay(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$900(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/zui/gallery/ui/SlotView;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method private static expandIntArray([II)[I
    .locals 1

    .line 354
    :goto_0
    array-length v0, p0

    if-ge v0, p1, :cond_0

    .line 355
    array-length p0, p0

    mul-int/lit8 p0, p0, 0x2

    new-array p0, p0, [I

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private isModelDay(Landroid/view/MotionEvent;)V
    .locals 6

    .line 1101
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView;->mMyGestureListener:Lcom/zui/gallery/ui/SlotView$MyGestureListener;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->access$2200(Lcom/zui/gallery/ui/SlotView$MyGestureListener;Z)V

    .line 1102
    iget-boolean v0, p0, Lcom/zui/gallery/ui/SlotView;->mDownInScrolling:Z

    if-eqz v0, :cond_0

    return-void

    .line 1103
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/ui/SlotView;->lockRendering()V

    .line 1105
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView;->mLayout:Lcom/zui/gallery/ui/SlotView$Layout;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/ui/SlotView$Layout;->getSlotIndexByPosition(FF)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1107
    iget-object v1, p0, Lcom/zui/gallery/ui/SlotView;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isThirdAppCall()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1113
    iget-object v1, p0, Lcom/zui/gallery/ui/SlotView;->mLayout:Lcom/zui/gallery/ui/SlotView$Layout;

    iget-object v2, p0, Lcom/zui/gallery/ui/SlotView;->mLongTapAbslateRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Lcom/zui/gallery/ui/SlotView$Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 1114
    iget-object v1, p0, Lcom/zui/gallery/ui/SlotView;->mLongTapAbslateRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 1115
    iget-object v2, p0, Lcom/zui/gallery/ui/SlotView;->mLongTapAbslateRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 1116
    iget-object v3, p0, Lcom/zui/gallery/ui/SlotView;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/zui/gallery/ui/SlotView;->mScroller:Lcom/zui/gallery/ui/ScrollerHelper;

    invoke-virtual {v3}, Lcom/zui/gallery/ui/ScrollerHelper;->getPosition()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1117
    iget-object v3, p0, Lcom/zui/gallery/ui/SlotView;->mLongTapAbslateRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/zui/gallery/ui/SlotView;->mLongTapAbslateRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/zui/gallery/ui/SlotView;->mLongTapAbslateRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    invoke-virtual {v3, v4, v2, v5, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1118
    iget-object v1, p0, Lcom/zui/gallery/ui/SlotView;->mListener:Lcom/zui/gallery/ui/SlotView$Listener;

    iget-object v2, p0, Lcom/zui/gallery/ui/SlotView;->mLongTapAbslateRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result p1

    invoke-interface {v1, v0, v2, p1}, Lcom/zui/gallery/ui/SlotView$Listener;->onLongTap(ILandroid/graphics/Rect;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1150
    :cond_1
    invoke-virtual {p0}, Lcom/zui/gallery/ui/SlotView;->unlockRendering()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/zui/gallery/ui/SlotView;->unlockRendering()V

    .line 1151
    throw p1
.end method

.method private renderEmptyPic(Lcom/zui/gallery/glrenderer/GLCanvas;)V
    .locals 5

    const/4 v0, 0x3

    .line 466
    invoke-interface {p1, v0}, Lcom/zui/gallery/glrenderer/GLCanvas;->save(I)V

    .line 467
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView;->mRenderer:Lcom/zui/gallery/ui/SlotView$SlotRenderer;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/zui/gallery/ui/SlotView;->mLayout:Lcom/zui/gallery/ui/SlotView$Layout;

    invoke-static {v2}, Lcom/zui/gallery/ui/SlotView$Layout;->access$600(Lcom/zui/gallery/ui/SlotView$Layout;)I

    move-result v2

    iget-object v3, p0, Lcom/zui/gallery/ui/SlotView;->mLayout:Lcom/zui/gallery/ui/SlotView$Layout;

    invoke-static {v3}, Lcom/zui/gallery/ui/SlotView$Layout;->access$700(Lcom/zui/gallery/ui/SlotView$Layout;)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v0, p1, v1}, Lcom/zui/gallery/ui/SlotView$SlotRenderer;->renderEmptyPic(Lcom/zui/gallery/glrenderer/GLCanvas;Landroid/graphics/Rect;)V

    .line 468
    invoke-interface {p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->restore()V

    return-void
.end method

.method private renderItem(Lcom/zui/gallery/glrenderer/GLCanvas;IIZ)I
    .locals 7

    const/4 v0, 0x3

    .line 474
    invoke-interface {p1, v0}, Lcom/zui/gallery/glrenderer/GLCanvas;->save(I)V

    .line 475
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView;->mLayout:Lcom/zui/gallery/ui/SlotView$Layout;

    iget-object v1, p0, Lcom/zui/gallery/ui/SlotView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, v1}, Lcom/zui/gallery/ui/SlotView$Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz p4, :cond_0

    .line 479
    iget-object p4, p0, Lcom/zui/gallery/ui/SlotView;->mPaper:Lcom/zui/gallery/ui/Paper;

    div-int/lit8 v1, p2, 0x4

    iget-object v2, p0, Lcom/zui/gallery/ui/SlotView;->mLayout:Lcom/zui/gallery/ui/SlotView$Layout;

    invoke-static {v2}, Lcom/zui/gallery/ui/SlotView$Layout;->access$300(Lcom/zui/gallery/ui/SlotView$Layout;)I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {p4, v0, v1, v2, v3}, Lcom/zui/gallery/ui/Paper;->getTransformNew(Landroid/graphics/Rect;III)[F

    move-result-object p4

    const/4 v1, 0x0

    invoke-interface {p1, p4, v1}, Lcom/zui/gallery/glrenderer/GLCanvas;->multiplyMatrix([FI)V

    goto :goto_0

    .line 482
    :cond_0
    iget p4, v0, Landroid/graphics/Rect;->left:I

    int-to-float p4, p4

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-interface {p1, p4, v1, v2}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FFF)V

    .line 484
    :goto_0
    iget-object p4, p0, Lcom/zui/gallery/ui/SlotView;->mAnimation:Lcom/zui/gallery/ui/SlotView$SlotAnimation;

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lcom/zui/gallery/ui/SlotView$SlotAnimation;->isActive()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 485
    iget-object p4, p0, Lcom/zui/gallery/ui/SlotView;->mAnimation:Lcom/zui/gallery/ui/SlotView$SlotAnimation;

    invoke-virtual {p4, p1, p2, v0}, Lcom/zui/gallery/ui/SlotView$SlotAnimation;->apply(Lcom/zui/gallery/glrenderer/GLCanvas;ILandroid/graphics/Rect;)V

    .line 489
    :cond_1
    iget-object p4, p0, Lcom/zui/gallery/ui/SlotView;->mRenderer:Lcom/zui/gallery/ui/SlotView$SlotRenderer;

    invoke-interface {p4}, Lcom/zui/gallery/ui/SlotView$SlotRenderer;->inSelectModel()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 490
    iget-object p4, p0, Lcom/zui/gallery/ui/SlotView;->mScaleAnimation:Lcom/zui/gallery/ui/GLView$BaseAnimation;

    if-eqz p4, :cond_2

    iget-object p4, p0, Lcom/zui/gallery/ui/SlotView;->mRenderer:Lcom/zui/gallery/ui/SlotView$SlotRenderer;

    invoke-interface {p4, p2}, Lcom/zui/gallery/ui/SlotView$SlotRenderer;->getItemPath(I)Lcom/zui/gallery/data/Path;

    move-result-object p4

    if-eqz p4, :cond_2

    iget-object p4, p0, Lcom/zui/gallery/ui/SlotView;->mRenderer:Lcom/zui/gallery/ui/SlotView$SlotRenderer;

    invoke-interface {p4, p2}, Lcom/zui/gallery/ui/SlotView$SlotRenderer;->getItemPath(I)Lcom/zui/gallery/data/Path;

    move-result-object p4

    iget-object v1, p0, Lcom/zui/gallery/ui/SlotView;->mScaleAnimation:Lcom/zui/gallery/ui/GLView$BaseAnimation;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/GLView$BaseAnimation;->getSelectPath()Lcom/zui/gallery/data/Path;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    iget-object p4, p0, Lcom/zui/gallery/ui/SlotView;->mScaleAnimation:Lcom/zui/gallery/ui/GLView$BaseAnimation;

    invoke-virtual {p4}, Lcom/zui/gallery/ui/GLView$BaseAnimation;->isActive()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 491
    iget-object p4, p0, Lcom/zui/gallery/ui/SlotView;->mScaleAnimation:Lcom/zui/gallery/ui/GLView$BaseAnimation;

    invoke-virtual {p4, p1, p2, v0}, Lcom/zui/gallery/ui/GLView$BaseAnimation;->apply(Lcom/zui/gallery/glrenderer/GLCanvas;ILandroid/graphics/Rect;)V

    .line 496
    :cond_2
    iget-object v1, p0, Lcom/zui/gallery/ui/SlotView;->mRenderer:Lcom/zui/gallery/ui/SlotView$SlotRenderer;

    iget p4, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int v5, p4, v2

    iget p4, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v6, p4, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v1 .. v6}, Lcom/zui/gallery/ui/SlotView$SlotRenderer;->renderSlot(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)I

    move-result p2

    .line 498
    invoke-interface {p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->restore()V

    return p2
.end method

.method private updateScrollPosition(IZ)V
    .locals 0

    if-nez p2, :cond_0

    .line 273
    iget p2, p0, Lcom/zui/gallery/ui/SlotView;->mScrollY:I

    if-ne p1, p2, :cond_0

    return-void

    .line 277
    :cond_0
    iput p1, p0, Lcom/zui/gallery/ui/SlotView;->mScrollY:I

    .line 279
    iget-object p2, p0, Lcom/zui/gallery/ui/SlotView;->mLayout:Lcom/zui/gallery/ui/SlotView$Layout;

    invoke-virtual {p2, p1}, Lcom/zui/gallery/ui/SlotView$Layout;->setScrollPosition(I)V

    .line 280
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/SlotView;->onScrollPositionChanged(I)V

    return-void
.end method


# virtual methods
.method public addComponent(Lcom/zui/gallery/ui/GLView;)V
    .locals 0

    .line 239
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getAlphaAnimation()Lcom/zui/gallery/ui/GLView$BaseAnimation;
    .locals 1

    .line 1243
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView;->mAlphaAnimation:Lcom/zui/gallery/ui/GLView$BaseAnimation;

    return-object v0
.end method

.method public getLongTapItemPath()Lcom/zui/gallery/data/Path;
    .locals 1

    .line 1271
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView;->longTapItemPath:Lcom/zui/gallery/data/Path;

    return-object v0
.end method

.method public getScrollX()I
    .locals 1

    .line 1181
    iget v0, p0, Lcom/zui/gallery/ui/SlotView;->mScrollX:I

    return v0
.end method

.method public getScrollY()I
    .locals 1

    .line 1185
    iget v0, p0, Lcom/zui/gallery/ui/SlotView;->mScrollY:I

    return v0
.end method

.method public getSlotCount()I
    .locals 1

    .line 1250
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView;->mLayout:Lcom/zui/gallery/ui/SlotView$Layout;

    invoke-static {v0}, Lcom/zui/gallery/ui/SlotView$Layout;->access$300(Lcom/zui/gallery/ui/SlotView$Layout;)I

    move-result v0

    return v0
.end method

.method public getSlotGap()I
    .locals 1

    .line 1258
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView;->mLayout:Lcom/zui/gallery/ui/SlotView$Layout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SlotView$Layout;->getSlotGap()I

    move-result v0

    return v0
.end method

.method public getSlotHeight()I
    .locals 1

    .line 1262
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView;->mLayout:Lcom/zui/gallery/ui/SlotView$Layout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SlotView$Layout;->getSlotHeight()I

    move-result v0

    return v0
.end method

.method public getSlotRect(I)Landroid/graphics/Rect;
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView;->mLayout:Lcom/zui/gallery/ui/SlotView$Layout;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/zui/gallery/ui/SlotView$Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public getSlotRect(ILcom/zui/gallery/ui/GLView;)Landroid/graphics/Rect;
    .locals 2

    .line 1190
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1191
    invoke-virtual {p2, p0, v0}, Lcom/zui/gallery/ui/GLView;->getBoundsOf(Lcom/zui/gallery/ui/GLView;Landroid/graphics/Rect;)Z

    .line 1192
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/SlotView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object p1

    .line 1193
    iget p2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/zui/gallery/ui/SlotView;->getScrollX()I

    move-result v1

    sub-int/2addr p2, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 1194
    invoke-virtual {p0}, Lcom/zui/gallery/ui/SlotView;->getScrollY()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1193
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Rect;->offset(II)V

    return-object p1
.end method

.method public getSlotWidth()I
    .locals 1

    .line 1254
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView;->mLayout:Lcom/zui/gallery/ui/SlotView$Layout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SlotView$Layout;->getSlotWidth()I

    move-result v0

    return v0
.end method

.method public getVisibleEnd()I
    .locals 1

    .line 1177
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView;->mLayout:Lcom/zui/gallery/ui/SlotView$Layout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SlotView$Layout;->getVisibleEnd()I

    move-result v0

    return v0
.end method

.method public getVisibleStart()I
    .locals 1

    .line 1173
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView;->mLayout:Lcom/zui/gallery/ui/SlotView$Layout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SlotView$Layout;->getVisibleStart()I

    move-result v0

    return v0
.end method

.method public isPanoAlbum()Z
    .locals 1

    .line 228
    iget-boolean v0, p0, Lcom/zui/gallery/ui/SlotView;->mIsPanoAlbum:Z

    return v0
.end method

.method public makeSlotVisible(I)V
    .locals 5

    .line 194
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView;->mLayout:Lcom/zui/gallery/ui/SlotView$Layout;

    iget-object v1, p0, Lcom/zui/gallery/ui/SlotView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/zui/gallery/ui/SlotView$Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 195
    iget v0, p0, Lcom/zui/gallery/ui/SlotView;->mScrollY:I

    .line 196
    invoke-virtual {p0}, Lcom/zui/gallery/ui/SlotView;->getHeight()I

    move-result v1

    add-int v2, v0, v1

    .line 198
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 199
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

    .line 210
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/zui/gallery/ui/SlotView;->setScrollPosition(I)V

    return-void
.end method

.method public onCustomScrollBarPostionChange(II)V
    .locals 1

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    .line 308
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView;->mLayout:Lcom/zui/gallery/ui/SlotView$Layout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SlotView$Layout;->getScrollLimit()I

    move-result v0

    mul-int/2addr p1, v0

    .line 309
    div-int/2addr p1, p2

    if-lt v0, p1, :cond_0

    .line 311
    iget-object p2, p0, Lcom/zui/gallery/ui/SlotView;->mScroller:Lcom/zui/gallery/ui/ScrollerHelper;

    invoke-virtual {p2, p1}, Lcom/zui/gallery/ui/ScrollerHelper;->setPosition(I)V

    .line 312
    invoke-virtual {p0}, Lcom/zui/gallery/ui/SlotView;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onDetachFromRoot()V
    .locals 1

    .line 912
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    if-eqz v0, :cond_0

    .line 913
    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->unRegisterConnectGenericMotionEventListener()V

    .line 915
    :cond_0
    invoke-super {p0}, Lcom/zui/gallery/ui/GLView;->onDetachFromRoot()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 249
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/ui/SlotView;->mLayout:Lcom/zui/gallery/ui/SlotView$Layout;

    .line 250
    invoke-virtual {p1}, Lcom/zui/gallery/ui/SlotView$Layout;->getVisibleStart()I

    move-result p1

    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView;->mLayout:Lcom/zui/gallery/ui/SlotView$Layout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SlotView$Layout;->getVisibleEnd()I

    move-result v0

    add-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    .line 251
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView;->mLayout:Lcom/zui/gallery/ui/SlotView$Layout;

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    invoke-virtual {v0, p4, p5}, Lcom/zui/gallery/ui/SlotView$Layout;->setSize(II)V

    .line 252
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/SlotView;->makeSlotVisible(I)V

    .line 253
    iget p1, p0, Lcom/zui/gallery/ui/SlotView;->mOverscrollEffect:I

    if-nez p1, :cond_1

    .line 254
    iget-object p1, p0, Lcom/zui/gallery/ui/SlotView;->mPaper:Lcom/zui/gallery/ui/Paper;

    invoke-virtual {p1, p4, p5}, Lcom/zui/gallery/ui/Paper;->setSize(II)V

    .line 257
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/ui/SlotView;->mSlotViewBackground:Lcom/zui/gallery/glrenderer/ColorTexture;

    invoke-virtual {p1, p4, p5}, Lcom/zui/gallery/glrenderer/ColorTexture;->setSize(II)V

    return-void
.end method

.method public onScrollBarMaxLengthAvailable(I)V
    .locals 0

    .line 304
    iput p1, p0, Lcom/zui/gallery/ui/SlotView;->customScrollBarMaxLength:I

    return-void
.end method

.method protected onScrollPositionChanged(I)V
    .locals 5

    .line 284
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView;->mLayout:Lcom/zui/gallery/ui/SlotView$Layout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SlotView$Layout;->getScrollLimit()I

    move-result v0

    if-lez v0, :cond_1

    .line 287
    iget v1, p0, Lcom/zui/gallery/ui/SlotView;->customScrollBarMaxLength:I

    mul-int/2addr v1, p1

    div-int/2addr v1, v0

    .line 288
    iget-object v2, p0, Lcom/zui/gallery/ui/SlotView;->mLayout:Lcom/zui/gallery/ui/SlotView$Layout;

    const/high16 v3, 0x41200000    # 10.0f

    int-to-float v1, v1

    invoke-virtual {v2, v3, v1}, Lcom/zui/gallery/ui/SlotView$Layout;->getSlotIndexByPosition(FF)I

    move-result v1

    const-wide/16 v2, -0x1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 292
    iget-object v4, p0, Lcom/zui/gallery/ui/SlotView;->mRenderer:Lcom/zui/gallery/ui/SlotView$SlotRenderer;

    invoke-interface {v4, v1}, Lcom/zui/gallery/ui/SlotView$SlotRenderer;->getItemPath(I)Lcom/zui/gallery/data/Path;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 294
    invoke-virtual {v1}, Lcom/zui/gallery/data/Path;->getObject()Lcom/zui/gallery/data/MediaObject;

    move-result-object v1

    .line 295
    invoke-virtual {v1}, Lcom/zui/gallery/data/MediaObject;->getDateInMs()J

    move-result-wide v2

    .line 298
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/ui/SlotView;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->onPhotoScroll(IIJ)V

    .line 301
    :cond_1
    iget-object v1, p0, Lcom/zui/gallery/ui/SlotView;->mListener:Lcom/zui/gallery/ui/SlotView$Listener;

    invoke-interface {v1, p1, v0}, Lcom/zui/gallery/ui/SlotView$Listener;->onScrollPositionChanged(II)V

    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView;->mUIListener:Lcom/zui/gallery/ui/UserInteractionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/zui/gallery/ui/UserInteractionListener;->onUserInteraction()V

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView;->mMyGestureListener:Lcom/zui/gallery/ui/SlotView$MyGestureListener;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->onContextClick(Landroid/view/MotionEvent;)Z

    .line 326
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView;->mGestureDetector:Lcom/zui/gallery/util/LenovoOneGestureDetector;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/util/LenovoOneGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 327
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 333
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/ui/SlotView;->mPaper:Lcom/zui/gallery/ui/Paper;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/Paper;->onRelease()V

    .line 334
    invoke-virtual {p0}, Lcom/zui/gallery/ui/SlotView;->invalidate()V

    goto :goto_0

    .line 329
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/ui/SlotView;->mScroller:Lcom/zui/gallery/ui/ScrollerHelper;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/ScrollerHelper;->isFinished()Z

    move-result p1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/zui/gallery/ui/SlotView;->mDownInScrolling:Z

    .line 330
    iget-object p1, p0, Lcom/zui/gallery/ui/SlotView;->mScroller:Lcom/zui/gallery/ui/ScrollerHelper;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/ScrollerHelper;->forceFinished()V

    :goto_0
    return v0
.end method

.method protected render(Lcom/zui/gallery/glrenderer/GLCanvas;)V
    .locals 7

    .line 362
    invoke-super {p0, p1}, Lcom/zui/gallery/ui/GLView;->render(Lcom/zui/gallery/glrenderer/GLCanvas;)V

    .line 364
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView;->mRenderer:Lcom/zui/gallery/ui/SlotView$SlotRenderer;

    if-nez v0, :cond_0

    return-void

    .line 365
    :cond_0
    invoke-interface {v0}, Lcom/zui/gallery/ui/SlotView$SlotRenderer;->prepareDrawing()V

    .line 367
    invoke-static {}, Lcom/zui/gallery/ui/AnimationTime;->get()J

    move-result-wide v0

    .line 368
    iget-object v2, p0, Lcom/zui/gallery/ui/SlotView;->mScroller:Lcom/zui/gallery/ui/ScrollerHelper;

    invoke-virtual {v2, v0, v1}, Lcom/zui/gallery/ui/ScrollerHelper;->advanceAnimation(J)Z

    move-result v2

    .line 369
    iget-object v3, p0, Lcom/zui/gallery/ui/SlotView;->mLayout:Lcom/zui/gallery/ui/SlotView$Layout;

    invoke-virtual {v3, v0, v1}, Lcom/zui/gallery/ui/SlotView$Layout;->advanceAnimation(J)Z

    move-result v3

    or-int/2addr v2, v3

    .line 370
    iget v3, p0, Lcom/zui/gallery/ui/SlotView;->mScrollX:I

    .line 373
    iget-object v4, p0, Lcom/zui/gallery/ui/SlotView;->mScroller:Lcom/zui/gallery/ui/ScrollerHelper;

    invoke-virtual {v4}, Lcom/zui/gallery/ui/ScrollerHelper;->getPosition()I

    move-result v4

    const/4 v5, 0x0

    if-gez v4, :cond_1

    .line 376
    iget-object v4, p0, Lcom/zui/gallery/ui/SlotView;->mScroller:Lcom/zui/gallery/ui/ScrollerHelper;

    invoke-virtual {v4}, Lcom/zui/gallery/ui/ScrollerHelper;->forceFinished()V

    move v4, v5

    goto :goto_0

    .line 378
    :cond_1
    iget-object v6, p0, Lcom/zui/gallery/ui/SlotView;->mLayout:Lcom/zui/gallery/ui/SlotView$Layout;

    invoke-virtual {v6}, Lcom/zui/gallery/ui/SlotView$Layout;->getScrollLimit()I

    move-result v6

    if-le v4, v6, :cond_2

    .line 379
    iget-object v4, p0, Lcom/zui/gallery/ui/SlotView;->mLayout:Lcom/zui/gallery/ui/SlotView$Layout;

    invoke-virtual {v4}, Lcom/zui/gallery/ui/SlotView$Layout;->getScrollLimit()I

    move-result v4

    .line 380
    iget-object v6, p0, Lcom/zui/gallery/ui/SlotView;->mScroller:Lcom/zui/gallery/ui/ScrollerHelper;

    invoke-virtual {v6}, Lcom/zui/gallery/ui/ScrollerHelper;->forceFinished()V

    .line 382
    :cond_2
    :goto_0
    invoke-direct {p0, v4, v5}, Lcom/zui/gallery/ui/SlotView;->updateScrollPosition(IZ)V

    .line 386
    iget v4, p0, Lcom/zui/gallery/ui/SlotView;->mOverscrollEffect:I

    if-nez v4, :cond_7

    .line 388
    iget v4, p0, Lcom/zui/gallery/ui/SlotView;->mScrollX:I

    .line 389
    iget-object v6, p0, Lcom/zui/gallery/ui/SlotView;->mLayout:Lcom/zui/gallery/ui/SlotView$Layout;

    invoke-virtual {v6}, Lcom/zui/gallery/ui/SlotView$Layout;->getScrollLimit()I

    move-result v6

    if-lez v3, :cond_3

    if-eqz v4, :cond_4

    :cond_3
    if-ge v3, v6, :cond_6

    if-ne v4, v6, :cond_6

    .line 391
    :cond_4
    iget-object v3, p0, Lcom/zui/gallery/ui/SlotView;->mScroller:Lcom/zui/gallery/ui/ScrollerHelper;

    invoke-virtual {v3}, Lcom/zui/gallery/ui/ScrollerHelper;->getCurrVelocity()F

    move-result v3

    if-ne v4, v6, :cond_5

    neg-float v3, v3

    .line 395
    :cond_5
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_6

    .line 396
    iget-object v4, p0, Lcom/zui/gallery/ui/SlotView;->mPaper:Lcom/zui/gallery/ui/Paper;

    invoke-virtual {v4, v3}, Lcom/zui/gallery/ui/Paper;->edgeReached(F)V

    .line 399
    :cond_6
    iget-object v3, p0, Lcom/zui/gallery/ui/SlotView;->mPaper:Lcom/zui/gallery/ui/Paper;

    invoke-virtual {v3}, Lcom/zui/gallery/ui/Paper;->advanceAnimation()Z

    move-result v3

    goto :goto_1

    :cond_7
    move v3, v5

    :goto_1
    or-int/2addr v2, v3

    .line 404
    iget-object v4, p0, Lcom/zui/gallery/ui/SlotView;->mAnimation:Lcom/zui/gallery/ui/SlotView$SlotAnimation;

    if-eqz v4, :cond_8

    .line 405
    invoke-virtual {v4, v0, v1}, Lcom/zui/gallery/ui/SlotView$SlotAnimation;->calculate(J)Z

    move-result v0

    or-int/2addr v2, v0

    .line 409
    :cond_8
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView;->mScaleAnimation:Lcom/zui/gallery/ui/GLView$BaseAnimation;

    if-eqz v0, :cond_9

    .line 410
    invoke-virtual {v0}, Lcom/zui/gallery/ui/GLView$BaseAnimation;->isActive()Z

    move-result v0

    or-int/2addr v2, v0

    .line 414
    :cond_9
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView;->mSlotViewBackground:Lcom/zui/gallery/glrenderer/ColorTexture;

    invoke-virtual {v0, p1, v5, v5}, Lcom/zui/gallery/glrenderer/ColorTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 416
    iget v0, p0, Lcom/zui/gallery/ui/SlotView;->mScrollX:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/zui/gallery/ui/SlotView;->mScrollY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-interface {p1, v0, v1}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FF)V

    .line 419
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView;->mRequestRenderSlots:[I

    iget-object v1, p0, Lcom/zui/gallery/ui/SlotView;->mLayout:Lcom/zui/gallery/ui/SlotView$Layout;

    .line 420
    invoke-static {v1}, Lcom/zui/gallery/ui/SlotView$Layout;->access$400(Lcom/zui/gallery/ui/SlotView$Layout;)I

    move-result v1

    iget-object v4, p0, Lcom/zui/gallery/ui/SlotView;->mLayout:Lcom/zui/gallery/ui/SlotView$Layout;

    invoke-static {v4}, Lcom/zui/gallery/ui/SlotView$Layout;->access$500(Lcom/zui/gallery/ui/SlotView$Layout;)I

    move-result v4

    sub-int/2addr v1, v4

    .line 419
    invoke-static {v0, v1}, Lcom/zui/gallery/ui/SlotView;->expandIntArray([II)[I

    .line 422
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView;->mLayout:Lcom/zui/gallery/ui/SlotView$Layout;

    invoke-static {v0}, Lcom/zui/gallery/ui/SlotView$Layout;->access$400(Lcom/zui/gallery/ui/SlotView$Layout;)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_2
    if-ltz v0, :cond_b

    iget-object v4, p0, Lcom/zui/gallery/ui/SlotView;->mLayout:Lcom/zui/gallery/ui/SlotView$Layout;

    invoke-static {v4}, Lcom/zui/gallery/ui/SlotView$Layout;->access$500(Lcom/zui/gallery/ui/SlotView$Layout;)I

    move-result v4

    if-lt v0, v4, :cond_b

    .line 423
    invoke-direct {p0, p1, v0, v5, v3}, Lcom/zui/gallery/ui/SlotView;->renderItem(Lcom/zui/gallery/glrenderer/GLCanvas;IIZ)I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_a

    move v2, v1

    :cond_a
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 439
    :cond_b
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView;->mState:Lcom/zui/gallery/app/ActivityState;

    instance-of v1, v0, Lcom/zui/gallery/app/AlbumPage;

    if-eqz v1, :cond_c

    .line 440
    check-cast v0, Lcom/zui/gallery/app/AlbumPage;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AlbumPage;->needShowEmptyImage()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 441
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/SlotView;->renderEmptyPic(Lcom/zui/gallery/glrenderer/GLCanvas;)V

    .line 444
    :cond_c
    iget v0, p0, Lcom/zui/gallery/ui/SlotView;->mScrollX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/zui/gallery/ui/SlotView;->mScrollY:I

    int-to-float v1, v1

    invoke-interface {p1, v0, v1}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FF)V

    .line 447
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView;->mSlotViewPaddingTopMark:Lcom/zui/gallery/glrenderer/ColorTexture;

    iget v1, p0, Lcom/zui/gallery/ui/SlotView;->mSlotViewPaddingTop:I

    neg-int v1, v1

    invoke-virtual {v0, p1, v5, v1}, Lcom/zui/gallery/glrenderer/ColorTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    if-eqz v2, :cond_d

    .line 450
    invoke-virtual {p0}, Lcom/zui/gallery/ui/SlotView;->invalidate()V

    .line 461
    :cond_d
    iput-boolean v2, p0, Lcom/zui/gallery/ui/SlotView;->mMoreAnimation:Z

    return-void
.end method

.method public resume()V
    .locals 2

    .line 905
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/zui/gallery/ui/SlotView;->mGestureDetector:Lcom/zui/gallery/util/LenovoOneGestureDetector;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->registerConnectGenericMotionEventListener(Lcom/zui/gallery/util/LenovoOneGestureDetector;)V

    return-void
.end method

.method public setCenterIndex(I)V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView;->mLayout:Lcom/zui/gallery/ui/SlotView$Layout;

    invoke-static {v0}, Lcom/zui/gallery/ui/SlotView$Layout;->access$300(Lcom/zui/gallery/ui/SlotView$Layout;)I

    move-result v0

    if-ltz p1, :cond_1

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView;->mLayout:Lcom/zui/gallery/ui/SlotView$Layout;

    iget-object v1, p0, Lcom/zui/gallery/ui/SlotView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/zui/gallery/ui/SlotView$Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 187
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p1

    .line 189
    invoke-virtual {p0}, Lcom/zui/gallery/ui/SlotView;->getHeight()I

    move-result p1

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    .line 190
    invoke-virtual {p0, v0}, Lcom/zui/gallery/ui/SlotView;->setScrollPosition(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setIsPanoAlbum(Z)V
    .locals 0

    .line 224
    iput-boolean p1, p0, Lcom/zui/gallery/ui/SlotView;->mIsPanoAlbum:Z

    return-void
.end method

.method public setListener(Lcom/zui/gallery/ui/SlotView$Listener;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/zui/gallery/ui/SlotView;->mListener:Lcom/zui/gallery/ui/SlotView$Listener;

    return-void
.end method

.method public setLongTapItemPath(Lcom/zui/gallery/data/Path;)V
    .locals 0

    .line 1267
    iput-object p1, p0, Lcom/zui/gallery/ui/SlotView;->longTapItemPath:Lcom/zui/gallery/data/Path;

    return-void
.end method

.method public setOverscrollEffect(I)V
    .locals 2

    .line 349
    iput p1, p0, Lcom/zui/gallery/ui/SlotView;->mOverscrollEffect:I

    .line 350
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView;->mScroller:Lcom/zui/gallery/ui/ScrollerHelper;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/ScrollerHelper;->setOverfling(Z)V

    return-void
.end method

.method public setScrollPosition(I)V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView;->mLayout:Lcom/zui/gallery/ui/SlotView$Layout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SlotView$Layout;->getScrollLimit()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/zui/gallery/common/Utils;->clamp(III)I

    move-result p1

    .line 215
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView;->mScroller:Lcom/zui/gallery/ui/ScrollerHelper;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/ScrollerHelper;->setPosition(I)V

    .line 216
    invoke-direct {p0, p1, v1}, Lcom/zui/gallery/ui/SlotView;->updateScrollPosition(IZ)V

    return-void
.end method

.method public setSlotCount(I)Z
    .locals 2

    .line 1159
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView;->mLayout:Lcom/zui/gallery/ui/SlotView$Layout;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/SlotView$Layout;->setSlotCount(I)Z

    move-result p1

    .line 1162
    iget v0, p0, Lcom/zui/gallery/ui/SlotView;->mStartIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1163
    invoke-virtual {p0, v0}, Lcom/zui/gallery/ui/SlotView;->setCenterIndex(I)V

    .line 1164
    iput v1, p0, Lcom/zui/gallery/ui/SlotView;->mStartIndex:I

    .line 1167
    :cond_0
    iget v0, p0, Lcom/zui/gallery/ui/SlotView;->mScrollY:I

    invoke-virtual {p0, v0}, Lcom/zui/gallery/ui/SlotView;->setScrollPosition(I)V

    return p1
.end method

.method public setSlotRenderer(Lcom/zui/gallery/ui/SlotView$SlotRenderer;)V
    .locals 2

    .line 174
    iput-object p1, p0, Lcom/zui/gallery/ui/SlotView;->mRenderer:Lcom/zui/gallery/ui/SlotView$SlotRenderer;

    if-eqz p1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView;->mLayout:Lcom/zui/gallery/ui/SlotView$Layout;

    invoke-static {v0}, Lcom/zui/gallery/ui/SlotView$Layout;->access$100(Lcom/zui/gallery/ui/SlotView$Layout;)I

    move-result v0

    iget-object v1, p0, Lcom/zui/gallery/ui/SlotView;->mLayout:Lcom/zui/gallery/ui/SlotView$Layout;

    invoke-static {v1}, Lcom/zui/gallery/ui/SlotView$Layout;->access$200(Lcom/zui/gallery/ui/SlotView$Layout;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/zui/gallery/ui/SlotView$SlotRenderer;->onSlotSizeChanged(II)V

    .line 177
    iget-object p1, p0, Lcom/zui/gallery/ui/SlotView;->mRenderer:Lcom/zui/gallery/ui/SlotView$SlotRenderer;

    invoke-virtual {p0}, Lcom/zui/gallery/ui/SlotView;->getVisibleStart()I

    move-result v0

    invoke-virtual {p0}, Lcom/zui/gallery/ui/SlotView;->getVisibleEnd()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/zui/gallery/ui/SlotView$SlotRenderer;->onVisibleRangeChanged(II)V

    :cond_0
    return-void
.end method

.method public setSlotSpec(Lcom/zui/gallery/ui/SlotView$Spec;)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView;->mLayout:Lcom/zui/gallery/ui/SlotView$Layout;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/SlotView$Layout;->setSlotSpec(Lcom/zui/gallery/ui/SlotView$Spec;)V

    return-void
.end method

.method public setStartIndex(I)V
    .locals 0

    .line 1154
    iput p1, p0, Lcom/zui/gallery/ui/SlotView;->mStartIndex:I

    return-void
.end method

.method public setUserInteractionListener(Lcom/zui/gallery/ui/UserInteractionListener;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/zui/gallery/ui/SlotView;->mUIListener:Lcom/zui/gallery/ui/UserInteractionListener;

    return-void
.end method

.method public startRisingAnimation()V
    .locals 1

    .line 267
    new-instance v0, Lcom/zui/gallery/ui/SlotView$RisingAnimation;

    invoke-direct {v0}, Lcom/zui/gallery/ui/SlotView$RisingAnimation;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/SlotView;->mAnimation:Lcom/zui/gallery/ui/SlotView$SlotAnimation;

    .line 268
    invoke-virtual {v0}, Lcom/zui/gallery/ui/SlotView$SlotAnimation;->start()V

    .line 269
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView;->mLayout:Lcom/zui/gallery/ui/SlotView$Layout;

    invoke-static {v0}, Lcom/zui/gallery/ui/SlotView$Layout;->access$300(Lcom/zui/gallery/ui/SlotView$Layout;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/gallery/ui/SlotView;->invalidate()V

    :cond_0
    return-void
.end method

.method public startScatteringAnimation(Lcom/zui/gallery/ui/RelativePosition;)V
    .locals 1

    .line 261
    new-instance v0, Lcom/zui/gallery/ui/SlotView$ScatteringAnimation;

    invoke-direct {v0, p1}, Lcom/zui/gallery/ui/SlotView$ScatteringAnimation;-><init>(Lcom/zui/gallery/ui/RelativePosition;)V

    iput-object v0, p0, Lcom/zui/gallery/ui/SlotView;->mAnimation:Lcom/zui/gallery/ui/SlotView$SlotAnimation;

    .line 262
    invoke-virtual {v0}, Lcom/zui/gallery/ui/SlotView$SlotAnimation;->start()V

    .line 263
    iget-object p1, p0, Lcom/zui/gallery/ui/SlotView;->mLayout:Lcom/zui/gallery/ui/SlotView$Layout;

    invoke-static {p1}, Lcom/zui/gallery/ui/SlotView$Layout;->access$300(Lcom/zui/gallery/ui/SlotView$Layout;)I

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/zui/gallery/ui/SlotView;->invalidate()V

    :cond_0
    return-void
.end method

.method public startSelectionAnimation(Lcom/zui/gallery/data/Path;Z)V
    .locals 1

    .line 1238
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/SlotView;->startScaleAnimation(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/ui/GLView$BaseAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/ui/SlotView;->mScaleAnimation:Lcom/zui/gallery/ui/GLView$BaseAnimation;

    .line 1239
    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/ui/SlotView;->startAlpahAnimation(Lcom/zui/gallery/data/Path;Z)Lcom/zui/gallery/ui/GLView$BaseAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/ui/SlotView;->mAlphaAnimation:Lcom/zui/gallery/ui/GLView$BaseAnimation;

    return-void
.end method

.method public stopScrolling()V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView;->mScroller:Lcom/zui/gallery/ui/ScrollerHelper;

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v0}, Lcom/zui/gallery/ui/ScrollerHelper;->forceFinished()V

    :cond_0
    return-void
.end method
