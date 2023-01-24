.class public interface abstract Lcom/zui/gallery/app/ExtractFrameProcesser$ExtractListener;
.super Ljava/lang/Object;
.source "Best4KVideoSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/ExtractFrameProcesser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ExtractListener"
.end annotation


# virtual methods
.method public abstract isCacheValid(Z)V
.end method

.method public abstract onExtractComplete(Ljava/util/List;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onExtractError()V
.end method

.method public abstract onExtractStart()V
.end method

.method public abstract onFrameThumnailLoad(Landroid/graphics/Bitmap;)V
.end method

.method public abstract updateExtractPercent(F)V
.end method
