.class public Lcom/zui/gallery/ui/AlbumSetSlotView;
.super Lcom/zui/gallery/ui/GLView;
.source "AlbumSetSlotView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/ui/AlbumSetSlotView$IntegerAnimation;,
        Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;,
        Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;,
        Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;,
        Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;,
        Lcom/zui/gallery/ui/AlbumSetSlotView$ReorderAnimation;,
        Lcom/zui/gallery/ui/AlbumSetSlotView$MoveToOtherAnimation;,
        Lcom/zui/gallery/ui/AlbumSetSlotView$ScatteringAnimation;,
        Lcom/zui/gallery/ui/AlbumSetSlotView$RisingAnimation;,
        Lcom/zui/gallery/ui/AlbumSetSlotView$SlotAnimation;,
        Lcom/zui/gallery/ui/AlbumSetSlotView$AlbumsetFolderNameOnclickListener;,
        Lcom/zui/gallery/ui/AlbumSetSlotView$OtherFoldersVisiableListener;,
        Lcom/zui/gallery/ui/AlbumSetSlotView$SlotRenderer;,
        Lcom/zui/gallery/ui/AlbumSetSlotView$SimpleListener;,
        Lcom/zui/gallery/ui/AlbumSetSlotView$Listener;
    }
.end annotation


# static fields
.field private static final INDEX_NONE:I = -0x1

.field public static OTHER_FOLDERS_IS_VISIBLE:Z = true

.field public static final OVERSCROLL_3D:I = 0x0

.field public static final OVERSCROLL_NONE:I = 0x2

.field public static final OVERSCROLL_SYSTEM:I = 0x1

.field public static final RENDER_MORE_FRAME:I = 0x2

.field public static final RENDER_MORE_PASS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AlbumSetSlotView"

.field private static final WIDE:Z = false

.field private static final WIDTH_HEIGHT_RATE:F = 0.58f

.field private static isSingleTapUp:Z = false


# instance fields
.field private isGetContent:Z

.field private longTapItemPath:Lcom/zui/gallery/data/Path;

.field private mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

.field private final mAlbumSetSlotBackground:Lcom/zui/gallery/glrenderer/ColorTexture;

.field private mAlbumsetFolderNameOnclickListener:Lcom/zui/gallery/ui/AlbumSetSlotView$AlbumsetFolderNameOnclickListener;

.field private final mAlbumsetPaddingTop:I

.field private final mAlbumsetPaddingTopMark:Lcom/zui/gallery/glrenderer/ColorTexture;

.field private mAlbumset_category_devider_line_height:I

.field private mAlbumset_category_devider_line_margin_image:I

.field private mAlbumset_category_label_margin_image:I

.field private mAlphaAnimation:Lcom/zui/gallery/ui/GLView$BaseAnimation;

.field private mAnimation:Lcom/zui/gallery/ui/AlbumSetSlotView$SlotAnimation;

.field private mCanShowAddItem:Z

.field private mCanShowMoreAlbumItem:Z

.field private mDownInScrolling:Z

.field private final mGestureDetector:Lcom/zui/gallery/util/LenovoOneGestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private mIsAlbumSetAddPage:Z

.field private final mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

.field private mListener:Lcom/zui/gallery/ui/AlbumSetSlotView$Listener;

.field private final mLongTapAbslateRect:Landroid/graphics/Rect;

.field private mMoreAnimation:Z

.field private mMyGestureListener:Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;

.field mOtherFolderVisiableListener:Lcom/zui/gallery/ui/AlbumSetSlotView$OtherFoldersVisiableListener;

.field private mOverscrollEffect:I

.field private final mPaper:Lcom/zui/gallery/ui/Paper;

.field private mRenderer:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

.field private mRequestRenderSlots:[I

.field private mScaleAnimation:Lcom/zui/gallery/ui/GLView$BaseAnimation;

.field private final mScroller:Lcom/zui/gallery/ui/ScrollerHelper;

.field private mStartIndex:I

.field private mState:Lcom/zui/gallery/app/ActivityState;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mUIListener:Lcom/zui/gallery/ui/UserInteractionListener;

.field private mUpHideFoderAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mUpHideFolderAnimation:Lcom/zui/gallery/ui/GLView$BaseAnimation;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;)V
    .locals 3

    .line 278
    invoke-direct {p0}, Lcom/zui/gallery/ui/GLView;-><init>()V

    .line 108
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLongTapAbslateRect:Landroid/graphics/Rect;

    .line 197
    new-instance v0, Lcom/zui/gallery/ui/Paper;

    invoke-direct {v0}, Lcom/zui/gallery/ui/Paper;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mPaper:Lcom/zui/gallery/ui/Paper;

    const/4 v0, 0x0

    .line 203
    iput-boolean v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mMoreAnimation:Z

    const/4 v1, 0x0

    .line 204
    iput-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mAnimation:Lcom/zui/gallery/ui/AlbumSetSlotView$SlotAnimation;

    .line 205
    new-instance v2, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-direct {v2, p0}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;-><init>(Lcom/zui/gallery/ui/AlbumSetSlotView;)V

    iput-object v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    const/4 v2, -0x1

    .line 206
    iput v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mStartIndex:I

    .line 210
    iput v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mOverscrollEffect:I

    const/16 v2, 0x10

    new-array v2, v2, [I

    .line 218
    iput-object v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mRequestRenderSlots:[I

    .line 226
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mTempRect:Landroid/graphics/Rect;

    .line 239
    new-instance v2, Lcom/zui/gallery/ui/AlbumSetSlotView$1;

    invoke-direct {v2, p0}, Lcom/zui/gallery/ui/AlbumSetSlotView$1;-><init>(Lcom/zui/gallery/ui/AlbumSetSlotView;)V

    iput-object v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mUpHideFoderAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 268
    new-instance v2, Lcom/zui/gallery/ui/AlbumSetSlotView$2;

    invoke-direct {v2, p0}, Lcom/zui/gallery/ui/AlbumSetSlotView$2;-><init>(Lcom/zui/gallery/ui/AlbumSetSlotView;)V

    iput-object v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mOtherFolderVisiableListener:Lcom/zui/gallery/ui/AlbumSetSlotView$OtherFoldersVisiableListener;

    .line 279
    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 280
    iget-object v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mMyGestureListener:Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;

    if-nez v2, :cond_0

    .line 281
    new-instance v2, Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;

    invoke-direct {v2, p0, v1}, Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;-><init>(Lcom/zui/gallery/ui/AlbumSetSlotView;Lcom/zui/gallery/ui/AlbumSetSlotView$1;)V

    iput-object v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mMyGestureListener:Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;

    .line 283
    :cond_0
    new-instance v1, Lcom/zui/gallery/util/LenovoOneGestureDetector;

    iget-object v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mMyGestureListener:Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;

    invoke-direct {v1, p1, v2}, Lcom/zui/gallery/util/LenovoOneGestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mGestureDetector:Lcom/zui/gallery/util/LenovoOneGestureDetector;

    .line 284
    new-instance v1, Lcom/zui/gallery/ui/ScrollerHelper;

    invoke-direct {v1, p1}, Lcom/zui/gallery/ui/ScrollerHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mScroller:Lcom/zui/gallery/ui/ScrollerHelper;

    .line 285
    new-instance v1, Lcom/zui/gallery/ui/SynchronizedHandler;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/zui/gallery/ui/SynchronizedHandler;-><init>(Lcom/zui/gallery/ui/GLRoot;)V

    iput-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mHandler:Landroid/os/Handler;

    .line 286
    invoke-virtual {p0, p2}, Lcom/zui/gallery/ui/AlbumSetSlotView;->setSlotSpec(Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;)V

    .line 289
    iget-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0600bc

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mAlbumsetPaddingTop:I

    .line 291
    iget-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f060099

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mAlbumset_category_devider_line_margin_image:I

    .line 294
    iget-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f06022d

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mAlbumset_category_devider_line_height:I

    .line 296
    iget-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f06009b

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mAlbumset_category_label_margin_image:I

    .line 300
    new-instance p2, Lcom/zui/gallery/glrenderer/ColorTexture;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0500b3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {p2, v1}, Lcom/zui/gallery/glrenderer/ColorTexture;-><init>(I)V

    iput-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mAlbumsetPaddingTopMark:Lcom/zui/gallery/glrenderer/ColorTexture;

    .line 302
    new-instance p2, Lcom/zui/gallery/glrenderer/ColorTexture;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-direct {p2, p1}, Lcom/zui/gallery/glrenderer/ColorTexture;-><init>(I)V

    iput-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mAlbumSetSlotBackground:Lcom/zui/gallery/glrenderer/ColorTexture;

    .line 307
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/app/StateManager;->getTopState()Lcom/zui/gallery/app/ActivityState;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mState:Lcom/zui/gallery/app/ActivityState;

    .line 308
    instance-of p2, p1, Lcom/zui/gallery/app/AlbumSetMorePage;

    const/4 v1, 0x1

    if-nez p2, :cond_1

    instance-of p1, p1, Lcom/zui/gallery/app/AlbumSetAddMorePage;

    if-nez p1, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mCanShowMoreAlbumItem:Z

    .line 311
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mState:Lcom/zui/gallery/app/ActivityState;

    instance-of p1, p1, Lcom/zui/gallery/app/AlbumSetAddPage;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isThirdAppCall()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 312
    :cond_2
    iput-boolean v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mIsAlbumSetAddPage:Z

    .line 316
    :cond_3
    invoke-direct {p0}, Lcom/zui/gallery/ui/AlbumSetSlotView;->loadFolderVisibleStatus()V

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/ui/AlbumSetSlotView;)Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/zui/gallery/ui/AlbumSetSlotView;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/zui/gallery/ui/AlbumSetSlotView;)Lcom/zui/gallery/ui/AlbumSetSlotRenderer;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mRenderer:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/zui/gallery/ui/AlbumSetSlotView;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mIsAlbumSetAddPage:Z

    return p0
.end method

.method static synthetic access$1900(Lcom/zui/gallery/ui/AlbumSetSlotView;)Lcom/zui/gallery/ui/AlbumSetSlotView$AlbumsetFolderNameOnclickListener;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mAlbumsetFolderNameOnclickListener:Lcom/zui/gallery/ui/AlbumSetSlotView$AlbumsetFolderNameOnclickListener;

    return-object p0
.end method

.method static synthetic access$2000()Z
    .locals 1

    .line 66
    sget-boolean v0, Lcom/zui/gallery/ui/AlbumSetSlotView;->isSingleTapUp:Z

    return v0
.end method

.method static synthetic access$2002(Z)Z
    .locals 0

    .line 66
    sput-boolean p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->isSingleTapUp:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/zui/gallery/ui/AlbumSetSlotView;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->isGetContent:Z

    return p0
.end method

.method static synthetic access$2200(Lcom/zui/gallery/ui/AlbumSetSlotView;)Lcom/zui/gallery/ui/AlbumSetSlotView$Listener;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mListener:Lcom/zui/gallery/ui/AlbumSetSlotView$Listener;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/zui/gallery/ui/AlbumSetSlotView;)Lcom/zui/gallery/ui/ScrollerHelper;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mScroller:Lcom/zui/gallery/ui/ScrollerHelper;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/zui/gallery/ui/AlbumSetSlotView;)Lcom/zui/gallery/ui/UserInteractionListener;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mUIListener:Lcom/zui/gallery/ui/UserInteractionListener;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/zui/gallery/ui/AlbumSetSlotView;)I
    .locals 0

    .line 66
    iget p0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mOverscrollEffect:I

    return p0
.end method

.method static synthetic access$2600(Lcom/zui/gallery/ui/AlbumSetSlotView;)Lcom/zui/gallery/ui/Paper;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mPaper:Lcom/zui/gallery/ui/Paper;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/zui/gallery/ui/AlbumSetSlotView;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mDownInScrolling:Z

    return p0
.end method

.method static synthetic access$2800(Lcom/zui/gallery/ui/AlbumSetSlotView;Landroid/view/MotionEvent;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->isModelDay(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private static expandIntArray([II)[I
    .locals 1

    .line 499
    :goto_0
    array-length v0, p0

    if-ge v0, p1, :cond_0

    .line 500
    array-length p0, p0

    mul-int/lit8 p0, p0, 0x2

    new-array p0, p0, [I

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private isModelDay(Landroid/view/MotionEvent;)V
    .locals 5

    .line 2267
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mMyGestureListener:Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;->access$2900(Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;Z)V

    .line 2268
    iget-boolean v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mDownInScrolling:Z

    if-eqz v0, :cond_0

    return-void

    .line 2270
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/ui/AlbumSetSlotView;->lockRendering()V

    .line 2272
    sput-boolean v1, Lcom/zui/gallery/ui/AlbumSetSlotView;->isSingleTapUp:Z

    .line 2275
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getSlotIndexByPosition(FF)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 2293
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mRenderer:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->inSelectModel()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2294
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLongTapAbslateRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 2295
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLongTapAbslateRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 2296
    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLongTapAbslateRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 2297
    iget-object v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mScroller:Lcom/zui/gallery/ui/ScrollerHelper;

    invoke-virtual {v2}, Lcom/zui/gallery/ui/ScrollerHelper;->getPosition()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2298
    iget-object v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLongTapAbslateRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLongTapAbslateRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLongTapAbslateRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 2299
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mListener:Lcom/zui/gallery/ui/AlbumSetSlotView$Listener;

    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLongTapAbslateRect:Landroid/graphics/Rect;

    invoke-interface {v0, p1, v1}, Lcom/zui/gallery/ui/AlbumSetSlotView$Listener;->onLongTap(ILandroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2314
    :cond_1
    invoke-virtual {p0}, Lcom/zui/gallery/ui/AlbumSetSlotView;->unlockRendering()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/zui/gallery/ui/AlbumSetSlotView;->unlockRendering()V

    .line 2315
    throw p1
.end method

.method private loadFolderVisibleStatus()V
    .locals 3

    .line 2480
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "Gallery_Preference"

    .line 2481
    invoke-virtual {v0, v2, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "folder_status"

    .line 2482
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/zui/gallery/ui/AlbumSetSlotView;->OTHER_FOLDERS_IS_VISIBLE:Z

    .line 2484
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OTHER_FOLDERS_IS_VISIBLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/zui/gallery/ui/AlbumSetSlotView;->OTHER_FOLDERS_IS_VISIBLE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlbumSetSlotView"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private renderAddItem(Lcom/zui/gallery/glrenderer/GLCanvas;IZ)V
    .locals 4

    const/4 v0, 0x3

    .line 750
    invoke-interface {p1, v0}, Lcom/zui/gallery/glrenderer/GLCanvas;->save(I)V

    .line 751
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, v1}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz p3, :cond_0

    .line 754
    iget-object p3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mPaper:Lcom/zui/gallery/ui/Paper;

    div-int/lit8 v1, p2, 0x2

    iget-object v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    .line 755
    invoke-static {v2}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->access$500(Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    div-int/lit8 v2, v2, 0x2

    .line 756
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 755
    invoke-virtual {p3, v0, v1, v2, v3}, Lcom/zui/gallery/ui/Paper;->getTransformNew(Landroid/graphics/Rect;III)[F

    move-result-object p3

    const/4 v1, 0x0

    .line 754
    invoke-interface {p1, p3, v1}, Lcom/zui/gallery/glrenderer/GLCanvas;->multiplyMatrix([FI)V

    goto :goto_0

    .line 760
    :cond_0
    iget p3, v0, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-interface {p1, p3, v1, v2}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FFF)V

    .line 762
    :goto_0
    iget-object p3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mAnimation:Lcom/zui/gallery/ui/AlbumSetSlotView$SlotAnimation;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/zui/gallery/ui/AlbumSetSlotView$SlotAnimation;->isActive()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 763
    iget-object p3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mAnimation:Lcom/zui/gallery/ui/AlbumSetSlotView$SlotAnimation;

    invoke-virtual {p3, p1, p2, v0}, Lcom/zui/gallery/ui/AlbumSetSlotView$SlotAnimation;->apply(Lcom/zui/gallery/glrenderer/GLCanvas;ILandroid/graphics/Rect;)V

    .line 766
    :cond_1
    iget-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mRenderer:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    iget p3, v0, Landroid/graphics/Rect;->right:I

    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p3, v1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    invoke-virtual {p2, p1, p3, v1}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->renderAdd(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 767
    invoke-interface {p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->restore()V

    return-void
.end method

.method private renderCategoryLabel(Lcom/zui/gallery/glrenderer/GLCanvas;IZ)I
    .locals 8

    const/4 v0, 0x3

    .line 598
    invoke-interface {p1, v0}, Lcom/zui/gallery/glrenderer/GLCanvas;->save(I)V

    .line 599
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-virtual {v0, p2}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getLableRect(I)Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-eqz p3, :cond_2

    .line 603
    iget-object p3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-virtual {p3}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getVisibleEnd()I

    move-result p3

    .line 604
    iget-object v3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-virtual {v3, p2}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getLabelFirstSlotIndex(I)I

    .line 605
    iget-object v3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-virtual {v3}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getSlotHeight()I

    move-result v3

    .line 611
    invoke-virtual {p0, p2}, Lcom/zui/gallery/ui/AlbumSetSlotView;->isClipLabel(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mScroller:Lcom/zui/gallery/ui/ScrollerHelper;

    invoke-virtual {v4}, Lcom/zui/gallery/ui/ScrollerHelper;->getPosition()I

    move-result v4

    if-lez v4, :cond_1

    .line 614
    iget p3, v0, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-interface {p1, p3, v3, v2}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FFF)V

    goto :goto_0

    .line 617
    :cond_1
    iget-object v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mPaper:Lcom/zui/gallery/ui/Paper;

    .line 618
    invoke-virtual {v2, v0, v1, p3, v3}, Lcom/zui/gallery/ui/Paper;->getTransformAlbumSet(Landroid/graphics/Rect;III)[F

    move-result-object p3

    .line 617
    invoke-interface {p1, p3, v1}, Lcom/zui/gallery/glrenderer/GLCanvas;->multiplyMatrix([FI)V

    goto :goto_0

    .line 629
    :cond_2
    iget p3, v0, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-interface {p1, p3, v3, v2}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FFF)V

    .line 661
    :goto_0
    iget-object p3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-virtual {p3}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getSubLayoutList()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-virtual {p3}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getSubLayoutList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-le p3, p2, :cond_3

    .line 662
    sget-object p3, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;->SMART:Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    iget-object v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-virtual {v2}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getSubLayoutList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;

    invoke-static {v2}, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->access$900(Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;)Lcom/zui/gallery/data/AlbumSetCategoryEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/data/AlbumSetCategoryEntry;->getAlbumEntryType()Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    move-result-object v2

    if-ne p3, v2, :cond_3

    iget-object p3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    .line 663
    invoke-virtual {p3}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getSubLayoutList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;

    invoke-static {p2}, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->access$900(Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;)Lcom/zui/gallery/data/AlbumSetCategoryEntry;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/data/AlbumSetCategoryEntry;->getAlbumEntryID()Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;

    move-result-object p2

    sget-object p3, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;->TRASH:Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;

    .line 664
    invoke-virtual {p2, p3}, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 666
    iget-object v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mRenderer:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p2

    iget p3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mAlbumset_category_devider_line_margin_image:I

    sub-int v5, p2, p3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget v7, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mAlbumset_category_devider_line_height:I

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->renderDividerLine(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    .line 669
    :cond_3
    invoke-interface {p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->restore()V

    return v1
.end method

.method private renderEmptyPic(Lcom/zui/gallery/glrenderer/GLCanvas;)V
    .locals 5

    const/4 v0, 0x3

    .line 743
    invoke-interface {p1, v0}, Lcom/zui/gallery/glrenderer/GLCanvas;->save(I)V

    .line 744
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mRenderer:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-static {v2}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->access$1300(Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;)I

    move-result v2

    iget-object v3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-static {v3}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->access$1400(Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, p1, v1}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->renderEmptyPic(Lcom/zui/gallery/glrenderer/GLCanvas;Landroid/graphics/Rect;)V

    .line 746
    invoke-interface {p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->restore()V

    return-void
.end method

.method private renderItem(Lcom/zui/gallery/glrenderer/GLCanvas;IIZ)I
    .locals 10

    const/4 v0, 0x3

    .line 675
    invoke-interface {p1, v0}, Lcom/zui/gallery/glrenderer/GLCanvas;->save(I)V

    .line 676
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, v1}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v8

    .line 678
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getVisibleEnd()I

    move-result v0

    .line 680
    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    iget-object v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2, v2}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    const/4 v9, 0x0

    if-eqz p4, :cond_0

    .line 684
    iget-object p4, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mPaper:Lcom/zui/gallery/ui/Paper;

    .line 686
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 685
    invoke-virtual {p4, v1, v9, v0, v2}, Lcom/zui/gallery/ui/Paper;->getTransformAlbumSet(Landroid/graphics/Rect;III)[F

    move-result-object p4

    .line 684
    invoke-interface {p1, p4, v9}, Lcom/zui/gallery/glrenderer/GLCanvas;->multiplyMatrix([FI)V

    goto :goto_0

    .line 689
    :cond_0
    iget-object p4, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mAnimation:Lcom/zui/gallery/ui/AlbumSetSlotView$SlotAnimation;

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lcom/zui/gallery/ui/AlbumSetSlotView$SlotAnimation;->isActive()Z

    move-result p4

    if-nez p4, :cond_2

    :cond_1
    iget-object p4, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mAnimation:Lcom/zui/gallery/ui/AlbumSetSlotView$SlotAnimation;

    if-eqz p4, :cond_3

    .line 690
    invoke-virtual {p4}, Lcom/zui/gallery/ui/AlbumSetSlotView$SlotAnimation;->isForcePaly()Z

    move-result p4

    if-eqz p4, :cond_3

    .line 691
    :cond_2
    iget-object p4, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mAnimation:Lcom/zui/gallery/ui/AlbumSetSlotView$SlotAnimation;

    invoke-virtual {p4, p1, p2, v8}, Lcom/zui/gallery/ui/AlbumSetSlotView$SlotAnimation;->apply(Lcom/zui/gallery/glrenderer/GLCanvas;ILandroid/graphics/Rect;)V

    goto :goto_0

    .line 693
    :cond_3
    iget p4, v8, Landroid/graphics/Rect;->left:I

    int-to-float p4, p4

    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-interface {p1, p4, v0, v1}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FFF)V

    .line 696
    :goto_0
    iget-object p4, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mScaleAnimation:Lcom/zui/gallery/ui/GLView$BaseAnimation;

    if-eqz p4, :cond_4

    iget-object p4, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mRenderer:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    .line 697
    invoke-virtual {p4, p2}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->getItemPath(I)Lcom/zui/gallery/data/Path;

    move-result-object p4

    if-eqz p4, :cond_4

    iget-object p4, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mRenderer:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    invoke-virtual {p4, p2}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->getItemPath(I)Lcom/zui/gallery/data/Path;

    move-result-object p4

    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mScaleAnimation:Lcom/zui/gallery/ui/GLView$BaseAnimation;

    .line 698
    invoke-virtual {v0}, Lcom/zui/gallery/ui/GLView$BaseAnimation;->getSelectPath()Lcom/zui/gallery/data/Path;

    move-result-object v0

    .line 697
    invoke-virtual {p4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    iget-object p4, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mScaleAnimation:Lcom/zui/gallery/ui/GLView$BaseAnimation;

    .line 699
    invoke-virtual {p4}, Lcom/zui/gallery/ui/GLView$BaseAnimation;->isActive()Z

    move-result p4

    if-eqz p4, :cond_4

    iget-object p4, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mRenderer:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    .line 700
    invoke-virtual {p4}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->getmDataWindow()Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->isActiveSlot(I)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 701
    iget-object p4, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mScaleAnimation:Lcom/zui/gallery/ui/GLView$BaseAnimation;

    invoke-virtual {p4, p1, p2, v8}, Lcom/zui/gallery/ui/GLView$BaseAnimation;->apply(Lcom/zui/gallery/glrenderer/GLCanvas;ILandroid/graphics/Rect;)V

    .line 704
    :cond_4
    sget-boolean p4, Lcom/zui/gallery/ui/AlbumSetSlotView;->OTHER_FOLDERS_IS_VISIBLE:Z

    if-nez p4, :cond_5

    iget-object p4, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mUpHideFolderAnimation:Lcom/zui/gallery/ui/GLView$BaseAnimation;

    if-eqz p4, :cond_5

    .line 705
    invoke-virtual {p4}, Lcom/zui/gallery/ui/GLView$BaseAnimation;->isActive()Z

    move-result p4

    if-eqz p4, :cond_5

    iget-object p4, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mRenderer:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    .line 706
    invoke-virtual {p4, p2}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->isOtherFolder(I)Z

    move-result p4

    if-eqz p4, :cond_5

    iget-object p4, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    .line 707
    invoke-static {p4}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->access$1000(Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-lez p4, :cond_5

    .line 708
    iget p4, v8, Landroid/graphics/Rect;->bottom:I

    iget v0, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr p4, v0

    .line 709
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->access$1000(Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    .line 710
    invoke-static {v1}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->access$1000(Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;)I

    move-result v0

    .line 711
    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mUpHideFolderAnimation:Lcom/zui/gallery/ui/GLView$BaseAnimation;

    sub-int v0, p2, v0

    add-int/lit8 v2, v0, 0x1

    mul-int/2addr v2, p4

    iget-object p4, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    .line 713
    invoke-static {p4}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->access$1200(Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;)I

    move-result p4

    mul-int/2addr v0, p4

    add-int/2addr v2, v0

    .line 711
    invoke-virtual {v1, p1, p2, v2}, Lcom/zui/gallery/ui/GLView$BaseAnimation;->apply(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 716
    :cond_5
    sget-boolean p4, Lcom/zui/gallery/ui/AlbumSetSlotView;->OTHER_FOLDERS_IS_VISIBLE:Z

    if-eqz p4, :cond_6

    iget-object p4, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mUpHideFolderAnimation:Lcom/zui/gallery/ui/GLView$BaseAnimation;

    if-eqz p4, :cond_6

    .line 717
    invoke-virtual {p4}, Lcom/zui/gallery/ui/GLView$BaseAnimation;->isActive()Z

    move-result p4

    if-eqz p4, :cond_6

    iget-object p4, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    .line 718
    invoke-static {p4}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->access$1000(Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-lez p4, :cond_6

    .line 719
    iget-object p4, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-static {p4}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->access$100(Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;)V

    .line 720
    iget-object p4, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mRenderer:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    invoke-virtual {p4, p2}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->isOtherFolder(I)Z

    move-result p4

    if-eqz p4, :cond_6

    .line 721
    iget p4, v8, Landroid/graphics/Rect;->bottom:I

    iget v0, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr p4, v0

    .line 722
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->access$1000(Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 724
    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-static {v1}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->access$1000(Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;)Ljava/util/List;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    .line 725
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;)I

    move-result v0

    .line 726
    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mUpHideFolderAnimation:Lcom/zui/gallery/ui/GLView$BaseAnimation;

    sub-int v0, p2, v0

    add-int/lit8 v2, v0, 0x1

    mul-int/2addr v2, p4

    iget-object p4, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    .line 728
    invoke-static {p4}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->access$1200(Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;)I

    move-result p4

    mul-int/2addr v0, p4

    add-int/2addr v2, v0

    .line 726
    invoke-virtual {v1, p1, p2, v2}, Lcom/zui/gallery/ui/GLView$BaseAnimation;->apply(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 732
    :cond_6
    iget-object p4, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mRenderer:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    invoke-virtual {p4}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->getmDataWindow()Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->isActiveSlot(I)Z

    move-result p4

    if-eqz p4, :cond_7

    .line 733
    iget-object v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mRenderer:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    iget p4, v8, Landroid/graphics/Rect;->right:I

    iget v0, v8, Landroid/graphics/Rect;->left:I

    sub-int v6, p4, v0

    iget p4, v8, Landroid/graphics/Rect;->bottom:I

    iget v0, v8, Landroid/graphics/Rect;->top:I

    sub-int v7, p4, v0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v2 .. v8}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->renderAlbumsetSlot(Lcom/zui/gallery/glrenderer/GLCanvas;IIIILandroid/graphics/Rect;)I

    move-result p2

    or-int/2addr v9, p2

    .line 737
    :cond_7
    invoke-interface {p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->restore()V

    return v9
.end method

.method private renderMoreItem(Lcom/zui/gallery/glrenderer/GLCanvas;IZ)I
    .locals 5

    const/4 v0, 0x3

    .line 776
    invoke-interface {p1, v0}, Lcom/zui/gallery/glrenderer/GLCanvas;->save(I)V

    .line 777
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, v1}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 779
    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mRenderer:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->getmDataWindow()Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->getMoreAlbumData()Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    .line 785
    iget-object p3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mPaper:Lcom/zui/gallery/ui/Paper;

    div-int/lit8 p2, p2, 0x2

    iget-object v3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    .line 786
    invoke-static {v3}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->access$500(Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    div-int/lit8 v3, v3, 0x2

    .line 787
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 786
    invoke-virtual {p3, v0, p2, v3, v4}, Lcom/zui/gallery/ui/Paper;->getTransformNew(Landroid/graphics/Rect;III)[F

    move-result-object p2

    .line 785
    invoke-interface {p1, p2, v2}, Lcom/zui/gallery/glrenderer/GLCanvas;->multiplyMatrix([FI)V

    goto :goto_0

    .line 790
    :cond_0
    iget-object p3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mAnimation:Lcom/zui/gallery/ui/AlbumSetSlotView$SlotAnimation;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/zui/gallery/ui/AlbumSetSlotView$SlotAnimation;->isActive()Z

    move-result p3

    if-nez p3, :cond_2

    :cond_1
    iget-object p3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mAnimation:Lcom/zui/gallery/ui/AlbumSetSlotView$SlotAnimation;

    if-eqz p3, :cond_3

    .line 791
    invoke-virtual {p3}, Lcom/zui/gallery/ui/AlbumSetSlotView$SlotAnimation;->isForcePaly()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 792
    :cond_2
    iget-object p3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mAnimation:Lcom/zui/gallery/ui/AlbumSetSlotView$SlotAnimation;

    invoke-virtual {p3, p1, p2, v0}, Lcom/zui/gallery/ui/AlbumSetSlotView$SlotAnimation;->apply(Lcom/zui/gallery/glrenderer/GLCanvas;ILandroid/graphics/Rect;)V

    goto :goto_0

    .line 794
    :cond_3
    iget p2, v0, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    iget p3, v0, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    const/4 v3, 0x0

    invoke-interface {p1, p2, p3, v3}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FFF)V

    :goto_0
    if-nez v1, :cond_4

    const-string p1, "AlbumSetSlotView"

    const-string p2, "entry = null!!"

    .line 798
    invoke-static {p1, p2}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 805
    :cond_4
    iget-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mRenderer:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    iget p3, v0, Landroid/graphics/Rect;->right:I

    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p3, v1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    invoke-virtual {p2, p1, p3, v1}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->renderMore(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 806
    invoke-interface {p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->restore()V

    return v2
.end method

.method private updateScrollPosition(IZ)V
    .locals 0

    .line 444
    iput p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mScrollY:I

    .line 446
    iget-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-virtual {p2, p1}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->setScrollPosition(I)V

    .line 447
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->onScrollPositionChanged(I)V

    return-void
.end method


# virtual methods
.method public addComponent(Lcom/zui/gallery/ui/GLView;)V
    .locals 0

    .line 384
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public canShowAddItem()Z
    .locals 1

    .line 2420
    iget-boolean v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mCanShowAddItem:Z

    return v0
.end method

.method public finishMoveFolderAnimation()V
    .locals 1

    .line 811
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mState:Lcom/zui/gallery/app/ActivityState;

    check-cast v0, Lcom/zui/gallery/app/AlbumSetPage;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AlbumSetPage;->finishMoveFolderAnimation()V

    return-void
.end method

.method public finishReorderAnimation()V
    .locals 1

    .line 815
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mState:Lcom/zui/gallery/app/ActivityState;

    check-cast v0, Lcom/zui/gallery/app/AlbumSetPage;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AlbumSetPage;->finishReorderAnimation()V

    return-void
.end method

.method public getAddItemIndex()I
    .locals 1

    .line 2440
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->access$500(Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;)I

    move-result v0

    return v0
.end method

.method public getAlphaAnimation()Lcom/zui/gallery/ui/GLView$BaseAnimation;
    .locals 1

    .line 2414
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mAlphaAnimation:Lcom/zui/gallery/ui/GLView$BaseAnimation;

    return-object v0
.end method

.method public getLongTapItemPath()Lcom/zui/gallery/data/Path;
    .locals 1

    .line 2493
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->longTapItemPath:Lcom/zui/gallery/data/Path;

    return-object v0
.end method

.method public getMoreEntry()Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    .locals 1

    .line 771
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mRenderer:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->getmDataWindow()Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->getMoreAlbumData()Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    move-result-object v0

    return-object v0
.end method

.method public getMoreItemIndex(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 2430
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-static {p1}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->access$500(Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-static {p1}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->access$500(Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public getScrollX()I
    .locals 1

    .line 2344
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mScrollX:I

    return v0
.end method

.method public getScrollY()I
    .locals 1

    .line 2348
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mScrollY:I

    return v0
.end method

.method public getSlotCount()I
    .locals 1

    .line 2455
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->access$500(Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;)I

    move-result v0

    return v0
.end method

.method public getSlotRect(I)Landroid/graphics/Rect;
    .locals 2

    .line 456
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public getSlotRect(ILcom/zui/gallery/ui/GLView;)Landroid/graphics/Rect;
    .locals 2

    .line 2353
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2354
    invoke-virtual {p2, p0, v0}, Lcom/zui/gallery/ui/GLView;->getBoundsOf(Lcom/zui/gallery/ui/GLView;Landroid/graphics/Rect;)Z

    .line 2355
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object p1

    .line 2356
    iget p2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/zui/gallery/ui/AlbumSetSlotView;->getScrollX()I

    move-result v1

    sub-int/2addr p2, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 2357
    invoke-virtual {p0}, Lcom/zui/gallery/ui/AlbumSetSlotView;->getScrollY()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2356
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Rect;->offset(II)V

    return-object p1
.end method

.method public getVisibleEnd()I
    .locals 1

    .line 2340
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getVisibleEnd()I

    move-result v0

    return v0
.end method

.method public getVisibleStart()I
    .locals 1

    .line 2336
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getVisibleStart()I

    move-result v0

    return v0
.end method

.method public isClipLabel(I)Z
    .locals 2

    .line 2465
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2466
    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getClipIndex()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isPlayMoveAndReorderAnimation()Z
    .locals 3

    .line 2459
    invoke-virtual {p0}, Lcom/zui/gallery/ui/AlbumSetSlotView;->getVisibleEnd()I

    move-result v0

    const/4 v1, 0x0

    .line 2460
    invoke-virtual {p0, v1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->getMoreItemIndex(Z)I

    move-result v2

    if-lt v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public makeSlotVisible(I)V
    .locals 5

    .line 353
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 354
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mScrollY:I

    .line 355
    invoke-virtual {p0}, Lcom/zui/gallery/ui/AlbumSetSlotView;->getHeight()I

    move-result v1

    add-int v2, v0, v1

    .line 357
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 358
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

    .line 369
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/zui/gallery/ui/AlbumSetSlotView;->setScrollPosition(I)V

    return-void
.end method

.method protected onDetachFromRoot()V
    .locals 2

    const-string/jumbo v0, "zhuanmenkeyeventaaa"

    const-string v1, "AlbumSetSlotView onDetachFromRoot"

    .line 2498
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2499
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->unRegisterConnectGenericMotionEventListener()V

    .line 2500
    invoke-super {p0}, Lcom/zui/gallery/ui/GLView;->onDetachFromRoot()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 396
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getVisibleStart()I

    move-result p1

    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getVisibleEnd()I

    move-result v0

    add-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    .line 397
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    invoke-virtual {v0, p4, p5}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->setSize(II)V

    .line 398
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->makeSlotVisible(I)V

    .line 399
    iget p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mOverscrollEffect:I

    if-nez p1, :cond_1

    .line 400
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mPaper:Lcom/zui/gallery/ui/Paper;

    invoke-virtual {p1, p4, p5}, Lcom/zui/gallery/ui/Paper;->setSize(II)V

    .line 404
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mAlbumsetPaddingTopMark:Lcom/zui/gallery/glrenderer/ColorTexture;

    iget p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mAlbumsetPaddingTop:I

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, p4, p2}, Lcom/zui/gallery/glrenderer/ColorTexture;->setSize(II)V

    .line 405
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mAlbumSetSlotBackground:Lcom/zui/gallery/glrenderer/ColorTexture;

    invoke-virtual {p1, p4, p5}, Lcom/zui/gallery/glrenderer/ColorTexture;->setSize(II)V

    return-void
.end method

.method protected onScrollPositionChanged(I)V
    .locals 2

    .line 451
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getScrollLimit()I

    move-result v0

    .line 452
    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mListener:Lcom/zui/gallery/ui/AlbumSetSlotView$Listener;

    invoke-interface {v1, p1, v0}, Lcom/zui/gallery/ui/AlbumSetSlotView$Listener;->onScrollPositionChanged(II)V

    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mUIListener:Lcom/zui/gallery/ui/UserInteractionListener;

    if-eqz v0, :cond_0

    .line 462
    invoke-interface {v0}, Lcom/zui/gallery/ui/UserInteractionListener;->onUserInteraction()V

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mMyGestureListener:Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;->onContextClick(Landroid/view/MotionEvent;)Z

    .line 466
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mGestureDetector:Lcom/zui/gallery/util/LenovoOneGestureDetector;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/util/LenovoOneGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 467
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 473
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mPaper:Lcom/zui/gallery/ui/Paper;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/Paper;->onRelease()V

    .line 474
    invoke-virtual {p0}, Lcom/zui/gallery/ui/AlbumSetSlotView;->invalidate()V

    goto :goto_0

    .line 469
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mScroller:Lcom/zui/gallery/ui/ScrollerHelper;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/ScrollerHelper;->isFinished()Z

    move-result p1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mDownInScrolling:Z

    .line 470
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mScroller:Lcom/zui/gallery/ui/ScrollerHelper;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/ScrollerHelper;->forceFinished()V

    :goto_0
    return v0
.end method

.method protected render(Lcom/zui/gallery/glrenderer/GLCanvas;)V
    .locals 7

    .line 507
    invoke-super {p0, p1}, Lcom/zui/gallery/ui/GLView;->render(Lcom/zui/gallery/glrenderer/GLCanvas;)V

    .line 509
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mRenderer:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    if-nez v0, :cond_0

    return-void

    .line 511
    :cond_0
    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->prepareDrawing()V

    .line 513
    invoke-static {}, Lcom/zui/gallery/ui/AnimationTime;->get()J

    move-result-wide v0

    .line 514
    iget-object v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mScroller:Lcom/zui/gallery/ui/ScrollerHelper;

    invoke-virtual {v2, v0, v1}, Lcom/zui/gallery/ui/ScrollerHelper;->advanceAnimation(J)Z

    move-result v2

    .line 515
    iget-object v3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-virtual {v3, v0, v1}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->advanceAnimation(J)Z

    move-result v3

    or-int/2addr v2, v3

    .line 516
    iget v3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mScrollX:I

    .line 519
    iget-object v4, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mScroller:Lcom/zui/gallery/ui/ScrollerHelper;

    invoke-virtual {v4}, Lcom/zui/gallery/ui/ScrollerHelper;->getPosition()I

    move-result v4

    const/4 v5, 0x0

    if-gez v4, :cond_1

    .line 522
    iget-object v4, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mScroller:Lcom/zui/gallery/ui/ScrollerHelper;

    invoke-virtual {v4}, Lcom/zui/gallery/ui/ScrollerHelper;->forceFinished()V

    move v4, v5

    goto :goto_0

    .line 523
    :cond_1
    iget-object v6, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-virtual {v6}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getScrollLimit()I

    move-result v6

    if-le v4, v6, :cond_2

    .line 524
    iget-object v4, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-virtual {v4}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getScrollLimit()I

    move-result v4

    .line 525
    iget-object v6, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mScroller:Lcom/zui/gallery/ui/ScrollerHelper;

    invoke-virtual {v6}, Lcom/zui/gallery/ui/ScrollerHelper;->forceFinished()V

    .line 527
    :cond_2
    :goto_0
    invoke-direct {p0, v4, v5}, Lcom/zui/gallery/ui/AlbumSetSlotView;->updateScrollPosition(IZ)V

    .line 531
    iget v4, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mOverscrollEffect:I

    if-nez v4, :cond_7

    .line 533
    iget v4, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mScrollX:I

    .line 534
    iget-object v6, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-virtual {v6}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getScrollLimit()I

    move-result v6

    if-lez v3, :cond_3

    if-eqz v4, :cond_4

    :cond_3
    if-ge v3, v6, :cond_6

    if-ne v4, v6, :cond_6

    .line 536
    :cond_4
    iget-object v3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mScroller:Lcom/zui/gallery/ui/ScrollerHelper;

    invoke-virtual {v3}, Lcom/zui/gallery/ui/ScrollerHelper;->getCurrVelocity()F

    move-result v3

    if-ne v4, v6, :cond_5

    neg-float v3, v3

    .line 541
    :cond_5
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_6

    .line 542
    iget-object v4, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mPaper:Lcom/zui/gallery/ui/Paper;

    invoke-virtual {v4, v3}, Lcom/zui/gallery/ui/Paper;->edgeReached(F)V

    .line 545
    :cond_6
    iget-object v3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mPaper:Lcom/zui/gallery/ui/Paper;

    invoke-virtual {v3}, Lcom/zui/gallery/ui/Paper;->advanceAnimation()Z

    move-result v3

    goto :goto_1

    :cond_7
    move v3, v5

    :goto_1
    or-int/2addr v2, v3

    .line 550
    iget-object v4, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mAnimation:Lcom/zui/gallery/ui/AlbumSetSlotView$SlotAnimation;

    if-eqz v4, :cond_8

    .line 551
    invoke-virtual {v4, v0, v1}, Lcom/zui/gallery/ui/AlbumSetSlotView$SlotAnimation;->calculate(J)Z

    move-result v0

    or-int/2addr v2, v0

    .line 554
    :cond_8
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mScaleAnimation:Lcom/zui/gallery/ui/GLView$BaseAnimation;

    if-eqz v0, :cond_9

    .line 555
    invoke-virtual {v0}, Lcom/zui/gallery/ui/GLView$BaseAnimation;->isActive()Z

    move-result v0

    or-int/2addr v2, v0

    .line 558
    :cond_9
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mUpHideFolderAnimation:Lcom/zui/gallery/ui/GLView$BaseAnimation;

    if-eqz v0, :cond_a

    .line 559
    invoke-virtual {v0}, Lcom/zui/gallery/ui/GLView$BaseAnimation;->isActive()Z

    move-result v0

    or-int/2addr v2, v0

    .line 562
    :cond_a
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mAlbumSetSlotBackground:Lcom/zui/gallery/glrenderer/ColorTexture;

    invoke-virtual {v0, p1, v5, v5}, Lcom/zui/gallery/glrenderer/ColorTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 564
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mScrollX:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mScrollY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-interface {p1, v0, v1}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FF)V

    .line 565
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getAlbum()Lcom/zui/gallery/app/OptimizationAlbum;

    move-result-object v0

    .line 566
    invoke-virtual {v0}, Lcom/zui/gallery/app/OptimizationAlbum;->isFixed()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "11111"

    const-string v4, "render: isFix"

    .line 568
    invoke-static {v1, v4}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    invoke-virtual {v0, v5}, Lcom/zui/gallery/app/OptimizationAlbum;->setFixed(Z)V

    .line 570
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    if-eqz v0, :cond_b

    .line 571
    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->access$100(Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;)V

    .line 574
    :cond_b
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->access$600(Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_2
    iget-object v4, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-static {v4}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->access$700(Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;)I

    move-result v4

    if-lt v0, v4, :cond_d

    .line 575
    invoke-direct {p0, p1, v0, v5, v3}, Lcom/zui/gallery/ui/AlbumSetSlotView;->renderItem(Lcom/zui/gallery/glrenderer/GLCanvas;IIZ)I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_c

    move v2, v1

    :cond_c
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 580
    :cond_d
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getVisibleLabelStart()I

    move-result v0

    :goto_3
    if-ltz v0, :cond_e

    .line 581
    iget-object v4, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-virtual {v4}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getVisibleLabelEnd()I

    move-result v4

    if-gt v0, v4, :cond_e

    .line 582
    invoke-direct {p0, p1, v0, v3}, Lcom/zui/gallery/ui/AlbumSetSlotView;->renderCategoryLabel(Lcom/zui/gallery/glrenderer/GLCanvas;IZ)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 585
    :cond_e
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getSlotCount()I

    move-result v0

    if-gtz v0, :cond_f

    move v5, v1

    .line 586
    :cond_f
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->access$800(Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_10

    if-eqz v5, :cond_10

    .line 587
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->renderEmptyPic(Lcom/zui/gallery/glrenderer/GLCanvas;)V

    .line 590
    :cond_10
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mScrollX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mScrollY:I

    int-to-float v1, v1

    invoke-interface {p1, v0, v1}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FF)V

    if-eqz v2, :cond_11

    .line 593
    invoke-virtual {p0}, Lcom/zui/gallery/ui/AlbumSetSlotView;->invalidate()V

    .line 594
    :cond_11
    iput-boolean v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mMoreAnimation:Z

    return-void
.end method

.method public resume()V
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mGestureDetector:Lcom/zui/gallery/util/LenovoOneGestureDetector;

    if-eqz v1, :cond_0

    .line 324
    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->registerConnectGenericMotionEventListener(Lcom/zui/gallery/util/LenovoOneGestureDetector;)V

    :cond_0
    return-void
.end method

.method public saveFolderVisibleStatus()V
    .locals 3

    .line 2473
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "Gallery_Preference"

    .line 2474
    invoke-virtual {v0, v2, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2475
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-boolean v1, Lcom/zui/gallery/ui/AlbumSetSlotView;->OTHER_FOLDERS_IS_VISIBLE:Z

    const-string v2, "folder_status"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public setAlbumsetFolderNameOnclickListener(Lcom/zui/gallery/ui/AlbumSetSlotView$AlbumsetFolderNameOnclickListener;)V
    .locals 0

    .line 486
    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mAlbumsetFolderNameOnclickListener:Lcom/zui/gallery/ui/AlbumSetSlotView$AlbumsetFolderNameOnclickListener;

    return-void
.end method

.method public setCenterIndex(I)V
    .locals 2

    .line 341
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->access$500(Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;)I

    move-result v0

    if-ltz p1, :cond_1

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 346
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p1

    .line 348
    invoke-virtual {p0}, Lcom/zui/gallery/ui/AlbumSetSlotView;->getHeight()I

    move-result p1

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    .line 349
    invoke-virtual {p0, v0}, Lcom/zui/gallery/ui/AlbumSetSlotView;->setScrollPosition(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setForcePlayAnimation(Z)V
    .locals 1

    .line 819
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mAnimation:Lcom/zui/gallery/ui/AlbumSetSlotView$SlotAnimation;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/AlbumSetSlotView$SlotAnimation;->setForcePlay(Z)V

    return-void
.end method

.method public setGetContent(Z)V
    .locals 0

    .line 114
    iput-boolean p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->isGetContent:Z

    return-void
.end method

.method public setListener(Lcom/zui/gallery/ui/AlbumSetSlotView$Listener;)V
    .locals 0

    .line 481
    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mListener:Lcom/zui/gallery/ui/AlbumSetSlotView$Listener;

    return-void
.end method

.method public setLongTapItemPath(Lcom/zui/gallery/data/Path;)V
    .locals 0

    .line 2489
    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->longTapItemPath:Lcom/zui/gallery/data/Path;

    return-void
.end method

.method public setOverscrollEffect(I)V
    .locals 2

    .line 494
    iput p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mOverscrollEffect:I

    .line 495
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mScroller:Lcom/zui/gallery/ui/ScrollerHelper;

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

    .line 373
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getScrollLimit()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/zui/gallery/common/Utils;->clamp(III)I

    move-result p1

    .line 374
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mScroller:Lcom/zui/gallery/ui/ScrollerHelper;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/ScrollerHelper;->setPosition(I)V

    .line 375
    invoke-direct {p0, p1, v1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->updateScrollPosition(IZ)V

    return-void
.end method

.method public setShowAddItem(Z)V
    .locals 2

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setShowAddItem, show = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlbumSetSlotView"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iput-boolean p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mCanShowAddItem:Z

    return-void
.end method

.method public setSlotCount(ILjava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/zui/gallery/data/AlbumSetCategoryEntry;",
            ">;)Z"
        }
    .end annotation

    .line 2324
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->setSlotCount(ILjava/util/List;)Z

    move-result p1

    .line 2326
    iget p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mStartIndex:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 2327
    invoke-virtual {p0, p2}, Lcom/zui/gallery/ui/AlbumSetSlotView;->setCenterIndex(I)V

    .line 2328
    iput v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mStartIndex:I

    .line 2331
    :cond_0
    iget p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mScrollY:I

    invoke-virtual {p0, p2}, Lcom/zui/gallery/ui/AlbumSetSlotView;->setScrollPosition(I)V

    return p1
.end method

.method public setSlotRenderer(Lcom/zui/gallery/ui/AlbumSetSlotRenderer;)V
    .locals 2

    .line 333
    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mRenderer:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    if-eqz p1, :cond_0

    .line 335
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->access$300(Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;)I

    move-result v0

    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-static {v1}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->access$400(Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->onSlotSizeChanged(II)V

    .line 336
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mRenderer:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    invoke-virtual {p0}, Lcom/zui/gallery/ui/AlbumSetSlotView;->getVisibleStart()I

    move-result v0

    invoke-virtual {p0}, Lcom/zui/gallery/ui/AlbumSetSlotView;->getVisibleEnd()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->onVisibleRangeChanged(II)V

    :cond_0
    return-void
.end method

.method public setSlotSpec(Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;)V
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->setSlotSpec(Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;)V

    return-void
.end method

.method public setStartIndex(I)V
    .locals 0

    .line 2318
    iput p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mStartIndex:I

    return-void
.end method

.method public setUserInteractionListener(Lcom/zui/gallery/ui/UserInteractionListener;)V
    .locals 0

    .line 490
    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mUIListener:Lcom/zui/gallery/ui/UserInteractionListener;

    return-void
.end method

.method public startMoveToOtherAnimation()V
    .locals 3

    .line 424
    new-instance v0, Lcom/zui/gallery/ui/AlbumSetSlotView$MoveToOtherAnimation;

    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mRenderer:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    iget-object v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-direct {v0, p0, v1, v2}, Lcom/zui/gallery/ui/AlbumSetSlotView$MoveToOtherAnimation;-><init>(Lcom/zui/gallery/ui/AlbumSetSlotView;Lcom/zui/gallery/ui/AlbumSetSlotRenderer;Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;)V

    iput-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mAnimation:Lcom/zui/gallery/ui/AlbumSetSlotView$SlotAnimation;

    .line 425
    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView$SlotAnimation;->start()V

    .line 426
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->access$500(Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {p0}, Lcom/zui/gallery/ui/AlbumSetSlotView;->invalidate()V

    :cond_0
    return-void
.end method

.method public startOtherFoderUpHideAnimation()V
    .locals 3

    .line 2408
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mUpHideFoderAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    sget-boolean v1, Lcom/zui/gallery/ui/AlbumSetSlotView;->OTHER_FOLDERS_IS_VISIBLE:Z

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->startUpHideFolderAnimation(Lcom/zui/gallery/data/Path;Landroid/animation/Animator$AnimatorListener;Z)Lcom/zui/gallery/ui/GLView$BaseAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mUpHideFolderAnimation:Lcom/zui/gallery/ui/GLView$BaseAnimation;

    return-void
.end method

.method public startReorderAnimation()V
    .locals 3

    .line 431
    new-instance v0, Lcom/zui/gallery/ui/AlbumSetSlotView$ReorderAnimation;

    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mRenderer:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    iget-object v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-direct {v0, p0, v1, v2}, Lcom/zui/gallery/ui/AlbumSetSlotView$ReorderAnimation;-><init>(Lcom/zui/gallery/ui/AlbumSetSlotView;Lcom/zui/gallery/ui/AlbumSetSlotRenderer;Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;)V

    iput-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mAnimation:Lcom/zui/gallery/ui/AlbumSetSlotView$SlotAnimation;

    .line 432
    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView$SlotAnimation;->start()V

    .line 433
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->access$500(Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {p0}, Lcom/zui/gallery/ui/AlbumSetSlotView;->invalidate()V

    :cond_0
    return-void
.end method

.method public startRisingAnimation()V
    .locals 1

    .line 417
    new-instance v0, Lcom/zui/gallery/ui/AlbumSetSlotView$RisingAnimation;

    invoke-direct {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView$RisingAnimation;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mAnimation:Lcom/zui/gallery/ui/AlbumSetSlotView$SlotAnimation;

    .line 418
    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView$SlotAnimation;->start()V

    .line 419
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->access$500(Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {p0}, Lcom/zui/gallery/ui/AlbumSetSlotView;->invalidate()V

    :cond_0
    return-void
.end method

.method public startScatteringAnimation(Lcom/zui/gallery/ui/RelativePosition;)V
    .locals 1

    .line 410
    new-instance v0, Lcom/zui/gallery/ui/AlbumSetSlotView$ScatteringAnimation;

    invoke-direct {v0, p1}, Lcom/zui/gallery/ui/AlbumSetSlotView$ScatteringAnimation;-><init>(Lcom/zui/gallery/ui/RelativePosition;)V

    iput-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mAnimation:Lcom/zui/gallery/ui/AlbumSetSlotView$SlotAnimation;

    .line 411
    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView$SlotAnimation;->start()V

    .line 412
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-static {p1}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->access$500(Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 413
    invoke-virtual {p0}, Lcom/zui/gallery/ui/AlbumSetSlotView;->invalidate()V

    :cond_0
    return-void
.end method

.method public startSelectionAnimation(Lcom/zui/gallery/data/Path;Z)V
    .locals 1

    .line 2403
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->startScaleAnimation(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/ui/GLView$BaseAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mScaleAnimation:Lcom/zui/gallery/ui/GLView$BaseAnimation;

    .line 2404
    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/ui/AlbumSetSlotView;->startAlpahAnimation(Lcom/zui/gallery/data/Path;Z)Lcom/zui/gallery/ui/GLView$BaseAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mAlphaAnimation:Lcom/zui/gallery/ui/GLView$BaseAnimation;

    return-void
.end method

.method public updateLayoutCount()V
    .locals 1

    .line 2449
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    if-eqz v0, :cond_0

    .line 2450
    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->access$100(Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;)V

    :cond_0
    return-void
.end method
