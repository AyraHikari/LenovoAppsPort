.class public Lcom/zui/gallery/banner/FileListDetailsActivity;
.super Lcom/zui/gallery/banner/BaseActivity;
.source "FileListDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/banner/FileListDetailsActivity$MyDetailsSource;
    }
.end annotation


# static fields
.field public static final ACTION_NEXTGEN_EDIT:Ljava/lang/String; = "action_nextgen_edit"

.field private static CLICK_PLAY_VIDEO_ICON_INTERVAL:J = 0x2bcL

.field private static final LOAD_FIILS_EMPTY:I = 0x3e9

.field private static final LOAD_FIILS_SUCCESS:I = 0x3e8

.field private static final NO_MEDIA_FILENAME:Ljava/lang/String; = ".nomedia"

.field public static final PHOTO_MENU_DETAILS:I = 0x0

.field public static final REQUEST_EDIT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "FileListDetailsActivity"

.field public static deleteOrModifyFileNotification:Z = false

.field private static folderPath:Ljava/lang/String; = "/storage/emulated/0/DCIM/Camera/ZuiGalleryGroup/.MyPrivacy"


# instance fields
.field private isLandScreen:Z

.field private isShowBar:Z

.field private lastClickPlayVideoTime:J

.field private listner:Lcom/zui/gallery/privacygroup/KeyStoreUtil$onRemoveListner;

.field private mCurrentPosition:I

.field private mDeleteButton:Landroid/widget/ImageView;

.field private mDetailsHelper:Lcom/zui/gallery/ui/DetailsHelper;

.field private mEditButton:Landroid/widget/ImageView;

.field private mFileDetailAdapter:Lcom/zui/gallery/banner/FileDetailAdapter;

.field private mFileListActionBar:Landroid/widget/RelativeLayout;

.field private mFileListBack:Landroid/widget/ImageView;

.field private mFileListDateTime:Landroid/widget/TextView;

.field private mFileListLayout:Landroid/widget/RelativeLayout;

.field private mFileListTitle:Landroid/widget/TextView;

.field private mFilePath:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mLoadingVisible:Z

.field private mMoreButton:Landroid/widget/ImageView;

.field private mMoreDialog:Lzui/app/ActionDialog;

.field private mPhotoPageBottomBar:Landroid/widget/LinearLayout;

.field private mPrivacyFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressDialog:Lzui/app/ProgressDialogX;

.field private mRemoveTxt:Landroid/widget/TextView;

.field private mShareButton:Landroid/widget/ImageView;

.field private mShowDetails:Z

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Lcom/zui/gallery/banner/BaseActivity;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mPrivacyFileList:Ljava/util/List;

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->isShowBar:Z

    const/4 v1, 0x0

    .line 76
    iput-object v1, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mProgressDialog:Lzui/app/ProgressDialogX;

    .line 77
    iput-boolean v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mLoadingVisible:Z

    .line 192
    new-instance v0, Lcom/zui/gallery/banner/FileListDetailsActivity$2;

    invoke-direct {v0, p0}, Lcom/zui/gallery/banner/FileListDetailsActivity$2;-><init>(Lcom/zui/gallery/banner/FileListDetailsActivity;)V

    iput-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mHandler:Landroid/os/Handler;

    .line 633
    new-instance v0, Lcom/zui/gallery/banner/FileListDetailsActivity$4;

    invoke-direct {v0, p0}, Lcom/zui/gallery/banner/FileListDetailsActivity$4;-><init>(Lcom/zui/gallery/banner/FileListDetailsActivity;)V

    iput-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->listner:Lcom/zui/gallery/privacygroup/KeyStoreUtil$onRemoveListner;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 53
    sget-object v0, Lcom/zui/gallery/banner/FileListDetailsActivity;->folderPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zui/gallery/banner/FileListDetailsActivity;)Ljava/util/List;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mPrivacyFileList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/zui/gallery/banner/FileListDetailsActivity;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->hideDetails()V

    return-void
.end method

.method static synthetic access$200(Lcom/zui/gallery/banner/FileListDetailsActivity;)Landroid/os/Handler;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/zui/gallery/banner/FileListDetailsActivity;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->getConfigChanged()V

    return-void
.end method

.method static synthetic access$400(Lcom/zui/gallery/banner/FileListDetailsActivity;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->loadPhoto()V

    return-void
.end method

.method static synthetic access$500(Lcom/zui/gallery/banner/FileListDetailsActivity;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mCurrentPosition:I

    return p0
.end method

.method static synthetic access$502(Lcom/zui/gallery/banner/FileListDetailsActivity;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mCurrentPosition:I

    return p1
.end method

.method static synthetic access$600(Lcom/zui/gallery/banner/FileListDetailsActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mEditButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/zui/gallery/banner/FileListDetailsActivity;)Lcom/zui/gallery/privacygroup/KeyStoreUtil$onRemoveListner;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->listner:Lcom/zui/gallery/privacygroup/KeyStoreUtil$onRemoveListner;

    return-object p0
.end method

.method static synthetic access$800(Lcom/zui/gallery/banner/FileListDetailsActivity;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->showDetails()V

    return-void
.end method

.method private allowOperation()V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mEditButton:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 209
    invoke-virtual {p0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->isInMultiWindowMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mEditButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 213
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/zui/gallery/banner/MediaFile;->isGifFileType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mEditButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/zui/gallery/banner/MediaFile;->isVideoFileType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mEditButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 221
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mEditButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private change()V
    .locals 1

    .line 509
    iget-boolean v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->isShowBar:Z

    if-eqz v0, :cond_0

    .line 510
    invoke-direct {p0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->showBar()V

    goto :goto_0

    .line 512
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->hideBar()V

    :goto_0
    return-void
.end method

.method private clearList()V
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mPrivacyFileList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 487
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method private deleteFile()V
    .locals 2

    .line 651
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mPrivacyFileList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_2

    .line 655
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 656
    iget-object v1, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mPrivacyFileList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_1

    return-void

    .line 659
    :cond_1
    iget-object v1, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mPrivacyFileList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 660
    invoke-static {v0}, Lcom/zui/gallery/util/FileUtils;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    .line 661
    sput-boolean v0, Lcom/zui/gallery/banner/FileListDetailsActivity;->deleteOrModifyFileNotification:Z

    if-eqz v0, :cond_2

    .line 663
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mActivity:Lcom/zui/gallery/banner/BaseActivity;

    const-string/jumbo v1, "\u5220\u9664\u6210\u529f"

    invoke-virtual {v0, v1}, Lcom/zui/gallery/banner/BaseActivity;->showToast(Ljava/lang/String;)V

    .line 664
    invoke-virtual {p0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method

.method private findOutIndex(Ljava/util/List;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 333
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 334
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method private getConfigChanged()V
    .locals 2

    .line 231
    invoke-direct {p0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->setTitleHeight()V

    .line 232
    invoke-virtual {p0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 234
    iput-boolean v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->isLandScreen:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 236
    iput-boolean v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->isLandScreen:Z

    .line 239
    :goto_0
    invoke-direct {p0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->allowOperation()V

    return-void
.end method

.method private getPrivacyList()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mPrivacyFileList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mPrivacyFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 150
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mPrivacyFileList:Ljava/util/List;

    .line 152
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zui/gallery/banner/FileListDetailsActivity$1;

    invoke-direct {v1, p0}, Lcom/zui/gallery/banner/FileListDetailsActivity$1;-><init>(Lcom/zui/gallery/banner/FileListDetailsActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 189
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private hideBar()V
    .locals 4

    .line 543
    iget-boolean v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->isShowBar:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 546
    iput-boolean v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->isShowBar:Z

    .line 547
    iget-object v1, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mFileListActionBar:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 548
    iget-object v1, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mPhotoPageBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 549
    invoke-virtual {p0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 550
    iget-object v2, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mActivity:Lcom/zui/gallery/banner/BaseActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/zui/gallery/banner/BaseActivity;->fullScreen(Z)V

    .line 551
    invoke-virtual {v1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 552
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mFileListLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f05004c

    invoke-virtual {p0, v1}, Lcom/zui/gallery/banner/FileListDetailsActivity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 553
    invoke-direct {p0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->updateColor()V

    return-void
.end method

.method private hideDetails()V
    .locals 1

    const/4 v0, 0x0

    .line 780
    iput-boolean v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mShowDetails:Z

    .line 781
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mDetailsHelper:Lcom/zui/gallery/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/DetailsHelper;->hide()V

    return-void
.end method

.method private isFullscreen()Z
    .locals 1

    .line 481
    invoke-virtual {p0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$setTitleHeight$0(Landroid/widget/RelativeLayout$LayoutParams;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 292
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result p1

    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    return-object p2
.end method

.method private launchPhotoEditor(Ljava/lang/String;)V
    .locals 3

    .line 456
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action_nextgen_edit"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 457
    const-class v1, Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 461
    sget-object v1, Lcom/zui/gallery/filtershow/FilterShowActivity;->IS_SELF:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 465
    sget-object v1, Lcom/zui/gallery/filtershow/FilterShowActivity;->IS_PANO:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 466
    sget-object v1, Lcom/zui/gallery/filtershow/FilterShowActivity;->GROUP_ID:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "privacy_url_to_filtershow"

    .line 467
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 468
    invoke-virtual {v0, p1, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 470
    invoke-virtual {p0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/high16 v1, 0x10000

    .line 471
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "android.intent.action.EDIT"

    .line 472
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 474
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->isFullscreen()Z

    move-result p1

    const-string v1, "launch-fullscreen"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, 0x4

    .line 475
    invoke-virtual {p0, v0, p1}, Lcom/zui/gallery/banner/FileListDetailsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private listener()V
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mFileListBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mEditButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mShareButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mDeleteButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mMoreButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mRemoveTxt:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private loadPhoto()V
    .locals 3

    .line 313
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mPrivacyFileList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 316
    :cond_0
    new-instance v0, Lcom/zui/gallery/banner/FileDetailAdapter;

    invoke-direct {v0, p0}, Lcom/zui/gallery/banner/FileDetailAdapter;-><init>(Lcom/zui/gallery/banner/FileListDetailsActivity;)V

    iput-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mFileDetailAdapter:Lcom/zui/gallery/banner/FileDetailAdapter;

    .line 317
    iget-object v1, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 318
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mFileDetailAdapter:Lcom/zui/gallery/banner/FileDetailAdapter;

    iget-object v1, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mPrivacyFileList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/banner/FileDetailAdapter;->setData(Ljava/util/List;)V

    .line 319
    sget-boolean v0, Lcom/zui/gallery/banner/FileListDetailsActivity;->deleteOrModifyFileNotification:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 320
    iput v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mCurrentPosition:I

    .line 321
    iget-object v1, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mPrivacyFileList:Ljava/util/List;

    iget-object v1, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mFilePath:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/zui/gallery/banner/FileListDetailsActivity;->findOutIndex(Ljava/util/List;Ljava/lang/String;)I

    move-result v0

    .line 325
    iget-object v1, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 326
    iget-object v1, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 328
    :goto_0
    invoke-direct {p0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->showBar()V

    :cond_2
    :goto_1
    return-void
.end method

.method private setColor()V
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mFileListActionBar:Landroid/widget/RelativeLayout;

    const v1, 0x7f050165

    invoke-virtual {p0, v1}, Lcom/zui/gallery/banner/FileListDetailsActivity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 303
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mActivity:Lcom/zui/gallery/banner/BaseActivity;

    invoke-static {v0}, Lcom/zui/gallery/util/DeviceTypeUtils;->isPad(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mActivity:Lcom/zui/gallery/banner/BaseActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/banner/BaseActivity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mFileListBack:Landroid/widget/ImageView;

    const v1, 0x7f07008b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mFileListBack:Landroid/widget/ImageView;

    const v1, 0x7f07008c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 308
    :goto_0
    invoke-direct {p0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->change()V

    return-void
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 7

    .line 244
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 247
    :cond_0
    invoke-static {p1}, Lcom/zui/gallery/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 248
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 252
    invoke-virtual {p1, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    .line 254
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/banner/FileListDetailsActivity;->timeStamp2Date(J)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "\u65e5"

    .line 255
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    .line 256
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 257
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->isLandScreen()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "\t"

    goto :goto_0

    :cond_2
    const-string v3, "\n"

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f050138

    .line 261
    invoke-virtual {p0, v0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->getColor(I)I

    move-result v0

    .line 262
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 263
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 264
    invoke-virtual {p0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->isLandScreen()Z

    move-result v4

    const/16 v5, 0x21

    if-eqz v4, :cond_3

    .line 265
    new-instance v1, Lcom/zui/gallery/selfwidget/VerticalCenterSpan;

    const/high16 v4, 0x41500000    # 13.0f

    invoke-static {p0, v4}, Lcom/zui/gallery/ui/videoslow/DisplayUtil;->sp2px(Landroid/content/Context;F)F

    move-result v4

    invoke-direct {v1, v4}, Lcom/zui/gallery/selfwidget/VerticalCenterSpan;-><init>(F)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 267
    :cond_3
    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v6, 0xd

    invoke-direct {v4, v6, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v3, v4, v2, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 269
    :goto_1
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v3, v1, v2, p1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 270
    iget-object p1, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mFileListDateTime:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setTitleHeight()V
    .locals 4

    .line 290
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mFileListActionBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 291
    iget-object v1, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mFileListActionBar:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/zui/gallery/banner/-$$Lambda$FileListDetailsActivity$zcrhcj5p3_l32if0_nZGeYPV2q4;

    invoke-direct {v2, v0}, Lcom/zui/gallery/banner/-$$Lambda$FileListDetailsActivity$zcrhcj5p3_l32if0_nZGeYPV2q4;-><init>(Landroid/widget/RelativeLayout$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 295
    invoke-virtual {p0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0601c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 296
    invoke-virtual {p0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06004f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v2, v1

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 297
    iget-object v1, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mFileListActionBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    invoke-direct {p0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->setColor()V

    return-void
.end method

.method private showBar()V
    .locals 2

    .line 528
    iget-boolean v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->isShowBar:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 531
    iput-boolean v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->isShowBar:Z

    .line 532
    invoke-virtual {p0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f050165

    .line 533
    invoke-virtual {p0, v1}, Lcom/zui/gallery/banner/FileListDetailsActivity;->getColor(I)I

    move-result v1

    .line 534
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 535
    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 536
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mActivity:Lcom/zui/gallery/banner/BaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/banner/BaseActivity;->fullScreen(Z)V

    .line 537
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mPhotoPageBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 538
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mFileListActionBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 539
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mFileListLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f050049

    invoke-virtual {p0, v1}, Lcom/zui/gallery/banner/FileListDetailsActivity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 540
    invoke-direct {p0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->updateColor()V

    return-void
.end method

.method private showDetails()V
    .locals 4

    const/4 v0, 0x1

    .line 743
    iput-boolean v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mShowDetails:Z

    .line 744
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mPrivacyFileList:Ljava/util/List;

    iget v1, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mCurrentPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 745
    iget-object v1, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mDetailsHelper:Lcom/zui/gallery/ui/DetailsHelper;

    if-nez v1, :cond_1

    .line 746
    new-instance v1, Lcom/zui/gallery/ui/DetailsHelper;

    new-instance v2, Lcom/zui/gallery/banner/FileListDetailsActivity$MyDetailsSource;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/zui/gallery/banner/FileListDetailsActivity$MyDetailsSource;-><init>(Lcom/zui/gallery/banner/FileListDetailsActivity;Lcom/zui/gallery/banner/FileListDetailsActivity$1;)V

    invoke-direct {v1, p0, v2}, Lcom/zui/gallery/ui/DetailsHelper;-><init>(Landroid/app/Activity;Lcom/zui/gallery/ui/DetailsHelper$DetailsSource;)V

    iput-object v1, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mDetailsHelper:Lcom/zui/gallery/ui/DetailsHelper;

    .line 747
    iget-boolean v2, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mShowDetails:Z

    if-eqz v2, :cond_0

    .line 748
    invoke-virtual {v1, v0}, Lcom/zui/gallery/ui/DetailsHelper;->reloadPrivacyDetails(Ljava/lang/String;)V

    .line 750
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mDetailsHelper:Lcom/zui/gallery/ui/DetailsHelper;

    new-instance v2, Lcom/zui/gallery/banner/FileListDetailsActivity$8;

    invoke-direct {v2, p0}, Lcom/zui/gallery/banner/FileListDetailsActivity$8;-><init>(Lcom/zui/gallery/banner/FileListDetailsActivity;)V

    invoke-virtual {v1, v2}, Lcom/zui/gallery/ui/DetailsHelper;->setCloseListener(Lcom/zui/gallery/ui/DetailsHelper$CloseListener;)V

    .line 758
    :cond_1
    iget-object v1, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mDetailsHelper:Lcom/zui/gallery/ui/DetailsHelper;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/ui/DetailsHelper;->showForPrivacy(Ljava/lang/String;)V

    return-void
.end method

.method private startFilterPage(Ljava/lang/String;)V
    .locals 3

    .line 408
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.intent.filtershowactivity_destory"

    .line 409
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "is_gallery"

    const/4 v2, 0x1

    .line 410
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 411
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/banner/FileListDetailsActivity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 412
    invoke-direct {p0, p1}, Lcom/zui/gallery/banner/FileListDetailsActivity;->launchPhotoEditor(Ljava/lang/String;)V

    return-void
.end method

.method private updateColor()V
    .locals 5

    .line 558
    invoke-static {p0}, Lcom/zui/gallery/util/DeviceTypeUtils;->isDarkMode(Landroid/content/Context;)Z

    move-result v0

    .line 559
    invoke-virtual {p0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->isLandScreen()Z

    move-result v1

    .line 560
    invoke-static {p0}, Lcom/zui/gallery/util/DeviceTypeUtils;->isPad(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 562
    invoke-static {p0, v3}, Lcom/zui/gallery/util/DisplayPropertyUtils;->setDarkStatusIcon(Landroid/app/Activity;Z)V

    .line 563
    invoke-static {p0, v3}, Lcom/zui/gallery/util/DisplayPropertyUtils;->setDarkNavigationBarIcon(Landroid/app/Activity;Z)V

    goto :goto_2

    .line 565
    :cond_0
    invoke-static {p0}, Lcom/zui/gallery/util/DisplayPropertyUtils;->isNavigationShowing(Landroid/content/Context;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 568
    invoke-static {p0, v3}, Lcom/zui/gallery/util/DisplayPropertyUtils;->setDarkStatusIcon(Landroid/app/Activity;Z)V

    goto :goto_1

    .line 570
    :cond_1
    invoke-static {p0, v4}, Lcom/zui/gallery/util/DisplayPropertyUtils;->setDarkStatusIcon(Landroid/app/Activity;Z)V

    if-eqz v2, :cond_4

    .line 572
    iget-boolean v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->isShowBar:Z

    if-eqz v0, :cond_3

    if-nez v1, :cond_2

    .line 574
    invoke-static {p0, v4}, Lcom/zui/gallery/util/DisplayPropertyUtils;->setDarkNavigationBarIcon(Landroid/app/Activity;Z)V

    goto :goto_0

    .line 576
    :cond_2
    invoke-static {p0, v3}, Lcom/zui/gallery/util/DisplayPropertyUtils;->setDarkNavigationBarIcon(Landroid/app/Activity;Z)V

    .line 578
    :goto_0
    invoke-virtual {p0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050209

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 579
    invoke-virtual {p0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    .line 582
    invoke-static {p0, v3}, Lcom/zui/gallery/util/DisplayPropertyUtils;->setDarkNavigationBarIcon(Landroid/app/Activity;Z)V

    .line 583
    invoke-virtual {p0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 589
    :cond_4
    :goto_1
    invoke-static {p0, v4}, Lcom/zui/gallery/util/DisplayPropertyUtils;->setNationBarVisible(Landroid/app/Activity;Z)Z

    :goto_2
    return-void
.end method


# virtual methods
.method public createMoreDialog()V
    .locals 3

    .line 710
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mActivity:Lcom/zui/gallery/banner/BaseActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/banner/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000d7

    .line 711
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 714
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mActivity:Lcom/zui/gallery/banner/BaseActivity;

    .line 715
    invoke-static {v0}, Lcom/zui/gallery/util/GalleryUtils;->getActionDialogBuilder(Landroid/app/Activity;)Lzui/app/ActionDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/zui/gallery/banner/FileListDetailsActivity$7;

    invoke-direct {v2, p0}, Lcom/zui/gallery/banner/FileListDetailsActivity$7;-><init>(Lcom/zui/gallery/banner/FileListDetailsActivity;)V

    .line 716
    invoke-virtual {v0, v1, v2}, Lzui/app/ActionDialog$Builder;->setOptionItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mActivity:Lcom/zui/gallery/banner/BaseActivity;

    .line 728
    invoke-virtual {v1}, Lcom/zui/gallery/banner/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/zui/gallery/banner/FileListDetailsActivity$6;

    invoke-direct {v2, p0}, Lcom/zui/gallery/banner/FileListDetailsActivity$6;-><init>(Lcom/zui/gallery/banner/FileListDetailsActivity;)V

    invoke-virtual {v0, v1, v2}, Lzui/app/ActionDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;

    move-result-object v0

    .line 738
    invoke-virtual {v0}, Lzui/app/ActionDialog$Builder;->create()Lzui/app/ActionDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mMoreDialog:Lzui/app/ActionDialog;

    .line 739
    invoke-virtual {v0}, Lzui/app/ActionDialog;->show()V

    return-void
.end method

.method public dismissLoadingDialog()V
    .locals 1

    .line 701
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mProgressDialog:Lzui/app/ProgressDialogX;

    if-eqz v0, :cond_0

    .line 702
    invoke-virtual {v0}, Lzui/app/ProgressDialogX;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 705
    iput-boolean v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mLoadingVisible:Z

    return-void
.end method

.method public initData()V
    .locals 2

    .line 128
    invoke-virtual {p0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "filePath"

    .line 129
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mFilePath:Ljava/lang/String;

    const-string v1, "fileList"

    .line 130
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mPrivacyFileList:Ljava/util/List;

    .line 131
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mPrivacyFileList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 135
    invoke-direct {p0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->getPrivacyList()V

    goto :goto_0

    .line 137
    :cond_1
    sget-boolean v0, Lcom/zui/gallery/banner/FileListDetailsActivity;->deleteOrModifyFileNotification:Z

    if-eqz v0, :cond_2

    .line 138
    invoke-direct {p0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->getPrivacyList()V

    goto :goto_0

    .line 140
    :cond_2
    invoke-direct {p0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->getConfigChanged()V

    .line 141
    invoke-direct {p0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->loadPhoto()V

    :goto_0
    return-void
.end method

.method public initView()V
    .locals 3

    const v0, 0x7f0803a2

    .line 358
    invoke-virtual {p0, v0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const v0, 0x7f0801a4

    .line 359
    invoke-virtual {p0, v0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mFileListActionBar:Landroid/widget/RelativeLayout;

    const v1, 0x7f0801a5

    .line 360
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mFileListBack:Landroid/widget/ImageView;

    .line 361
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mFileListActionBar:Landroid/widget/RelativeLayout;

    const v1, 0x7f0801a9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mFileListTitle:Landroid/widget/TextView;

    .line 362
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mFileListActionBar:Landroid/widget/RelativeLayout;

    const v1, 0x7f0801a6

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mFileListDateTime:Landroid/widget/TextView;

    .line 363
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mFileListActionBar:Landroid/widget/RelativeLayout;

    const v1, 0x7f0800d1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mRemoveTxt:Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 364
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0801a8

    .line 365
    invoke-virtual {p0, v0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mFileListLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f080093

    .line 366
    invoke-virtual {p0, v0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mPhotoPageBottomBar:Landroid/widget/LinearLayout;

    const v2, 0x7f08016c

    .line 367
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mEditButton:Landroid/widget/ImageView;

    .line 368
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mPhotoPageBottomBar:Landroid/widget/LinearLayout;

    const v2, 0x7f08030b

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mShareButton:Landroid/widget/ImageView;

    .line 369
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mPhotoPageBottomBar:Landroid/widget/LinearLayout;

    const v2, 0x7f08013a

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mDeleteButton:Landroid/widget/ImageView;

    .line 370
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mPhotoPageBottomBar:Landroid/widget/LinearLayout;

    const v2, 0x7f080248

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mMoreButton:Landroid/widget/ImageView;

    .line 371
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mFileListTitle:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 372
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mFileListDateTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 373
    invoke-direct {p0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->listener()V

    .line 375
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/zui/gallery/banner/FileListDetailsActivity$3;

    invoke-direct {v1, p0}, Lcom/zui/gallery/banner/FileListDetailsActivity$3;-><init>(Lcom/zui/gallery/banner/FileListDetailsActivity;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public isLandScreen()Z
    .locals 1

    .line 227
    iget-boolean v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->isLandScreen:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 595
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->lastClickPlayVideoTime:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/zui/gallery/banner/FileListDetailsActivity;->CLICK_PLAY_VIDEO_ICON_INTERVAL:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    .line 599
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->lastClickPlayVideoTime:J

    .line 600
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "FileListDetailsActivity"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo p1, "\u5206\u4eab"

    .line 611
    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget-object p1, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mPrivacyFileList:Ljava/util/List;

    iget v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mCurrentPosition:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/zui/gallery/banner/MediaFile;->isVideoFileType(Ljava/lang/String;)Z

    move-result p1

    .line 613
    invoke-static {}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->get()Lcom/zui/gallery/privacygroup/KeyStoreUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mPrivacyFileList:Ljava/util/List;

    iget v2, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mCurrentPosition:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, p0, v1, p1}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->sharPrivacyFile(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto :goto_0

    :sswitch_1
    const-string/jumbo p1, "\u66f4\u591a"

    .line 621
    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    invoke-virtual {p0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->createMoreDialog()V

    goto :goto_0

    .line 603
    :sswitch_2
    invoke-virtual {p0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->finish()V

    goto :goto_0

    :sswitch_3
    const-string/jumbo p1, "\u7f16\u8f91"

    .line 606
    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iget-object p1, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mPrivacyFileList:Ljava/util/List;

    iget v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mCurrentPosition:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 608
    invoke-direct {p0, p1}, Lcom/zui/gallery/banner/FileListDetailsActivity;->startFilterPage(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    const-string/jumbo p1, "\u5220\u9664"

    .line 617
    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iget-object p1, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mActivity:Lcom/zui/gallery/banner/BaseActivity;

    const v0, 0x7f100274

    invoke-virtual {p0, v0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1000b9

    invoke-virtual {p0, v1}, Lcom/zui/gallery/banner/FileListDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/banner/BaseActivity;->createDialogBuilder(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_5
    const-string/jumbo p1, "\u79fb\u51fa"

    .line 625
    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget-object p1, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mActivity:Lcom/zui/gallery/banner/BaseActivity;

    const v0, 0x7f100275

    invoke-virtual {p0, v0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f10020d

    invoke-virtual {p0, v1}, Lcom/zui/gallery/banner/FileListDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/banner/BaseActivity;->createDialogBuilder(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0800d1 -> :sswitch_5
        0x7f08013a -> :sswitch_4
        0x7f08016c -> :sswitch_3
        0x7f0801a5 -> :sswitch_2
        0x7f080248 -> :sswitch_1
        0x7f08030b -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 103
    invoke-super {p0, p1}, Lcom/zui/gallery/banner/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p1, "FileListDetailsActivity"

    const-string v0, "onConfigurationChanged"

    .line 104
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object p1, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mFilePath:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/zui/gallery/banner/FileListDetailsActivity;->setTitle(Ljava/lang/String;)V

    .line 106
    invoke-direct {p0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->getConfigChanged()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 93
    invoke-super {p0, p1}, Lcom/zui/gallery/banner/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 492
    invoke-super {p0}, Lcom/zui/gallery/banner/BaseActivity;->onDestroy()V

    .line 493
    invoke-direct {p0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->clearList()V

    .line 494
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mMoreDialog:Lzui/app/ActionDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lzui/app/ActionDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mMoreDialog:Lzui/app/ActionDialog;

    invoke-virtual {v0}, Lzui/app/ActionDialog;->dismiss()V

    const/4 v0, 0x0

    .line 496
    iput-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mMoreDialog:Lzui/app/ActionDialog;

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mDetailsHelper:Lcom/zui/gallery/ui/DetailsHelper;

    if-eqz v0, :cond_1

    .line 499
    invoke-virtual {v0}, Lcom/zui/gallery/ui/DetailsHelper;->close()V

    .line 502
    :cond_1
    invoke-static {}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->get()Lcom/zui/gallery/privacygroup/KeyStoreUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->deleteSharFiles()V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    .line 122
    invoke-super {p0, p1}, Lcom/zui/gallery/banner/BaseActivity;->onMultiWindowModeChanged(Z)V

    .line 123
    invoke-direct {p0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->getConfigChanged()V

    return-void
.end method

.method public onPhotoTopListener()V
    .locals 1

    .line 520
    iget-boolean v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->isShowBar:Z

    if-eqz v0, :cond_0

    .line 521
    invoke-direct {p0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->hideBar()V

    goto :goto_0

    .line 523
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->showBar()V

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 111
    invoke-super {p0}, Lcom/zui/gallery/banner/BaseActivity;->onResume()V

    .line 113
    sget-boolean v0, Lcom/zui/gallery/banner/FileListDetailsActivity;->deleteOrModifyFileNotification:Z

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mFileDetailAdapter:Lcom/zui/gallery/banner/FileDetailAdapter;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->initData()V

    :cond_0
    return-void
.end method

.method protected processFiles(Ljava/lang/String;)V
    .locals 2

    .line 672
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f1000b9

    .line 675
    invoke-virtual {p0, v0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 676
    invoke-direct {p0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->deleteFile()V

    goto :goto_0

    :cond_1
    const v0, 0x7f10020d

    .line 677
    invoke-virtual {p0, v0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 679
    iget-object p1, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mPrivacyFileList:Ljava/util/List;

    iget v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mCurrentPosition:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 680
    invoke-virtual {p0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->showLoadingDialog()V

    .line 681
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zui/gallery/banner/FileListDetailsActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/zui/gallery/banner/FileListDetailsActivity$5;-><init>(Lcom/zui/gallery/banner/FileListDetailsActivity;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 686
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setCurrentFilePath(Ljava/lang/String;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mFilePath:Ljava/lang/String;

    .line 344
    invoke-direct {p0, p1}, Lcom/zui/gallery/banner/FileListDetailsActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mPrivacyFileList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 349
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mPrivacyFileList:Ljava/util/List;

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mPrivacyFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 352
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mPrivacyFileList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 353
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setData "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mPrivacyFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FileListDetailsActivity"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected setLayoutResourceID()I
    .locals 1

    const v0, 0x7f0b0028

    return v0
.end method

.method public showLoadingDialog()V
    .locals 3

    const/4 v0, 0x1

    .line 691
    iput-boolean v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mLoadingVisible:Z

    .line 692
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mProgressDialog:Lzui/app/ProgressDialogX;

    if-nez v0, :cond_0

    .line 693
    new-instance v0, Lzui/app/ProgressDialogX;

    iget-object v1, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mActivity:Lcom/zui/gallery/banner/BaseActivity;

    invoke-direct {v0, v1}, Lzui/app/ProgressDialogX;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mProgressDialog:Lzui/app/ProgressDialogX;

    .line 694
    iget-object v1, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mActivity:Lcom/zui/gallery/banner/BaseActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/banner/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100198

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzui/app/ProgressDialogX;->setMessage(Ljava/lang/CharSequence;)V

    .line 695
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mProgressDialog:Lzui/app/ProgressDialogX;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lzui/app/ProgressDialogX;->setCancelable(Z)V

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mProgressDialog:Lzui/app/ProgressDialogX;

    invoke-virtual {v0}, Lzui/app/ProgressDialogX;->show()V

    return-void
.end method

.method public timeStamp2Date(J)Ljava/lang/String;
    .locals 2

    .line 284
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy\u5e74MM\u6708dd\u65e5HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 285
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
