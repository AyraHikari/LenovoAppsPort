.class public Lcom/zui/gallery/ui/RoundRect;
.super Ljava/lang/Object;
.source "RoundRect.java"


# instance fields
.field private cornerRadius:F

.field private height:I

.field private width:I


# direct methods
.method public constructor <init>(IIF)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/zui/gallery/ui/RoundRect;->width:I

    .line 31
    iput p2, p0, Lcom/zui/gallery/ui/RoundRect;->height:I

    .line 32
    iput p3, p0, Lcom/zui/gallery/ui/RoundRect;->cornerRadius:F

    return-void
.end method

.method public static final lessenUriImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    .line 67
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 68
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 69
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    .line 70
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 71
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x43a00000    # 320.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 73
    :goto_0
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 74
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 75
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 76
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 77
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public Transformation(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .line 90
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 93
    iget p1, p0, Lcom/zui/gallery/ui/RoundRect;->width:I

    iget v1, p0, Lcom/zui/gallery/ui/RoundRect;->height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 94
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 97
    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Lcom/zui/gallery/ui/RoundRect;->width:I

    int-to-float v3, v3

    iget v4, p0, Lcom/zui/gallery/ui/RoundRect;->height:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 100
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v4, -0x10000

    .line 101
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    iget v4, p0, Lcom/zui/gallery/ui/RoundRect;->cornerRadius:F

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 105
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 106
    iget v4, p0, Lcom/zui/gallery/ui/RoundRect;->width:I

    iget v5, p0, Lcom/zui/gallery/ui/RoundRect;->height:I

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/16 v4, 0x1f

    .line 107
    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 108
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 109
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-object p1
.end method

.method toRoundRect(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 0

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 57
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/RoundRect;->Transformation(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method toRoundRect(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 43
    invoke-static {p1}, Lcom/zui/gallery/ui/RoundRect;->lessenUriImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 44
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/RoundRect;->Transformation(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
