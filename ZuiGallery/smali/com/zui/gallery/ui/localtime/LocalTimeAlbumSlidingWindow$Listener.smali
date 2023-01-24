.class public interface abstract Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$Listener;
.super Ljava/lang/Object;
.source "LocalTimeAlbumSlidingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onContentChanged()V
.end method

.method public abstract onSizeChanged(ILjava/util/List;Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;",
            ">;",
            "Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;",
            ")V"
        }
    .end annotation
.end method
