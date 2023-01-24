.class public Lcom/zui/gallery/data/LocalMergeAlbum;
.super Lcom/zui/gallery/data/MediaSet;
.source "LocalMergeAlbum.java"

# interfaces
.implements Lcom/zui/gallery/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/data/LocalMergeAlbum$FetchCache;
    }
.end annotation


# static fields
.field private static final PAGE_SIZE:I = 0x40

.field private static final TAG:Ljava/lang/String; = "LocalMergeAlbum"


# instance fields
.field private mBucketId:I

.field private final mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/zui/gallery/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFetcher:[Lcom/zui/gallery/data/LocalMergeAlbum$FetchCache;

.field private mIndex:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private mMediaItemCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/zui/gallery/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mSources:[Lcom/zui/gallery/data/MediaSet;

.field private mSupportedOperation:I


# direct methods
.method public constructor <init>(Lcom/zui/gallery/data/Path;Ljava/util/Comparator;[Lcom/zui/gallery/data/MediaSet;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/gallery/data/Path;",
            "Ljava/util/Comparator<",
            "Lcom/zui/gallery/data/MediaItem;",
            ">;[",
            "Lcom/zui/gallery/data/MediaSet;",
            "I)V"
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 58
    invoke-direct {p0, p1, v0, v1}, Lcom/zui/gallery/data/MediaSet;-><init>(Lcom/zui/gallery/data/Path;J)V

    .line 51
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    .line 53
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/data/LocalMergeAlbum;->mMediaItemCache:Ljava/util/HashMap;

    .line 59
    iput-object p2, p0, Lcom/zui/gallery/data/LocalMergeAlbum;->mComparator:Ljava/util/Comparator;

    .line 60
    iput-object p3, p0, Lcom/zui/gallery/data/LocalMergeAlbum;->mSources:[Lcom/zui/gallery/data/MediaSet;

    .line 61
    iput p4, p0, Lcom/zui/gallery/data/LocalMergeAlbum;->mBucketId:I

    .line 62
    array-length p1, p3

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    aget-object p4, p3, p2

    .line 63
    invoke-virtual {p4, p0}, Lcom/zui/gallery/data/MediaSet;->addContentListener(Lcom/zui/gallery/data/ContentListener;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/data/LocalMergeAlbum;->reload()J

    return-void
.end method

.method private invalidateCache()V
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/zui/gallery/data/LocalMergeAlbum;->mSources:[Lcom/zui/gallery/data/MediaSet;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 104
    iget-object v3, p0, Lcom/zui/gallery/data/LocalMergeAlbum;->mFetcher:[Lcom/zui/gallery/data/LocalMergeAlbum$FetchCache;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/zui/gallery/data/LocalMergeAlbum$FetchCache;->invalidate()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 107
    iget-object v0, p0, Lcom/zui/gallery/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/gallery/data/LocalMergeAlbum;->mSources:[Lcom/zui/gallery/data/MediaSet;

    array-length v2, v2

    new-array v2, v2, [I

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/zui/gallery/data/LocalMergeAlbum;->mMediaItemCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private updateData()V
    .locals 7

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    iget-object v0, p0, Lcom/zui/gallery/data/LocalMergeAlbum;->mSources:[Lcom/zui/gallery/data/MediaSet;

    array-length v0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 89
    :goto_0
    iget-object v2, p0, Lcom/zui/gallery/data/LocalMergeAlbum;->mSources:[Lcom/zui/gallery/data/MediaSet;

    array-length v3, v2

    new-array v3, v3, [Lcom/zui/gallery/data/LocalMergeAlbum$FetchCache;

    iput-object v3, p0, Lcom/zui/gallery/data/LocalMergeAlbum;->mFetcher:[Lcom/zui/gallery/data/LocalMergeAlbum$FetchCache;

    .line 90
    array-length v2, v2

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_1

    .line 91
    iget-object v4, p0, Lcom/zui/gallery/data/LocalMergeAlbum;->mFetcher:[Lcom/zui/gallery/data/LocalMergeAlbum$FetchCache;

    new-instance v5, Lcom/zui/gallery/data/LocalMergeAlbum$FetchCache;

    iget-object v6, p0, Lcom/zui/gallery/data/LocalMergeAlbum;->mSources:[Lcom/zui/gallery/data/MediaSet;

    aget-object v6, v6, v3

    invoke-direct {v5, v6}, Lcom/zui/gallery/data/LocalMergeAlbum$FetchCache;-><init>(Lcom/zui/gallery/data/MediaSet;)V

    aput-object v5, v4, v3

    .line 92
    iget-object v4, p0, Lcom/zui/gallery/data/LocalMergeAlbum;->mSources:[Lcom/zui/gallery/data/MediaSet;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/zui/gallery/data/MediaSet;->getSupportedOperations()I

    move-result v4

    and-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 94
    :cond_1
    iput v0, p0, Lcom/zui/gallery/data/LocalMergeAlbum;->mSupportedOperation:I

    .line 95
    iget-object v0, p0, Lcom/zui/gallery/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 96
    iget-object v0, p0, Lcom/zui/gallery/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/gallery/data/LocalMergeAlbum;->mSources:[Lcom/zui/gallery/data/MediaSet;

    array-length v2, v2

    new-array v2, v2, [I

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/zui/gallery/data/LocalMergeAlbum;->mMediaItemCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method


# virtual methods
.method public delete()V
    .locals 4

    .line 244
    iget-object v0, p0, Lcom/zui/gallery/data/LocalMergeAlbum;->mSources:[Lcom/zui/gallery/data/MediaSet;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 245
    invoke-virtual {v3}, Lcom/zui/gallery/data/MediaSet;->delete()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getBucketId()I
    .locals 1

    .line 303
    iget v0, p0, Lcom/zui/gallery/data/LocalMergeAlbum;->mBucketId:I

    return v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 3

    .line 115
    iget v0, p0, Lcom/zui/gallery/data/LocalMergeAlbum;->mBucketId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    sget-boolean v1, Lcom/zui/gallery/common/ApiHelper;->HAS_MEDIA_PROVIDER_FILES_TABLE:Z

    const-string v2, "bucketId"

    if-eqz v1, :cond_0

    const-string v1, "external"

    .line 117
    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 118
    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 123
    :cond_0
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 124
    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getImageItemCount()I
    .locals 6

    .line 324
    iget-object v0, p0, Lcom/zui/gallery/data/LocalMergeAlbum;->mSources:[Lcom/zui/gallery/data/MediaSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    array-length v2, v0

    if-lez v2, :cond_3

    .line 325
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 326
    instance-of v5, v4, Lcom/zui/gallery/data/LocalAlbum;

    if-eqz v5, :cond_0

    .line 327
    check-cast v4, Lcom/zui/gallery/data/LocalAlbum;

    .line 328
    invoke-virtual {v4}, Lcom/zui/gallery/data/LocalAlbum;->isImage()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 329
    invoke-virtual {v4}, Lcom/zui/gallery/data/LocalAlbum;->getMediaItemCount()I

    move-result v4

    goto :goto_1

    .line 331
    :cond_0
    instance-of v5, v4, Lcom/zui/gallery/data/CloudAlbum;

    if-eqz v5, :cond_1

    .line 332
    invoke-virtual {v4}, Lcom/zui/gallery/data/MediaSet;->getMediaItemCount()I

    move-result v4

    :goto_1
    add-int/2addr v3, v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v3

    :cond_3
    return v1
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/MediaItem;",
            ">;"
        }
    .end annotation

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v1, p1

    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_0

    .line 144
    iget-object v2, p0, Lcom/zui/gallery/data/LocalMergeAlbum;->mMediaItemCache:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 145
    iget-object v2, p0, Lcom/zui/gallery/data/LocalMergeAlbum;->mMediaItemCache:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr p1, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/data/LocalMergeAlbum;->getMediaItemImpl(II)Ljava/util/ArrayList;

    move-result-object p1

    .line 151
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getMediaItemCount()I
    .locals 1

    .line 136
    invoke-virtual {p0}, Lcom/zui/gallery/data/LocalMergeAlbum;->getTotalMediaItemCount()I

    move-result v0

    return v0
.end method

.method public getMediaItemImpl(II)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/MediaItem;",
            ">;"
        }
    .end annotation

    if-gtz p2, :cond_0

    .line 161
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    add-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 166
    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 167
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 168
    iget-object v2, p0, Lcom/zui/gallery/data/LocalMergeAlbum;->mSources:[Lcom/zui/gallery/data/MediaSet;

    array-length v3, v2

    new-array v3, v3, [Lcom/zui/gallery/data/MediaItem;

    .line 170
    array-length v2, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_1

    .line 174
    iget-object v6, p0, Lcom/zui/gallery/data/LocalMergeAlbum;->mFetcher:[Lcom/zui/gallery/data/LocalMergeAlbum$FetchCache;

    aget-object v6, v6, v5

    aget v7, v0, v5

    invoke-virtual {v6, v7}, Lcom/zui/gallery/data/LocalMergeAlbum$FetchCache;->getItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object v6

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 176
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    :goto_1
    add-int v6, p1, p2

    if-ge v1, v6, :cond_8

    const/4 v6, -0x1

    move v7, v4

    move v8, v6

    :goto_2
    if-ge v7, v2, :cond_5

    .line 181
    aget-object v9, v3, v7

    if-eqz v9, :cond_4

    if-eq v8, v6, :cond_3

    .line 182
    iget-object v9, p0, Lcom/zui/gallery/data/LocalMergeAlbum;->mComparator:Ljava/util/Comparator;

    aget-object v10, v3, v7

    aget-object v11, v3, v8

    invoke-interface {v9, v10, v11}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    if-gez v9, :cond_4

    :cond_3
    move v8, v7

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    if-ne v8, v6, :cond_6

    goto :goto_3

    .line 192
    :cond_6
    aget v6, v0, v8

    add-int/lit8 v6, v6, 0x1

    aput v6, v0, v8

    if-lt v1, p1, :cond_7

    .line 194
    aget-object v6, v3, v8

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    :cond_7
    iget-object v6, p0, Lcom/zui/gallery/data/LocalMergeAlbum;->mMediaItemCache:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aget-object v9, v3, v8

    invoke-virtual {v6, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v6, p0, Lcom/zui/gallery/data/LocalMergeAlbum;->mFetcher:[Lcom/zui/gallery/data/LocalMergeAlbum$FetchCache;

    aget-object v6, v6, v8

    aget v7, v0, v8

    invoke-virtual {v6, v7}, Lcom/zui/gallery/data/LocalMergeAlbum$FetchCache;->getItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object v6

    aput-object v6, v3, v8

    add-int/lit8 v1, v1, 0x1

    .line 202
    rem-int/lit8 v6, v1, 0x40

    if-nez v6, :cond_2

    .line 203
    iget-object v6, p0, Lcom/zui/gallery/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    invoke-virtual {v6, v7, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_8
    :goto_3
    return-object v5
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/zui/gallery/data/LocalMergeAlbum;->mSources:[Lcom/zui/gallery/data/MediaSet;

    array-length v1, v0

    if-nez v1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .line 239
    iget v0, p0, Lcom/zui/gallery/data/LocalMergeAlbum;->mSupportedOperation:I

    return v0
.end method

.method public getTotalMediaItemCount()I
    .locals 5

    .line 212
    iget-object v0, p0, Lcom/zui/gallery/data/LocalMergeAlbum;->mSources:[Lcom/zui/gallery/data/MediaSet;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 213
    invoke-virtual {v4}, Lcom/zui/gallery/data/MediaSet;->getTotalMediaItemCount()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method public getVideoItemCount()I
    .locals 6

    .line 341
    iget-object v0, p0, Lcom/zui/gallery/data/LocalMergeAlbum;->mSources:[Lcom/zui/gallery/data/MediaSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    .line 342
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 343
    instance-of v5, v4, Lcom/zui/gallery/data/LocalAlbum;

    if-eqz v5, :cond_0

    .line 344
    check-cast v4, Lcom/zui/gallery/data/LocalAlbum;

    .line 345
    invoke-virtual {v4}, Lcom/zui/gallery/data/LocalAlbum;->isImage()Z

    move-result v5

    if-nez v5, :cond_0

    .line 346
    invoke-virtual {v4}, Lcom/zui/gallery/data/LocalAlbum;->getMediaItemCount()I

    move-result v0

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public hasVideo()Z
    .locals 6

    .line 308
    iget-object v0, p0, Lcom/zui/gallery/data/LocalMergeAlbum;->mSources:[Lcom/zui/gallery/data/MediaSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    .line 309
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 310
    instance-of v5, v4, Lcom/zui/gallery/data/LocalAlbum;

    if-eqz v5, :cond_0

    .line 311
    check-cast v4, Lcom/zui/gallery/data/LocalAlbum;

    .line 312
    invoke-virtual {v4}, Lcom/zui/gallery/data/LocalAlbum;->isImage()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/zui/gallery/data/LocalAlbum;->getMediaItemCount()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isCameraRoll()Z
    .locals 5

    .line 70
    iget-object v0, p0, Lcom/zui/gallery/data/LocalMergeAlbum;->mSources:[Lcom/zui/gallery/data/MediaSet;

    array-length v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 71
    :cond_0
    array-length v1, v0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 72
    invoke-virtual {v4}, Lcom/zui/gallery/data/MediaSet;->isCameraRoll()Z

    move-result v4

    if-nez v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public isGroupFolderAlbum()Z
    .locals 5

    .line 79
    iget-object v0, p0, Lcom/zui/gallery/data/LocalMergeAlbum;->mSources:[Lcom/zui/gallery/data/MediaSet;

    array-length v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 80
    :cond_0
    array-length v1, v0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 81
    invoke-virtual {v4}, Lcom/zui/gallery/data/MediaSet;->isGroupFolderAlbum()Z

    move-result v4

    if-nez v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onContentDirty()V
    .locals 0

    .line 234
    invoke-virtual {p0}, Lcom/zui/gallery/data/LocalMergeAlbum;->notifyContentChanged()V

    return-void
.end method

.method public reload()J
    .locals 7

    .line 221
    iget-object v0, p0, Lcom/zui/gallery/data/LocalMergeAlbum;->mSources:[Lcom/zui/gallery/data/MediaSet;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 222
    iget-object v3, p0, Lcom/zui/gallery/data/LocalMergeAlbum;->mSources:[Lcom/zui/gallery/data/MediaSet;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/zui/gallery/data/MediaSet;->reload()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/zui/gallery/data/LocalMergeAlbum;->mDataVersion:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 225
    invoke-static {}, Lcom/zui/gallery/data/LocalMergeAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/data/LocalMergeAlbum;->mDataVersion:J

    .line 226
    invoke-direct {p0}, Lcom/zui/gallery/data/LocalMergeAlbum;->updateData()V

    .line 227
    invoke-direct {p0}, Lcom/zui/gallery/data/LocalMergeAlbum;->invalidateCache()V

    .line 229
    :cond_2
    iget-wide v0, p0, Lcom/zui/gallery/data/LocalMergeAlbum;->mDataVersion:J

    return-wide v0
.end method

.method public rotate(I)V
    .locals 4

    .line 251
    iget-object v0, p0, Lcom/zui/gallery/data/LocalMergeAlbum;->mSources:[Lcom/zui/gallery/data/MediaSet;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 252
    invoke-virtual {v3, p1}, Lcom/zui/gallery/data/MediaSet;->rotate(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
