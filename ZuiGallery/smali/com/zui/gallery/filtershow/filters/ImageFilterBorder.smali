.class public Lcom/zui/gallery/filtershow/filters/ImageFilterBorder;
.super Lcom/zui/gallery/filtershow/filters/ImageFilter;
.source "ImageFilterBorder.java"


# static fields
.field private static final BITMAP_ICON_SCALING:F = 0.33333334f

.field private static final NINEPATCH_ICON_SCALING:F = 10.0f


# instance fields
.field private mDrawables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mParameters:Lcom/zui/gallery/filtershow/filters/FilterImageBorderRepresentation;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilter;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterBorder;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterImageBorderRepresentation;

    .line 33
    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterBorder;->mResources:Landroid/content/res/Resources;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterBorder;->mDrawables:Ljava/util/HashMap;

    const-string v0, "Border"

    .line 38
    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterBorder;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 0

    .line 68
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterBorder;->getParameters()Lcom/zui/gallery/filtershow/filters/FilterImageBorderRepresentation;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterBorder;->getParameters()Lcom/zui/gallery/filtershow/filters/FilterImageBorderRepresentation;

    move-result-object p3

    invoke-virtual {p3}, Lcom/zui/gallery/filtershow/filters/FilterImageBorderRepresentation;->getDrawableResource()I

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p3, 0x40000000    # 2.0f

    mul-float/2addr p2, p3

    const/high16 p3, 0x3f800000    # 1.0f

    div-float/2addr p3, p2

    .line 73
    invoke-virtual {p0, p1, p3, p2}, Lcom/zui/gallery/filtershow/filters/ImageFilterBorder;->applyHelper(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method public applyHelper(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 3

    .line 55
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 56
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 57
    new-instance v2, Landroid/graphics/Rect;

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int p2, v1

    const/4 v1, 0x0

    invoke-direct {v2, v1, v1, v0, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 58
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 59
    invoke-virtual {p2, p3, p3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 60
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterBorder;->getParameters()Lcom/zui/gallery/filtershow/filters/FilterImageBorderRepresentation;

    move-result-object p3

    invoke-virtual {p3}, Lcom/zui/gallery/filtershow/filters/FilterImageBorderRepresentation;->getDrawableResource()I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/zui/gallery/filtershow/filters/ImageFilterBorder;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 61
    invoke-virtual {p3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 62
    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p1
.end method

.method public freeResources()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterBorder;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterBorder;->mDrawables:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 85
    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterBorder;->mResources:Landroid/content/res/Resources;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 86
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterBorder;->mResources:Landroid/content/res/Resources;

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 87
    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterBorder;->mDrawables:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public getParameters()Lcom/zui/gallery/filtershow/filters/FilterImageBorderRepresentation;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterBorder;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterImageBorderRepresentation;

    return-object v0
.end method

.method public setResources(Landroid/content/res/Resources;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterBorder;->mResources:Landroid/content/res/Resources;

    if-eq v0, p1, :cond_0

    .line 78
    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterBorder;->mResources:Landroid/content/res/Resources;

    .line 79
    iget-object p1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterBorder;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public useRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 0

    .line 42
    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterImageBorderRepresentation;

    .line 43
    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterBorder;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterImageBorderRepresentation;

    return-void
.end method
