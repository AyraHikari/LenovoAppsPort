.class Lcom/zui/gallery/app/SinglePhotoDataAdapter$2;
.super Ljava/lang/Object;
.source "SinglePhotoDataAdapter.java"

# interfaces
.implements Lcom/zui/gallery/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/SinglePhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zui/gallery/util/FutureListener<",
        "Landroid/graphics/BitmapRegionDecoder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/SinglePhotoDataAdapter;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/SinglePhotoDataAdapter;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/zui/gallery/app/SinglePhotoDataAdapter$2;->this$0:Lcom/zui/gallery/app/SinglePhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/zui/gallery/util/Future;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/gallery/util/Future<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;)V"
        }
    .end annotation

    .line 101
    invoke-interface {p1}, Lcom/zui/gallery/util/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/BitmapRegionDecoder;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 105
    iget-object p1, p0, Lcom/zui/gallery/app/SinglePhotoDataAdapter$2;->this$0:Lcom/zui/gallery/app/SinglePhotoDataAdapter;

    invoke-static {p1}, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->access$300(Lcom/zui/gallery/app/SinglePhotoDataAdapter;)Lcom/zui/gallery/util/Future;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/gallery/app/SinglePhotoDataAdapter$2;->this$0:Lcom/zui/gallery/app/SinglePhotoDataAdapter;

    invoke-static {p1}, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->access$300(Lcom/zui/gallery/app/SinglePhotoDataAdapter;)Lcom/zui/gallery/util/Future;

    move-result-object p1

    invoke-interface {p1}, Lcom/zui/gallery/util/Future;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "SinglePhotoDataAdapter"

    const-string v2, "fail to get region decoder, try to request thumb image"

    .line 106
    invoke-static {p1, v2}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object p1, p0, Lcom/zui/gallery/app/SinglePhotoDataAdapter$2;->this$0:Lcom/zui/gallery/app/SinglePhotoDataAdapter;

    invoke-static {p1, v1}, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->access$002(Lcom/zui/gallery/app/SinglePhotoDataAdapter;Z)Z

    .line 108
    iget-object p1, p0, Lcom/zui/gallery/app/SinglePhotoDataAdapter$2;->this$0:Lcom/zui/gallery/app/SinglePhotoDataAdapter;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->pause(Z)V

    .line 109
    iget-object p1, p0, Lcom/zui/gallery/app/SinglePhotoDataAdapter$2;->this$0:Lcom/zui/gallery/app/SinglePhotoDataAdapter;

    invoke-virtual {p1}, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->resume()V

    :cond_0
    return-void

    .line 114
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v2

    .line 115
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v3

    .line 116
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/high16 v5, 0x44800000    # 1024.0f

    .line 118
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 117
    invoke-static {v5}, Lcom/zui/gallery/common/BitmapUtils;->computeSampleSize(F)I

    move-result v5

    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 119
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v5, v4}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 120
    iget-object v2, p0, Lcom/zui/gallery/app/SinglePhotoDataAdapter$2;->this$0:Lcom/zui/gallery/app/SinglePhotoDataAdapter;

    invoke-static {v2}, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->access$400(Lcom/zui/gallery/app/SinglePhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/gallery/app/SinglePhotoDataAdapter$2;->this$0:Lcom/zui/gallery/app/SinglePhotoDataAdapter;

    invoke-static {v3}, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->access$400(Lcom/zui/gallery/app/SinglePhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/zui/gallery/app/SinglePhotoDataAdapter$ImageBundle;

    invoke-direct {v4, p1, v1}, Lcom/zui/gallery/app/SinglePhotoDataAdapter$ImageBundle;-><init>(Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v0, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
