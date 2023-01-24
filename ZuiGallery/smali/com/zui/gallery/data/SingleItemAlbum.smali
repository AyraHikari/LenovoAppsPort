.class public Lcom/zui/gallery/data/SingleItemAlbum;
.super Lcom/zui/gallery/data/MediaSet;
.source "SingleItemAlbum.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SingleItemAlbum"


# instance fields
.field private final mItem:Lcom/zui/gallery/data/MediaItem;

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/data/MediaItem;)V
    .locals 2

    .line 28
    invoke-static {}, Lcom/zui/gallery/data/SingleItemAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/zui/gallery/data/MediaSet;-><init>(Lcom/zui/gallery/data/Path;J)V

    .line 29
    iput-object p2, p0, Lcom/zui/gallery/data/SingleItemAlbum;->mItem:Lcom/zui/gallery/data/MediaItem;

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SingleItemAlbum("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/zui/gallery/data/SingleItemAlbum;->mItem:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/data/SingleItemAlbum;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getItem()Lcom/zui/gallery/data/MediaItem;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/zui/gallery/data/SingleItemAlbum;->mItem:Lcom/zui/gallery/data/MediaItem;

    return-object v0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/MediaItem;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-gtz p1, :cond_0

    add-int/2addr p1, p2

    if-lez p1, :cond_0

    .line 44
    iget-object p1, p0, Lcom/zui/gallery/data/SingleItemAlbum;->mItem:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public getMediaItemCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/zui/gallery/data/SingleItemAlbum;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public reload()J
    .locals 2

    .line 66
    iget-wide v0, p0, Lcom/zui/gallery/data/SingleItemAlbum;->mDataVersion:J

    return-wide v0
.end method
