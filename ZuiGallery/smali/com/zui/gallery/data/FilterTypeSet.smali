.class public Lcom/zui/gallery/data/FilterTypeSet;
.super Lcom/zui/gallery/data/MediaSet;
.source "FilterTypeSet.java"

# interfaces
.implements Lcom/zui/gallery/data/ContentListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "FilterTypeSet"


# instance fields
.field private final mAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private final mBaseSet:Lcom/zui/gallery/data/MediaSet;

.field private final mDataManager:Lcom/zui/gallery/data/DataManager;

.field private final mMediaType:I

.field private final mPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/Path;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/data/DataManager;Lcom/zui/gallery/data/MediaSet;I)V
    .locals 2

    const-wide/16 v0, -0x1

    .line 34
    invoke-direct {p0, p1, v0, v1}, Lcom/zui/gallery/data/MediaSet;-><init>(Lcom/zui/gallery/data/Path;J)V

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/data/FilterTypeSet;->mPaths:Ljava/util/ArrayList;

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/data/FilterTypeSet;->mAlbums:Ljava/util/ArrayList;

    .line 35
    iput-object p2, p0, Lcom/zui/gallery/data/FilterTypeSet;->mDataManager:Lcom/zui/gallery/data/DataManager;

    .line 36
    iput-object p3, p0, Lcom/zui/gallery/data/FilterTypeSet;->mBaseSet:Lcom/zui/gallery/data/MediaSet;

    .line 37
    iput p4, p0, Lcom/zui/gallery/data/FilterTypeSet;->mMediaType:I

    .line 38
    invoke-virtual {p3, p0}, Lcom/zui/gallery/data/MediaSet;->addContentListener(Lcom/zui/gallery/data/ContentListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/data/FilterTypeSet;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/zui/gallery/data/FilterTypeSet;->mMediaType:I

    return p0
.end method

.method private updateData()V
    .locals 7

    .line 83
    iget-object v0, p0, Lcom/zui/gallery/data/FilterTypeSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/filter/mediatype/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/gallery/data/FilterTypeSet;->mMediaType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/zui/gallery/data/FilterTypeSet;->mBaseSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v1}, Lcom/zui/gallery/data/MediaSet;->getSubMediaSetCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 87
    iget-object v4, p0, Lcom/zui/gallery/data/FilterTypeSet;->mBaseSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v4, v3}, Lcom/zui/gallery/data/MediaSet;->getSubMediaSet(I)Lcom/zui/gallery/data/MediaSet;

    move-result-object v4

    .line 88
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/{"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/zui/gallery/data/MediaSet;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "}"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 89
    iget-object v5, p0, Lcom/zui/gallery/data/FilterTypeSet;->mDataManager:Lcom/zui/gallery/data/DataManager;

    invoke-virtual {v5, v4}, Lcom/zui/gallery/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v4

    .line 90
    invoke-virtual {v4}, Lcom/zui/gallery/data/MediaSet;->reload()J

    .line 91
    invoke-virtual {v4}, Lcom/zui/gallery/data/MediaSet;->getMediaItemCount()I

    move-result v5

    if-gtz v5, :cond_0

    .line 92
    invoke-virtual {v4}, Lcom/zui/gallery/data/MediaSet;->getSubMediaSetCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 93
    :cond_0
    iget-object v5, p0, Lcom/zui/gallery/data/FilterTypeSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/data/FilterTypeSet;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 99
    iget-object v0, p0, Lcom/zui/gallery/data/FilterTypeSet;->mBaseSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getMediaItemCount()I

    move-result v0

    .line 100
    new-array v1, v0, [Lcom/zui/gallery/data/Path;

    .line 102
    iget-object v3, p0, Lcom/zui/gallery/data/FilterTypeSet;->mBaseSet:Lcom/zui/gallery/data/MediaSet;

    new-instance v4, Lcom/zui/gallery/data/FilterTypeSet$1;

    invoke-direct {v4, p0, v0, v1}, Lcom/zui/gallery/data/FilterTypeSet$1;-><init>(Lcom/zui/gallery/data/FilterTypeSet;I[Lcom/zui/gallery/data/Path;)V

    invoke-virtual {v3, v4}, Lcom/zui/gallery/data/MediaSet;->enumerateMediaItems(Lcom/zui/gallery/data/MediaSet$ItemConsumer;)V

    :goto_1
    if-ge v2, v0, :cond_4

    .line 114
    aget-object v3, v1, v2

    if-eqz v3, :cond_3

    .line 115
    iget-object v3, p0, Lcom/zui/gallery/data/FilterTypeSet;->mPaths:Ljava/util/ArrayList;

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 4

    .line 127
    new-instance v0, Lcom/zui/gallery/data/FilterTypeSet$2;

    invoke-direct {v0, p0}, Lcom/zui/gallery/data/FilterTypeSet$2;-><init>(Lcom/zui/gallery/data/FilterTypeSet;)V

    .line 135
    iget-object v1, p0, Lcom/zui/gallery/data/FilterTypeSet;->mDataManager:Lcom/zui/gallery/data/DataManager;

    iget-object v2, p0, Lcom/zui/gallery/data/FilterTypeSet;->mPaths:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/zui/gallery/data/DataManager;->mapMediaItems(Ljava/util/ArrayList;Lcom/zui/gallery/data/MediaSet$ItemConsumer;I)V

    return-void
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/MediaItem;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/zui/gallery/data/FilterTypeSet;->mPaths:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zui/gallery/data/FilterTypeSet;->mDataManager:Lcom/zui/gallery/data/DataManager;

    invoke-static {v0, p1, p2, v1}, Lcom/zui/gallery/data/ClusterAlbum;->getMediaItemFromPath(Ljava/util/ArrayList;IILcom/zui/gallery/data/DataManager;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getMediaItemCount()I
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/zui/gallery/data/FilterTypeSet;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/zui/gallery/data/FilterTypeSet;->mBaseSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/zui/gallery/data/MediaSet;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/zui/gallery/data/FilterTypeSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/data/MediaSet;

    return-object p1
.end method

.method public getSubMediaSetCount()I
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/zui/gallery/data/FilterTypeSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSupportedOperations()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public onContentDirty()V
    .locals 0

    .line 78
    invoke-virtual {p0}, Lcom/zui/gallery/data/FilterTypeSet;->notifyContentChanged()V

    return-void
.end method

.method public reload()J
    .locals 4

    .line 69
    iget-object v0, p0, Lcom/zui/gallery/data/FilterTypeSet;->mBaseSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->reload()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/zui/gallery/data/FilterTypeSet;->mDataVersion:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 70
    invoke-direct {p0}, Lcom/zui/gallery/data/FilterTypeSet;->updateData()V

    .line 71
    invoke-static {}, Lcom/zui/gallery/data/FilterTypeSet;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/data/FilterTypeSet;->mDataVersion:J

    .line 73
    :cond_0
    iget-wide v0, p0, Lcom/zui/gallery/data/FilterTypeSet;->mDataVersion:J

    return-wide v0
.end method
