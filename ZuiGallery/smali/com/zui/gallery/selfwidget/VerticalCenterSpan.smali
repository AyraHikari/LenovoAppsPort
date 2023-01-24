.class public Lcom/zui/gallery/selfwidget/VerticalCenterSpan;
.super Landroid/text/style/ReplacementSpan;
.source "VerticalCenterSpan.java"


# instance fields
.field private fontSizePx:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 16
    iput p1, p0, Lcom/zui/gallery/selfwidget/VerticalCenterSpan;->fontSizePx:F

    return-void
.end method

.method private getCustomTextPaint(Landroid/graphics/Paint;)Landroid/text/TextPaint;
    .locals 1

    .line 36
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, p1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 37
    iget p1, p0, Lcom/zui/gallery/selfwidget/VerticalCenterSpan;->fontSizePx:F

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0

    .line 28
    invoke-interface {p2, p3, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    .line 29
    invoke-direct {p0, p9}, Lcom/zui/gallery/selfwidget/VerticalCenterSpan;->getCustomTextPaint(Landroid/graphics/Paint;)Landroid/text/TextPaint;

    move-result-object p3

    .line 30
    invoke-virtual {p3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p4

    .line 32
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    iget p9, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr p9, p7

    add-int/2addr p9, p7

    iget p4, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr p9, p4

    div-int/lit8 p9, p9, 0x2

    add-int/2addr p8, p6

    div-int/lit8 p8, p8, 0x2

    sub-int/2addr p9, p8

    sub-int/2addr p7, p9

    add-int/lit8 p7, p7, 0x6

    int-to-float p4, p7

    invoke-virtual {p1, p2, p5, p4, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    .line 21
    invoke-interface {p2, p3, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    .line 22
    invoke-direct {p0, p1}, Lcom/zui/gallery/selfwidget/VerticalCenterSpan;->getCustomTextPaint(Landroid/graphics/Paint;)Landroid/text/TextPaint;

    move-result-object p1

    .line 23
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method
