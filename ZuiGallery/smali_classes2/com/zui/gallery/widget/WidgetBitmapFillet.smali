.class public Lcom/zui/gallery/widget/WidgetBitmapFillet;
.super Ljava/lang/Object;
.source "WidgetBitmapFillet.java"


# static fields
.field public static final CORNER_ALL:I = 0xf

.field public static final CORNER_BOTTOM:I = 0xc

.field public static final CORNER_BOTTOM_LEFT:I = 0x4

.field public static final CORNER_BOTTOM_RIGHT:I = 0x8

.field public static final CORNER_LEFT:I = 0x5

.field public static final CORNER_NONE:I = 0x0

.field public static final CORNER_RIGHT:I = 0xa

.field public static final CORNER_TOP:I = 0x3

.field public static final CORNER_TOP_LEFT:I = 0x1

.field public static final CORNER_TOP_RIGHT:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clipBottomLeft(Landroid/graphics/Canvas;Landroid/graphics/Paint;III)V
    .locals 2

    .line 93
    new-instance p3, Landroid/graphics/Rect;

    sub-int v0, p4, p2

    const/4 v1, 0x0

    invoke-direct {p3, v1, v0, p2, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 94
    invoke-virtual {p0, p3, p1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private static clipBottomRight(Landroid/graphics/Canvas;Landroid/graphics/Paint;III)V
    .locals 2

    .line 98
    new-instance v0, Landroid/graphics/Rect;

    sub-int v1, p3, p2

    sub-int p2, p4, p2

    invoke-direct {v0, v1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 99
    invoke-virtual {p0, v0, p1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private static clipTopLeft(Landroid/graphics/Canvas;Landroid/graphics/Paint;III)V
    .locals 0

    .line 83
    new-instance p3, Landroid/graphics/Rect;

    const/4 p4, 0x0

    invoke-direct {p3, p4, p4, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 84
    invoke-virtual {p0, p3, p1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private static clipTopRight(Landroid/graphics/Canvas;Landroid/graphics/Paint;III)V
    .locals 2

    .line 88
    new-instance p4, Landroid/graphics/Rect;

    sub-int v0, p3, p2

    const/4 v1, 0x0

    invoke-direct {p4, v0, v1, p3, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 89
    invoke-virtual {p0, p4, p1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public static doBlur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 103
    invoke-static {p0, p1, p2}, Ljp/wasabeef/glide/transformations/internal/FastBlur;->blur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static fillet(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10

    .line 41
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 42
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 44
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 45
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    .line 46
    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 48
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    const/4 v6, 0x1

    .line 49
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v6, -0x1000000

    .line 50
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    new-instance v6, Landroid/graphics/RectF;

    int-to-float v7, v0

    int-to-float v8, v1

    const/4 v9, 0x0

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float v7, p1

    .line 54
    invoke-virtual {v3, v6, v7, v7, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    xor-int/lit8 p2, p2, 0xf

    and-int/lit8 v6, p2, 0x1

    if-eqz v6, :cond_0

    .line 59
    invoke-static {v3, v5, p1, v0, v1}, Lcom/zui/gallery/widget/WidgetBitmapFillet;->clipTopLeft(Landroid/graphics/Canvas;Landroid/graphics/Paint;III)V

    :cond_0
    and-int/lit8 v6, p2, 0x2

    if-eqz v6, :cond_1

    .line 62
    invoke-static {v3, v5, p1, v0, v1}, Lcom/zui/gallery/widget/WidgetBitmapFillet;->clipTopRight(Landroid/graphics/Canvas;Landroid/graphics/Paint;III)V

    :cond_1
    and-int/lit8 v6, p2, 0x4

    if-eqz v6, :cond_2

    .line 65
    invoke-static {v3, v5, p1, v0, v1}, Lcom/zui/gallery/widget/WidgetBitmapFillet;->clipBottomLeft(Landroid/graphics/Canvas;Landroid/graphics/Paint;III)V

    :cond_2
    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_3

    .line 68
    invoke-static {v3, v5, p1, v0, v1}, Lcom/zui/gallery/widget/WidgetBitmapFillet;->clipBottomRight(Landroid/graphics/Canvas;Landroid/graphics/Paint;III)V

    .line 70
    :cond_3
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 73
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v4, v4, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 75
    invoke-virtual {v3, p0, p1, p1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    return-object p0
.end method
