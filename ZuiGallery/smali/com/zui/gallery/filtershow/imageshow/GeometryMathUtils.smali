.class public final Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;
.super Ljava/lang/Object;
.source "GeometryMathUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;
    }
.end annotation


# static fields
.field public static final SHOW_SCALE:F = 0.978f

.field private static final TAG:Ljava/lang/String; = "GeometryMathUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addOrientationToMatrix(Landroid/graphics/Matrix;III)V
    .locals 5

    const/high16 v0, 0x43870000    # 270.0f

    const/high16 v1, 0x42b40000    # 90.0f

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 564
    :pswitch_0
    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    invoke-virtual {p0, v0, p1, p2}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    goto :goto_0

    .line 577
    :pswitch_1
    invoke-virtual {p0, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    int-to-float p1, p1

    div-float/2addr p1, v2

    int-to-float p2, p2

    div-float/2addr p2, v2

    .line 578
    invoke-virtual {p0, v0, p1, p2}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    goto :goto_0

    .line 558
    :pswitch_2
    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    invoke-virtual {p0, v1, p1, p2}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    goto :goto_0

    .line 573
    :pswitch_3
    invoke-virtual {p0, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    int-to-float p1, p1

    div-float/2addr p1, v2

    int-to-float p2, p2

    div-float/2addr p2, v2

    .line 574
    invoke-virtual {p0, v1, p1, p2}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    goto :goto_0

    .line 570
    :pswitch_4
    invoke-virtual {p0, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_0

    :pswitch_5
    const/high16 p3, 0x43340000    # 180.0f

    .line 561
    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    invoke-virtual {p0, p3, p1, p2}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    goto :goto_0

    .line 567
    :pswitch_6
    invoke-virtual {p0, v4, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static applyFullGeometryMatrix(Landroid/graphics/Bitmap;Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;)Landroid/graphics/Bitmap;
    .locals 7

    .line 315
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 316
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 318
    iget-object v0, p1, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->crop:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/high16 v4, 0x3f800000    # 1.0f

    if-gtz v0, :cond_0

    .line 319
    iget-object v0, p1, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->crop:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 320
    iget-object v0, p1, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->crop:Landroid/graphics/RectF;

    iput v4, v0, Landroid/graphics/RectF;->right:F

    .line 322
    :cond_0
    iget-object v0, p1, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->crop:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 323
    iget-object v0, p1, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->crop:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 324
    iget-object v0, p1, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->crop:Landroid/graphics/RectF;

    iput v4, v0, Landroid/graphics/RectF;->bottom:F

    .line 327
    :cond_1
    invoke-static {p1, v2, v3}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->getTrueCropRect(Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;II)Landroid/graphics/RectF;

    move-result-object v0

    .line 328
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 329
    invoke-virtual {v0, v6}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    .line 331
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 332
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v5

    move-object v1, p1

    .line 331
    invoke-static/range {v0 .. v5}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->getCropSelectionToScreenMatrix(Landroid/graphics/RectF;Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;IIII)Landroid/graphics/Matrix;

    move-result-object p1

    .line 333
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getBitmapCache()Lcom/zui/gallery/filtershow/cache/BitmapCache;

    move-result-object v0

    .line 334
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 335
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/4 v3, 0x7

    .line 334
    invoke-virtual {v0, v1, v2, v3}, Lcom/zui/gallery/filtershow/cache/BitmapCache;->getBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 336
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 337
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x1

    .line 338
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 339
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 340
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 341
    invoke-virtual {v1, p0, p1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method public static applyGeometryRepresentations(Ljava/util/Collection;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/zui/gallery/filtershow/filters/FilterRepresentation;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 451
    invoke-static {p0}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->unpackGeometry(Ljava/util/Collection;)Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    move-result-object p0

    .line 454
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->isNil()Z

    move-result v0

    if-nez v0, :cond_1

    .line 455
    invoke-static {p1, p0}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->applyFullGeometryMatrix(Landroid/graphics/Bitmap;Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eq p0, p1, :cond_0

    .line 457
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getBitmapCache()Lcom/zui/gallery/filtershow/cache/BitmapCache;

    move-result-object v0

    .line 458
    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/cache/BitmapCache;->cache(Landroid/graphics/Bitmap;)Z

    :cond_0
    move-object p1, p0

    :cond_1
    return-object p1
.end method

.method public static clamp(FFF)F
    .locals 0

    .line 99
    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method private static concatMirrorMatrix(Landroid/graphics/Matrix;Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;)V
    .locals 4

    .line 218
    iget-object v0, p1, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->mirror:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    .line 219
    sget-object v1, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->HORIZONTAL:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    const/16 v2, 0x10e

    const/16 v3, 0x5a

    if-ne v0, v1, :cond_1

    .line 220
    iget-object v1, p1, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->rotation:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->value()I

    move-result v1

    if-eq v1, v3, :cond_0

    iget-object p1, p1, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->rotation:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    .line 221
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->value()I

    move-result p1

    if-ne p1, v2, :cond_3

    .line 222
    :cond_0
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->VERTICAL:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    goto :goto_0

    .line 224
    :cond_1
    sget-object v1, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->VERTICAL:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    if-ne v0, v1, :cond_3

    .line 225
    iget-object v1, p1, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->rotation:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->value()I

    move-result v1

    if-eq v1, v3, :cond_2

    iget-object p1, p1, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->rotation:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    .line 226
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->value()I

    move-result p1

    if-ne p1, v2, :cond_3

    .line 227
    :cond_2
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->HORIZONTAL:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    .line 230
    :cond_3
    :goto_0
    sget-object p1, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->HORIZONTAL:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    if-ne v0, p1, :cond_4

    .line 231
    invoke-virtual {p0, v2, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_1

    .line 232
    :cond_4
    sget-object p1, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->VERTICAL:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    if-ne v0, p1, :cond_5

    .line 233
    invoke-virtual {p0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_1

    .line 234
    :cond_5
    sget-object p1, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->BOTH:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    if-ne v0, p1, :cond_6

    .line 235
    invoke-virtual {p0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 236
    invoke-virtual {p0, v2, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_6
    :goto_1
    return-void
.end method

.method public static dotProduct([F[F)F
    .locals 2

    const/4 v0, 0x0

    .line 150
    aget v1, p0, v0

    aget v0, p1, v0

    mul-float/2addr v1, v0

    const/4 v0, 0x1

    aget p0, p0, v0

    aget p1, p1, v0

    mul-float/2addr p0, p1

    add-float/2addr v1, p0

    return v1
.end method

.method public static drawTransformedCropped(Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;Landroid/graphics/Canvas;Landroid/graphics/Bitmap;II)Landroid/graphics/RectF;
    .locals 7

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 469
    :cond_0
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    .line 470
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move-object v0, v6

    move-object v1, p0

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->getCropSelectionToScreenMatrix(Landroid/graphics/RectF;Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;IIII)Landroid/graphics/Matrix;

    move-result-object p0

    .line 472
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 473
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 474
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    const/4 p4, 0x1

    .line 475
    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 476
    invoke-virtual {p1, p2, p0, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 477
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-object v6
.end method

.method public static finalGeometryRect(IILjava/util/Collection;)Landroid/graphics/Rect;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Collection<",
            "Lcom/zui/gallery/filtershow/filters/FilterRepresentation;",
            ">;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    .line 307
    invoke-static {p2}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->unpackGeometry(Ljava/util/Collection;)Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    move-result-object p2

    .line 308
    invoke-static {p2, p0, p1}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->getTrueCropRect(Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;II)Landroid/graphics/RectF;

    move-result-object p0

    .line 309
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 310
    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    return-object p1
.end method

.method public static getCropSelectionToScreenMatrix(Landroid/graphics/RectF;Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;IIII)Landroid/graphics/Matrix;
    .locals 1

    .line 534
    invoke-static {p1, p2, p3}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->getFullGeometryMatrix(Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;II)Landroid/graphics/Matrix;

    move-result-object v0

    .line 535
    invoke-static {p1, p2, p3}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->getTrueCropRect(Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;II)Landroid/graphics/RectF;

    move-result-object p1

    .line 536
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p3

    int-to-float p4, p4

    int-to-float p5, p5

    invoke-static {p2, p3, p4, p5}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->scale(FFFF)F

    move-result p2

    .line 537
    invoke-virtual {v0, p2, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 538
    invoke-static {p1, p2}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->scaleRect(Landroid/graphics/RectF;F)V

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p4, p2

    .line 539
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p3

    sub-float p3, p4, p3

    div-float/2addr p5, p2

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    sub-float p2, p5, p2

    invoke-virtual {v0, p3, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    if-eqz p0, :cond_0

    .line 541
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    sub-float/2addr p4, p2

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    sub-float/2addr p5, p2

    invoke-virtual {p1, p4, p5}, Landroid/graphics/RectF;->offset(FF)V

    .line 542
    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :cond_0
    return-object v0
.end method

.method public static getCropSelectionToScreenMatrix(Landroid/graphics/RectF;Ljava/util/Collection;IIII)Landroid/graphics/Matrix;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            "Ljava/util/Collection<",
            "Lcom/zui/gallery/filtershow/filters/FilterRepresentation;",
            ">;IIII)",
            "Landroid/graphics/Matrix;"
        }
    .end annotation

    .line 550
    invoke-static {p1}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->unpackGeometry(Ljava/util/Collection;)Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 551
    invoke-static/range {v0 .. v5}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->getCropSelectionToScreenMatrix(Landroid/graphics/RectF;Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;IIII)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method private static getFullGeometryMatrix(Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;II)Landroid/graphics/Matrix;
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    int-to-float p2, p2

    div-float/2addr p2, v0

    .line 496
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    neg-float p1, p1

    neg-float p2, p2

    .line 497
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 498
    iget p1, p0, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->straighten:F

    iget-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->rotation:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->value()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p1, p2

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 499
    invoke-static {v0, p0}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->concatMirrorMatrix(Landroid/graphics/Matrix;Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;)V

    return-object v0
.end method

.method public static getFullGeometryToScreenMatrix(Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;IIII)Landroid/graphics/Matrix;
    .locals 3

    .line 507
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->rotation:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->needsDimensionSwap(Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, p1

    move v0, p2

    goto :goto_0

    :cond_0
    move v0, p1

    move v1, p2

    :goto_0
    int-to-float v0, v0

    int-to-float v1, v1

    int-to-float p3, p3

    int-to-float p4, p4

    .line 511
    invoke-static {v0, v1, p3, p4}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->scale(FFFF)F

    move-result v0

    const v1, 0x3f7a5e35    # 0.978f

    mul-float/2addr v0, v1

    int-to-float v1, p1

    div-float v1, p3, v1

    int-to-float v2, p2

    div-float v2, p4, v2

    .line 513
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    .line 514
    invoke-static {p0, p1, p2}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->getFullGeometryMatrix(Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;II)Landroid/graphics/Matrix;

    move-result-object p0

    .line 515
    invoke-virtual {p0, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p3, p1

    div-float/2addr p4, p1

    .line 516
    invoke-virtual {p0, p3, p4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-object p0
.end method

.method public static getImageToScreenMatrix(Ljava/util/Collection;ZLandroid/graphics/Rect;FF)Landroid/graphics/Matrix;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/zui/gallery/filtershow/filters/FilterRepresentation;",
            ">;Z",
            "Landroid/graphics/Rect;",
            "FF)",
            "Landroid/graphics/Matrix;"
        }
    .end annotation

    .line 347
    invoke-static {p0}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->unpackGeometry(Ljava/util/Collection;)Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    move-result-object v0

    .line 350
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float v2, p0

    .line 351
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float v3, p0

    move v1, p1

    move v4, p3

    move v5, p4

    .line 350
    invoke-static/range {v0 .. v5}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->getOriginalToScreen(Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;ZFFFF)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method public static getOriginalToScreen(Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;IFFFF)Landroid/graphics/Matrix;
    .locals 7

    .line 424
    invoke-static {p1}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->getRotationForOrientation(I)I

    move-result p1

    .line 425
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->rotation:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    .line 426
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->value()I

    move-result v1

    add-int/2addr p1, v1

    rem-int/lit16 p1, p1, 0x168

    .line 427
    invoke-static {p1}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->fromValue(I)Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->rotation:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    float-to-int v3, p2

    float-to-int v4, p3

    float-to-int v5, p4

    float-to-int v6, p5

    const/4 v1, 0x0

    move-object v2, p0

    .line 428
    invoke-static/range {v1 .. v6}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->getCropSelectionToScreenMatrix(Landroid/graphics/RectF;Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;IIII)Landroid/graphics/Matrix;

    move-result-object p1

    .line 430
    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->rotation:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    return-object p1
.end method

.method public static getOriginalToScreen(Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;Landroid/graphics/RectF;IFFFF)Landroid/graphics/Matrix;
    .locals 3

    .line 391
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    const/4 v0, 0x6

    if-eq p2, v0, :cond_1

    const/16 v0, 0x8

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_1

    const/4 v0, 0x7

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    float-to-int v0, p3

    float-to-int v1, p4

    .line 401
    invoke-static {p0, v0, v1}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->getTrueCropRect(Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;II)Landroid/graphics/RectF;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    float-to-int v0, p4

    float-to-int v1, p3

    .line 399
    invoke-static {p0, v0, v1}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->getTrueCropRect(Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;II)Landroid/graphics/RectF;

    move-result-object v0

    .line 404
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-static {v1, v2, p5, p6}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->scale(FFFF)F

    move-result v1

    float-to-int p3, p3

    float-to-int p4, p4

    .line 406
    invoke-static {p0, p3, p4}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->getFullGeometryMatrix(Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;II)Landroid/graphics/Matrix;

    move-result-object p0

    const/4 v2, 0x1

    if-eq p2, v2, :cond_2

    .line 408
    invoke-static {p0, p3, p4, p2}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->addOrientationToMatrix(Landroid/graphics/Matrix;III)V

    .line 411
    :cond_2
    invoke-virtual {p0, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 412
    invoke-static {v0, v1}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->scaleRect(Landroid/graphics/RectF;F)V

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p5, p2

    .line 413
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result p3

    sub-float p3, p5, p3

    div-float/2addr p6, p2

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    sub-float p2, p6, p2

    invoke-virtual {p0, p3, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 414
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    sub-float/2addr p5, p2

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    sub-float/2addr p6, p2

    invoke-virtual {v0, p5, p6}, Landroid/graphics/RectF;->offset(FF)V

    if-eqz p1, :cond_3

    .line 416
    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :cond_3
    return-object p0
.end method

.method public static getOriginalToScreen(Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;ZFFFF)Landroid/graphics/Matrix;
    .locals 7

    .line 438
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getZoomOrientation()I

    move-result p1

    .line 439
    invoke-static {p1}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->getRotationForOrientation(I)I

    move-result p1

    .line 440
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->rotation:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    .line 441
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->value()I

    move-result v1

    add-int/2addr p1, v1

    rem-int/lit16 p1, p1, 0x168

    .line 442
    invoke-static {p1}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->fromValue(I)Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->rotation:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    float-to-int v3, p2

    float-to-int v4, p3

    float-to-int v5, p4

    float-to-int v6, p5

    const/4 v1, 0x0

    move-object v2, p0

    .line 443
    invoke-static/range {v1 .. v6}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->getCropSelectionToScreenMatrix(Landroid/graphics/RectF;Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;IIII)Landroid/graphics/Matrix;

    move-result-object p1

    .line 445
    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->rotation:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    return-object p1
.end method

.method public static getPartialToScreenMatrix(Ljava/util/Collection;Landroid/graphics/Rect;FFFF)Landroid/graphics/Matrix;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/zui/gallery/filtershow/filters/FilterRepresentation;",
            ">;",
            "Landroid/graphics/Rect;",
            "FFFF)",
            "Landroid/graphics/Matrix;"
        }
    .end annotation

    .line 357
    invoke-static {p0}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->unpackGeometry(Ljava/util/Collection;)Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    move-result-object p0

    .line 358
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 359
    iget v1, p0, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->straighten:F

    .line 360
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->rotation:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->value()I

    move-result v2

    .line 362
    invoke-static {v0, v1}, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->getUntranslatedStraightenCropBounds(Landroid/graphics/RectF;F)V

    sub-float v3, p2, p4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float v5, p3, p5

    div-float/2addr v5, v4

    .line 365
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 366
    invoke-virtual {v6, v3, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 367
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v3, v5

    .line 368
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v7

    cmpg-float v5, v5, v7

    if-gez v5, :cond_0

    .line 369
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float v3, p1, v0

    :cond_0
    div-float p1, p2, p4

    cmpg-float p4, p2, p3

    if-gez p4, :cond_1

    div-float p1, p3, p5

    :cond_1
    mul-float/2addr p1, v3

    div-float/2addr p2, v4

    div-float/2addr p3, v4

    .line 379
    invoke-virtual {v6, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 380
    invoke-virtual {v6, v1, p2, p3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    int-to-float p1, v2

    .line 381
    invoke-virtual {v6, p1, p2, p3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    neg-float p1, p2

    neg-float p4, p3

    .line 382
    invoke-virtual {v6, p1, p4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 383
    invoke-static {v6, p0}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->concatMirrorMatrix(Landroid/graphics/Matrix;Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;)V

    .line 384
    invoke-virtual {v6, p2, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-object v6
.end method

.method public static getRotationForOrientation(I)I
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x10e

    return p0

    :cond_1
    const/16 p0, 0x5a

    return p0

    :cond_2
    const/16 p0, 0xb4

    return p0
.end method

.method public static getTrueCropRect(Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;II)Landroid/graphics/RectF;
    .locals 3

    .line 521
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->crop:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 522
    invoke-static {v0, p1, p2}, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->findScaledCrop(Landroid/graphics/RectF;II)V

    .line 523
    iget v1, p0, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->straighten:F

    const/4 v2, 0x0

    .line 524
    iput v2, p0, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->straighten:F

    .line 525
    invoke-static {p0, p1, p2}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->getFullGeometryMatrix(Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;II)Landroid/graphics/Matrix;

    move-result-object p1

    .line 526
    iput v1, p0, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->straighten:F

    .line 527
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-object v0
.end method

.method public static getUnitVectorFromPoints([F[F)[F
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 175
    aget v2, p1, v1

    aget v3, p0, v1

    sub-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v2, 0x1

    aget p1, p1, v2

    aget p0, p0, v2

    sub-float/2addr p1, p0

    aput p1, v0, v2

    .line 178
    aget p0, v0, v1

    aget p1, v0, v1

    mul-float/2addr p0, p1

    aget p1, v0, v2

    aget v3, v0, v2

    mul-float/2addr p1, v3

    add-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    .line 179
    aget p1, v0, v1

    div-float/2addr p1, p0

    aput p1, v0, v1

    .line 180
    aget p1, v0, v2

    div-float/2addr p1, p0

    aput p1, v0, v2

    return-object v0
.end method

.method public static getVectorFromPoints([F[F)[F
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 168
    aget v2, p1, v1

    aget v3, p0, v1

    sub-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    aget p1, p1, v1

    aget p0, p0, v1

    sub-float/2addr p1, p0

    aput p1, v0, v1

    return-object v0
.end method

.method public static initializeHolder(Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 1

    .line 299
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getPreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v0

    .line 300
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getGeometryFilters()Ljava/util/Collection;

    move-result-object v0

    .line 301
    invoke-static {v0, p1}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->replaceInstances(Ljava/util/Collection;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 302
    invoke-static {p0, v0}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->unpackGeometry(Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;Ljava/util/Collection;)V

    return-void
.end method

.method public static lineIntersect([F[F)[F
    .locals 11

    const/4 v0, 0x0

    .line 103
    aget v1, p0, v0

    const/4 v2, 0x1

    .line 104
    aget v3, p0, v2

    const/4 v4, 0x2

    .line 105
    aget v5, p0, v4

    const/4 v6, 0x3

    .line 106
    aget p0, p0, v6

    .line 107
    aget v7, p1, v0

    .line 108
    aget v8, p1, v2

    .line 109
    aget v9, p1, v4

    .line 110
    aget p1, p1, v6

    sub-float/2addr v1, v5

    sub-float/2addr v3, p0

    sub-float v6, v5, v9

    sub-float v10, p1, p0

    sub-float/2addr v7, v9

    sub-float/2addr v8, p1

    mul-float p1, v3, v7

    mul-float v9, v1, v8

    sub-float/2addr p1, v9

    const/4 v9, 0x0

    cmpl-float v9, p1, v9

    if-nez v9, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    mul-float/2addr v10, v7

    mul-float/2addr v8, v6

    add-float/2addr v10, v8

    div-float/2addr v10, p1

    new-array p1, v4, [F

    mul-float/2addr v1, v10

    add-float/2addr v5, v1

    aput v5, p1, v0

    mul-float/2addr v10, v3

    add-float/2addr p0, v10

    aput p0, p1, v2

    return-object p1
.end method

.method public static needsDimensionSwap(Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;)Z
    .locals 2

    .line 482
    sget-object v0, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$1;->$SwitchMap$com$zui$gallery$filtershow$filters$FilterRotateRepresentation$Rotation:[I

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static normalize([F)[F
    .locals 5

    const/4 v0, 0x0

    .line 154
    aget v1, p0, v0

    aget v2, p0, v0

    mul-float/2addr v1, v2

    const/4 v2, 0x1

    aget v3, p0, v2

    aget v4, p0, v2

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v1, v3

    const/4 v3, 0x2

    new-array v3, v3, [F

    .line 155
    aget v4, p0, v0

    div-float/2addr v4, v1

    aput v4, v3, v0

    aget p0, p0, v2

    div-float/2addr p0, v1

    aput p0, v3, v2

    return-object v3
.end method

.method public static replaceInstances(Ljava/util/Collection;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/zui/gallery/filtershow/filters/FilterRepresentation;",
            ">;",
            "Lcom/zui/gallery/filtershow/filters/FilterRepresentation;",
            ")V"
        }
    .end annotation

    .line 285
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 286
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 287
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 288
    invoke-static {p1, v1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->sameSerializationName(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 292
    :cond_1
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->isNil()Z

    move-result v0

    if-nez v0, :cond_2

    .line 293
    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public static roundNearest(Landroid/graphics/RectF;)Landroid/graphics/Rect;
    .locals 4

    .line 212
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    .line 213
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static scalarProjection([F[F)F
    .locals 3

    const/4 v0, 0x0

    .line 163
    aget v1, p1, v0

    aget v0, p1, v0

    mul-float/2addr v1, v0

    const/4 v0, 0x1

    aget v2, p1, v0

    aget v0, p1, v0

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 164
    invoke-static {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->dotProduct([F[F)F

    move-result p0

    div-float/2addr p0, v0

    return p0
.end method

.method public static scale(FFFF)F
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_1

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_1

    cmpl-float v0, p0, p2

    if-nez v0, :cond_0

    cmpl-float v0, p1, p3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    div-float/2addr p2, p0

    div-float/2addr p3, p1

    .line 208
    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public static scaleRect(Landroid/graphics/RectF;F)V
    .locals 4

    .line 185
    iget v0, p0, Landroid/graphics/RectF;->left:F

    mul-float/2addr v0, p1

    iget v1, p0, Landroid/graphics/RectF;->top:F

    mul-float/2addr v1, p1

    iget v2, p0, Landroid/graphics/RectF;->right:F

    mul-float/2addr v2, p1

    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v3, p1

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public static shortestVectorFromPointToLine([F[F)[F
    .locals 9

    const/4 v0, 0x0

    .line 129
    aget v1, p1, v0

    const/4 v2, 0x2

    .line 130
    aget v3, p1, v2

    const/4 v4, 0x1

    .line 131
    aget v5, p1, v4

    const/4 v6, 0x3

    .line 132
    aget p1, p1, v6

    sub-float/2addr v3, v1

    sub-float/2addr p1, v5

    const/4 v6, 0x0

    cmpl-float v7, v3, v6

    if-nez v7, :cond_0

    cmpl-float v6, p1, v6

    if-nez v6, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 137
    :cond_0
    aget v6, p0, v0

    sub-float/2addr v6, v1

    mul-float/2addr v6, v3

    aget v7, p0, v4

    sub-float/2addr v7, v5

    mul-float/2addr v7, p1

    add-float/2addr v6, v7

    mul-float v7, v3, v3

    mul-float v8, p1, p1

    add-float/2addr v7, v8

    div-float/2addr v6, v7

    new-array v7, v2, [F

    mul-float/2addr v3, v6

    add-float/2addr v1, v3

    aput v1, v7, v0

    mul-float/2addr v6, p1

    add-float/2addr v5, v6

    aput v5, v7, v4

    new-array p1, v2, [F

    .line 142
    aget v1, v7, v0

    aget v2, p0, v0

    sub-float/2addr v1, v2

    aput v1, p1, v0

    aget v0, v7, v4

    aget p0, p0, v4

    sub-float/2addr v0, p0

    aput v0, p1, v4

    return-object p1
.end method

.method public static unpackGeometry(Ljava/util/Collection;)Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/zui/gallery/filtershow/filters/FilterRepresentation;",
            ">;)",
            "Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;"
        }
    .end annotation

    .line 254
    new-instance v0, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;-><init>()V

    .line 255
    invoke-static {v0, p0}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->unpackGeometry(Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;Ljava/util/Collection;)V

    return-object v0
.end method

.method public static unpackGeometry(Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;",
            "Ljava/util/Collection<",
            "Lcom/zui/gallery/filtershow/filters/FilterRepresentation;",
            ">;)V"
        }
    .end annotation

    .line 261
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->wipe()V

    if-nez p1, :cond_0

    return-void

    .line 266
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 267
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->isNil()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 270
    :cond_2
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getSerializationName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ROTATION"

    if-ne v1, v2, :cond_3

    .line 271
    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->getRotation()Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->rotation:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    goto :goto_0

    .line 272
    :cond_3
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getSerializationName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "STRAIGHTEN"

    if-ne v1, v2, :cond_4

    .line 274
    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;->getStraighten()F

    move-result v0

    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->straighten:F

    goto :goto_0

    .line 275
    :cond_4
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getSerializationName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CROP"

    if-ne v1, v2, :cond_5

    .line 276
    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->crop:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->getCrop(Landroid/graphics/RectF;)V

    goto :goto_0

    .line 277
    :cond_5
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getSerializationName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MIRROR"

    if-ne v1, v2, :cond_1

    .line 278
    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->getMirror()Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->mirror:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    goto :goto_0

    :cond_6
    return-void
.end method

.method public static vectorLength([F)F
    .locals 3

    const/4 v0, 0x0

    .line 201
    aget v1, p0, v0

    aget v0, p0, v0

    mul-float/2addr v1, v0

    const/4 v0, 0x1

    aget v2, p0, v0

    aget p0, p0, v0

    mul-float/2addr v2, p0

    add-float/2addr v1, v2

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static vectorSubtract([F[F)[F
    .locals 5

    .line 190
    array-length v0, p0

    .line 191
    array-length v1, p1

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 193
    :cond_0
    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 195
    aget v3, p0, v2

    aget v4, p1, v2

    sub-float/2addr v3, v4

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method
