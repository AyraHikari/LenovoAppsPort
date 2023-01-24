.class public Lcom/zui/gallery/trash/LenovoTrashDetailFragment;
.super Landroid/app/Fragment;
.source "LenovoTrashDetailFragment.java"


# static fields
.field private static final INDIA_LANGUAGE:Ljava/lang/String; = "ta"

.field private static final TAG:Ljava/lang/String; = "LenovoTrashDetailFragment"

.field public static cloudName:Ljava/lang/String; = ""

.field public static isDelete:Z = false

.field public static isOnCreateTrashDetail:Z = false

.field public static isRestore:Z = false

.field private static mTrash_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/trash/TrashItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field bottomToolBar:Lzui/widget/BottomToolBar;

.field deleteButton:Lzui/widget/BottomBarItem;

.field private errMsg:Ljava/lang/String;

.field handler:Landroid/os/Handler;

.field private imagePath:Ljava/lang/String;

.field private mAttacher:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

.field private mBackGroundView:Landroid/view/View;

.field private mBar:Landroid/app/ActionBar;

.field private mInMultiWindowMode:Z

.field private mIsLand:Z

.field private mIsNavbarHeight:I

.field private mIsNavigationShowing:Z

.field private mIsPad:Z

.field private mIsWorkMode:Z

.field private mPhotoView:Lcom/github/chrisbanes/photoview/PhotoView;

.field mPrgressBar:Landroid/widget/ProgressBar;

.field private mProgressDialogX:Lzui/app/ProgressDialogX;

.field private mTitleText:Landroid/widget/TextView;

.field private position:I

.field previewPager:Lcom/zui/gallery/trash/TrashDetailViewPager;

.field recoveryButton:Lzui/widget/BottomBarItem;

.field private trashItem:Lcom/zui/gallery/trash/TrashItem;

.field trashPagerAdapter:Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;

.field private videoView:Landroid/widget/VideoView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->handler:Landroid/os/Handler;

    const-string v0, ""

    .line 92
    iput-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->errMsg:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/trash/LenovoTrashDetailFragment;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->trueDeletion()V

    return-void
.end method

.method static synthetic access$100(Lcom/zui/gallery/trash/LenovoTrashDetailFragment;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->trueRestore()V

    return-void
.end method

.method static synthetic access$200(Lcom/zui/gallery/trash/LenovoTrashDetailFragment;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->deleteFile()V

    return-void
.end method

.method static synthetic access$300(Lcom/zui/gallery/trash/LenovoTrashDetailFragment;Z)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->conformedDeleteRestorePhotos(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/zui/gallery/trash/LenovoTrashDetailFragment;)Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->errMsg:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/zui/gallery/trash/LenovoTrashDetailFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->errMsg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/zui/gallery/trash/LenovoTrashDetailFragment;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->finish()V

    return-void
.end method

.method static synthetic access$600(Lcom/zui/gallery/trash/LenovoTrashDetailFragment;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->toast()V

    return-void
.end method

.method static synthetic access$700(Lcom/zui/gallery/trash/LenovoTrashDetailFragment;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->closeProgressDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/zui/gallery/trash/LenovoTrashDetailFragment;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->conformedDeletePhotos()V

    return-void
.end method

.method private addToVideoGroup()V
    .locals 11

    const/4 v0, 0x0

    .line 395
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->trashItem:Lcom/zui/gallery/trash/TrashItem;

    invoke-virtual {v1}, Lcom/zui/gallery/trash/TrashItem;->getOld_full_path()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, "/DCIM/Camera"

    .line 397
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    const-string v3, "-VID_"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v5, :cond_0

    .line 398
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".trashed-"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "VID"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 400
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/zui/gallery/database/GalleryContract$ShadowVideoShips;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/zui/gallery/database/GalleryContract$ShadowVideoShips;->PROJECTIONS:[Ljava/lang/String;

    const-string v8, "_data=? "

    const/4 v1, 0x1

    new-array v9, v1, [Ljava/lang/String;

    aput-object v2, v9, v4

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 405
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 406
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v3, 0x6

    if-eq v1, v3, :cond_1

    const/16 v4, 0x8

    if-eq v1, v4, :cond_1

    const/16 v4, 0xa

    if-eq v1, v4, :cond_1

    const/16 v4, 0xb

    if-eq v1, v4, :cond_1

    const/16 v4, 0xd

    if-ne v1, v4, :cond_2

    .line 410
    :cond_1
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/zui/gallery/data/GroupBucketHelper;->addToVideoGroup(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-eqz v0, :cond_3

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "LenovoTrashDetailFragment"

    .line 414
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreItem: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 417
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void

    :goto_1
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 419
    :cond_4
    throw v1
.end method

.method private clearList()V
    .locals 1

    .line 480
    sget-object v0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->mTrash_list:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 481
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 482
    sput-object v0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->mTrash_list:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method private closeProgressDialog()V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->mProgressDialogX:Lzui/app/ProgressDialogX;

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0}, Lzui/app/ProgressDialogX;->dismiss()V

    const/4 v0, 0x0

    .line 194
    iput-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->mProgressDialogX:Lzui/app/ProgressDialogX;

    :cond_0
    return-void
.end method

.method private conformedDeletePhotos()V
    .locals 6

    .line 510
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->trashItem:Lcom/zui/gallery/trash/TrashItem;

    invoke-virtual {v0}, Lcom/zui/gallery/trash/TrashItem;->isCloudyItem()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 511
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/gallery/cloud/CloudUtils;->isNetConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 512
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f1002c5

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 515
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 516
    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->trashItem:Lcom/zui/gallery/trash/TrashItem;

    invoke-virtual {v1}, Lcom/zui/gallery/trash/TrashItem;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    invoke-direct {p0, v0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->startDeleteCloudTrashItem(Ljava/util/List;)V

    goto :goto_0

    .line 520
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/zui/gallery/database/GalleryContract$TrashFiles;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->trashItem:Lcom/zui/gallery/trash/TrashItem;

    invoke-virtual {v5}, Lcom/zui/gallery/trash/TrashItem;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 521
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->imagePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 522
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    sput-boolean v0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->isDelete:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 524
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception occure during deleteing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->imagePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LenovoTrashDetailFragment"

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 528
    :goto_0
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private conformedDeleteRestorePhotos(Z)V
    .locals 1

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 211
    invoke-direct {p0, v0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->restoreLocalOrCloud(Ljava/util/List;)V

    goto :goto_0

    .line 214
    :cond_0
    invoke-direct {p0, v0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->deleteLocalOrCloud(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method private createProgressDialog(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 175
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->mProgressDialogX:Lzui/app/ProgressDialogX;

    if-nez p1, :cond_1

    .line 176
    new-instance p1, Lzui/app/ProgressDialogX;

    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lzui/app/ProgressDialogX;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->mProgressDialogX:Lzui/app/ProgressDialogX;

    const v1, 0x7f100297

    .line 177
    invoke-virtual {p1, v1}, Lzui/app/ProgressDialogX;->setMessage(I)V

    .line 178
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->mProgressDialogX:Lzui/app/ProgressDialogX;

    invoke-virtual {p1, v0}, Lzui/app/ProgressDialogX;->setCancelable(Z)V

    .line 179
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->mProgressDialogX:Lzui/app/ProgressDialogX;

    invoke-virtual {p1}, Lzui/app/ProgressDialogX;->show()V

    goto :goto_0

    .line 182
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->mProgressDialogX:Lzui/app/ProgressDialogX;

    if-nez p1, :cond_1

    .line 183
    new-instance p1, Lzui/app/ProgressDialogX;

    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lzui/app/ProgressDialogX;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->mProgressDialogX:Lzui/app/ProgressDialogX;

    const v1, 0x7f10029b

    .line 184
    invoke-virtual {p1, v1}, Lzui/app/ProgressDialogX;->setMessage(I)V

    .line 185
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->mProgressDialogX:Lzui/app/ProgressDialogX;

    invoke-virtual {p1, v0}, Lzui/app/ProgressDialogX;->setCancelable(Z)V

    .line 186
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->mProgressDialogX:Lzui/app/ProgressDialogX;

    invoke-virtual {p1}, Lzui/app/ProgressDialogX;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method private deleteFile()V
    .locals 2

    const/4 v0, 0x1

    .line 164
    invoke-direct {p0, v0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->createProgressDialog(Z)V

    .line 165
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zui/gallery/trash/LenovoTrashDetailFragment$4;

    invoke-direct {v1, p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment$4;-><init>(Lcom/zui/gallery/trash/LenovoTrashDetailFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 170
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private deleteLocalOrCloud(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->trashItem:Lcom/zui/gallery/trash/TrashItem;

    if-eqz v0, :cond_2

    .line 220
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 222
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->trashItem:Lcom/zui/gallery/trash/TrashItem;

    invoke-virtual {v0}, Lcom/zui/gallery/trash/TrashItem;->isCloudyItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->trashItem:Lcom/zui/gallery/trash/TrashItem;

    invoke-virtual {v0}, Lcom/zui/gallery/trash/TrashItem;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_0
    const-string v0, ""

    .line 226
    sput-object v0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->cloudName:Ljava/lang/String;

    .line 229
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->trashItem:Lcom/zui/gallery/trash/TrashItem;

    invoke-virtual {v0}, Lcom/zui/gallery/trash/TrashItem;->isImage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->trashItem:Lcom/zui/gallery/trash/TrashItem;

    invoke-virtual {v1}, Lcom/zui/gallery/trash/TrashItem;->getId()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 232
    :cond_1
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->trashItem:Lcom/zui/gallery/trash/TrashItem;

    invoke-virtual {v1}, Lcom/zui/gallery/trash/TrashItem;->getId()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    const/16 v1, 0x1e

    .line 235
    invoke-static {v1}, Lcom/zui/gallery/util/GalleryUtils;->isAtLeastBuildVersion(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 236
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x3

    const-string v3, "android:query-arg-match-trashed"

    .line 237
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x0

    const-string v3, "android:query-arg-allow-movement"

    .line 238
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 240
    :try_start_0
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Landroid/os/Bundle;)I

    const/4 v0, 0x1

    .line 241
    sput-boolean v0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->isDelete:Z

    .line 242
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->trashItem:Lcom/zui/gallery/trash/TrashItem;

    invoke-virtual {v0}, Lcom/zui/gallery/trash/TrashItem;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->cloudName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 244
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete exception as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zlq"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->finish()V

    .line 250
    :goto_1
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->deleteShadowVideoShips()V

    .line 255
    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 256
    invoke-direct {p0, p1}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->startDeleteCloudTrashItem(Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method private deleteShadowVideoShips()V
    .locals 12

    const/4 v0, 0x0

    .line 263
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->trashItem:Lcom/zui/gallery/trash/TrashItem;

    invoke-virtual {v1}, Lcom/zui/gallery/trash/TrashItem;->getOld_full_path()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 265
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/DCIM/Camera"

    .line 266
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    const-string v4, "-VID_"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v6, :cond_0

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ".trashed-"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "VID"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    const-string v1, "\'"

    .line 269
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\',"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/zui/gallery/database/GalleryContract$ShadowVideoShips;->CONTENT_URI:Landroid/net/Uri;

    sget-object v8, Lcom/zui/gallery/database/GalleryContract$ShadowVideoShips;->PROJECTIONS:[Ljava/lang/String;

    const-string v9, "_data=? "

    const/4 v1, 0x1

    new-array v10, v1, [Ljava/lang/String;

    aput-object v2, v10, v5

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 275
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 276
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 277
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zui/gallery/data/GroupBucketHelper;->batchDeleteShadowVideoShips(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "LenovoTrashDetailFragment"

    .line 281
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteLocalOrCloud: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 284
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 286
    :cond_2
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->finish()V

    return-void

    :goto_1
    if-eqz v0, :cond_3

    .line 284
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 286
    :cond_3
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->finish()V

    .line 287
    throw v1
.end method

.method private findOutIndex(Ljava/util/List;Lcom/zui/gallery/trash/TrashItem;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/gallery/trash/TrashItem;",
            ">;",
            "Lcom/zui/gallery/trash/TrashItem;",
            ")I"
        }
    .end annotation

    .line 747
    invoke-virtual {p2}, Lcom/zui/gallery/trash/TrashItem;->getId()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    .line 748
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 749
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/trash/TrashItem;

    invoke-virtual {v2}, Lcom/zui/gallery/trash/TrashItem;->getId()I

    move-result v2

    if-ne v2, p2, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method private finish()V
    .locals 4

    .line 458
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/zui/gallery/trash/LenovoTrashDetailFragment$7;

    invoke-direct {v1, p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment$7;-><init>(Lcom/zui/gallery/trash/LenovoTrashDetailFragment;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private getDevicesStatus()V
    .locals 3

    .line 646
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 647
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->mIsLand:Z

    .line 648
    invoke-static {v0}, Lcom/zui/gallery/util/DeviceTypeUtils;->isPad(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->mIsPad:Z

    .line 649
    invoke-static {v0}, Lcom/zui/gallery/util/DeviceTypeUtils;->isWorkingMode(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->mIsWorkMode:Z

    .line 650
    invoke-static {v0}, Lcom/zui/gallery/util/DisplayPropertyUtils;->getWorkNavbarHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->mIsNavbarHeight:I

    .line 651
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->mInMultiWindowMode:Z

    .line 652
    invoke-static {v0}, Lcom/zui/gallery/util/DisplayPropertyUtils;->isNavigationShowing(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->mIsNavigationShowing:Z

    return-void
.end method

.method public static getTrashList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/trash/TrashItem;",
            ">;"
        }
    .end annotation

    .line 487
    sget-object v0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->mTrash_list:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 488
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->mTrash_list:Ljava/util/ArrayList;

    .line 490
    :cond_0
    sget-object v0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->mTrash_list:Ljava/util/ArrayList;

    return-object v0
.end method

.method private initBottomBarListener()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->bottomToolBar:Lzui/widget/BottomToolBar;

    new-instance v1, Lcom/zui/gallery/trash/LenovoTrashDetailFragment$1;

    invoke-direct {v1, p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment$1;-><init>(Lcom/zui/gallery/trash/LenovoTrashDetailFragment;)V

    invoke-virtual {v0, v1}, Lzui/widget/BottomToolBar;->setOnSelectoinChangeListener(Lzui/widget/BottomTabBar$OnSelectionChangeListener;)V

    return-void
.end method

.method private insertGroupBucketToGroupTable(Lcom/zui/gallery/trash/TrashItem;)V
    .locals 7

    const-string v0, ".trashed"

    .line 364
    :try_start_0
    invoke-virtual {p1}, Lcom/zui/gallery/trash/TrashItem;->getOld_full_path()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 366
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

    .line 371
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 375
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "/.trashed"

    .line 376
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "/"

    .line 377
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 379
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0, p1}, Lcom/zui/gallery/util/GroupUtils;->isFolderInGroup(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-lez p1, :cond_2

    move v1, v2

    .line 381
    :cond_2
    invoke-static {v0}, Lcom/zui/gallery/util/GroupUtils;->isGroupFolderExist(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    if-nez v1, :cond_4

    .line 383
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getActivity()Landroid/app/Activity;

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

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertGroupBucketToGroupTable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LenovoTrashDetailFragment"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method

.method static synthetic lambda$resetNavigation$1(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    .line 619
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    return-object p1
.end method

.method private loadActionBar()V
    .locals 6

    .line 579
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    const/4 v1, -0x1

    const/16 v2, 0x11

    invoke-direct {v0, v1, v1, v2}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    .line 583
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f0b00e3

    const/4 v3, 0x0

    .line 584
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0801f1

    .line 585
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 586
    new-instance v3, Lcom/zui/gallery/trash/-$$Lambda$LenovoTrashDetailFragment$1k3zJEIP3XtyIdJ7A8hmIuU3w6c;

    invoke-direct {v3, p0}, Lcom/zui/gallery/trash/-$$Lambda$LenovoTrashDetailFragment$1k3zJEIP3XtyIdJ7A8hmIuU3w6c;-><init>(Lcom/zui/gallery/trash/LenovoTrashDetailFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f080367

    .line 589
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->mTitleText:Landroid/widget/TextView;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 590
    iget v4, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->position:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getTrashList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const v4, 0x7f1000ad

    invoke-virtual {p0, v4, v3}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 591
    iget-object v2, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->mBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v1, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 592
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->mBar:Landroid/app/ActionBar;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 593
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->mBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    return-void
.end method

.method private loadPhoto()V
    .locals 3

    .line 671
    invoke-static {}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getTrashList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 673
    new-instance v0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;

    invoke-direct {v0, p0}, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;-><init>(Lcom/zui/gallery/trash/LenovoTrashDetailFragment;)V

    iput-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->trashPagerAdapter:Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;

    .line 674
    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->previewPager:Lcom/zui/gallery/trash/TrashDetailViewPager;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/trash/TrashDetailViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 675
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->previewPager:Lcom/zui/gallery/trash/TrashDetailViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/zui/gallery/trash/TrashDetailViewPager;->setOffscreenPageLimit(I)V

    .line 677
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->trashPagerAdapter:Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;

    invoke-static {}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getTrashList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->setData(Ljava/util/List;)V

    .line 678
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->trashPagerAdapter:Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;

    invoke-virtual {v0}, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->getData()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->trashItem:Lcom/zui/gallery/trash/TrashItem;

    invoke-direct {p0, v0, v1}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->findOutIndex(Ljava/util/List;Lcom/zui/gallery/trash/TrashItem;)I

    move-result v0

    .line 679
    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->previewPager:Lcom/zui/gallery/trash/TrashDetailViewPager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/zui/gallery/trash/TrashDetailViewPager;->setVisibility(I)V

    .line 680
    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->previewPager:Lcom/zui/gallery/trash/TrashDetailViewPager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/zui/gallery/trash/TrashDetailViewPager;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method

.method private nationBarControl(Z)Z
    .locals 1

    .line 692
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/zui/gallery/util/DisplayPropertyUtils;->setNationBarVisible(Landroid/app/Activity;Z)Z

    move-result p1

    return p1
.end method

.method private resetNavigation()V
    .locals 2

    .line 616
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0802ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f08020a

    .line 617
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 618
    sget-object v1, Lcom/zui/gallery/trash/-$$Lambda$LenovoTrashDetailFragment$KFubkVzxY5EXlwR3PCCOm-zSdwc;->INSTANCE:Lcom/zui/gallery/trash/-$$Lambda$LenovoTrashDetailFragment$KFubkVzxY5EXlwR3PCCOm-zSdwc;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 622
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->setTitleBarColor()V

    return-void
.end method

.method private resetNavigationBarMargin()V
    .locals 8

    .line 696
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0802ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f08020a

    .line 697
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f0803a1

    .line 698
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f080098

    .line 699
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lzui/widget/BottomToolBar;

    if-eqz v1, :cond_6

    .line 701
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 702
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 703
    iget-boolean v6, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->mIsNavigationShowing:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->mInMultiWindowMode:Z

    if-nez v6, :cond_3

    .line 704
    iget-boolean v6, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->mIsLand:Z

    if-eqz v6, :cond_2

    .line 705
    iget-boolean v6, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->mIsPad:Z

    if-eqz v6, :cond_0

    .line 706
    invoke-virtual {v5, v7, v7, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 707
    iget v6, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->mIsNavbarHeight:I

    invoke-virtual {v1, v7, v7, v7, v6}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    goto :goto_0

    .line 709
    :cond_0
    invoke-virtual {v5, v7, v7, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 710
    invoke-virtual {v1, v7, v7, v7, v7}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 712
    :goto_0
    iget-boolean v6, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->mIsWorkMode:Z

    if-eqz v6, :cond_1

    .line 713
    iget v6, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->mIsNavbarHeight:I

    invoke-virtual {v1, v7, v7, v7, v6}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    :cond_1
    const/4 v6, 0x1

    .line 715
    invoke-direct {p0, v6}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->nationBarControl(Z)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 717
    invoke-virtual {v1, v7, v7, v7, v7}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    goto :goto_1

    .line 720
    :cond_2
    iget v6, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->mIsNavbarHeight:I

    invoke-virtual {v5, v7, v7, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 721
    invoke-virtual {v1, v7, v7, v7, v7}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    goto :goto_1

    .line 726
    :cond_3
    iget-boolean v6, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->mInMultiWindowMode:Z

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->mIsNavigationShowing:Z

    if-eqz v6, :cond_4

    goto :goto_1

    .line 729
    :cond_4
    invoke-virtual {v5, v7, v7, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 730
    invoke-virtual {v1, v7, v7, v7, v7}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 732
    :cond_5
    :goto_1
    invoke-virtual {v3}, Lzui/widget/BottomToolBar;->getMeasuredHeight()I

    move-result v3

    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 733
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 734
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 736
    :cond_6
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method

.method private restoreItem()V
    .locals 10

    .line 312
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->trashItem:Lcom/zui/gallery/trash/TrashItem;

    invoke-direct {p0, v0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->insertGroupBucketToGroupTable(Lcom/zui/gallery/trash/TrashItem;)V

    const-string v0, ""

    .line 313
    sput-object v0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->cloudName:Ljava/lang/String;

    .line 315
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->trashItem:Lcom/zui/gallery/trash/TrashItem;

    invoke-virtual {v0}, Lcom/zui/gallery/trash/TrashItem;->isImage()Z

    move-result v0

    const-string v1, "ex as "

    const/4 v2, 0x0

    .line 340
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "is_trashed"

    const/4 v4, 0x0

    const-string/jumbo v5, "zlq"

    if-eqz v0, :cond_0

    .line 316
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->trashItem:Lcom/zui/gallery/trash/TrashItem;

    invoke-virtual {v6}, Lcom/zui/gallery/trash/TrashItem;->getId()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 317
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 318
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 319
    invoke-virtual {v7, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restore type onlyDeleteGroupData 2222 id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->trashItem:Lcom/zui/gallery/trash/TrashItem;

    invoke-virtual {v3}, Lcom/zui/gallery/trash/TrashItem;->getId()I

    move-result v3

    int-to-long v8, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " baseUri ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :try_start_0
    invoke-virtual {v6, v0, v7, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 324
    iget-object v2, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->trashItem:Lcom/zui/gallery/trash/TrashItem;

    invoke-virtual {v2}, Lcom/zui/gallery/trash/TrashItem;->getName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->cloudName:Ljava/lang/String;

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "total restore image count1 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    .line 327
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 328
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->finish()V

    goto/16 :goto_1

    .line 334
    :cond_0
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->trashItem:Lcom/zui/gallery/trash/TrashItem;

    invoke-virtual {v6}, Lcom/zui/gallery/trash/TrashItem;->getId()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 335
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 337
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 338
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "restore type video 22222 id ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->trashItem:Lcom/zui/gallery/trash/TrashItem;

    invoke-virtual {v9}, Lcom/zui/gallery/trash/TrashItem;->getId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " baseUri = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-virtual {v7, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 343
    :try_start_1
    invoke-virtual {v6, v0, v7, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 344
    iget-object v2, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->trashItem:Lcom/zui/gallery/trash/TrashItem;

    invoke-virtual {v2}, Lcom/zui/gallery/trash/TrashItem;->getName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->cloudName:Ljava/lang/String;

    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restore total video count1 "

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

    .line 347
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 348
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->finish()V

    .line 354
    :goto_0
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->addToVideoGroup()V

    .line 357
    :goto_1
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f10020a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->errMsg:Ljava/lang/String;

    const/4 v0, 0x1

    .line 358
    sput-boolean v0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->isRestore:Z

    .line 359
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->finish()V

    return-void
.end method

.method private restoreLocalOrCloud(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->trashItem:Lcom/zui/gallery/trash/TrashItem;

    if-eqz v0, :cond_1

    .line 292
    invoke-virtual {v0}, Lcom/zui/gallery/trash/TrashItem;->isCloudyItem()Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->restoreItem()V

    goto :goto_0

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->trashItem:Lcom/zui/gallery/trash/TrashItem;

    invoke-virtual {v0}, Lcom/zui/gallery/trash/TrashItem;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 300
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zui/gallery/util/GroupUtils;->setCloudTrashRecovery(Landroid/content/Context;Z)V

    .line 301
    invoke-direct {p0, p1}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->startRecoveryCloudTrashItem(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public static setData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/trash/TrashItem;",
            ">;)V"
        }
    .end annotation

    .line 663
    sget-object v0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->mTrash_list:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 664
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->mTrash_list:Ljava/util/ArrayList;

    .line 666
    :cond_0
    sget-object v0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->mTrash_list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 667
    sget-object v0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->mTrash_list:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private setTitleBarColor()V
    .locals 4

    .line 626
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->mBackGroundView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 629
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 630
    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->mBackGroundView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/gallery/util/DisplayPropertyUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    .line 631
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06004f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 632
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 633
    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->mBackGroundView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 635
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->mBackGroundView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f05020a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 636
    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->mBackGroundView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

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

    .line 532
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/gallery/cloud/CloudUtils;->isNetConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 533
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f1002c5

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->errMsg:Ljava/lang/String;

    .line 534
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->finish()V

    return-void

    .line 538
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/cloud/CloudManager;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/cloud/CloudManager;->isAutoSyncAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "cloudtrash_delete"

    const-string v1, " call startDeleteCloudTrashItem"

    .line 539
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/cloud/CloudManager;->getiBinder()Lcom/zui/cloudservice/lpcs/ILPCSManager;

    move-result-object v0

    new-instance v1, Lcom/zui/gallery/trash/LenovoTrashDetailFragment$9;

    invoke-direct {v1, p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment$9;-><init>(Lcom/zui/gallery/trash/LenovoTrashDetailFragment;)V

    invoke-interface {v0, p1, v1}, Lcom/zui/cloudservice/lpcs/ILPCSManager;->dumpTrash(Ljava/util/List;Lcom/zui/cloudservice/lpcs/ILPCSResultCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 556
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private startRecoveryCloudTrashItem(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 423
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/gallery/cloud/CloudUtils;->isNetConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f1002c5

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->errMsg:Ljava/lang/String;

    .line 425
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->finish()V

    return-void

    .line 429
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/cloud/CloudManager;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/cloud/CloudManager;->isAutoSyncAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "zlq"

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " call startRecoveryCloudTrashItem"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/cloud/CloudManager;->getiBinder()Lcom/zui/cloudservice/lpcs/ILPCSManager;

    move-result-object v0

    new-instance v1, Lcom/zui/gallery/trash/LenovoTrashDetailFragment$6;

    invoke-direct {v1, p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment$6;-><init>(Lcom/zui/gallery/trash/LenovoTrashDetailFragment;)V

    invoke-interface {v0, p1, v1}, Lcom/zui/cloudservice/lpcs/ILPCSManager;->pickTrash(Ljava/util/List;Lcom/zui/cloudservice/lpcs/ILPCSResultCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 454
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private toast()V
    .locals 2

    .line 307
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->errMsg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/zui/gallery/util/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private trueDeletion()V
    .locals 3

    .line 144
    new-instance v0, Lzui/app/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/gallery/util/GalleryUtils;->getCurrentMessageDialogTheme(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lzui/app/MessageDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f100299

    .line 145
    invoke-virtual {p0, v1}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzui/app/MessageDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lzui/app/MessageDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 146
    invoke-virtual {v0, v1}, Lzui/app/MessageDialog$Builder;->setMessageDialogType(I)Lzui/app/MessageDialog$Builder;

    move-result-object v0

    const v1, 0x7f1000b9

    .line 147
    invoke-virtual {p0, v1}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/zui/gallery/trash/LenovoTrashDetailFragment$3;

    invoke-direct {v2, p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment$3;-><init>(Lcom/zui/gallery/trash/LenovoTrashDetailFragment;)V

    invoke-virtual {v0, v1, v2}, Lzui/app/MessageDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;

    move-result-object v0

    const v1, 0x7f100068

    .line 153
    invoke-virtual {p0, v1}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/zui/gallery/trash/LenovoTrashDetailFragment$2;

    invoke-direct {v2, p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment$2;-><init>(Lcom/zui/gallery/trash/LenovoTrashDetailFragment;)V

    invoke-virtual {v0, v1, v2}, Lzui/app/MessageDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Lzui/app/MessageDialog$Builder;->create()Lzui/app/MessageDialog;

    move-result-object v0

    invoke-virtual {v0}, Lzui/app/MessageDialog;->show()V

    return-void
.end method

.method private trueRestore()V
    .locals 2

    const/4 v0, 0x0

    .line 198
    invoke-direct {p0, v0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->createProgressDialog(Z)V

    .line 199
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zui/gallery/trash/LenovoTrashDetailFragment$5;

    invoke-direct {v1, p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment$5;-><init>(Lcom/zui/gallery/trash/LenovoTrashDetailFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 204
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public dismissProgressDialog()V
    .locals 2

    .line 741
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->previewPager:Lcom/zui/gallery/trash/TrashDetailViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/trash/TrashDetailViewPager;->setVisibility(I)V

    .line 742
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->mPrgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$loadActionBar$0$LenovoTrashDetailFragment(Landroid/view/View;)V
    .locals 0

    .line 587
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 119
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 120
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->imagePath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 121
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->initBottomBarListener()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 657
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 660
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->setTitleBarColor()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "LenovoTrashDetailFragment"

    const-string v1, "detailfragment oncreate"

    .line 562
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 564
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "com.zui.gallery.trash_item"

    .line 565
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/trash/TrashItem;

    iput-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->trashItem:Lcom/zui/gallery/trash/TrashItem;

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zui/gallery/database/GalleryContract$TrashFiles;->TRASH_DIRECTORY_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->trashItem:Lcom/zui/gallery/trash/TrashItem;

    invoke-virtual {v1}, Lcom/zui/gallery/trash/TrashItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->imagePath:Ljava/lang/String;

    const-string v0, "position"

    .line 568
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->position:I

    .line 569
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "trash  List "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getTrashList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "zlq"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->mBar:Landroid/app/ActionBar;

    const/4 v0, 0x1

    .line 571
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 573
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->loadActionBar()V

    .line 574
    invoke-virtual {p0, v0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->setHasOptionsMenu(Z)V

    .line 575
    sput-boolean v0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->isOnCreateTrashDetail:Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b007e

    const/4 v0, 0x0

    .line 107
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0802af

    .line 108
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/zui/gallery/trash/TrashDetailViewPager;

    iput-object p2, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->previewPager:Lcom/zui/gallery/trash/TrashDetailViewPager;

    const p2, 0x7f080098

    .line 109
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lzui/widget/BottomToolBar;

    iput-object p2, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->bottomToolBar:Lzui/widget/BottomToolBar;

    const p3, 0x7f0802c1

    .line 110
    invoke-virtual {p2, p3}, Lzui/widget/BottomToolBar;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lzui/widget/BottomBarItem;

    iput-object p2, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->recoveryButton:Lzui/widget/BottomBarItem;

    .line 111
    iget-object p2, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->bottomToolBar:Lzui/widget/BottomToolBar;

    const p3, 0x7f080134

    invoke-virtual {p2, p3}, Lzui/widget/BottomToolBar;->findItemById(I)Lzui/widget/BottomBarItem;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->deleteButton:Lzui/widget/BottomBarItem;

    const p2, 0x7f0802bc

    .line 112
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->mPrgressBar:Landroid/widget/ProgressBar;

    const p2, 0x7f08008b

    .line 113
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->mBackGroundView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 472
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 473
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 474
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 0

    .line 641
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 642
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->setTitleBarColor()V

    return-void
.end method

.method public onRestoreInstance(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "com.zui.gallery.trash_item"

    .line 601
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/trash/TrashItem;

    iput-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->trashItem:Lcom/zui/gallery/trash/TrashItem;

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 606
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 609
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->resetNavigation()V

    .line 611
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->loadPhoto()V

    return-void
.end method

.method public onSaveInstance(Landroid/os/Bundle;)V
    .locals 2

    .line 597
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->trashItem:Lcom/zui/gallery/trash/TrashItem;

    const-string v1, "com.zui.gallery.trash_item"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 686
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    const/4 v0, 0x0

    .line 687
    invoke-direct {p0, v0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->nationBarControl(Z)Z

    return-void
.end method

.method public scanFile(Ljava/lang/String;)V
    .locals 3

    .line 494
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance p1, Lcom/zui/gallery/trash/LenovoTrashDetailFragment$8;

    invoke-direct {p1, p0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment$8;-><init>(Lcom/zui/gallery/trash/LenovoTrashDetailFragment;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    return-void
.end method

.method public setCurrentImagePath(Ljava/lang/String;)V
    .locals 0

    .line 758
    iput-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->imagePath:Ljava/lang/String;

    return-void
.end method

.method public setCurrentImagePosition(I)V
    .locals 5

    .line 767
    invoke-static {}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getTrashList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 768
    invoke-static {}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getTrashList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 769
    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->trashPagerAdapter:Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;

    if-eqz v1, :cond_0

    .line 770
    invoke-virtual {v1}, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->getData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 772
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 776
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->mTitleText:Landroid/widget/TextView;

    const v2, 0x7f1000ad

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    const/4 p1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, p1

    invoke-virtual {p0, v2, v3}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCurrentTrashItem(Lcom/zui/gallery/trash/TrashItem;)V
    .locals 0

    .line 762
    iput-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->trashItem:Lcom/zui/gallery/trash/TrashItem;

    return-void
.end method
