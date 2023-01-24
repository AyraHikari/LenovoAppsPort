.class public Lcom/zui/gallery/filtershow/category/IconView;
.super Landroid/view/View;
.source "IconView.java"


# static fields
.field public static final HORIZONTAL:I = 0x1

.field public static final VERTICAL:I


# instance fields
.field private bitmapHeight:I

.field private bitmapTop:I

.field private look_left:I

.field private mBackgroundColor:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapBounds:Landroid/graphics/Rect;

.field private mContext:Landroid/content/Context;

.field private mIconView:I

.field private mMargin:I

.field private mOrientation:I

.field private mPaint:Landroid/graphics/Paint;

.field private mText:Ljava/lang/String;

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextColor:I

.field private mTextSize:I

.field private mUseOnlyDrawable:Z

.field private rectHeight:I

.field private top_margin_filter:I

.field private top_margin_look:I

.field private top_margin_name:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 95
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/category/IconView;->mPaint:Landroid/graphics/Paint;

    const/16 v0, 0x10

    .line 53
    iput v0, p0, Lcom/zui/gallery/filtershow/category/IconView;->mMargin:I

    const/4 v0, 0x1

    .line 54
    iput v0, p0, Lcom/zui/gallery/filtershow/category/IconView;->mOrientation:I

    const/16 v0, 0x20

    .line 55
    iput v0, p0, Lcom/zui/gallery/filtershow/category/IconView;->mTextSize:I

    const/16 v0, 0xd2

    .line 56
    iput v0, p0, Lcom/zui/gallery/filtershow/category/IconView;->mIconView:I

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/category/IconView;->mTextBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/category/IconView;->mUseOnlyDrawable:Z

    .line 62
    iput v0, p0, Lcom/zui/gallery/filtershow/category/IconView;->top_margin_filter:I

    .line 63
    iput v0, p0, Lcom/zui/gallery/filtershow/category/IconView;->top_margin_look:I

    .line 64
    iput v0, p0, Lcom/zui/gallery/filtershow/category/IconView;->look_left:I

    .line 65
    iput v0, p0, Lcom/zui/gallery/filtershow/category/IconView;->top_margin_name:I

    .line 96
    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/IconView;->mContext:Landroid/content/Context;

    .line 97
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/category/IconView;->setup(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/category/IconView;->mPaint:Landroid/graphics/Paint;

    const/16 v0, 0x10

    .line 53
    iput v0, p0, Lcom/zui/gallery/filtershow/category/IconView;->mMargin:I

    const/4 v0, 0x1

    .line 54
    iput v0, p0, Lcom/zui/gallery/filtershow/category/IconView;->mOrientation:I

    const/16 v1, 0x20

    .line 55
    iput v1, p0, Lcom/zui/gallery/filtershow/category/IconView;->mTextSize:I

    const/16 v1, 0xd2

    .line 56
    iput v1, p0, Lcom/zui/gallery/filtershow/category/IconView;->mIconView:I

    .line 57
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/category/IconView;->mTextBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    .line 61
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/category/IconView;->mUseOnlyDrawable:Z

    .line 62
    iput v1, p0, Lcom/zui/gallery/filtershow/category/IconView;->top_margin_filter:I

    .line 63
    iput v1, p0, Lcom/zui/gallery/filtershow/category/IconView;->top_margin_look:I

    .line 64
    iput v1, p0, Lcom/zui/gallery/filtershow/category/IconView;->look_left:I

    .line 65
    iput v1, p0, Lcom/zui/gallery/filtershow/category/IconView;->top_margin_name:I

    .line 74
    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/IconView;->mContext:Landroid/content/Context;

    .line 75
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/category/IconView;->setup(Landroid/content/Context;)V

    const-string v2, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v3, "src"

    .line 76
    invoke-interface {p2, v2, v3, v1}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p2

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 79
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p2

    .line 80
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 81
    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/category/IconView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 82
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/category/IconView;->setUseOnlyDrawable(Z)V

    const v0, 0x7f06019f

    .line 83
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/zui/gallery/filtershow/category/IconView;->top_margin_filter:I

    const v0, 0x7f060356

    .line 84
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/zui/gallery/filtershow/category/IconView;->top_margin_name:I

    const v0, 0x7f060225

    .line 85
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/zui/gallery/filtershow/category/IconView;->top_margin_look:I

    const v0, 0x7f060226

    .line 86
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/zui/gallery/filtershow/category/IconView;->look_left:I

    .line 88
    :try_start_0
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 90
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private addGradient(Landroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;
    .locals 17

    move-object/from16 v1, p1

    .line 415
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 416
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 419
    :try_start_0
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 420
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 421
    new-instance v4, Landroid/graphics/LinearGradient;

    const/4 v10, 0x0

    const/4 v11, 0x0

    int-to-float v6, v0

    int-to-float v7, v2

    const/4 v0, 0x2

    new-array v14, v0, [I

    const/4 v0, 0x0

    const/high16 v2, 0x66000000

    aput v2, v14, v0

    const/4 v0, 0x1

    aput v2, v14, v0

    const/4 v15, 0x0

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v9, v4

    move v12, v6

    move v13, v7

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 422
    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 423
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x0

    move-object/from16 v2, p0

    .line 426
    :try_start_1
    iget v0, v2, Lcom/zui/gallery/filtershow/category/IconView;->top_margin_name:I

    add-int/lit8 v0, v0, -0x14

    int-to-float v5, v0

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v2, p0

    .line 428
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addGradient error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "kk"

    invoke-static {v3, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v1
.end method

.method private getColorWithAlpha(FI)I
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    const/4 v0, 0x0

    .line 436
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v0, 0xff

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    shl-int/lit8 p1, p1, 0x18

    const v0, 0xffffff

    and-int/2addr p2, v0

    add-int/2addr p1, p2

    return p1
.end method

.method private setup(Landroid/content/Context;)V
    .locals 3

    .line 101
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/IconView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0500e8

    .line 102
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/filtershow/category/IconView;->mTextColor:I

    const v0, 0x7f0500ef

    .line 103
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/filtershow/category/IconView;->mBackgroundColor:I

    const v0, 0x7f06012e

    .line 104
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/filtershow/category/IconView;->mMargin:I

    const v0, 0x7f06012f

    .line 105
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/filtershow/category/IconView;->mTextSize:I

    const v1, 0x7f06019f

    .line 106
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/zui/gallery/filtershow/category/IconView;->top_margin_filter:I

    const v1, 0x7f060356

    .line 107
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/zui/gallery/filtershow/category/IconView;->top_margin_name:I

    const v1, 0x7f060225

    .line 108
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/zui/gallery/filtershow/category/IconView;->top_margin_look:I

    const v1, 0x7f060226

    .line 109
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/zui/gallery/filtershow/category/IconView;->look_left:I

    .line 110
    sget v1, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    const v0, 0x7f060189

    .line 111
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/filtershow/category/IconView;->mIconView:I

    const v0, 0x7f06012b

    .line 112
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/filtershow/category/IconView;->mTextSize:I

    goto :goto_0

    :cond_0
    const v1, 0x7f0601bf

    .line 114
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/filtershow/category/IconView;->mIconView:I

    .line 115
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/filtershow/category/IconView;->mTextSize:I

    :goto_0
    return-void
.end method


# virtual methods
.method public computeBitmapBounds()V
    .locals 6

    .line 309
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/category/IconView;->mUseOnlyDrawable:Z

    if-eqz v0, :cond_0

    .line 310
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/zui/gallery/filtershow/category/IconView;->mMargin:I

    div-int/lit8 v2, v1, 0x2

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/IconView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/zui/gallery/filtershow/category/IconView;->mMargin:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    .line 311
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/IconView;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/zui/gallery/filtershow/category/IconView;->mTextSize:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/zui/gallery/filtershow/category/IconView;->mMargin:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/category/IconView;->mBitmapBounds:Landroid/graphics/Rect;

    goto :goto_0

    .line 313
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/IconView;->getOrientation()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/IconView;->isHalfImage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/zui/gallery/filtershow/category/IconView;->mMargin:I

    div-int/lit8 v2, v1, 0x2

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/IconView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/IconView;->getWidth()I

    move-result v4

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/category/IconView;->mBitmapBounds:Landroid/graphics/Rect;

    goto :goto_0

    .line 316
    :cond_1
    sget v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 317
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    iget v2, p0, Lcom/zui/gallery/filtershow/category/IconView;->mIconView:I

    add-int/lit8 v3, v2, 0x30

    const/16 v4, 0x30

    invoke-direct {v0, v4, v1, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/category/IconView;->mBitmapBounds:Landroid/graphics/Rect;

    goto :goto_0

    .line 320
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/IconView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060132

    .line 321
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/filtershow/category/IconView;->rectHeight:I

    const v1, 0x7f0601bf

    .line 322
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/filtershow/category/IconView;->bitmapHeight:I

    .line 323
    iget v1, p0, Lcom/zui/gallery/filtershow/category/IconView;->rectHeight:I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/zui/gallery/filtershow/category/IconView;->bitmapTop:I

    .line 324
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/zui/gallery/filtershow/category/IconView;->mMargin:I

    iget v2, p0, Lcom/zui/gallery/filtershow/category/IconView;->look_left:I

    add-int/2addr v1, v2

    iget v3, p0, Lcom/zui/gallery/filtershow/category/IconView;->bitmapTop:I

    iget v4, p0, Lcom/zui/gallery/filtershow/category/IconView;->mIconView:I

    add-int/2addr v2, v4

    add-int/2addr v4, v3

    invoke-direct {v0, v1, v3, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/category/IconView;->mBitmapBounds:Landroid/graphics/Rect;

    :goto_0
    return-void
.end method

.method protected computeTextPosition(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/IconView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zui/gallery/filtershow/category/IconView;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 124
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/IconView;->getOrientation()I

    move-result v0

    if-nez v0, :cond_1

    .line 125
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 127
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/IconView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/IconView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/zui/gallery/filtershow/category/IconView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    return-void
.end method

.method protected drawOutlinedText(Landroid/graphics/Canvas;Ljava/lang/String;)V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/IconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/IconView;->getBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 222
    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/filtershow/category/IconView;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;)V

    .line 223
    sget-boolean v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isLandscape:Z

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/IconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/IconView;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 226
    :cond_0
    sget v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 227
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/IconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/IconView;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/IconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/IconView;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 235
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/filtershow/category/IconView;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;)V

    return-void
.end method

.method protected drawText(Landroid/graphics/Canvas;Ljava/lang/String;)V
    .locals 6

    if-nez p2, :cond_0

    return-void

    .line 150
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    .line 151
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    .line 152
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 153
    iget-object v3, p0, Lcom/zui/gallery/filtershow/category/IconView;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, p2, v4, v5, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 154
    iget-object v3, p0, Lcom/zui/gallery/filtershow/category/IconView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0601a2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 155
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v2, p0, Lcom/zui/gallery/filtershow/category/IconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected drawTextRect(Landroid/graphics/Canvas;Ljava/lang/String;)V
    .locals 6

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/high16 v2, 0x42f00000    # 120.0f

    const/high16 v3, 0x432e0000    # 174.0f

    const/high16 v4, 0x43520000    # 210.0f

    .line 210
    iget-object v5, p0, Lcom/zui/gallery/filtershow/category/IconView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 259
    iget v0, p0, Lcom/zui/gallery/filtershow/category/IconView;->mBackgroundColor:I

    return v0
.end method

.method public getBitmapBounds()Landroid/graphics/Rect;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/IconView;->mBitmapBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/IconView;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getMargin()I
    .locals 1

    .line 247
    iget v0, p0, Lcom/zui/gallery/filtershow/category/IconView;->mMargin:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 239
    iget v0, p0, Lcom/zui/gallery/filtershow/category/IconView;->mOrientation:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/IconView;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .line 255
    iget v0, p0, Lcom/zui/gallery/filtershow/category/IconView;->mTextColor:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .line 251
    iget v0, p0, Lcom/zui/gallery/filtershow/category/IconView;->mTextSize:I

    return v0
.end method

.method public isHalfImage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public needsCenterText()Z
    .locals 2

    .line 133
    iget v0, p0, Lcom/zui/gallery/filtershow/category/IconView;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 334
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/IconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 335
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/IconView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 336
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/IconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 337
    iget v0, p0, Lcom/zui/gallery/filtershow/category/IconView;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 338
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/IconView;->computeBitmapBounds()V

    .line 339
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/IconView;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/category/IconView;->computeTextPosition(Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/IconView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 341
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 344
    sget v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    .line 345
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/IconView;->mBitmapBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 348
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 349
    iget-boolean v3, p0, Lcom/zui/gallery/filtershow/category/IconView;->mUseOnlyDrawable:Z

    if-eqz v3, :cond_1

    .line 350
    iget-object v3, p0, Lcom/zui/gallery/filtershow/category/IconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 351
    new-instance v1, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/zui/gallery/filtershow/category/IconView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/zui/gallery/filtershow/category/IconView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-direct {v1, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/zui/gallery/filtershow/category/IconView;->mBitmapBounds:Landroid/graphics/Rect;

    invoke-direct {v3, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    .line 354
    :cond_1
    iget-object v1, p0, Lcom/zui/gallery/filtershow/category/IconView;->mBitmapBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/zui/gallery/filtershow/category/IconView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 355
    iget-object v3, p0, Lcom/zui/gallery/filtershow/category/IconView;->mBitmapBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/zui/gallery/filtershow/category/IconView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 356
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 357
    iget-object v3, p0, Lcom/zui/gallery/filtershow/category/IconView;->mBitmapBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/zui/gallery/filtershow/category/IconView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 358
    iget-object v4, p0, Lcom/zui/gallery/filtershow/category/IconView;->mBitmapBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    iget-object v4, p0, Lcom/zui/gallery/filtershow/category/IconView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 359
    iget-object v4, p0, Lcom/zui/gallery/filtershow/category/IconView;->mBitmapBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 360
    iget-object v4, p0, Lcom/zui/gallery/filtershow/category/IconView;->mBitmapBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 361
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 363
    iget v1, p0, Lcom/zui/gallery/filtershow/category/IconView;->rectHeight:I

    iget v4, p0, Lcom/zui/gallery/filtershow/category/IconView;->bitmapHeight:I

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 368
    :goto_0
    sget v1, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    if-eq v1, v2, :cond_2

    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDraw: id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "woidshi"

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v1, p0, Lcom/zui/gallery/filtershow/category/IconView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    .line 376
    invoke-direct {p0, v1, v2}, Lcom/zui/gallery/filtershow/category/IconView;->addGradient(Landroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/gallery/filtershow/category/IconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 382
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/IconView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/IconView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/zui/gallery/filtershow/category/IconView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/zui/gallery/filtershow/category/IconView;->mMargin:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/zui/gallery/filtershow/category/IconView;->top_margin_look:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/zui/gallery/filtershow/category/IconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 385
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 404
    :cond_3
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/IconView;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/zui/gallery/filtershow/category/IconView;->drawOutlinedText(Landroid/graphics/Canvas;Ljava/lang/String;)V

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/IconView;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 243
    iput p1, p0, Lcom/zui/gallery/filtershow/category/IconView;->mOrientation:I

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/IconView;->mText:Ljava/lang/String;

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 275
    iput p1, p0, Lcom/zui/gallery/filtershow/category/IconView;->mTextColor:I

    return-void
.end method

.method public setUseOnlyDrawable(Z)V
    .locals 0

    .line 279
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/category/IconView;->mUseOnlyDrawable:Z

    return-void
.end method
