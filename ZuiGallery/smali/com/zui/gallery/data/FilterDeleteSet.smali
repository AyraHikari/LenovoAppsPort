.class public Lcom/zui/gallery/data/FilterDeleteSet;
.super Lcom/zui/gallery/data/MediaSet;
.source "FilterDeleteSet.java"

# interfaces
.implements Lcom/zui/gallery/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/data/FilterDeleteSet$Deletion;,
        Lcom/zui/gallery/data/FilterDeleteSet$Request;
    }
.end annotation


# static fields
.field public static final FILTERDELETEITEM_BATCH_FETCH_COUNT:I = 0xa

.field private static final REQUEST_ADD:I = 0x1

.field private static final REQUEST_CLEAR:I = 0x3

.field private static final REQUEST_REMOVE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FilterDeleteSet"


# instance fields
.field private final mBaseSet:Lcom/zui/gallery/data/MediaSet;

.field private mCurrent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/FilterDeleteSet$Deletion;",
            ">;"
        }
    .end annotation
.end field

.field private mRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/FilterDeleteSet$Request;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/data/MediaSet;)V
    .locals 2

    const-wide/16 v0, -0x1

    .line 71
    invoke-direct {p0, p1, v0, v1}, Lcom/zui/gallery/data/MediaSet;-><init>(Lcom/zui/gallery/data/Path;J)V

    .line 65
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/data/FilterDeleteSet;->mRequests:Ljava/util/ArrayList;

    .line 68
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    .line 72
    iput-object p2, p0, Lcom/zui/gallery/data/FilterDeleteSet;->mBaseSet:Lcom/zui/gallery/data/MediaSet;

    .line 73
    invoke-virtual {p2, p0}, Lcom/zui/gallery/data/MediaSet;->addContentListener(Lcom/zui/gallery/data/ContentListener;)V

    return-void
.end method

.method private sendRequest(ILcom/zui/gallery/data/Path;I)V
    .locals 1

    .line 246
    new-instance v0, Lcom/zui/gallery/data/FilterDeleteSet$Request;

    invoke-direct {v0, p1, p2, p3}, Lcom/zui/gallery/data/FilterDeleteSet$Request;-><init>(ILcom/zui/gallery/data/Path;I)V

    .line 247
    iget-object p1, p0, Lcom/zui/gallery/data/FilterDeleteSet;->mRequests:Ljava/util/ArrayList;

    monitor-enter p1

    .line 248
    :try_start_0
    iget-object p2, p0, Lcom/zui/gallery/data/FilterDeleteSet;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    invoke-virtual {p0}, Lcom/zui/gallery/data/FilterDeleteSet;->notifyContentChanged()V

    return-void

    :catchall_0
    move-exception p2

    .line 249
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method


# virtual methods
.method public addDeletion(Lcom/zui/gallery/data/Path;I)V
    .locals 1

    const/4 v0, 0x1

    .line 259
    invoke-direct {p0, v0, p1, p2}, Lcom/zui/gallery/data/FilterDeleteSet;->sendRequest(ILcom/zui/gallery/data/Path;I)V

    return-void
.end method

.method public clearDeletion()V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 267
    invoke-direct {p0, v0, v1, v2}, Lcom/zui/gallery/data/FilterDeleteSet;->sendRequest(ILcom/zui/gallery/data/Path;I)V

    return-void
.end method

.method public getIndexOfItem(Lcom/zui/gallery/data/Path;I)I
    .locals 1

    add-int/lit8 p2, p2, -0x5

    const/4 v0, 0x0

    .line 150
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/16 v0, 0xa

    .line 152
    invoke-virtual {p0, p2, v0}, Lcom/zui/gallery/data/FilterDeleteSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 154
    invoke-virtual {p0, p1, v0}, Lcom/zui/gallery/data/FilterDeleteSet;->getIndexOf(Lcom/zui/gallery/data/Path;Ljava/util/ArrayList;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    add-int/2addr p2, p1

    return p2

    :cond_0
    return v0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/MediaItem;",
            ">;"
        }
    .end annotation

    if-gtz p2, :cond_0

    .line 117
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :cond_0
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    .line 120
    iget-object v1, p0, Lcom/zui/gallery/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 125
    iget-object v3, p0, Lcom/zui/gallery/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/data/FilterDeleteSet$Deletion;

    .line 126
    iget v3, v3, Lcom/zui/gallery/data/FilterDeleteSet$Deletion;->index:I

    sub-int/2addr v3, v2

    if-le v3, p1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_4

    .line 131
    iget-object v4, p0, Lcom/zui/gallery/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/gallery/data/FilterDeleteSet$Deletion;

    .line 132
    iget v4, v4, Lcom/zui/gallery/data/FilterDeleteSet$Deletion;->index:I

    sub-int/2addr v4, v3

    if-le v4, v0, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 136
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/zui/gallery/data/FilterDeleteSet;->mBaseSet:Lcom/zui/gallery/data/MediaSet;

    add-int/2addr p1, v2

    sub-int v1, v3, v2

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object p2

    add-int/lit8 v3, v3, -0x1

    :goto_4
    if-lt v3, v2, :cond_5

    .line 140
    iget-object v0, p0, Lcom/zui/gallery/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/data/FilterDeleteSet$Deletion;

    .line 141
    iget v0, v0, Lcom/zui/gallery/data/FilterDeleteSet$Deletion;->index:I

    sub-int/2addr v0, p1

    .line 142
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_5
    return-object p2
.end method

.method public getMediaItemCount()I
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/zui/gallery/data/FilterDeleteSet;->mBaseSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getMediaItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/zui/gallery/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/zui/gallery/data/FilterDeleteSet;->mBaseSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumberOfDeletions()I
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/zui/gallery/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 278
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isCameraRoll()Z
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/zui/gallery/data/FilterDeleteSet;->mBaseSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->isCameraRoll()Z

    move-result v0

    return v0
.end method

.method public onContentDirty()V
    .locals 0

    .line 255
    invoke-virtual {p0}, Lcom/zui/gallery/data/FilterDeleteSet;->notifyContentChanged()V

    return-void
.end method

.method public reload()J
    .locals 9

    .line 166
    iget-object v0, p0, Lcom/zui/gallery/data/FilterDeleteSet;->mBaseSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->reload()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/zui/gallery/data/FilterDeleteSet;->mDataVersion:J

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 167
    :goto_0
    iget-object v3, p0, Lcom/zui/gallery/data/FilterDeleteSet;->mRequests:Ljava/util/ArrayList;

    monitor-enter v3

    if-nez v0, :cond_1

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/data/FilterDeleteSet;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    iget-wide v0, p0, Lcom/zui/gallery/data/FilterDeleteSet;->mDataVersion:J

    monitor-exit v3

    return-wide v0

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_1
    move v0, v1

    .line 171
    :goto_1
    iget-object v4, p0, Lcom/zui/gallery/data/FilterDeleteSet;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_9

    .line 172
    iget-object v4, p0, Lcom/zui/gallery/data/FilterDeleteSet;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/gallery/data/FilterDeleteSet$Request;

    .line 173
    iget v5, v4, Lcom/zui/gallery/data/FilterDeleteSet$Request;->type:I

    if-eq v5, v2, :cond_5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    const/4 v4, 0x3

    if-eq v5, v4, :cond_2

    goto :goto_5

    .line 198
    :cond_2
    iget-object v4, p0, Lcom/zui/gallery/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_5

    .line 188
    :cond_3
    iget-object v5, p0, Lcom/zui/gallery/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v1

    :goto_2
    if-ge v6, v5, :cond_8

    .line 190
    iget-object v7, p0, Lcom/zui/gallery/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zui/gallery/data/FilterDeleteSet$Deletion;

    iget-object v7, v7, Lcom/zui/gallery/data/FilterDeleteSet$Deletion;->path:Lcom/zui/gallery/data/Path;

    iget-object v8, v4, Lcom/zui/gallery/data/FilterDeleteSet$Request;->path:Lcom/zui/gallery/data/Path;

    if-ne v7, v8, :cond_4

    .line 191
    iget-object v4, p0, Lcom/zui/gallery/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_5

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 176
    :cond_5
    iget-object v5, p0, Lcom/zui/gallery/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v1

    :goto_3
    if-ge v6, v5, :cond_7

    .line 179
    iget-object v7, p0, Lcom/zui/gallery/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zui/gallery/data/FilterDeleteSet$Deletion;

    iget-object v7, v7, Lcom/zui/gallery/data/FilterDeleteSet$Deletion;->path:Lcom/zui/gallery/data/Path;

    iget-object v8, v4, Lcom/zui/gallery/data/FilterDeleteSet$Request;->path:Lcom/zui/gallery/data/Path;

    if-ne v7, v8, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    if-ne v6, v5, :cond_8

    .line 182
    iget-object v5, p0, Lcom/zui/gallery/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    new-instance v6, Lcom/zui/gallery/data/FilterDeleteSet$Deletion;

    iget-object v7, v4, Lcom/zui/gallery/data/FilterDeleteSet$Request;->path:Lcom/zui/gallery/data/Path;

    iget v4, v4, Lcom/zui/gallery/data/FilterDeleteSet$Request;->indexHint:I

    invoke-direct {v6, v7, v4}, Lcom/zui/gallery/data/FilterDeleteSet$Deletion;-><init>(Lcom/zui/gallery/data/Path;I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 203
    :cond_9
    iget-object v0, p0, Lcom/zui/gallery/data/FilterDeleteSet;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 204
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    iget-object v0, p0, Lcom/zui/gallery/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 210
    iget-object v0, p0, Lcom/zui/gallery/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/data/FilterDeleteSet$Deletion;

    iget v0, v0, Lcom/zui/gallery/data/FilterDeleteSet$Deletion;->index:I

    move v3, v2

    move v2, v0

    .line 212
    :goto_6
    iget-object v4, p0, Lcom/zui/gallery/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_a

    .line 213
    iget-object v4, p0, Lcom/zui/gallery/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/gallery/data/FilterDeleteSet$Deletion;

    .line 214
    iget v5, v4, Lcom/zui/gallery/data/FilterDeleteSet$Deletion;->index:I

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 215
    iget v4, v4, Lcom/zui/gallery/data/FilterDeleteSet$Deletion;->index:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 218
    :cond_a
    iget-object v3, p0, Lcom/zui/gallery/data/FilterDeleteSet;->mBaseSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v3}, Lcom/zui/gallery/data/MediaSet;->getMediaItemCount()I

    move-result v3

    add-int/lit8 v0, v0, -0x5

    .line 219
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v2, v2, 0x5

    .line 220
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 221
    iget-object v3, p0, Lcom/zui/gallery/data/FilterDeleteSet;->mBaseSet:Lcom/zui/gallery/data/MediaSet;

    sub-int/2addr v2, v0

    invoke-virtual {v3, v0, v2}, Lcom/zui/gallery/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v2

    .line 222
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v4, v1

    .line 223
    :goto_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_e

    .line 224
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/gallery/data/MediaItem;

    if-nez v5, :cond_b

    goto :goto_9

    .line 226
    :cond_b
    invoke-virtual {v5}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v5

    move v6, v1

    .line 228
    :goto_8
    iget-object v7, p0, Lcom/zui/gallery/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_d

    .line 229
    iget-object v7, p0, Lcom/zui/gallery/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zui/gallery/data/FilterDeleteSet$Deletion;

    .line 230
    iget-object v8, v7, Lcom/zui/gallery/data/FilterDeleteSet$Deletion;->path:Lcom/zui/gallery/data/Path;

    if-ne v8, v5, :cond_c

    add-int v5, v0, v4

    .line 231
    iput v5, v7, Lcom/zui/gallery/data/FilterDeleteSet$Deletion;->index:I

    .line 232
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v5, p0, Lcom/zui/gallery/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_9

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_d
    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 238
    :cond_e
    iput-object v3, p0, Lcom/zui/gallery/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    .line 241
    :cond_f
    invoke-static {}, Lcom/zui/gallery/data/FilterDeleteSet;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/data/FilterDeleteSet;->mDataVersion:J

    .line 242
    iget-wide v0, p0, Lcom/zui/gallery/data/FilterDeleteSet;->mDataVersion:J

    return-wide v0

    .line 204
    :goto_a
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public removeDeletion(Lcom/zui/gallery/data/Path;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 263
    invoke-direct {p0, v0, p1, v1}, Lcom/zui/gallery/data/FilterDeleteSet;->sendRequest(ILcom/zui/gallery/data/Path;I)V

    return-void
.end method
