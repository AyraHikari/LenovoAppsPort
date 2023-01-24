.class Lcom/zui/gallery/filtershow/filters/ImageFilterDraw$Brush;
.super Ljava/lang/Object;
.source "ImageFilterDraw.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/filters/ImageFilterDraw$DrawStyle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Brush"
.end annotation


# instance fields
.field mBrush:Landroid/graphics/Bitmap;

.field mBrushID:I

.field mType:B

.field final synthetic this$0:Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;I)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw$Brush;->this$0:Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput p2, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw$Brush;->mBrushID:I

    return-void
.end method


# virtual methods
.method public createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 4

    .line 295
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v1, p2

    .line 296
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 297
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-static {p2, p3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 298
    new-instance p3, Landroid/graphics/Canvas;

    invoke-direct {p3, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 300
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 301
    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 302
    invoke-virtual {p3, p1, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-object p2
.end method

.method draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;IFLandroid/graphics/Path;)V
    .locals 9

    .line 308
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [F

    new-array v1, v1, [F

    const/4 v3, 0x0

    .line 312
    invoke-virtual {v0, p5, v3}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    const/4 p5, 0x1

    .line 314
    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 315
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 317
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, p3, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 321
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw$Brush;->getBrush()Landroid/graphics/Bitmap;

    move-result-object p3

    float-to-int v4, p4

    invoke-virtual {p0, p3, v4, v4, p5}, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw$Brush;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 322
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr p4, v5

    const/high16 v5, 0x41000000    # 8.0f

    div-float v5, p4, v5

    const/4 v6, 0x0

    :goto_0
    cmpg-float v7, v6, v4

    if-gez v7, :cond_0

    .line 326
    invoke-virtual {v0, v6, v2, v1}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 328
    aget v7, v2, v3

    sub-float/2addr v7, p4

    aget v8, v2, p5

    sub-float/2addr v8, p4

    invoke-virtual {p1, p3, v7, v8, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-float/2addr v6, v5

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getBrush()Landroid/graphics/Bitmap;
    .locals 3

    .line 265
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw$Brush;->mBrush:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 266
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 267
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 268
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getActivity()Lcom/zui/gallery/filtershow/FilterShowActivity;

    move-result-object v1

    .line 269
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw$Brush;->mBrushID:I

    .line 268
    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw$Brush;->mBrush:Landroid/graphics/Bitmap;

    .line 270
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw$Brush;->mBrush:Landroid/graphics/Bitmap;

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw$Brush;->mBrush:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public paint(Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 6

    if-eqz p1, :cond_1

    .line 279
    iget-object p4, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mPath:Landroid/graphics/Path;

    if-nez p4, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 283
    sget-object p4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 284
    sget-object p4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, p4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 285
    sget-object p4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, p4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    const/4 p4, 0x1

    .line 286
    invoke-virtual {v2, p4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 287
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 288
    iget-object p4, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mPath:Landroid/graphics/Path;

    invoke-virtual {v5, p4, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 289
    iget v3, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mColor:I

    iget p1, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mRadius:F

    invoke-virtual {p3, p1}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result p1

    const/high16 p3, 0x40000000    # 2.0f

    mul-float v4, p1, p3

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw$Brush;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;IFLandroid/graphics/Path;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setType(B)V
    .locals 0

    .line 334
    iput-byte p1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw$Brush;->mType:B

    return-void
.end method
