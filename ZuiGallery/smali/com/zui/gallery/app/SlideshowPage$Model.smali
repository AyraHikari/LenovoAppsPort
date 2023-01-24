.class public interface abstract Lcom/zui/gallery/app/SlideshowPage$Model;
.super Ljava/lang/Object;
.source "SlideshowPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/SlideshowPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Model"
.end annotation


# virtual methods
.method public abstract nextSlide(Lcom/zui/gallery/util/FutureListener;)Lcom/zui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/gallery/util/FutureListener<",
            "Lcom/zui/gallery/app/SlideshowPage$Slide;",
            ">;)",
            "Lcom/zui/gallery/util/Future<",
            "Lcom/zui/gallery/app/SlideshowPage$Slide;",
            ">;"
        }
    .end annotation
.end method

.method public abstract pause()V
.end method

.method public abstract resume()V
.end method
