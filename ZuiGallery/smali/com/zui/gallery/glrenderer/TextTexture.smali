.class public Lcom/zui/gallery/glrenderer/TextTexture;
.super Lcom/zui/gallery/glrenderer/CanvasTexture;
.source "TextTexture.java"


# instance fields
.field private final mBackgroundpaint:Landroid/graphics/Paint;

.field private final mMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private final mPaint:Landroid/text/TextPaint;

.field private final mText:Ljava/lang/String;

.field public mTextBackgroundAlpha:I

.field public mTextBackgroundColor:I

.field public mTextBackgroundHeight:I

.field public mTextBackgroundOuterRadiusRat:F

.field public mTextBackgroundOuterRect:Landroid/graphics/RectF;

.field public mTextBackgroundRoundCorner:I

.field public mTextBackgroundWidth:I

.field public mTextFontColor:I

.field public mTextFontSize:I

.field public mTextHeight:I

.field public mTextPadding:I

.field public mTextPaddingX:I

.field public mTextPaddingY:I

.field public mTextWidth:I

.field public mTexturePositionX:I

.field public mTexturePositionY:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;IIIIIILandroid/graphics/Paint;I)V
    .locals 1

    .line 61
    invoke-direct {p0, p4, p5}, Lcom/zui/gallery/glrenderer/CanvasTexture;-><init>(II)V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/zui/gallery/glrenderer/TextTexture;->mTexturePositionX:I

    .line 29
    iput v0, p0, Lcom/zui/gallery/glrenderer/TextTexture;->mTexturePositionY:I

    .line 31
    iput v0, p0, Lcom/zui/gallery/glrenderer/TextTexture;->mTextWidth:I

    .line 33
    iput v0, p0, Lcom/zui/gallery/glrenderer/TextTexture;->mTextHeight:I

    .line 35
    iput v0, p0, Lcom/zui/gallery/glrenderer/TextTexture;->mTextPaddingX:I

    .line 37
    iput v0, p0, Lcom/zui/gallery/glrenderer/TextTexture;->mTextPaddingY:I

    .line 39
    iput v0, p0, Lcom/zui/gallery/glrenderer/TextTexture;->mTextBackgroundWidth:I

    .line 41
    iput v0, p0, Lcom/zui/gallery/glrenderer/TextTexture;->mTextBackgroundHeight:I

    .line 43
    iput v0, p0, Lcom/zui/gallery/glrenderer/TextTexture;->mTextFontSize:I

    .line 45
    iput v0, p0, Lcom/zui/gallery/glrenderer/TextTexture;->mTextFontColor:I

    .line 47
    iput v0, p0, Lcom/zui/gallery/glrenderer/TextTexture;->mTextPadding:I

    .line 49
    iput v0, p0, Lcom/zui/gallery/glrenderer/TextTexture;->mTextBackgroundColor:I

    .line 51
    iput v0, p0, Lcom/zui/gallery/glrenderer/TextTexture;->mTextBackgroundAlpha:I

    .line 53
    iput v0, p0, Lcom/zui/gallery/glrenderer/TextTexture;->mTextBackgroundRoundCorner:I

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/zui/gallery/glrenderer/TextTexture;->mTextBackgroundOuterRadiusRat:F

    .line 62
    iput-object p1, p0, Lcom/zui/gallery/glrenderer/TextTexture;->mText:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/zui/gallery/glrenderer/TextTexture;->mPaint:Landroid/text/TextPaint;

    .line 64
    iput-object p10, p0, Lcom/zui/gallery/glrenderer/TextTexture;->mBackgroundpaint:Landroid/graphics/Paint;

    .line 65
    iput-object p3, p0, Lcom/zui/gallery/glrenderer/TextTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 67
    iput p6, p0, Lcom/zui/gallery/glrenderer/TextTexture;->mTexturePositionX:I

    .line 68
    iput p7, p0, Lcom/zui/gallery/glrenderer/TextTexture;->mTexturePositionY:I

    .line 70
    iput p4, p0, Lcom/zui/gallery/glrenderer/TextTexture;->mTextWidth:I

    .line 71
    iput p5, p0, Lcom/zui/gallery/glrenderer/TextTexture;->mTextHeight:I

    .line 73
    iput p8, p0, Lcom/zui/gallery/glrenderer/TextTexture;->mTextPaddingX:I

    .line 74
    iput p9, p0, Lcom/zui/gallery/glrenderer/TextTexture;->mTextPaddingY:I

    .line 76
    new-instance p1, Landroid/graphics/RectF;

    iget p2, p0, Lcom/zui/gallery/glrenderer/TextTexture;->mTextWidth:I

    int-to-float p2, p2

    iget p3, p0, Lcom/zui/gallery/glrenderer/TextTexture;->mTextHeight:I

    int-to-float p3, p3

    invoke-direct {p1, v0, v0, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/zui/gallery/glrenderer/TextTexture;->mTextBackgroundOuterRect:Landroid/graphics/RectF;

    int-to-float p1, p11

    .line 77
    iput p1, p0, Lcom/zui/gallery/glrenderer/TextTexture;->mTextBackgroundOuterRadiusRat:F

    return-void
.end method

.method public static getDefaultBackgroundPaint(II)Landroid/graphics/Paint;
    .locals 2

    .line 99
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 100
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-object v0
.end method

.method public static getDefaultPaint(FI)Landroid/text/TextPaint;
    .locals 2

    .line 81
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 82
    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 p0, 0x1

    .line 83
    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 84
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    const/high16 p0, 0x40000000    # 2.0f

    const/4 p1, 0x0

    const/high16 v1, -0x1000000

    .line 85
    invoke-virtual {v0, p0, p1, p1, v1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    return-object v0
.end method

.method public static getPaint(FIF)Landroid/text/TextPaint;
    .locals 1

    .line 90
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 91
    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 p0, 0x1

    .line 92
    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 93
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    const/4 p0, 0x0

    const/high16 p1, -0x1000000

    .line 94
    invoke-virtual {v0, p2, p0, p0, p1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    return-object v0
.end method

.method public static newInstance(IILjava/lang/String;FIIIIII)Lcom/zui/gallery/glrenderer/TextTexture;
    .locals 9

    const/4 v0, 0x0

    move v1, p3

    move v2, p4

    .line 122
    invoke-static {p3, p4, v0}, Lcom/zui/gallery/glrenderer/TextTexture;->getPaint(FIF)Landroid/text/TextPaint;

    move-result-object v4

    .line 123
    invoke-static/range {p7 .. p8}, Lcom/zui/gallery/glrenderer/TextTexture;->getDefaultBackgroundPaint(II)Landroid/graphics/Paint;

    move-result-object v7

    move v1, p0

    move v2, p1

    move-object v3, p2

    move v5, p5

    move v6, p6

    move/from16 v8, p9

    .line 122
    invoke-static/range {v1 .. v8}, Lcom/zui/gallery/glrenderer/TextTexture;->newInstance(IILjava/lang/String;Landroid/text/TextPaint;IILandroid/graphics/Paint;I)Lcom/zui/gallery/glrenderer/TextTexture;

    move-result-object v0

    return-object v0
.end method

.method private static newInstance(IILjava/lang/String;Landroid/text/TextPaint;IILandroid/graphics/Paint;I)Lcom/zui/gallery/glrenderer/TextTexture;
    .locals 13

    .line 107
    invoke-virtual/range {p3 .. p3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    move-object v1, p2

    move-object/from16 v2, p3

    .line 108
    invoke-virtual {v2, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 109
    iget v4, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v5, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v4, v5

    const/4 v5, 0x1

    if-gtz v0, :cond_0

    move v0, v5

    :cond_0
    if-gtz v4, :cond_1

    move v4, v5

    :cond_1
    mul-int/lit8 v5, p4, 0x2

    add-int/2addr v5, v0

    add-int v6, p5, v4

    .line 117
    new-instance v12, Lcom/zui/gallery/glrenderer/TextTexture;

    move-object v0, v12

    move-object v1, p2

    move-object/from16 v2, p3

    move v4, v5

    move v5, v6

    move v6, p0

    move v7, p1

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v0 .. v11}, Lcom/zui/gallery/glrenderer/TextTexture;-><init>(Ljava/lang/String;Landroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;IIIIIILandroid/graphics/Paint;I)V

    return-object v12
.end method


# virtual methods
.method public getTexturePositionX()I
    .locals 1

    .line 134
    iget v0, p0, Lcom/zui/gallery/glrenderer/TextTexture;->mTexturePositionX:I

    return v0
.end method

.method public getTexturePositionY()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/zui/gallery/glrenderer/TextTexture;->mTexturePositionY:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 128
    iget-object p2, p0, Lcom/zui/gallery/glrenderer/TextTexture;->mTextBackgroundOuterRect:Landroid/graphics/RectF;

    iget v0, p0, Lcom/zui/gallery/glrenderer/TextTexture;->mTextBackgroundOuterRadiusRat:F

    iget-object v1, p0, Lcom/zui/gallery/glrenderer/TextTexture;->mBackgroundpaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v0, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 129
    iget p2, p0, Lcom/zui/gallery/glrenderer/TextTexture;->mTextPaddingX:I

    int-to-float p2, p2

    iget-object v0, p0, Lcom/zui/gallery/glrenderer/TextTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v0, v0

    iget v1, p0, Lcom/zui/gallery/glrenderer/TextTexture;->mTextPaddingY:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 130
    iget-object p2, p0, Lcom/zui/gallery/glrenderer/TextTexture;->mText:Ljava/lang/String;

    iget-object v0, p0, Lcom/zui/gallery/glrenderer/TextTexture;->mPaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setTexturePositionX(I)V
    .locals 0

    .line 142
    iput p1, p0, Lcom/zui/gallery/glrenderer/TextTexture;->mTexturePositionX:I

    return-void
.end method

.method public setTexturePositionY(I)V
    .locals 0

    .line 146
    iput p1, p0, Lcom/zui/gallery/glrenderer/TextTexture;->mTexturePositionY:I

    return-void
.end method
