.class public Lcom/zui/gallery/ui/SelectionManager;
.super Ljava/lang/Object;
.source "SelectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/ui/SelectionManager$SelectionListener;
    }
.end annotation


# static fields
.field public static final ENTER_SELECTION_MODE:I = 0x1

.field public static final LEAVE_SELECTION_MODE:I = 0x2

.field public static final RE_ENTER_SELECTION_MODE:I = 0x4

.field public static final SELECT_ALL_MODE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SelectionManager"


# instance fields
.field private cloudId:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private continueFolderId:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private folderId:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private imageId:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoLeave:Z

.field private mClickedSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/zui/gallery/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private mDataManager:Lcom/zui/gallery/data/DataManager;

.field private mInSelectionMode:Z

.field private mInverseSelection:Z

.field private mIsAlbumSet:Z

.field private mListener:Lcom/zui/gallery/ui/SelectionManager$SelectionListener;

.field private mSourceMediaSet:Lcom/zui/gallery/data/MediaSet;

.field private mTotal:I

.field private motoContinueFolderId:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private videoId:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private virtualFolderId:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Z)V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/zui/gallery/ui/SelectionManager;->mAutoLeave:Z

    .line 88
    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/ui/SelectionManager;->mDataManager:Lcom/zui/gallery/data/DataManager;

    .line 90
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    .line 92
    iput-boolean p2, p0, Lcom/zui/gallery/ui/SelectionManager;->mIsAlbumSet:Z

    const/4 p1, -0x1

    .line 93
    iput p1, p0, Lcom/zui/gallery/ui/SelectionManager;->mTotal:I

    .line 95
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/ui/SelectionManager;->imageId:Ljava/util/Set;

    .line 96
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/ui/SelectionManager;->videoId:Ljava/util/Set;

    .line 97
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/ui/SelectionManager;->cloudId:Ljava/util/Set;

    .line 98
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/ui/SelectionManager;->continueFolderId:Ljava/util/Set;

    .line 99
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/ui/SelectionManager;->motoContinueFolderId:Ljava/util/Set;

    .line 100
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/ui/SelectionManager;->folderId:Ljava/util/Set;

    .line 101
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/ui/SelectionManager;->virtualFolderId:Ljava/util/Set;

    return-void
.end method

.method private static expandMediaSet(Ljava/util/ArrayList;Lcom/zui/gallery/data/MediaSet;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/Path;",
            ">;",
            "Lcom/zui/gallery/data/MediaSet;",
            "I)Z"
        }
    .end annotation

    .line 403
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaSet;->getSubMediaSetCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 405
    invoke-virtual {p1, v2}, Lcom/zui/gallery/data/MediaSet;->getSubMediaSet(I)Lcom/zui/gallery/data/MediaSet;

    move-result-object v3

    invoke-static {p0, v3, p2}, Lcom/zui/gallery/ui/SelectionManager;->expandMediaSet(Ljava/util/ArrayList;Lcom/zui/gallery/data/MediaSet;I)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 409
    :cond_1
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaSet;->getMediaItemCount()I

    move-result v0

    const/16 v2, 0x32

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_5

    add-int/lit8 v4, v3, 0x32

    if-ge v4, v0, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    sub-int v5, v0, v3

    .line 417
    :goto_2
    invoke-virtual {p1, v3, v5}, Lcom/zui/gallery/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 419
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int v6, p2, v6

    if-le v5, v6, :cond_3

    return v1

    .line 422
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/gallery/data/MediaItem;

    .line 423
    invoke-virtual {v5}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    move v3, v4

    goto :goto_1

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method private getTotalCount()I
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->mSourceMediaSet:Lcom/zui/gallery/data/MediaSet;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 204
    :cond_0
    iget v1, p0, Lcom/zui/gallery/ui/SelectionManager;->mTotal:I

    if-gez v1, :cond_2

    .line 205
    iget-boolean v1, p0, Lcom/zui/gallery/ui/SelectionManager;->mIsAlbumSet:Z

    if-eqz v1, :cond_1

    .line 206
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getSubMediaSetCount()I

    move-result v0

    goto :goto_0

    .line 207
    :cond_1
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getMediaItemCount()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/zui/gallery/ui/SelectionManager;->mTotal:I

    if-lez v0, :cond_2

    .line 211
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->mSourceMediaSet:Lcom/zui/gallery/data/MediaSet;

    instance-of v1, v0, Lcom/zui/gallery/data/LocalAlbumSet;

    if-eqz v1, :cond_2

    .line 212
    check-cast v0, Lcom/zui/gallery/data/LocalAlbumSet;

    .line 213
    invoke-virtual {v0}, Lcom/zui/gallery/data/LocalAlbumSet;->getSystemAlbumCount()I

    move-result v0

    .line 214
    iget v1, p0, Lcom/zui/gallery/ui/SelectionManager;->mTotal:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/zui/gallery/ui/SelectionManager;->mTotal:I

    add-int/lit8 v1, v1, -0x1

    .line 216
    iput v1, p0, Lcom/zui/gallery/ui/SelectionManager;->mTotal:I

    .line 221
    :cond_2
    iget v0, p0, Lcom/zui/gallery/ui/SelectionManager;->mTotal:I

    return v0
.end method


# virtual methods
.method public deSelectAll()V
    .locals 1

    .line 131
    invoke-virtual {p0}, Lcom/zui/gallery/ui/SelectionManager;->leaveSelectionMode()V

    const/4 v0, 0x0

    .line 132
    iput-boolean v0, p0, Lcom/zui/gallery/ui/SelectionManager;->mInverseSelection:Z

    .line 133
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public enterSelectionMode()V
    .locals 2

    .line 145
    iget-boolean v0, p0, Lcom/zui/gallery/ui/SelectionManager;->mInSelectionMode:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 147
    iput-boolean v0, p0, Lcom/zui/gallery/ui/SelectionManager;->mInSelectionMode:Z

    .line 148
    iget-object v1, p0, Lcom/zui/gallery/ui/SelectionManager;->mListener:Lcom/zui/gallery/ui/SelectionManager$SelectionListener;

    if-eqz v1, :cond_1

    .line 149
    invoke-interface {v1, v0}, Lcom/zui/gallery/ui/SelectionManager$SelectionListener;->onSelectionModeChange(I)V

    :cond_1
    return-void
.end method

.method public getContinuesFolderCount()I
    .locals 2

    .line 600
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->mSourceMediaSet:Lcom/zui/gallery/data/MediaSet;

    instance-of v1, v0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;

    if-eqz v1, :cond_0

    .line 601
    check-cast v0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;

    invoke-virtual {v0}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->getContinueFolderCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentAlubmId()I
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->mSourceMediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getBucketId()I

    move-result v0

    return v0
.end method

.method public getFolderCount(Z)I
    .locals 2

    .line 667
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->mSourceMediaSet:Lcom/zui/gallery/data/MediaSet;

    instance-of v1, v0, Lcom/zui/gallery/data/LocalAlbumSet;

    if-eqz v1, :cond_0

    .line 668
    check-cast v0, Lcom/zui/gallery/data/LocalAlbumSet;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/data/LocalAlbumSet;->getFolderCount(Z)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getGroupAlbumId()I
    .locals 2

    .line 728
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->mSourceMediaSet:Lcom/zui/gallery/data/MediaSet;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/zui/gallery/data/LocalGroupAlbum;

    if-eqz v1, :cond_0

    .line 729
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getBucketId()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getImageItemCount()I
    .locals 1

    .line 582
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->mSourceMediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getImageItemCount()I

    move-result v0

    return v0
.end method

.method public getSelectAlbumIds()Ljava/lang/String;
    .locals 1

    .line 569
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->videoId:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectCloudImageItemCount()I
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->cloudId:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public getSelectContinuesFolderCount()I
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->continueFolderId:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public getSelectContinuesFolderImageCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSelectImageItemCount()I
    .locals 2

    .line 612
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->imageId:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p0, Lcom/zui/gallery/ui/SelectionManager;->cloudId:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getSelectItemIds()Ljava/lang/String;
    .locals 1

    .line 565
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->imageId:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectVideoItemCount()I
    .locals 1

    .line 621
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->videoId:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public getSelected(Z)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/Path;",
            ">;"
        }
    .end annotation

    const v0, 0x7fffffff

    .line 431
    invoke-virtual {p0, p1, v0}, Lcom/zui/gallery/ui/SelectionManager;->getSelected(ZI)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getSelected(ZI)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/Path;",
            ">;"
        }
    .end annotation

    .line 435
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 436
    iget-boolean v1, p0, Lcom/zui/gallery/ui/SelectionManager;->mIsAlbumSet:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_8

    .line 437
    iget-boolean v1, p0, Lcom/zui/gallery/ui/SelectionManager;->mInverseSelection:Z

    if-eqz v1, :cond_5

    .line 439
    invoke-direct {p0}, Lcom/zui/gallery/ui/SelectionManager;->getTotalCount()I

    move-result v1

    .line 443
    iget-object v4, p0, Lcom/zui/gallery/ui/SelectionManager;->mSourceMediaSet:Lcom/zui/gallery/data/MediaSet;

    instance-of v5, v4, Lcom/zui/gallery/data/LocalAlbumSet;

    if-eqz v5, :cond_0

    .line 445
    check-cast v4, Lcom/zui/gallery/data/LocalAlbumSet;

    .line 446
    invoke-virtual {v4}, Lcom/zui/gallery/data/LocalAlbumSet;->getSystemAlbumCount()I

    move-result v2

    .line 447
    iget-object v1, p0, Lcom/zui/gallery/ui/SelectionManager;->mSourceMediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v1}, Lcom/zui/gallery/data/MediaSet;->getSubMediaSetCount()I

    move-result v1

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_11

    .line 452
    iget-object v4, p0, Lcom/zui/gallery/ui/SelectionManager;->mSourceMediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v4, v2}, Lcom/zui/gallery/data/MediaSet;->getSubMediaSet(I)Lcom/zui/gallery/data/MediaSet;

    move-result-object v4

    if-eqz v5, :cond_1

    .line 455
    invoke-virtual {v4}, Lcom/zui/gallery/data/MediaSet;->isCameraRoll()Z

    move-result v6

    if-nez v6, :cond_4

    .line 456
    :cond_1
    invoke-virtual {v4}, Lcom/zui/gallery/data/MediaSet;->isFavoriteAlbum()Z

    move-result v6

    if-nez v6, :cond_4

    .line 457
    invoke-virtual {v4}, Lcom/zui/gallery/data/MediaSet;->getSystemId()I

    move-result v6

    const/16 v7, 0x9

    if-eq v6, v7, :cond_4

    .line 458
    invoke-virtual {v4}, Lcom/zui/gallery/data/MediaSet;->getSystemId()I

    move-result v6

    const/4 v7, 0x5

    if-eq v6, v7, :cond_4

    .line 459
    invoke-virtual {v4}, Lcom/zui/gallery/data/MediaSet;->getSystemId()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_4

    .line 460
    invoke-virtual {v4}, Lcom/zui/gallery/data/MediaSet;->getSystemId()I

    move-result v6

    const/4 v7, 0x7

    if-ne v6, v7, :cond_2

    goto :goto_1

    .line 465
    :cond_2
    invoke-virtual {v4}, Lcom/zui/gallery/data/MediaSet;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v6

    .line 466
    iget-object v7, p0, Lcom/zui/gallery/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    if-eqz p1, :cond_3

    .line 468
    invoke-static {v0, v4, p2}, Lcom/zui/gallery/ui/SelectionManager;->expandMediaSet(Ljava/util/ArrayList;Lcom/zui/gallery/data/MediaSet;I)Z

    move-result v4

    if-nez v4, :cond_4

    return-object v3

    .line 472
    :cond_3
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, p2, :cond_4

    return-object v3

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 480
    :cond_5
    iget-object v1, p0, Lcom/zui/gallery/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/data/Path;

    if-eqz p1, :cond_7

    .line 482
    iget-object v4, p0, Lcom/zui/gallery/ui/SelectionManager;->mDataManager:Lcom/zui/gallery/data/DataManager;

    invoke-virtual {v4, v2}, Lcom/zui/gallery/data/DataManager;->getMediaSet(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v2

    invoke-static {v0, v2, p2}, Lcom/zui/gallery/ui/SelectionManager;->expandMediaSet(Ljava/util/ArrayList;Lcom/zui/gallery/data/MediaSet;I)Z

    move-result v2

    if-nez v2, :cond_6

    return-object v3

    .line 487
    :cond_7
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p2, :cond_6

    return-object v3

    .line 495
    :cond_8
    iget-boolean p1, p0, Lcom/zui/gallery/ui/SelectionManager;->mInverseSelection:Z

    if-eqz p1, :cond_f

    .line 496
    invoke-direct {p0}, Lcom/zui/gallery/ui/SelectionManager;->getTotalCount()I

    move-result p1

    .line 498
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_9

    return-object v3

    :cond_9
    :goto_2
    if-ge v2, p1, :cond_11

    sub-int v1, p1, v2

    const/16 v4, 0x1f4

    .line 502
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 509
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-eqz v4, :cond_a

    return-object v3

    .line 512
    :cond_a
    iget-object v4, p0, Lcom/zui/gallery/ui/SelectionManager;->mSourceMediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v4, v2, v1}, Lcom/zui/gallery/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v4

    .line 514
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 515
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-object v0

    .line 518
    :cond_b
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/gallery/data/MediaItem;

    .line 519
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 520
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-object v0

    :cond_d
    if-eqz v5, :cond_c

    .line 524
    invoke-virtual {v5}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v5

    .line 525
    iget-object v6, p0, Lcom/zui/gallery/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 526
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, p2, :cond_c

    return-object v3

    :cond_e
    add-int/2addr v2, v1

    goto :goto_2

    .line 538
    :cond_f
    iget-object p1, p0, Lcom/zui/gallery/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/data/Path;

    .line 539
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p2, :cond_10

    return-object v3

    :cond_11
    return-object v0
.end method

.method public getSelectedCount()I
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 226
    iget-boolean v1, p0, Lcom/zui/gallery/ui/SelectionManager;->mInverseSelection:Z

    if-eqz v1, :cond_0

    .line 227
    invoke-direct {p0}, Lcom/zui/gallery/ui/SelectionManager;->getTotalCount()I

    move-result v1

    sub-int v0, v1, v0

    :cond_0
    return v0
.end method

.method public getSeleteFolderCount()I
    .locals 1

    .line 691
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->folderId:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public getSeleteVirtualFolderCount()I
    .locals 1

    .line 700
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->virtualFolderId:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public getSourceMediaSet()Lcom/zui/gallery/data/MediaSet;
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->mSourceMediaSet:Lcom/zui/gallery/data/MediaSet;

    return-object v0
.end method

.method public getSourceType()I
    .locals 3

    .line 769
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->mSourceMediaSet:Lcom/zui/gallery/data/MediaSet;

    if-eqz v0, :cond_1

    .line 770
    iget-object v0, v0, Lcom/zui/gallery/data/MediaSet;->mPath:Lcom/zui/gallery/data/Path;

    .line 771
    invoke-virtual {v0}, Lcom/zui/gallery/data/Path;->split()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 772
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 773
    iget-object v1, p0, Lcom/zui/gallery/ui/SelectionManager;->mSourceMediaSet:Lcom/zui/gallery/data/MediaSet;

    instance-of v1, v1, Lcom/zui/gallery/data/LocalMergeAllAlbum;

    if-eqz v1, :cond_0

    .line 774
    array-length v1, v0

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/zui/gallery/data/MediaObject;->getTypeFromString(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 776
    :cond_0
    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/zui/gallery/data/MediaObject;->getTypeFromString(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    :goto_0
    return v0
.end method

.method public getVideoCount()I
    .locals 1

    .line 591
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->mSourceMediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getVideoItemCount()I

    move-result v0

    return v0
.end method

.method public getVirtualFolderCount()I
    .locals 2

    .line 679
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->mSourceMediaSet:Lcom/zui/gallery/data/MediaSet;

    instance-of v1, v0, Lcom/zui/gallery/data/LocalAlbumSet;

    if-eqz v1, :cond_0

    .line 680
    check-cast v0, Lcom/zui/gallery/data/LocalAlbumSet;

    invoke-virtual {v0}, Lcom/zui/gallery/data/LocalAlbumSet;->getVirtualFolderCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public inSelectAllMode()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/zui/gallery/ui/SelectionManager;->mInverseSelection:Z

    return v0
.end method

.method public inSelectionMode()Z
    .locals 1

    .line 141
    iget-boolean v0, p0, Lcom/zui/gallery/ui/SelectionManager;->mInSelectionMode:Z

    return v0
.end method

.method public isAlbumSet()Z
    .locals 2

    .line 709
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->mSourceMediaSet:Lcom/zui/gallery/data/MediaSet;

    instance-of v1, v0, Lcom/zui/gallery/data/LocalAlbumSet;

    if-nez v1, :cond_1

    instance-of v0, v0, Lcom/zui/gallery/data/LocalAlbumSetMore;

    if-eqz v0, :cond_0

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

.method public isAlbumSetAll()Z
    .locals 2

    .line 748
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->mSourceMediaSet:Lcom/zui/gallery/data/MediaSet;

    instance-of v1, v0, Lcom/zui/gallery/data/LocalAlbumSet;

    if-eqz v1, :cond_0

    .line 749
    check-cast v0, Lcom/zui/gallery/data/LocalAlbumSet;

    invoke-virtual {v0}, Lcom/zui/gallery/data/LocalAlbumSet;->isAlbumAll()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCameraAlbum()Z
    .locals 1

    .line 758
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->mSourceMediaSet:Lcom/zui/gallery/data/MediaSet;

    if-eqz v0, :cond_0

    .line 759
    instance-of v0, v0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isItemSelected(Lcom/zui/gallery/data/Path;)Z
    .locals 2

    .line 188
    iget-boolean v0, p0, Lcom/zui/gallery/ui/SelectionManager;->mInverseSelection:Z

    iget-object v1, p0, Lcom/zui/gallery/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v0

    return p1
.end method

.method public isLocalGroupAlbum()Z
    .locals 2

    .line 719
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->mSourceMediaSet:Lcom/zui/gallery/data/MediaSet;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/zui/gallery/data/LocalGroupAlbum;

    if-eqz v1, :cond_0

    .line 720
    check-cast v0, Lcom/zui/gallery/data/LocalGroupAlbum;

    .line 721
    invoke-virtual {v0}, Lcom/zui/gallery/data/LocalGroupAlbum;->isSystemGroupAlbum()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSelectAll()Z
    .locals 2

    .line 559
    invoke-virtual {p0}, Lcom/zui/gallery/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    .line 560
    invoke-direct {p0}, Lcom/zui/gallery/ui/SelectionManager;->getTotalCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVirtualAlbum()Z
    .locals 1

    .line 741
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->mSourceMediaSet:Lcom/zui/gallery/data/MediaSet;

    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/zui/gallery/data/LocalGroupAlbum;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWeixinVideoAlbum()Z
    .locals 3

    .line 785
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->mSourceMediaSet:Lcom/zui/gallery/data/MediaSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 786
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getBucketId()I

    move-result v0

    sget v2, Lcom/zui/gallery/util/MediaSetUtils;->WEIXIN_VIDEO_ID:I

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public leaveSelectionMode()V
    .locals 2

    .line 169
    iget-boolean v0, p0, Lcom/zui/gallery/ui/SelectionManager;->mInSelectionMode:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 172
    iput-boolean v0, p0, Lcom/zui/gallery/ui/SelectionManager;->mInSelectionMode:Z

    .line 173
    iput-boolean v0, p0, Lcom/zui/gallery/ui/SelectionManager;->mInverseSelection:Z

    .line 174
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 175
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->imageId:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 176
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->videoId:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 177
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->cloudId:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 178
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->continueFolderId:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 179
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->motoContinueFolderId:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 180
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->folderId:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 181
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->virtualFolderId:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, -0x1

    .line 182
    iput v0, p0, Lcom/zui/gallery/ui/SelectionManager;->mTotal:I

    .line 183
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->mListener:Lcom/zui/gallery/ui/SelectionManager$SelectionListener;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 184
    invoke-interface {v0, v1}, Lcom/zui/gallery/ui/SelectionManager$SelectionListener;->onSelectionModeChange(I)V

    :cond_1
    return-void
.end method

.method public reEnterSelectionMode()V
    .locals 2

    const/4 v0, 0x1

    .line 154
    iput-boolean v0, p0, Lcom/zui/gallery/ui/SelectionManager;->mInSelectionMode:Z

    const/4 v0, 0x0

    .line 155
    iput-boolean v0, p0, Lcom/zui/gallery/ui/SelectionManager;->mInverseSelection:Z

    .line 156
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 157
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->imageId:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 158
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->videoId:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 159
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->cloudId:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 160
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->continueFolderId:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 161
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->motoContinueFolderId:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 162
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->folderId:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 163
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->virtualFolderId:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 164
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->mListener:Lcom/zui/gallery/ui/SelectionManager$SelectionListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 165
    invoke-interface {v0, v1}, Lcom/zui/gallery/ui/SelectionManager$SelectionListener;->onSelectionModeChange(I)V

    :cond_0
    return-void
.end method

.method public resetTotalCount()V
    .locals 1

    const/4 v0, -0x1

    .line 198
    iput v0, p0, Lcom/zui/gallery/ui/SelectionManager;->mTotal:I

    return-void
.end method

.method public selectAll()V
    .locals 2

    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lcom/zui/gallery/ui/SelectionManager;->mInverseSelection:Z

    .line 116
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 117
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->imageId:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 118
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->videoId:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 119
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->cloudId:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 120
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->continueFolderId:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 121
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->motoContinueFolderId:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 122
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->folderId:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 123
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->virtualFolderId:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, -0x1

    .line 124
    iput v0, p0, Lcom/zui/gallery/ui/SelectionManager;->mTotal:I

    .line 125
    invoke-virtual {p0}, Lcom/zui/gallery/ui/SelectionManager;->enterSelectionMode()V

    .line 126
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->mListener:Lcom/zui/gallery/ui/SelectionManager$SelectionListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 127
    invoke-interface {v0, v1}, Lcom/zui/gallery/ui/SelectionManager$SelectionListener;->onSelectionModeChange(I)V

    :cond_0
    return-void
.end method

.method public setAutoLeaveSelectionMode(Z)V
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/zui/gallery/ui/SelectionManager;->mAutoLeave:Z

    return-void
.end method

.method public setSelectionListener(Lcom/zui/gallery/ui/SelectionManager$SelectionListener;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/zui/gallery/ui/SelectionManager;->mListener:Lcom/zui/gallery/ui/SelectionManager$SelectionListener;

    return-void
.end method

.method public setSourceMediaSet(Lcom/zui/gallery/data/MediaSet;)V
    .locals 0

    .line 550
    iput-object p1, p0, Lcom/zui/gallery/ui/SelectionManager;->mSourceMediaSet:Lcom/zui/gallery/data/MediaSet;

    const/4 p1, -0x1

    .line 551
    iput p1, p0, Lcom/zui/gallery/ui/SelectionManager;->mTotal:I

    return-void
.end method

.method public toggle(Lcom/zui/gallery/data/Path;)V
    .locals 3

    const/4 v0, 0x0

    .line 233
    invoke-virtual {p0, p1, v0, v0}, Lcom/zui/gallery/ui/SelectionManager;->updateSelectIds(Lcom/zui/gallery/data/Path;ZZ)V

    .line 234
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 237
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/ui/SelectionManager;->enterSelectionMode()V

    .line 238
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 242
    :goto_0
    invoke-virtual {p0}, Lcom/zui/gallery/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---SelectionManager---selectCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " totalCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/zui/gallery/ui/SelectionManager;->getTotalCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SelectionManager"

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-direct {p0}, Lcom/zui/gallery/ui/SelectionManager;->getTotalCount()I

    move-result v1

    if-ne v0, v1, :cond_1

    if-lez v0, :cond_1

    .line 245
    invoke-virtual {p0}, Lcom/zui/gallery/ui/SelectionManager;->selectAll()V

    .line 248
    :cond_1
    iget-object v1, p0, Lcom/zui/gallery/ui/SelectionManager;->mListener:Lcom/zui/gallery/ui/SelectionManager$SelectionListener;

    if-eqz v1, :cond_2

    .line 249
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/SelectionManager;->isItemSelected(Lcom/zui/gallery/data/Path;)Z

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/zui/gallery/ui/SelectionManager$SelectionListener;->onSelectionChange(Lcom/zui/gallery/data/Path;Z)V

    :cond_2
    if-nez v0, :cond_3

    .line 250
    iget-boolean p1, p0, Lcom/zui/gallery/ui/SelectionManager;->mAutoLeave:Z

    if-eqz p1, :cond_3

    .line 251
    invoke-virtual {p0}, Lcom/zui/gallery/ui/SelectionManager;->leaveSelectionMode()V

    :cond_3
    return-void
.end method

.method public toggleAll(Ljava/util/Set;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/zui/gallery/data/Path;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 258
    iget-object p2, p0, Lcom/zui/gallery/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 260
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/gallery/data/Path;

    .line 261
    invoke-virtual {p0, p2, v1, v0}, Lcom/zui/gallery/ui/SelectionManager;->updateSelectIds(Lcom/zui/gallery/data/Path;ZZ)V

    goto :goto_0

    .line 264
    :cond_0
    iget-object p2, p0, Lcom/zui/gallery/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 265
    iget-object p2, p0, Lcom/zui/gallery/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 267
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/gallery/data/Path;

    .line 268
    invoke-virtual {p0, p2, v1, v0}, Lcom/zui/gallery/ui/SelectionManager;->updateSelectIds(Lcom/zui/gallery/data/Path;ZZ)V

    goto :goto_1

    .line 271
    :cond_1
    invoke-virtual {p0}, Lcom/zui/gallery/ui/SelectionManager;->enterSelectionMode()V

    .line 272
    iget-object p2, p0, Lcom/zui/gallery/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 274
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/gallery/data/Path;

    .line 275
    invoke-virtual {p0, p2, v0, v1}, Lcom/zui/gallery/ui/SelectionManager;->updateSelectIds(Lcom/zui/gallery/data/Path;ZZ)V

    goto :goto_2

    :cond_2
    move v0, v1

    .line 281
    :cond_3
    invoke-virtual {p0}, Lcom/zui/gallery/ui/SelectionManager;->getSelectedCount()I

    move-result p1

    .line 282
    invoke-direct {p0}, Lcom/zui/gallery/ui/SelectionManager;->getTotalCount()I

    move-result p2

    if-ne p1, p2, :cond_4

    .line 283
    invoke-virtual {p0}, Lcom/zui/gallery/ui/SelectionManager;->selectAll()V

    .line 286
    :cond_4
    iget-object p2, p0, Lcom/zui/gallery/ui/SelectionManager;->mListener:Lcom/zui/gallery/ui/SelectionManager$SelectionListener;

    if-eqz p2, :cond_5

    const/4 v2, 0x0

    .line 287
    invoke-interface {p2, v2, v1}, Lcom/zui/gallery/ui/SelectionManager$SelectionListener;->onSelectionChange(Lcom/zui/gallery/data/Path;Z)V

    :cond_5
    if-nez p1, :cond_6

    .line 288
    iget-boolean p1, p0, Lcom/zui/gallery/ui/SelectionManager;->mAutoLeave:Z

    if-eqz p1, :cond_6

    .line 289
    invoke-virtual {p0}, Lcom/zui/gallery/ui/SelectionManager;->leaveSelectionMode()V

    :cond_6
    return v0
.end method

.method public updateSelectIds(Lcom/zui/gallery/data/Path;ZZ)V
    .locals 2

    .line 295
    invoke-virtual {p1}, Lcom/zui/gallery/data/Path;->getObject()Lcom/zui/gallery/data/MediaObject;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 297
    instance-of v0, p1, Lcom/zui/gallery/data/MediaItem;

    if-eqz v0, :cond_f

    .line 298
    move-object v0, p1

    check-cast v0, Lcom/zui/gallery/data/MediaItem;

    .line 299
    instance-of v1, v0, Lcom/zui/gallery/data/LocalImage;

    if-eqz v1, :cond_7

    .line 300
    check-cast v0, Lcom/zui/gallery/data/LocalImage;

    iget-boolean p1, v0, Lcom/zui/gallery/data/LocalImage;->isContinuousCover:Z

    .line 302
    invoke-virtual {p0}, Lcom/zui/gallery/ui/SelectionManager;->isCameraAlbum()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    .line 320
    invoke-virtual {v0}, Lcom/zui/gallery/data/LocalImage;->getBucketId()I

    move-result p1

    if-eqz p2, :cond_0

    .line 322
    iget-object p2, p0, Lcom/zui/gallery/ui/SelectionManager;->continueFolderId:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 326
    iget-object p2, p0, Lcom/zui/gallery/ui/SelectionManager;->continueFolderId:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 329
    :cond_1
    iget-object p2, p0, Lcom/zui/gallery/ui/SelectionManager;->continueFolderId:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 330
    iget-object p2, p0, Lcom/zui/gallery/ui/SelectionManager;->continueFolderId:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 332
    :cond_2
    iget-object p2, p0, Lcom/zui/gallery/ui/SelectionManager;->continueFolderId:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 336
    :cond_3
    iget p1, v0, Lcom/zui/gallery/data/LocalImage;->id:I

    if-eqz p2, :cond_4

    .line 338
    iget-object p2, p0, Lcom/zui/gallery/ui/SelectionManager;->imageId:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_4
    if-eqz p3, :cond_5

    .line 342
    iget-object p2, p0, Lcom/zui/gallery/ui/SelectionManager;->imageId:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 345
    :cond_5
    iget-object p2, p0, Lcom/zui/gallery/ui/SelectionManager;->imageId:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 346
    iget-object p2, p0, Lcom/zui/gallery/ui/SelectionManager;->imageId:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 348
    :cond_6
    iget-object p2, p0, Lcom/zui/gallery/ui/SelectionManager;->imageId:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 351
    :cond_7
    instance-of v1, p1, Lcom/zui/gallery/data/CloudImage;

    if-eqz v1, :cond_b

    .line 352
    check-cast v0, Lcom/zui/gallery/data/CloudImage;

    invoke-virtual {v0}, Lcom/zui/gallery/data/CloudImage;->getId()I

    move-result p1

    if-eqz p2, :cond_8

    .line 354
    iget-object p2, p0, Lcom/zui/gallery/ui/SelectionManager;->cloudId:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_8
    if-eqz p3, :cond_9

    .line 358
    iget-object p2, p0, Lcom/zui/gallery/ui/SelectionManager;->cloudId:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 361
    :cond_9
    iget-object p2, p0, Lcom/zui/gallery/ui/SelectionManager;->cloudId:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 362
    iget-object p2, p0, Lcom/zui/gallery/ui/SelectionManager;->cloudId:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 364
    :cond_a
    iget-object p2, p0, Lcom/zui/gallery/ui/SelectionManager;->cloudId:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 366
    :cond_b
    instance-of v0, p1, Lcom/zui/gallery/data/LocalVideo;

    if-eqz v0, :cond_13

    .line 367
    check-cast p1, Lcom/zui/gallery/data/LocalVideo;

    iget p1, p1, Lcom/zui/gallery/data/LocalVideo;->id:I

    if-eqz p2, :cond_c

    .line 369
    iget-object p2, p0, Lcom/zui/gallery/ui/SelectionManager;->videoId:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_c
    if-eqz p3, :cond_d

    .line 373
    iget-object p2, p0, Lcom/zui/gallery/ui/SelectionManager;->videoId:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 376
    :cond_d
    iget-object p2, p0, Lcom/zui/gallery/ui/SelectionManager;->videoId:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 377
    iget-object p2, p0, Lcom/zui/gallery/ui/SelectionManager;->videoId:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 379
    :cond_e
    iget-object p2, p0, Lcom/zui/gallery/ui/SelectionManager;->videoId:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 383
    :cond_f
    instance-of p2, p1, Lcom/zui/gallery/data/LocalGroupAlbum;

    if-eqz p2, :cond_11

    .line 384
    check-cast p1, Lcom/zui/gallery/data/LocalGroupAlbum;

    invoke-virtual {p1}, Lcom/zui/gallery/data/LocalGroupAlbum;->getBucketId()I

    move-result p1

    .line 385
    iget-object p2, p0, Lcom/zui/gallery/ui/SelectionManager;->virtualFolderId:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 386
    iget-object p2, p0, Lcom/zui/gallery/ui/SelectionManager;->virtualFolderId:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 388
    :cond_10
    iget-object p2, p0, Lcom/zui/gallery/ui/SelectionManager;->virtualFolderId:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 390
    :cond_11
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaObject;->isMediaSet()Z

    move-result p2

    if-eqz p2, :cond_13

    .line 391
    check-cast p1, Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaSet;->getBucketId()I

    move-result p1

    .line 392
    iget-object p2, p0, Lcom/zui/gallery/ui/SelectionManager;->folderId:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 393
    iget-object p2, p0, Lcom/zui/gallery/ui/SelectionManager;->folderId:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 395
    :cond_12
    iget-object p2, p0, Lcom/zui/gallery/ui/SelectionManager;->folderId:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_13
    :goto_0
    return-void
.end method
