.class Lcom/zui/gallery/filtershow/imageshow/ImageCurves$ComputeHistogramTask;
.super Landroid/os/AsyncTask;
.source "ImageCurves.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/imageshow/ImageCurves;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ComputeHistogramTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        "[I>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCurves;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/imageshow/ImageCurves;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves$ComputeHistogramTask;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCurves;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 383
    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves$ComputeHistogramTask;->doInBackground([Landroid/graphics/Bitmap;)[I

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Landroid/graphics/Bitmap;)[I
    .locals 12

    const/16 v0, 0x300

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 387
    aget-object v2, p1, v1

    .line 388
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    .line 389
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    mul-int v3, p1, v10

    .line 390
    new-array v11, v3, [I

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v11

    move v5, p1

    move v8, p1

    move v9, v10

    .line 391
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_1

    move v3, v1

    :goto_1
    if-ge v3, v10, :cond_0

    mul-int v4, v3, p1

    add-int/2addr v4, v2

    .line 395
    aget v5, v11, v4

    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v5

    .line 396
    aget v6, v11, v4

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v6

    .line 397
    aget v4, v11, v4

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    .line 398
    aget v7, v0, v5

    add-int/lit8 v7, v7, 0x1

    aput v7, v0, v5

    add-int/lit16 v6, v6, 0x100

    .line 399
    aget v5, v0, v6

    add-int/lit8 v5, v5, 0x1

    aput v5, v0, v6

    add-int/lit16 v4, v4, 0x200

    .line 400
    aget v5, v0, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 383
    check-cast p1, [I

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves$ComputeHistogramTask;->onPostExecute([I)V

    return-void
.end method

.method protected onPostExecute([I)V
    .locals 4

    .line 408
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves$ComputeHistogramTask;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCurves;

    iget-object v0, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->redHistogram:[I

    const/4 v1, 0x0

    const/16 v2, 0x100

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 409
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves$ComputeHistogramTask;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCurves;

    iget-object v0, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->greenHistogram:[I

    invoke-static {p1, v2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 410
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves$ComputeHistogramTask;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCurves;

    iget-object v0, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->blueHistogram:[I

    const/16 v3, 0x200

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 411
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves$ComputeHistogramTask;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCurves;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->invalidate()V

    return-void
.end method
