.class public Lcom/zui/gallery/ui/AlbumSlotRenderer;
.super Lcom/zui/gallery/ui/AbstractSlotRenderer;
.source "AlbumSlotRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/ui/AlbumSlotRenderer$MyDataModelListener;,
        Lcom/zui/gallery/ui/AlbumSlotRenderer$LabelSpec;,
        Lcom/zui/gallery/ui/AlbumSlotRenderer$SlotFilter;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x60

.field private static final TAG:Ljava/lang/String; = "AlbumView"


# instance fields
.field private final mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

.field private mAnimatePressedUp:Z

.field private mDataWindow:Lcom/zui/gallery/ui/AlbumSlidingWindow;

.field private mHighlightItemPath:Lcom/zui/gallery/data/Path;

.field private mInSelectionMode:Z

.field protected final mLabelSpec:Lcom/zui/gallery/ui/AlbumSlotRenderer$LabelSpec;

.field private final mPlaceholderColor:I

.field private mPressedIndex:I

.field private final mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

.field private mSlotFilter:Lcom/zui/gallery/ui/AlbumSlotRenderer$SlotFilter;

.field private final mSlotView:Lcom/zui/gallery/ui/SlotView;

.field private final mWaitLoadingTexture:Lcom/zui/gallery/glrenderer/ColorTexture;

.field private mbAnimating:Z

.field private mnUpdateCnt:I


# direct methods
.method public constructor <init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/ui/SlotView;Lcom/zui/gallery/ui/SelectionManager;ILcom/zui/gallery/ui/AlbumSlotRenderer$LabelSpec;)V
    .locals 2

    .line 95
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/AbstractSlotRenderer;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 57
    iput v0, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mPressedIndex:I

    const/4 v1, 0x0

    .line 59
    iput-object v1, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mHighlightItemPath:Lcom/zui/gallery/data/Path;

    const/4 v1, 0x0

    .line 466
    iput-boolean v1, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mbAnimating:Z

    .line 467
    iput v0, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mnUpdateCnt:I

    .line 96
    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 97
    iput-object p2, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    .line 98
    iput-object p3, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    .line 99
    iput p4, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mPlaceholderColor:I

    .line 101
    new-instance p1, Lcom/zui/gallery/glrenderer/ColorTexture;

    iget p2, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mPlaceholderColor:I

    invoke-direct {p1, p2}, Lcom/zui/gallery/glrenderer/ColorTexture;-><init>(I)V

    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mWaitLoadingTexture:Lcom/zui/gallery/glrenderer/ColorTexture;

    const/4 p2, 0x1

    .line 102
    invoke-virtual {p1, p2, p2}, Lcom/zui/gallery/glrenderer/ColorTexture;->setSize(II)V

    .line 104
    iput-object p5, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mLabelSpec:Lcom/zui/gallery/ui/AlbumSlotRenderer$LabelSpec;

    return-void
.end method

.method static synthetic access$100(Lcom/zui/gallery/ui/AlbumSlotRenderer;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mnUpdateCnt:I

    return p0
.end method

.method static synthetic access$110(Lcom/zui/gallery/ui/AlbumSlotRenderer;)I
    .locals 2

    .line 40
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mnUpdateCnt:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mnUpdateCnt:I

    return v0
.end method

.method static synthetic access$120(Lcom/zui/gallery/ui/AlbumSlotRenderer;I)I
    .locals 1

    .line 40
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mnUpdateCnt:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mnUpdateCnt:I

    return v0
.end method

.method static synthetic access$200(Lcom/zui/gallery/ui/AlbumSlotRenderer;)Lcom/zui/gallery/ui/SlotView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    return-object p0
.end method

.method private static checkLabelTexture(Lcom/zui/gallery/glrenderer/Texture;)Lcom/zui/gallery/glrenderer/Texture;
    .locals 1

    .line 287
    instance-of v0, p0, Lcom/zui/gallery/glrenderer/UploadedTexture;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/zui/gallery/glrenderer/UploadedTexture;

    .line 288
    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/UploadedTexture;->isUploading()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method private static checkTexture(Lcom/zui/gallery/glrenderer/Texture;)Lcom/zui/gallery/glrenderer/Texture;
    .locals 1

    .line 140
    instance-of v0, p0, Lcom/zui/gallery/glrenderer/TiledTexture;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/zui/gallery/glrenderer/TiledTexture;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/TiledTexture;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method private getNewPosition(ILandroid/graphics/Rect;IILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/graphics/Rect;",
            "II",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 474
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    return-void

    .line 478
    :cond_0
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v0

    .line 480
    rem-int/lit8 p5, p1, 0x4

    mul-int/2addr p5, p3

    iput p5, p2, Landroid/graphics/Rect;->left:I

    .line 481
    iget p3, p2, Landroid/graphics/Rect;->top:I

    div-int/lit8 p1, p1, 0x4

    mul-int/2addr p1, p4

    add-int/2addr p3, p1

    iput p3, p2, Landroid/graphics/Rect;->top:I

    return-void
.end method

.method private moveItemAnim(IIIIIILcom/zui/gallery/anim/GLAnimation$AnimationListener;)V
    .locals 8

    .line 544
    new-instance v7, Lcom/zui/gallery/anim/DeleteSpec;

    invoke-direct {v7}, Lcom/zui/gallery/anim/DeleteSpec;-><init>()V

    const/4 v1, 0x0

    move-object v0, v7

    move v2, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 546
    invoke-virtual/range {v0 .. v6}, Lcom/zui/gallery/anim/DeleteSpec;->setPoint(ZIIIII)V

    .line 547
    new-instance p1, Lcom/zui/gallery/anim/GLAnimation;

    invoke-direct {p1, v7}, Lcom/zui/gallery/anim/GLAnimation;-><init>(Lcom/zui/gallery/anim/GlAnimaionSpec;)V

    if-eqz p7, :cond_0

    const/16 p3, 0x46

    .line 549
    invoke-virtual {p1, p7, p3}, Lcom/zui/gallery/anim/GLAnimation;->setAnimationListener(Lcom/zui/gallery/anim/GLAnimation$AnimationListener;I)V

    .line 552
    :cond_0
    iget-object p3, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    invoke-virtual {p0, p3, p2, p1}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->startGLAnimation(Lcom/zui/gallery/ui/GLView;ILcom/zui/gallery/anim/GLAnimation;)V

    return-void
.end method

.method private removeItemAnim(IIZLcom/zui/gallery/anim/GLAnimation$AnimationListener;)V
    .locals 8

    .line 557
    iget-object p3, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    invoke-virtual {p3, p2}, Lcom/zui/gallery/ui/SlotView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object p3

    .line 558
    new-instance v7, Lcom/zui/gallery/anim/DeleteSpec;

    invoke-direct {v7}, Lcom/zui/gallery/anim/DeleteSpec;-><init>()V

    .line 560
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    iget v4, p3, Landroid/graphics/Rect;->bottom:I

    iget-object p3, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    invoke-virtual {p3}, Lcom/zui/gallery/ui/SlotView;->getWidth()I

    move-result p3

    int-to-float p3, p3

    const v0, 0x3f451eb8    # 0.77f

    mul-float/2addr p3, v0

    float-to-int v5, p3

    iget-object p3, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    invoke-virtual {p3}, Lcom/zui/gallery/ui/SlotView;->getScrollY()I

    move-result p3

    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SlotView;->getHeight()I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 v6, p3, -0x1

    const/4 v1, 0x1

    move-object v0, v7

    move v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/zui/gallery/anim/DeleteSpec;->setPoint(ZIIIII)V

    .line 561
    new-instance p1, Lcom/zui/gallery/anim/GLAnimation;

    invoke-direct {p1, v7}, Lcom/zui/gallery/anim/GLAnimation;-><init>(Lcom/zui/gallery/anim/GlAnimaionSpec;)V

    if-eqz p4, :cond_0

    const/16 p3, 0x46

    .line 563
    invoke-virtual {p1, p4, p3}, Lcom/zui/gallery/anim/GLAnimation;->setAnimationListener(Lcom/zui/gallery/anim/GLAnimation$AnimationListener;I)V

    .line 566
    :cond_0
    iget-object p3, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    invoke-virtual {p0, p3, p2, p1}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->startGLAnimation(Lcom/zui/gallery/ui/GLView;ILcom/zui/gallery/anim/GLAnimation;)V

    return-void
.end method

.method private renderContinuousLable(Lcom/zui/gallery/glrenderer/GLCanvas;IIIILcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public destory()V
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mDataWindow:Lcom/zui/gallery/ui/AlbumSlidingWindow;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->destory()V

    return-void
.end method

.method public getItemPath(I)Lcom/zui/gallery/data/Path;
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mDataWindow:Lcom/zui/gallery/ui/AlbumSlidingWindow;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->get(I)Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 460
    :cond_0
    iget-object p1, p1, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->path:Lcom/zui/gallery/data/Path;

    return-object p1
.end method

.method public inSelectModel()Z
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isInCameraAlbum()Z
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    if-eqz v0, :cond_0

    .line 574
    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->isCameraAlbum()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isItemSelect(Lcom/zui/gallery/data/Path;)Z
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/SelectionManager;->isItemSelected(Lcom/zui/gallery/data/Path;)Z

    move-result p1

    return p1
.end method

.method public onSlotSizeChanged(II)V
    .locals 0

    return-void
.end method

.method public onVisibleRangeChanged(II)V
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mDataWindow:Lcom/zui/gallery/ui/AlbumSlidingWindow;

    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->setActiveWindow(II)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mDataWindow:Lcom/zui/gallery/ui/AlbumSlidingWindow;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->pause()V

    .line 412
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SlotView;->stopScrolling()V

    return-void
.end method

.method public prepareDrawing()V
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mInSelectionMode:Z

    return-void
.end method

.method public removeAnim(Lcom/zui/gallery/anim/GLAnimation$AnimationListener;)V
    .locals 18

    move-object/from16 v6, p0

    .line 486
    iget-object v0, v6, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SlotView;->getVisibleStart()I

    move-result v7

    .line 487
    iget-object v0, v6, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SlotView;->getVisibleEnd()I

    move-result v8

    .line 488
    iget-object v0, v6, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SlotView;->getSlotCount()I

    move-result v9

    .line 491
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 492
    iget-object v0, v6, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SlotView;->getSlotWidth()I

    move-result v0

    iget-object v1, v6, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/SlotView;->getSlotGap()I

    move-result v1

    add-int v11, v0, v1

    .line 493
    iget-object v0, v6, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SlotView;->getSlotHeight()I

    move-result v0

    iget-object v1, v6, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/SlotView;->getSlotGap()I

    move-result v1

    add-int v12, v0, v1

    const/4 v13, 0x0

    .line 499
    iput v13, v6, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mnUpdateCnt:I

    .line 500
    iget-object v0, v6, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SlotView;->getWidth()I

    move-result v0

    iget-object v1, v6, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/SlotView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/zui/gallery/anim/DeleteSpec;->setScreenSize(II)V

    move-object/from16 v14, p1

    move v4, v13

    move v5, v4

    move v15, v5

    :goto_0
    if-ge v15, v9, :cond_7

    add-int/lit8 v0, v8, 0x8

    const/16 v1, 0x1c

    if-le v5, v1, :cond_0

    goto :goto_1

    :cond_0
    move v1, v5

    :goto_1
    add-int/2addr v0, v1

    if-le v15, v0, :cond_1

    goto/16 :goto_5

    .line 507
    :cond_1
    iget-object v0, v6, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mDataWindow:Lcom/zui/gallery/ui/AlbumSlidingWindow;

    invoke-virtual {v0, v15}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->get(I)Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 511
    :cond_2
    iget-object v0, v0, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->path:Lcom/zui/gallery/data/Path;

    .line 512
    iget-object v1, v6, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/ui/SelectionManager;->isItemSelected(Lcom/zui/gallery/data/Path;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-lt v15, v7, :cond_3

    if-gt v15, v8, :cond_3

    const/4 v0, 0x1

    .line 514
    invoke-direct {v6, v5, v15, v0, v14}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->removeItemAnim(IIZLcom/zui/gallery/anim/GLAnimation$AnimationListener;)V

    const/4 v14, 0x0

    :cond_3
    add-int/lit8 v5, v5, 0x1

    move/from16 v16, v7

    goto :goto_4

    .line 521
    :cond_4
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v7, -0x1

    if-le v15, v0, :cond_6

    if-lez v5, :cond_6

    .line 524
    iget-object v0, v6, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    invoke-virtual {v0, v13}, Lcom/zui/gallery/ui/SlotView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, p0

    move v1, v15

    move-object v2, v3

    move-object v13, v3

    move v3, v11

    move/from16 v16, v7

    move v7, v4

    move v4, v12

    move/from16 v17, v5

    move-object v5, v10

    .line 525
    invoke-direct/range {v0 .. v5}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->getNewPosition(ILandroid/graphics/Rect;IILjava/util/ArrayList;)V

    .line 526
    iget-object v0, v6, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    invoke-virtual {v0, v15}, Lcom/zui/gallery/ui/SlotView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 527
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v13, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3dcccccd    # 0.1f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, v13, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v4, v7, 0x1

    goto :goto_3

    :cond_6
    move/from16 v17, v5

    move/from16 v16, v7

    move v7, v4

    :goto_2
    move v4, v7

    :goto_3
    move/from16 v5, v17

    :goto_4
    add-int/lit8 v15, v15, 0x1

    move/from16 v7, v16

    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_7
    :goto_5
    move v7, v4

    .line 537
    iput v7, v6, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mnUpdateCnt:I

    if-eqz v14, :cond_8

    .line 539
    invoke-interface {v14}, Lcom/zui/gallery/anim/GLAnimation$AnimationListener;->onComplete()V

    :cond_8
    return-void
.end method

.method public renderEmptyPic(Lcom/zui/gallery/glrenderer/GLCanvas;Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x2

    .line 270
    invoke-interface {p1, v0}, Lcom/zui/gallery/glrenderer/GLCanvas;->save(I)V

    .line 276
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->getSourceType()I

    move-result v0

    .line 278
    invoke-virtual {p0, p1, p2, v0}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->drawEmptyIcon(Lcom/zui/gallery/glrenderer/GLCanvas;Landroid/graphics/Rect;I)V

    .line 279
    invoke-interface {p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->restore()V

    return-void
.end method

.method protected renderOverlay(Lcom/zui/gallery/glrenderer/GLCanvas;ILcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;II)I
    .locals 4

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 314
    iget-boolean v1, p3, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->isContinuousCover:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/SelectionManager;->isCameraAlbum()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p3, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->rotation:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 318
    :goto_0
    iget-object v2, p3, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->path:Lcom/zui/gallery/data/Path;

    .line 330
    iget v3, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mPressedIndex:I

    if-ne v3, p2, :cond_3

    .line 331
    iget-boolean p2, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mAnimatePressedUp:Z

    if-eqz p2, :cond_2

    .line 332
    invoke-virtual {p0, p1, p4, p5}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->drawPressedUpFrame(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    const/4 p1, 0x2

    .line 334
    invoke-virtual {p0}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->isPressedUpFrameFinished()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 335
    iput-boolean v0, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mAnimatePressedUp:Z

    const/4 p2, -0x1

    .line 336
    iput p2, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mPressedIndex:I

    :cond_1
    move v0, p1

    goto/16 :goto_1

    .line 339
    :cond_2
    invoke-virtual {p0, p1, p4, p5}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->drawPressedFrame(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 340
    iget-object p2, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p2, v2}, Lcom/zui/gallery/ui/SelectionManager;->isItemSelected(Lcom/zui/gallery/data/Path;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 341
    invoke-virtual {p0, p1, p4, p5, v1}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->drawSelectedIconFrame(Lcom/zui/gallery/glrenderer/GLCanvas;IIZ)V

    goto/16 :goto_1

    .line 344
    :cond_3
    iget-object p2, p3, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->path:Lcom/zui/gallery/data/Path;

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mHighlightItemPath:Lcom/zui/gallery/data/Path;

    iget-object v3, p3, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->path:Lcom/zui/gallery/data/Path;

    if-ne p2, v3, :cond_4

    .line 345
    invoke-virtual {p0, p1, p4, p5}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->drawSelectedFrame(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 346
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1, v2}, Lcom/zui/gallery/ui/SelectionManager;->isItemSelected(Lcom/zui/gallery/data/Path;)Z

    move-result p1

    goto :goto_1

    .line 348
    :cond_4
    iget-boolean p2, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mInSelectionMode:Z

    if-eqz p2, :cond_6

    .line 349
    iget-boolean p2, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mbAnimating:Z

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p2, v2}, Lcom/zui/gallery/ui/SelectionManager;->isItemSelected(Lcom/zui/gallery/data/Path;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 350
    invoke-virtual {p0, p1, p4, p5, v1}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->drawSelectedIconFrame(Lcom/zui/gallery/glrenderer/GLCanvas;IIZ)V

    goto :goto_1

    .line 352
    :cond_5
    iget-object p2, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    invoke-virtual {p2}, Lcom/zui/gallery/ui/SlotView;->getAlphaAnimation()Lcom/zui/gallery/ui/GLView$BaseAnimation;

    move-result-object p2

    .line 354
    invoke-virtual {p0, p1, p4, p5}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->drawUnSelectedIconFrame(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 356
    iget-boolean v2, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mbAnimating:Z

    if-nez v2, :cond_7

    if-eqz p2, :cond_7

    iget-object v2, p3, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->path:Lcom/zui/gallery/data/Path;

    if-eqz v2, :cond_7

    iget-object p3, p3, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->path:Lcom/zui/gallery/data/Path;

    invoke-virtual {p2}, Lcom/zui/gallery/ui/GLView$BaseAnimation;->getSelectPath()Lcom/zui/gallery/data/Path;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-virtual {p2}, Lcom/zui/gallery/ui/GLView$BaseAnimation;->isActive()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 357
    invoke-virtual {p0, p1, p4, p5, v1}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->drawSelectedIconFrame(Lcom/zui/gallery/glrenderer/GLCanvas;IIZ)V

    goto :goto_1

    :cond_6
    if-eqz p3, :cond_7

    .line 363
    iget-object p2, p3, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->path:Lcom/zui/gallery/data/Path;

    if-eqz p2, :cond_7

    .line 365
    iget-object p3, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    invoke-virtual {p3}, Lcom/zui/gallery/ui/SlotView;->getLongTapItemPath()Lcom/zui/gallery/data/Path;

    move-result-object p3

    if-eqz p3, :cond_7

    .line 366
    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 367
    invoke-virtual {p0, p1, p4, p5, v1}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->drawSelectedFrame(Lcom/zui/gallery/glrenderer/GLCanvas;IIZ)V

    .line 368
    invoke-virtual {p0, p1, p4, p5, v1}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->drawSelectedFrameBorder(Lcom/zui/gallery/glrenderer/GLCanvas;IIZ)V

    :cond_7
    :goto_1
    return v0
.end method

.method public renderSlot(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)I
    .locals 15

    move-object v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p4

    move/from16 v11, p5

    .line 147
    iget-object v0, v7, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mSlotFilter:Lcom/zui/gallery/ui/AlbumSlotRenderer$SlotFilter;

    const/4 v12, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v9}, Lcom/zui/gallery/ui/AlbumSlotRenderer$SlotFilter;->acceptSlot(I)Z

    move-result v0

    if-nez v0, :cond_0

    return v12

    .line 150
    :cond_0
    iget-object v0, v7, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mDataWindow:Lcom/zui/gallery/ui/AlbumSlidingWindow;

    invoke-virtual {v0, v9}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->get(I)Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;

    move-result-object v13

    if-eqz v13, :cond_13

    .line 156
    iget-object v0, v13, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->content:Lcom/zui/gallery/glrenderer/Texture;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->checkTexture(Lcom/zui/gallery/glrenderer/Texture;)Lcom/zui/gallery/glrenderer/Texture;

    move-result-object v0

    if-nez v0, :cond_1

    .line 158
    iget-object v0, v7, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mWaitLoadingTexture:Lcom/zui/gallery/glrenderer/ColorTexture;

    const/4 v1, 0x1

    .line 159
    iput-boolean v1, v13, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->isWaitDisplayed:Z

    goto :goto_0

    .line 160
    :cond_1
    iget-boolean v1, v13, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->isWaitDisplayed:Z

    if-eqz v1, :cond_2

    .line 161
    iput-boolean v12, v13, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->isWaitDisplayed:Z

    .line 162
    new-instance v0, Lcom/zui/gallery/glrenderer/FadeInTexture;

    iget v1, v7, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mPlaceholderColor:I

    iget-object v2, v13, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-direct {v0, v1, v2}, Lcom/zui/gallery/glrenderer/FadeInTexture;-><init>(ILcom/zui/gallery/glrenderer/BitmapTexture;)V

    .line 163
    iput-object v0, v13, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->content:Lcom/zui/gallery/glrenderer/Texture;

    :cond_2
    :goto_0
    move-object v14, v0

    .line 166
    iget-object v0, v7, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SlotView;->isPanoAlbum()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 167
    iget v6, v13, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->rotation:I

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v3, v14

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->drawPanoContent(Lcom/zui/gallery/glrenderer/GLCanvas;ILcom/zui/gallery/glrenderer/Texture;III)V

    goto :goto_1

    .line 169
    :cond_3
    iget v6, v13, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->rotation:I

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v3, v14

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->drawContent(Lcom/zui/gallery/glrenderer/GLCanvas;ILcom/zui/gallery/glrenderer/Texture;III)V

    .line 174
    :goto_1
    instance-of v0, v14, Lcom/zui/gallery/glrenderer/FadeInTexture;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    check-cast v14, Lcom/zui/gallery/glrenderer/FadeInTexture;

    .line 175
    invoke-virtual {v14}, Lcom/zui/gallery/glrenderer/FadeInTexture;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_4

    move v12, v1

    .line 180
    :cond_4
    iget-object v0, v7, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->isWeixinVideoAlbum()Z

    move-result v0

    .line 181
    iget v2, v13, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->mediaType:I

    const/4 v3, 0x4

    const/16 v4, 0xd

    if-eq v2, v3, :cond_d

    iget v2, v13, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->mediaType:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_d

    iget v2, v13, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->mediaType:I

    const/16 v3, 0x13

    if-eq v2, v3, :cond_d

    iget v2, v13, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->mediaType:I

    if-eq v2, v4, :cond_d

    iget-object v2, v13, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/zui/gallery/data/MediaItem;

    instance-of v2, v2, Lcom/zui/gallery/data/CloudImage;

    if-eqz v2, :cond_5

    iget-object v2, v13, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/zui/gallery/data/MediaItem;

    check-cast v2, Lcom/zui/gallery/data/CloudImage;

    .line 185
    invoke-virtual {v2}, Lcom/zui/gallery/data/CloudImage;->isCloudVideo()Z

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_2

    .line 200
    :cond_5
    iget v2, v13, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->mediaType:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_6

    .line 201
    invoke-virtual {p0, v8, v10, v11}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->drawFastVideoIcon(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 202
    iget-object v0, v13, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->durationTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->checkTexture(Lcom/zui/gallery/glrenderer/Texture;)Lcom/zui/gallery/glrenderer/Texture;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 204
    invoke-virtual {p0, v8, v10, v11, v0}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->drawVideoDuration(Lcom/zui/gallery/glrenderer/GLCanvas;IILcom/zui/gallery/glrenderer/Texture;)V

    goto/16 :goto_3

    .line 206
    :cond_6
    iget v2, v13, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->mediaType:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_7

    .line 207
    invoke-virtual {p0, v8, v10, v11}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->drawSlowVideoIcon(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 208
    iget-object v0, v13, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->durationTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->checkTexture(Lcom/zui/gallery/glrenderer/Texture;)Lcom/zui/gallery/glrenderer/Texture;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 210
    invoke-virtual {p0, v8, v10, v11, v0}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->drawVideoDuration(Lcom/zui/gallery/glrenderer/GLCanvas;IILcom/zui/gallery/glrenderer/Texture;)V

    goto/16 :goto_3

    .line 212
    :cond_7
    iget v2, v13, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->mediaType:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_8

    .line 213
    invoke-virtual {p0, v8, v10, v11}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->drawShotVideoIcon(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 214
    iget-object v0, v13, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->durationTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->checkTexture(Lcom/zui/gallery/glrenderer/Texture;)Lcom/zui/gallery/glrenderer/Texture;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 216
    invoke-virtual {p0, v8, v10, v11, v0}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->drawVideoDuration(Lcom/zui/gallery/glrenderer/GLCanvas;IILcom/zui/gallery/glrenderer/Texture;)V

    goto :goto_3

    .line 218
    :cond_8
    iget v2, v13, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->mediaType:I

    const/16 v3, 0x12

    if-ne v2, v3, :cond_9

    if-nez v0, :cond_10

    .line 220
    invoke-virtual {p0, v8, v10, v11}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->drawNormalVideoIcon(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 221
    iget-object v0, v13, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->durationTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->checkTexture(Lcom/zui/gallery/glrenderer/Texture;)Lcom/zui/gallery/glrenderer/Texture;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 223
    invoke-virtual {p0, v8, v10, v11, v0}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->drawVideoDuration(Lcom/zui/gallery/glrenderer/GLCanvas;IILcom/zui/gallery/glrenderer/Texture;)V

    goto :goto_3

    .line 226
    :cond_9
    iget v0, v13, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->mediaType:I

    if-ne v0, v1, :cond_10

    .line 227
    iget-object v0, v13, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/zui/gallery/data/MediaItem;

    invoke-static {v0}, Lcom/zui/gallery/util/GalleryUtils;->isPanoImage(Lcom/zui/gallery/data/MediaItem;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 228
    invoke-virtual {p0, v8, v10, v11}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->drawPanoIcon(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    goto :goto_3

    .line 229
    :cond_a
    iget-boolean v0, v13, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->isGif:Z

    if-eqz v0, :cond_b

    .line 230
    invoke-virtual {p0, v8, v10, v11}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->drawGifIcon(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    goto :goto_3

    .line 231
    :cond_b
    iget-object v0, v13, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/zui/gallery/data/MediaItem;

    invoke-static {v0}, Lcom/zui/gallery/util/GalleryUtils;->isMicroVideoNameFormat(Lcom/zui/gallery/data/MediaItem;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 232
    invoke-virtual {p0, v8, v10, v11}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->drawLivePhotoIcon(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    goto :goto_3

    .line 233
    :cond_c
    iget-boolean v0, v13, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->isContinuousCover:Z

    if-eqz v0, :cond_10

    .line 234
    invoke-virtual {p0, v8, v10, v11}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->renderContinuousMark(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    goto :goto_3

    .line 187
    :cond_d
    :goto_2
    iget v0, v13, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->mediaType:I

    if-eq v0, v4, :cond_e

    .line 188
    invoke-virtual {p0, v8, v10, v11}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->drawNormalVideoIcon(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 190
    :cond_e
    iget v0, v13, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->mediaType:I

    if-ne v0, v4, :cond_f

    .line 191
    invoke-virtual {p0, v8, v10, v11}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->drawNormalVideoHDRIcon(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 195
    :cond_f
    iget-object v0, v13, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->durationTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->checkTexture(Lcom/zui/gallery/glrenderer/Texture;)Lcom/zui/gallery/glrenderer/Texture;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 197
    invoke-virtual {p0, v8, v10, v11, v0}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->drawVideoDuration(Lcom/zui/gallery/glrenderer/GLCanvas;IILcom/zui/gallery/glrenderer/Texture;)V

    .line 241
    :cond_10
    :goto_3
    iget-boolean v0, v13, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->isPanorama:Z

    if-eqz v0, :cond_11

    .line 242
    invoke-virtual {p0, v8, v10, v11}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->drawPanoramaIcon(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 246
    :cond_11
    invoke-virtual {p0}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->inSelectModel()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 247
    iget-object v0, v7, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SlotView;->getAlphaAnimation()Lcom/zui/gallery/ui/GLView$BaseAnimation;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 248
    iget-object v1, v13, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->path:Lcom/zui/gallery/data/Path;

    if-eqz v1, :cond_12

    iget-object v1, v13, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->path:Lcom/zui/gallery/data/Path;

    .line 249
    invoke-virtual {v0}, Lcom/zui/gallery/ui/GLView$BaseAnimation;->getSelectPath()Lcom/zui/gallery/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Lcom/zui/gallery/ui/GLView$BaseAnimation;->isActive()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 250
    invoke-virtual {v0, v8}, Lcom/zui/gallery/ui/GLView$BaseAnimation;->apply(Lcom/zui/gallery/glrenderer/GLCanvas;)V

    :cond_12
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v3, v13

    move/from16 v4, p4

    move/from16 v5, p5

    .line 254
    invoke-virtual/range {v0 .. v5}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->renderOverlay(Lcom/zui/gallery/glrenderer/GLCanvas;ILcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;II)I

    move-result v0

    or-int/2addr v12, v0

    :cond_13
    return v12
.end method

.method public resume()V
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mDataWindow:Lcom/zui/gallery/ui/AlbumSlidingWindow;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->resume()V

    return-void
.end method

.method public setAnimating(Z)V
    .locals 0

    .line 470
    iput-boolean p1, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mbAnimating:Z

    return-void
.end method

.method public setHighlightItemPath(Lcom/zui/gallery/data/Path;)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mHighlightItemPath:Lcom/zui/gallery/data/Path;

    if-ne v0, p1, :cond_0

    return-void

    .line 121
    :cond_0
    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mHighlightItemPath:Lcom/zui/gallery/data/Path;

    .line 122
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SlotView;->invalidate()V

    return-void
.end method

.method public setModel(Lcom/zui/gallery/app/AlbumDataLoader;)V
    .locals 5

    .line 126
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mDataWindow:Lcom/zui/gallery/ui/AlbumSlidingWindow;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->setListener(Lcom/zui/gallery/ui/AlbumSlidingWindow$Listener;)V

    .line 128
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/zui/gallery/ui/SlotView;->setSlotCount(I)Z

    .line 129
    iput-object v1, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mDataWindow:Lcom/zui/gallery/ui/AlbumSlidingWindow;

    :cond_0
    if-eqz p1, :cond_1

    .line 132
    new-instance v0, Lcom/zui/gallery/ui/AlbumSlidingWindow;

    iget-object v2, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/16 v3, 0x60

    iget-object v4, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mLabelSpec:Lcom/zui/gallery/ui/AlbumSlotRenderer$LabelSpec;

    invoke-direct {v0, v2, p1, v3, v4}, Lcom/zui/gallery/ui/AlbumSlidingWindow;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/app/AlbumDataLoader;ILcom/zui/gallery/ui/AlbumSlotRenderer$LabelSpec;)V

    iput-object v0, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mDataWindow:Lcom/zui/gallery/ui/AlbumSlidingWindow;

    .line 133
    new-instance v2, Lcom/zui/gallery/ui/AlbumSlotRenderer$MyDataModelListener;

    invoke-direct {v2, p0, v1}, Lcom/zui/gallery/ui/AlbumSlotRenderer$MyDataModelListener;-><init>(Lcom/zui/gallery/ui/AlbumSlotRenderer;Lcom/zui/gallery/ui/AlbumSlotRenderer$1;)V

    invoke-virtual {v0, v2}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->setListener(Lcom/zui/gallery/ui/AlbumSlidingWindow$Listener;)V

    .line 134
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AlbumDataLoader;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/SlotView;->setSlotCount(I)Z

    :cond_1
    return-void
.end method

.method public setPressedIndex(I)V
    .locals 1

    .line 108
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mPressedIndex:I

    if-ne v0, p1, :cond_0

    return-void

    .line 109
    :cond_0
    iput p1, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mPressedIndex:I

    .line 110
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SlotView;->invalidate()V

    return-void
.end method

.method public setPressedUp()V
    .locals 2

    .line 114
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mPressedIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mAnimatePressedUp:Z

    .line 116
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SlotView;->invalidate()V

    return-void
.end method

.method public setSlotFilter(Lcom/zui/gallery/ui/AlbumSlotRenderer$SlotFilter;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer;->mSlotFilter:Lcom/zui/gallery/ui/AlbumSlotRenderer$SlotFilter;

    return-void
.end method
