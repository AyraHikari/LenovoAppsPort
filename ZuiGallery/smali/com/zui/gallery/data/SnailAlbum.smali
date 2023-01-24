.class public Lcom/zui/gallery/data/SnailAlbum;
.super Lcom/zui/gallery/data/SingleItemAlbum;
.source "SnailAlbum.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SnailAlbum"


# instance fields
.field private mDirty:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/data/SnailItem;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/data/SingleItemAlbum;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/data/MediaItem;)V

    .line 25
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/zui/gallery/data/SnailAlbum;->mDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public notifyChange()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/zui/gallery/data/SnailAlbum;->mDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 42
    invoke-virtual {p0}, Lcom/zui/gallery/data/SnailAlbum;->notifyContentChanged()V

    return-void
.end method

.method public reload()J
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/zui/gallery/data/SnailAlbum;->mDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/zui/gallery/data/SnailAlbum;->getItem()Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/data/SnailItem;

    invoke-virtual {v0}, Lcom/zui/gallery/data/SnailItem;->updateVersion()V

    .line 35
    invoke-static {}, Lcom/zui/gallery/data/SnailAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/data/SnailAlbum;->mDataVersion:J

    .line 37
    :cond_0
    iget-wide v0, p0, Lcom/zui/gallery/data/SnailAlbum;->mDataVersion:J

    return-wide v0
.end method
