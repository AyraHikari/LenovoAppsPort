.class Lcom/zui/gallery/app/SlideshowPage$SequentialSource;
.super Ljava/lang/Object;
.source "SlideshowPage.java"

# interfaces
.implements Lcom/zui/gallery/app/SlideshowDataAdapter$SlideshowSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/SlideshowPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SequentialSource"
.end annotation


# static fields
.field private static final DATA_SIZE:I = 0x20


# instance fields
.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDataStart:I

.field private mDataVersion:J

.field private final mMediaSet:Lcom/zui/gallery/data/MediaSet;

.field private final mRepeat:Z


# direct methods
.method public constructor <init>(Lcom/zui/gallery/data/MediaSet;Z)V
    .locals 2

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/app/SlideshowPage$SequentialSource;->mData:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 314
    iput v0, p0, Lcom/zui/gallery/app/SlideshowPage$SequentialSource;->mDataStart:I

    const-wide/16 v0, -0x1

    .line 315
    iput-wide v0, p0, Lcom/zui/gallery/app/SlideshowPage$SequentialSource;->mDataVersion:J

    .line 320
    iput-object p1, p0, Lcom/zui/gallery/app/SlideshowPage$SequentialSource;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    .line 321
    iput-boolean p2, p0, Lcom/zui/gallery/app/SlideshowPage$SequentialSource;->mRepeat:Z

    return-void
.end method


# virtual methods
.method public addContentListener(Lcom/zui/gallery/data/ContentListener;)V
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/zui/gallery/app/SlideshowPage$SequentialSource;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/data/MediaSet;->addContentListener(Lcom/zui/gallery/data/ContentListener;)V

    return-void
.end method

.method public findItemIndex(Lcom/zui/gallery/data/Path;I)I
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/zui/gallery/app/SlideshowPage$SequentialSource;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/data/MediaSet;->getIndexOfItem(Lcom/zui/gallery/data/Path;I)I

    move-result p1

    return p1
.end method

.method public getMediaItem(I)Lcom/zui/gallery/data/MediaItem;
    .locals 3

    .line 331
    iget v0, p0, Lcom/zui/gallery/app/SlideshowPage$SequentialSource;->mDataStart:I

    iget-object v1, p0, Lcom/zui/gallery/app/SlideshowPage$SequentialSource;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 333
    iget-boolean v1, p0, Lcom/zui/gallery/app/SlideshowPage$SequentialSource;->mRepeat:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 334
    iget-object v1, p0, Lcom/zui/gallery/app/SlideshowPage$SequentialSource;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v1}, Lcom/zui/gallery/data/MediaSet;->getMediaItemCount()I

    move-result v1

    if-nez v1, :cond_0

    return-object v2

    .line 336
    :cond_0
    rem-int/2addr p1, v1

    .line 338
    :cond_1
    iget v1, p0, Lcom/zui/gallery/app/SlideshowPage$SequentialSource;->mDataStart:I

    if-lt p1, v1, :cond_2

    if-lt p1, v0, :cond_3

    .line 339
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/app/SlideshowPage$SequentialSource;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    const/16 v1, 0x20

    invoke-virtual {v0, p1, v1}, Lcom/zui/gallery/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/SlideshowPage$SequentialSource;->mData:Ljava/util/ArrayList;

    .line 340
    iput p1, p0, Lcom/zui/gallery/app/SlideshowPage$SequentialSource;->mDataStart:I

    .line 341
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, p1

    .line 344
    :cond_3
    iget v1, p0, Lcom/zui/gallery/app/SlideshowPage$SequentialSource;->mDataStart:I

    if-lt p1, v1, :cond_5

    if-lt p1, v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/zui/gallery/app/SlideshowPage$SequentialSource;->mData:Ljava/util/ArrayList;

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/zui/gallery/data/MediaItem;

    :cond_5
    :goto_0
    return-object v2
.end method

.method public reload()J
    .locals 4

    .line 349
    iget-object v0, p0, Lcom/zui/gallery/app/SlideshowPage$SequentialSource;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->reload()J

    move-result-wide v0

    .line 350
    iget-wide v2, p0, Lcom/zui/gallery/app/SlideshowPage$SequentialSource;->mDataVersion:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 351
    iput-wide v0, p0, Lcom/zui/gallery/app/SlideshowPage$SequentialSource;->mDataVersion:J

    .line 352
    iget-object v0, p0, Lcom/zui/gallery/app/SlideshowPage$SequentialSource;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 354
    :cond_0
    iget-wide v0, p0, Lcom/zui/gallery/app/SlideshowPage$SequentialSource;->mDataVersion:J

    return-wide v0
.end method

.method public removeContentListener(Lcom/zui/gallery/data/ContentListener;)V
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/zui/gallery/app/SlideshowPage$SequentialSource;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/data/MediaSet;->removeContentListener(Lcom/zui/gallery/data/ContentListener;)V

    return-void
.end method
