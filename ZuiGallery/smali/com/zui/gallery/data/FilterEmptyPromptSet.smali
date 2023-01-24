.class public Lcom/zui/gallery/data/FilterEmptyPromptSet;
.super Lcom/zui/gallery/data/MediaSet;
.source "FilterEmptyPromptSet.java"

# interfaces
.implements Lcom/zui/gallery/data/ContentListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "FilterEmptyPromptSet"


# instance fields
.field private mBaseSet:Lcom/zui/gallery/data/MediaSet;

.field private mEmptyItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/data/MediaSet;Lcom/zui/gallery/data/MediaItem;)V
    .locals 2

    const-wide/16 v0, -0x1

    .line 29
    invoke-direct {p0, p1, v0, v1}, Lcom/zui/gallery/data/MediaSet;-><init>(Lcom/zui/gallery/data/Path;J)V

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/zui/gallery/data/FilterEmptyPromptSet;->mEmptyItem:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    iput-object p2, p0, Lcom/zui/gallery/data/FilterEmptyPromptSet;->mBaseSet:Lcom/zui/gallery/data/MediaSet;

    .line 33
    invoke-virtual {p2, p0}, Lcom/zui/gallery/data/MediaSet;->addContentListener(Lcom/zui/gallery/data/ContentListener;)V

    return-void
.end method


# virtual methods
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

    .line 48
    iget-object v0, p0, Lcom/zui/gallery/data/FilterEmptyPromptSet;->mBaseSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getMediaItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/zui/gallery/data/FilterEmptyPromptSet;->mBaseSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 52
    iget-object p1, p0, Lcom/zui/gallery/data/FilterEmptyPromptSet;->mEmptyItem:Ljava/util/ArrayList;

    return-object p1

    .line 54
    :cond_1
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public getMediaItemCount()I
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/zui/gallery/data/FilterEmptyPromptSet;->mBaseSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getMediaItemCount()I

    move-result v0

    if-lez v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/zui/gallery/data/FilterEmptyPromptSet;->mBaseSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCameraRoll()Z
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/zui/gallery/data/FilterEmptyPromptSet;->mBaseSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->isCameraRoll()Z

    move-result v0

    return v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onContentDirty()V
    .locals 0

    .line 60
    invoke-virtual {p0}, Lcom/zui/gallery/data/FilterEmptyPromptSet;->notifyContentChanged()V

    return-void
.end method

.method public reload()J
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/zui/gallery/data/FilterEmptyPromptSet;->mBaseSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->reload()J

    move-result-wide v0

    return-wide v0
.end method
