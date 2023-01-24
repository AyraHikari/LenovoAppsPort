.class public interface abstract Lcom/zui/gallery/app/AlbumSetDataLoader$DataListener;
.super Ljava/lang/Object;
.source "AlbumSetDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/AlbumSetDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DataListener"
.end annotation


# virtual methods
.method public abstract onContentChanged(I)V
.end method

.method public abstract onMoreCoverChange()V
.end method

.method public abstract onSizeChanged(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/zui/gallery/data/AlbumSetCategoryEntry;",
            ">;)V"
        }
    .end annotation
.end method
