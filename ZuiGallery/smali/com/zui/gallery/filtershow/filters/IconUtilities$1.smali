.class Lcom/zui/gallery/filtershow/filters/IconUtilities$1;
.super Lcom/zui/gallery/filtershow/filters/ImageFilterFx;
.source "IconUtilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/filters/IconUtilities;->applyFX(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$fxBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/IconUtilities$1;->val$fxBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterFx;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 9

    .line 63
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 64
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 65
    iget-object p2, p0, Lcom/zui/gallery/filtershow/filters/IconUtilities$1;->val$fxBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 66
    iget-object p2, p0, Lcom/zui/gallery/filtershow/filters/IconUtilities$1;->val$fxBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int p2, v2, v3

    mul-int/lit8 v8, p2, 0x4

    .line 69
    iget-object v4, p0, Lcom/zui/gallery/filtershow/filters/IconUtilities$1;->val$fxBitmap:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/zui/gallery/filtershow/filters/IconUtilities$1;->nativeApplyFilter(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap;IIII)V

    return-object p1
.end method
