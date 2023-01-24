.class public Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "LenovoTrashRecyclerListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LenovoTrashRecyclerListAdapter"

.field private static final TYPE_CONTINUOUS_TRASH_FOLDER:I = 0x1

.field private static final TYPE_NORMAL_TRASH_ITEM:I


# instance fields
.field actionModeSelectAll:Z

.field actionModeSelectContinuousFolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/gallery/trash/TrashContinusFolder;",
            ">;"
        }
    .end annotation
.end field

.field actionModeSelectPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/gallery/trash/TrashItem;",
            ">;"
        }
    .end annotation
.end field

.field private deduplicationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/gallery/trash/TrashItem;",
            ">;"
        }
    .end annotation
.end field

.field private loadTrashItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/trash/TrashItem;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mContinousFolder:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/zui/gallery/trash/TrashContinusFolder;",
            ">;"
        }
    .end annotation
.end field

.field mLenovoTrashListFragment:Lcom/zui/gallery/trash/LenovoTrashListFragment;

.field mMeidaFilePathSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/gallery/trash/TrashItem;",
            ">;"
        }
    .end annotation
.end field

.field oldCloudTrashList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/gallery/trash/CloudTrashItem;",
            ">;"
        }
    .end annotation
.end field

.field statusInActionMode:Z


# direct methods
.method public constructor <init>(Lcom/zui/gallery/trash/LenovoTrashListFragment;)V
    .locals 1

    .line 86
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->mMeidaFilePathSet:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->mContinousFolder:Ljava/util/Map;

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->statusInActionMode:Z

    .line 64
    iput-boolean v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->actionModeSelectAll:Z

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->oldCloudTrashList:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->loadTrashItem:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->deduplicationList:Ljava/util/List;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->actionModeSelectPaths:Ljava/util/List;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->actionModeSelectContinuousFolders:Ljava/util/List;

    .line 87
    invoke-virtual {p1}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->mContext:Landroid/content/Context;

    .line 88
    iput-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->mLenovoTrashListFragment:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->informSelectedPhotoCount()V

    return-void
.end method

.method static synthetic access$100(Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;Landroid/view/View;Landroid/widget/RelativeLayout;Z)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->pressUpdate(Landroid/view/View;Landroid/widget/RelativeLayout;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->loadTrashItem:Ljava/util/ArrayList;

    return-object p0
.end method

.method private informSelectedPhotoCount()V
    .locals 3

    .line 694
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->mLenovoTrashListFragment:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->actionModeSelectPaths:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->mMeidaFilePathSet:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->informSelectedPhotoCount(II)V

    return-void
.end method

.method private isHDRVideo(Ljava/lang/String;)Z
    .locals 11

    const-string v0, "VID_"

    const-string v1, "ZuiGalleryGroup/"

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    const-string v4, ""

    const-string v5, "/DCIM/Camera"

    .line 718
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    const-string v5, "-VID_"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v6, :cond_0

    const-string v5, "ZuiGalleryGroup"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".trashed-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "VID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 720
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v6, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v6, :cond_1

    .line 721
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 722
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 724
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/zui/gallery/database/GalleryContract$ShadowVideoShips;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/zui/gallery/database/GalleryContract$ShadowVideoShips;->PROJECTIONS:[Ljava/lang/String;

    const-string v8, "_data=? "

    const/4 p1, 0x1

    new-array v9, p1, [Ljava/lang/String;

    aput-object v4, v9, v2

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 729
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    .line 730
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    if-eqz v3, :cond_2

    .line 740
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    return p1

    :cond_3
    if-eqz v3, :cond_4

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 736
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "LenovoTrashRecyclerListAdapter"

    .line 737
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isHdrVideo: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_4

    .line 740
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    return v2

    :goto_2
    if-eqz v3, :cond_5

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 742
    :cond_5
    throw p1
.end method

.method private pressUpdate(Landroid/view/View;Landroid/widget/RelativeLayout;Z)V
    .locals 4

    .line 503
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f050212

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 504
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 505
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060377

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/4 v2, 0x0

    .line 506
    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-nez p3, :cond_0

    const/4 p3, -0x1

    .line 508
    iput p3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/16 p3, 0x8

    .line 509
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 511
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 512
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public clearCloudItem()V
    .locals 2

    const-string v0, "LenovoTrashRecyclerListAdapter"

    const-string v1, " clearCloudItem"

    .line 146
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->mMeidaFilePathSet:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 148
    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->oldCloudTrashList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 149
    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->notifyDataSetChanged()V

    :cond_1
    const/4 v0, 0x0

    .line 153
    iput-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->oldCloudTrashList:Ljava/util/List;

    return-void
.end method

.method public deleteCloudItems(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " deleteCloudItems cloudsize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->mMeidaFilePathSet:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LenovoTrashRecyclerListAdapter"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 94
    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->mMeidaFilePathSet:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 95
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->notifyItemRemoved(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public deselectAllItems()V
    .locals 1

    const/4 v0, 0x0

    .line 698
    iput-boolean v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->actionModeSelectAll:Z

    .line 699
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->actionModeSelectPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 701
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->informSelectedPhotoCount()V

    .line 702
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public destoryActionMode()V
    .locals 1

    const/4 v0, 0x0

    .line 706
    iput-boolean v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->statusInActionMode:Z

    .line 707
    iput-boolean v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->actionModeSelectAll:Z

    .line 708
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->actionModeSelectPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 710
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->informSelectedPhotoCount()V

    .line 711
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getActionModeSelectPaths()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zui/gallery/trash/TrashItem;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->actionModeSelectPaths:Ljava/util/List;

    return-object v0
.end method

.method public getActionModeSelectedContinuousFolders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zui/gallery/trash/TrashContinusFolder;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->actionModeSelectContinuousFolders:Ljava/util/List;

    return-object v0
.end method

.method public getDeduplicationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zui/gallery/trash/TrashItem;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->deduplicationList:Ljava/util/List;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 665
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->mMeidaFilePathSet:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 668
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method isGifImage(Ljava/lang/String;)Z
    .locals 1

    const-string v0, ".gif"

    .line 521
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".GIF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method isImage(Ljava/lang/String;)Z
    .locals 9

    const-string v0, ".jpg"

    .line 536
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ".jpeg"

    .line 537
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ".png"

    .line 538
    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ".dng"

    .line 539
    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, ".bmp"

    .line 540
    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, ".webp"

    .line 541
    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, ".svg"

    .line 542
    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, ".avif"

    .line 543
    invoke-virtual {p1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 545
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 546
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 547
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 548
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 549
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 550
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 551
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 552
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 553
    invoke-virtual {p0, p1}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->isGifImage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public notFyChanged()V
    .locals 0

    .line 747
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 13

    .line 220
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->mMeidaFilePathSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p2, :cond_0

    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->mMeidaFilePathSet:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/trash/TrashItem;

    .line 225
    invoke-virtual {v0, p2}, Lcom/zui/gallery/trash/TrashItem;->setPosition(I)V

    .line 226
    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->mMeidaFilePathSet:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/trash/TrashItem;

    invoke-virtual {v1}, Lcom/zui/gallery/trash/TrashItem;->getOld_full_path()Ljava/lang/String;

    move-result-object v1

    .line 228
    move-object v2, p1

    check-cast v2, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;

    iget v3, v2, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->mItemW:I

    .line 229
    invoke-virtual {v0}, Lcom/zui/gallery/trash/TrashItem;->isCloudyItem()Z

    move-result v4

    const v5, 0x7f100294

    const v6, 0x7f100295

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x8

    if-eqz v4, :cond_3

    .line 230
    sget-object v1, Lcom/zui/gallery/cloud/CloudManager;->CLOUD_TRASH_URI:Landroid/net/Uri;

    .line 232
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 233
    invoke-virtual {v0}, Lcom/zui/gallery/trash/TrashItem;->getId()I

    move-result v3

    int-to-long v3, v3

    .line 230
    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    move-result-object v1

    sget-object v3, Lcom/zui/gallery/cloud/ThumbnailType;->SMALLER_THUMBNAIL:Lcom/zui/gallery/cloud/ThumbnailType;

    .line 233
    invoke-virtual {v3}, Lcom/zui/gallery/cloud/ThumbnailType;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "thumbnail_type"

    invoke-virtual {v1, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 237
    iget-object v3, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->mMeidaFilePathSet:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/trash/TrashItem;

    invoke-virtual {v3}, Lcom/zui/gallery/trash/TrashItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->isImage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 238
    iget-object v3, v2, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->video_icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 239
    iget-object v3, v2, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->video_HDR_icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 244
    :cond_1
    iget-object v3, v2, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->video_icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 245
    iget-object v3, v2, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->video_HDR_icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 247
    :goto_0
    iget-object v3, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    sget-object v3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 248
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v3, v2, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->img:Landroid/widget/ImageView;

    .line 249
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 252
    iget-object v1, v2, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->left_date:Landroid/widget/TextView;

    .line 253
    move-object v3, v0

    check-cast v3, Lcom/zui/gallery/trash/CloudTrashItem;

    .line 252
    invoke-virtual {v3}, Lcom/zui/gallery/trash/CloudTrashItem;->getReminderDays()I

    move-result v4

    if-gt v4, v7, :cond_2

    .line 253
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/zui/gallery/trash/CloudTrashItem;->getReminderDays()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 254
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/zui/gallery/trash/CloudTrashItem;->getReminderDays()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 252
    :goto_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 267
    :cond_3
    invoke-virtual {v0}, Lcom/zui/gallery/trash/TrashItem;->isImage()Z

    move-result v4

    if-nez v4, :cond_5

    .line 278
    invoke-direct {p0, v1}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->isHDRVideo(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 279
    iget-object v4, v2, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->video_HDR_icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 280
    iget-object v4, v2, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->video_icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 282
    :cond_4
    iget-object v4, v2, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->video_HDR_icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 283
    iget-object v4, v2, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->video_icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 288
    :cond_5
    iget-object v4, v2, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->video_HDR_icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 290
    iget-object v4, v2, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->video_icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 298
    :goto_2
    invoke-virtual {p0, v1}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->isGifImage(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v0}, Lcom/zui/gallery/trash/TrashItem;->isImage()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 299
    iget-object v4, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    .line 300
    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v1

    new-array v4, v7, [Lcom/bumptech/glide/load/Transformation;

    new-instance v10, Ljp/wasabeef/glide/transformations/CropTransformation;

    iget-object v11, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11, v3, v3}, Ljp/wasabeef/glide/transformations/CropTransformation;-><init>(Landroid/content/Context;II)V

    aput-object v10, v4, v8

    .line 301
    invoke-virtual {v1, v4}, Lcom/bumptech/glide/BitmapTypeRequest;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v1

    iget-object v3, v2, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->img:Landroid/widget/ImageView;

    .line 302
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/BitmapRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto/16 :goto_4

    .line 305
    :cond_6
    invoke-virtual {p0, v1}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->isGifImage(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v0}, Lcom/zui/gallery/trash/TrashItem;->isImage()Z

    move-result v4

    if-nez v4, :cond_8

    .line 307
    iget-object v4, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->mLenovoTrashListFragment:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    invoke-virtual {v4}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->isLandScreen()Z

    move-result v4

    if-eqz v4, :cond_7

    add-int/lit16 v3, v3, 0xc8

    goto :goto_3

    :cond_7
    add-int/lit8 v3, v3, 0x64

    .line 313
    :goto_3
    iget-object v4, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    .line 314
    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v1

    sget-object v4, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESULT:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 315
    invoke-virtual {v1, v4}, Lcom/bumptech/glide/BitmapTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v1

    new-array v4, v7, [Lcom/bumptech/glide/load/Transformation;

    new-instance v10, Ljp/wasabeef/glide/transformations/CropTransformation;

    iget-object v11, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11, v3, v3}, Ljp/wasabeef/glide/transformations/CropTransformation;-><init>(Landroid/content/Context;II)V

    aput-object v10, v4, v8

    .line 316
    invoke-virtual {v1, v4}, Lcom/bumptech/glide/BitmapRequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v1

    iget-object v3, v2, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->img:Landroid/widget/ImageView;

    .line 317
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/BitmapRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_4

    .line 320
    :cond_8
    iget-object v4, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    .line 321
    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableTypeRequest;->asGif()Lcom/bumptech/glide/GifTypeRequest;

    move-result-object v1

    sget-object v4, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 322
    invoke-virtual {v1, v4}, Lcom/bumptech/glide/GifTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v1

    new-array v4, v7, [Lcom/bumptech/glide/load/Transformation;

    new-instance v10, Ljp/wasabeef/glide/transformations/CropTransformation;

    iget-object v11, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->mContext:Landroid/content/Context;

    sget-object v12, Ljp/wasabeef/glide/transformations/CropTransformation$CropType;->CENTER:Ljp/wasabeef/glide/transformations/CropTransformation$CropType;

    invoke-direct {v10, v11, v3, v3, v12}, Ljp/wasabeef/glide/transformations/CropTransformation;-><init>(Landroid/content/Context;IILjp/wasabeef/glide/transformations/CropTransformation$CropType;)V

    aput-object v10, v4, v8

    .line 323
    invoke-virtual {v1, v4}, Lcom/bumptech/glide/GifRequestBuilder;->transformFrame([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v1

    iget-object v3, v2, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->img:Landroid/widget/ImageView;

    .line 324
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/GifRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 329
    :goto_4
    iget-object v1, v2, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->left_date:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zui/gallery/trash/TrashItem;->getTimestamp()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v3, v7, :cond_9

    .line 330
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/zui/gallery/trash/TrashItem;->getTimestamp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->mLenovoTrashListFragment:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    invoke-virtual {v4}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 331
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/zui/gallery/trash/TrashItem;->getTimestamp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->mLenovoTrashListFragment:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    invoke-virtual {v4}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 329
    :goto_5
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    :goto_6
    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->actionModeSelectPaths:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->statusInActionMode:Z

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->actionModeSelectAll:Z

    if-eqz v1, :cond_a

    .line 349
    iget-object v1, v2, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->un_selection_part:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 350
    iget-object v1, v2, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->actionModeIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 352
    iget-object v1, v2, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->view_selector:Landroid/view/View;

    iget-object v3, v2, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->visible_layout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1, v3, v8}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->pressUpdate(Landroid/view/View;Landroid/widget/RelativeLayout;Z)V

    goto/16 :goto_7

    .line 353
    :cond_a
    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->actionModeSelectPaths:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->statusInActionMode:Z

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->actionModeSelectAll:Z

    if-nez v1, :cond_b

    .line 354
    iget-object v1, v2, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->un_selection_part:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 355
    iget-object v1, v2, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->actionModeIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 357
    iget-object v1, v2, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->view_selector:Landroid/view/View;

    iget-object v3, v2, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->visible_layout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1, v3, v8}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->pressUpdate(Landroid/view/View;Landroid/widget/RelativeLayout;Z)V

    goto :goto_7

    .line 358
    :cond_b
    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->actionModeSelectPaths:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-boolean v1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->statusInActionMode:Z

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->actionModeSelectAll:Z

    if-nez v1, :cond_c

    .line 359
    iget-object v1, v2, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->un_selection_part:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 360
    iget-object v1, v2, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->actionModeIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 362
    iget-object v1, v2, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->view_selector:Landroid/view/View;

    iget-object v3, v2, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->visible_layout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1, v3, v7}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->pressUpdate(Landroid/view/View;Landroid/widget/RelativeLayout;Z)V

    goto :goto_7

    .line 363
    :cond_c
    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->actionModeSelectPaths:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-boolean v1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->statusInActionMode:Z

    if-eqz v1, :cond_d

    iget-boolean v1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->actionModeSelectAll:Z

    if-eqz v1, :cond_d

    .line 364
    iget-object v1, v2, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->un_selection_part:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 365
    iget-object v1, v2, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->actionModeIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 367
    iget-object v1, v2, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->view_selector:Landroid/view/View;

    iget-object v3, v2, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->visible_layout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1, v3, v7}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->pressUpdate(Landroid/view/View;Landroid/widget/RelativeLayout;Z)V

    goto :goto_7

    .line 370
    :cond_d
    iget-object v1, v2, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->view_selector:Landroid/view/View;

    iget-object v3, v2, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->visible_layout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1, v3, v7}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->pressUpdate(Landroid/view/View;Landroid/widget/RelativeLayout;Z)V

    .line 371
    iget-object v1, v2, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->actionModeIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 372
    iget-object v1, v2, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->un_selection_part:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 374
    :goto_7
    iget-object v1, v2, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->mainLayout:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$1;

    invoke-direct {v3, p0, p1, v0, p2}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$1;-><init>(Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/zui/gallery/trash/TrashItem;I)V

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    iget-object p2, v2, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->mainLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$2;-><init>(Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/zui/gallery/trash/TrashItem;)V

    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 213
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b007d

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 214
    new-instance p2, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;

    invoke-direct {p2, p1}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public selectAllItems()V
    .locals 2

    const/4 v0, 0x1

    .line 681
    iput-boolean v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->actionModeSelectAll:Z

    .line 682
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->actionModeSelectPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 683
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->actionModeSelectPaths:Ljava/util/List;

    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->mMeidaFilePathSet:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 686
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->informSelectedPhotoCount()V

    .line 687
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setCloudItems(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/gallery/trash/CloudTrashItem;",
            ">;)V"
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setCloudItems cloudsize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->mMeidaFilePathSet:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LenovoTrashRecyclerListAdapter"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->mMeidaFilePathSet:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 102
    iget-object v2, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->oldCloudTrashList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 103
    invoke-interface {v0, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 106
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string/jumbo v4, "zlq"

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/trash/CloudTrashItem;

    .line 108
    iget-object v5, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->mMeidaFilePathSet:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zui/gallery/trash/TrashItem;

    .line 109
    invoke-virtual {v6}, Lcom/zui/gallery/trash/TrashItem;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/zui/gallery/trash/CloudTrashItem;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 111
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u91cd\u590d\u9879... "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/zui/gallery/trash/CloudTrashItem;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    :cond_3
    iget-object v2, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->deduplicationList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 118
    iget-object v2, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->mMeidaFilePathSet:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 120
    iget-object v2, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->mMeidaFilePathSet:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 124
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->mMeidaFilePathSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/gallery/trash/TrashItem;

    .line 125
    invoke-virtual {v5}, Lcom/zui/gallery/trash/TrashItem;->isCloudyItem()Z

    move-result v5

    if-eqz v5, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 131
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCloudItems  \u672c\u5730  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  \u4e91\u7aef "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->notifyDataSetChanged()V

    .line 135
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->mMeidaFilePathSet:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 137
    :cond_6
    iput-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->oldCloudTrashList:Ljava/util/List;

    .line 138
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->mMeidaFilePathSet:Ljava/util/List;

    if-eqz p1, :cond_7

    .line 139
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->loadTrashItem:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 140
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->loadTrashItem:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->mMeidaFilePathSet:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 141
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setCloudItems: loadTrashItem  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->loadTrashItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method protected setData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/gallery/trash/TrashItem;",
            ">;)V"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->mMeidaFilePathSet:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 159
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 164
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " before filter setData mMeidaFilePathSet.size(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LenovoTrashRecyclerListAdapter"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->mMeidaFilePathSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 185
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->mMeidaFilePathSet:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 186
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " after filter setData mMeidaFilePathSet.size(): "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->mMeidaFilePathSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " after filter setData mContinousFolder.size(): "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->mContinousFolder:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->notifyDataSetChanged()V

    .line 201
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->mMeidaFilePathSet:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 203
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->mMeidaFilePathSet:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 204
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->loadTrashItem:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 205
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->loadTrashItem:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->mMeidaFilePathSet:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void
.end method

.method public setImage(Ljava/util/List;Landroid/widget/ImageView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/gallery/trash/TrashItem;",
            ">;",
            "Landroid/widget/ImageView;",
            ")V"
        }
    .end annotation

    .line 560
    new-instance v0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$3;-><init>(Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;Ljava/util/List;Landroid/widget/ImageView;)V

    .line 651
    invoke-virtual {v0}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$3;->start()V

    return-void
.end method

.method public startActionMode()V
    .locals 1

    const/4 v0, 0x1

    .line 674
    iput-boolean v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->statusInActionMode:Z

    const/4 v0, 0x0

    .line 675
    iput-boolean v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->actionModeSelectAll:Z

    .line 676
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->informSelectedPhotoCount()V

    .line 677
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->notifyDataSetChanged()V

    return-void
.end method
