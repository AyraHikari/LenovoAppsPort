.class public Lcom/zui/gallery/app/OptimizationAlbum;
.super Ljava/lang/Object;
.source "OptimizationAlbum.java"


# instance fields
.field public INIT:I

.field public final INITIAL:I

.field public final UPDATE_INITIAL:I

.field private albumEntryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/gallery/data/AlbumSetCategoryEntry;",
            ">;"
        }
    .end annotation
.end field

.field private deleteAlbum:Z

.field private isDelete:I

.field private isFixed:Z

.field private longItemIndex:I

.field private longTapItem:Lcom/zui/gallery/data/MediaSet;

.field private slotCount:I

.field private visibleRange:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lcom/zui/gallery/app/OptimizationAlbum;->INIT:I

    const/4 v1, 0x1

    .line 17
    iput v1, p0, Lcom/zui/gallery/app/OptimizationAlbum;->INITIAL:I

    const/4 v1, 0x2

    .line 18
    iput v1, p0, Lcom/zui/gallery/app/OptimizationAlbum;->UPDATE_INITIAL:I

    .line 22
    iput v0, p0, Lcom/zui/gallery/app/OptimizationAlbum;->longItemIndex:I

    const/4 v1, 0x0

    .line 25
    iput-boolean v1, p0, Lcom/zui/gallery/app/OptimizationAlbum;->isFixed:Z

    .line 26
    iput v0, p0, Lcom/zui/gallery/app/OptimizationAlbum;->slotCount:I

    .line 27
    iput v0, p0, Lcom/zui/gallery/app/OptimizationAlbum;->isDelete:I

    .line 28
    iput v0, p0, Lcom/zui/gallery/app/OptimizationAlbum;->visibleRange:I

    return-void
.end method


# virtual methods
.method public getAlbumEntryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zui/gallery/data/AlbumSetCategoryEntry;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/zui/gallery/app/OptimizationAlbum;->albumEntryList:Ljava/util/List;

    return-object v0
.end method

.method public getLongItemIndex()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/zui/gallery/app/OptimizationAlbum;->longItemIndex:I

    return v0
.end method

.method public getLongTapItem()Lcom/zui/gallery/data/MediaSet;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/zui/gallery/app/OptimizationAlbum;->longTapItem:Lcom/zui/gallery/data/MediaSet;

    return-object v0
.end method

.method public getSlotCount()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/zui/gallery/app/OptimizationAlbum;->slotCount:I

    return v0
.end method

.method public getVisibleRange()Z
    .locals 2

    .line 32
    iget v0, p0, Lcom/zui/gallery/app/OptimizationAlbum;->visibleRange:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isDeleteAlbum()Z
    .locals 2

    .line 40
    iget v0, p0, Lcom/zui/gallery/app/OptimizationAlbum;->isDelete:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isFixed()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcom/zui/gallery/app/OptimizationAlbum;->isFixed:Z

    return v0
.end method

.method public setAlbumEntryList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/gallery/data/AlbumSetCategoryEntry;",
            ">;)V"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lcom/zui/gallery/app/OptimizationAlbum;->albumEntryList:Ljava/util/List;

    return-void
.end method

.method public setDeleteAlbum(I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/zui/gallery/app/OptimizationAlbum;->isDelete:I

    return-void
.end method

.method public setFixed(Z)V
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/zui/gallery/app/OptimizationAlbum;->isFixed:Z

    return-void
.end method

.method public setLongItemIndex(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/zui/gallery/app/OptimizationAlbum;->longItemIndex:I

    return-void
.end method

.method public setLongTapItem(Lcom/zui/gallery/data/MediaSet;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/zui/gallery/app/OptimizationAlbum;->longTapItem:Lcom/zui/gallery/data/MediaSet;

    return-void
.end method

.method public setSlotCount(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/zui/gallery/app/OptimizationAlbum;->slotCount:I

    return-void
.end method

.method public setVisibleRange(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/zui/gallery/app/OptimizationAlbum;->visibleRange:I

    return-void
.end method
