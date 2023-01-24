.class Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;
.super Lcom/zui/gallery/ui/PhotoView$PictureDecorator;
.source "PhotoView.java"

# interfaces
.implements Lcom/zui/gallery/ui/PhotoView$Picture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenNailPicture"
.end annotation


# instance fields
.field private mContinuousCount:I

.field private mIndex:I

.field private mIsCamera:Z

.field private mIsContinuousShot:Z

.field private mIsDeletable:Z

.field private mIsPanoramaPhoto:Z

.field private mIsStaticCamera:Z

.field private mIsVideo:Z

.field private mLoadingState:I

.field private mRotation:I

.field private volatile mScreenNail:Lcom/zui/gallery/ui/ScreenNail;

.field private mSize:Lcom/zui/gallery/ui/PhotoView$Size;

.field final synthetic this$0:Lcom/zui/gallery/ui/PhotoView;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/ui/PhotoView;I)V
    .locals 0

    .line 1294
    iput-object p1, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/PhotoView$PictureDecorator;-><init>(Lcom/zui/gallery/ui/PhotoView;)V

    const/4 p1, 0x0

    .line 1289
    iput p1, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mLoadingState:I

    .line 1290
    new-instance p1, Lcom/zui/gallery/ui/PhotoView$Size;

    invoke-direct {p1}, Lcom/zui/gallery/ui/PhotoView$Size;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/zui/gallery/ui/PhotoView$Size;

    .line 1295
    iput p2, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mIndex:I

    return-void
.end method

.method private isScreenNailAnimating()Z
    .locals 1

    .line 1387
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/zui/gallery/ui/ScreenNail;

    instance-of v0, v0, Lcom/zui/gallery/ui/TiledScreenNail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/zui/gallery/ui/ScreenNail;

    check-cast v0, Lcom/zui/gallery/ui/TiledScreenNail;

    .line 1388
    invoke-virtual {v0}, Lcom/zui/gallery/ui/TiledScreenNail;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateSize()V
    .locals 4

    .line 1408
    iget-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mIsCamera:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mIsStaticCamera:Z

    if-nez v0, :cond_0

    .line 1409
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$2200(Lcom/zui/gallery/ui/PhotoView;)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mRotation:I

    goto :goto_0

    .line 1411
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$1100(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PhotoView$Model;

    move-result-object v0

    iget v1, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcom/zui/gallery/ui/PhotoView$Model;->getImageRotation(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mRotation:I

    .line 1414
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/zui/gallery/ui/ScreenNail;

    if-eqz v0, :cond_1

    .line 1415
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/zui/gallery/ui/PhotoView$Size;

    iget-object v1, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/zui/gallery/ui/ScreenNail;

    invoke-interface {v1}, Lcom/zui/gallery/ui/ScreenNail;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/zui/gallery/ui/PhotoView$Size;->width:I

    .line 1416
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/zui/gallery/ui/PhotoView$Size;

    iget-object v1, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/zui/gallery/ui/ScreenNail;

    invoke-interface {v1}, Lcom/zui/gallery/ui/ScreenNail;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/zui/gallery/ui/PhotoView$Size;->height:I

    goto :goto_1

    .line 1420
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$1100(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PhotoView$Model;

    move-result-object v0

    iget v1, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mIndex:I

    iget-object v2, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/zui/gallery/ui/PhotoView$Size;

    invoke-interface {v0, v1, v2}, Lcom/zui/gallery/ui/PhotoView$Model;->getImageSize(ILcom/zui/gallery/ui/PhotoView$Size;)V

    .line 1423
    :goto_1
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/zui/gallery/ui/PhotoView$Size;

    iget v0, v0, Lcom/zui/gallery/ui/PhotoView$Size;->width:I

    .line 1424
    iget-object v1, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/zui/gallery/ui/PhotoView$Size;

    iget v1, v1, Lcom/zui/gallery/ui/PhotoView$Size;->height:I

    .line 1425
    iget-object v2, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/zui/gallery/ui/PhotoView$Size;

    iget v3, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mRotation:I

    invoke-static {v3, v0, v1}, Lcom/zui/gallery/ui/PhotoView;->access$2300(III)I

    move-result v3

    iput v3, v2, Lcom/zui/gallery/ui/PhotoView$Size;->width:I

    .line 1426
    iget-object v2, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/zui/gallery/ui/PhotoView$Size;

    iget v3, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mRotation:I

    invoke-static {v3, v1, v0}, Lcom/zui/gallery/ui/PhotoView;->access$2300(III)I

    move-result v0

    iput v0, v2, Lcom/zui/gallery/ui/PhotoView$Size;->height:I

    return-void
.end method


# virtual methods
.method public draw(Lcom/zui/gallery/glrenderer/GLCanvas;Landroid/graphics/Rect;)V
    .locals 10

    .line 1336
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/zui/gallery/ui/ScreenNail;

    if-nez v0, :cond_2

    .line 1339
    iget v0, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mIndex:I

    iget-object v1, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v1}, Lcom/zui/gallery/ui/PhotoView;->access$1000(Lcom/zui/gallery/ui/PhotoView;)I

    move-result v1

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mIndex:I

    iget-object v1, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v1}, Lcom/zui/gallery/ui/PhotoView;->access$900(Lcom/zui/gallery/ui/PhotoView;)I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 1340
    iget v0, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mIndex:I

    if-eqz v0, :cond_0

    return-void

    .line 1342
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0, p1, p2}, Lcom/zui/gallery/ui/PhotoView;->access$3300(Lcom/zui/gallery/ui/PhotoView;Lcom/zui/gallery/glrenderer/GLCanvas;Landroid/graphics/Rect;)V

    :cond_1
    return-void

    .line 1346
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/PhotoView;->getWidth()I

    move-result v0

    .line 1347
    iget-object v1, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/PhotoView;->getHeight()I

    move-result v1

    .line 1348
    iget v2, p2, Landroid/graphics/Rect;->left:I

    if-ge v2, v0, :cond_8

    iget v0, p2, Landroid/graphics/Rect;->right:I

    if-lez v0, :cond_8

    iget v0, p2, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_8

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    if-gtz v0, :cond_3

    goto :goto_0

    .line 1353
    :cond_3
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 1354
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    const/4 v2, 0x3

    .line 1355
    invoke-interface {p1, v2}, Lcom/zui/gallery/glrenderer/GLCanvas;->save(I)V

    int-to-float v0, v0

    int-to-float v1, v1

    .line 1356
    invoke-interface {p1, v0, v1}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FF)V

    .line 1358
    iget v0, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mRotation:I

    if-eqz v0, :cond_4

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 1359
    invoke-interface {p1, v0, v3, v3, v1}, Lcom/zui/gallery/glrenderer/GLCanvas;->rotate(FFFF)V

    .line 1361
    :cond_4
    iget v0, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mRotation:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v0, v1, v3}, Lcom/zui/gallery/ui/PhotoView;->access$2300(III)I

    move-result v0

    .line 1362
    iget v1, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mRotation:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-static {v1, v3, p2}, Lcom/zui/gallery/ui/PhotoView;->access$2300(III)I

    move-result p2

    .line 1363
    iget-object v4, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/zui/gallery/ui/ScreenNail;

    neg-int v1, v0

    const/4 v3, 0x2

    div-int/lit8 v6, v1, 0x2

    neg-int v1, p2

    div-int/lit8 v7, v1, 0x2

    move-object v5, p1

    move v8, v0

    move v9, p2

    invoke-interface/range {v4 .. v9}, Lcom/zui/gallery/ui/ScreenNail;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    .line 1365
    invoke-direct {p0}, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->isScreenNailAnimating()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1366
    iget-object v1, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/PhotoView;->invalidate()V

    .line 1368
    :cond_5
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1369
    iget-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mIsVideo:Z

    if-eqz v0, :cond_6

    .line 1370
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0, p1, p2}, Lcom/zui/gallery/ui/PhotoView;->access$3400(Lcom/zui/gallery/ui/PhotoView;Lcom/zui/gallery/glrenderer/GLCanvas;I)V

    .line 1371
    :cond_6
    iget p2, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mLoadingState:I

    if-ne p2, v3, :cond_7

    .line 1372
    iget-object p2, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {p2, p1}, Lcom/zui/gallery/ui/PhotoView;->access$3000(Lcom/zui/gallery/ui/PhotoView;Lcom/zui/gallery/glrenderer/GLCanvas;)V

    .line 1374
    :cond_7
    invoke-interface {p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->restore()V

    .line 1376
    invoke-interface {p1, v2}, Lcom/zui/gallery/glrenderer/GLCanvas;->save(I)V

    .line 1383
    invoke-interface {p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->restore()V

    return-void

    .line 1349
    :cond_8
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/zui/gallery/ui/ScreenNail;

    invoke-interface {p1}, Lcom/zui/gallery/ui/ScreenNail;->noDraw()V

    return-void
.end method

.method public drawThumbnail(Lcom/zui/gallery/glrenderer/GLCanvas;Landroid/graphics/Rect;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v6, p1

    move-object/from16 v0, p2

    .line 1442
    iget-object v1, v7, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/zui/gallery/ui/ScreenNail;

    if-eqz v1, :cond_7

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 1446
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    .line 1447
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    const/4 v1, 0x3

    .line 1448
    invoke-interface {v6, v1}, Lcom/zui/gallery/glrenderer/GLCanvas;->save(I)V

    int-to-float v2, v5

    int-to-float v3, v4

    .line 1449
    invoke-interface {v6, v2, v3}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FF)V

    .line 1451
    iget v2, v7, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mRotation:I

    if-eqz v2, :cond_1

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 1452
    invoke-interface {v6, v2, v8, v8, v3}, Lcom/zui/gallery/glrenderer/GLCanvas;->rotate(FFFF)V

    .line 1454
    :cond_1
    iget v2, v7, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mRotation:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-static {v2, v3, v8}, Lcom/zui/gallery/ui/PhotoView;->access$2300(III)I

    move-result v12

    .line 1455
    iget v2, v7, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mRotation:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-static {v2, v3, v8}, Lcom/zui/gallery/ui/PhotoView;->access$2300(III)I

    move-result v13

    .line 1457
    iget-object v2, v7, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/zui/gallery/ui/ScreenNail;

    instance-of v2, v2, Lcom/zui/gallery/ui/TiledScreenNail;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 1458
    iget-object v2, v7, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v2}, Lcom/zui/gallery/ui/PhotoView;->access$1700(Lcom/zui/gallery/ui/PhotoView;)I

    move-result v2

    if-ne v3, v2, :cond_2

    .line 1459
    iget-object v2, v7, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/zui/gallery/ui/ScreenNail;

    move-object v8, v2

    check-cast v8, Lcom/zui/gallery/ui/TiledScreenNail;

    neg-int v2, v12

    div-int/lit8 v10, v2, 0x2

    neg-int v2, v13

    div-int/lit8 v11, v2, 0x2

    iget v14, v7, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mRotation:I

    iget-object v15, v7, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/zui/gallery/ui/PhotoView$Size;

    move-object/from16 v9, p1

    invoke-virtual/range {v8 .. v15}, Lcom/zui/gallery/ui/TiledScreenNail;->drawThumbNail(Lcom/zui/gallery/glrenderer/GLCanvas;IIIIILcom/zui/gallery/ui/PhotoView$Size;)V

    goto :goto_0

    .line 1463
    :cond_2
    iget-object v2, v7, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/zui/gallery/ui/ScreenNail;

    move-object v8, v2

    check-cast v8, Lcom/zui/gallery/ui/TiledScreenNail;

    neg-int v2, v12

    div-int/lit8 v10, v2, 0x2

    neg-int v2, v13

    div-int/lit8 v11, v2, 0x2

    iget v14, v7, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mRotation:I

    iget-object v15, v7, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/zui/gallery/ui/PhotoView$Size;

    move-object/from16 v9, p1

    invoke-virtual/range {v8 .. v15}, Lcom/zui/gallery/ui/TiledScreenNail;->drawThumbNail(Lcom/zui/gallery/glrenderer/GLCanvas;IIIIILcom/zui/gallery/ui/PhotoView$Size;)V

    .line 1469
    :cond_3
    :goto_0
    invoke-interface/range {p1 .. p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->restore()V

    .line 1470
    invoke-interface {v6, v1}, Lcom/zui/gallery/glrenderer/GLCanvas;->save(I)V

    .line 1471
    iget-object v1, v7, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/PhotoView;->isContinuousShotMode()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1472
    iget-object v1, v7, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v1}, Lcom/zui/gallery/ui/PhotoView;->access$1100(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PhotoView$Model;

    move-result-object v1

    iget v2, v7, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v1, v2}, Lcom/zui/gallery/ui/PhotoView$Model;->isSelected(I)Z

    move-result v8

    .line 1473
    iget-object v1, v7, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v1}, Lcom/zui/gallery/ui/PhotoView;->access$1100(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PhotoView$Model;

    move-result-object v1

    iget v2, v7, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v1, v2}, Lcom/zui/gallery/ui/PhotoView$Model;->isBestChoice(I)Z

    move-result v9

    .line 1475
    iget-object v1, v7, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v1}, Lcom/zui/gallery/ui/PhotoView;->access$1700(Lcom/zui/gallery/ui/PhotoView;)I

    move-result v1

    if-ne v3, v1, :cond_4

    .line 1476
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int v2, v5, v1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    sub-int v3, v4, v1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v10, v0, Landroid/graphics/Rect;->left:I

    sub-int v10, v1, v10

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v11, v1, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v12, v4

    move v4, v10

    move v10, v5

    move v5, v11

    move-object v11, v6

    move v6, v8

    invoke-virtual/range {v0 .. v6}, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->drawMaskTexture(Lcom/zui/gallery/glrenderer/GLCanvas;IIIIZ)V

    goto :goto_1

    :cond_4
    move v12, v4

    move v10, v5

    move-object v11, v6

    .line 1481
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int v2, v10, v1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    sub-int v3, v12, v1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int v4, v1, v4

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v5, v1, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v6, v8

    invoke-virtual/range {v0 .. v6}, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->drawMaskTexture(Lcom/zui/gallery/glrenderer/GLCanvas;IIIIZ)V

    :goto_1
    if-eqz v9, :cond_6

    .line 1488
    invoke-virtual {v7, v11, v10, v12}, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->drawBestChoiceTexture(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    goto :goto_2

    :cond_5
    move-object v11, v6

    .line 1491
    :cond_6
    :goto_2
    invoke-interface/range {p1 .. p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->restore()V

    :cond_7
    :goto_3
    return-void
.end method

.method public forceSize()V
    .locals 3

    .line 1398
    invoke-direct {p0}, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->updateSize()V

    .line 1399
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$300(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PositionController;

    move-result-object v0

    iget v1, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mIndex:I

    iget-object v2, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/zui/gallery/ui/PhotoView$Size;

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/ui/PositionController;->forceImageSize(ILcom/zui/gallery/ui/PhotoView$Size;)V

    return-void
.end method

.method public getSize()Lcom/zui/gallery/ui/PhotoView$Size;
    .locals 1

    .line 1330
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/zui/gallery/ui/PhotoView$Size;

    return-object v0
.end method

.method public isCamera()Z
    .locals 1

    .line 1431
    iget-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mIsCamera:Z

    return v0
.end method

.method public isDeletable()Z
    .locals 1

    .line 1436
    iget-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mIsDeletable:Z

    return v0
.end method

.method public reload()V
    .locals 3

    .line 1300
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$1100(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PhotoView$Model;

    move-result-object v0

    iget v1, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcom/zui/gallery/ui/PhotoView$Model;->isCamera(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mIsCamera:Z

    .line 1301
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$1100(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PhotoView$Model;

    move-result-object v0

    iget v1, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcom/zui/gallery/ui/PhotoView$Model;->isPanorama(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mIsPanoramaPhoto:Z

    .line 1302
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$1100(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PhotoView$Model;

    move-result-object v0

    iget v1, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcom/zui/gallery/ui/PhotoView$Model;->isStaticCamera(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mIsStaticCamera:Z

    .line 1303
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$1100(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PhotoView$Model;

    move-result-object v0

    iget v1, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcom/zui/gallery/ui/PhotoView$Model;->isVideo(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mIsVideo:Z

    .line 1304
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$1100(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PhotoView$Model;

    move-result-object v0

    iget v1, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcom/zui/gallery/ui/PhotoView$Model;->isDeletable(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mIsDeletable:Z

    .line 1305
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$1100(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PhotoView$Model;

    move-result-object v0

    iget v1, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcom/zui/gallery/ui/PhotoView$Model;->getLoadingState(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mLoadingState:I

    .line 1306
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$1100(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PhotoView$Model;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/zui/gallery/ui/PhotoView$Model;->getContinuousCount(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mContinuousCount:I

    .line 1308
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$1100(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/zui/gallery/ui/PhotoView$Model;->isContinuousShot(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mIsContinuousShot:Z

    .line 1310
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$1100(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PhotoView$Model;

    move-result-object v0

    iget v2, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v2}, Lcom/zui/gallery/ui/PhotoView$Model;->isSelected(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mIsSelected:Z

    .line 1312
    iget-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mIsContinuousShot:Z

    if-eqz v0, :cond_0

    .line 1313
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    iget v2, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mContinuousCount:I

    invoke-static {v0, v2}, Lcom/zui/gallery/ui/PhotoView;->access$1900(Lcom/zui/gallery/ui/PhotoView;I)V

    .line 1315
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$1100(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PhotoView$Model;

    move-result-object v0

    iget v2, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v2}, Lcom/zui/gallery/ui/PhotoView$Model;->getScreenNail(I)Lcom/zui/gallery/ui/ScreenNail;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->setScreenNail(Lcom/zui/gallery/ui/ScreenNail;)V

    .line 1316
    invoke-direct {p0}, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->updateSize()V

    .line 1318
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/PhotoView;->isContinuousShotMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mInitButton:Z

    if-nez v0, :cond_1

    .line 1320
    invoke-virtual {p0}, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->initButton()V

    const/4 v0, 0x1

    .line 1321
    iput-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mInitButton:Z

    .line 1322
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$1100(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PhotoView$Model;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1323
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$1100(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PhotoView$Model;

    move-result-object v0

    iget v2, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1, v2}, Lcom/zui/gallery/ui/PhotoView$Model;->setSelected(ZI)V

    :cond_1
    return-void
.end method

.method public setScreenNail(Lcom/zui/gallery/ui/ScreenNail;)V
    .locals 0

    .line 1393
    iput-object p1, p0, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/zui/gallery/ui/ScreenNail;

    return-void
.end method
