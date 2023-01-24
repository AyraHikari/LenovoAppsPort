.class public Lcom/zui/gallery/trash/LenovoTrashListFragment;
.super Landroid/app/Fragment;
.source "LenovoTrashListFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Fragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Lcom/zui/gallery/trash/TrashItem;",
        ">;>;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LenovoTrashListFragment"


# instance fields
.field private actionModeSelectAll:Z

.field private countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private delete:Ljava/lang/String;

.field deleteButton:Landroid/widget/Button;

.field private errMsg:Ljava/lang/String;

.field handler:Landroid/os/Handler;

.field private isLandScreen:Z

.field private localFileCount:I

.field private mActionBar:Landroid/widget/RelativeLayout;

.field private mActionMode:Landroid/widget/ImageButton;

.field private mButtonLayout:Landroid/widget/LinearLayout;

.field private mCheckedAll:Landroid/widget/TextView;

.field private mEmptyLayout:Landroid/widget/LinearLayout;

.field private mImageBack:Landroid/widget/ImageView;

.field private mLayout:Landroid/widget/LinearLayout;

.field private mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field mLoader:Landroid/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader<",
            "Ljava/util/List<",
            "Lcom/zui/gallery/trash/TrashItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mProgressDialogX:Lzui/app/ProgressDialogX;

.field private mTitle:Landroid/widget/TextView;

.field private mViewWidth:I

.field private multiChanged:Z

.field recoveryButton:Landroid/widget/Button;

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private restore:Ljava/lang/String;

.field private spanCount:I

.field trashRecyclerListAdapter:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 76
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->handler:Landroid/os/Handler;

    const/4 v0, 0x4

    .line 86
    iput v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->spanCount:I

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->actionModeSelectAll:Z

    .line 102
    iput v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->localFileCount:I

    const-string v1, ""

    .line 104
    iput-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->errMsg:Ljava/lang/String;

    const-string v1, "DELETE"

    .line 105
    iput-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->delete:Ljava/lang/String;

    const-string v1, "RESTORE"

    .line 106
    iput-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->restore:Ljava/lang/String;

    .line 108
    iput-boolean v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->isLandScreen:Z

    .line 111
    iput-boolean v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->multiChanged:Z

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/trash/LenovoTrashListFragment;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->dialogRestore()V

    return-void
.end method

.method static synthetic access$100(Lcom/zui/gallery/trash/LenovoTrashListFragment;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->trueDeletion()V

    return-void
.end method

.method static synthetic access$1000(Lcom/zui/gallery/trash/LenovoTrashListFragment;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->closeProgressDialog()V

    return-void
.end method

.method static synthetic access$1100(Lcom/zui/gallery/trash/LenovoTrashListFragment;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->destActionMode()V

    return-void
.end method

.method static synthetic access$200(Lcom/zui/gallery/trash/LenovoTrashListFragment;Z)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->conformedDeleteRestorePhotos(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/zui/gallery/trash/LenovoTrashListFragment;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->delete()V

    return-void
.end method

.method static synthetic access$400(Lcom/zui/gallery/trash/LenovoTrashListFragment;)Ljava/lang/String;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->errMsg:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/zui/gallery/trash/LenovoTrashListFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->errMsg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/zui/gallery/trash/LenovoTrashListFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mEmptyLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$600(Lcom/zui/gallery/trash/LenovoTrashListFragment;)Landroid/widget/ImageButton;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mActionMode:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$700(Lcom/zui/gallery/trash/LenovoTrashListFragment;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->countDown()V

    return-void
.end method

.method static synthetic access$800(Lcom/zui/gallery/trash/LenovoTrashListFragment;)Ljava/lang/String;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->restore:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/zui/gallery/trash/LenovoTrashListFragment;)Ljava/lang/String;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->delete:Ljava/lang/String;

    return-object p0
.end method

.method private addToVideoGroup(Lcom/zui/gallery/trash/TrashItem;Landroid/content/ContentResolver;)V
    .locals 10

    const/4 v0, 0x0

    .line 707
    :try_start_0
    invoke-virtual {p1}, Lcom/zui/gallery/trash/TrashItem;->getOld_full_path()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    const-string v2, "/DCIM/Camera"

    .line 710
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    const-string v2, "-VID_"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 711
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ".trashed-"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "VID"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 714
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/zui/gallery/database/GalleryContract$ShadowVideoShips;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/zui/gallery/database/GalleryContract$ShadowVideoShips;->PROJECTIONS:[Ljava/lang/String;

    const-string v7, "_data=? "

    const/4 p1, 0x1

    new-array v8, p1, [Ljava/lang/String;

    aput-object v1, v8, v3

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 719
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    .line 720
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const/4 v2, 0x6

    if-eq p1, v2, :cond_1

    const/16 v2, 0x8

    if-eq p1, v2, :cond_1

    const/16 v2, 0xa

    if-eq p1, v2, :cond_1

    const/16 v2, 0xb

    if-eq p1, v2, :cond_1

    const/16 v2, 0xd

    if-ne p1, v2, :cond_2

    .line 724
    :cond_1
    invoke-static {p2, v1, p1}, Lcom/zui/gallery/data/GroupBucketHelper;->addToVideoGroup(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-eqz v0, :cond_3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string p2, "LenovoTrashListFragment"

    .line 728
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreItem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 731
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void

    :goto_1
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 733
    :cond_4
    throw p1
.end method

.method private avatarData(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/gallery/trash/TrashItem;",
            ">;)V"
        }
    .end annotation

    .line 448
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/trash/TrashItem;

    .line 449
    invoke-virtual {v3}, Lcom/zui/gallery/trash/TrashItem;->isCloudyItem()Z

    move-result v4

    if-nez v4, :cond_0

    .line 450
    invoke-virtual {v3}, Lcom/zui/gallery/trash/TrashItem;->isImage()Z

    move-result v1

    .line 451
    invoke-virtual {v3}, Lcom/zui/gallery/trash/TrashItem;->isImage()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p1, ""

    if-eqz v1, :cond_2

    .line 456
    sget-object v1, Lcom/zui/gallery/util/AvatarUtils$Catagory;->TRASHITEM:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    sget-object v3, Lcom/zui/gallery/util/AvatarUtils$Action;->PICTURE_RECOVERY:Lcom/zui/gallery/util/AvatarUtils$Action;

    invoke-static {v1, v3, p1, v0}, Lcom/zui/gallery/util/AvatarUtils;->trackEvent(Lcom/zui/gallery/util/AvatarUtils$Catagory;Lcom/zui/gallery/util/AvatarUtils$Action;Ljava/lang/String;I)V

    :cond_2
    if-eqz v2, :cond_3

    .line 460
    sget-object v1, Lcom/zui/gallery/util/AvatarUtils$Catagory;->TRASHITEM:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Action;->VIDEO_RECOVERY:Lcom/zui/gallery/util/AvatarUtils$Action;

    invoke-static {v1, v2, p1, v0}, Lcom/zui/gallery/util/AvatarUtils;->trackEvent(Lcom/zui/gallery/util/AvatarUtils$Catagory;Lcom/zui/gallery/util/AvatarUtils$Action;Ljava/lang/String;I)V

    :cond_3
    return-void
.end method

.method private batchDeleteShadowVideoShips(Lcom/zui/gallery/trash/TrashItem;)V
    .locals 12

    const/4 v0, 0x0

    .line 549
    :try_start_0
    invoke-virtual {p1}, Lcom/zui/gallery/trash/TrashItem;->getOld_full_path()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    .line 551
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/DCIM/Camera"

    .line 552
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eq v3, v4, :cond_0

    const-string v3, "-VID_"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v4, :cond_0

    .line 553
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".trashed-"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "VID"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string p1, "\'"

    .line 555
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\',"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/zui/gallery/database/GalleryContract$ShadowVideoShips;->CONTENT_URI:Landroid/net/Uri;

    sget-object v8, Lcom/zui/gallery/database/GalleryContract$ShadowVideoShips;->PROJECTIONS:[Ljava/lang/String;

    const-string v9, "_data=? "

    const/4 p1, 0x1

    new-array v10, p1, [Ljava/lang/String;

    aput-object v1, v10, v5

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 561
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 562
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 563
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    .line 564
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/zui/gallery/data/GroupBucketHelper;->batchDeleteShadowVideoShips(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string v1, "LenovoTrashListFragment"

    .line 568
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteLocalOrCloud: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 571
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void

    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 573
    :cond_3
    throw p1
.end method

.method private clearCache()V
    .locals 2

    .line 975
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zui/gallery/trash/-$$Lambda$LenovoTrashListFragment$_ABvtOP4Un96YZb5zkh2EdoCoMg;

    invoke-direct {v1, p0}, Lcom/zui/gallery/trash/-$$Lambda$LenovoTrashListFragment$_ABvtOP4Un96YZb5zkh2EdoCoMg;-><init>(Lcom/zui/gallery/trash/LenovoTrashListFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 977
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 978
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->clearMemory()V

    const/4 v0, 0x0

    .line 980
    sput-boolean v0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->isOnCreateTrashDetail:Z

    return-void
.end method

.method private closeProgressDialog()V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mProgressDialogX:Lzui/app/ProgressDialogX;

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0}, Lzui/app/ProgressDialogX;->dismiss()V

    const/4 v0, 0x0

    .line 171
    iput-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mProgressDialogX:Lzui/app/ProgressDialogX;

    :cond_0
    return-void
.end method

.method private conformedDeleteRestorePhotos(Z)V
    .locals 5

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 340
    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->trashRecyclerListAdapter:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

    invoke-virtual {v1}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->getActionModeSelectPaths()Ljava/util/List;

    move-result-object v1

    .line 341
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u8981\u5220\u9664\u6216\u8005\u6062\u590d\u7684\u6570\u636e\u5927\u5c0f == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "zlq"

    invoke-static {v3, v2}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v2, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->trashRecyclerListAdapter:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

    invoke-virtual {v2}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->getDeduplicationList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 344
    iget-object v2, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->trashRecyclerListAdapter:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

    invoke-virtual {v2}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->getDeduplicationList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 346
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u5305\u542b\u91cd\u590d\u9879\u5927\u5c0f  == "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " \u91cd\u590d\u9879\u5927\u5c0f  ==  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->trashRecyclerListAdapter:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

    invoke-virtual {v4}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->getDeduplicationList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-direct {p0, v1}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->countLatch(Ljava/util/List;)V

    if-eqz p1, :cond_1

    .line 350
    invoke-direct {p0, v1, v0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->restoreLocalOrCloud(Ljava/util/List;Ljava/util/List;)V

    goto :goto_1

    .line 353
    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->deleteLocalOrCloud(Ljava/util/List;Ljava/util/List;)V

    .line 355
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/zui/gallery/util/GroupUtils;->GROUP_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 356
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 357
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    .line 358
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 359
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 361
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->deleteGroupFolderDirectory(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    :try_start_0
    const-string v0, "await... "

    .line 368
    invoke-static {v3, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_4

    .line 370
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 372
    :cond_4
    invoke-direct {p0, p1}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->toast(Z)V

    .line 374
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->refresh()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 376
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private countDown()V
    .locals 1

    .line 1283
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 1284
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method

.method private countLatch(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/gallery/trash/TrashItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 397
    iput v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->localFileCount:I

    const-string v0, ""

    .line 398
    iput-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->errMsg:Ljava/lang/String;

    .line 399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 400
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 401
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 402
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 403
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/trash/TrashItem;

    .line 404
    invoke-virtual {v2}, Lcom/zui/gallery/trash/TrashItem;->isCloudyItem()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 405
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 407
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 410
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "countLatch \u672c\u5730 \uff1a  "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  \u4e91 "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "zlq"

    invoke-static {v2, p1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 413
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->localFileCount:I

    .line 415
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    const-string p1, "countDownLatch...2 "

    .line 416
    invoke-static {v2, p1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    goto :goto_1

    .line 418
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 419
    :cond_4
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    const-string p1, "countDownLatch...1 "

    .line 420
    invoke-static {v2, p1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return-void
.end method

.method private createProgressDialog(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 152
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mProgressDialogX:Lzui/app/ProgressDialogX;

    if-nez p1, :cond_1

    .line 153
    new-instance p1, Lzui/app/ProgressDialogX;

    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lzui/app/ProgressDialogX;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mProgressDialogX:Lzui/app/ProgressDialogX;

    const v1, 0x7f100297

    .line 154
    invoke-virtual {p1, v1}, Lzui/app/ProgressDialogX;->setMessage(I)V

    .line 155
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mProgressDialogX:Lzui/app/ProgressDialogX;

    invoke-virtual {p1, v0}, Lzui/app/ProgressDialogX;->setCancelable(Z)V

    .line 156
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mProgressDialogX:Lzui/app/ProgressDialogX;

    invoke-virtual {p1}, Lzui/app/ProgressDialogX;->show()V

    goto :goto_0

    .line 159
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mProgressDialogX:Lzui/app/ProgressDialogX;

    if-nez p1, :cond_1

    .line 160
    new-instance p1, Lzui/app/ProgressDialogX;

    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lzui/app/ProgressDialogX;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mProgressDialogX:Lzui/app/ProgressDialogX;

    const v1, 0x7f10029b

    .line 161
    invoke-virtual {p1, v1}, Lzui/app/ProgressDialogX;->setMessage(I)V

    .line 162
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mProgressDialogX:Lzui/app/ProgressDialogX;

    invoke-virtual {p1, v0}, Lzui/app/ProgressDialogX;->setCancelable(Z)V

    .line 163
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mProgressDialogX:Lzui/app/ProgressDialogX;

    invoke-virtual {p1}, Lzui/app/ProgressDialogX;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method private delete()V
    .locals 2

    const/4 v0, 0x1

    .line 220
    invoke-direct {p0, v0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->createProgressDialog(Z)V

    .line 221
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zui/gallery/trash/LenovoTrashListFragment$6;

    invoke-direct {v1, p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment$6;-><init>(Lcom/zui/gallery/trash/LenovoTrashListFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 226
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private delete(Ljava/lang/StringBuilder;ILandroid/net/Uri;)V
    .locals 3

    const-string/jumbo p2, "zlq"

    .line 578
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 579
    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/16 v1, 0x1e

    .line 580
    invoke-static {v1}, Lcom/zui/gallery/util/GalleryUtils;->isAtLeastBuildVersion(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 582
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 583
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "list  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " base Uri  "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p3, p1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception occure during deleteing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private deleteGroupFolderDirectory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 525
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/zui/gallery/util/GroupUtils;->isFolderInGroup(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 527
    :goto_0
    invoke-static {p1}, Lcom/zui/gallery/util/GroupUtils;->isGroupFolderExist(Ljava/lang/String;)Z

    move-result v1

    .line 529
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteGroupFolderDirectory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "--path--"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "--isGroupFolderExist--"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "--isFolderInGroup--"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "LenovoTrashListFragment"

    invoke-static {v2, p2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 538
    invoke-static {p1}, Lcom/zui/gallery/util/GroupUtils;->isGroupFolderEmpty(Ljava/lang/String;)Z

    move-result p2

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    .line 541
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/zui/gallery/util/GroupUtils;->deleteGroupFolderDirectoryiByName(Landroid/content/ContentResolver;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private deleteLocalOrCloud(Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/gallery/trash/TrashItem;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "zlq"

    .line 465
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 466
    invoke-interface {p2}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    move v2, v1

    .line 467
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 468
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/trash/TrashItem;

    .line 470
    invoke-virtual {v3}, Lcom/zui/gallery/trash/TrashItem;->isCloudyItem()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 472
    invoke-virtual {v3}, Lcom/zui/gallery/trash/TrashItem;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 476
    :cond_0
    invoke-virtual {v3}, Lcom/zui/gallery/trash/TrashItem;->isImage()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 477
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Lcom/zui/gallery/trash/TrashItem;->getId()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    goto :goto_1

    .line 479
    :cond_1
    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Lcom/zui/gallery/trash/TrashItem;->getId()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    :goto_1
    const/16 v5, 0x1e

    .line 482
    invoke-static {v5}, Lcom/zui/gallery/util/GalleryUtils;->isAtLeastBuildVersion(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 483
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const/4 v6, 0x3

    const-string v7, "android:query-arg-match-trashed"

    .line 484
    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "android:query-arg-allow-movement"

    .line 485
    invoke-virtual {v5, v6, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 487
    :try_start_0
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Landroid/os/Bundle;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    .line 489
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 490
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete exception as "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->refresh()V

    .line 497
    :goto_2
    invoke-direct {p0, v3}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->batchDeleteShadowVideoShips(Lcom/zui/gallery/trash/TrashItem;)V

    .line 500
    iget v3, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->localFileCount:I

    if-lez v3, :cond_2

    add-int/lit8 v3, v3, -0x1

    .line 501
    iput v3, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->localFileCount:I

    .line 504
    :cond_2
    iget v3, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->localFileCount:I

    if-nez v3, :cond_4

    .line 505
    iget-object v3, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v3, :cond_3

    .line 506
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 508
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteLocalOrCloud localFileCount countDown..  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->localFileCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 514
    :cond_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 515
    invoke-direct {p0, p2}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->startDeleteCloudTrashItem(Ljava/util/List;)V

    :cond_6
    return-void
.end method

.method private destActionMode()V
    .locals 2

    .line 1398
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01004b

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1399
    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1400
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x0

    .line 1401
    iput-boolean v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->actionModeSelectAll:Z

    .line 1402
    invoke-direct {p0, v0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->setVisibility(Z)V

    .line 1403
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->trashRecyclerListAdapter:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

    invoke-virtual {v0}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->destoryActionMode()V

    .line 1404
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f10029c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1405
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->navigationBarHeight()V

    return-void
.end method

.method private detailsPageDeleteOrRestore(Z)V
    .locals 6

    .line 302
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 303
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 305
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 306
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 307
    iget-object v2, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->trashRecyclerListAdapter:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

    invoke-virtual {v2}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->getDeduplicationList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 308
    iget-object v2, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->trashRecyclerListAdapter:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

    invoke-virtual {v2}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->getDeduplicationList()Ljava/util/List;

    move-result-object v2

    .line 309
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/trash/TrashItem;

    .line 310
    invoke-virtual {v3}, Lcom/zui/gallery/trash/TrashItem;->isCloudyItem()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 312
    invoke-virtual {v3}, Lcom/zui/gallery/trash/TrashItem;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->cloudName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 313
    invoke-virtual {v3}, Lcom/zui/gallery/trash/TrashItem;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 318
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    if-eqz p1, :cond_3

    .line 320
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/zui/gallery/util/GroupUtils;->setCloudTrashRecovery(Landroid/content/Context;Z)V

    .line 321
    invoke-direct {p0, v0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->startRecoveryCloudTrashItem(Ljava/util/List;)V

    goto :goto_1

    .line 323
    :cond_3
    invoke-direct {p0, v0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->startDeleteCloudTrashItem(Ljava/util/List;)V

    goto :goto_1

    .line 326
    :cond_4
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->countDown()V

    .line 329
    :goto_1
    :try_start_0
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 330
    :cond_5
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->refresh()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 332
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private dialogRestore()V
    .locals 2

    const/4 v0, 0x0

    .line 190
    invoke-direct {p0, v0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->createProgressDialog(Z)V

    .line 191
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zui/gallery/trash/LenovoTrashListFragment$3;

    invoke-direct {v1, p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment$3;-><init>(Lcom/zui/gallery/trash/LenovoTrashListFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 196
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private dropoutMode()V
    .locals 1

    .line 1390
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->trashRecyclerListAdapter:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

    iget-boolean v0, v0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->statusInActionMode:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->actionModeSelectAll:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1393
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 1391
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->destActionMode()V

    :goto_1
    return-void
.end method

.method private getWidth()I
    .locals 1

    .line 852
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 853
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method private initBottomBar()V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->recoveryButton:Landroid/widget/Button;

    new-instance v1, Lcom/zui/gallery/trash/LenovoTrashListFragment$1;

    invoke-direct {v1, p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment$1;-><init>(Lcom/zui/gallery/trash/LenovoTrashListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->deleteButton:Landroid/widget/Button;

    new-instance v1, Lcom/zui/gallery/trash/LenovoTrashListFragment$2;

    invoke-direct {v1, p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment$2;-><init>(Lcom/zui/gallery/trash/LenovoTrashListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initListener()V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mCheckedAll:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mImageBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mActionMode:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private insertGroupBucketToGroupTable(Lcom/zui/gallery/trash/TrashItem;)V
    .locals 7

    const-string v0, ".trashed"

    .line 667
    :try_start_0
    invoke-virtual {p1}, Lcom/zui/gallery/trash/TrashItem;->getOld_full_path()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DCIM/Camera"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ZuiGalleryGroup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 674
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 678
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "/.trashed"

    .line 679
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "/"

    .line 680
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 682
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0, p1}, Lcom/zui/gallery/util/GroupUtils;->isFolderInGroup(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-lez p1, :cond_2

    move v1, v2

    .line 684
    :cond_2
    invoke-static {v0}, Lcom/zui/gallery/util/GroupUtils;->isGroupFolderExist(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    if-nez v1, :cond_4

    .line 686
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/zui/gallery/data/GroupBucketHelper;->insertGroupBucketToGroupTable(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertGroupBucketToGroupTable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LenovoTrashListFragment"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method

.method private isDeleteOrRestore()V
    .locals 2

    .line 912
    sget-boolean v0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->isDelete:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->isRestore:Z

    if-nez v0, :cond_0

    return-void

    .line 915
    :cond_0
    sget-boolean v0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->isDelete:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 916
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->delete:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->errMsg:Ljava/lang/String;

    .line 917
    invoke-direct {p0, v1}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->detailsPageDeleteOrRestore(Z)V

    .line 918
    sput-boolean v1, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->isDelete:Z

    .line 920
    :cond_1
    sget-boolean v0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->isRestore:Z

    if-eqz v0, :cond_2

    .line 921
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->restore:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->errMsg:Ljava/lang/String;

    const/4 v0, 0x1

    .line 922
    invoke-direct {p0, v0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->detailsPageDeleteOrRestore(Z)V

    .line 923
    sput-boolean v1, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->isRestore:Z

    :cond_2
    return-void
.end method

.method private navigationBarHeight()V
    .locals 3

    .line 264
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x3

    const v2, 0x7f080386

    .line 265
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 266
    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->trashRecyclerListAdapter:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

    iget-boolean v1, v1, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->statusInActionMode:Z

    if-eqz v1, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060360

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 269
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 271
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private onBackDestroyActionModeOrCurrent()V
    .locals 2

    .line 899
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 900
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 901
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/zui/gallery/trash/-$$Lambda$LenovoTrashListFragment$dDVW_iUMxtfuW6JLWx8NFzXdNBo;

    invoke-direct {v1, p0}, Lcom/zui/gallery/trash/-$$Lambda$LenovoTrashListFragment$dDVW_iUMxtfuW6JLWx8NFzXdNBo;-><init>(Lcom/zui/gallery/trash/LenovoTrashListFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method private performHapticFeedback(I)V
    .locals 2

    .line 963
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 967
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 968
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    .line 969
    invoke-virtual {v0, p1, v1}, Landroid/view/View;->performHapticFeedback(II)Z

    return-void
.end method

.method private processingData(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/gallery/trash/TrashItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/zui/gallery/trash/TrashItem;",
            ">;"
        }
    .end annotation

    .line 1031
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-object p1

    .line 1034
    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1035
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/zui/gallery/trash/LenovoTrashListFragment$8;

    invoke-direct {v2, p0, p1, v0}, Lcom/zui/gallery/trash/LenovoTrashListFragment$8;-><init>(Lcom/zui/gallery/trash/LenovoTrashListFragment;Ljava/util/List;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1119
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1121
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1123
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-object p1
.end method

.method private processingData()V
    .locals 2

    .line 1019
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1020
    new-instance v1, Lcom/zui/gallery/trash/-$$Lambda$LenovoTrashListFragment$wLUrukXzLS-j5LOYjh2PVj3fORc;

    invoke-direct {v1, p0}, Lcom/zui/gallery/trash/-$$Lambda$LenovoTrashListFragment$wLUrukXzLS-j5LOYjh2PVj3fORc;-><init>(Lcom/zui/gallery/trash/LenovoTrashListFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private recyclerViewRelated()V
    .locals 3

    .line 275
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->spanCount:I

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 276
    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 278
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->trashRecyclerListAdapter:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private refresh()V
    .locals 2

    .line 1330
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/zui/gallery/trash/LenovoTrashListFragment$15;

    invoke-direct {v1, p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment$15;-><init>(Lcom/zui/gallery/trash/LenovoTrashListFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private restoreItem(Lcom/zui/gallery/trash/TrashItem;)V
    .locals 10

    .line 612
    invoke-direct {p0, p1}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->insertGroupBucketToGroupTable(Lcom/zui/gallery/trash/TrashItem;)V

    .line 614
    invoke-virtual {p1}, Lcom/zui/gallery/trash/TrashItem;->isImage()Z

    move-result v0

    const-string v1, "ex  as "

    const/4 v2, 0x0

    .line 636
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "is_trashed"

    const/4 v4, 0x0

    const-string/jumbo v5, "zlq"

    if-eqz v0, :cond_0

    .line 615
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/zui/gallery/trash/TrashItem;->getId()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 616
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 617
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 618
    invoke-virtual {v7, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 619
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restore type onlyDeleteGroupData 2222 id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/zui/gallery/trash/TrashItem;->getId()I

    move-result p1

    int-to-long v8, p1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " baseUri ="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :try_start_0
    invoke-virtual {v6, v0, v7, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "total restore image count1 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p1

    .line 624
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->refresh()V

    goto/16 :goto_1

    .line 630
    :cond_0
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/zui/gallery/trash/TrashItem;->getId()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 631
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 633
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 634
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "restore type video 22222 id ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/zui/gallery/trash/TrashItem;->getId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " baseUri = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    invoke-virtual {v7, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 638
    :try_start_1
    invoke-virtual {v6, v0, v7, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 639
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "total restore video count1 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 641
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 642
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->refresh()V

    .line 647
    :goto_0
    invoke-direct {p0, p1, v6}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->addToVideoGroup(Lcom/zui/gallery/trash/TrashItem;Landroid/content/ContentResolver;)V

    .line 650
    :goto_1
    iget p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->localFileCount:I

    if-lez p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 651
    iput p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->localFileCount:I

    .line 653
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "restoreItem  countDown..  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->localFileCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->localFileCount:I

    if-nez p1, :cond_3

    .line 656
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz p1, :cond_2

    .line 657
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->toastContent()V

    .line 658
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 660
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "restoreItem localFileCount countDown..  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->localFileCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private restoreLocalOrCloud(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/gallery/trash/TrashItem;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 425
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 426
    invoke-direct {p0, p1}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->avatarData(Ljava/util/List;)V

    .line 427
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 428
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/trash/TrashItem;

    .line 429
    invoke-virtual {v0}, Lcom/zui/gallery/trash/TrashItem;->isCloudyItem()Z

    move-result v1

    if-nez v1, :cond_0

    .line 431
    invoke-direct {p0, v0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->restoreItem(Lcom/zui/gallery/trash/TrashItem;)V

    goto :goto_0

    .line 434
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/zui/gallery/util/GroupUtils;->setCloudTrashRecovery(Landroid/content/Context;Z)V

    .line 435
    invoke-virtual {v0}, Lcom/zui/gallery/trash/TrashItem;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 438
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 439
    invoke-direct {p0, p2}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->startRecoveryCloudTrashItem(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method private screenOrientation()V
    .locals 3

    .line 230
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->setTitleHeight()V

    .line 231
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const v1, 0x7f090022

    .line 233
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->spanCount:I

    const/4 v0, 0x1

    .line 234
    iput-boolean v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->isLandScreen:Z

    goto :goto_0

    :cond_0
    const v1, 0x7f090023

    .line 236
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->spanCount:I

    const/4 v0, 0x0

    .line 237
    iput-boolean v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->isLandScreen:Z

    .line 240
    :goto_0
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->navigationBarHeight()V

    return-void
.end method

.method private selectAllOrNotAll()V
    .locals 2

    .line 1378
    iget-boolean v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->actionModeSelectAll:Z

    if-nez v0, :cond_0

    .line 1379
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mCheckedAll:Landroid/widget/TextView;

    const v1, 0x7f1000d6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1380
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->trashRecyclerListAdapter:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

    invoke-virtual {v0}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->selectAllItems()V

    const/4 v0, 0x1

    .line 1381
    iput-boolean v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->actionModeSelectAll:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1383
    iput-boolean v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->actionModeSelectAll:Z

    .line 1384
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mCheckedAll:Landroid/widget/TextView;

    const v1, 0x7f100237

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1385
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->trashRecyclerListAdapter:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

    invoke-virtual {v0}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->deselectAllItems()V

    :goto_0
    return-void
.end method

.method private setTitleHeight()V
    .locals 4

    .line 249
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/gallery/util/DeviceTypeUtils;->isWorkingMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/gallery/util/DisplayPropertyUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    .line 255
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mActionBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 256
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 257
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0601c1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 258
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06004f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v2, v0

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 259
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mActionBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setVisibility(Z)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 750
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mActionMode:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 751
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mCheckedAll:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 752
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mImageBack:Landroid/widget/ImageView;

    const v0, 0x7f07005a

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 754
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mCheckedAll:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 755
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mActionMode:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 756
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mImageBack:Landroid/widget/ImageView;

    const v0, 0x7f07008b

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method private startDeleteCloudTrashItem(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1289
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/gallery/cloud/CloudUtils;->isNetConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1290
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/zui/gallery/trash/LenovoTrashListFragment$12;

    invoke-direct {v0, p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment$12;-><init>(Lcom/zui/gallery/trash/LenovoTrashListFragment;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1296
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->countDown()V

    return-void

    .line 1300
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/cloud/CloudManager;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/cloud/CloudManager;->isAutoSyncAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1301
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/cloud/CloudManager;->getiBinder()Lcom/zui/cloudservice/lpcs/ILPCSManager;

    move-result-object v0

    new-instance v1, Lcom/zui/gallery/trash/LenovoTrashListFragment$13;

    invoke-direct {v1, p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment$13;-><init>(Lcom/zui/gallery/trash/LenovoTrashListFragment;)V

    invoke-interface {v0, p1, v1}, Lcom/zui/cloudservice/lpcs/ILPCSManager;->dumpTrash(Ljava/util/List;Lcom/zui/cloudservice/lpcs/ILPCSResultCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1312
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private startLoadCloudData()V
    .locals 3

    .line 1129
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/gallery/util/GalleryUtils;->getIsFirstToTrash(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1130
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/app/GalleryApp;

    .line 1131
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/zui/gallery/trash/LenovoTrashListFragment$9;

    invoke-direct {v2, p0, v0}, Lcom/zui/gallery/trash/LenovoTrashListFragment$9;-><init>(Lcom/zui/gallery/trash/LenovoTrashListFragment;Lcom/zui/gallery/app/GalleryApp;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1168
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 1169
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/gallery/util/GalleryUtils;->getIsFirstToTrash(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1170
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->startLoadCloudTrashItem()V

    :cond_1
    :goto_0
    return-void
.end method

.method private startLoadCloudTrashItem()V
    .locals 2

    .line 1176
    :try_start_0
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/cloud/CloudManager;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/cloud/CloudManager;->isAutoSyncAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "cloudtrashddd"

    const-string v1, " call fetschTrashbin"

    .line 1177
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/cloud/CloudManager;->getiBinder()Lcom/zui/cloudservice/lpcs/ILPCSManager;

    move-result-object v0

    new-instance v1, Lcom/zui/gallery/trash/LenovoTrashListFragment$10;

    invoke-direct {v1, p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment$10;-><init>(Lcom/zui/gallery/trash/LenovoTrashListFragment;)V

    invoke-interface {v0, v1}, Lcom/zui/cloudservice/lpcs/ILPCSManager;->fetchTrashBin(Lcom/zui/cloudservice/lpcs/ILPCSResultCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1236
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private startRecoveryCloudTrashItem(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1241
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/gallery/cloud/CloudUtils;->isNetConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1242
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f1002c5

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->errMsg:Ljava/lang/String;

    .line 1243
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->countDown()V

    return-void

    .line 1247
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/cloud/CloudManager;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/cloud/CloudManager;->isAutoSyncAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1248
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/cloud/CloudManager;->getiBinder()Lcom/zui/cloudservice/lpcs/ILPCSManager;

    move-result-object v0

    new-instance v1, Lcom/zui/gallery/trash/LenovoTrashListFragment$11;

    invoke-direct {v1, p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment$11;-><init>(Lcom/zui/gallery/trash/LenovoTrashListFragment;)V

    invoke-interface {v0, p1, v1}, Lcom/zui/cloudservice/lpcs/ILPCSManager;->pickTrash(Ljava/util/List;Lcom/zui/cloudservice/lpcs/ILPCSResultCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1279
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private toast(Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 602
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/zui/gallery/trash/LenovoTrashListFragment$7;

    invoke-direct {v0, p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment$7;-><init>(Lcom/zui/gallery/trash/LenovoTrashListFragment;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private toastContent()V
    .locals 4

    .line 697
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 698
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10020a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->errMsg:Ljava/lang/String;

    goto :goto_0

    .line 699
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const-string v0, ""

    .line 700
    iput-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->errMsg:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method private trueDeletion()V
    .locals 3

    .line 200
    new-instance v0, Lzui/app/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/gallery/util/GalleryUtils;->getCurrentMessageDialogTheme(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lzui/app/MessageDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f100299

    .line 201
    invoke-virtual {p0, v1}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzui/app/MessageDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lzui/app/MessageDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 202
    invoke-virtual {v0, v1}, Lzui/app/MessageDialog$Builder;->setMessageDialogType(I)Lzui/app/MessageDialog$Builder;

    move-result-object v0

    const v1, 0x7f1000b9

    .line 203
    invoke-virtual {p0, v1}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/zui/gallery/trash/LenovoTrashListFragment$5;

    invoke-direct {v2, p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment$5;-><init>(Lcom/zui/gallery/trash/LenovoTrashListFragment;)V

    invoke-virtual {v0, v1, v2}, Lzui/app/MessageDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;

    move-result-object v0

    const v1, 0x7f100068

    .line 209
    invoke-virtual {p0, v1}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/zui/gallery/trash/LenovoTrashListFragment$4;

    invoke-direct {v2, p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment$4;-><init>(Lcom/zui/gallery/trash/LenovoTrashListFragment;)V

    invoke-virtual {v0, v1, v2}, Lzui/app/MessageDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Lzui/app/MessageDialog$Builder;->create()Lzui/app/MessageDialog;

    move-result-object v0

    invoke-virtual {v0}, Lzui/app/MessageDialog;->show()V

    return-void
.end method

.method private updateItemView()V
    .locals 4

    .line 871
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->screenOrientation()V

    .line 872
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    iget v1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->spanCount:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 873
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 874
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->trashRecyclerListAdapter:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 878
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getWidth()I

    move-result v0

    .line 879
    iget v1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mViewWidth:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->isMultiChanged()Z

    move-result v1

    if-nez v1, :cond_0

    .line 880
    iput v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mViewWidth:I

    .line 881
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/zui/gallery/trash/-$$Lambda$LenovoTrashListFragment$XiOpuW20RcnxUf0lE9GEWpEXmuM;

    invoke-direct {v1, p0}, Lcom/zui/gallery/trash/-$$Lambda$LenovoTrashListFragment$XiOpuW20RcnxUf0lE9GEWpEXmuM;-><init>(Lcom/zui/gallery/trash/LenovoTrashListFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 884
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->isMultiChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 885
    invoke-virtual {p0, v0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->setMultiChanged(Z)V

    .line 886
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->trashRecyclerListAdapter:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

    invoke-virtual {v0}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->notFyChanged()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public deleteLocalFile()V
    .locals 2

    .line 1321
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zui/gallery/trash/LenovoTrashListFragment$14;

    invoke-direct {v1, p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment$14;-><init>(Lcom/zui/gallery/trash/LenovoTrashListFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1326
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public informSelectedPhotoCount(II)V
    .locals 5

    .line 794
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mTitle:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f100241

    invoke-virtual {p0, v3, v2}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f100237

    if-lez p1, :cond_3

    .line 796
    iget-object v2, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->deleteButton:Landroid/widget/Button;

    if-eqz v2, :cond_0

    .line 797
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 799
    :cond_0
    iget-object v2, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->recoveryButton:Landroid/widget/Button;

    if-eqz v2, :cond_1

    .line 800
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    if-ne p1, p2, :cond_2

    .line 803
    iput-boolean v1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->actionModeSelectAll:Z

    .line 804
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mCheckedAll:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_6

    .line 805
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mCheckedAll:Landroid/widget/TextView;

    const p2, 0x7f1000d6

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 808
    :cond_2
    iput-boolean v4, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->actionModeSelectAll:Z

    .line 809
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mCheckedAll:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_6

    .line 810
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mCheckedAll:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 815
    :cond_3
    iget-object p2, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->deleteButton:Landroid/widget/Button;

    if-eqz p2, :cond_4

    .line 816
    invoke-virtual {p2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 817
    iget-object p2, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->deleteButton:Landroid/widget/Button;

    invoke-virtual {p2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 819
    :cond_4
    iget-object p2, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->recoveryButton:Landroid/widget/Button;

    if-eqz p2, :cond_5

    .line 820
    invoke-virtual {p2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 821
    iget-object p2, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->recoveryButton:Landroid/widget/Button;

    invoke-virtual {p2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_5
    if-nez p1, :cond_6

    .line 824
    iput-boolean v4, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->actionModeSelectAll:Z

    .line 825
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mCheckedAll:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_6

    .line 826
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mCheckedAll:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_6
    :goto_0
    return-void
.end method

.method public isLandScreen()Z
    .locals 1

    .line 244
    iget-boolean v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->isLandScreen:Z

    return v0
.end method

.method public isMultiChanged()Z
    .locals 1

    .line 891
    iget-boolean v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->multiChanged:Z

    return v0
.end method

.method public synthetic lambda$clearCache$2$LenovoTrashListFragment()V
    .locals 1

    .line 976
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->clearDiskCache()V

    return-void
.end method

.method public synthetic lambda$onBackDestroyActionModeOrCurrent$1$LenovoTrashListFragment(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 902
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 903
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->dropoutMode()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$processingData$3$LenovoTrashListFragment()V
    .locals 3

    .line 1021
    invoke-static {}, Lcom/zui/gallery/trash/TrashBackGroundTask;->getTrashItems()Ljava/util/List;

    move-result-object v0

    .line 1022
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1023
    invoke-direct {p0, v0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->processingData(Ljava/util/List;)Ljava/util/List;

    .line 1025
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u9700\u8981\u5220\u9664\u7684\u6570\u636e processingData itemList == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zlq"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public synthetic lambda$updateItemView$0$LenovoTrashListFragment()V
    .locals 1

    .line 882
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->trashRecyclerListAdapter:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

    invoke-virtual {v0}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->notFyChanged()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 135
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 136
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->initListener()V

    .line 138
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->screenOrientation()V

    .line 139
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->recyclerViewRelated()V

    .line 141
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->initBottomBar()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1363
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f080042

    if-eq p1, v0, :cond_2

    const v0, 0x7f0800d2

    if-eq p1, v0, :cond_1

    const v0, 0x7f0801f1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1372
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->dropoutMode()V

    goto :goto_0

    .line 1365
    :cond_1
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->selectAllOrNotAll()V

    goto :goto_0

    .line 1368
    :cond_2
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->startActionMode()V

    const/4 p1, 0x0

    .line 1369
    invoke-direct {p0, p1}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->performHapticFeedback(I)V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 866
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->updateItemView()V

    .line 867
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "LenovoTrashListFragment"

    const-string/jumbo v1, "trashlist onCreate"

    .line 739
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 741
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mLoader:Landroid/content/Loader;

    .line 745
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->clearCache()V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Ljava/util/List<",
            "Lcom/zui/gallery/trash/TrashItem;",
            ">;>;"
        }
    .end annotation

    const-string p1, "LenovoTrashListFragment"

    const-string p2, "list fragment onCreateLoader"

    .line 986
    invoke-static {p1, p2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    new-instance p1, Lcom/zui/gallery/trash/TrashBackGroundTask;

    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Lcom/zui/gallery/trash/TrashBackGroundTask;-><init>(Landroid/content/Context;Z)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b007c

    const/4 v0, 0x0

    .line 117
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f080385

    .line 118
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mLayout:Landroid/widget/LinearLayout;

    const p3, 0x7f0800c1

    .line 119
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mButtonLayout:Landroid/widget/LinearLayout;

    const p2, 0x7f0800f0

    .line 120
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const p2, 0x7f0802c1

    .line 121
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->recoveryButton:Landroid/widget/Button;

    const p2, 0x7f080134

    .line 122
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->deleteButton:Landroid/widget/Button;

    const p2, 0x7f08018c

    .line 123
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mEmptyLayout:Landroid/widget/LinearLayout;

    const p2, 0x7f080384

    .line 124
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mActionBar:Landroid/widget/RelativeLayout;

    const p3, 0x7f0801f1

    .line 125
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mImageBack:Landroid/widget/ImageView;

    .line 126
    iget-object p2, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mActionBar:Landroid/widget/RelativeLayout;

    const p3, 0x7f080042

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mActionMode:Landroid/widget/ImageButton;

    .line 127
    iget-object p2, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mActionBar:Landroid/widget/RelativeLayout;

    const p3, 0x7f0800d2

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mCheckedAll:Landroid/widget/TextView;

    .line 128
    iget-object p2, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mActionBar:Landroid/widget/RelativeLayout;

    const p3, 0x7f080367

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mTitle:Landroid/widget/TextView;

    .line 129
    new-instance p2, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

    invoke-direct {p2, p0}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;-><init>(Lcom/zui/gallery/trash/LenovoTrashListFragment;)V

    iput-object p2, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->trashRecyclerListAdapter:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 952
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    const-string v0, "LenovoTrashListFragment"

    const-string/jumbo v1, "trashlist onDestroy"

    .line 953
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->clearCache()V

    .line 957
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 958
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 76
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Ljava/util/List<",
            "Lcom/zui/gallery/trash/TrashItem;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/zui/gallery/trash/TrashItem;",
            ">;)V"
        }
    .end annotation

    .line 992
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "list fragment onLoadFinished data.size()"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " login:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/cloud/CloudManager;->isLogin()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " isAutoSyncAllowed:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 994
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/cloud/CloudManager;->isAutoSyncAllowed()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LenovoTrashListFragment"

    .line 992
    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-gtz p1, :cond_0

    .line 999
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->trashRecyclerListAdapter:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

    invoke-virtual {p1, p2}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->setData(Ljava/util/List;)V

    .line 1000
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 1001
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mEmptyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1002
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mActionMode:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1004
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 1005
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 1006
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mEmptyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1007
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->trashRecyclerListAdapter:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

    invoke-virtual {p1, p2}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->setData(Ljava/util/List;)V

    .line 1008
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mActionMode:Landroid/widget/ImageButton;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1011
    :cond_1
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->processingData()V

    .line 1014
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->startLoadCloudData()V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Ljava/util/List<",
            "Lcom/zui/gallery/trash/TrashItem;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 1

    const/4 v0, 0x1

    .line 859
    invoke-virtual {p0, v0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->setMultiChanged(Z)V

    .line 860
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->updateItemView()V

    .line 861
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 942
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 943
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mLoader:Landroid/content/Loader;

    if-eqz v0, :cond_0

    .line 944
    invoke-virtual {v0}, Landroid/content/Loader;->stopLoading()V

    :cond_0
    const-string v0, "LenovoTrashListFragment"

    const-string/jumbo v1, "trashlist onPause"

    .line 947
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 834
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 835
    sget-boolean v0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->isDelete:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->isRestore:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 839
    :cond_0
    sget-boolean v0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->isOnCreateTrashDetail:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->isDelete:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->isRestore:Z

    if-nez v0, :cond_1

    .line 841
    sput-boolean v1, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->isOnCreateTrashDetail:Z

    goto :goto_1

    .line 842
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mLoader:Landroid/content/Loader;

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->isOnCreateTrashDetail:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->isDelete:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->isRestore:Z

    if-nez v0, :cond_3

    .line 843
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mLoader:Landroid/content/Loader;

    invoke-virtual {v0}, Landroid/content/Loader;->forceLoad()V

    goto :goto_1

    .line 836
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->isDeleteOrRestore()V

    .line 838
    sput-boolean v1, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->isOnCreateTrashDetail:Z

    .line 845
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->onBackDestroyActionModeOrCurrent()V

    .line 846
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mViewWidth:I

    const-string v0, "LenovoTrashListFragment"

    const-string/jumbo v1, "trashlist onResume"

    .line 847
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackPressed()V
    .locals 0

    .line 1409
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->dropoutMode()V

    return-void
.end method

.method public setMultiChanged(Z)V
    .locals 0

    .line 895
    iput-boolean p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->multiChanged:Z

    return-void
.end method

.method public startActionMode()V
    .locals 2

    .line 779
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mCheckedAll:Landroid/widget/TextView;

    const v1, 0x7f100237

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x1

    .line 781
    invoke-direct {p0, v0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->setVisibility(Z)V

    .line 783
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->trashRecyclerListAdapter:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

    invoke-virtual {v0}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->startActionMode()V

    const/4 v0, 0x0

    .line 785
    iput-boolean v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->actionModeSelectAll:Z

    .line 787
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->navigationBarHeight()V

    .line 788
    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 789
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01004a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 790
    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
