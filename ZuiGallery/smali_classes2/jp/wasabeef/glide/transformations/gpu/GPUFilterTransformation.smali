.class public Ljp/wasabeef/glide/transformations/gpu/GPUFilterTransformation;
.super Ljava/lang/Object;
.source "GPUFilterTransformation.java"

# interfaces
.implements Lcom/bumptech/glide/load/Transformation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/Transformation<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mBitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private mContext:Landroid/content/Context;

.field private mFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ljp/wasabeef/glide/transformations/gpu/GPUFilterTransformation;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Ljp/wasabeef/glide/transformations/gpu/GPUFilterTransformation;->mBitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 43
    iput-object p3, p0, Ljp/wasabeef/glide/transformations/gpu/GPUFilterTransformation;->mFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V
    .locals 1

    .line 37
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Ljp/wasabeef/glide/transformations/gpu/GPUFilterTransformation;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    return-void
.end method


# virtual methods
.method public getFilter()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Ljp/wasabeef/glide/transformations/gpu/GPUFilterTransformation;->mFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "Landroid/graphics/Bitmap;",
            ">;II)",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 48
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 49
    new-instance p2, Ljp/co/cyberagent/android/gpuimage/GPUImage;

    iget-object p3, p0, Ljp/wasabeef/glide/transformations/gpu/GPUFilterTransformation;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Ljp/co/cyberagent/android/gpuimage/GPUImage;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-virtual {p2, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 51
    iget-object p1, p0, Ljp/wasabeef/glide/transformations/gpu/GPUFilterTransformation;->mFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    invoke-virtual {p2, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setFilter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    .line 53
    invoke-virtual {p2}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->getBitmapWithFilterApplied()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 55
    iget-object p2, p0, Ljp/wasabeef/glide/transformations/gpu/GPUFilterTransformation;->mBitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-static {p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->obtain(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;

    move-result-object p1

    return-object p1
.end method
