.class public Lcom/zui/gallery/ui/MenuExecutor;
.super Ljava/lang/Object;
.source "MenuExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/ui/MenuExecutor$MediaOperation;,
        Lcom/zui/gallery/ui/MenuExecutor$ConfirmDialogListener;,
        Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;
    }
.end annotation


# static fields
.field public static final EXECUTION_RESULT_CANCEL:I = 0x3

.field public static final EXECUTION_RESULT_FAIL:I = 0x2

.field public static final EXECUTION_RESULT_SUCCESS:I = 0x1

.field private static final MSG_DO_SHARE:I = 0x4

.field private static final MSG_TASK_COMPLETE:I = 0x1

.field private static final MSG_TASK_START:I = 0x3

.field private static final MSG_TASK_UPDATE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MenuExecutor"


# instance fields
.field private isAtLeastBuildVersion:Z

.field private isExStorageManager:Z

.field private final mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

.field private mActivityState:Lcom/zui/gallery/app/ActivityState;

.field private mAlertDialog:Lzui/app/ActionDialog;

.field private mDialog:Lcom/zui/gallery/ui/CustomProgressDialog;

.field private final mHandler:Landroid/os/Handler;

.field private mPaused:Z

.field private mPornPicture:Z

.field private final mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

.field private mTask:Lcom/zui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/gallery/util/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mWaitOnStop:Z


# direct methods
.method public constructor <init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/ui/SelectionManager;)V
    .locals 1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/zui/gallery/ui/MenuExecutor;->mPornPicture:Z

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/zui/gallery/ui/MenuExecutor;->mActivityState:Lcom/zui/gallery/app/ActivityState;

    const/16 v0, 0x1e

    .line 108
    invoke-static {v0}, Lcom/zui/gallery/util/GalleryUtils;->isAtLeastBuildVersion(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/gallery/ui/MenuExecutor;->isAtLeastBuildVersion:Z

    .line 109
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->isExStorageManager()Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/gallery/ui/MenuExecutor;->isExStorageManager:Z

    .line 141
    invoke-static {p1}, Lcom/zui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/app/AbstractGalleryActivity;

    iput-object p1, p0, Lcom/zui/gallery/ui/MenuExecutor;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 142
    invoke-static {p2}, Lcom/zui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/ui/SelectionManager;

    iput-object p1, p0, Lcom/zui/gallery/ui/MenuExecutor;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    .line 143
    new-instance p1, Lcom/zui/gallery/ui/MenuExecutor$1;

    iget-object p2, p0, Lcom/zui/gallery/ui/MenuExecutor;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/zui/gallery/ui/MenuExecutor$1;-><init>(Lcom/zui/gallery/ui/MenuExecutor;Lcom/zui/gallery/ui/GLRoot;)V

    iput-object p1, p0, Lcom/zui/gallery/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/ui/MenuExecutor;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/zui/gallery/ui/MenuExecutor;->stopTaskAndDismissDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/zui/gallery/ui/MenuExecutor;)Lcom/zui/gallery/ui/SelectionManager;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/zui/gallery/ui/MenuExecutor;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/zui/gallery/ui/MenuExecutor;Lcom/zui/gallery/data/DataManager;Lcom/zui/gallery/util/ThreadPool$JobContext;ILcom/zui/gallery/data/Path;)Z
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zui/gallery/ui/MenuExecutor;->execute(Lcom/zui/gallery/data/DataManager;Lcom/zui/gallery/util/ThreadPool$JobContext;ILcom/zui/gallery/data/Path;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/zui/gallery/ui/MenuExecutor;ILcom/zui/gallery/ui/MenuExecutor$ProgressListener;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/ui/MenuExecutor;->onProgressUpdate(ILcom/zui/gallery/ui/MenuExecutor$ProgressListener;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/zui/gallery/ui/MenuExecutor;ILcom/zui/gallery/ui/MenuExecutor$ProgressListener;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/ui/MenuExecutor;->onProgressComplete(ILcom/zui/gallery/ui/MenuExecutor$ProgressListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/zui/gallery/ui/MenuExecutor;)Lcom/zui/gallery/ui/CustomProgressDialog;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/zui/gallery/ui/MenuExecutor;->mDialog:Lcom/zui/gallery/ui/CustomProgressDialog;

    return-object p0
.end method

.method static synthetic access$300(Lcom/zui/gallery/ui/MenuExecutor;)Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Lcom/zui/gallery/ui/MenuExecutor;->mPaused:Z

    return p0
.end method

.method static synthetic access$400(Lcom/zui/gallery/ui/MenuExecutor;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/zui/gallery/ui/MenuExecutor;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$500(Lcom/zui/gallery/ui/MenuExecutor;ILcom/zui/gallery/ui/MenuExecutor$ProgressListener;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/ui/MenuExecutor;->onMenuClicked(ILcom/zui/gallery/ui/MenuExecutor$ProgressListener;)V

    return-void
.end method

.method static synthetic access$600(Lcom/zui/gallery/ui/MenuExecutor;Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/MenuExecutor;->onProgressStart(Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;)V

    return-void
.end method

.method static synthetic access$700(Lcom/zui/gallery/ui/MenuExecutor;Lcom/zui/gallery/util/ThreadPool$JobContext;Ljava/util/ArrayList;Lcom/zui/gallery/data/DataManager;Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;)I
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zui/gallery/ui/MenuExecutor;->doDeleteBatch(Lcom/zui/gallery/util/ThreadPool$JobContext;Ljava/util/ArrayList;Lcom/zui/gallery/data/DataManager;Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;)I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/zui/gallery/ui/MenuExecutor;)Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Lcom/zui/gallery/ui/MenuExecutor;->mPornPicture:Z

    return p0
.end method

.method static synthetic access$900(Lcom/zui/gallery/ui/MenuExecutor;)Lcom/zui/gallery/app/ActivityState;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/zui/gallery/ui/MenuExecutor;->mActivityState:Lcom/zui/gallery/app/ActivityState;

    return-object p0
.end method

.method private addItemToTrashCan(Ljava/lang/String;ZZIII)V
    .locals 11

    move-object v1, p1

    const-string v0, "/"

    .line 996
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 997
    array-length v3, v2

    .line 999
    sget-object v4, Lcom/zui/gallery/database/GalleryContract$TrashFiles;->TRASH_DIRECTORY_PATH:Ljava/lang/String;

    .line 1001
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1002
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1003
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "zlq"

    const-string v7, "Folder does not exist, create folder"

    .line 1004
    invoke-static {v6, v7}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    .line 1008
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v3, -0x1

    aget-object v6, v2, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz p3, :cond_1

    .line 1019
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/zui/gallery/database/GalleryContract$TrashFiles;->TRASH_DIRECTORY_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, -0x2

    aget-object v6, v2, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v2, v4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1020
    aget-object v0, v2, v3

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    move-object v6, v0

    .line 1023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destFilePath = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " continousImageParentPath ="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "KKKKKKKKKKKKKKKKKKKK"

    invoke-static {v3, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_3

    .line 1025
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1026
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/zui/gallery/database/GalleryContract$TrashFiles;->TRASH_DIRECTORY_PATH:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1027
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1028
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1030
    :cond_2
    new-instance v3, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/.nomedia"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1031
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1033
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1041
    :catch_0
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tmp:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "shanshenmeshan"

    invoke-static {v3, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    invoke-static {p1, v5}, Lcom/zui/gallery/util/GalleryUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_4

    .line 1044
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_4
    move-object v10, p0

    .line 1046
    iget-object v0, v10, Lcom/zui/gallery/ui/MenuExecutor;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    aget-object v2, v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object v1, p1

    move v5, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-static/range {v0 .. v9}, Lcom/zui/gallery/util/GalleryUtils;->insertTrashDb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;III)V

    return-void
.end method

.method private addToTrashCan(Lcom/zui/gallery/data/MediaSet;)V
    .locals 8

    if-eqz p1, :cond_0

    .line 1050
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaSet;->getMediaItemCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 1051
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaSet;->getMediaItemCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object p1

    .line 1052
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/data/MediaItem;

    .line 1053
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

    invoke-direct/range {v1 .. v7}, Lcom/zui/gallery/ui/MenuExecutor;->addItemToTrashCan(Ljava/lang/String;ZZIII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static createCustomProgressDialog(Landroid/content/Context;II)Lcom/zui/gallery/ui/CustomProgressDialog;
    .locals 1

    .line 114
    new-instance v0, Lcom/zui/gallery/ui/CustomProgressDialog;

    invoke-direct {v0, p0, p1, p2}, Lcom/zui/gallery/ui/CustomProgressDialog;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method

.method private static createProgressDialog(Landroid/content/Context;II)Landroid/app/ProgressDialog;
    .locals 1

    .line 120
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 121
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 122
    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMax(I)V

    const/4 p0, 0x0

    .line 123
    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 124
    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/4 p0, 0x1

    if-le p2, p0, :cond_0

    .line 126
    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    :cond_0
    return-object v0
.end method

.method private doDeleteBatch(Lcom/zui/gallery/util/ThreadPool$JobContext;Ljava/util/ArrayList;Lcom/zui/gallery/data/DataManager;Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;)I
    .locals 41
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/gallery/util/ThreadPool$JobContext;",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/Path;",
            ">;",
            "Lcom/zui/gallery/data/DataManager;",
            "Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;",
            ")I"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 608
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 609
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 610
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 611
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 612
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 613
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 614
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 615
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 616
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 618
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 619
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 634
    iget-object v0, v1, Lcom/zui/gallery/ui/MenuExecutor;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    if-eqz v0, :cond_0

    .line 635
    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->isVirtualAlbum()Z

    move-result v0

    .line 636
    iget-object v15, v1, Lcom/zui/gallery/ui/MenuExecutor;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v15}, Lcom/zui/gallery/ui/SelectionManager;->getGroupAlbumId()I

    move-result v15

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v15, -0x1

    .line 638
    :goto_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "delete type onlyDeleteGroupData 12345 "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v13, "MenuExecutor"

    invoke-static {v13, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 641
    iget-object v0, v1, Lcom/zui/gallery/ui/MenuExecutor;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/app/GalleryApp;

    const/4 v14, 0x0

    move/from16 v20, v15

    invoke-static {v0, v14}, Lcom/zui/gallery/cloud/CloudUtils;->getAllCloudAlbums(Lcom/zui/gallery/app/GalleryApp;Ljava/util/List;)Ljava/util/List;

    move-result-object v15

    .line 642
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x0

    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v14, ","

    if-eqz v0, :cond_12

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/data/Path;

    .line 643
    invoke-interface/range {p1 .. p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v27

    if-eqz v27, :cond_1

    move-object/from16 v31, v5

    move-object/from16 v32, v7

    move-object v7, v8

    move-object/from16 v25, v12

    move-object v8, v2

    move-object v5, v3

    move-object v2, v9

    move/from16 v3, v26

    move-object/from16 v26, v13

    const/4 v13, 0x3

    goto/16 :goto_c

    :cond_1
    move-object/from16 v27, v9

    .line 647
    invoke-virtual {v2, v0}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v9

    if-eqz v9, :cond_11

    move-object/from16 v28, v0

    .line 650
    instance-of v0, v9, Lcom/zui/gallery/data/LocalImage;

    const-string v2, "\',"

    move-object/from16 v29, v8

    const-string v8, "\'"

    move-object/from16 v30, v6

    const-string v6, "/"

    if-eqz v0, :cond_9

    .line 651
    check-cast v9, Lcom/zui/gallery/data/LocalImage;

    .line 654
    invoke-virtual {v9}, Lcom/zui/gallery/data/LocalImage;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 655
    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 656
    array-length v6, v0

    const/4 v3, 0x1

    if-le v6, v3, :cond_2

    .line 657
    array-length v6, v0

    add-int/lit8 v6, v6, -0x2

    aget-object v6, v0, v6

    move-object/from16 v31, v7

    .line 658
    array-length v7, v0

    sub-int/2addr v7, v3

    aget-object v0, v0, v7

    .line 659
    invoke-interface {v15, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 660
    iget-object v3, v1, Lcom/zui/gallery/ui/MenuExecutor;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/app/GalleryApp;

    invoke-static {v3, v6, v0}, Lcom/zui/gallery/cloud/CloudUtils;->deleteCloudFileIfExist(Lcom/zui/gallery/app/GalleryApp;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    :cond_2
    move-object/from16 v31, v7

    .line 664
    :cond_3
    :goto_2
    iget-object v0, v1, Lcom/zui/gallery/ui/MenuExecutor;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->isCameraAlbum()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, v9, Lcom/zui/gallery/data/LocalImage;->isContinuousCover:Z

    if-eqz v0, :cond_7

    .line 673
    invoke-virtual {v9}, Lcom/zui/gallery/data/LocalImage;->getBucketId()I

    move-result v0

    .line 674
    sget-object v2, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_IMAGE:Lcom/zui/gallery/data/Path;

    invoke-virtual {v2, v0}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v2

    move/from16 v3, v26

    add-int/lit8 v26, v3, 0x1

    .line 681
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete cs folder "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/zui/gallery/data/LocalImage;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iget-object v3, v1, Lcom/zui/gallery/ui/MenuExecutor;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    .line 684
    sget-object v33, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id"

    .line 686
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v34

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    .line 688
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v6, v3

    const/16 v37, 0x0

    const-string v35, "bucket_id = ? and _size >0 "

    move-object/from16 v36, v6

    .line 686
    invoke-virtual/range {v32 .. v37}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cursor  getCount as "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :goto_3
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v6, 0x0

    .line 694
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 695
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cursor  id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_4
    if-eqz v3, :cond_6

    .line 703
    :goto_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 699
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 700
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "continuousIds:Exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_6

    goto :goto_4

    :goto_5
    if-eqz v3, :cond_5

    .line 703
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 705
    :cond_5
    throw v0

    .line 707
    :cond_6
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bucketIdList size as "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v6, p4

    move-object/from16 v7, v31

    const/16 v22, 0x1

    goto :goto_8

    :cond_7
    move/from16 v3, v26

    .line 713
    iget-boolean v0, v1, Lcom/zui/gallery/ui/MenuExecutor;->isAtLeastBuildVersion:Z

    if-eqz v0, :cond_8

    iget-boolean v0, v1, Lcom/zui/gallery/ui/MenuExecutor;->isExStorageManager:Z

    if-nez v0, :cond_8

    .line 714
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget v2, v9, Lcom/zui/gallery/data/LocalImage;->id:I

    int-to-long v6, v2

    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 715
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v6, p4

    move/from16 v26, v3

    move-object/from16 v7, v31

    goto :goto_7

    .line 718
    :cond_8
    iget v0, v9, Lcom/zui/gallery/data/LocalImage;->id:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/zui/gallery/data/LocalImage;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    iget v0, v9, Lcom/zui/gallery/data/LocalImage;->id:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v7, v31

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v2, v25

    add-int/lit8 v25, v2, 0x1

    move-object/from16 v6, p4

    .line 725
    invoke-direct {v1, v2, v6}, Lcom/zui/gallery/ui/MenuExecutor;->onProgressUpdate(ILcom/zui/gallery/ui/MenuExecutor$ProgressListener;)V

    move/from16 v26, v3

    :goto_7
    const/16 v23, 0x1

    :goto_8
    move-object/from16 v8, p3

    move-object/from16 v31, v5

    move-object v5, v6

    move-object/from16 v32, v7

    move/from16 v0, v25

    move/from16 v3, v26

    move-object/from16 v2, v27

    move-object/from16 v7, v29

    move-object/from16 v6, v30

    move-object/from16 v25, v12

    move-object/from16 v26, v13

    goto/16 :goto_b

    :cond_9
    move-object/from16 v31, v5

    move-object v5, v3

    move/from16 v3, v26

    move/from16 v40, v25

    move-object/from16 v25, v12

    move/from16 v12, v40

    .line 728
    instance-of v0, v9, Lcom/zui/gallery/data/LocalVideo;

    if-eqz v0, :cond_d

    .line 729
    check-cast v9, Lcom/zui/gallery/data/LocalVideo;

    .line 732
    invoke-virtual {v9}, Lcom/zui/gallery/data/LocalVideo;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 733
    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 734
    array-length v6, v0

    move-object/from16 v26, v13

    const/4 v13, 0x1

    if-le v6, v13, :cond_a

    .line 735
    array-length v6, v0

    add-int/lit8 v6, v6, -0x2

    aget-object v6, v0, v6

    move-object/from16 v32, v7

    .line 736
    array-length v7, v0

    sub-int/2addr v7, v13

    aget-object v0, v0, v7

    .line 737
    invoke-interface {v15, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 738
    iget-object v7, v1, Lcom/zui/gallery/ui/MenuExecutor;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v7

    check-cast v7, Lcom/zui/gallery/app/GalleryApp;

    invoke-static {v7, v6, v0}, Lcom/zui/gallery/cloud/CloudUtils;->deleteCloudFileIfExist(Lcom/zui/gallery/app/GalleryApp;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_9

    :cond_a
    move-object/from16 v32, v7

    .line 742
    :cond_b
    :goto_9
    iget v0, v9, Lcom/zui/gallery/data/LocalVideo;->id:I

    move-object/from16 v6, v30

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    iget v0, v9, Lcom/zui/gallery/data/LocalVideo;->id:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v7, v29

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/zui/gallery/data/LocalVideo;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v12, 0x1

    .line 749
    invoke-direct {v1, v12, v5}, Lcom/zui/gallery/ui/MenuExecutor;->onProgressUpdate(ILcom/zui/gallery/ui/MenuExecutor$ProgressListener;)V

    .line 751
    iget-boolean v2, v1, Lcom/zui/gallery/ui/MenuExecutor;->isAtLeastBuildVersion:Z

    if-eqz v2, :cond_c

    iget-boolean v2, v1, Lcom/zui/gallery/ui/MenuExecutor;->isExStorageManager:Z

    if-nez v2, :cond_c

    .line 752
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget v8, v9, Lcom/zui/gallery/data/LocalVideo;->id:I

    int-to-long v8, v8

    invoke-static {v2, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 753
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    move-object/from16 v8, p3

    move-object/from16 v2, v27

    const/16 v24, 0x1

    goto/16 :goto_b

    :cond_d
    move-object/from16 v32, v7

    move-object/from16 v26, v13

    move-object/from16 v7, v29

    move-object/from16 v6, v30

    .line 755
    instance-of v0, v9, Lcom/zui/gallery/data/CloudImage;

    if-eqz v0, :cond_f

    .line 756
    check-cast v9, Lcom/zui/gallery/data/CloudImage;

    .line 757
    invoke-virtual {v9}, Lcom/zui/gallery/data/CloudImage;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v27

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v12, 0x1

    .line 758
    invoke-direct {v1, v12, v5}, Lcom/zui/gallery/ui/MenuExecutor;->onProgressUpdate(ILcom/zui/gallery/ui/MenuExecutor$ProgressListener;)V

    .line 760
    iget-boolean v8, v1, Lcom/zui/gallery/ui/MenuExecutor;->isAtLeastBuildVersion:Z

    if-eqz v8, :cond_e

    iget-boolean v8, v1, Lcom/zui/gallery/ui/MenuExecutor;->isExStorageManager:Z

    if-nez v8, :cond_e

    .line 761
    sget-object v8, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Lcom/zui/gallery/data/CloudImage;->getId()I

    move-result v9

    int-to-long v12, v9

    invoke-static {v8, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 762
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    move-object/from16 v8, p3

    goto :goto_b

    :cond_f
    move-object/from16 v2, v27

    .line 764
    invoke-virtual {v9}, Lcom/zui/gallery/data/MediaObject;->isMediaSet()Z

    move-result v0

    if-eqz v0, :cond_10

    add-int/lit8 v0, v3, 0x1

    move-object/from16 v8, p3

    move-object/from16 v3, v28

    .line 767
    invoke-virtual {v8, v3}, Lcom/zui/gallery/data/DataManager;->delete(Lcom/zui/gallery/data/Path;)V

    add-int/lit8 v3, v12, 0x1

    .line 768
    invoke-direct {v1, v12, v5}, Lcom/zui/gallery/ui/MenuExecutor;->onProgressUpdate(ILcom/zui/gallery/ui/MenuExecutor$ProgressListener;)V

    move/from16 v40, v3

    move v3, v0

    move/from16 v0, v40

    goto :goto_b

    :cond_10
    move-object/from16 v8, p3

    goto :goto_a

    :cond_11
    move-object/from16 v31, v5

    move-object/from16 v32, v7

    move-object v7, v8

    move-object v8, v2

    move-object v5, v3

    move/from16 v3, v26

    move-object/from16 v2, v27

    move-object/from16 v26, v13

    move/from16 v40, v25

    move-object/from16 v25, v12

    move/from16 v12, v40

    :goto_a
    move v0, v12

    :goto_b
    move-object v9, v2

    move-object v2, v8

    move-object/from16 v12, v25

    move-object/from16 v13, v26

    move/from16 v25, v0

    move/from16 v26, v3

    move-object v3, v5

    move-object v8, v7

    move-object/from16 v5, v31

    move-object/from16 v7, v32

    goto/16 :goto_1

    :cond_12
    move-object/from16 v31, v5

    move-object/from16 v32, v7

    move-object v7, v8

    move-object/from16 v25, v12

    move-object v8, v2

    move-object v5, v3

    move-object v2, v9

    move/from16 v3, v26

    move-object/from16 v26, v13

    const/4 v13, -0x1

    .line 773
    :goto_c
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/2addr v0, v9

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/2addr v0, v9

    .line 774
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "delete toatal file = "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v12, v26

    invoke-static {v12, v9}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v9, 0x1f4

    if-le v0, v9, :cond_13

    const/4 v9, 0x1

    goto :goto_d

    :cond_13
    const/4 v9, 0x0

    :goto_d
    if-nez v9, :cond_14

    if-eqz v22, :cond_14

    const/4 v0, 0x0

    .line 780
    :goto_e
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v0, v15, :cond_14

    move-object/from16 v15, v25

    .line 781
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v15, v16

    check-cast v15, Lcom/zui/gallery/data/Path;

    .line 782
    invoke-virtual {v8, v15}, Lcom/zui/gallery/data/DataManager;->delete(Lcom/zui/gallery/data/Path;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_14
    const/16 v0, 0x1e

    .line 786
    invoke-static {v0}, Lcom/zui/gallery/util/GalleryUtils;->isAtLeastBuildVersion(I)Z

    move-result v0

    const-string/jumbo v15, "total delete video count1 "

    move-object/from16 v16, v11

    const-string/jumbo v11, "total delete image count1 "

    move-object/from16 v29, v7

    const-string v7, ")"

    move-object/from16 v21, v14

    const-string v14, "is_trashed"

    if-eqz v0, :cond_17

    iget-boolean v0, v1, Lcom/zui/gallery/ui/MenuExecutor;->isExStorageManager:Z

    if-nez v0, :cond_17

    if-nez v22, :cond_15

    if-nez v23, :cond_15

    if-eqz v24, :cond_16

    .line 788
    :cond_15
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_16

    .line 789
    iget-object v0, v1, Lcom/zui/gallery/ui/MenuExecutor;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v10}, Landroid/provider/MediaStore;->createDeleteRequest(Landroid/content/ContentResolver;Ljava/util/Collection;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 791
    :try_start_2
    iget-object v6, v1, Lcom/zui/gallery/ui/MenuExecutor;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v34

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v33, v6

    invoke-virtual/range {v33 .. v39}, Lcom/zui/gallery/app/AbstractGalleryActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_2
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_f

    :catch_1
    move-exception v0

    .line 794
    invoke-virtual {v0}, Landroid/content/IntentSender$SendIntentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v6, "SendIntentException = "

    invoke-static {v6, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    :goto_f
    move/from16 v27, v3

    move-object/from16 v28, v4

    move/from16 p1, v9

    move/from16 v25, v13

    goto/16 :goto_11

    :cond_17
    const-string v0, "android:query-arg-allow-movement"

    const-string v10, "android:query-arg-sql-selection"

    const-string v8, "_id in "

    if-eqz v23, :cond_18

    .line 800
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->length()I

    move-result v25

    const/16 v26, 0x1

    add-int/lit8 v5, v25, -0x1

    move/from16 p1, v9

    move-object/from16 v9, v31

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 801
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move/from16 v25, v13

    .line 805
    iget-object v13, v1, Lcom/zui/gallery/ui/MenuExecutor;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v13}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    move/from16 v27, v3

    .line 806
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v28, v4

    .line 807
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v14, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 808
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 809
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 810
    invoke-virtual {v9, v10, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 811
    invoke-virtual {v9, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 812
    invoke-virtual {v13, v5, v3, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I

    move-result v3

    .line 814
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete image spend time "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v18

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_18
    move/from16 v27, v3

    move-object/from16 v28, v4

    move/from16 p1, v9

    move/from16 v25, v13

    :goto_10
    if-eqz v24, :cond_19

    .line 820
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 821
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->assertNotInRenderThread()V

    .line 823
    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 825
    iget-object v4, v1, Lcom/zui/gallery/ui/MenuExecutor;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 826
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 827
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const/4 v8, 0x1

    .line 828
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v14, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 830
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 831
    invoke-virtual {v8, v10, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 832
    invoke-virtual {v8, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 835
    invoke-virtual {v4, v3, v6, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I

    move-result v0

    .line 836
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete video spend time "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v18

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_19
    :goto_11
    const/4 v5, 0x0

    .line 841
    :goto_12
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1a

    .line 842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "total delete cloud image count "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    iget-object v0, v1, Lcom/zui/gallery/ui/MenuExecutor;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/zui/gallery/cloud/CloudManager;->deleteCloudImage(Ljava/util/List;Ljava/lang/Runnable;)V

    :cond_1a
    if-nez v23, :cond_1b

    if-eqz v24, :cond_1c

    .line 852
    :cond_1b
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    move-object/from16 v2, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 853
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    iget-object v0, v1, Lcom/zui/gallery/ui/MenuExecutor;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move/from16 v13, v20

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v13}, Lcom/zui/gallery/data/GroupBucketHelper;->deleteGroupMemberShipBatch(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    .line 856
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "total delete membership count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete folder count "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete spend time "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v18

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    const-string/jumbo v2, "update  progressbar finish"

    move/from16 v3, v25

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1d

    if-nez p1, :cond_1d

    .line 865
    invoke-static {v12, v2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v4, p4

    .line 867
    invoke-direct {v1, v0, v4}, Lcom/zui/gallery/ui/MenuExecutor;->onProgressComplete(ILcom/zui/gallery/ui/MenuExecutor$ProgressListener;)V

    move v13, v0

    goto :goto_13

    :cond_1d
    move-object/from16 v4, p4

    move v13, v3

    :goto_13
    const-string v3, " id ="

    if-eqz v23, :cond_20

    .line 872
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 873
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 874
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_14
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 876
    sget-object v10, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v23, v6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v10, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 877
    iget-object v6, v1, Lcom/zui/gallery/ui/MenuExecutor;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 879
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const/16 v17, 0x1

    .line 880
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object v0, v8

    const/4 v8, 0x0

    .line 885
    invoke-virtual {v6, v5, v10, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 887
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v6, p3

    .line 888
    invoke-virtual {v6, v5, v8}, Lcom/zui/gallery/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v5

    .line 889
    invoke-virtual {v6, v5}, Lcom/zui/gallery/data/DataManager;->getContentUri(Lcom/zui/gallery/data/Path;)Landroid/net/Uri;

    move-result-object v8

    .line 890
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v8, v21

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v10, v23

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    invoke-virtual {v6, v5}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v5

    .line 892
    instance-of v9, v5, Lcom/zui/gallery/data/MediaItem;

    if-eqz v9, :cond_1e

    .line 893
    check-cast v5, Lcom/zui/gallery/data/MediaItem;

    .line 894
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e
    move-object/from16 v21, v8

    move-object v6, v10

    const/4 v5, 0x0

    move-object v8, v0

    const/4 v0, -0x2

    goto/16 :goto_14

    :cond_1f
    move-object v10, v6

    move-object/from16 v8, v21

    move-object/from16 v6, p3

    .line 897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " M == uriBuilder == "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  pathBuilder == "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "xxx"

    invoke-static {v5, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 900
    invoke-static {}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getWidgetInstance()Lcom/zui/gallery/widget/WidgetMangerSingle;

    move-result-object v0

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Lcom/zui/gallery/widget/WidgetMangerSingle;->refreshTheDefaultStatus(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    :cond_20
    move-object/from16 v6, p3

    move-object/from16 v8, v21

    :cond_21
    :goto_15
    if-eqz v24, :cond_22

    .line 905
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 910
    sget-object v7, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v7, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 911
    iget-object v9, v1, Lcom/zui/gallery/ui/MenuExecutor;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v9}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 913
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v17, v0

    const/4 v11, 0x1

    .line 914
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v11, 0x0

    .line 918
    invoke-virtual {v9, v7, v10, v11, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 920
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v17

    goto :goto_16

    :cond_22
    if-eqz v22, :cond_25

    .line 927
    iget-object v0, v1, Lcom/zui/gallery/ui/MenuExecutor;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 958
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 959
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    .line 960
    :goto_17
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_24

    move-object/from16 v10, v16

    .line 961
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 962
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v17, v10

    const/16 v16, 0x1

    .line 963
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v15, v14, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 964
    sget-object v10, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 p2, v2

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v10, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 965
    invoke-virtual {v0, v1, v15, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 967
    invoke-virtual {v6, v1, v2}, Lcom/zui/gallery/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v1

    .line 968
    invoke-virtual {v6, v1}, Lcom/zui/gallery/data/DataManager;->getContentUri(Lcom/zui/gallery/data/Path;)Landroid/net/Uri;

    move-result-object v15

    .line 969
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    invoke-virtual {v6, v1}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v1

    .line 971
    instance-of v2, v1, Lcom/zui/gallery/data/MediaItem;

    if-eqz v2, :cond_23

    .line 972
    check-cast v1, Lcom/zui/gallery/data/MediaItem;

    .line 973
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    :cond_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "total delete continuousIds continuousCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v16, v17

    goto/16 :goto_17

    :cond_24
    move-object/from16 p2, v2

    .line 977
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " M == uriBuilder == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  pathBuilder == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "xxx"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 980
    invoke-static {}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getWidgetInstance()Lcom/zui/gallery/widget/WidgetMangerSingle;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/widget/WidgetMangerSingle;->refreshTheDefaultStatus(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    :cond_25
    move-object/from16 p2, v2

    :cond_26
    :goto_18
    const/4 v1, 0x3

    if-eq v13, v1, :cond_27

    if-eqz p1, :cond_27

    move-object/from16 v0, p2

    .line 985
    invoke-static {v12, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    move-object/from16 v1, p0

    .line 987
    invoke-direct {v1, v0, v4}, Lcom/zui/gallery/ui/MenuExecutor;->onProgressComplete(ILcom/zui/gallery/ui/MenuExecutor$ProgressListener;)V

    goto :goto_19

    :cond_27
    move-object/from16 v1, p0

    move v0, v13

    .line 992
    :goto_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Add to trash spend time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v18

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private execute(Lcom/zui/gallery/data/DataManager;Lcom/zui/gallery/util/ThreadPool$JobContext;ILcom/zui/gallery/data/Path;)Z
    .locals 4

    .line 503
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Execute cmd: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MenuExecutor"

    invoke-static {v0, p2}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 p2, -0x1

    const/4 v3, 0x1

    if-eq p3, p2, :cond_3

    const p2, 0x7f08004b

    if-eq p3, p2, :cond_1

    const p2, 0x7f0800a7

    if-ne p3, p2, :cond_0

    .line 508
    invoke-virtual {p1, p4}, Lcom/zui/gallery/data/DataManager;->delete(Lcom/zui/gallery/data/Path;)V

    goto :goto_0

    .line 540
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 520
    :cond_1
    invoke-virtual {p1, p4}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object p1

    .line 521
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaObject;->getCacheFlag()I

    move-result p2

    const/4 p3, 0x2

    if-ne p2, p3, :cond_2

    move p3, v3

    .line 527
    :cond_2
    invoke-virtual {p1, p3}, Lcom/zui/gallery/data/MediaObject;->cache(I)V

    goto :goto_0

    .line 511
    :cond_3
    invoke-virtual {p1, p4}, Lcom/zui/gallery/data/DataManager;->moveToParentFolder(Lcom/zui/gallery/data/Path;)Ljava/lang/String;

    .line 542
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "It takes "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, v1

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " ms to execute cmd for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private getIntentBySingleSelectedPath(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4

    .line 277
    iget-object v0, p0, Lcom/zui/gallery/ui/MenuExecutor;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v0

    .line 278
    invoke-direct {p0}, Lcom/zui/gallery/ui/MenuExecutor;->getSingleSelectedPath()Lcom/zui/gallery/data/Path;

    move-result-object v1

    .line 279
    invoke-virtual {v0, v1}, Lcom/zui/gallery/data/DataManager;->getMediaType(Lcom/zui/gallery/data/Path;)I

    move-result v2

    invoke-static {v2}, Lcom/zui/gallery/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v2

    .line 280
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/zui/gallery/data/DataManager;->getContentUri(Lcom/zui/gallery/data/Path;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v3, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public static getMimeType(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x13

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xb

    if-eq p0, v0, :cond_0

    const-string p0, "*/*"

    return-object p0

    :cond_0
    const-string/jumbo p0, "video/*"

    return-object p0

    :cond_1
    const-string p0, "image/*"

    return-object p0
.end method

.method private getSingleSelectedPath()Lcom/zui/gallery/data/Path;
    .locals 4

    .line 271
    iget-object v0, p0, Lcom/zui/gallery/ui/MenuExecutor;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-static {v1}, Lcom/zui/gallery/common/Utils;->assertTrue(Z)V

    .line 273
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/data/Path;

    return-object v0
.end method

.method private onMenuClicked(ILcom/zui/gallery/ui/MenuExecutor$ProgressListener;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 284
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/zui/gallery/ui/MenuExecutor;->onMenuClicked(ILcom/zui/gallery/ui/MenuExecutor$ProgressListener;ZZ)V

    return-void
.end method

.method private onProgressComplete(ILcom/zui/gallery/ui/MenuExecutor$ProgressListener;)V
    .locals 3

    .line 221
    iget-object v0, p0, Lcom/zui/gallery/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private onProgressStart(Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;)V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/zui/gallery/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private onProgressUpdate(ILcom/zui/gallery/ui/MenuExecutor$ProgressListener;)V
    .locals 3

    .line 212
    iget-object v0, p0, Lcom/zui/gallery/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 213
    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 212
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static setMenuItemVisible(Landroid/view/Menu;IZ)V
    .locals 0

    .line 266
    invoke-interface {p0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 267
    invoke-interface {p0, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method private startAction(IILcom/zui/gallery/ui/MenuExecutor$ProgressListener;ZZ)V
    .locals 3

    .line 460
    iget-object v0, p0, Lcom/zui/gallery/ui/MenuExecutor;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 461
    invoke-direct {p0}, Lcom/zui/gallery/ui/MenuExecutor;->stopTaskAndDismissDialog()V

    .line 463
    iget-object v1, p0, Lcom/zui/gallery/ui/MenuExecutor;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/4 v2, 0x0

    if-eqz p5, :cond_0

    .line 465
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p5

    invoke-static {v1, p2, p5}, Lcom/zui/gallery/ui/MenuExecutor;->createCustomProgressDialog(Landroid/content/Context;II)Lcom/zui/gallery/ui/CustomProgressDialog;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/ui/MenuExecutor;->mDialog:Lcom/zui/gallery/ui/CustomProgressDialog;

    .line 466
    invoke-virtual {p2}, Lcom/zui/gallery/ui/CustomProgressDialog;->show()V

    goto :goto_0

    .line 468
    :cond_0
    iput-object v2, p0, Lcom/zui/gallery/ui/MenuExecutor;->mDialog:Lcom/zui/gallery/ui/CustomProgressDialog;

    .line 470
    :goto_0
    new-instance p2, Lcom/zui/gallery/ui/MenuExecutor$MediaOperation;

    invoke-direct {p2, p0, p1, v0, p3}, Lcom/zui/gallery/ui/MenuExecutor$MediaOperation;-><init>(Lcom/zui/gallery/ui/MenuExecutor;ILjava/util/ArrayList;Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;)V

    .line 471
    iget-object p1, p0, Lcom/zui/gallery/ui/MenuExecutor;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getBatchServiceThreadPoolIfAvailable()Lcom/zui/gallery/util/ThreadPool;

    move-result-object p1

    invoke-virtual {p1, p2, v2}, Lcom/zui/gallery/util/ThreadPool;->submit(Lcom/zui/gallery/util/ThreadPool$Job;Lcom/zui/gallery/util/FutureListener;)Lcom/zui/gallery/util/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/ui/MenuExecutor;->mTask:Lcom/zui/gallery/util/Future;

    .line 472
    iput-boolean p4, p0, Lcom/zui/gallery/ui/MenuExecutor;->mWaitOnStop:Z

    return-void
.end method

.method private stopTaskAndDismissDialog()V
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/zui/gallery/ui/MenuExecutor;->mTask:Lcom/zui/gallery/util/Future;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 186
    iget-boolean v2, p0, Lcom/zui/gallery/ui/MenuExecutor;->mWaitOnStop:Z

    if-nez v2, :cond_0

    invoke-interface {v0}, Lcom/zui/gallery/util/Future;->cancel()V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/MenuExecutor;->mDialog:Lcom/zui/gallery/ui/CustomProgressDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zui/gallery/ui/CustomProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/gallery/ui/MenuExecutor;->mDialog:Lcom/zui/gallery/ui/CustomProgressDialog;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/CustomProgressDialog;->dismiss()V

    .line 188
    :cond_1
    iput-object v1, p0, Lcom/zui/gallery/ui/MenuExecutor;->mDialog:Lcom/zui/gallery/ui/CustomProgressDialog;

    .line 189
    iput-object v1, p0, Lcom/zui/gallery/ui/MenuExecutor;->mTask:Lcom/zui/gallery/util/Future;

    .line 191
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/ui/MenuExecutor;->mAlertDialog:Lzui/app/ActionDialog;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lzui/app/ActionDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 192
    iget-object v0, p0, Lcom/zui/gallery/ui/MenuExecutor;->mAlertDialog:Lzui/app/ActionDialog;

    invoke-virtual {v0}, Lzui/app/ActionDialog;->dismiss()V

    .line 193
    iput-object v1, p0, Lcom/zui/gallery/ui/MenuExecutor;->mAlertDialog:Lzui/app/ActionDialog;

    :cond_3
    return-void
.end method

.method public static updateMenuForPanorama(Landroid/view/Menu;ZZ)V
    .locals 0

    return-void
.end method

.method public static updateMenuOperation(Landroid/view/Menu;I)V
    .locals 0

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 208
    invoke-direct {p0}, Lcom/zui/gallery/ui/MenuExecutor;->stopTaskAndDismissDialog()V

    return-void
.end method

.method public onMenuClicked(ILcom/zui/gallery/ui/MenuExecutor$ProgressListener;ZZ)V
    .locals 7

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    const p4, 0x7f0800a7

    const/4 v0, 0x1

    if-eq p1, p4, :cond_1

    const p2, 0x7f080308

    if-eq p1, p2, :cond_0

    return-void

    :cond_0
    const-string p1, "android.intent.action.ATTACH_DATA"

    .line 303
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/MenuExecutor;->getIntentBySingleSelectedPath(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 304
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 305
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object p2

    const-string p3, "mimeType"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p2, "supportMultipleTheme"

    .line 306
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 307
    iget-object p2, p0, Lcom/zui/gallery/ui/MenuExecutor;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const p3, 0x7f100246

    .line 309
    invoke-virtual {p2, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 308
    invoke-static {p1, p3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const p3, 0x1869f

    .line 311
    invoke-virtual {p2, p1, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 326
    :cond_1
    iget-object p4, p0, Lcom/zui/gallery/ui/MenuExecutor;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p4}, Lcom/zui/gallery/ui/SelectionManager;->getSelectedCount()I

    move-result p4

    const/16 v1, 0xf

    if-ge p4, v1, :cond_3

    iget-object p4, p0, Lcom/zui/gallery/ui/MenuExecutor;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    .line 327
    invoke-virtual {p4}, Lcom/zui/gallery/ui/SelectionManager;->isAlbumSet()Z

    move-result p4

    if-nez p4, :cond_3

    iget-object p4, p0, Lcom/zui/gallery/ui/MenuExecutor;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    .line 328
    invoke-virtual {p4}, Lcom/zui/gallery/ui/SelectionManager;->isAlbumSetAll()Z

    move-result p4

    if-nez p4, :cond_3

    iget-object p4, p0, Lcom/zui/gallery/ui/MenuExecutor;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    .line 329
    invoke-virtual {p4}, Lcom/zui/gallery/ui/SelectionManager;->getSelectContinuesFolderCount()I

    move-result p4

    if-lez p4, :cond_2

    goto :goto_0

    :cond_2
    const/4 p4, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    move p4, v0

    .line 330
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMenuClicked: showDialog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  getSelectContinuesFolderCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/ui/MenuExecutor;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/SelectionManager;->getSelectContinuesFolderCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MenuExecutor"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f1000b9

    :cond_4
    move v6, p4

    move v3, v0

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move v5, p3

    .line 353
    invoke-direct/range {v1 .. v6}, Lcom/zui/gallery/ui/MenuExecutor;->startAction(IILcom/zui/gallery/ui/MenuExecutor$ProgressListener;ZZ)V

    return-void
.end method

.method public onMenuClicked(ILjava/lang/String;Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;)V
    .locals 1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 416
    invoke-interface {p3}, Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;->onConfirmDialogShown()V

    .line 417
    :cond_0
    new-instance v0, Lcom/zui/gallery/ui/MenuExecutor$ConfirmDialogListener;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/zui/gallery/ui/MenuExecutor$ConfirmDialogListener;-><init>(Lcom/zui/gallery/ui/MenuExecutor;ILcom/zui/gallery/ui/MenuExecutor$ProgressListener;Ljava/lang/String;)V

    .line 420
    iget-object p1, p0, Lcom/zui/gallery/ui/MenuExecutor;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {p1, p2}, Lcom/zui/gallery/util/GalleryUtils;->getActionDialogBuilder(Landroid/app/Activity;Ljava/lang/String;)Lzui/app/ActionDialog$Builder;

    move-result-object p1

    .line 423
    invoke-virtual {p1, v0}, Lzui/app/ActionDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lzui/app/ActionDialog$Builder;

    move-result-object p1

    const p2, 0x7f1000b9

    .line 424
    invoke-virtual {p1, p2, v0}, Lzui/app/ActionDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;

    move-result-object p1

    const p2, 0x7f100068

    .line 425
    invoke-virtual {p1, p2, v0}, Lzui/app/ActionDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;

    move-result-object p1

    .line 426
    invoke-virtual {p1}, Lzui/app/ActionDialog$Builder;->create()Lzui/app/ActionDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/ui/MenuExecutor;->mAlertDialog:Lzui/app/ActionDialog;

    .line 427
    invoke-virtual {p1}, Lzui/app/ActionDialog;->show()V

    goto :goto_0

    .line 429
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/zui/gallery/ui/MenuExecutor;->onMenuClicked(ILcom/zui/gallery/ui/MenuExecutor$ProgressListener;)V

    :goto_0
    return-void
.end method

.method public onMenuClickedPornPicture(ILjava/lang/String;Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;ZLcom/zui/gallery/app/ActivityState;)V
    .locals 0

    .line 438
    iput-boolean p4, p0, Lcom/zui/gallery/ui/MenuExecutor;->mPornPicture:Z

    .line 439
    iput-object p5, p0, Lcom/zui/gallery/ui/MenuExecutor;->mActivityState:Lcom/zui/gallery/app/ActivityState;

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 441
    invoke-interface {p3}, Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;->onConfirmDialogShown()V

    .line 442
    :cond_0
    new-instance p4, Lcom/zui/gallery/ui/MenuExecutor$ConfirmDialogListener;

    invoke-direct {p4, p0, p1, p3, p2}, Lcom/zui/gallery/ui/MenuExecutor$ConfirmDialogListener;-><init>(Lcom/zui/gallery/ui/MenuExecutor;ILcom/zui/gallery/ui/MenuExecutor$ProgressListener;Ljava/lang/String;)V

    .line 445
    iget-object p1, p0, Lcom/zui/gallery/ui/MenuExecutor;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {p1, p2}, Lcom/zui/gallery/util/GalleryUtils;->getActionDialogBuilder(Landroid/app/Activity;Ljava/lang/String;)Lzui/app/ActionDialog$Builder;

    move-result-object p1

    .line 448
    invoke-virtual {p1, p4}, Lzui/app/ActionDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lzui/app/ActionDialog$Builder;

    move-result-object p1

    const p2, 0x7f1000b9

    .line 449
    invoke-virtual {p1, p2, p4}, Lzui/app/ActionDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;

    move-result-object p1

    const p2, 0x7f100068

    .line 450
    invoke-virtual {p1, p2, p4}, Lzui/app/ActionDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;

    move-result-object p1

    .line 451
    invoke-virtual {p1}, Lzui/app/ActionDialog$Builder;->create()Lzui/app/ActionDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/ui/MenuExecutor;->mAlertDialog:Lzui/app/ActionDialog;

    .line 452
    invoke-virtual {p1}, Lzui/app/ActionDialog;->show()V

    goto :goto_0

    .line 454
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/zui/gallery/ui/MenuExecutor;->onMenuClicked(ILcom/zui/gallery/ui/MenuExecutor$ProgressListener;)V

    :goto_0
    return-void
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x1

    .line 203
    iput-boolean v0, p0, Lcom/zui/gallery/ui/MenuExecutor;->mPaused:Z

    .line 204
    iget-object v0, p0, Lcom/zui/gallery/ui/MenuExecutor;->mDialog:Lcom/zui/gallery/ui/CustomProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/gallery/ui/CustomProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/ui/MenuExecutor;->mDialog:Lcom/zui/gallery/ui/CustomProgressDialog;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/CustomProgressDialog;->hide()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    const/4 v0, 0x0

    .line 198
    iput-boolean v0, p0, Lcom/zui/gallery/ui/MenuExecutor;->mPaused:Z

    .line 199
    iget-object v0, p0, Lcom/zui/gallery/ui/MenuExecutor;->mDialog:Lcom/zui/gallery/ui/CustomProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/gallery/ui/CustomProgressDialog;->show()V

    :cond_0
    return-void
.end method

.method public startSingleItemAction(ILcom/zui/gallery/data/Path;)V
    .locals 2

    .line 476
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 477
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    .line 478
    iput-object p2, p0, Lcom/zui/gallery/ui/MenuExecutor;->mDialog:Lcom/zui/gallery/ui/CustomProgressDialog;

    .line 479
    new-instance v1, Lcom/zui/gallery/ui/MenuExecutor$MediaOperation;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/zui/gallery/ui/MenuExecutor$MediaOperation;-><init>(Lcom/zui/gallery/ui/MenuExecutor;ILjava/util/ArrayList;Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;)V

    .line 480
    iget-object p1, p0, Lcom/zui/gallery/ui/MenuExecutor;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getBatchServiceThreadPoolIfAvailable()Lcom/zui/gallery/util/ThreadPool;

    move-result-object p1

    invoke-virtual {p1, v1, p2}, Lcom/zui/gallery/util/ThreadPool;->submit(Lcom/zui/gallery/util/ThreadPool$Job;Lcom/zui/gallery/util/FutureListener;)Lcom/zui/gallery/util/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/ui/MenuExecutor;->mTask:Lcom/zui/gallery/util/Future;

    const/4 p1, 0x0

    .line 481
    iput-boolean p1, p0, Lcom/zui/gallery/ui/MenuExecutor;->mWaitOnStop:Z

    return-void
.end method
