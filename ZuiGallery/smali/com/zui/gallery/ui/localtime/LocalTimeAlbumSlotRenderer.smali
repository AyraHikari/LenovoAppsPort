.class public Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;
.super Lcom/zui/gallery/ui/AbstractSlotRenderer;
.source "LocalTimeAlbumSlotRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$MyDataModelListener;,
        Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;,
        Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LocalTimeSlotFilter;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE_DAY:I = 0x40

.field private static final CACHE_SIZE_MONTH:I = 0x100

.field private static final TAG:Ljava/lang/String; = "AlbumView"


# instance fields
.field private final mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

.field private mAnimatePressedUp:Z

.field private mDataWindow:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

.field private mHighlightItemPath:Lcom/zui/gallery/data/Path;

.field private mInSelectionMode:Z

.field private mIsCloud:Z

.field protected mLabelSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

.field private mLabelWaitLoadingTexture:Lcom/zui/gallery/glrenderer/ColorTexture;

.field private final mPlaceholderColor:I

.field private mPressedIndex:I

.field private final mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

.field private mSlotFilter:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LocalTimeSlotFilter;

.field private final mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

.field private mViewModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

.field private final mWaitLoadingTexture:Lcom/zui/gallery/glrenderer/ColorTexture;

.field private mbAnimating:Z

.field private mnUpdateCnt:I


# direct methods
.method public constructor <init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;Lcom/zui/gallery/ui/SelectionManager;ILcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;)V
    .locals 2

    .line 132
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/AbstractSlotRenderer;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 78
    iput v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mPressedIndex:I

    const/4 v1, 0x0

    .line 80
    iput-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mHighlightItemPath:Lcom/zui/gallery/data/Path;

    const/4 v1, 0x0

    .line 651
    iput-boolean v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mbAnimating:Z

    .line 652
    iput v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mnUpdateCnt:I

    .line 133
    iput-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 134
    iput-object p2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    .line 135
    iput-object p3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    .line 136
    iput p4, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mPlaceholderColor:I

    .line 137
    iput-object p5, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mLabelSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    .line 138
    new-instance p1, Lcom/zui/gallery/glrenderer/ColorTexture;

    iget p2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mPlaceholderColor:I

    invoke-direct {p1, p2}, Lcom/zui/gallery/glrenderer/ColorTexture;-><init>(I)V

    iput-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mWaitLoadingTexture:Lcom/zui/gallery/glrenderer/ColorTexture;

    const/4 p2, 0x1

    .line 139
    invoke-virtual {p1, p2, p2}, Lcom/zui/gallery/glrenderer/ColorTexture;->setSize(II)V

    .line 140
    new-instance p1, Lcom/zui/gallery/glrenderer/ColorTexture;

    iget-object p3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mLabelSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    iget p3, p3, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->backgroundColor:I

    invoke-direct {p1, p3}, Lcom/zui/gallery/glrenderer/ColorTexture;-><init>(I)V

    iput-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mLabelWaitLoadingTexture:Lcom/zui/gallery/glrenderer/ColorTexture;

    .line 141
    invoke-virtual {p1, p2, p2}, Lcom/zui/gallery/glrenderer/ColorTexture;->setSize(II)V

    .line 142
    iget-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {p0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->getSelectionIconRect()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->setSelectionIconRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$100(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mnUpdateCnt:I

    return p0
.end method

.method static synthetic access$110(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;)I
    .locals 2

    .line 59
    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mnUpdateCnt:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mnUpdateCnt:I

    return v0
.end method

.method static synthetic access$120(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;I)I
    .locals 1

    .line 59
    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mnUpdateCnt:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mnUpdateCnt:I

    return v0
.end method

.method static synthetic access$200(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;)Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    return-object p0
.end method

.method static synthetic access$302(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mViewModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    return-object p1
.end method

.method private static checkLabelTexture(Lcom/zui/gallery/glrenderer/Texture;)Lcom/zui/gallery/glrenderer/Texture;
    .locals 1

    .line 609
    instance-of v0, p0, Lcom/zui/gallery/glrenderer/UploadedTexture;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/zui/gallery/glrenderer/UploadedTexture;

    .line 610
    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/UploadedTexture;->isUploading()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method private static checkTexture(Lcom/zui/gallery/glrenderer/Texture;)Lcom/zui/gallery/glrenderer/Texture;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 187
    :cond_0
    instance-of v1, p0, Lcom/zui/gallery/glrenderer/TiledTexture;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Lcom/zui/gallery/glrenderer/TiledTexture;

    invoke-virtual {v1}, Lcom/zui/gallery/glrenderer/TiledTexture;->isReady()Z

    move-result v1

    if-nez v1, :cond_1

    move-object p0, v0

    :cond_1
    return-object p0
.end method

.method private getNewPosition(IILandroid/graphics/Rect;IILandroidx/collection/ArrayMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/graphics/Rect;",
            "II",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 661
    invoke-virtual {p6}, Landroidx/collection/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 665
    invoke-virtual {p6, v0}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 666
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p6, v2}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 667
    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 668
    iput p2, p3, Landroid/graphics/Rect;->top:I

    .line 670
    :goto_0
    invoke-virtual {p6}, Landroidx/collection/ArrayMap;->size()I

    move-result p2

    if-ge v0, p2, :cond_2

    .line 671
    invoke-virtual {p6, v0}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p6, p2}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    .line 672
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 674
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    sub-int/2addr v2, v1

    .line 675
    rem-int/lit8 p1, v2, 0x4

    mul-int/2addr p1, p4

    iput p1, p3, Landroid/graphics/Rect;->left:I

    .line 676
    iget p1, p3, Landroid/graphics/Rect;->top:I

    div-int/lit8 v2, v2, 0x4

    mul-int/2addr v2, p5

    add-int/2addr p1, v2

    iput p1, p3, Landroid/graphics/Rect;->top:I

    return-void

    .line 680
    :cond_1
    iget p2, p3, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v1

    mul-int/2addr v2, p5

    add-int/2addr p2, v2

    iput p2, p3, Landroid/graphics/Rect;->top:I

    .line 681
    iget p2, p3, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {v2}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->getLableHeight()I

    move-result v2

    add-int/2addr p2, v2

    iput p2, p3, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private removeItemAnim(IIZLcom/zui/gallery/anim/GLAnimation$AnimationListener;)V
    .locals 8

    .line 731
    iget-object p3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {p3, p2}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object p3

    .line 732
    new-instance v7, Lcom/zui/gallery/anim/DeleteSpec;

    invoke-direct {v7}, Lcom/zui/gallery/anim/DeleteSpec;-><init>()V

    .line 734
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    iget v4, p3, Landroid/graphics/Rect;->bottom:I

    iget-object p3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {p3}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->getWidth()I

    move-result p3

    int-to-float p3, p3

    const v0, 0x3f451eb8    # 0.77f

    mul-float/2addr p3, v0

    float-to-int v5, p3

    iget-object p3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {p3}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->getScrollY()I

    move-result p3

    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->getHeight()I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 v6, p3, -0x1

    const/4 v1, 0x1

    move-object v0, v7

    move v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/zui/gallery/anim/DeleteSpec;->setPoint(ZIIIII)V

    .line 735
    new-instance p1, Lcom/zui/gallery/anim/GLAnimation;

    invoke-direct {p1, v7}, Lcom/zui/gallery/anim/GLAnimation;-><init>(Lcom/zui/gallery/anim/GlAnimaionSpec;)V

    .line 736
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "---LocalTimeAlbumSlotRenderer---removeItemAnim---listener:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v0, "xiaodl"

    invoke-static {v0, p3}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_0

    const/16 p3, 0x46

    .line 738
    invoke-virtual {p1, p4, p3}, Lcom/zui/gallery/anim/GLAnimation;->setAnimationListener(Lcom/zui/gallery/anim/GLAnimation$AnimationListener;I)V

    .line 741
    :cond_0
    iget-object p3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {p0, p3, p2, p1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->startGLAnimation(Lcom/zui/gallery/ui/GLView;ILcom/zui/gallery/anim/GLAnimation;)V

    return-void
.end method

.method private renderContinuousLable(Lcom/zui/gallery/glrenderer/GLCanvas;IIIILcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;)V
    .locals 0

    return-void
.end method

.method private renderOverlay(Lcom/zui/gallery/glrenderer/GLCanvas;ILcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;II)I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 463
    iget-boolean v2, p3, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->isContinuousCover:Z

    if-eqz v2, :cond_0

    iget v2, p3, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->rotation:I

    if-nez v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 465
    :goto_0
    iget v3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mPressedIndex:I

    if-ne v3, p2, :cond_3

    .line 466
    iget-boolean p2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mAnimatePressedUp:Z

    if-eqz p2, :cond_2

    .line 467
    invoke-virtual {p0, p1, p4, p5}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->drawPressedUpFrame(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    const/4 p1, 0x2

    .line 469
    invoke-virtual {p0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->isPressedUpFrameFinished()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 470
    iput-boolean v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mAnimatePressedUp:Z

    const/4 p2, -0x1

    .line 471
    iput p2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mPressedIndex:I

    :cond_1
    move v1, p1

    goto/16 :goto_1

    .line 474
    :cond_2
    invoke-virtual {p0, p1, p4, p5}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->drawPressedFrame(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 475
    iget-object p2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    iget-object p3, p3, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->path:Lcom/zui/gallery/data/Path;

    invoke-virtual {p2, p3}, Lcom/zui/gallery/ui/SelectionManager;->isItemSelected(Lcom/zui/gallery/data/Path;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 476
    invoke-virtual {p0, p1, p4, p5, v2}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->drawSelectedIconFrame(Lcom/zui/gallery/glrenderer/GLCanvas;IIZ)V

    goto/16 :goto_1

    .line 479
    :cond_3
    iget-object p2, p3, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->path:Lcom/zui/gallery/data/Path;

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mHighlightItemPath:Lcom/zui/gallery/data/Path;

    iget-object v3, p3, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->path:Lcom/zui/gallery/data/Path;

    if-ne p2, v3, :cond_4

    .line 480
    invoke-virtual {p0, p1, p4, p5}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->drawSelectedFrame(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 481
    iget-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    iget-object p2, p3, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->path:Lcom/zui/gallery/data/Path;

    invoke-virtual {p1, p2}, Lcom/zui/gallery/ui/SelectionManager;->isItemSelected(Lcom/zui/gallery/data/Path;)Z

    move-result p1

    goto/16 :goto_1

    .line 483
    :cond_4
    iget-boolean p2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mInSelectionMode:Z

    if-eqz p2, :cond_6

    .line 485
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!mbAnimating is "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mbAnimating:Z

    xor-int/2addr v0, v3

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "entry.path is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p3, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->path:Lcom/zui/gallery/data/Path;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " & selected is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    iget-object v3, p3, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->path:Lcom/zui/gallery/data/Path;

    .line 486
    invoke-virtual {v0, v3}, Lcom/zui/gallery/ui/SelectionManager;->isItemSelected(Lcom/zui/gallery/data/Path;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AlbumView"

    .line 485
    invoke-static {v0, p2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-boolean p2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mbAnimating:Z

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    iget-object v0, p3, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->path:Lcom/zui/gallery/data/Path;

    invoke-virtual {p2, v0}, Lcom/zui/gallery/ui/SelectionManager;->isItemSelected(Lcom/zui/gallery/data/Path;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 488
    invoke-virtual {p0, p1, p4, p5, v2}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->drawSelectedIconFrame(Lcom/zui/gallery/glrenderer/GLCanvas;IIZ)V

    goto :goto_1

    .line 490
    :cond_5
    iget-object p2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {p2}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->getAlphaAnimation()Lcom/zui/gallery/ui/GLView$BaseAnimation;

    move-result-object p2

    .line 492
    invoke-virtual {p0, p1, p4, p5}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->drawUnSelectedIconFrame(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 494
    iget-boolean v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mbAnimating:Z

    if-nez v0, :cond_7

    if-eqz p2, :cond_7

    iget-object v0, p3, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->path:Lcom/zui/gallery/data/Path;

    if-eqz v0, :cond_7

    iget-object p3, p3, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->path:Lcom/zui/gallery/data/Path;

    invoke-virtual {p2}, Lcom/zui/gallery/ui/GLView$BaseAnimation;->getSelectPath()Lcom/zui/gallery/data/Path;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-virtual {p2}, Lcom/zui/gallery/ui/GLView$BaseAnimation;->isActive()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 495
    invoke-virtual {p0, p1, p4, p5, v2}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->drawSelectedIconFrame(Lcom/zui/gallery/glrenderer/GLCanvas;IIZ)V

    goto :goto_1

    :cond_6
    if-eqz p3, :cond_7

    .line 500
    iget-object p2, p3, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->path:Lcom/zui/gallery/data/Path;

    if-eqz p2, :cond_7

    .line 502
    iget-object p3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {p3}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->getLongTapItemPath()Lcom/zui/gallery/data/Path;

    move-result-object p3

    if-eqz p3, :cond_7

    .line 503
    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 504
    invoke-virtual {p0, p1, p4, p5, v2}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->drawSelectedFrame(Lcom/zui/gallery/glrenderer/GLCanvas;IIZ)V

    .line 505
    invoke-virtual {p0, p1, p4, p5, v2}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->drawSelectedFrameBorder(Lcom/zui/gallery/glrenderer/GLCanvas;IIZ)V

    :cond_7
    :goto_1
    return v1
.end method


# virtual methods
.method public destory()V
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mDataWindow:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->destory()V

    return-void
.end method

.method public getItemPath(I)Lcom/zui/gallery/data/Path;
    .locals 1

    .line 643
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mDataWindow:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->get(I)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 647
    :cond_0
    iget-object p1, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->path:Lcom/zui/gallery/data/Path;

    return-object p1
.end method

.method public inSelectAllMode()Z
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    if-eqz v0, :cond_0

    .line 624
    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->inSelectAllMode()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public inSelectModel()Z
    .locals 1

    .line 616
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    if-eqz v0, :cond_0

    .line 617
    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isInCameraAlbum()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isItemSelect(Lcom/zui/gallery/data/Path;)Z
    .locals 1

    .line 638
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/SelectionManager;->isItemSelected(Lcom/zui/gallery/data/Path;)Z

    move-result p1

    return p1
.end method

.method public isSelectAll()Z
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    if-eqz v0, :cond_0

    .line 631
    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->isSelectAll()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$renderLabel$0$LocalTimeAlbumSlotRenderer(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;)V
    .locals 6

    .line 338
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/app/StateManager;->getTopState()Lcom/zui/gallery/app/ActivityState;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getActivityOrientation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/zui/gallery/util/DeviceTypeUtils;->isPad(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTitleBar()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08036d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 341
    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06034a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 342
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 343
    iget-object v1, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;->timeEntry:Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;

    iget-object v1, v1, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->timeName:Ljava/lang/String;

    .line 344
    iget-object v2, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;->timeEntry:Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;

    iget-object v2, v2, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->timeName:Ljava/lang/String;

    .line 345
    iget-object v3, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;->locationInfo:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;->locationInfo:Ljava/lang/String;

    const-string v4, "confirm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;->locationInfo:Ljava/lang/String;

    const-string v4, "execute"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;->locationInfo:Ljava/lang/String;

    const-string/jumbo v4, "waiting"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 346
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;->timeEntry:Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;

    iget-object v3, v3, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->timeName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;->locationInfo:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 348
    :cond_0
    new-instance p1, Landroid/text/SpannableString;

    invoke-direct {p1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 349
    new-instance v3, Lcom/zui/gallery/selfwidget/VerticalCenterSpan;

    iget-object v4, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/high16 v5, 0x41500000    # 13.0f

    invoke-static {v4, v5}, Lcom/zui/gallery/ui/videoslow/DisplayUtil;->sp2px(Landroid/content/Context;F)F

    move-result v4

    invoke-direct {v3, v4}, Lcom/zui/gallery/selfwidget/VerticalCenterSpan;-><init>(F)V

    .line 350
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x21

    invoke-virtual {p1, v3, v1, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 351
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public onSlotSizeChanged(II)V
    .locals 1

    .line 599
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mDataWindow:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    if-eqz v0, :cond_0

    .line 600
    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->onSlotSizeChanged(II)V

    :cond_0
    return-void
.end method

.method public onVisibleLabelRangeChaged(II)V
    .locals 1

    .line 592
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mDataWindow:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    if-eqz v0, :cond_0

    .line 593
    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->setActiveLabel(II)V

    :cond_0
    return-void
.end method

.method public onVisibleRangeChanged(II)V
    .locals 1

    .line 586
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mDataWindow:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    if-eqz v0, :cond_0

    .line 587
    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->setActiveWindow(II)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 558
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mDataWindow:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->pause()V

    .line 559
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->stopScrolling()V

    return-void
.end method

.method public prepareDrawing()V
    .locals 1

    .line 568
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mInSelectionMode:Z

    return-void
.end method

.method public removeAnim(Lcom/zui/gallery/anim/GLAnimation$AnimationListener;)V
    .locals 12

    .line 686
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->getVisibleStart()I

    move-result v0

    .line 687
    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->getVisibleEnd()I

    move-result v1

    .line 688
    iget-object v2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {v2}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->getTimeLayout()Ljava/util/List;

    move-result-object v2

    .line 689
    iget-object v3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {v3}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->getVisibleLabelEnd()I

    move-result v3

    const/4 v4, 0x0

    .line 690
    iput v4, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mnUpdateCnt:I

    .line 694
    iget-object v5, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {v5}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {v6}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Lcom/zui/gallery/anim/DeleteSpec;->setScreenSize(II)V

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    add-int/lit8 v7, v3, 0x1

    const-string/jumbo v8, "xiaodl"

    if-ge v4, v7, :cond_6

    .line 698
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zui/gallery/ui/localtime/GridLayout;

    .line 700
    invoke-virtual {v7}, Lcom/zui/gallery/ui/localtime/GridLayout;->getStartIndex()I

    move-result v9

    :goto_1
    invoke-virtual {v7}, Lcom/zui/gallery/ui/localtime/GridLayout;->getEndIndex()I

    move-result v10

    add-int/2addr v10, v6

    if-ge v9, v10, :cond_5

    add-int/lit8 v10, v1, 0x8

    const/16 v11, 0x1c

    if-le v5, v11, :cond_0

    goto :goto_2

    :cond_0
    move v11, v5

    :goto_2
    add-int/2addr v10, v11

    if-le v9, v10, :cond_1

    goto :goto_4

    .line 705
    :cond_1
    iget-object v10, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mDataWindow:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    invoke-virtual {v10, v9}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->get(I)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 707
    iget-object v11, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    if-nez v11, :cond_2

    goto :goto_3

    .line 711
    :cond_2
    iget-object v10, v10, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->path:Lcom/zui/gallery/data/Path;

    invoke-virtual {v11, v10}, Lcom/zui/gallery/ui/SelectionManager;->isItemSelected(Lcom/zui/gallery/data/Path;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 712
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "---LocalTimeAlbumSlotRenderer---i:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " visibleStart:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " visibleEnd:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lt v9, v0, :cond_3

    if-gt v9, v1, :cond_3

    .line 714
    invoke-direct {p0, v5, v9, v6, p1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->removeItemAnim(IIZLcom/zui/gallery/anim/GLAnimation$AnimationListener;)V

    const/4 p1, 0x0

    :cond_3
    add-int/lit8 v5, v5, 0x1

    :cond_4
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_5
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 723
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---LocalTimeAlbumSlotRenderer---lister:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_7

    .line 725
    invoke-interface {p1}, Lcom/zui/gallery/anim/GLAnimation$AnimationListener;->onComplete()V

    :cond_7
    return-void
.end method

.method public renderEmptyPic(Lcom/zui/gallery/glrenderer/GLCanvas;Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x2

    .line 514
    invoke-interface {p1, v0}, Lcom/zui/gallery/glrenderer/GLCanvas;->save(I)V

    const/4 v0, 0x6

    .line 519
    invoke-virtual {p0, p1, p2, v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->drawEmptyIcon(Lcom/zui/gallery/glrenderer/GLCanvas;Landroid/graphics/Rect;I)V

    .line 520
    invoke-interface {p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->restore()V

    return-void
.end method

.method protected renderLabel(Lcom/zui/gallery/glrenderer/GLCanvas;IIIZ)I
    .locals 24

    move-object/from16 v6, p0

    move/from16 v0, p2

    .line 332
    iget-object v1, v6, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mDataWindow:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->getTimeLabel(I)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;

    move-result-object v1

    const/4 v7, 0x0

    if-nez v1, :cond_0

    return v7

    .line 334
    :cond_0
    iget-object v2, v1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;->labelTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-static {v2}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->checkLabelTexture(Lcom/zui/gallery/glrenderer/Texture;)Lcom/zui/gallery/glrenderer/Texture;

    move-result-object v2

    .line 335
    iget-object v3, v1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;->locationTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-static {v3}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->checkLabelTexture(Lcom/zui/gallery/glrenderer/Texture;)Lcom/zui/gallery/glrenderer/Texture;

    move-result-object v8

    .line 337
    iget-object v3, v6, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    new-instance v4, Lcom/zui/gallery/ui/localtime/-$$Lambda$LocalTimeAlbumSlotRenderer$pG14mfbVMie8McD64p9x24_iCqg;

    invoke-direct {v4, v6, v1}, Lcom/zui/gallery/ui/localtime/-$$Lambda$LocalTimeAlbumSlotRenderer$pG14mfbVMie8McD64p9x24_iCqg;-><init>(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;)V

    invoke-virtual {v3, v4}, Lcom/zui/gallery/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    if-nez v2, :cond_1

    .line 358
    iget-object v2, v6, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mLabelWaitLoadingTexture:Lcom/zui/gallery/glrenderer/ColorTexture;

    move-object v15, v2

    move v9, v7

    goto :goto_0

    :cond_1
    move v9, v1

    move-object v15, v2

    .line 362
    :goto_0
    invoke-static {}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->getBorderSize()I

    move-result v10

    .line 363
    invoke-static {}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->getBorderSize2()I

    move-result v16

    .line 364
    iget-object v2, v6, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mLabelSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    iget v11, v2, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    sub-int v2, p4, v11

    add-int/2addr v2, v10

    .line 367
    iget-object v3, v6, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    .line 368
    iget v3, v14, Landroid/content/res/Configuration;->orientation:I

    const/4 v13, 0x2

    if-ne v3, v13, :cond_2

    .line 369
    iget-object v3, v6, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mLabelSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    iget v3, v3, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->leftMargin:I

    add-int/lit8 v2, v2, -0x6

    move/from16 v20, v2

    move/from16 v23, v3

    goto :goto_1

    :cond_2
    move/from16 v20, v2

    move/from16 v23, v7

    .line 374
    :goto_1
    iget-object v2, v6, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {v2, v0}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->isClipLabel(I)Z

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 378
    iget-object v0, v6, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v0, 0x42500000    # 52.0f

    iget-object v5, v6, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v1, v0, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v5, v0, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {v0 .. v5}, Lcom/zui/gallery/ui/AbstractSlotRenderer;->renderLandScapeCover(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    .line 379
    iget-object v0, v6, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getConfiguration()Landroid/content/res/Configuration;

    iget-object v0, v6, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getActivityOrientation()I

    move-result v0

    if-ne v13, v0, :cond_3

    .line 380
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->inSelectModel()Z

    move-result v0

    if-eqz v0, :cond_3

    return v7

    .line 384
    :cond_3
    iget-object v0, v6, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mLabelWaitLoadingTexture:Lcom/zui/gallery/glrenderer/ColorTexture;

    const/16 v19, 0x0

    add-int v1, p3, v10

    add-int v21, v1, v10

    move-object/from16 v17, v0

    move-object/from16 v18, p1

    move/from16 v22, v11

    invoke-virtual/range {v17 .. v22}, Lcom/zui/gallery/glrenderer/ColorTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    if-eqz v9, :cond_a

    .line 387
    invoke-interface {v15}, Lcom/zui/gallery/glrenderer/Texture;->getWidth()I

    move-result v0

    .line 388
    invoke-interface {v15}, Lcom/zui/gallery/glrenderer/Texture;->getHeight()I

    move-result v1

    sub-int v2, p4, v1

    add-int/lit8 v3, v2, -0x15

    .line 390
    iget v4, v14, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v13, :cond_4

    add-int/lit8 v2, v2, -0x34

    goto :goto_2

    :cond_4
    move v2, v3

    .line 394
    :goto_2
    iget v3, v14, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v13, :cond_6

    iget-object v3, v6, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/zui/gallery/util/DeviceTypeUtils;->isPad(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_3

    :cond_5
    move v4, v13

    move-object v3, v14

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v11, 0x0

    add-int v3, v0, v10

    add-int/2addr v3, v10

    move-object v9, v15

    move-object/from16 v10, p1

    move v12, v2

    move v4, v13

    move v13, v3

    move-object v3, v14

    move v14, v1

    .line 395
    invoke-interface/range {v9 .. v14}, Lcom/zui/gallery/glrenderer/Texture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    .line 398
    :goto_4
    iget-object v5, v6, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mLabelSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    iget v5, v5, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->lineOffsetX:I

    add-int/2addr v0, v5

    .line 399
    iget-object v5, v6, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mLabelSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    iget v5, v5, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->lineOffsetY:I

    .line 400
    iget-object v5, v6, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mLabelSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    iget v5, v5, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->lineMarginRight:I

    .line 401
    iget-boolean v5, v6, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mInSelectionMode:Z

    if-eqz v5, :cond_7

    .line 402
    iget-object v0, v6, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mLabelSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    iget v0, v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->lineMarginRightSelect:I

    goto :goto_6

    :cond_7
    if-eqz v8, :cond_a

    .line 406
    iget-object v5, v6, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v5}, Lcom/zui/gallery/util/GalleryUtils;->refresh(Landroid/content/Context;)V

    .line 408
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->getScreenWidth()I

    move-result v5

    sub-int/2addr v5, v0

    .line 410
    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v4, :cond_8

    .line 412
    iget-object v0, v6, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/zui/gallery/util/DeviceTypeUtils;->isPad(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 413
    invoke-interface {v15}, Lcom/zui/gallery/glrenderer/Texture;->getHeight()I

    move-result v0

    add-int v11, v2, v0

    .line 414
    invoke-interface {v8}, Lcom/zui/gallery/glrenderer/Texture;->getWidth()I

    move-result v12

    invoke-interface {v8}, Lcom/zui/gallery/glrenderer/Texture;->getHeight()I

    move-result v13

    move-object/from16 v9, p1

    move/from16 v10, v23

    invoke-interface/range {v8 .. v13}, Lcom/zui/gallery/glrenderer/Texture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    goto :goto_6

    .line 417
    :cond_8
    invoke-interface {v8}, Lcom/zui/gallery/glrenderer/Texture;->getWidth()I

    move-result v3

    if-gt v5, v3, :cond_9

    goto :goto_5

    :cond_9
    invoke-interface {v8}, Lcom/zui/gallery/glrenderer/Texture;->getWidth()I

    move-result v3

    sub-int/2addr v5, v3

    sub-int v5, v5, v16

    add-int/2addr v0, v5

    :goto_5
    move v10, v0

    .line 418
    invoke-interface {v8}, Lcom/zui/gallery/glrenderer/Texture;->getWidth()I

    move-result v12

    move-object/from16 v9, p1

    move v11, v2

    move v13, v1

    invoke-interface/range {v8 .. v13}, Lcom/zui/gallery/glrenderer/Texture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    .line 427
    :cond_a
    :goto_6
    iget-boolean v0, v6, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mInSelectionMode:Z

    if-eqz v0, :cond_b

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v15

    move-object/from16 v10, p1

    .line 428
    invoke-interface/range {v9 .. v14}, Lcom/zui/gallery/glrenderer/Texture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    :cond_b
    return v7
.end method

.method public renderSlot(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)I
    .locals 15

    move-object v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p4

    move/from16 v11, p5

    .line 194
    iget-object v0, v7, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mSlotFilter:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LocalTimeSlotFilter;

    const/4 v12, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v9}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LocalTimeSlotFilter;->acceptSlot(I)Z

    move-result v0

    if-nez v0, :cond_0

    return v12

    .line 196
    :cond_0
    iget-object v0, v7, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mDataWindow:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    invoke-virtual {v0, v9}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->get(I)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

    move-result-object v13

    if-nez v13, :cond_1

    return v12

    .line 200
    :cond_1
    iget-object v0, v13, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->content:Lcom/zui/gallery/glrenderer/Texture;

    invoke-static {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->checkTexture(Lcom/zui/gallery/glrenderer/Texture;)Lcom/zui/gallery/glrenderer/Texture;

    move-result-object v0

    if-nez v0, :cond_2

    .line 202
    iget-object v0, v7, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mWaitLoadingTexture:Lcom/zui/gallery/glrenderer/ColorTexture;

    const/4 v1, 0x1

    .line 203
    iput-boolean v1, v13, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->isWaitDisplayed:Z

    goto :goto_0

    .line 204
    :cond_2
    iget-boolean v1, v13, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->isWaitDisplayed:Z

    if-eqz v1, :cond_3

    .line 205
    iput-boolean v12, v13, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->isWaitDisplayed:Z

    .line 206
    new-instance v0, Lcom/zui/gallery/glrenderer/FadeInTexture;

    iget v1, v7, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mPlaceholderColor:I

    iget-object v2, v13, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-direct {v0, v1, v2}, Lcom/zui/gallery/glrenderer/FadeInTexture;-><init>(ILcom/zui/gallery/glrenderer/BitmapTexture;)V

    .line 207
    iput-object v0, v13, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->content:Lcom/zui/gallery/glrenderer/Texture;

    :cond_3
    :goto_0
    move-object v14, v0

    .line 210
    iget v6, v13, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->rotation:I

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v3, v14

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->drawContent(Lcom/zui/gallery/glrenderer/GLCanvas;ILcom/zui/gallery/glrenderer/Texture;III)V

    .line 212
    instance-of v0, v14, Lcom/zui/gallery/glrenderer/FadeInTexture;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    check-cast v14, Lcom/zui/gallery/glrenderer/FadeInTexture;

    .line 213
    invoke-virtual {v14}, Lcom/zui/gallery/glrenderer/FadeInTexture;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_4

    move v12, v1

    .line 218
    :cond_4
    iget v0, v13, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->mediaType:I

    const/4 v2, 0x4

    const/16 v3, 0xd

    if-eq v0, v2, :cond_f

    iget v0, v13, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->mediaType:I

    const/4 v2, 0x6

    if-eq v0, v2, :cond_f

    iget v0, v13, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->mediaType:I

    const/16 v2, 0x13

    if-eq v0, v2, :cond_f

    iget v0, v13, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->mediaType:I

    if-eq v0, v3, :cond_f

    iget-object v0, v13, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->item:Lcom/zui/gallery/data/MediaItem;

    instance-of v0, v0, Lcom/zui/gallery/data/CloudImage;

    if-eqz v0, :cond_5

    iget-object v0, v13, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->item:Lcom/zui/gallery/data/MediaItem;

    check-cast v0, Lcom/zui/gallery/data/CloudImage;

    .line 222
    invoke-virtual {v0}, Lcom/zui/gallery/data/CloudImage;->isCloudVideo()Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_1

    .line 237
    :cond_5
    iget v0, v13, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->mediaType:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_7

    .line 238
    iget-object v0, v7, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mViewModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    sget-object v1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->DAY:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    if-ne v0, v1, :cond_6

    .line 239
    invoke-virtual {p0, v8, v10, v11}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->drawFastVideoIcon(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 241
    :cond_6
    iget-object v0, v13, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->durationTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-static {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->checkTexture(Lcom/zui/gallery/glrenderer/Texture;)Lcom/zui/gallery/glrenderer/Texture;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 242
    iget-object v1, v7, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mViewModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    sget-object v2, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->DAY:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    if-ne v1, v2, :cond_12

    .line 243
    invoke-virtual {p0, v8, v10, v11, v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->drawVideoDuration(Lcom/zui/gallery/glrenderer/GLCanvas;IILcom/zui/gallery/glrenderer/Texture;)V

    goto/16 :goto_2

    .line 245
    :cond_7
    iget v0, v13, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->mediaType:I

    const/16 v2, 0xa

    if-ne v0, v2, :cond_9

    .line 246
    iget-object v0, v7, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mViewModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    sget-object v1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->DAY:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    if-ne v0, v1, :cond_8

    .line 247
    invoke-virtual {p0, v8, v10, v11}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->drawSlowVideoIcon(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 249
    :cond_8
    iget-object v0, v13, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->durationTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-static {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->checkTexture(Lcom/zui/gallery/glrenderer/Texture;)Lcom/zui/gallery/glrenderer/Texture;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 250
    iget-object v1, v7, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mViewModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    sget-object v2, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->DAY:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    if-ne v1, v2, :cond_12

    .line 251
    invoke-virtual {p0, v8, v10, v11, v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->drawVideoDuration(Lcom/zui/gallery/glrenderer/GLCanvas;IILcom/zui/gallery/glrenderer/Texture;)V

    goto/16 :goto_2

    .line 253
    :cond_9
    iget v0, v13, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->mediaType:I

    const/16 v2, 0xb

    if-ne v0, v2, :cond_b

    .line 254
    iget-object v0, v7, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mViewModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    sget-object v1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->DAY:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    if-ne v0, v1, :cond_a

    .line 255
    invoke-virtual {p0, v8, v10, v11}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->drawShotVideoIcon(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 257
    :cond_a
    iget-object v0, v13, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->durationTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-static {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->checkTexture(Lcom/zui/gallery/glrenderer/Texture;)Lcom/zui/gallery/glrenderer/Texture;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 258
    iget-object v1, v7, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mViewModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    sget-object v2, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->DAY:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    if-ne v1, v2, :cond_12

    .line 259
    invoke-virtual {p0, v8, v10, v11, v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->drawVideoDuration(Lcom/zui/gallery/glrenderer/GLCanvas;IILcom/zui/gallery/glrenderer/Texture;)V

    goto/16 :goto_2

    .line 261
    :cond_b
    iget v0, v13, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->mediaType:I

    const/16 v2, 0x12

    if-ne v0, v2, :cond_c

    .line 262
    iget-object v0, v7, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mViewModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    sget-object v1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->DAY:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    if-ne v0, v1, :cond_12

    .line 263
    invoke-virtual {p0, v8, v10, v11}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->drawNormalVideoIcon(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 264
    iget-object v0, v13, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->durationTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-static {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->checkTexture(Lcom/zui/gallery/glrenderer/Texture;)Lcom/zui/gallery/glrenderer/Texture;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 266
    invoke-virtual {p0, v8, v10, v11, v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->drawVideoDuration(Lcom/zui/gallery/glrenderer/GLCanvas;IILcom/zui/gallery/glrenderer/Texture;)V

    goto :goto_2

    .line 270
    :cond_c
    iget-boolean v0, v13, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->isGif:Z

    if-eqz v0, :cond_d

    .line 272
    invoke-virtual {p0, v8, v10, v11}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->drawGifIcon(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    goto :goto_2

    .line 273
    :cond_d
    iget v0, v13, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->mediaType:I

    if-ne v0, v1, :cond_12

    .line 274
    iget-object v0, v7, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mViewModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    sget-object v1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->DAY:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    if-ne v0, v1, :cond_e

    iget-object v0, v13, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->item:Lcom/zui/gallery/data/MediaItem;

    invoke-static {v0}, Lcom/zui/gallery/util/GalleryUtils;->isPanoImage(Lcom/zui/gallery/data/MediaItem;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 275
    invoke-virtual {p0, v8, v10, v11}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->drawPanoIcon(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 278
    :cond_e
    iget-object v0, v7, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mViewModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    sget-object v1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->DAY:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    if-ne v0, v1, :cond_12

    iget-object v0, v13, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->item:Lcom/zui/gallery/data/MediaItem;

    invoke-static {v0}, Lcom/zui/gallery/util/GalleryUtils;->isMicroVideoNameFormat(Lcom/zui/gallery/data/MediaItem;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 279
    invoke-virtual {p0, v8, v10, v11}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->drawLivePhotoIcon(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    goto :goto_2

    .line 223
    :cond_f
    :goto_1
    iget-object v0, v7, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mViewModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    sget-object v1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->DAY:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    if-ne v0, v1, :cond_10

    iget v0, v13, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->mediaType:I

    if-eq v0, v3, :cond_10

    .line 224
    invoke-virtual {p0, v8, v10, v11}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->drawNormalVideoIcon(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 227
    :cond_10
    iget-object v0, v7, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mViewModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    sget-object v1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->DAY:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    if-ne v0, v1, :cond_11

    iget v0, v13, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->mediaType:I

    if-ne v0, v3, :cond_11

    .line 228
    invoke-virtual {p0, v8, v10, v11}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->drawNormalVideoHDRIcon(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 232
    :cond_11
    iget-object v0, v13, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->durationTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-static {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->checkTexture(Lcom/zui/gallery/glrenderer/Texture;)Lcom/zui/gallery/glrenderer/Texture;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 233
    iget-object v1, v7, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mViewModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    sget-object v2, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->DAY:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    if-ne v1, v2, :cond_12

    .line 234
    invoke-virtual {p0, v8, v10, v11, v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->drawVideoDuration(Lcom/zui/gallery/glrenderer/GLCanvas;IILcom/zui/gallery/glrenderer/Texture;)V

    .line 287
    :cond_12
    :goto_2
    iget-boolean v0, v13, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->isContinuousCover:Z

    if-eqz v0, :cond_13

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v13

    .line 288
    invoke-direct/range {v0 .. v6}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->renderContinuousLable(Lcom/zui/gallery/glrenderer/GLCanvas;IIIILcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;)V

    .line 289
    invoke-virtual {p0, v8, v10, v11}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->renderContinuousMark(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 293
    :cond_13
    iget-boolean v0, v13, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->isPanorama:Z

    if-eqz v0, :cond_14

    .line 294
    invoke-virtual {p0, v8, v10, v11}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->drawPanoramaIcon(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 297
    :cond_14
    invoke-virtual {p0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->inSelectModel()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 298
    iget-object v0, v7, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->getAlphaAnimation()Lcom/zui/gallery/ui/GLView$BaseAnimation;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 299
    iget-object v1, v13, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->path:Lcom/zui/gallery/data/Path;

    if-eqz v1, :cond_15

    iget-object v1, v13, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->path:Lcom/zui/gallery/data/Path;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/GLView$BaseAnimation;->getSelectPath()Lcom/zui/gallery/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Lcom/zui/gallery/ui/GLView$BaseAnimation;->isActive()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 300
    invoke-virtual {v0, v8}, Lcom/zui/gallery/ui/GLView$BaseAnimation;->apply(Lcom/zui/gallery/glrenderer/GLCanvas;)V

    :cond_15
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v3, v13

    move/from16 v4, p4

    move/from16 v5, p5

    .line 304
    invoke-direct/range {v0 .. v5}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->renderOverlay(Lcom/zui/gallery/glrenderer/GLCanvas;ILcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;II)I

    move-result v0

    or-int/2addr v0, v12

    return v0
.end method

.method protected renderTime(Lcom/zui/gallery/glrenderer/GLCanvas;III)I
    .locals 7

    .line 314
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mDataWindow:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    invoke-virtual {v0, p2}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->getTimeLabel(I)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 317
    :cond_0
    iget-object p2, p2, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;->labelTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-static {p2}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->checkLabelTexture(Lcom/zui/gallery/glrenderer/Texture;)Lcom/zui/gallery/glrenderer/Texture;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 319
    invoke-static {}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->getBorderSize()I

    move-result p2

    .line 320
    iget-object v2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mLabelSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    iget v2, v2, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    .line 323
    invoke-interface {v1}, Lcom/zui/gallery/glrenderer/Texture;->getWidth()I

    move-result v2

    .line 324
    invoke-interface {v1}, Lcom/zui/gallery/glrenderer/Texture;->getHeight()I

    move-result v6

    sub-int/2addr p4, v6

    add-int/lit8 v4, p4, -0x15

    add-int/2addr v2, p2

    add-int v5, v2, p2

    move-object v2, p1

    move v3, p3

    .line 326
    invoke-interface/range {v1 .. v6}, Lcom/zui/gallery/glrenderer/Texture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    :cond_1
    return v0
.end method

.method public resume()V
    .locals 1

    .line 554
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mDataWindow:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->resume()V

    return-void
.end method

.method public setAnimating(Z)V
    .locals 0

    .line 654
    iput-boolean p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mbAnimating:Z

    return-void
.end method

.method public setHighlightItemPath(Lcom/zui/gallery/data/Path;)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mHighlightItemPath:Lcom/zui/gallery/data/Path;

    if-ne v0, p1, :cond_0

    return-void

    .line 167
    :cond_0
    iput-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mHighlightItemPath:Lcom/zui/gallery/data/Path;

    .line 168
    iget-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->invalidate()V

    return-void
.end method

.method public setIsCloud(Z)V
    .locals 0

    .line 581
    iput-boolean p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mIsCloud:Z

    return-void
.end method

.method public setLabelSpec(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;)V
    .locals 2

    .line 145
    iput-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mLabelSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    .line 146
    new-instance v0, Lcom/zui/gallery/glrenderer/ColorTexture;

    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mLabelSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    iget v1, v1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->backgroundColor:I

    invoke-direct {v0, v1}, Lcom/zui/gallery/glrenderer/ColorTexture;-><init>(I)V

    iput-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mLabelWaitLoadingTexture:Lcom/zui/gallery/glrenderer/ColorTexture;

    .line 147
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mDataWindow:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->setLabelSpec(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;)V

    :cond_0
    return-void
.end method

.method public setModel(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)V
    .locals 9

    .line 172
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mDataWindow:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->setListener(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$Listener;)V

    .line 174
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->setSlotCount(ILjava/util/List;Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;)Z

    .line 175
    iput-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mDataWindow:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    :cond_0
    if-eqz p1, :cond_1

    .line 178
    new-instance v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    iget-object v4, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v6, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mLabelSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    const/16 v7, 0x40

    const/16 v8, 0x100

    move-object v3, v0

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;II)V

    iput-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mDataWindow:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    .line 179
    new-instance v2, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$MyDataModelListener;

    invoke-direct {v2, p0, v1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$MyDataModelListener;-><init>(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$1;)V

    invoke-virtual {v0, v2}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->setListener(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$Listener;)V

    .line 180
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->size()I

    move-result v2

    invoke-virtual {p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->getViewModel()Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    move-result-object p1

    invoke-virtual {v0, v2, v1, p1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->setSlotCount(ILjava/util/List;Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;)Z

    :cond_1
    return-void
.end method

.method public setPressedIndex(I)V
    .locals 1

    .line 154
    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mPressedIndex:I

    if-ne v0, p1, :cond_0

    return-void

    .line 155
    :cond_0
    iput p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mPressedIndex:I

    .line 156
    iget-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->invalidate()V

    return-void
.end method

.method public setPressedUp()V
    .locals 2

    .line 160
    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mPressedIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 161
    iput-boolean v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mAnimatePressedUp:Z

    .line 162
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->invalidate()V

    return-void
.end method

.method public setSlotFilter(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LocalTimeSlotFilter;)V
    .locals 0

    .line 605
    iput-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->mSlotFilter:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LocalTimeSlotFilter;

    return-void
.end method
