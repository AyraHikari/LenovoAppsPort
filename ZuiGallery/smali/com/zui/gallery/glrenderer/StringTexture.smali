.class public Lcom/zui/gallery/glrenderer/StringTexture;
.super Lcom/zui/gallery/glrenderer/CanvasTexture;
.source "StringTexture.java"


# instance fields
.field private debug:Z

.field private final mMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private final mPaint:Landroid/text/TextPaint;

.field private final mText:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;II)V
    .locals 0

    .line 42
    invoke-direct {p0, p4, p5}, Lcom/zui/gallery/glrenderer/CanvasTexture;-><init>(II)V

    const/4 p4, 0x0

    .line 39
    iput-boolean p4, p0, Lcom/zui/gallery/glrenderer/StringTexture;->debug:Z

    .line 43
    iput-object p1, p0, Lcom/zui/gallery/glrenderer/StringTexture;->mText:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/zui/gallery/glrenderer/StringTexture;->mPaint:Landroid/text/TextPaint;

    .line 45
    iput-object p3, p0, Lcom/zui/gallery/glrenderer/StringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    return-void
.end method

.method public static getDefaultPaint(FI)Landroid/text/TextPaint;
    .locals 1

    .line 49
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 50
    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 p0, 0x1

    .line 51
    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 52
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;FI)Lcom/zui/gallery/glrenderer/StringTexture;
    .locals 0

    .line 61
    invoke-static {p1, p2}, Lcom/zui/gallery/glrenderer/StringTexture;->getDefaultPaint(FI)Landroid/text/TextPaint;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/zui/gallery/glrenderer/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcom/zui/gallery/glrenderer/StringTexture;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Ljava/lang/String;FIFZ)Lcom/zui/gallery/glrenderer/StringTexture;
    .locals 0

    .line 67
    invoke-static {p1, p2}, Lcom/zui/gallery/glrenderer/StringTexture;->getDefaultPaint(FI)Landroid/text/TextPaint;

    move-result-object p1

    if-eqz p4, :cond_0

    const/4 p2, 0x1

    .line 69
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_0
    const/4 p2, 0x0

    cmpl-float p2, p3, p2

    if-lez p2, :cond_1

    .line 72
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p0, p1, p3, p2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 73
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 75
    :cond_1
    invoke-static {p0, p1}, Lcom/zui/gallery/glrenderer/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcom/zui/gallery/glrenderer/StringTexture;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcom/zui/gallery/glrenderer/StringTexture;
    .locals 7

    .line 79
    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    .line 80
    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 82
    iget v1, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v2, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    if-gtz v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    if-gtz v1, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v1

    .line 87
    :goto_1
    new-instance v6, Lcom/zui/gallery/glrenderer/StringTexture;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/zui/gallery/glrenderer/StringTexture;-><init>(Ljava/lang/String;Landroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;II)V

    return-object v6
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 6

    .line 93
    iget-boolean p2, p0, Lcom/zui/gallery/glrenderer/StringTexture;->debug:Z

    if-eqz p2, :cond_0

    .line 94
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 95
    invoke-virtual {v5, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p2, 0x1

    .line 96
    invoke-virtual {v5, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 97
    invoke-virtual {v5, p2}, Landroid/graphics/Paint;->setDither(Z)V

    const p2, -0xffff01

    .line 98
    invoke-virtual {v5, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 100
    iget p2, p0, Lcom/zui/gallery/glrenderer/StringTexture;->mWidth:I

    int-to-float v3, p2

    iget p2, p0, Lcom/zui/gallery/glrenderer/StringTexture;->mHeight:I

    int-to-float v4, p2

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 103
    :cond_0
    iget-object p2, p0, Lcom/zui/gallery/glrenderer/StringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget p2, p2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int p2, p2

    int-to-float p2, p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 104
    iget-object p2, p0, Lcom/zui/gallery/glrenderer/StringTexture;->mText:Ljava/lang/String;

    iget-object v1, p0, Lcom/zui/gallery/glrenderer/StringTexture;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, v0, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method
