.class Lcom/zui/gallery/data/LocalMergeAlbum$FetchCache;
.super Ljava/lang/Object;
.source "LocalMergeAlbum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/data/LocalMergeAlbum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FetchCache"
.end annotation


# instance fields
.field private mBaseSet:Lcom/zui/gallery/data/MediaSet;

.field private mCacheRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/MediaItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mStartPos:I


# direct methods
.method public constructor <init>(Lcom/zui/gallery/data/MediaSet;)V
    .locals 0

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    iput-object p1, p0, Lcom/zui/gallery/data/LocalMergeAlbum$FetchCache;->mBaseSet:Lcom/zui/gallery/data/MediaSet;

    return-void
.end method


# virtual methods
.method public getItem(I)Lcom/zui/gallery/data/MediaItem;
    .locals 5

    .line 272
    iget-object v0, p0, Lcom/zui/gallery/data/LocalMergeAlbum$FetchCache;->mCacheRef:Ljava/lang/ref/SoftReference;

    const/16 v1, 0x40

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget v4, p0, Lcom/zui/gallery/data/LocalMergeAlbum$FetchCache;->mStartPos:I

    if-lt p1, v4, :cond_2

    add-int/2addr v4, v1

    if-lt p1, v4, :cond_0

    goto :goto_0

    .line 276
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move-object v0, v3

    :goto_1
    if-eqz v2, :cond_3

    .line 283
    iget-object v0, p0, Lcom/zui/gallery/data/LocalMergeAlbum$FetchCache;->mBaseSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v0, p1, v1}, Lcom/zui/gallery/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 284
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/zui/gallery/data/LocalMergeAlbum$FetchCache;->mCacheRef:Ljava/lang/ref/SoftReference;

    .line 285
    iput p1, p0, Lcom/zui/gallery/data/LocalMergeAlbum$FetchCache;->mStartPos:I

    .line 288
    :cond_3
    iget v1, p0, Lcom/zui/gallery/data/LocalMergeAlbum$FetchCache;->mStartPos:I

    if-lt p1, v1, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    if-lt p1, v1, :cond_4

    goto :goto_2

    .line 292
    :cond_4
    iget v1, p0, Lcom/zui/gallery/data/LocalMergeAlbum$FetchCache;->mStartPos:I

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/data/MediaItem;

    return-object p1

    :cond_5
    :goto_2
    return-object v3
.end method

.method public invalidate()V
    .locals 1

    const/4 v0, 0x0

    .line 266
    iput-object v0, p0, Lcom/zui/gallery/data/LocalMergeAlbum$FetchCache;->mCacheRef:Ljava/lang/ref/SoftReference;

    return-void
.end method
