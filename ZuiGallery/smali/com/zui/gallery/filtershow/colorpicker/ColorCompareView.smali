.class public Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;
.super Landroid/view/View;
.source "ColorCompareView.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/colorpicker/ColorListener;


# static fields
.field public static final BORDER_SIZE:F


# instance fields
.field private mBarPaint1:Landroid/graphics/Paint;

.field private mBgcolor:I

.field private mBorder:F

.field private mCheckDim:I

.field private mCheckPaint:Landroid/graphics/Paint;

.field mColorListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/colorpicker/ColorListener;",
            ">;"
        }
    .end annotation
.end field

.field private mHSVO:[F

.field private mHeight:F

.field private mOrigBarPaint1:Landroid/graphics/Paint;

.field private mOrigHSVO:[F

.field private mOrigRegion:Landroid/graphics/Path;

.field private mRadius:F

.field private mRegion:Landroid/graphics/Path;

.field private mWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 47
    iput p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mBgcolor:I

    const/4 p2, 0x4

    new-array v0, p2, [F

    .line 51
    iput-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mHSVO:[F

    new-array p2, p2, [F

    .line 52
    iput-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mOrigHSVO:[F

    const/16 p2, 0x8

    .line 57
    iput p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mCheckDim:I

    .line 161
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mColorListeners:Ljava/util/ArrayList;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 62
    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/4 v0, 0x0

    mul-float/2addr p2, v0

    .line 63
    iput p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mBorder:F

    .line 64
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mBarPaint1:Landroid/graphics/Paint;

    .line 65
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mOrigBarPaint1:Landroid/graphics/Paint;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060175

    .line 67
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mCheckDim:I

    .line 68
    iget-object p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mBarPaint1:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 69
    iget-object p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mOrigBarPaint1:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 71
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->makeCheckPaint()V

    return-void
.end method

.method private makeCheckPaint()V
    .locals 6

    .line 75
    iget v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mCheckDim:I

    mul-int/lit8 v0, v0, 0x2

    mul-int v1, v0, v0

    .line 76
    new-array v2, v1, [I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 78
    iget v4, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mCheckDim:I

    mul-int v5, v0, v4

    div-int v5, v3, v5

    .line 79
    div-int v4, v3, v4

    rem-int/lit8 v4, v4, 0x2

    if-ne v4, v5, :cond_0

    const v4, -0x555556

    goto :goto_1

    :cond_0
    const v4, -0xbbbbbc

    .line 80
    :goto_1
    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 82
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 83
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 84
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mCheckPaint:Landroid/graphics/Paint;

    .line 85
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method private updatePaint()V
    .locals 6

    .line 120
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mHSVO:[F

    const/4 v1, 0x3

    aget v2, v0, v1

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    .line 121
    iget-object v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mBarPaint1:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mOrigHSVO:[F

    aget v1, v0, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {v1, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    .line 123
    iget-object v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mOrigBarPaint1:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mOrigRegion:Landroid/graphics/Path;

    .line 125
    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mWidth:F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 126
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mOrigRegion:Landroid/graphics/Path;

    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mWidth:F

    iget v3, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mHeight:F

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 127
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mOrigRegion:Landroid/graphics/Path;

    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mWidth:F

    iget v3, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mHeight:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v5, v3, v4

    sub-float/2addr v1, v5

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 128
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mOrigRegion:Landroid/graphics/Path;

    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mWidth:F

    iget v3, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mHeight:F

    sub-float/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 130
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mRegion:Landroid/graphics/Path;

    .line 131
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 132
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mRegion:Landroid/graphics/Path;

    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mWidth:F

    iget v3, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mHeight:F

    sub-float/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 133
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mRegion:Landroid/graphics/Path;

    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mWidth:F

    iget v3, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mHeight:F

    mul-float/2addr v4, v3

    sub-float/2addr v1, v4

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 134
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mRegion:Landroid/graphics/Path;

    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mHeight:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method


# virtual methods
.method public addColorListener(Lcom/zui/gallery/filtershow/colorpicker/ColorListener;)V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mColorListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public notifyColorListeners([F)V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mColorListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/colorpicker/ColorListener;

    .line 165
    invoke-interface {v1, p1}, Lcom/zui/gallery/filtershow/colorpicker/ColorListener;->setColor([F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 140
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 141
    iget v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mBgcolor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 142
    iget v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mBorder:F

    iget v4, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mWidth:F

    iget v5, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mHeight:F

    iget-object v6, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mCheckPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 143
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mRegion:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mBarPaint1:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 144
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mOrigRegion:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mOrigBarPaint1:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    int-to-float p1, p1

    .line 114
    iput p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mWidth:F

    int-to-float p1, p2

    .line 115
    iput p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mHeight:F

    .line 116
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->updatePaint()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 94
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return v1

    .line 97
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 99
    iget p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    iget v3, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mHeight:F

    mul-float/2addr v3, v2

    sub-float/2addr p1, v3

    cmpl-float p1, v0, p1

    if-lez p1, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->resetToOriginal()V

    :cond_1
    return v1
.end method

.method public removeColorListener(Lcom/zui/gallery/filtershow/colorpicker/ColorListener;)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mColorListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public resetToOriginal()V
    .locals 4

    .line 106
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mOrigHSVO:[F

    iget-object v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mHSVO:[F

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->updatePaint()V

    .line 108
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mHSVO:[F

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->notifyColorListeners([F)V

    .line 109
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->invalidate()V

    return-void
.end method

.method public setColor([F)V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mHSVO:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->updatePaint()V

    .line 158
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->invalidate()V

    return-void
.end method

.method public setOrigColor([F)V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mOrigHSVO:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    iget-object p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mOrigHSVO:[F

    const/4 v0, 0x3

    aget v0, p1, v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0, p1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p1

    .line 150
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->mOrigBarPaint1:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 151
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->updatePaint()V

    return-void
.end method
