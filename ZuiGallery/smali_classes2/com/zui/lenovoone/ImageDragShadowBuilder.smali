.class public Lcom/zui/lenovoone/ImageDragShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "ImageDragShadowBuilder.java"


# static fields
.field private static final ICON_SCALE:I = 0x2

.field private static mLoadImageJobContext:Lcom/zui/gallery/util/ThreadPool$JobContext;


# instance fields
.field final mDrawable:Landroid/graphics/drawable/Drawable;

.field final mIconSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/zui/lenovoone/ImageDragShadowBuilder$1;

    invoke-direct {v0}, Lcom/zui/lenovoone/ImageDragShadowBuilder$1;-><init>()V

    sput-object v0, Lcom/zui/lenovoone/ImageDragShadowBuilder;->mLoadImageJobContext:Lcom/zui/gallery/util/ThreadPool$JobContext;

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/data/MediaItem;Landroid/content/res/Resources;)V
    .locals 3

    .line 21
    invoke-direct {p0}, Landroid/view/View$DragShadowBuilder;-><init>()V

    .line 22
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/zui/gallery/data/MediaItem;->requestImage(I)Lcom/zui/gallery/util/ThreadPool$Job;

    move-result-object p1

    sget-object v2, Lcom/zui/lenovoone/ImageDragShadowBuilder;->mLoadImageJobContext:Lcom/zui/gallery/util/ThreadPool$JobContext;

    invoke-interface {p1, v2}, Lcom/zui/gallery/util/ThreadPool$Job;->run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-direct {v0, p2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/zui/lenovoone/ImageDragShadowBuilder;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 23
    invoke-static {v1}, Lcom/zui/gallery/data/MediaItem;->getTargetSize(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/zui/lenovoone/ImageDragShadowBuilder;->mIconSize:I

    return-void
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 4

    .line 34
    iget-object v0, p0, Lcom/zui/lenovoone/ImageDragShadowBuilder;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/zui/lenovoone/ImageDragShadowBuilder;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/zui/lenovoone/ImageDragShadowBuilder;->mIconSize:I

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 36
    iget-object v1, p0, Lcom/zui/lenovoone/ImageDragShadowBuilder;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 37
    iget-object p1, p0, Lcom/zui/lenovoone/ImageDragShadowBuilder;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 1

    .line 28
    iget v0, p0, Lcom/zui/lenovoone/ImageDragShadowBuilder;->mIconSize:I

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Point;->set(II)V

    .line 29
    iget p1, p0, Lcom/zui/lenovoone/ImageDragShadowBuilder;->mIconSize:I

    div-int/lit8 v0, p1, 0x2

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Point;->set(II)V

    return-void
.end method
