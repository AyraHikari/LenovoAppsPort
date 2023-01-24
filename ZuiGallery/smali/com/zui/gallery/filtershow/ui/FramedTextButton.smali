.class public Lcom/zui/gallery/filtershow/ui/FramedTextButton;
.super Landroid/widget/ImageButton;
.source "FramedTextButton.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "FramedTextButton"

.field private static gPaint:Landroid/graphics/Paint; = null

.field private static gPath:Landroid/graphics/Path; = null

.field private static mTextPadding:I = 0x14

.field private static mTextSize:I = 0x18

.field private static mTrianglePadding:I

.field private static mTriangleSize:I


# instance fields
.field private mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    .line 36
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->gPath:Landroid/graphics/Path;

    const/4 v0, 0x2

    .line 37
    sput v0, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->mTrianglePadding:I

    const/16 v0, 0x1e

    .line 38
    sput v0, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->mTriangleSize:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, v0}, Lcom/zui/gallery/filtershow/ui/FramedTextButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->mText:Ljava/lang/String;

    if-nez p2, :cond_0

    return-void

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/zui/gallery/R$styleable;->ImageButtonTitle:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    .line 95
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->mText:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static setTextPadding(I)V
    .locals 0

    .line 45
    sput p0, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->mTextPadding:I

    return-void
.end method

.method public static setTextSize(I)V
    .locals 0

    .line 41
    sput p0, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->mTextSize:I

    return-void
.end method

.method public static setTrianglePadding(I)V
    .locals 0

    .line 49
    sput p0, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->mTrianglePadding:I

    return-void
.end method

.method public static setTriangleSize(I)V
    .locals 0

    .line 53
    sput p0, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->mTriangleSize:I

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 105
    sget-object v0, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    const/16 v1, 0x60

    const/16 v2, 0xff

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 106
    sget-object v0, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 107
    sget-object v0, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 108
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->getWidth()I

    move-result v0

    .line 109
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->getHeight()I

    move-result v3

    .line 110
    sget v4, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->mTextPadding:I

    int-to-float v6, v4

    int-to-float v7, v4

    sub-int v5, v0, v4

    int-to-float v8, v5

    sub-int v4, v3, v4

    int-to-float v9, v4

    sget-object v10, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 112
    sget-object v4, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->gPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 113
    sget-object v4, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->gPath:Landroid/graphics/Path;

    sget v5, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->mTextPadding:I

    sub-int v6, v0, v5

    sget v7, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->mTrianglePadding:I

    sub-int/2addr v6, v7

    sget v8, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->mTriangleSize:I

    sub-int/2addr v6, v8

    int-to-float v6, v6

    sub-int v5, v3, v5

    sub-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v4, v6, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 115
    sget-object v4, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->gPath:Landroid/graphics/Path;

    sget v5, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->mTextPadding:I

    sub-int v6, v0, v5

    sget v7, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->mTrianglePadding:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    sub-int v5, v3, v5

    sub-int/2addr v5, v7

    sget v7, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->mTriangleSize:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v4, v6, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 117
    sget-object v4, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->gPath:Landroid/graphics/Path;

    sget v5, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->mTextPadding:I

    sub-int v6, v0, v5

    sget v7, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->mTrianglePadding:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    sub-int v5, v3, v5

    sub-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v4, v6, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 119
    sget-object v4, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->gPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 120
    sget-object v4, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    const/16 v5, 0x80

    invoke-virtual {v4, v5, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 121
    sget-object v4, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 122
    sget-object v4, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 123
    sget-object v4, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->gPath:Landroid/graphics/Path;

    sget-object v5, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 124
    iget-object v4, p0, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->mText:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 125
    sget-object v4, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->reset()V

    .line 126
    sget-object v4, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 127
    sget-object v2, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    sget v4, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->mTextSize:I

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 128
    sget-object v2, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->mText:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 129
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 130
    sget-object v5, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->mText:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5, v6, v7, v8, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    int-to-float v0, v0

    sub-float/2addr v0, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 132
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    .line 134
    iget-object v1, p0, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->mText:Ljava/lang/String;

    int-to-float v0, v0

    int-to-float v2, v3

    sget-object v3, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->mText:Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->invalidate()V

    return-void
.end method

.method public setTextFrom(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 64
    :pswitch_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1000b2

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :pswitch_1
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1000b1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :pswitch_2
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1000b0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :pswitch_3
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1000af

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->setText(Ljava/lang/String;)V

    .line 80
    :goto_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->invalidate()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f08011c
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
