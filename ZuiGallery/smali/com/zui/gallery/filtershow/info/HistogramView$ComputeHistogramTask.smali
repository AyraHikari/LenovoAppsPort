.class Lcom/zui/gallery/filtershow/info/HistogramView$ComputeHistogramTask;
.super Landroid/os/AsyncTask;
.source "HistogramView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/info/HistogramView;
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
.field final synthetic this$0:Lcom/zui/gallery/filtershow/info/HistogramView;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/info/HistogramView;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/zui/gallery/filtershow/info/HistogramView$ComputeHistogramTask;->this$0:Lcom/zui/gallery/filtershow/info/HistogramView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/info/HistogramView$ComputeHistogramTask;->doInBackground([Landroid/graphics/Bitmap;)[I

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Landroid/graphics/Bitmap;)[I
    .locals 12

    const/16 v0, 0x300

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 44
    aget-object v2, p1, v1

    .line 45
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    .line 46
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    mul-int v3, p1, v10

    .line 47
    new-array v11, v3, [I

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v11

    move v5, p1

    move v8, p1

    move v9, v10

    .line 48
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_1

    move v3, v1

    :goto_1
    if-ge v3, v10, :cond_0

    mul-int v4, v3, p1

    add-int/2addr v4, v2

    .line 52
    aget v5, v11, v4

    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v5

    .line 53
    aget v6, v11, v4

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v6

    .line 54
    aget v4, v11, v4

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    .line 55
    aget v7, v0, v5

    add-int/lit8 v7, v7, 0x1

    aput v7, v0, v5

    add-int/lit16 v6, v6, 0x100

    .line 56
    aget v5, v0, v6

    add-int/lit8 v5, v5, 0x1

    aput v5, v0, v6

    add-int/lit16 v4, v4, 0x200

    .line 57
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

    .line 40
    check-cast p1, [I

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/info/HistogramView$ComputeHistogramTask;->onPostExecute([I)V

    return-void
.end method

.method protected onPostExecute([I)V
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/zui/gallery/filtershow/info/HistogramView$ComputeHistogramTask;->this$0:Lcom/zui/gallery/filtershow/info/HistogramView;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/info/HistogramView;->access$000(Lcom/zui/gallery/filtershow/info/HistogramView;)[I

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x100

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    iget-object v0, p0, Lcom/zui/gallery/filtershow/info/HistogramView$ComputeHistogramTask;->this$0:Lcom/zui/gallery/filtershow/info/HistogramView;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/info/HistogramView;->access$100(Lcom/zui/gallery/filtershow/info/HistogramView;)[I

    move-result-object v0

    invoke-static {p1, v2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    iget-object v0, p0, Lcom/zui/gallery/filtershow/info/HistogramView$ComputeHistogramTask;->this$0:Lcom/zui/gallery/filtershow/info/HistogramView;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/info/HistogramView;->access$200(Lcom/zui/gallery/filtershow/info/HistogramView;)[I

    move-result-object v0

    const/16 v3, 0x200

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    iget-object p1, p0, Lcom/zui/gallery/filtershow/info/HistogramView$ComputeHistogramTask;->this$0:Lcom/zui/gallery/filtershow/info/HistogramView;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/info/HistogramView;->invalidate()V

    return-void
.end method
