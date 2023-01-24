.class Lcom/zui/gallery/app/SlideshowPage$ShuffleSource;
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
    name = "ShuffleSource"
.end annotation


# static fields
.field private static final RETRY_COUNT:I = 0x5


# instance fields
.field private mLastIndex:I

.field private final mMediaSet:Lcom/zui/gallery/data/MediaSet;

.field private mOrder:[I

.field private final mRandom:Ljava/util/Random;

.field private final mRepeat:Z

.field private mSourceVersion:J


# direct methods
.method public constructor <init>(Lcom/zui/gallery/data/MediaSet;Z)V
    .locals 2

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/app/SlideshowPage$ShuffleSource;->mRandom:Ljava/util/Random;

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 244
    iput-object v0, p0, Lcom/zui/gallery/app/SlideshowPage$ShuffleSource;->mOrder:[I

    const-wide/16 v0, -0x1

    .line 246
    iput-wide v0, p0, Lcom/zui/gallery/app/SlideshowPage$ShuffleSource;->mSourceVersion:J

    const/4 v0, -0x1

    .line 247
    iput v0, p0, Lcom/zui/gallery/app/SlideshowPage$ShuffleSource;->mLastIndex:I

    .line 250
    invoke-static {p1}, Lcom/zui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/data/MediaSet;

    iput-object p1, p0, Lcom/zui/gallery/app/SlideshowPage$ShuffleSource;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    .line 251
    iput-boolean p2, p0, Lcom/zui/gallery/app/SlideshowPage$ShuffleSource;->mRepeat:Z

    return-void
.end method

.method private generateOrderArray(I)V
    .locals 6

    .line 285
    iget-object v0, p0, Lcom/zui/gallery/app/SlideshowPage$ShuffleSource;->mOrder:[I

    array-length v0, v0

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    .line 286
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/zui/gallery/app/SlideshowPage$ShuffleSource;->mOrder:[I

    move v0, v1

    :goto_0
    if-ge v0, p1, :cond_0

    .line 288
    iget-object v2, p0, Lcom/zui/gallery/app/SlideshowPage$ShuffleSource;->mOrder:[I

    aput v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    move v2, v0

    :goto_1
    if-lez v2, :cond_1

    .line 292
    iget-object v3, p0, Lcom/zui/gallery/app/SlideshowPage$ShuffleSource;->mOrder:[I

    iget-object v4, p0, Lcom/zui/gallery/app/SlideshowPage$ShuffleSource;->mRandom:Ljava/util/Random;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-static {v3, v2, v4}, Lcom/zui/gallery/common/Utils;->swap([III)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 294
    :cond_1
    iget-object v2, p0, Lcom/zui/gallery/app/SlideshowPage$ShuffleSource;->mOrder:[I

    aget v3, v2, v1

    iget v4, p0, Lcom/zui/gallery/app/SlideshowPage$ShuffleSource;->mLastIndex:I

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    if-le p1, v3, :cond_2

    .line 295
    iget-object p1, p0, Lcom/zui/gallery/app/SlideshowPage$ShuffleSource;->mRandom:Ljava/util/Random;

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/2addr p1, v3

    invoke-static {v2, v1, p1}, Lcom/zui/gallery/common/Utils;->swap([III)V

    :cond_2
    return-void
.end method


# virtual methods
.method public addContentListener(Lcom/zui/gallery/data/ContentListener;)V
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/zui/gallery/app/SlideshowPage$ShuffleSource;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/data/MediaSet;->addContentListener(Lcom/zui/gallery/data/ContentListener;)V

    return-void
.end method

.method public findItemIndex(Lcom/zui/gallery/data/Path;I)I
    .locals 0

    return p2
.end method

.method public getMediaItem(I)Lcom/zui/gallery/data/MediaItem;
    .locals 3

    .line 261
    iget-boolean v0, p0, Lcom/zui/gallery/app/SlideshowPage$ShuffleSource;->mRepeat:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/app/SlideshowPage$ShuffleSource;->mOrder:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    return-object v1

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/SlideshowPage$ShuffleSource;->mOrder:[I

    array-length v2, v0

    if-nez v2, :cond_1

    return-object v1

    .line 263
    :cond_1
    array-length v1, v0

    rem-int/2addr p1, v1

    aget p1, v0, p1

    iput p1, p0, Lcom/zui/gallery/app/SlideshowPage$ShuffleSource;->mLastIndex:I

    .line 264
    iget-object v0, p0, Lcom/zui/gallery/app/SlideshowPage$ShuffleSource;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-static {v0, p1}, Lcom/zui/gallery/app/SlideshowPage;->access$500(Lcom/zui/gallery/data/MediaSet;I)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    if-nez p1, :cond_2

    .line 266
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail to find image: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/gallery/app/SlideshowPage$ShuffleSource;->mLastIndex:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SlideshowPage"

    invoke-static {v1, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object p1, p0, Lcom/zui/gallery/app/SlideshowPage$ShuffleSource;->mRandom:Ljava/util/Random;

    iget-object v1, p0, Lcom/zui/gallery/app/SlideshowPage$ShuffleSource;->mOrder:[I

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/app/SlideshowPage$ShuffleSource;->mLastIndex:I

    .line 268
    iget-object v1, p0, Lcom/zui/gallery/app/SlideshowPage$ShuffleSource;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-static {v1, p1}, Lcom/zui/gallery/app/SlideshowPage;->access$500(Lcom/zui/gallery/data/MediaSet;I)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public reload()J
    .locals 4

    .line 275
    iget-object v0, p0, Lcom/zui/gallery/app/SlideshowPage$ShuffleSource;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->reload()J

    move-result-wide v0

    .line 276
    iget-wide v2, p0, Lcom/zui/gallery/app/SlideshowPage$ShuffleSource;->mSourceVersion:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 277
    iput-wide v0, p0, Lcom/zui/gallery/app/SlideshowPage$ShuffleSource;->mSourceVersion:J

    .line 278
    iget-object v2, p0, Lcom/zui/gallery/app/SlideshowPage$ShuffleSource;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v2}, Lcom/zui/gallery/data/MediaSet;->getTotalMediaItemCount()I

    move-result v2

    .line 279
    iget-object v3, p0, Lcom/zui/gallery/app/SlideshowPage$ShuffleSource;->mOrder:[I

    array-length v3, v3

    if-eq v2, v3, :cond_0

    invoke-direct {p0, v2}, Lcom/zui/gallery/app/SlideshowPage$ShuffleSource;->generateOrderArray(I)V

    :cond_0
    return-wide v0
.end method

.method public removeContentListener(Lcom/zui/gallery/data/ContentListener;)V
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/zui/gallery/app/SlideshowPage$ShuffleSource;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/data/MediaSet;->removeContentListener(Lcom/zui/gallery/data/ContentListener;)V

    return-void
.end method
