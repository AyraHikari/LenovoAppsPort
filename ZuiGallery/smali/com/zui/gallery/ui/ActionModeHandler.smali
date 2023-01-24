.class public Lcom/zui/gallery/ui/ActionModeHandler;
.super Ljava/lang/Object;
.source "ActionModeHandler.java"

# interfaces
.implements Lcom/zui/gallery/ui/PopupList$OnPopupItemClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask;,
        Lcom/zui/gallery/ui/ActionModeHandler$GetAllPanoramaSupports;
    }
.end annotation


# static fields
.field private static LIMIT:I = 0x3e8

.field private static final MAX_SELECTED_ITEMS_FOR_PANORAMA_SHARE_INTENT:I = 0xa

.field private static final MAX_SELECTED_ITEMS_FOR_SHARE_INTENT:I = 0x12c

.field private static final SUPPORT_MULTIPLE_MASK:I = 0x107

.field private static final TAG:Ljava/lang/String; = "ActionModeHandler"

.field private static final TITLE_TEXT_VIEW_DEFALUT_WIDTH:I = 0x438

.field private static final TITLE_TEXT_VIEW_SCALED_WIDTH:I = 0x14a


# instance fields
.field private final CLICKPLAYVIEDOICONINTERVAL:I

.field private DEBUG:Z

.field private isAtLeastBuildVersion:Z

.field private isExStorageManager:Z

.field private lastClickTime:J

.field private mActionModeIsShowing:Z

.field private mActionModeView:Landroid/view/ViewGroup;

.field private final mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

.field private mAlertDialog:Lzui/app/ActionDialog;

.field private mComputerDeleteInfoProgressDialog:Landroid/app/ProgressDialog;

.field private mDeleteProgressListener:Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;

.field private mIsGroupAlbum:Z

.field private final mMainHandler:Landroid/os/Handler;

.field private final mMenuExecutor:Lcom/zui/gallery/ui/MenuExecutor;

.field private mMenuTask:Lcom/zui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/gallery/util/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private final mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

.field private mShareActionProvider:Landroid/widget/ShareActionProvider;

.field private mShareMenuItem:Landroid/view/MenuItem;

.field private mSharePanoramaActionProvider:Landroid/widget/ShareActionProvider;

.field private mSharePanoramaMenuItem:Landroid/view/MenuItem;

.field private final mShareTargetSelectedListener:Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;

.field private selct_all_button:Landroid/widget/TextView;

.field private select_all_button_container:Landroid/widget/LinearLayout;

.field private selection_cancel_container:Landroid/widget/LinearLayout;

.field private selection_info:Landroid/widget/TextView;

.field shareDialog:Landroid/app/AlertDialog;

.field private final shareFileCountLimit:I

.field private share_intent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/ui/SelectionManager;Landroid/view/ViewGroup;)V
    .locals 1

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 123
    iput v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->shareFileCountLimit:I

    const/4 v0, 0x1

    .line 130
    iput-boolean v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->DEBUG:Z

    const/4 v0, 0x0

    .line 140
    iput-boolean v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActionModeIsShowing:Z

    const/16 v0, 0x12c

    .line 146
    iput v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->CLICKPLAYVIEDOICONINTERVAL:I

    const/16 v0, 0x1e

    .line 148
    invoke-static {v0}, Lcom/zui/gallery/util/GalleryUtils;->isAtLeastBuildVersion(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->isAtLeastBuildVersion:Z

    .line 149
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->isExStorageManager()Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->isExStorageManager:Z

    .line 536
    new-instance v0, Lcom/zui/gallery/ui/ActionModeHandler$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/ui/ActionModeHandler$1;-><init>(Lcom/zui/gallery/ui/ActionModeHandler;)V

    iput-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mShareTargetSelectedListener:Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;

    .line 195
    invoke-static {p1}, Lcom/zui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/app/AbstractGalleryActivity;

    iput-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 196
    invoke-static {p2}, Lcom/zui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/ui/SelectionManager;

    iput-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    .line 197
    new-instance v0, Lcom/zui/gallery/ui/MenuExecutor;

    invoke-direct {v0, p1, p2}, Lcom/zui/gallery/ui/MenuExecutor;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/ui/SelectionManager;)V

    iput-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mMenuExecutor:Lcom/zui/gallery/ui/MenuExecutor;

    .line 198
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mMainHandler:Landroid/os/Handler;

    .line 200
    iput-object p3, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActionModeView:Landroid/view/ViewGroup;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/ui/ActionModeHandler;)Landroid/app/ProgressDialog;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mComputerDeleteInfoProgressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$002(Lcom/zui/gallery/ui/ActionModeHandler;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mComputerDeleteInfoProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/zui/gallery/ui/ActionModeHandler;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/zui/gallery/ui/ActionModeHandler;Lcom/zui/gallery/util/Future;)Lcom/zui/gallery/util/Future;
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mMenuTask:Lcom/zui/gallery/util/Future;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/zui/gallery/ui/ActionModeHandler;)Landroid/os/Handler;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/zui/gallery/ui/ActionModeHandler;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->share_intent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/zui/gallery/ui/ActionModeHandler;Lcom/zui/gallery/util/ThreadPool$JobContext;I)Landroid/content/Intent;
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/ui/ActionModeHandler;->computeSharingIntent(Lcom/zui/gallery/util/ThreadPool$JobContext;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/zui/gallery/ui/ActionModeHandler;Lcom/zui/gallery/data/Path;Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;)I
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/ui/ActionModeHandler;->doDeleteForFloatDialog(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/zui/gallery/ui/ActionModeHandler;Ljava/lang/String;ZZIII)V
    .locals 0

    .line 99
    invoke-direct/range {p0 .. p6}, Lcom/zui/gallery/ui/ActionModeHandler;->addItemToTrashCan(Ljava/lang/String;ZZIII)V

    return-void
.end method

.method static synthetic access$400(Lcom/zui/gallery/ui/ActionModeHandler;)Ljava/lang/String;
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/zui/gallery/ui/ActionModeHandler;->getDeleteToastInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/zui/gallery/ui/ActionModeHandler;)Lcom/zui/gallery/ui/SelectionManager;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/zui/gallery/ui/ActionModeHandler;)Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mDeleteProgressListener:Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;

    return-object p0
.end method

.method static synthetic access$602(Lcom/zui/gallery/ui/ActionModeHandler;Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;)Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mDeleteProgressListener:Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;

    return-object p1
.end method

.method static synthetic access$700(Lcom/zui/gallery/ui/ActionModeHandler;)Lcom/zui/gallery/ui/MenuExecutor;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mMenuExecutor:Lcom/zui/gallery/ui/MenuExecutor;

    return-object p0
.end method

.method static synthetic access$900(Lcom/zui/gallery/ui/ActionModeHandler;Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/util/ArrayList;
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/ActionModeHandler;->getSelectedMediaObjects(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private addItemToTrashCan(Ljava/lang/String;ZZIII)V
    .locals 11

    move-object v1, p1

    .line 2064
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2065
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tmp tmp:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "shanshenmeshan"

    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/"

    .line 2066
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2067
    array-length v4, v3

    .line 2068
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/zui/gallery/database/GalleryContract$TrashFiles;->TRASH_DIRECTORY_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v4, -0x1

    aget-object v7, v3, v6

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz p3, :cond_1

    .line 2078
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/zui/gallery/database/GalleryContract$TrashFiles;->TRASH_DIRECTORY_PATH:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, -0x2

    aget-object v7, v3, v4

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v3, v6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2079
    aget-object v0, v3, v4

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    move-object v7, v0

    if-eqz p3, :cond_2

    .line 2083
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2084
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/zui/gallery/database/GalleryContract$TrashFiles;->TRASH_DIRECTORY_PATH:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2085
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2086
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 2087
    new-instance v4, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/.nomedia"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2088
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2090
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2099
    :catch_0
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tmp destFilePath:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2100
    invoke-static {p1, v5}, Lcom/zui/gallery/util/GalleryUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    .line 2102
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_3
    move-object v10, p0

    .line 2104
    iget-object v0, v10, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    aget-object v2, v3, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object v1, p1

    move v5, p3

    move-object v6, v7

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-static/range {v0 .. v9}, Lcom/zui/gallery/util/GalleryUtils;->insertTrashDb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;III)V

    return-void
.end method

.method private addToTrashCan(Lcom/zui/gallery/data/MediaSet;)V
    .locals 8

    if-eqz p1, :cond_0

    .line 2108
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaSet;->getMediaItemCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 2109
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaSet;->getMediaItemCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object p1

    .line 2110
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/data/MediaItem;

    .line 2111
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getHeight()I

    move-result v6

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getRotation()I

    move-result v7

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/zui/gallery/ui/ActionModeHandler;->addItemToTrashCan(Ljava/lang/String;ZZIII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private computeMenuOptions(Ljava/util/ArrayList;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/MediaObject;",
            ">;)I"
        }
    .end annotation

    .line 575
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/data/MediaObject;

    .line 576
    invoke-virtual {v3}, Lcom/zui/gallery/data/MediaObject;->getSupportedOperations()I

    move-result v4

    .line 577
    invoke-virtual {v3}, Lcom/zui/gallery/data/MediaObject;->getMediaType()I

    move-result v3

    or-int/2addr v2, v3

    and-int/2addr v1, v4

    goto :goto_0

    .line 581
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    and-int/lit16 v1, v1, 0x107

    goto :goto_1

    .line 583
    :cond_1
    invoke-static {v2}, Lcom/zui/gallery/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object p1

    .line 584
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v0, p1}, Lcom/zui/gallery/util/GalleryUtils;->isEditorAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    and-int/lit16 v1, v1, -0x201

    :cond_2
    :goto_1
    return v1
.end method

.method private computePanoramaSharingIntent(Lcom/zui/gallery/util/ThreadPool$JobContext;I)Landroid/content/Intent;
    .locals 6

    .line 598
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Lcom/zui/gallery/ui/SelectionManager;->getSelected(ZI)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 599
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 602
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 603
    iget-object v2, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v2

    .line 604
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 605
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/gallery/data/Path;

    .line 606
    invoke-interface {p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 608
    :cond_1
    invoke-virtual {v2, v4}, Lcom/zui/gallery/data/DataManager;->getContentUri(Lcom/zui/gallery/data/Path;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 611
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    const-string p2, "android.intent.extra.STREAM"

    const-string v2, "application/vnd.google.panorama360+jpg"

    if-le p1, v1, :cond_3

    const-string p1, "android.intent.action.SEND_MULTIPLE"

    .line 614
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 615
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 616
    invoke-virtual {v3, p2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_1

    :cond_3
    const-string p1, "android.intent.action.SEND"

    .line 618
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 619
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 620
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {v3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 622
    :goto_1
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_4
    return-object v3

    .line 600
    :cond_5
    :goto_2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    return-object p1
.end method

.method private computeSharingIntent(Lcom/zui/gallery/util/ThreadPool$JobContext;I)Landroid/content/Intent;
    .locals 11

    .line 629
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Lcom/zui/gallery/ui/SelectionManager;->getSelected(ZI)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 630
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 634
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 635
    iget-object v2, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v2

    .line 637
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 638
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zui/gallery/data/Path;

    .line 639
    invoke-interface {p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 641
    :cond_2
    invoke-virtual {v2, v7}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 643
    instance-of v8, v7, Lcom/zui/gallery/data/MediaSet;

    const/4 v9, 0x4

    if-eqz v8, :cond_4

    .line 644
    move-object v8, v7

    check-cast v8, Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v8}, Lcom/zui/gallery/data/MediaSet;->getCoverMediaItem()Lcom/zui/gallery/data/MediaItem;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 647
    invoke-virtual {v7}, Lcom/zui/gallery/data/MediaObject;->getMediaType()I

    move-result v7

    .line 648
    invoke-static {v7}, Lcom/zui/gallery/util/GalleryUtils;->isVideoType(I)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_1

    :cond_3
    move v9, v7

    :goto_1
    or-int/2addr v6, v9

    .line 652
    invoke-virtual {v8}, Lcom/zui/gallery/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 655
    :cond_4
    invoke-virtual {v7}, Lcom/zui/gallery/data/MediaObject;->getMediaType()I

    move-result v8

    .line 656
    invoke-static {v8}, Lcom/zui/gallery/util/GalleryUtils;->isVideoType(I)Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_2

    :cond_5
    move v9, v8

    :goto_2
    or-int/2addr v6, v9

    .line 660
    invoke-virtual {v7}, Lcom/zui/gallery/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 665
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_8

    .line 667
    invoke-static {v6}, Lcom/zui/gallery/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "android.intent.extra.STREAM"

    if-le p1, v1, :cond_7

    const-string p1, "android.intent.action.SEND_MULTIPLE"

    .line 669
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 670
    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_3

    :cond_7
    const-string p1, "android.intent.action.SEND"

    .line 672
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 674
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {v3, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 677
    :goto_3
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 683
    :cond_8
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v1, :cond_9

    .line 686
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/data/Path;

    invoke-virtual {v2, p1}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object p1

    .line 687
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/data/Path;

    invoke-virtual {v2, v0}, Lcom/zui/gallery/data/DataManager;->getContentUri(Lcom/zui/gallery/data/Path;)Landroid/net/Uri;

    move-result-object v0

    .line 688
    instance-of v1, p1, Lcom/zui/gallery/data/LocalImage;

    if-eqz v1, :cond_9

    .line 689
    check-cast p1, Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/gallery/data/Path;

    invoke-virtual {p2}, Lcom/zui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/zui/gallery/util/GalleryUtils;->isCapturedBy360Mods(Lcom/zui/gallery/data/MediaItem;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "is_360_mod_image"

    .line 690
    invoke-virtual {v3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 691
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "media_path"

    invoke-virtual {v3, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 692
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "media share path is"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "is360:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ActionModeHandler"

    invoke-static {p2, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-object v3

    .line 632
    :cond_a
    :goto_4
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    return-object p1
.end method

.method private doDeleteForFloatDialog(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;)I
    .locals 33

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 1663
    iget-object v0, v8, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getAlbum()Lcom/zui/gallery/app/OptimizationAlbum;

    move-result-object v0

    iget-object v1, v8, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getAlbum()Lcom/zui/gallery/app/OptimizationAlbum;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lcom/zui/gallery/app/OptimizationAlbum;->setDeleteAlbum(I)V

    const/4 v0, 0x7

    .line 1665
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v11

    .line 1666
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1669
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1670
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v14, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1671
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1672
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1674
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1675
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1676
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1677
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1689
    iget-object v5, v8, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v5

    .line 1690
    invoke-virtual {v5, v9}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v6

    .line 1693
    invoke-virtual {v6}, Lcom/zui/gallery/data/MediaObject;->isMediaSet()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 1694
    move-object/from16 v16, v6

    check-cast v16, Lcom/zui/gallery/data/MediaSet;

    .line 1695
    invoke-virtual/range {v16 .. v16}, Lcom/zui/gallery/data/MediaSet;->isGroupAlbum()Z

    move-result v17

    move-wide/from16 v18, v12

    move-object/from16 v10, v16

    if-eqz v17, :cond_1

    const/16 v16, 0x1

    goto :goto_0

    :cond_0
    move-wide/from16 v18, v12

    const/4 v10, 0x0

    :cond_1
    const/16 v16, 0x0

    .line 1700
    :goto_0
    iget-object v12, v8, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    if-eqz v12, :cond_2

    .line 1701
    invoke-virtual {v12}, Lcom/zui/gallery/ui/SelectionManager;->isVirtualAlbum()Z

    move-result v16

    .line 1702
    iget-object v12, v8, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v12}, Lcom/zui/gallery/ui/SelectionManager;->getGroupAlbumId()I

    move-result v12

    move-object/from16 v20, v6

    move/from16 v13, v16

    goto :goto_1

    :cond_2
    move-object/from16 v20, v6

    move/from16 v13, v16

    const/4 v12, -0x1

    .line 1705
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "floatDialog delete type onlyDeleteGroupData "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "groupId = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v9, "ActionModeHandler"

    invoke-static {v9, v6}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    iget-object v6, v8, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v6

    check-cast v6, Lcom/zui/gallery/app/GalleryApp;

    const/4 v13, 0x0

    invoke-static {v6, v13}, Lcom/zui/gallery/cloud/CloudUtils;->getAllCloudAlbums(Lcom/zui/gallery/app/GalleryApp;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    if-eqz v10, :cond_11

    .line 1708
    invoke-virtual {v10}, Lcom/zui/gallery/data/MediaSet;->getMediaItemCount()I

    move-result v13

    if-lez v13, :cond_11

    .line 1709
    invoke-virtual {v10}, Lcom/zui/gallery/data/MediaSet;->getMediaItemCount()I

    move-result v13

    move/from16 v21, v12

    const/4 v12, 0x0

    invoke-virtual {v10, v12, v13}, Lcom/zui/gallery/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v13

    .line 1710
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v13, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_10

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v26, v12

    move-object/from16 v12, v25

    check-cast v12, Lcom/zui/gallery/data/MediaItem;

    move/from16 v25, v13

    .line 1711
    instance-of v13, v12, Lcom/zui/gallery/data/LocalImage;

    move-object/from16 v27, v10

    const-string v10, "\',"

    move-object/from16 v28, v7

    const-string v7, "\'"

    move-object/from16 v29, v15

    const-string v15, ","

    move-object/from16 v30, v3

    const-string v3, "/"

    if-eqz v13, :cond_5

    .line 1712
    check-cast v12, Lcom/zui/gallery/data/LocalImage;

    .line 1713
    invoke-virtual {v12}, Lcom/zui/gallery/data/LocalImage;->getFilePath()Ljava/lang/String;

    move-result-object v13

    .line 1714
    invoke-virtual {v13, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1715
    new-instance v13, Lcom/zui/gallery/ui/ActionModeHandler$5;

    invoke-direct {v13, v8, v3, v6}, Lcom/zui/gallery/ui/ActionModeHandler$5;-><init>(Lcom/zui/gallery/ui/ActionModeHandler;[Ljava/lang/String;Ljava/util/List;)V

    .line 1728
    invoke-interface {v11, v13}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1729
    iget-object v3, v8, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/zui/gallery/ui/SelectionManager;->isCameraAlbum()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, v12, Lcom/zui/gallery/data/LocalImage;->isContinuousCover:Z

    if-eqz v3, :cond_3

    .line 1743
    invoke-virtual {v12}, Lcom/zui/gallery/data/LocalImage;->getBucketId()I

    move-result v3

    .line 1744
    sget-object v7, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_IMAGE:Lcom/zui/gallery/data/Path;

    invoke-virtual {v7, v3}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v3

    .line 1746
    invoke-virtual {v5, v3}, Lcom/zui/gallery/data/DataManager;->delete(Lcom/zui/gallery/data/Path;)V

    .line 1748
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete cs folder "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/zui/gallery/data/LocalImage;->getFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1750
    :cond_3
    iget v3, v12, Lcom/zui/gallery/data/LocalImage;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1752
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/zui/gallery/data/LocalImage;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1754
    invoke-virtual {v12}, Lcom/zui/gallery/data/LocalImage;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1755
    iget v3, v12, Lcom/zui/gallery/data/LocalImage;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v25, 0x1

    .line 1758
    :goto_3
    iget-boolean v3, v8, Lcom/zui/gallery/ui/ActionModeHandler;->isAtLeastBuildVersion:Z

    if-eqz v3, :cond_4

    iget-boolean v3, v8, Lcom/zui/gallery/ui/ActionModeHandler;->isExStorageManager:Z

    if-nez v3, :cond_4

    .line 1759
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget v7, v12, Lcom/zui/gallery/data/LocalImage;->id:I

    int-to-long v12, v7

    invoke-static {v3, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v25, 0x1

    :cond_4
    move-object/from16 v31, v2

    move-object/from16 v32, v11

    move/from16 v13, v25

    move-object/from16 v7, v28

    move-object/from16 v10, v29

    const/16 v17, 0x0

    move-object/from16 v11, p1

    goto/16 :goto_5

    .line 1762
    :cond_5
    instance-of v13, v12, Lcom/zui/gallery/data/LocalVideo;

    move-object/from16 v31, v2

    if-eqz v13, :cond_9

    .line 1763
    check-cast v12, Lcom/zui/gallery/data/LocalVideo;

    .line 1766
    invoke-virtual {v12}, Lcom/zui/gallery/data/LocalVideo;->getFilePath()Ljava/lang/String;

    move-result-object v13

    .line 1767
    invoke-virtual {v13, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1768
    array-length v13, v3

    const/4 v2, 0x1

    if-le v13, v2, :cond_6

    .line 1769
    array-length v13, v3

    const/16 v22, 0x2

    add-int/lit8 v13, v13, -0x2

    aget-object v13, v3, v13

    move-object/from16 v32, v11

    .line 1770
    array-length v11, v3

    sub-int/2addr v11, v2

    aget-object v2, v3, v11

    .line 1771
    invoke-interface {v6, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1772
    iget-object v3, v8, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/app/GalleryApp;

    invoke-static {v3, v13, v2}, Lcom/zui/gallery/cloud/CloudUtils;->deleteCloudFileIfExist(Lcom/zui/gallery/app/GalleryApp;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_4

    :cond_6
    move-object/from16 v32, v11

    .line 1776
    :cond_7
    :goto_4
    iget v2, v12, Lcom/zui/gallery/data/LocalVideo;->id:I

    move-object/from16 v3, v30

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1778
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/zui/gallery/data/LocalVideo;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/gallery/data/GroupBucketHelper;->sqliteEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1779
    iget v2, v12, Lcom/zui/gallery/data/LocalVideo;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v10, v29

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1783
    iget-boolean v2, v8, Lcom/zui/gallery/ui/ActionModeHandler;->isAtLeastBuildVersion:Z

    if-eqz v2, :cond_8

    iget-boolean v2, v8, Lcom/zui/gallery/ui/ActionModeHandler;->isExStorageManager:Z

    if-nez v2, :cond_8

    .line 1784
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget v7, v12, Lcom/zui/gallery/data/LocalVideo;->id:I

    int-to-long v11, v7

    invoke-static {v2, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    move-object/from16 v11, p1

    move-object/from16 v30, v3

    move/from16 v13, v25

    move-object/from16 v7, v28

    const/16 v17, 0x0

    const/16 v22, 0x1

    :goto_5
    move-object/from16 v28, v5

    goto/16 :goto_8

    :cond_9
    move-object/from16 v32, v11

    move-object/from16 v10, v29

    move-object/from16 v3, v30

    .line 1786
    instance-of v2, v12, Lcom/zui/gallery/data/CloudImage;

    if-eqz v2, :cond_b

    .line 1788
    check-cast v12, Lcom/zui/gallery/data/CloudImage;

    .line 1789
    invoke-virtual {v12}, Lcom/zui/gallery/data/CloudImage;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v7, v28

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1790
    iget-boolean v2, v8, Lcom/zui/gallery/ui/ActionModeHandler;->isAtLeastBuildVersion:Z

    if-eqz v2, :cond_a

    iget-boolean v2, v8, Lcom/zui/gallery/ui/ActionModeHandler;->isExStorageManager:Z

    if-nez v2, :cond_a

    .line 1791
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v12}, Lcom/zui/gallery/data/CloudImage;->getId()I

    move-result v11

    int-to-long v11, v11

    invoke-static {v2, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    move-object/from16 v11, p1

    move-object/from16 v30, v3

    move-object/from16 v28, v5

    move/from16 v13, v25

    const/16 v17, 0x0

    const/16 v23, 0x1

    goto/16 :goto_8

    :cond_b
    move-object/from16 v7, v28

    .line 1793
    invoke-virtual {v12}, Lcom/zui/gallery/data/MediaItem;->isMediaSet()Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "floatDialog delete file dir "

    .line 1794
    invoke-static {v9, v2}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v11, p1

    .line 1796
    invoke-virtual {v5, v11}, Lcom/zui/gallery/data/DataManager;->delete(Lcom/zui/gallery/data/Path;)V

    .line 1797
    iget-boolean v2, v8, Lcom/zui/gallery/ui/ActionModeHandler;->isAtLeastBuildVersion:Z

    if-eqz v2, :cond_f

    iget-boolean v2, v8, Lcom/zui/gallery/ui/ActionModeHandler;->isExStorageManager:Z

    if-nez v2, :cond_f

    .line 1798
    move-object/from16 v2, v20

    check-cast v2, Lcom/zui/gallery/data/MediaSet;

    .line 1799
    invoke-virtual {v2}, Lcom/zui/gallery/data/MediaSet;->getBucketId()I

    move-result v12

    .line 1801
    invoke-virtual {v2}, Lcom/zui/gallery/data/MediaSet;->getMediaItemCount()I

    move-result v13

    const/4 v15, 0x0

    .line 1802
    invoke-virtual {v2, v15, v13}, Lcom/zui/gallery/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v13, 0x0

    .line 1803
    :goto_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v13, v15, :cond_d

    .line 1804
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {v15}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result v15

    move-object/from16 v24, v2

    const/4 v2, 0x2

    move-object/from16 v30, v3

    if-ne v15, v2, :cond_c

    const/4 v2, 0x1

    const/4 v15, 0x1

    goto :goto_7

    :cond_c
    const/4 v2, 0x1

    const/4 v15, 0x0

    :goto_7
    new-array v3, v2, [Ljava/lang/String;

    .line 1806
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/16 v17, 0x0

    aput-object v2, v3, v17

    .line 1807
    iget-object v2, v8, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v28, v5

    const-string v5, "bucket_id = ? and _size >0 "

    invoke-direct {v8, v2, v5, v3, v15}, Lcom/zui/gallery/ui/ActionModeHandler;->getDeleteGroupUris(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    .line 1808
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, v24

    move-object/from16 v5, v28

    move-object/from16 v3, v30

    goto :goto_6

    :cond_d
    move-object/from16 v30, v3

    move-object/from16 v28, v5

    const/16 v17, 0x0

    move/from16 v13, v25

    const/16 v24, 0x1

    goto :goto_8

    :cond_e
    move-object/from16 v11, p1

    :cond_f
    move-object/from16 v30, v3

    move-object/from16 v28, v5

    const/16 v17, 0x0

    move/from16 v13, v25

    :goto_8
    move-object v15, v10

    move-object/from16 v12, v26

    move-object/from16 v10, v27

    move-object/from16 v5, v28

    move-object/from16 v3, v30

    move-object/from16 v2, v31

    move-object/from16 v11, v32

    goto/16 :goto_2

    :cond_10
    move-object/from16 v28, v5

    move-object/from16 v27, v10

    move-object/from16 v32, v11

    move/from16 v25, v13

    move-object v10, v15

    move-object/from16 v11, p1

    move/from16 v12, v22

    move/from16 v17, v25

    goto :goto_9

    :cond_11
    move-object/from16 v28, v5

    move-object/from16 v27, v10

    move-object/from16 v32, v11

    move/from16 v21, v12

    move-object v10, v15

    const/16 v17, 0x0

    move-object/from16 v11, p1

    move/from16 v12, v17

    move/from16 v23, v12

    move/from16 v24, v23

    .line 1817
    :goto_9
    invoke-virtual/range {v27 .. v27}, Lcom/zui/gallery/data/MediaSet;->getGroupIdForDelete()I

    move-result v2

    if-lez v2, :cond_12

    invoke-virtual/range {v27 .. v27}, Lcom/zui/gallery/data/MediaSet;->getGroupIdForDelete()I

    move-result v2

    goto :goto_a

    :cond_12
    invoke-virtual/range {v27 .. v27}, Lcom/zui/gallery/data/MediaSet;->getBucketId()I

    move-result v2

    :goto_a
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1818
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "path is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " && album albumId is :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "wangcan"

    invoke-static {v5, v3}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    iget-object v3, v8, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v3

    new-instance v5, Lcom/zui/gallery/ui/ActionModeHandler$6;

    invoke-direct {v5, v8}, Lcom/zui/gallery/ui/ActionModeHandler$6;-><init>(Lcom/zui/gallery/ui/ActionModeHandler;)V

    invoke-virtual {v3, v2, v5}, Lcom/zui/gallery/cloud/CloudManager;->deleteCloudAlbum(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1827
    iget-object v3, v8, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/zui/gallery/util/GalleryUtils;->getDeleteCloudAlbums(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v3

    .line 1828
    invoke-virtual {v3, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1829
    iget-object v2, v8, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v2, v3}, Lcom/zui/gallery/util/GalleryUtils;->saveDeleteCloudAlbums(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 1904
    new-instance v2, Lcom/zui/gallery/ui/ActionModeHandler$7;

    invoke-direct {v2, v8, v0}, Lcom/zui/gallery/ui/ActionModeHandler$7;-><init>(Lcom/zui/gallery/ui/ActionModeHandler;Ljava/util/List;)V

    const/16 v0, 0x1e

    .line 1918
    invoke-static {v0}, Lcom/zui/gallery/util/GalleryUtils;->isAtLeastBuildVersion(I)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-boolean v0, v8, Lcom/zui/gallery/ui/ActionModeHandler;->isExStorageManager:Z

    if-nez v0, :cond_15

    if-nez v17, :cond_13

    if-nez v12, :cond_13

    if-eqz v24, :cond_14

    .line 1919
    :cond_13
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 1920
    iget-object v0, v8, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/provider/MediaStore;->createDeleteRequest(Landroid/content/ContentResolver;Ljava/util/Collection;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1922
    :try_start_0
    iget-object v1, v8, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/zui/gallery/app/AbstractGalleryActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :catch_0
    move-exception v0

    .line 1925
    invoke-virtual {v0}, Landroid/content/IntentSender$SendIntentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SendIntentException = "

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    :goto_b
    move-object/from16 v13, v28

    move-object/from16 v1, v32

    goto/16 :goto_c

    .line 1930
    :cond_15
    new-instance v0, Lcom/zui/gallery/ui/ActionModeHandler$8;

    move-object v1, v0

    move-object/from16 v2, p0

    move/from16 v3, v17

    move-object/from16 v13, v28

    move-wide/from16 v5, v18

    move-object v15, v7

    move-object v7, v13

    invoke-direct/range {v1 .. v7}, Lcom/zui/gallery/ui/ActionModeHandler$8;-><init>(Lcom/zui/gallery/ui/ActionModeHandler;ZLjava/util/ArrayList;JLcom/zui/gallery/data/DataManager;)V

    move-object/from16 v1, v32

    .line 1971
    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1973
    new-instance v0, Lcom/zui/gallery/ui/ActionModeHandler$9;

    invoke-direct {v0, v8, v12, v10}, Lcom/zui/gallery/ui/ActionModeHandler$9;-><init>(Lcom/zui/gallery/ui/ActionModeHandler;ZLjava/util/ArrayList;)V

    .line 1994
    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1995
    new-instance v0, Lcom/zui/gallery/ui/ActionModeHandler$10;

    invoke-direct {v0, v8, v15}, Lcom/zui/gallery/ui/ActionModeHandler$10;-><init>(Lcom/zui/gallery/ui/ActionModeHandler;Ljava/util/List;)V

    .line 2004
    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    if-nez v17, :cond_16

    if-eqz v12, :cond_17

    .line 2009
    :cond_16
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    .line 2010
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2012
    iget-object v0, v8, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move/from16 v12, v21

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v12}, Lcom/zui/gallery/data/GroupBucketHelper;->deleteGroupMemberShipBatch(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    .line 2013
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "total delete membership count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    iget-object v0, v8, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/zui/gallery/data/GroupBucketHelper;->batchDeleteShadowVideoShips(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 2015
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "total delete ShadowVideoShip count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    if-eqz v23, :cond_18

    .line 2020
    invoke-virtual/range {v27 .. v27}, Lcom/zui/gallery/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2021
    iget-object v2, v8, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/zui/gallery/data/GroupBucketHelper;->deleteSystemGroupTableContent(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 2025
    :cond_18
    :goto_c
    new-instance v0, Lcom/zui/gallery/ui/ActionModeHandler$11;

    invoke-direct {v0, v8, v13, v11}, Lcom/zui/gallery/ui/ActionModeHandler$11;-><init>(Lcom/zui/gallery/ui/ActionModeHandler;Lcom/zui/gallery/data/DataManager;Lcom/zui/gallery/data/Path;)V

    .line 2031
    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 2033
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "floatDialog delete spend time "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    return v1
.end method

.method private getDeleteGroupUris(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 2038
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    .line 2042
    :try_start_0
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_0
    move-object v4, v2

    const-string v2, "_id"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    .line 2041
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2048
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 2049
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-eqz p4, :cond_1

    .line 2050
    sget-object p2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_2

    :cond_1
    sget-object p2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_2
    int-to-long v2, p1

    invoke-static {p2, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 2051
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 2058
    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    :try_start_1
    const-string p2, "ActionModeHandler"

    .line 2055
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "RuntimeException : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    :goto_4
    return-object v0

    :goto_5
    if-eqz v1, :cond_4

    .line 2058
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2060
    :cond_4
    throw p1
.end method

.method private getDeleteToastInfo()Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    .line 894
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 895
    iget-object v3, v0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 896
    iget-object v4, v0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/zui/gallery/ui/SelectionManager;->isAlbumSet()Z

    move-result v4

    const-string v5, "ActionModeHandler"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v4, :cond_17

    .line 897
    iget-object v4, v0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/zui/gallery/ui/SelectionManager;->getSelectedCount()I

    move-result v4

    .line 898
    iget-object v6, v0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v6, v7}, Lcom/zui/gallery/ui/SelectionManager;->getFolderCount(Z)I

    move-result v6

    .line 899
    iget-object v9, v0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v9}, Lcom/zui/gallery/ui/SelectionManager;->getVirtualFolderCount()I

    move-result v9

    if-lez v6, :cond_0

    move v10, v8

    goto :goto_0

    :cond_0
    move v10, v7

    :goto_0
    if-lez v9, :cond_1

    move v11, v8

    goto :goto_1

    :cond_1
    move v11, v7

    .line 903
    :goto_1
    iget-object v12, v0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v12}, Lcom/zui/gallery/ui/SelectionManager;->inSelectAllMode()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 904
    iget-object v12, v0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v12}, Lcom/zui/gallery/ui/SelectionManager;->isSelectAll()Z

    move-result v12

    if-nez v12, :cond_4

    .line 905
    iget-object v10, v0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v10}, Lcom/zui/gallery/ui/SelectionManager;->getSeleteFolderCount()I

    move-result v10

    .line 906
    iget-object v11, v0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v11}, Lcom/zui/gallery/ui/SelectionManager;->getSeleteVirtualFolderCount()I

    move-result v11

    sub-int/2addr v6, v10

    sub-int/2addr v9, v11

    if-lez v6, :cond_2

    move v10, v8

    goto :goto_2

    :cond_2
    move v10, v7

    :goto_2
    if-lez v9, :cond_3

    :goto_3
    move v11, v8

    goto/16 :goto_8

    :cond_3
    move v11, v7

    goto/16 :goto_8

    .line 912
    :cond_4
    iget-object v12, v0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v12}, Lcom/zui/gallery/ui/SelectionManager;->isAlbumSetAll()Z

    move-result v12

    if-eqz v12, :cond_c

    .line 913
    iget-object v12, v0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v12, v7}, Lcom/zui/gallery/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v12

    if-eqz v12, :cond_c

    .line 914
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_c

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ne v13, v4, :cond_c

    .line 917
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v9, v7

    move v10, v9

    :cond_5
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/zui/gallery/data/Path;

    .line 918
    iget-object v12, v0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v12}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/zui/gallery/data/DataManager;->getMediaSet(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 920
    instance-of v11, v11, Lcom/zui/gallery/data/LocalGroupAlbum;

    if-eqz v11, :cond_6

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_7
    if-lez v9, :cond_8

    move v6, v8

    goto :goto_5

    :cond_8
    move v6, v7

    :goto_5
    if-lez v10, :cond_9

    move v11, v8

    goto :goto_6

    :cond_9
    move v11, v7

    :goto_6
    move/from16 v16, v10

    move v10, v6

    move v6, v9

    move/from16 v9, v16

    goto :goto_8

    .line 933
    :cond_a
    iget-object v6, v0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v6}, Lcom/zui/gallery/ui/SelectionManager;->getSeleteFolderCount()I

    move-result v6

    .line 934
    iget-object v9, v0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v9}, Lcom/zui/gallery/ui/SelectionManager;->getSeleteVirtualFolderCount()I

    move-result v9

    if-lez v6, :cond_b

    move v10, v8

    goto :goto_7

    :cond_b
    move v10, v7

    :goto_7
    if-lez v9, :cond_3

    goto :goto_3

    :cond_c
    :goto_8
    if-ne v4, v8, :cond_d

    .line 940
    iget-object v12, v0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v12, v7}, Lcom/zui/gallery/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v12

    if-eqz v12, :cond_d

    .line 941
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_d

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ne v13, v4, :cond_d

    .line 942
    iget-object v13, v0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v13}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v13

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/zui/gallery/data/Path;

    invoke-virtual {v13, v12}, Lcom/zui/gallery/data/DataManager;->getMediaSet(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v12

    if-eqz v12, :cond_d

    .line 944
    invoke-virtual {v12}, Lcom/zui/gallery/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v12

    goto :goto_9

    :cond_d
    const-string v12, ""

    :goto_9
    const v13, 0x7f1000cd

    const v14, 0x7f1000c3

    const v15, 0x7f1000c2

    if-eqz v10, :cond_11

    if-nez v11, :cond_11

    .line 950
    invoke-direct/range {p0 .. p0}, Lcom/zui/gallery/ui/ActionModeHandler;->isDeleteFolderHasAddFile()Z

    move-result v9

    if-le v6, v8, :cond_f

    if-le v4, v8, :cond_f

    if-eqz v9, :cond_e

    new-array v6, v8, [Ljava/lang/Object;

    .line 954
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v7

    .line 953
    invoke-virtual {v3, v14, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_a

    :cond_e
    new-array v6, v8, [Ljava/lang/Object;

    .line 956
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-virtual {v3, v15, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_a

    :cond_f
    if-eqz v9, :cond_10

    const v4, 0x7f1000ce

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v12, v6, v7

    .line 960
    invoke-virtual {v3, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_a

    :cond_10
    new-array v4, v8, [Ljava/lang/Object;

    aput-object v12, v4, v7

    .line 963
    invoke-virtual {v3, v13, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    :cond_11
    if-eqz v11, :cond_13

    if-nez v10, :cond_13

    if-le v9, v8, :cond_12

    if-le v4, v8, :cond_12

    new-array v6, v8, [Ljava/lang/Object;

    .line 968
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-virtual {v3, v15, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    :cond_12
    new-array v4, v8, [Ljava/lang/Object;

    aput-object v12, v4, v7

    .line 970
    invoke-virtual {v3, v13, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    :cond_13
    if-eqz v10, :cond_15

    if-eqz v11, :cond_15

    .line 973
    invoke-direct/range {p0 .. p0}, Lcom/zui/gallery/ui/ActionModeHandler;->isDeleteFolderHasAddFile()Z

    move-result v6

    if-eqz v6, :cond_14

    new-array v6, v8, [Ljava/lang/Object;

    .line 975
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-virtual {v3, v14, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    :cond_14
    new-array v6, v8, [Ljava/lang/Object;

    .line 977
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-virtual {v3, v15, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    .line 980
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/zui/gallery/ui/ActionModeHandler;->isDeleteFolderHasAddFile()Z

    move-result v6

    if-eqz v6, :cond_16

    new-array v6, v8, [Ljava/lang/Object;

    .line 982
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-virtual {v3, v14, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    :cond_16
    new-array v6, v8, [Ljava/lang/Object;

    .line 984
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-virtual {v3, v15, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_a
    move-object v6, v3

    goto/16 :goto_18

    .line 989
    :cond_17
    iget-object v4, v0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/zui/gallery/ui/SelectionManager;->getImageItemCount()I

    move-result v4

    .line 990
    iget-object v9, v0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v9}, Lcom/zui/gallery/ui/SelectionManager;->getVideoCount()I

    move-result v9

    .line 991
    iget-object v10, v0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v10}, Lcom/zui/gallery/ui/SelectionManager;->getContinuesFolderCount()I

    move-result v10

    if-lez v4, :cond_18

    move v11, v8

    goto :goto_b

    :cond_18
    move v11, v7

    :goto_b
    if-lez v9, :cond_19

    move v12, v8

    goto :goto_c

    :cond_19
    move v12, v7

    :goto_c
    if-lez v10, :cond_1a

    move v13, v8

    goto :goto_d

    :cond_1a
    move v13, v7

    .line 996
    :goto_d
    iget-object v14, v0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v14}, Lcom/zui/gallery/ui/SelectionManager;->inSelectAllMode()Z

    move-result v14

    if-eqz v14, :cond_1e

    .line 997
    iget-object v14, v0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v14}, Lcom/zui/gallery/ui/SelectionManager;->isSelectAll()Z

    move-result v14

    if-nez v14, :cond_21

    .line 998
    iget-object v11, v0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v11}, Lcom/zui/gallery/ui/SelectionManager;->getSelectImageItemCount()I

    move-result v11

    .line 999
    iget-object v12, v0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v12}, Lcom/zui/gallery/ui/SelectionManager;->getSelectVideoItemCount()I

    move-result v12

    .line 1000
    iget-object v13, v0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    .line 1001
    invoke-virtual {v13}, Lcom/zui/gallery/ui/SelectionManager;->getSelectContinuesFolderCount()I

    move-result v13

    sub-int/2addr v4, v11

    sub-int/2addr v9, v12

    sub-int/2addr v10, v13

    if-lez v4, :cond_1b

    move v11, v8

    goto :goto_e

    :cond_1b
    move v11, v7

    :goto_e
    if-lez v9, :cond_1c

    move v12, v8

    goto :goto_f

    :cond_1c
    move v12, v7

    :goto_f
    if-lez v10, :cond_1d

    :goto_10
    move v13, v8

    goto :goto_13

    :cond_1d
    move v13, v7

    goto :goto_13

    .line 1016
    :cond_1e
    iget-object v4, v0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/zui/gallery/ui/SelectionManager;->getSelectImageItemCount()I

    move-result v4

    .line 1017
    iget-object v9, v0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v9}, Lcom/zui/gallery/ui/SelectionManager;->getSelectVideoItemCount()I

    move-result v9

    .line 1018
    iget-object v10, v0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v10}, Lcom/zui/gallery/ui/SelectionManager;->getSelectContinuesFolderCount()I

    move-result v10

    if-lez v4, :cond_1f

    move v11, v8

    goto :goto_11

    :cond_1f
    move v11, v7

    :goto_11
    if-lez v9, :cond_20

    move v12, v8

    goto :goto_12

    :cond_20
    move v12, v7

    :goto_12
    if-lez v10, :cond_1d

    goto :goto_10

    .line 1028
    :cond_21
    :goto_13
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v14

    if-eqz v14, :cond_22

    return-object v6

    .line 1032
    :cond_22
    iget-object v14, v0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v14}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    invoke-static {v14}, Lcom/zui/gallery/data/GroupBucketHelper;->getAllGroupMemberShipFileCount(Landroid/content/ContentResolver;)I

    move-result v14

    if-gtz v14, :cond_23

    const-string v14, "no group membershipfile"

    .line 1034
    invoke-static {v5, v14}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v14, v7

    goto :goto_14

    .line 1036
    :cond_23
    invoke-direct/range {p0 .. p0}, Lcom/zui/gallery/ui/ActionModeHandler;->isDeleteFileExistInGroupMemberShips()Z

    move-result v14

    .line 1038
    :goto_14
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v15

    if-eqz v15, :cond_24

    return-object v6

    .line 1042
    :cond_24
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->isSoftwareForHW()Z

    move-result v15

    if-eqz v15, :cond_25

    move v14, v7

    :cond_25
    if-eqz v11, :cond_29

    if-nez v12, :cond_29

    if-nez v13, :cond_29

    if-le v4, v8, :cond_27

    if-eqz v14, :cond_26

    const v6, 0x7f1000c5

    new-array v8, v8, [Ljava/lang/Object;

    .line 1048
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v7

    .line 1047
    invoke-virtual {v3, v6, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_18

    :cond_26
    const v6, 0x7f1000c4

    new-array v8, v8, [Ljava/lang/Object;

    .line 1050
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v7

    invoke-virtual {v3, v6, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_18

    :cond_27
    if-eqz v14, :cond_28

    const v4, 0x7f1000d0

    .line 1054
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_18

    :cond_28
    const v4, 0x7f1000cf

    .line 1056
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_18

    :cond_29
    if-eqz v12, :cond_2d

    if-nez v11, :cond_2d

    if-nez v13, :cond_2d

    if-le v9, v8, :cond_2b

    if-eqz v14, :cond_2a

    const v4, 0x7f1000c7

    new-array v6, v8, [Ljava/lang/Object;

    .line 1063
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 1062
    invoke-virtual {v3, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_18

    :cond_2a
    const v4, 0x7f1000c6

    new-array v6, v8, [Ljava/lang/Object;

    .line 1065
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_18

    :cond_2b
    if-eqz v14, :cond_2c

    const v4, 0x7f1000d2

    .line 1069
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_18

    :cond_2c
    const v4, 0x7f1000d1

    .line 1071
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_18

    :cond_2d
    if-eqz v13, :cond_31

    if-nez v11, :cond_31

    if-nez v12, :cond_31

    if-le v10, v8, :cond_2f

    if-eqz v14, :cond_2e

    const v4, 0x7f1000c1

    new-array v6, v8, [Ljava/lang/Object;

    .line 1078
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 1077
    invoke-virtual {v3, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_18

    :cond_2e
    const v4, 0x7f1000bd

    new-array v6, v8, [Ljava/lang/Object;

    .line 1080
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_18

    :cond_2f
    if-eqz v14, :cond_30

    const v4, 0x7f1000cc

    .line 1084
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_18

    :cond_30
    const v4, 0x7f1000c8

    .line 1086
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_18

    :cond_31
    if-eqz v11, :cond_33

    if-eqz v12, :cond_33

    if-nez v13, :cond_33

    if-eqz v14, :cond_32

    const v6, 0x7f1000bc

    new-array v8, v8, [Ljava/lang/Object;

    add-int/2addr v4, v9

    .line 1091
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v7

    invoke-virtual {v3, v6, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_18

    :cond_32
    const v6, 0x7f1000bb

    new-array v8, v8, [Ljava/lang/Object;

    add-int/2addr v4, v9

    .line 1093
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v7

    invoke-virtual {v3, v6, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_18

    :cond_33
    const v15, 0x7f1000d3

    const/4 v6, 0x2

    if-eqz v11, :cond_35

    if-eqz v13, :cond_35

    if-nez v12, :cond_35

    if-le v10, v8, :cond_34

    const v9, 0x7f1000be

    new-array v6, v6, [Ljava/lang/Object;

    .line 1098
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v8

    invoke-virtual {v3, v9, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_15

    :cond_34
    const v6, 0x7f1000c9

    new-array v8, v8, [Ljava/lang/Object;

    .line 1101
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v7

    invoke-virtual {v3, v6, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_15
    move-object v6, v4

    if-eqz v14, :cond_3a

    .line 1104
    invoke-virtual {v3, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1105
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_18

    :cond_35
    if-eqz v12, :cond_37

    if-eqz v13, :cond_37

    if-nez v11, :cond_37

    if-le v10, v8, :cond_36

    const v4, 0x7f1000c0

    new-array v6, v6, [Ljava/lang/Object;

    .line 1110
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_16

    :cond_36
    const v4, 0x7f1000cb

    new-array v6, v8, [Ljava/lang/Object;

    .line 1113
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_16
    move-object v6, v4

    if-eqz v14, :cond_3a

    .line 1116
    invoke-virtual {v3, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1117
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_18

    :cond_37
    if-eqz v11, :cond_39

    if-eqz v12, :cond_39

    if-eqz v13, :cond_39

    if-le v10, v8, :cond_38

    const v11, 0x7f1000bf

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    .line 1123
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v12, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v12, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v12, v6

    .line 1122
    invoke-virtual {v3, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_17

    :cond_38
    const v10, 0x7f1000ca

    new-array v6, v6, [Ljava/lang/Object;

    .line 1127
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v8

    .line 1126
    invoke-virtual {v3, v10, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_17
    move-object v6, v4

    if-eqz v14, :cond_3a

    .line 1130
    invoke-virtual {v3, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1131
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_18

    :cond_39
    const/4 v6, 0x0

    .line 1135
    :cond_3a
    :goto_18
    iget-boolean v3, v0, Lcom/zui/gallery/ui/ActionModeHandler;->DEBUG:Z

    if-eqz v3, :cond_3b

    .line 1136
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "computer delete message spend time "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v1

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1136
    invoke-static {v5, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    return-object v6
.end method

.method private getDeleteToastInfoForFloatDialog(Lcom/zui/gallery/data/Path;)Ljava/lang/String;
    .locals 8

    .line 1535
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1536
    iget-object v2, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1537
    iget-object v3, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/zui/gallery/ui/SelectionManager;->isAlbumSet()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    .line 1539
    iget-object v3, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/zui/gallery/data/DataManager;->getMediaSet(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaSet;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1542
    instance-of v3, p1, Lcom/zui/gallery/data/LocalGroupAlbum;

    .line 1545
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f1000cd

    if-nez v3, :cond_1

    .line 1547
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaSet;->getBucketId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/ActionModeHandler;->isDeleteFolderHasAddFileForFloatDialog(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f1000ce

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v6, v3, v5

    .line 1549
    invoke-virtual {v2, p1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    :cond_0
    new-array p1, v4, [Ljava/lang/Object;

    aput-object v6, p1, v5

    .line 1552
    invoke-virtual {v2, v7, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    :cond_1
    new-array p1, v4, [Ljava/lang/Object;

    aput-object v6, p1, v5

    .line 1555
    invoke-virtual {v2, v7, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    :cond_2
    const/4 p1, 0x0

    goto/16 :goto_4

    .line 1559
    :cond_3
    iget-object v3, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object p1

    .line 1560
    check-cast p1, Lcom/zui/gallery/data/MediaItem;

    .line 1561
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_4

    move v3, v4

    goto :goto_0

    :cond_4
    move v3, v5

    .line 1564
    :goto_0
    iget-object v6, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v6}, Lcom/zui/gallery/ui/SelectionManager;->getSourceMediaSet()Lcom/zui/gallery/data/MediaSet;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 1566
    instance-of v6, v6, Lcom/zui/gallery/data/LocalGroupAlbum;

    if-eqz v6, :cond_5

    move v6, v4

    goto :goto_1

    :cond_5
    move v6, v5

    .line 1570
    :goto_1
    iget-object v7, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v7}, Lcom/zui/gallery/ui/SelectionManager;->isCameraAlbum()Z

    move-result v7

    if-eqz v7, :cond_6

    if-eqz v3, :cond_6

    iget-boolean v7, p1, Lcom/zui/gallery/data/MediaItem;->isContinuousCover:Z

    if-eqz v7, :cond_6

    goto :goto_2

    :cond_6
    move v4, v5

    :goto_2
    if-nez v6, :cond_8

    if-eqz v4, :cond_7

    .line 1573
    check-cast p1, Lcom/zui/gallery/data/LocalImage;

    invoke-virtual {p1}, Lcom/zui/gallery/data/LocalImage;->getBucketId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/ActionModeHandler;->isDeleteFolderHasAddFileForFloatDialog(I)Z

    move-result v5

    goto :goto_3

    .line 1575
    :cond_7
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/ActionModeHandler;->isDeleteFileExistInGroupMemberShips(Ljava/lang/String;)Z

    move-result v5

    :cond_8
    :goto_3
    if-eqz v3, :cond_c

    if-eqz v4, :cond_a

    if-eqz v5, :cond_9

    const p1, 0x7f1000cc

    .line 1581
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_9
    const p1, 0x7f1000c8

    .line 1583
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_a
    if-eqz v5, :cond_b

    const p1, 0x7f1000d0

    .line 1587
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_b
    const p1, 0x7f1000cf

    .line 1589
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_c
    if-eqz v5, :cond_d

    const p1, 0x7f1000d2

    .line 1594
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_d
    const p1, 0x7f1000d1

    .line 1596
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1600
    :goto_4
    iget-boolean v2, p0, Lcom/zui/gallery/ui/ActionModeHandler;->DEBUG:Z

    if-eqz v2, :cond_e

    .line 1601
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "computer delete message spend time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1602
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActionModeHandler"

    .line 1601
    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-object p1
.end method

.method private getSelectedInfo()Ljava/lang/String;
    .locals 11

    .line 1341
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1342
    iget-object v1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/SelectionManager;->isAlbumSet()Z

    move-result v1

    if-nez v1, :cond_19

    .line 1344
    iget-object v1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/SelectionManager;->getSelectedCount()I

    move-result v1

    .line 1347
    iget-object v2, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getBtn_add_to()Landroid/widget/TextView;

    move-result-object v2

    .line 1348
    iget-object v3, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getBtn_add()Landroid/widget/TextView;

    move-result-object v3

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v1, :cond_5

    .line 1350
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1351
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1352
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1353
    iget-object v2, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/zui/gallery/ui/SelectionManager;->inSelectAllMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1354
    iget-object v2, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v2, v6}, Lcom/zui/gallery/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 1356
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/data/Path;

    .line 1357
    invoke-virtual {v3}, Lcom/zui/gallery/data/Path;->getPrefix()Ljava/lang/String;

    move-result-object v3

    const-string v4, "cloud"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v6

    :goto_0
    if-eqz v2, :cond_2

    .line 1363
    iget-object v2, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getBtn_share()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_1

    .line 1365
    :cond_2
    iget-object v2, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getBtn_share()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_1

    .line 1368
    :cond_3
    iget-object v2, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/zui/gallery/ui/SelectionManager;->getSelectCloudImageItemCount()I

    move-result v2

    if-lez v2, :cond_4

    .line 1369
    iget-object v2, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getBtn_share()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_1

    .line 1371
    :cond_4
    iget-object v2, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getBtn_share()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1374
    :goto_1
    iget-object v2, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getBtn_delete()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1375
    iget-object v2, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getBtn_img_remove()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1376
    iget-object v2, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2, v5}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setAddToPrivacyIfEnnable(Z)V

    goto :goto_3

    .line 1380
    :cond_5
    iget-object v7, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v7}, Lcom/zui/gallery/ui/SelectionManager;->isLocalGroupAlbum()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1381
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1382
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1383
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    .line 1385
    :cond_6
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1386
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1387
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1391
    :goto_2
    iget-object v2, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getBtn_share()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1392
    iget-object v2, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getBtn_delete()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1393
    iget-object v2, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getBtn_img_remove()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1394
    iget-object v2, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2, v6}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setAddToPrivacyIfEnnable(Z)V

    .line 1397
    :goto_3
    iget-object v2, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/zui/gallery/ui/SelectionManager;->getImageItemCount()I

    move-result v2

    .line 1398
    iget-object v3, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/zui/gallery/ui/SelectionManager;->getVideoCount()I

    move-result v3

    .line 1399
    iget-object v4, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/zui/gallery/ui/SelectionManager;->getContinuesFolderCount()I

    move-result v4

    if-lez v2, :cond_7

    move v7, v5

    goto :goto_4

    :cond_7
    move v7, v6

    :goto_4
    if-lez v3, :cond_8

    move v8, v5

    goto :goto_5

    :cond_8
    move v8, v6

    :goto_5
    if-lez v4, :cond_9

    move v9, v5

    goto :goto_6

    :cond_9
    move v9, v6

    .line 1404
    :goto_6
    iget-object v10, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v10}, Lcom/zui/gallery/ui/SelectionManager;->inSelectAllMode()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 1405
    iget-object v10, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v10}, Lcom/zui/gallery/ui/SelectionManager;->isSelectAll()Z

    move-result v10

    if-nez v10, :cond_d

    .line 1406
    iget-object v7, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v7}, Lcom/zui/gallery/ui/SelectionManager;->getSelectImageItemCount()I

    move-result v7

    .line 1407
    iget-object v8, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v8}, Lcom/zui/gallery/ui/SelectionManager;->getSelectVideoItemCount()I

    move-result v8

    .line 1408
    iget-object v9, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    .line 1409
    invoke-virtual {v9}, Lcom/zui/gallery/ui/SelectionManager;->getSelectContinuesFolderCount()I

    move-result v9

    sub-int/2addr v2, v7

    sub-int/2addr v3, v8

    sub-int/2addr v4, v9

    if-lez v2, :cond_a

    move v7, v5

    goto :goto_7

    :cond_a
    move v7, v6

    :goto_7
    if-lez v3, :cond_b

    move v8, v5

    goto :goto_8

    :cond_b
    move v8, v6

    :goto_8
    if-lez v4, :cond_c

    move v9, v5

    goto :goto_9

    :cond_c
    move v9, v6

    :cond_d
    :goto_9
    if-eqz v9, :cond_12

    .line 1420
    iget-object v3, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    .line 1421
    invoke-virtual {v3}, Lcom/zui/gallery/ui/SelectionManager;->getSelectContinuesFolderImageCount()I

    goto :goto_d

    .line 1424
    :cond_e
    iget-object v2, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/zui/gallery/ui/SelectionManager;->getSelectImageItemCount()I

    move-result v2

    .line 1425
    iget-object v3, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/zui/gallery/ui/SelectionManager;->getSelectVideoItemCount()I

    move-result v3

    .line 1426
    iget-object v4, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/zui/gallery/ui/SelectionManager;->getSelectContinuesFolderCount()I

    move-result v4

    if-lez v2, :cond_f

    move v7, v5

    goto :goto_a

    :cond_f
    move v7, v6

    :goto_a
    if-lez v3, :cond_10

    move v8, v5

    goto :goto_b

    :cond_10
    move v8, v6

    :goto_b
    if-lez v4, :cond_11

    move v9, v5

    goto :goto_c

    :cond_11
    move v9, v6

    :goto_c
    if-eqz v9, :cond_12

    .line 1431
    iget-object v3, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    .line 1432
    invoke-virtual {v3}, Lcom/zui/gallery/ui/SelectionManager;->getSelectContinuesFolderImageCount()I

    :cond_12
    :goto_d
    if-eqz v7, :cond_13

    if-nez v8, :cond_13

    if-nez v9, :cond_13

    const v1, 0x7f100242

    new-array v3, v5, [Ljava/lang/Object;

    .line 1436
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v6

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    :cond_13
    if-eqz v8, :cond_14

    if-nez v7, :cond_14

    if-nez v9, :cond_14

    const v2, 0x7f100243

    new-array v3, v5, [Ljava/lang/Object;

    .line 1438
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    :cond_14
    if-eqz v9, :cond_15

    if-nez v7, :cond_15

    if-nez v8, :cond_15

    const v1, 0x7f100240

    new-array v2, v5, [Ljava/lang/Object;

    .line 1440
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_15
    const v2, 0x7f100241

    if-eqz v7, :cond_16

    if-eqz v8, :cond_16

    if-nez v9, :cond_16

    new-array v3, v5, [Ljava/lang/Object;

    .line 1442
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_16
    if-eqz v7, :cond_17

    if-eqz v9, :cond_17

    if-nez v8, :cond_17

    new-array v3, v5, [Ljava/lang/Object;

    .line 1444
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_17
    if-eqz v8, :cond_18

    if-eqz v9, :cond_18

    if-nez v7, :cond_18

    new-array v3, v5, [Ljava/lang/Object;

    .line 1446
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_18
    if-eqz v7, :cond_19

    if-eqz v8, :cond_19

    if-eqz v9, :cond_19

    new-array v3, v5, [Ljava/lang/Object;

    .line 1448
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_19
    const/4 v0, 0x0

    :goto_e
    return-object v0
.end method

.method private getSelectedMediaObjects(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/gallery/util/ThreadPool$JobContext;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/MediaObject;",
            ">;"
        }
    .end annotation

    .line 546
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 547
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 552
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 553
    iget-object v3, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v3

    .line 555
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/gallery/data/Path;

    .line 556
    invoke-interface {p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v2

    .line 559
    :cond_1
    invoke-virtual {v3, v4}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSelectedMediaObjects: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActionModeHandler"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v1
.end method

.method private isDeleteBurstImagesHasAddFileForFloatDialog(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method private isDeleteFileExistInGroupMemberShips()Z
    .locals 6

    const/4 v0, 0x0

    .line 1150
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 1151
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_6

    .line 1152
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1153
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1154
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/gallery/data/Path;

    .line 1155
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-eqz v5, :cond_1

    return v0

    .line 1158
    :cond_1
    iget-object v5, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v4

    .line 1159
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-eqz v5, :cond_2

    return v0

    .line 1162
    :cond_2
    invoke-virtual {v4}, Lcom/zui/gallery/data/MediaObject;->isMediaSet()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1163
    check-cast v4, Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v4}, Lcom/zui/gallery/data/MediaSet;->getCoverMediaItem()Lcom/zui/gallery/data/MediaItem;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1165
    invoke-virtual {v4}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1168
    :cond_3
    check-cast v4, Lcom/zui/gallery/data/MediaItem;

    if-eqz v4, :cond_0

    .line 1170
    invoke-virtual {v4}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1174
    :cond_4
    invoke-static {v3, v2}, Lcom/zui/gallery/data/GroupBucketHelper;->appendStrings(Ljava/lang/StringBuilder;Ljava/util/List;)V

    const-string v1, ")"

    .line 1175
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1176
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_5

    return v0

    .line 1179
    :cond_5
    iget-object v1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1180
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1179
    invoke-static {v1, v2}, Lcom/zui/gallery/data/GroupBucketHelper;->isExistInGroup(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "ActionModeHandler"

    const-string v3, "isDeleteFileHasAddFile exception "

    .line 1183
    invoke-static {v2, v3, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_1
    return v0
.end method

.method private isDeleteFileExistInGroupMemberShips(Ljava/lang/String;)Z
    .locals 2

    .line 1650
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\'"

    .line 1651
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/zui/gallery/data/GroupBucketHelper;->sqliteEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\',"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1652
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    .line 1653
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1654
    iget-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 1655
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1654
    invoke-static {p1, v0}, Lcom/zui/gallery/data/GroupBucketHelper;->isExistInGroup(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ActionModeHandler"

    const-string v1, "isDeleteFileHasAddFile exception "

    .line 1657
    invoke-static {v0, v1, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isDeleteFolderHasAddFile()Z
    .locals 5

    const/4 v0, 0x0

    .line 1200
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1201
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1202
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1203
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/data/Path;

    .line 1204
    iget-object v4, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/zui/gallery/data/DataManager;->getMediaSet(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1205
    invoke-virtual {v3}, Lcom/zui/gallery/data/MediaSet;->isGroupAlbum()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1206
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/zui/gallery/data/MediaSet;->getBucketId()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1210
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1211
    iget-object v3, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 1212
    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1211
    invoke-static {v3}, Lcom/zui/gallery/data/GroupBucketHelper;->getAllGroupMemberShipFile(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1213
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_4

    .line 1214
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_3

    .line 1215
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "\'"

    .line 1216
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\',"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1218
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    .line 1219
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1220
    iget-object v4, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1221
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1220
    invoke-static {v4, v1, v2}, Lcom/zui/gallery/data/BucketHelper;->isFileExitInMediaStore(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    .line 1223
    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_4
    if-eqz v3, :cond_5

    .line 1225
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "ActionModeHandler"

    const-string v3, "isDeleteFolderHasAddFile exception "

    .line 1229
    invoke-static {v2, v3, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_2
    return v0
.end method

.method private isDeleteFolderHasAddFileForFloatDialog(I)Z
    .locals 4

    const/4 v0, 0x0

    .line 1624
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1625
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1626
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1627
    iget-object v2, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 1628
    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1627
    invoke-static {v2}, Lcom/zui/gallery/data/GroupBucketHelper;->getAllGroupMemberShipFile(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1630
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 1631
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "\'"

    .line 1632
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\',"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1634
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    .line 1635
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1636
    iget-object v3, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1637
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1636
    invoke-static {v3, p1, v1}, Lcom/zui/gallery/data/BucketHelper;->isFileExitInMediaStore(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/List;)Z

    move-result p1

    move v0, p1

    .line 1639
    :cond_1
    invoke-static {v2}, Lcom/zui/gallery/common/Utils;->closeSilently(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v1, "ActionModeHandler"

    const-string v2, "isDeleteFolderHasAddFile exception "

    .line 1642
    invoke-static {v1, v2, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return v0
.end method

.method private showEditBar()V
    .locals 3

    const/4 v0, 0x1

    .line 258
    iput-boolean v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActionModeIsShowing:Z

    .line 259
    iget-object v1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getEditTitleBarContainer()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 260
    iget-object v1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->showEditTiletBar()V

    .line 261
    iget-object v1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-boolean v2, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mIsGroupAlbum:Z

    xor-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->showDeleteOrRemove(Z)V

    .line 262
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->showEditBottomBar(Lcom/zui/gallery/ui/SelectionManager;)V

    return-void
.end method

.method private updateSelectionInfo()V
    .locals 5

    .line 472
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/app/StateManager;->getTopStateNotEmpty()Lcom/zui/gallery/app/ActivityState;

    move-result-object v0

    .line 474
    iget-object v1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/SelectionManager;->getSelectedCount()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 477
    instance-of v0, v0, Lcom/zui/gallery/app/AlbumSetPage;

    if-eqz v0, :cond_1

    if-gtz v1, :cond_0

    .line 480
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100236

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 481
    invoke-virtual {p0, v0}, Lcom/zui/gallery/ui/ActionModeHandler;->setTitle(Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTxt_delete_albumsetpage()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 486
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTxt_delete_albumsetpage()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 487
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0, v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setAddToPrivacyIfEnnable(Z)V

    goto :goto_0

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTxt_delete_albumsetpage()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 494
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTxt_delete_albumsetpage()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 497
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0e0004

    invoke-virtual {v0, v4, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    .line 499
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v3

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/ui/ActionModeHandler;->setTitle(Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0, v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setAddToPrivacyIfEnnable(Z)V

    goto :goto_0

    .line 505
    :cond_1
    invoke-direct {p0}, Lcom/zui/gallery/ui/ActionModeHandler;->getSelectedInfo()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 507
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 509
    :cond_2
    invoke-virtual {p0, v0}, Lcom/zui/gallery/ui/ActionModeHandler;->setTitle(Ljava/lang/String;)V

    .line 512
    invoke-virtual {p0}, Lcom/zui/gallery/ui/ActionModeHandler;->isMultipleChoice()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 516
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGetMaxContent()I

    move-result v0

    .line 517
    iget-object v1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v4, 0x7f1001b6

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {v1, v4, v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 518
    invoke-virtual {p0, v0}, Lcom/zui/gallery/ui/ActionModeHandler;->setTitle(Ljava/lang/String;)V

    .line 523
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/zui/gallery/ui/ActionModeHandler;->isMultipleChoice()Z

    move-result v0

    if-nez v0, :cond_5

    .line 524
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->selct_all_button:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 525
    iget-object v1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/SelectionManager;->isSelectAll()Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f1000d6

    goto :goto_1

    :cond_4
    const v1, 0x7f100237

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_5
    return-void
.end method


# virtual methods
.method public OnBottomBarButtonClicked(I)V
    .locals 5

    .line 347
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    const v1, 0x7f0800a7

    const/4 v2, 0x1

    if-eq p1, v1, :cond_4

    const v1, 0x7f0800ac

    if-eq p1, v1, :cond_1

    goto/16 :goto_1

    .line 355
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SelectionManager;->getSelectedCount()I

    move-result p1

    const/16 v1, 0x64

    if-le p1, v1, :cond_2

    .line 356
    iget-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v0, 0x7f100255

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 359
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->share_intent:Landroid/content/Intent;

    if-nez p1, :cond_3

    .line 360
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->share_intent:Landroid/content/Intent;

    .line 364
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->share_intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v2, 0x7f100254

    invoke-virtual {v1, v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    .line 366
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 367
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 374
    :cond_4
    iget-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SelectionManager;->isAlbumSet()Z

    move-result p1

    const/4 v3, 0x0

    if-eqz p1, :cond_5

    .line 375
    iget-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 376
    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 375
    invoke-static {p1}, Lcom/zui/gallery/data/GroupBucketHelper;->getAllGroupMemberShipFileCount(Landroid/content/ContentResolver;)I

    move-result p1

    .line 377
    sget v4, Lcom/zui/gallery/ui/ActionModeHandler;->LIMIT:I

    if-le p1, v4, :cond_6

    goto :goto_0

    .line 381
    :cond_5
    iget-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SelectionManager;->getSelectedCount()I

    move-result p1

    .line 382
    sget v4, Lcom/zui/gallery/ui/ActionModeHandler;->LIMIT:I

    if-le p1, v4, :cond_6

    goto :goto_0

    :cond_6
    move v2, v3

    :goto_0
    if-eqz v2, :cond_7

    .line 387
    new-instance p1, Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask;

    invoke-direct {p1, p0, v0}, Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask;-><init>(Lcom/zui/gallery/ui/ActionModeHandler;Lcom/zui/gallery/ui/ActionModeHandler$1;)V

    new-array v0, v3, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 391
    :cond_7
    invoke-direct {p0}, Lcom/zui/gallery/ui/ActionModeHandler;->getDeleteToastInfo()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 393
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 394
    :cond_8
    iget-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 v0, 0x7f0e0000

    iget-object v2, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    .line 395
    invoke-virtual {v2}, Lcom/zui/gallery/ui/SelectionManager;->getSelectedCount()I

    move-result v2

    .line 394
    invoke-virtual {p1, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p1

    .line 397
    :cond_9
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mDeleteProgressListener:Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;

    if-nez v0, :cond_a

    .line 398
    new-instance v0, Lcom/zui/gallery/ui/WakeLockHoldingProgressListener;

    iget-object v2, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const-string v3, "Gallery Delete Progress Listener"

    invoke-direct {v0, v2, v3}, Lcom/zui/gallery/ui/WakeLockHoldingProgressListener;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mDeleteProgressListener:Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;

    .line 401
    :cond_a
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mDeleteProgressListener:Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;

    .line 402
    iget-object v2, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mMenuExecutor:Lcom/zui/gallery/ui/MenuExecutor;

    invoke-virtual {v2, v1, p1, v0}, Lcom/zui/gallery/ui/MenuExecutor;->onMenuClicked(ILjava/lang/String;Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;)V

    :cond_b
    :goto_1
    return-void
.end method

.method public closeDialog()V
    .locals 1

    .line 2129
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mAlertDialog:Lzui/app/ActionDialog;

    if-eqz v0, :cond_0

    .line 2130
    invoke-virtual {v0}, Lzui/app/ActionDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public createShareDialog(Landroid/content/Intent;)V
    .locals 2

    .line 414
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100254

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 415
    new-instance v0, Lcom/zui/gallery/util/ShareMenuUitl;

    invoke-direct {v0}, Lcom/zui/gallery/util/ShareMenuUitl;-><init>()V

    if-eqz p1, :cond_0

    .line 418
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "video/*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 442
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f10023e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 443
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 823
    invoke-virtual {p0}, Lcom/zui/gallery/ui/ActionModeHandler;->closeDialog()V

    .line 824
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mMenuExecutor:Lcom/zui/gallery/ui/MenuExecutor;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/MenuExecutor;->destroy()V

    return-void
.end method

.method public declared-synchronized finishActionMode()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 251
    :try_start_0
    iput-boolean v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActionModeIsShowing:Z

    .line 252
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getEditTitleBarContainer()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->hideEditTitleBar()V

    .line 254
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->hideEditBottomBar()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRemovToastInfo()Ljava/lang/String;
    .locals 10

    .line 1241
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1242
    iget-object v1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/SelectionManager;->isAlbumSet()Z

    move-result v1

    if-nez v1, :cond_14

    .line 1244
    iget-object v1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/SelectionManager;->getImageItemCount()I

    move-result v1

    .line 1245
    iget-object v2, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/zui/gallery/ui/SelectionManager;->getVideoCount()I

    move-result v2

    .line 1246
    iget-object v3, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/zui/gallery/ui/SelectionManager;->getContinuesFolderCount()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v1, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    if-lez v2, :cond_1

    move v7, v5

    goto :goto_1

    :cond_1
    move v7, v4

    :goto_1
    if-lez v3, :cond_2

    move v8, v5

    goto :goto_2

    :cond_2
    move v8, v4

    .line 1251
    :goto_2
    iget-object v9, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v9}, Lcom/zui/gallery/ui/SelectionManager;->inSelectAllMode()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1252
    iget-object v9, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v9}, Lcom/zui/gallery/ui/SelectionManager;->isSelectAll()Z

    move-result v9

    if-nez v9, :cond_6

    .line 1253
    iget-object v6, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v6}, Lcom/zui/gallery/ui/SelectionManager;->getSelectImageItemCount()I

    move-result v6

    .line 1254
    iget-object v7, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v7}, Lcom/zui/gallery/ui/SelectionManager;->getSelectVideoItemCount()I

    move-result v7

    .line 1255
    iget-object v8, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    .line 1256
    invoke-virtual {v8}, Lcom/zui/gallery/ui/SelectionManager;->getSelectContinuesFolderCount()I

    move-result v8

    sub-int/2addr v1, v6

    sub-int/2addr v2, v7

    sub-int/2addr v3, v8

    if-lez v1, :cond_3

    move v6, v5

    goto :goto_3

    :cond_3
    move v6, v4

    :goto_3
    if-lez v2, :cond_4

    move v7, v5

    goto :goto_4

    :cond_4
    move v7, v4

    :goto_4
    if-lez v3, :cond_5

    move v8, v5

    goto :goto_5

    :cond_5
    move v8, v4

    :cond_6
    :goto_5
    if-eqz v8, :cond_b

    .line 1267
    iget-object v9, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    .line 1268
    invoke-virtual {v9}, Lcom/zui/gallery/ui/SelectionManager;->getSelectContinuesFolderImageCount()I

    goto :goto_9

    .line 1271
    :cond_7
    iget-object v1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/SelectionManager;->getSelectImageItemCount()I

    move-result v1

    .line 1272
    iget-object v2, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/zui/gallery/ui/SelectionManager;->getSelectVideoItemCount()I

    move-result v2

    .line 1273
    iget-object v3, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/zui/gallery/ui/SelectionManager;->getSelectContinuesFolderCount()I

    move-result v3

    if-lez v1, :cond_8

    move v6, v5

    goto :goto_6

    :cond_8
    move v6, v4

    :goto_6
    if-lez v2, :cond_9

    move v7, v5

    goto :goto_7

    :cond_9
    move v7, v4

    :goto_7
    if-lez v3, :cond_a

    move v8, v5

    goto :goto_8

    :cond_a
    move v8, v4

    :goto_8
    if-eqz v8, :cond_b

    .line 1278
    iget-object v9, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    .line 1279
    invoke-virtual {v9}, Lcom/zui/gallery/ui/SelectionManager;->getSelectContinuesFolderImageCount()I

    :cond_b
    :goto_9
    if-eqz v6, :cond_d

    if-nez v7, :cond_d

    if-nez v8, :cond_d

    if-le v1, v5, :cond_c

    const v2, 0x7f1000c4

    new-array v3, v5, [Ljava/lang/Object;

    .line 1284
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b

    :cond_c
    const v1, 0x7f1000cf

    .line 1287
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b

    :cond_d
    if-eqz v7, :cond_f

    if-nez v6, :cond_f

    if-nez v8, :cond_f

    if-le v2, v5, :cond_e

    const v1, 0x7f1000c6

    new-array v3, v5, [Ljava/lang/Object;

    .line 1292
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_e
    const v1, 0x7f1000d1

    .line 1295
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_f
    if-eqz v8, :cond_10

    if-nez v6, :cond_10

    if-nez v7, :cond_10

    goto :goto_a

    :cond_10
    const v9, 0x7f1000bb

    if-eqz v6, :cond_11

    if-eqz v7, :cond_11

    if-nez v8, :cond_11

    new-array v3, v5, [Ljava/lang/Object;

    add-int/2addr v1, v2

    .line 1306
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v0, v9, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_11
    if-eqz v6, :cond_12

    if-eqz v8, :cond_12

    if-nez v7, :cond_12

    goto :goto_a

    :cond_12
    if-eqz v7, :cond_13

    if-eqz v8, :cond_13

    if-nez v6, :cond_13

    goto :goto_a

    :cond_13
    if-eqz v6, :cond_14

    if-eqz v7, :cond_14

    if-eqz v8, :cond_14

    new-array v3, v5, [Ljava/lang/Object;

    add-int/2addr v1, v2

    .line 1327
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v0, v9, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_14
    :goto_a
    const/4 v0, 0x0

    :goto_b
    return-object v0
.end method

.method public isActionModeIsShowing()Z
    .locals 1

    .line 247
    iget-boolean v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActionModeIsShowing:Z

    return v0
.end method

.method public isMultipleChoice()Z
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isWidget()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 242
    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isGetMultContent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 243
    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGetMaxContent()I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 836
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/zui/gallery/ui/ActionModeHandler;->lastClickTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    .line 839
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->lastClickTime:J

    .line 841
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 842
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object v0

    .line 843
    invoke-interface {v0}, Lcom/zui/gallery/ui/GLRoot;->lockRenderThread()V

    const v1, 0x7f080301

    if-eq p1, v1, :cond_4

    const v1, 0x7f080304

    if-eq p1, v1, :cond_1

    goto/16 :goto_0

    .line 848
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f100237

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 849
    iget-object v1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10006a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 850
    iget-object v2, p0, Lcom/zui/gallery/ui/ActionModeHandler;->selct_all_button:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 851
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 852
    iget-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->selct_all_button:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 853
    iget-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SelectionManager;->selectAll()V

    .line 855
    sget-object p1, Lcom/zui/gallery/util/AvatarUtils$Catagory;->SELECTMODE:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    sget-object v1, Lcom/zui/gallery/util/AvatarUtils$Action;->CHECK_ALL:Lcom/zui/gallery/util/AvatarUtils$Action;

    const-string v2, ""

    invoke-static {p1, v1, v2, v3}, Lcom/zui/gallery/util/AvatarUtils;->trackEvent(Lcom/zui/gallery/util/AvatarUtils$Catagory;Lcom/zui/gallery/util/AvatarUtils$Action;Ljava/lang/String;I)V

    goto :goto_0

    .line 857
    :cond_2
    iget-object v1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->selct_all_button:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 858
    invoke-virtual {p0}, Lcom/zui/gallery/ui/ActionModeHandler;->isMultipleChoice()Z

    move-result p1

    if-nez p1, :cond_3

    .line 859
    iget-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f1001db

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 860
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/ActionModeHandler;->setTitle(Ljava/lang/String;)V

    .line 863
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getBtn_add_to()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 864
    iget-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getBtn_share()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 865
    iget-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getBtn_delete()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 866
    iget-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getBtn_img_remove()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 867
    iget-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getBtn_remove()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 868
    iget-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1, v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setAddToPrivacyIfEnnable(Z)V

    .line 870
    iget-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SelectionManager;->reEnterSelectionMode()V

    .line 871
    invoke-virtual {p0, v3}, Lcom/zui/gallery/ui/ActionModeHandler;->updateInfo(Z)V

    goto :goto_0

    .line 876
    :cond_4
    iget-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SelectionManager;->leaveSelectionMode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 882
    :goto_0
    invoke-interface {v0}, Lcom/zui/gallery/ui/GLRoot;->unlockRenderThread()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Lcom/zui/gallery/ui/GLRoot;->unlockRenderThread()V

    .line 883
    throw p1
.end method

.method public onFloatDialogItemClick(ILcom/zui/gallery/data/Path;)V
    .locals 5

    const v0, 0x7f0800ac

    if-ne p1, v0, :cond_3

    .line 1459
    iget-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object p1

    .line 1460
    invoke-virtual {p1, p2}, Lcom/zui/gallery/data/DataManager;->getContentUri(Lcom/zui/gallery/data/Path;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1462
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.SEND"

    .line 1463
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    .line 1464
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v2, 0x1

    .line 1466
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1467
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content://media/external/images"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "image/*"

    if-eqz v2, :cond_0

    .line 1468
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1469
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "content://media/external/video"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "video/*"

    .line 1470
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1472
    :cond_1
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1476
    :goto_0
    invoke-virtual {p1, p2}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object p1

    .line 1477
    instance-of v2, p1, Lcom/zui/gallery/data/LocalImage;

    if-eqz v2, :cond_2

    .line 1478
    check-cast p1, Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {p2}, Lcom/zui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/zui/gallery/util/GalleryUtils;->isCapturedBy360Mods(Lcom/zui/gallery/data/MediaItem;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "is_360_mod_image"

    .line 1479
    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1480
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "media_path"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1481
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "media path is"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "is360:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ActionModeHandler"

    invoke-static {p2, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const p2, 0x7f100254

    invoke-virtual {p1, p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    const v0, 0x7f0800a7

    if-ne p1, v0, :cond_6

    .line 1487
    invoke-direct {p0, p2}, Lcom/zui/gallery/ui/ActionModeHandler;->getDeleteToastInfoForFloatDialog(Lcom/zui/gallery/data/Path;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1488
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1489
    :cond_4
    iget-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 v0, 0x7f0e0000

    iget-object v1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    .line 1490
    invoke-virtual {v1}, Lcom/zui/gallery/ui/SelectionManager;->getSelectedCount()I

    move-result v1

    .line 1489
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p1

    .line 1493
    :cond_5
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v0, p1}, Lcom/zui/gallery/util/GalleryUtils;->getActionDialogBuilder(Landroid/app/Activity;Ljava/lang/String;)Lzui/app/ActionDialog$Builder;

    move-result-object p1

    const v0, 0x7f1000b9

    new-instance v1, Lcom/zui/gallery/ui/ActionModeHandler$4;

    invoke-direct {v1, p0, p2}, Lcom/zui/gallery/ui/ActionModeHandler$4;-><init>(Lcom/zui/gallery/ui/ActionModeHandler;Lcom/zui/gallery/data/Path;)V

    .line 1494
    invoke-virtual {p1, v0, v1}, Lzui/app/ActionDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;

    move-result-object p1

    const p2, 0x7f100068

    new-instance v0, Lcom/zui/gallery/ui/ActionModeHandler$3;

    invoke-direct {v0, p0}, Lcom/zui/gallery/ui/ActionModeHandler$3;-><init>(Lcom/zui/gallery/ui/ActionModeHandler;)V

    .line 1515
    invoke-virtual {p1, p2, v0}, Lzui/app/ActionDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;

    move-result-object p1

    .line 1522
    invoke-virtual {p1}, Lzui/app/ActionDialog$Builder;->create()Lzui/app/ActionDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mAlertDialog:Lzui/app/ActionDialog;

    .line 1523
    invoke-virtual {p1}, Lzui/app/ActionDialog;->show()V

    :cond_6
    :goto_1
    return-void
.end method

.method public onPopupItemClick(I)Z
    .locals 1

    .line 457
    iget-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object p1

    .line 458
    invoke-interface {p1}, Lcom/zui/gallery/ui/GLRoot;->lockRenderThread()V

    const/4 v0, 0x1

    .line 466
    invoke-interface {p1}, Lcom/zui/gallery/ui/GLRoot;->unlockRenderThread()V

    return v0
.end method

.method public pause()V
    .locals 1

    .line 815
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mMenuTask:Lcom/zui/gallery/util/Future;

    if-eqz v0, :cond_0

    .line 816
    invoke-interface {v0}, Lcom/zui/gallery/util/Future;->cancel()V

    const/4 v0, 0x0

    .line 817
    iput-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mMenuTask:Lcom/zui/gallery/util/Future;

    .line 819
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mMenuExecutor:Lcom/zui/gallery/ui/MenuExecutor;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/MenuExecutor;->pause()V

    return-void
.end method

.method public resume()V
    .locals 1

    .line 828
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    invoke-virtual {p0}, Lcom/zui/gallery/ui/ActionModeHandler;->updateSupportedOperation()V

    .line 830
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mMenuExecutor:Lcom/zui/gallery/ui/MenuExecutor;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/MenuExecutor;->resume()V

    return-void
.end method

.method public setActionModeView(Landroid/view/ViewGroup;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActionModeView:Landroid/view/ViewGroup;

    return-void
.end method

.method public setActionModelTitleMaxLenght(Z)V
    .locals 1

    .line 2118
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->selection_info:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/16 p1, 0x14a

    .line 2120
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x438

    .line 2122
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setDeleteProgressListener(Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mDeleteProgressListener:Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;

    return-void
.end method

.method public setIsGroupAlbum(Z)V
    .locals 0

    .line 271
    iput-boolean p1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mIsGroupAlbum:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "title "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "xxx"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->selection_info:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public declared-synchronized startActionMode()V
    .locals 2

    monitor-enter p0

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActionModeView:Landroid/view/ViewGroup;

    const v1, 0x7f080304

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->select_all_button_container:Landroid/widget/LinearLayout;

    .line 208
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActionModeView:Landroid/view/ViewGroup;

    const v1, 0x7f080303

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->selct_all_button:Landroid/widget/TextView;

    .line 219
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActionModeView:Landroid/view/ViewGroup;

    const v1, 0x7f080305

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->selection_info:Landroid/widget/TextView;

    .line 220
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActionModeView:Landroid/view/ViewGroup;

    const v1, 0x7f080301

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->selection_cancel_container:Landroid/widget/LinearLayout;

    .line 221
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-wide/16 v0, 0x0

    .line 222
    iput-wide v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->lastClickTime:J

    .line 223
    invoke-direct {p0}, Lcom/zui/gallery/ui/ActionModeHandler;->updateSelectionInfo()V

    .line 224
    invoke-direct {p0}, Lcom/zui/gallery/ui/ActionModeHandler;->showEditBar()V

    .line 225
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->needUpadateTitleTextWidth()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/ui/ActionModeHandler;->setActionModelTitleMaxLenght(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateInfo(Z)V
    .locals 2

    .line 229
    invoke-virtual {p0}, Lcom/zui/gallery/ui/ActionModeHandler;->isMultipleChoice()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 230
    iget-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->selct_all_button:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 231
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v1, 0x7f100068

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->selct_all_button:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 234
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler;->selct_all_button:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateSupportedOperation()V
    .locals 2

    .line 706
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mMenuTask:Lcom/zui/gallery/util/Future;

    if-eqz v0, :cond_0

    .line 707
    invoke-interface {v0}, Lcom/zui/gallery/util/Future;->cancel()V

    .line 709
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/ui/ActionModeHandler;->updateSelectionInfo()V

    .line 712
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mSharePanoramaMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 713
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 714
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mShareMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    .line 715
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 719
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getThreadPool()Lcom/zui/gallery/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/zui/gallery/ui/ActionModeHandler$2;

    invoke-direct {v1, p0}, Lcom/zui/gallery/ui/ActionModeHandler$2;-><init>(Lcom/zui/gallery/ui/ActionModeHandler;)V

    invoke-virtual {v0, v1}, Lcom/zui/gallery/util/ThreadPool;->submit(Lcom/zui/gallery/util/ThreadPool$Job;)Lcom/zui/gallery/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler;->mMenuTask:Lcom/zui/gallery/util/Future;

    return-void
.end method

.method public updateSupportedOperation(Lcom/zui/gallery/data/Path;Z)V
    .locals 0

    .line 701
    invoke-virtual {p0}, Lcom/zui/gallery/ui/ActionModeHandler;->updateSupportedOperation()V

    return-void
.end method
