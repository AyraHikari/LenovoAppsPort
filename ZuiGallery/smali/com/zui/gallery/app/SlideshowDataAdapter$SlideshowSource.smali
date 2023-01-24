.class public interface abstract Lcom/zui/gallery/app/SlideshowDataAdapter$SlideshowSource;
.super Ljava/lang/Object;
.source "SlideshowDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/SlideshowDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SlideshowSource"
.end annotation


# virtual methods
.method public abstract addContentListener(Lcom/zui/gallery/data/ContentListener;)V
.end method

.method public abstract findItemIndex(Lcom/zui/gallery/data/Path;I)I
.end method

.method public abstract getMediaItem(I)Lcom/zui/gallery/data/MediaItem;
.end method

.method public abstract reload()J
.end method

.method public abstract removeContentListener(Lcom/zui/gallery/data/ContentListener;)V
.end method
