.class public Lcom/zui/gallery/data/LocalAlbumAddSet;
.super Lcom/zui/gallery/data/LocalAlbumSet;
.source "LocalAlbumAddSet.java"


# direct methods
.method public constructor <init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/data/LocalAlbumSet;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;)V

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/zui/gallery/data/LocalAlbumAddSet;->isForAddPage:Z

    return-void
.end method
