.class public abstract Lcom/zui/gallery/data/MediaSet;
.super Lcom/zui/gallery/data/MediaObject;
.source "MediaSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/data/MediaSet$MultiSetSyncFuture;,
        Lcom/zui/gallery/data/MediaSet$ItemConsumer;,
        Lcom/zui/gallery/data/MediaSet$SyncListener;
    }
.end annotation


# static fields
.field private static final FUTURE_STUB:Lcom/zui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/gallery/util/Future<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final INDEX_NOT_FOUND:I = -0x1

.field public static final MEDIAITEM_BATCH_FETCH_COUNT:I = 0x1f4

.field public static final SYNC_RESULT_CANCELLED:I = 0x1

.field public static final SYNC_RESULT_ERROR:I = 0x2

.field public static final SYNC_RESULT_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MediaSet"


# instance fields
.field private appFolderType:I

.field private mGroupIdForDelete:I

.field private mListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/zui/gallery/data/ContentListener;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 409
    new-instance v0, Lcom/zui/gallery/data/MediaSet$1;

    invoke-direct {v0}, Lcom/zui/gallery/data/MediaSet$1;-><init>()V

    sput-object v0, Lcom/zui/gallery/data/MediaSet;->FUTURE_STUB:Lcom/zui/gallery/util/Future;

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/data/Path;J)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/zui/gallery/data/MediaObject;-><init>(Lcom/zui/gallery/data/Path;J)V

    const/4 p1, -0x1

    .line 52
    iput p1, p0, Lcom/zui/gallery/data/MediaSet;->mGroupIdForDelete:I

    .line 54
    iput p1, p0, Lcom/zui/gallery/data/MediaSet;->appFolderType:I

    .line 308
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    return-void
.end method


# virtual methods
.method public addContentListener(Lcom/zui/gallery/data/ContentListener;)V
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/zui/gallery/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected enumerateMediaItems(Lcom/zui/gallery/data/MediaSet$ItemConsumer;I)I
    .locals 9

    .line 369
    invoke-virtual {p0}, Lcom/zui/gallery/data/MediaSet;->getMediaItemCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    const/16 v3, 0x1f4

    sub-int v4, v0, v2

    .line 372
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 373
    invoke-virtual {p0, v2, v3}, Lcom/zui/gallery/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v4

    .line 374
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_0

    .line 375
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zui/gallery/data/MediaItem;

    add-int v8, p2, v2

    add-int/2addr v8, v6

    .line 376
    invoke-interface {p1, v8, v7}, Lcom/zui/gallery/data/MediaSet$ItemConsumer;->consume(ILcom/zui/gallery/data/MediaItem;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    return v0
.end method

.method public enumerateMediaItems(Lcom/zui/gallery/data/MediaSet$ItemConsumer;)V
    .locals 1

    const/4 v0, 0x0

    .line 354
    invoke-virtual {p0, p1, v0}, Lcom/zui/gallery/data/MediaSet;->enumerateMediaItems(Lcom/zui/gallery/data/MediaSet$ItemConsumer;I)I

    return-void
.end method

.method protected enumerateTotalMediaItems(Lcom/zui/gallery/data/MediaSet$ItemConsumer;I)I
    .locals 5

    .line 388
    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/data/MediaSet;->enumerateMediaItems(Lcom/zui/gallery/data/MediaSet$ItemConsumer;I)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v0, v1

    .line 389
    invoke-virtual {p0}, Lcom/zui/gallery/data/MediaSet;->getSubMediaSetCount()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    .line 391
    invoke-virtual {p0, v1}, Lcom/zui/gallery/data/MediaSet;->getSubMediaSet(I)Lcom/zui/gallery/data/MediaSet;

    move-result-object v3

    add-int v4, p2, v0

    invoke-virtual {v3, p1, v4}, Lcom/zui/gallery/data/MediaSet;->enumerateTotalMediaItems(Lcom/zui/gallery/data/MediaSet$ItemConsumer;I)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public enumerateTotalMediaItems(Lcom/zui/gallery/data/MediaSet$ItemConsumer;)V
    .locals 1

    const/4 v0, 0x0

    .line 358
    invoke-virtual {p0, p1, v0}, Lcom/zui/gallery/data/MediaSet;->enumerateTotalMediaItems(Lcom/zui/gallery/data/MediaSet$ItemConsumer;I)I

    return-void
.end method

.method public getAppFolderType()I
    .locals 1

    .line 556
    iget v0, p0, Lcom/zui/gallery/data/MediaSet;->appFolderType:I

    return v0
.end method

.method public getBucketId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCoverMediaItem()Lcom/zui/gallery/data/MediaItem;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 87
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v1

    .line 89
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    .line 90
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/data/MediaItem;

    if-eqz v1, :cond_1

    return-object v1

    :cond_0
    move-object v1, v3

    :cond_1
    if-nez v1, :cond_3

    .line 96
    sget-object v0, Lcom/zui/gallery/data/LocalImage;->ITEM_PATH:Lcom/zui/gallery/data/Path;

    const-string v1, "empty"

    invoke-virtual {v0, v1}, Lcom/zui/gallery/data/Path;->getChild(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v0

    .line 97
    sget-object v1, Lcom/zui/gallery/app/GalleryAppImpl;->mApp:Lcom/zui/gallery/app/GalleryAppImpl;

    .line 98
    invoke-virtual {v1}, Lcom/zui/gallery/app/GalleryAppImpl;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zui/gallery/data/DataManager;->peekMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/data/MediaItem;

    if-nez v1, :cond_2

    .line 100
    new-instance v1, Lcom/zui/gallery/data/LocalEmptyMediaItem;

    invoke-direct {v1, v0}, Lcom/zui/gallery/data/LocalEmptyMediaItem;-><init>(Lcom/zui/gallery/data/Path;)V

    :cond_2
    return-object v1

    .line 104
    :cond_3
    invoke-virtual {p0}, Lcom/zui/gallery/data/MediaSet;->getSubMediaSetCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_5

    .line 105
    invoke-virtual {p0, v0}, Lcom/zui/gallery/data/MediaSet;->getSubMediaSet(I)Lcom/zui/gallery/data/MediaSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/data/MediaSet;->getCoverMediaItem()Lcom/zui/gallery/data/MediaItem;

    move-result-object v2

    if-eqz v2, :cond_4

    return-object v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-object v3
.end method

.method public getCoverMediaItem(I)Lcom/zui/gallery/data/MediaItem;
    .locals 3

    const/4 v0, 0x1

    .line 113
    invoke-virtual {p0, p1, v0}, Lcom/zui/gallery/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object p1

    .line 115
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-lez v0, :cond_0

    .line 116
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/data/MediaItem;

    if-eqz p1, :cond_1

    return-object p1

    :cond_0
    move-object p1, v2

    :cond_1
    if-nez p1, :cond_3

    .line 122
    sget-object p1, Lcom/zui/gallery/data/LocalImage;->ITEM_PATH:Lcom/zui/gallery/data/Path;

    const-string v0, "empty"

    invoke-virtual {p1, v0}, Lcom/zui/gallery/data/Path;->getChild(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object p1

    .line 123
    sget-object v0, Lcom/zui/gallery/app/GalleryAppImpl;->mApp:Lcom/zui/gallery/app/GalleryAppImpl;

    .line 124
    invoke-virtual {v0}, Lcom/zui/gallery/app/GalleryAppImpl;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/data/DataManager;->peekMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/data/MediaItem;

    if-nez v0, :cond_2

    .line 126
    new-instance v0, Lcom/zui/gallery/data/LocalEmptyMediaItem;

    invoke-direct {v0, p1}, Lcom/zui/gallery/data/LocalEmptyMediaItem;-><init>(Lcom/zui/gallery/data/Path;)V

    :cond_2
    return-object v0

    .line 130
    :cond_3
    invoke-virtual {p0}, Lcom/zui/gallery/data/MediaSet;->getSubMediaSetCount()I

    move-result p1

    :goto_0
    if-ge v1, p1, :cond_5

    .line 131
    invoke-virtual {p0, v1}, Lcom/zui/gallery/data/MediaSet;->getSubMediaSet(I)Lcom/zui/gallery/data/MediaSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getCoverMediaItem()Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_4

    return-object v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-object v2
.end method

.method public getDetails()Lcom/zui/gallery/data/MediaDetails;
    .locals 3

    .line 345
    invoke-super {p0}, Lcom/zui/gallery/data/MediaObject;->getDetails()Lcom/zui/gallery/data/MediaDetails;

    move-result-object v0

    .line 346
    invoke-virtual {p0}, Lcom/zui/gallery/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/zui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getGroupIdForDelete()I
    .locals 1

    .line 538
    iget v0, p0, Lcom/zui/gallery/data/MediaSet;->mGroupIdForDelete:I

    return v0
.end method

.method public getImageItemCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getIndexOf(Lcom/zui/gallery/data/Path;Ljava/util/ArrayList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/gallery/data/Path;",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/MediaItem;",
            ">;)I"
        }
    .end annotation

    .line 297
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 299
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/data/MediaObject;

    if-eqz v2, :cond_0

    .line 300
    iget-object v2, v2, Lcom/zui/gallery/data/MediaObject;->mPath:Lcom/zui/gallery/data/Path;

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getIndexOfItem(Lcom/zui/gallery/data/Path;I)I
    .locals 4

    const/4 v0, 0x1

    .line 267
    invoke-virtual {p0, p2, v0}, Lcom/zui/gallery/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 269
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return p2

    :cond_0
    add-int/lit16 p2, p2, -0xfa

    .line 274
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/16 v0, 0x1f4

    .line 276
    invoke-virtual {p0, p2, v0}, Lcom/zui/gallery/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v2

    .line 278
    invoke-virtual {p0, p1, v2}, Lcom/zui/gallery/data/MediaSet;->getIndexOf(Lcom/zui/gallery/data/Path;Ljava/util/ArrayList;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    add-int/2addr p2, v2

    return p2

    :cond_1
    if-nez p2, :cond_2

    move v1, v0

    .line 284
    :cond_2
    invoke-virtual {p0, v1, v0}, Lcom/zui/gallery/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object p2

    .line 286
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/data/MediaSet;->getIndexOf(Lcom/zui/gallery/data/Path;Ljava/util/ArrayList;)I

    move-result v2

    if-eq v2, v3, :cond_3

    add-int/2addr v1, v2

    return v1

    .line 289
    :cond_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p2, v0, :cond_4

    return v3

    :cond_4
    add-int/lit16 v1, v1, 0x1f4

    .line 292
    invoke-virtual {p0, v1, v0}, Lcom/zui/gallery/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object p2

    goto :goto_0
.end method

.method public getListeners()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/ContentListener;",
            ">;"
        }
    .end annotation

    .line 322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 323
    iget-object v1, p0, Lcom/zui/gallery/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 324
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 325
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 326
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/data/ContentListener;

    .line 327
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/MediaItem;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public getMediaItemCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public getSubMediaSet(I)Lcom/zui/gallery/data/MediaSet;
    .locals 0

    .line 143
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public getSubMediaSetCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSystemId()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getTotalMediaItemCount()I
    .locals 4

    .line 255
    invoke-virtual {p0}, Lcom/zui/gallery/data/MediaSet;->getMediaItemCount()I

    move-result v0

    .line 256
    invoke-virtual {p0}, Lcom/zui/gallery/data/MediaSet;->getSubMediaSetCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 257
    invoke-virtual {p0, v2}, Lcom/zui/gallery/data/MediaSet;->getSubMediaSet(I)Lcom/zui/gallery/data/MediaSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/gallery/data/MediaSet;->getTotalMediaItemCount()I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getVideoItemCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCameraRoll()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isFavoriteAlbum()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isGroupAlbum()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isGroupFolderAlbum()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMediaSet()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPanoAlbum()Z
    .locals 2

    .line 192
    invoke-virtual {p0}, Lcom/zui/gallery/data/MediaSet;->getBucketId()I

    move-result v0

    sget v1, Lcom/zui/gallery/util/MediaSetUtils;->PANORAMA_BUCKET_ID:I

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/zui/gallery/data/MediaSet;->getBucketId()I

    move-result v0

    sget v1, Lcom/zui/gallery/util/MediaSetUtils;->SD_PANORAMA_BUCKET_ID:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isScreenShotAlbum()Z
    .locals 2

    .line 202
    invoke-virtual {p0}, Lcom/zui/gallery/data/MediaSet;->getBucketId()I

    move-result v0

    sget v1, Lcom/zui/gallery/util/MediaSetUtils;->SNAPSHOT_BUCKET_ID:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSelfAlbum()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSystemGroupAlbum()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVideoAlbum()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized notifyContentChanged()V
    .locals 2

    monitor-enter p0

    .line 334
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/data/ContentListener;

    .line 335
    invoke-interface {v1}, Lcom/zui/gallery/data/ContentListener;->onContentDirty()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 337
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract reload()J
.end method

.method public removeContentListener(Lcom/zui/gallery/data/ContentListener;)V
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/zui/gallery/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public requestSync(Lcom/zui/gallery/data/MediaSet$SyncListener;)Lcom/zui/gallery/util/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/gallery/data/MediaSet$SyncListener;",
            ")",
            "Lcom/zui/gallery/util/Future<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 405
    invoke-interface {p1, p0, v0}, Lcom/zui/gallery/data/MediaSet$SyncListener;->onSyncDone(Lcom/zui/gallery/data/MediaSet;I)V

    .line 406
    sget-object p1, Lcom/zui/gallery/data/MediaSet;->FUTURE_STUB:Lcom/zui/gallery/util/Future;

    return-object p1
.end method

.method protected requestSyncOnMultipleSets([Lcom/zui/gallery/data/MediaSet;Lcom/zui/gallery/data/MediaSet$SyncListener;)Lcom/zui/gallery/util/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/zui/gallery/data/MediaSet;",
            "Lcom/zui/gallery/data/MediaSet$SyncListener;",
            ")",
            "Lcom/zui/gallery/util/Future<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 435
    new-instance v0, Lcom/zui/gallery/data/MediaSet$MultiSetSyncFuture;

    invoke-direct {v0, p0, p1, p2}, Lcom/zui/gallery/data/MediaSet$MultiSetSyncFuture;-><init>(Lcom/zui/gallery/data/MediaSet;[Lcom/zui/gallery/data/MediaSet;Lcom/zui/gallery/data/MediaSet$SyncListener;)V

    return-object v0
.end method

.method public setAppFolderType(I)V
    .locals 0

    .line 565
    iput p1, p0, Lcom/zui/gallery/data/MediaSet;->appFolderType:I

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setGroupIdForDelete(I)V
    .locals 0

    .line 534
    iput p1, p0, Lcom/zui/gallery/data/MediaSet;->mGroupIdForDelete:I

    return-void
.end method
