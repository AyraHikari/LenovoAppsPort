.class public interface abstract Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$DataListener;
.super Ljava/lang/Object;
.source "LocalTimeAlbumDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DataListener"
.end annotation


# virtual methods
.method public abstract onContentChanged(I)V
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
