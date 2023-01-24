.class public Lcom/zui/gallery/data/ChangeNotifier;
.super Ljava/lang/Object;
.source "ChangeNotifier.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ChangeNotifier"


# instance fields
.field private mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mMediaSet:Lcom/zui/gallery/data/MediaSet;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/data/MediaSet;Landroid/net/Uri;Lcom/zui/gallery/app/GalleryApp;)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/zui/gallery/data/ChangeNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    iput-object p1, p0, Lcom/zui/gallery/data/ChangeNotifier;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    .line 35
    invoke-interface {p3}, Lcom/zui/gallery/app/GalleryApp;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object p1

    invoke-virtual {p1, p2, p0}, Lcom/zui/gallery/data/DataManager;->registerChangeNotifier(Landroid/net/Uri;Lcom/zui/gallery/data/ChangeNotifier;)V

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/data/MediaSet;[Landroid/net/Uri;Lcom/zui/gallery/app/GalleryApp;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/zui/gallery/data/ChangeNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    iput-object p1, p0, Lcom/zui/gallery/data/ChangeNotifier;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    const/4 p1, 0x0

    .line 40
    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_0

    .line 41
    invoke-interface {p3}, Lcom/zui/gallery/app/GalleryApp;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v0

    aget-object v1, p2, p1

    invoke-virtual {v0, v1, p0}, Lcom/zui/gallery/data/DataManager;->registerChangeNotifier(Landroid/net/Uri;Lcom/zui/gallery/data/ChangeNotifier;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public fakeChange()V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p0, v0}, Lcom/zui/gallery/data/ChangeNotifier;->onChange(Z)V

    return-void
.end method

.method public isDirty()Z
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/zui/gallery/data/ChangeNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    return v0
.end method

.method protected onChange(Z)V
    .locals 2

    .line 55
    iget-object p1, p0, Lcom/zui/gallery/data/ChangeNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 56
    iget-object p1, p0, Lcom/zui/gallery/data/ChangeNotifier;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaSet;->notifyContentChanged()V

    :cond_0
    return-void
.end method
