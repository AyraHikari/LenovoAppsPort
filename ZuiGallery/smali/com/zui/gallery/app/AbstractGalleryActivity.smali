.class public Lcom/zui/gallery/app/AbstractGalleryActivity;
.super Lcom/zui/gallery/app/BaseActivity;
.source "AbstractGalleryActivity.java"

# interfaces
.implements Lcom/zui/gallery/app/GalleryContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;,
        Lcom/zui/gallery/app/AbstractGalleryActivity$GroupSyncNotifier;,
        Lcom/zui/gallery/app/AbstractGalleryActivity$ActionModBottomBarOnClickListener;
    }
.end annotation


# static fields
.field private static final CONTAINER_ANIM_DURATION_MS:I = 0x15e

.field public static final FOLDER_STAUTS:Ljava/lang/String; = "folder_status"

.field public static final GALLERY_PREFERENCE:Ljava/lang/String; = "Gallery_Preference"

.field private static final TAG:Ljava/lang/String; = "AbstractGalleryActivity"

.field public static dispatchingGenericMotionEvent:Z = false


# instance fields
.field public INIT:I

.field private final MULIT_WIN:Ljava/lang/String;

.field private final SCREEN_WIDTH_PORTATION:I

.field private addToPrivacyLayout:Landroid/widget/ImageView;

.field private bottom_actionmode_bar:Landroid/view/View;

.field private bottom_tab_bar:Landroid/view/View;

.field private btn_add:Landroid/widget/TextView;

.field private btn_add_to:Landroid/widget/TextView;

.field private btn_delete:Landroid/widget/ImageView;

.field private btn_img_remove:Landroid/widget/ImageView;

.field private btn_remove:Landroid/widget/TextView;

.field private btn_share:Landroid/widget/ImageView;

.field private volatile cancleAnim:Z

.field private className:Ljava/lang/String;

.field private cloudTipLayoutController:Lcom/zui/gallery/cloud/CloudTipLayoutController;

.field private cloud_sync_tips_ll:Landroid/view/View;

.field private deleteLayout:Landroid/widget/RelativeLayout;

.field private editTitleBarContainer:Landroid/view/ViewGroup;

.field private edit_title_bar:Landroid/view/View;

.field private footerRootView:Landroid/view/View;

.field private gestureDetector:Lcom/zui/gallery/util/LenovoOneGestureDetector;

.field private getMaxContent:I

.field private getMultContent:Z

.field private headerAnimIn:Landroid/view/animation/Animation;

.field private headerAnimOut:Landroid/view/animation/Animation;

.field private headerRootView:Landroid/view/View;

.field private isActivity:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected isCameraCall:Z

.field private isDarkTheme:Z

.field private volatile isMulitWin:Z

.field protected isShortCutsCall:Z

.field protected isThirdAppCall:Z

.field private isViewContent:Z

.field private isWidget:Z

.field public lastOrientation:I

.field private livePhotoView:Landroid/view/View;

.field private mActionBar:Lcom/zui/gallery/app/GalleryActionBar;

.field private mBatchService:Lcom/zui/gallery/app/BatchService;

.field private mBatchServiceConnection:Landroid/content/ServiceConnection;

.field private mBatchServiceIsBound:Z

.field private mCurrentTheme:Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;

.field private mCustomScrollBar:Lcom/zui/gallery/ui/CustomScrollBarView;

.field private mDisableToggleStatusBar:Z

.field protected mFinishWhenClickBack:Z

.field private mGLRootView:Lcom/zui/gallery/ui/GLRootView;

.field private mGroupSyncNotifier:Lcom/zui/gallery/app/AbstractGalleryActivity$GroupSyncNotifier;

.field protected mIsSecureCameraCall:Z

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mOrientationManager:Lcom/zui/gallery/app/OrientationManager;

.field private mPanoramaViewHelper:Lcom/zui/gallery/util/PanoramaViewHelper;

.field private mRootView:Landroid/widget/RelativeLayout;

.field private mStateManager:Lcom/zui/gallery/app/StateManager;

.field private mStatusBarHeight:I

.field public mTabManager:Lcom/zui/gallery/app/TabManager;

.field private mTask:Lcom/zui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/gallery/util/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mThreadPool:Lcom/zui/gallery/util/ThreadPool;

.field private mTransitionStack:Lcom/zui/gallery/app/TransitionStore;

.field private mTransitionStore:Lcom/zui/gallery/app/TransitionStore;

.field public marginBottomHeight:I

.field noNeedToReload:Z

.field private onLeftRightKeyClickListener:Lcom/zui/gallery/util/OnLeftRightKeyClick;

.field private onPause:Z

.field private refreshFolder:Z

.field private title_bar:Landroid/view/View;

.field private txt_delete_albumsetpage:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 110
    invoke-direct {p0}, Lcom/zui/gallery/app/BaseActivity;-><init>()V

    .line 124
    new-instance v0, Lcom/zui/gallery/app/TransitionStore;

    invoke-direct {v0}, Lcom/zui/gallery/app/TransitionStore;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mTransitionStore:Lcom/zui/gallery/app/TransitionStore;

    .line 134
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->isActivity:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 137
    new-instance v0, Lcom/zui/gallery/util/ThreadPool;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v2}, Lcom/zui/gallery/util/ThreadPool;-><init>(II)V

    iput-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mThreadPool:Lcom/zui/gallery/util/ThreadPool;

    .line 139
    iput-boolean v1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->isDarkTheme:Z

    .line 140
    sget-object v0, Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;->DEFALUT:Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;

    iput-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mCurrentTheme:Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;

    .line 149
    iput-boolean v1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->isShortCutsCall:Z

    .line 151
    iput v2, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->getMaxContent:I

    const-string v0, "mulit_win"

    .line 159
    iput-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->MULIT_WIN:Ljava/lang/String;

    const/16 v0, 0x438

    .line 162
    iput v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->SCREEN_WIDTH_PORTATION:I

    .line 169
    iput-boolean v1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->onPause:Z

    const-string v0, ""

    .line 170
    iput-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->className:Ljava/lang/String;

    .line 171
    iput-boolean v1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->refreshFolder:Z

    const/4 v0, -0x1

    .line 172
    iput v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->INIT:I

    .line 927
    iput-boolean v1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->noNeedToReload:Z

    .line 1017
    iput-boolean v1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mBatchServiceIsBound:Z

    .line 1019
    new-instance v0, Lcom/zui/gallery/app/AbstractGalleryActivity$4;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/AbstractGalleryActivity$4;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mBatchServiceConnection:Landroid/content/ServiceConnection;

    .line 1517
    new-instance v0, Lcom/zui/gallery/app/TransitionStore;

    invoke-direct {v0}, Lcom/zui/gallery/app/TransitionStore;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mTransitionStack:Lcom/zui/gallery/app/TransitionStore;

    const/4 v0, 0x0

    .line 1712
    iput-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->onLeftRightKeyClickListener:Lcom/zui/gallery/util/OnLeftRightKeyClick;

    .line 1733
    iput-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->gestureDetector:Lcom/zui/gallery/util/LenovoOneGestureDetector;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/app/AbstractGalleryActivity;)Landroid/view/View;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->headerRootView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zui/gallery/app/AbstractGalleryActivity;)Lcom/zui/gallery/app/StateManager;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mStateManager:Lcom/zui/gallery/app/StateManager;

    return-object p0
.end method

.method static synthetic access$202(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/app/BatchService;)Lcom/zui/gallery/app/BatchService;
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mBatchService:Lcom/zui/gallery/app/BatchService;

    return-object p1
.end method

.method static synthetic access$302(Lcom/zui/gallery/app/AbstractGalleryActivity;Z)Z
    .locals 0

    .line 110
    iput-boolean p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mBatchServiceIsBound:Z

    return p1
.end method

.method static synthetic access$400(Lcom/zui/gallery/app/AbstractGalleryActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->isActivity:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$500(Lcom/zui/gallery/app/AbstractGalleryActivity;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->doSyncTask()V

    return-void
.end method

.method private configActionMode(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 441
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 442
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 443
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 444
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0022

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 446
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0021

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private configTitleBar(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 396
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->headerRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 397
    invoke-static {p0}, Lcom/zui/gallery/util/GalleryUtils;->getStatusHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mStatusBarHeight:I

    .line 405
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 416
    invoke-static {p0}, Lcom/zui/gallery/util/GalleryUtils;->getStatusHeight(Landroid/content/Context;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 422
    iget-object v1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->headerRootView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 425
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 426
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getRootView()Landroid/widget/RelativeLayout;

    move-result-object v1

    const v2, 0x7f080297

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 427
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/16 v2, 0x8

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 428
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0b00e0

    invoke-virtual {v0, v3, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 430
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 432
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0b00df

    invoke-virtual {v0, v3, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 433
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 435
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->headerRootView:Landroid/view/View;

    const v1, 0x7f0501dc

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 436
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->headerRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-object p1
.end method

.method private configureActionmodeBottomContainer()Landroid/view/View;
    .locals 3

    const v0, 0x7f08004c

    .line 467
    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 468
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 470
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 471
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 472
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b0024

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 474
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b0023

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private configureBottomBarContainer()Landroid/view/View;
    .locals 3

    const v0, 0x7f0801b6

    .line 451
    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 452
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 453
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060307

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const v0, 0x7f0800a0

    .line 455
    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 456
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 458
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 459
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 460
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b00dd

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 462
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b00dc

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private destroyWidgetMultiWin()V
    .locals 2

    const-string/jumbo v0, "widget4x3Create"

    .line 920
    invoke-static {v0}, Lcom/zui/gallery/widget/WidgetUtils;->getSpBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "widget4x2Create"

    .line 921
    invoke-static {v1}, Lcom/zui/gallery/widget/WidgetUtils;->getSpBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    const-string v0, "multiWindowMode"

    .line 923
    invoke-static {p0, v0}, Lcom/zui/gallery/util/GalleryUtils;->removeSpKey(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private doBindBatchService()V
    .locals 3

    .line 1042
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zui/gallery/app/BatchService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mBatchServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1044
    iput-boolean v2, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mBatchServiceIsBound:Z

    return-void
.end method

.method private doSyncTask()V
    .locals 2

    .line 1392
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mTask:Lcom/zui/gallery/util/Future;

    if-eqz v0, :cond_0

    .line 1393
    invoke-interface {v0}, Lcom/zui/gallery/util/Future;->cancel()V

    .line 1395
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mThreadPool:Lcom/zui/gallery/util/ThreadPool;

    new-instance v1, Lcom/zui/gallery/app/AbstractGalleryActivity$5;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/AbstractGalleryActivity$5;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;)V

    invoke-virtual {v0, v1}, Lcom/zui/gallery/util/ThreadPool;->submit(Lcom/zui/gallery/util/ThreadPool$Job;)Lcom/zui/gallery/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mTask:Lcom/zui/gallery/util/Future;

    return-void
.end method

.method private doUnbindBatchService()V
    .locals 1

    .line 1048
    iget-boolean v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mBatchServiceIsBound:Z

    if-eqz v0, :cond_0

    .line 1050
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mBatchServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 1051
    iput-boolean v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mBatchServiceIsBound:Z

    :cond_0
    return-void
.end method

.method private groupSyncRegister()V
    .locals 4

    .line 1415
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mGroupSyncNotifier:Lcom/zui/gallery/app/AbstractGalleryActivity$GroupSyncNotifier;

    if-nez v0, :cond_0

    .line 1416
    new-instance v0, Lcom/zui/gallery/app/AbstractGalleryActivity$GroupSyncNotifier;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity$GroupSyncNotifier;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mGroupSyncNotifier:Lcom/zui/gallery/app/AbstractGalleryActivity$GroupSyncNotifier;

    .line 1418
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mGroupSyncNotifier:Lcom/zui/gallery/app/AbstractGalleryActivity$GroupSyncNotifier;

    const/4 v3, 0x1

    .line 1419
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1421
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mGroupSyncNotifier:Lcom/zui/gallery/app/AbstractGalleryActivity$GroupSyncNotifier;

    .line 1422
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "groupSyncRegister: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbstractGalleryActivity"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private groupSyncUnregister()V
    .locals 2

    .line 1436
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mGroupSyncNotifier:Lcom/zui/gallery/app/AbstractGalleryActivity$GroupSyncNotifier;

    if-eqz v0, :cond_0

    .line 1437
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mGroupSyncNotifier:Lcom/zui/gallery/app/AbstractGalleryActivity$GroupSyncNotifier;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "AbstractGalleryActivity"

    const-string v1, "Sync mediaStore exception "

    .line 1440
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private initNfcDevice()V
    .locals 2

    const-string v0, "AbstractGalleryActivity"

    const-string v1, "initNfcadapter"

    .line 179
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v1, :cond_0

    .line 181
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "nfc adapter init"

    .line 182
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "nfc not avable"

    .line 184
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private initStatusBarForXui()V
    .locals 3

    .line 539
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0xc000000

    .line 540
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 545
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x500

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v1, -0x80000000

    .line 555
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 556
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 557
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 561
    :try_start_0
    iget-boolean v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->isDarkTheme:Z

    .line 564
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setNavigationBarIcon()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AbstractGalleryActivity"

    const-string v2, "initStatusBarForXui exception "

    .line 567
    invoke-static {v1, v2, v0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private initSystemTheme()V
    .locals 1

    const/4 v0, 0x1

    .line 575
    iput-boolean v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->isDarkTheme:Z

    .line 576
    sget-object v0, Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;->DEFALUT:Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;

    iput-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mCurrentTheme:Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;

    return-void
.end method

.method private pauseGLThread()V
    .locals 2

    const-string v0, "AbstractGalleryActivity"

    const-string v1, "pauseGLThread"

    .line 775
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mGLRootView:Lcom/zui/gallery/ui/GLRootView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/GLRootView;->onPause()V

    .line 777
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mGLRootView:Lcom/zui/gallery/ui/GLRootView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/GLRootView;->lockRenderThread()V

    .line 779
    :try_start_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/app/StateManager;->pause()V

    .line 780
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/data/DataManager;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 782
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mGLRootView:Lcom/zui/gallery/ui/GLRootView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/GLRootView;->unlockRenderThread()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mGLRootView:Lcom/zui/gallery/ui/GLRootView;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/GLRootView;->unlockRenderThread()V

    .line 783
    throw v0
.end method

.method private removeWidgetStack()V
    .locals 3

    const-string v0, "power"

    .line 890
    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 892
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 893
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeWidgetStack isScreenOn == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AbstractGalleryActivity"

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isWidget()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 896
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->finish()V

    :cond_0
    return-void
.end method

.method private static setAlertDialogIconAttribute(Landroid/app/AlertDialog$Builder;)V
    .locals 1

    const v0, 0x1010355

    .line 807
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method private setBottomBarOnClickListener()V
    .locals 6

    .line 633
    new-instance v0, Lcom/zui/gallery/app/AbstractGalleryActivity$ActionModBottomBarOnClickListener;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/AbstractGalleryActivity$ActionModBottomBarOnClickListener;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;)V

    const v1, 0x7f0801b6

    .line 635
    invoke-virtual {p0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->footerRootView:Landroid/view/View;

    .line 636
    invoke-direct {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->configureBottomBarContainer()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f080097

    .line 638
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->bottom_tab_bar:Landroid/view/View;

    .line 639
    invoke-direct {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->configureActionmodeBottomContainer()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f080094

    .line 640
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->bottom_actionmode_bar:Landroid/view/View;

    const/16 v2, 0x8

    .line 641
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0800a6

    .line 642
    invoke-virtual {p0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->btn_add_to:Landroid/widget/TextView;

    .line 643
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0800a5

    .line 645
    invoke-virtual {p0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->btn_add:Landroid/widget/TextView;

    .line 646
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0800ac

    .line 648
    invoke-virtual {p0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->btn_share:Landroid/widget/ImageView;

    .line 649
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0800a7

    .line 651
    invoke-virtual {p0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->btn_delete:Landroid/widget/ImageView;

    .line 652
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f08038a

    .line 654
    invoke-virtual {p0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->txt_delete_albumsetpage:Landroid/widget/TextView;

    .line 655
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0800ab

    .line 657
    invoke-virtual {p0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->btn_remove:Landroid/widget/TextView;

    .line 658
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f080139

    .line 660
    invoke-virtual {p0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->deleteLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f080053

    .line 663
    invoke-virtual {p0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->addToPrivacyLayout:Landroid/widget/ImageView;

    .line 664
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0800aa

    .line 666
    invoke-virtual {p0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->btn_img_remove:Landroid/widget/ImageView;

    .line 667
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 669
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->headerAnimIn:Landroid/view/animation/Animation;

    const-wide/16 v3, 0x15e

    .line 670
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 671
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->headerAnimIn:Landroid/view/animation/Animation;

    new-instance v5, Lcom/zui/gallery/app/AbstractGalleryActivity$2;

    invoke-direct {v5, p0}, Lcom/zui/gallery/app/AbstractGalleryActivity$2;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;)V

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 690
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->headerAnimOut:Landroid/view/animation/Animation;

    .line 691
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 692
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->headerAnimOut:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 693
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->headerAnimOut:Landroid/view/animation/Animation;

    new-instance v1, Lcom/zui/gallery/app/AbstractGalleryActivity$3;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/AbstractGalleryActivity$3;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private setTranslucentStatus(Z)V
    .locals 3

    .line 621
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 622
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 625
    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x4000000

    or-int/2addr p1, v2

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 627
    :cond_0
    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x4000001

    and-int/2addr p1, v2

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 629
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private setWidgetMultiWin()V
    .locals 2

    const-string/jumbo v0, "widget4x3Create"

    .line 249
    invoke-static {v0}, Lcom/zui/gallery/widget/WidgetUtils;->getSpBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "widget4x2Create"

    .line 250
    invoke-static {v1}, Lcom/zui/gallery/widget/WidgetUtils;->getSpBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_2

    .line 252
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "isMultiWindowMode"

    goto :goto_0

    :cond_1
    const-string v0, "notMultiWindowMode"

    :goto_0
    const-string v1, "multiWindowMode"

    invoke-static {p0, v1, v0}, Lcom/zui/gallery/util/GalleryUtils;->putSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private toggleStatusBarByOrientation()V
    .locals 2

    .line 980
    iget-boolean v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mDisableToggleStatusBar:Z

    if-eqz v0, :cond_0

    return-void

    .line 983
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    .line 984
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method private unUpdateFootHeight()V
    .locals 4

    .line 1282
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isPad()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isLandScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1285
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getFooterRootView()Landroid/view/View;

    move-result-object v0

    .line 1286
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1287
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060307

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1288
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateFootHeight()V
    .locals 4

    .line 1272
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isPad()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isLandScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1275
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getFooterRootView()Landroid/view/View;

    move-result-object v0

    .line 1276
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1277
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06004e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1278
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public animDelete(Z)V
    .locals 0

    return-void
.end method

.method public buildTabManager()V
    .locals 2

    .line 1170
    new-instance v0, Lcom/zui/gallery/app/TabManager;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/TabManager;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mTabManager:Lcom/zui/gallery/app/TabManager;

    .line 1171
    iget-boolean v1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->isThirdAppCall:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 1172
    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/TabManager;->showTab(Z)V

    :cond_0
    return-void
.end method

.method protected disableToggleStatusBar()V
    .locals 1

    const/4 v0, 0x1

    .line 975
    iput-boolean v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mDisableToggleStatusBar:Z

    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1687
    invoke-super {p0, p1}, Lcom/zui/gallery/app/BaseActivity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1681
    invoke-super {p0, p1}, Lcom/zui/gallery/app/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public getActivityOrientation()I
    .locals 1

    .line 282
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method public getAlbum()Lcom/zui/gallery/app/OptimizationAlbum;
    .locals 1

    .line 712
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getOptimizationAlbum()Lcom/zui/gallery/app/OptimizationAlbum;

    move-result-object v0

    return-object v0
.end method

.method public getAndroidContext()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public getBatchServiceThreadPoolIfAvailable()Lcom/zui/gallery/util/ThreadPool;
    .locals 2

    .line 1056
    iget-boolean v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mBatchServiceIsBound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mBatchService:Lcom/zui/gallery/app/BatchService;

    if-eqz v0, :cond_0

    .line 1057
    invoke-virtual {v0}, Lcom/zui/gallery/app/BatchService;->getThreadPool()Lcom/zui/gallery/util/ThreadPool;

    move-result-object v0

    return-object v0

    .line 1059
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Batch service unavailable"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBtn_add()Landroid/widget/TextView;
    .locals 1

    .line 1550
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->btn_add:Landroid/widget/TextView;

    return-object v0
.end method

.method public getBtn_add_to()Landroid/widget/TextView;
    .locals 1

    .line 1554
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->btn_add_to:Landroid/widget/TextView;

    return-object v0
.end method

.method public getBtn_delete()Landroid/widget/ImageView;
    .locals 1

    .line 1570
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->btn_delete:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getBtn_img_remove()Landroid/widget/ImageView;
    .locals 1

    .line 1586
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->btn_img_remove:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getBtn_remove()Landroid/widget/TextView;
    .locals 1

    .line 1578
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->btn_remove:Landroid/widget/TextView;

    return-object v0
.end method

.method public getBtn_share()Landroid/widget/ImageView;
    .locals 1

    .line 1562
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->btn_share:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 1139
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getCloudManager()Lcom/zui/gallery/cloud/CloudManager;
    .locals 1

    .line 334
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v0

    return-object v0
.end method

.method public getCloudSyncTipsLayout()Landroid/view/View;
    .locals 1

    .line 1531
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->cloud_sync_tips_ll:Landroid/view/View;

    return-object v0
.end method

.method public getCloudTipLayoutController()Lcom/zui/gallery/cloud/CloudTipLayoutController;
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->cloudTipLayoutController:Lcom/zui/gallery/cloud/CloudTipLayoutController;

    return-object v0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .line 285
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTheme()Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;
    .locals 1

    .line 616
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mCurrentTheme:Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;

    return-object v0
.end method

.method public getDataManager()Lcom/zui/gallery/data/DataManager;
    .locals 1

    .line 329
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v0

    return-object v0
.end method

.method public getDimens(I)I
    .locals 1

    .line 297
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public getEditTitleBar()Landroid/view/View;
    .locals 1

    .line 1539
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->edit_title_bar:Landroid/view/View;

    return-object v0
.end method

.method public getEditTitleBarContainer()Landroid/view/View;
    .locals 1

    .line 1542
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->editTitleBarContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getFooterRootView()Landroid/view/View;
    .locals 1

    .line 1546
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->footerRootView:Landroid/view/View;

    return-object v0
.end method

.method public getGLRoot()Lcom/zui/gallery/ui/GLRoot;
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mGLRootView:Lcom/zui/gallery/ui/GLRootView;

    return-object v0
.end method

.method public getGalleryActionBar()Lcom/zui/gallery/app/GalleryActionBar;
    .locals 2

    .line 952
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mActionBar:Lcom/zui/gallery/app/GalleryActionBar;

    if-nez v0, :cond_0

    .line 953
    new-instance v0, Lcom/zui/gallery/app/GalleryActionBar;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/GalleryActionBar;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mActionBar:Lcom/zui/gallery/app/GalleryActionBar;

    goto :goto_0

    .line 955
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getActivityOrientation()I

    move-result v0

    iget-object v1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mActionBar:Lcom/zui/gallery/app/GalleryActionBar;

    invoke-virtual {v1}, Lcom/zui/gallery/app/GalleryActionBar;->getOrientation()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 956
    new-instance v0, Lcom/zui/gallery/app/GalleryActionBar;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/GalleryActionBar;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mActionBar:Lcom/zui/gallery/app/GalleryActionBar;

    .line 960
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mActionBar:Lcom/zui/gallery/app/GalleryActionBar;

    return-object v0
.end method

.method public getGetMaxContent()I
    .locals 1

    .line 1118
    iget v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->getMaxContent:I

    return v0
.end method

.method public getHeadRoot()Landroid/view/View;
    .locals 1

    .line 1535
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->headerRootView:Landroid/view/View;

    return-object v0
.end method

.method public getLivePhotoView()Landroid/view/View;
    .locals 1

    .line 1742
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->livePhotoView:Landroid/view/View;

    return-object v0
.end method

.method public getOrientationManager()Lcom/zui/gallery/app/OrientationManager;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mOrientationManager:Lcom/zui/gallery/app/OrientationManager;

    return-object v0
.end method

.method public getPanoramaViewHelper()Lcom/zui/gallery/util/PanoramaViewHelper;
    .locals 1

    .line 997
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mPanoramaViewHelper:Lcom/zui/gallery/util/PanoramaViewHelper;

    return-object v0
.end method

.method public getParentView()Landroid/view/ViewGroup;
    .locals 1

    const v0, 0x7f0801bc

    .line 1463
    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getRootView()Landroid/widget/RelativeLayout;
    .locals 1

    .line 1525
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mRootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public declared-synchronized getStateManager()Lcom/zui/gallery/app/StateManager;
    .locals 1

    monitor-enter p0

    .line 343
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mStateManager:Lcom/zui/gallery/app/StateManager;

    if-nez v0, :cond_0

    .line 344
    new-instance v0, Lcom/zui/gallery/app/StateManager;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/StateManager;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mStateManager:Lcom/zui/gallery/app/StateManager;

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mStateManager:Lcom/zui/gallery/app/StateManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getStatusBarHeight()I
    .locals 1

    .line 175
    invoke-static {p0}, Lcom/zui/gallery/util/GalleryUtils;->getStatusHeight(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public getTabBarHeight()I
    .locals 1

    .line 1183
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mTabManager:Lcom/zui/gallery/app/TabManager;

    if-eqz v0, :cond_0

    .line 1184
    invoke-virtual {v0}, Lcom/zui/gallery/app/TabManager;->getTabHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getThreadPool()Lcom/zui/gallery/util/ThreadPool;
    .locals 1

    .line 339
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getThreadPool()Lcom/zui/gallery/util/ThreadPool;

    move-result-object v0

    return-object v0
.end method

.method public getTitleBar()Landroid/view/View;
    .locals 1

    .line 1528
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->title_bar:Landroid/view/View;

    return-object v0
.end method

.method public getTransitionStack()Lcom/zui/gallery/app/TransitionStore;
    .locals 1

    .line 1520
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mTransitionStack:Lcom/zui/gallery/app/TransitionStore;

    return-object v0
.end method

.method public getTransitionStore()Lcom/zui/gallery/app/TransitionStore;
    .locals 1

    .line 993
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mTransitionStore:Lcom/zui/gallery/app/TransitionStore;

    return-object v0
.end method

.method public getTxt_delete_albumsetpage()Landroid/widget/TextView;
    .locals 1

    .line 1594
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->txt_delete_albumsetpage:Landroid/widget/TextView;

    return-object v0
.end method

.method public declared-synchronized hideEditBottomBar()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    .line 1292
    :try_start_0
    iput-boolean v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->cancleAnim:Z

    .line 1293
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->bottom_tab_bar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1294
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->bottom_actionmode_bar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "AbstractGalleryActivity"

    const-string/jumbo v1, "show_normal_footer"

    .line 1295
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    invoke-direct {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->unUpdateFootHeight()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1297
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hideEditTitleBar()V
    .locals 2

    const-string v0, "AbstractGalleryActivity"

    const-string v1, "hiden EditTitleBar"

    .line 1266
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->title_bar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1268
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->edit_title_bar:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hideHeader()V
    .locals 2

    .line 1242
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->headerRootView:Landroid/view/View;

    iget-object v1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->headerAnimOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public hideHeaderWithoutAnimation()V
    .locals 2

    .line 1248
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->headerRootView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hideLivePhotoIconView()V
    .locals 2

    .line 1754
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->livePhotoView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 1755
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public initScrollBarMarginTopAndBottom(II)V
    .locals 1

    .line 1608
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mCustomScrollBar:Lcom/zui/gallery/ui/CustomScrollBarView;

    if-eqz v0, :cond_0

    .line 1609
    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/ui/CustomScrollBarView;->setMarginTopAndBottom(II)V

    :cond_0
    return-void
.end method

.method public isAppWidget4x2()Z
    .locals 3

    .line 1143
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isWidget()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isGetMultContent()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1146
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 1149
    :cond_1
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/zui/gallery/widget/WidgetManger4x2;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public isCameraCall()Z
    .locals 1

    .line 1102
    iget-boolean v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->isCameraCall:Z

    return v0
.end method

.method public isDarkTheme()Z
    .locals 1

    .line 612
    iget-boolean v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->isDarkTheme:Z

    return v0
.end method

.method public isFinishWhenClickBack()Z
    .locals 1

    .line 1106
    iget-boolean v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mFinishWhenClickBack:Z

    return v0
.end method

.method protected isFullscreen()Z
    .locals 1

    .line 1001
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

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

.method public isGetMultContent()Z
    .locals 1

    .line 1110
    iget-boolean v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->getMultContent:Z

    return v0
.end method

.method public isLandScreen()Z
    .locals 2

    .line 289
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getActivityOrientation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMulitWin()Z
    .locals 1

    .line 1637
    iget-boolean v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->isMulitWin:Z

    return v0
.end method

.method protected isNavigationBarHidden()Z
    .locals 3

    .line 1010
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    and-int/lit16 v1, v0, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_0

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOnPause()Z
    .locals 1

    .line 301
    iget-boolean v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->onPause:Z

    return v0
.end method

.method public isPad()Z
    .locals 1

    .line 294
    invoke-static {p0}, Lcom/zui/gallery/util/DeviceTypeUtils;->isPad(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isRefreshFolder()Z
    .locals 1

    .line 313
    iget-boolean v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->refreshFolder:Z

    return v0
.end method

.method public isSecureCameraCall()Z
    .locals 1

    .line 1156
    iget-boolean v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mIsSecureCameraCall:Z

    return v0
.end method

.method public isThirdAppCall()Z
    .locals 1

    .line 1160
    iget-boolean v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->isThirdAppCall:Z

    return v0
.end method

.method public isViewContent()Z
    .locals 1

    .line 1669
    iget-boolean v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->isViewContent:Z

    return v0
.end method

.method public isWidget()Z
    .locals 1

    .line 1130
    iget-boolean v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->isWidget:Z

    return v0
.end method

.method public synthetic lambda$setBottomMargin$0$AbstractGalleryActivity(Landroid/widget/RelativeLayout$LayoutParams;Landroid/view/View;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 843
    invoke-virtual {p4}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result p3

    iput p3, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 844
    invoke-virtual {p4}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result p3

    iput p3, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->marginBottomHeight:I

    .line 845
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p4
.end method

.method public needUpadateTitleTextWidth()Z
    .locals 2

    .line 1642
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1643
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1644
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1645
    iget v0, v0, Landroid/graphics/Point;->x:I

    const/16 v1, 0x438

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 930
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mGLRootView:Lcom/zui/gallery/ui/GLRootView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/GLRootView;->lockRenderThread()V

    const v0, 0x1869f

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    .line 932
    :try_start_0
    iput-boolean v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->noNeedToReload:Z

    .line 933
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/zui/gallery/app/StateManager;->notifyActivityResult(IILandroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 935
    iget-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mGLRootView:Lcom/zui/gallery/ui/GLRootView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/GLRootView;->unlockRenderThread()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mGLRootView:Lcom/zui/gallery/ui/GLRootView;

    invoke-virtual {p2}, Lcom/zui/gallery/ui/GLRootView;->unlockRenderThread()V

    .line 936
    throw p1
.end method

.method public onBackPressed()V
    .locals 2

    .line 942
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object v0

    .line 943
    invoke-interface {v0}, Lcom/zui/gallery/ui/GLRoot;->lockRenderThread()V

    .line 945
    :try_start_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/app/StateManager;->onBackPressed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 947
    invoke-interface {v0}, Lcom/zui/gallery/ui/GLRoot;->unlockRenderThread()V

    return-void

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/zui/gallery/ui/GLRoot;->unlockRenderThread()V

    .line 948
    throw v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "AbstractGalleryActivity"

    const-string v1, "onConfigurationChanged"

    .line 259
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f080374

    .line 260
    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->configTitleBar(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08036b

    .line 261
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->title_bar:Landroid/view/View;

    .line 262
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->editTitleBarContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->configActionMode(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080048

    .line 263
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->edit_title_bar:Landroid/view/View;

    .line 264
    invoke-super {p0, p1}, Lcom/zui/gallery/app/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 266
    invoke-direct {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setBottomBarOnClickListener()V

    .line 267
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setNavigationBarIcon()V

    .line 268
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->footerRootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setBottomMargin(Landroid/view/View;)V

    .line 269
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mStateManager:Lcom/zui/gallery/app/StateManager;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/app/StateManager;->onConfigurationChange(Landroid/content/res/Configuration;)V

    .line 271
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/zui/gallery/app/GalleryActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/app/GalleryActionBar;->onConfigurationChanged()V

    .line 272
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->invalidateOptionsMenu()V

    .line 273
    invoke-direct {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->toggleStatusBarByOrientation()V

    .line 275
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isInMultiWindowMode()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isOnPause()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 276
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setOnPause(Z)V

    .line 277
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->onResume()V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 190
    invoke-super {p0, p1}, Lcom/zui/gallery/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "AbstractGalleryActivity"

    const-string v0, "onCreate"

    .line 191
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-static {p0}, Lcom/zui/gallery/util/AvatarUtils;->init(Landroid/content/Context;)V

    .line 194
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isInMultiWindowMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f1101f4

    .line 195
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setTheme(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f1100bf

    .line 197
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setTheme(I)V

    .line 201
    :goto_0
    new-instance p1, Lcom/zui/gallery/app/OrientationManager;

    invoke-direct {p1, p0}, Lcom/zui/gallery/app/OrientationManager;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;)V

    iput-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mOrientationManager:Lcom/zui/gallery/app/OrientationManager;

    .line 202
    invoke-direct {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->toggleStatusBarByOrientation()V

    .line 203
    new-instance p1, Lcom/zui/gallery/util/PanoramaViewHelper;

    invoke-direct {p1, p0}, Lcom/zui/gallery/util/PanoramaViewHelper;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mPanoramaViewHelper:Lcom/zui/gallery/util/PanoramaViewHelper;

    .line 204
    invoke-virtual {p1}, Lcom/zui/gallery/util/PanoramaViewHelper;->onCreate()V

    .line 205
    invoke-direct {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->doBindBatchService()V

    .line 207
    sget-object p1, Lcom/zui/gallery/util/AvatarUtils$Catagory;->GALLERYACTIVITY:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    sget-object v0, Lcom/zui/gallery/util/AvatarUtils$Action;->START_GALLERY:Lcom/zui/gallery/util/AvatarUtils$Action;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-static {p1, v0, v2, v1}, Lcom/zui/gallery/util/AvatarUtils;->trackEvent(Lcom/zui/gallery/util/AvatarUtils$Catagory;Lcom/zui/gallery/util/AvatarUtils$Action;Ljava/lang/String;I)V

    .line 208
    invoke-direct {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->initSystemTheme()V

    .line 213
    invoke-direct {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->initNfcDevice()V

    .line 215
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->unreisterNFCBeamUriCallBack()V

    .line 217
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->lastOrientation:I

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 318
    invoke-super {p0, p1}, Lcom/zui/gallery/app/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 319
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/app/StateManager;->createOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCustomScrollBarMaxLenghtAvailable(I)V
    .locals 1

    .line 1631
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mStateManager:Lcom/zui/gallery/app/StateManager;

    invoke-virtual {v0}, Lcom/zui/gallery/app/StateManager;->getTopStateNotEmpty()Lcom/zui/gallery/app/ActivityState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1632
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mStateManager:Lcom/zui/gallery/app/StateManager;

    invoke-virtual {v0}, Lcom/zui/gallery/app/StateManager;->getTopStateNotEmpty()Lcom/zui/gallery/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/app/ActivityState;->onScrollBarMaxLengthAvailable(I)V

    :cond_0
    return-void
.end method

.method public onCustomScrollBarScroll(II)V
    .locals 1

    .line 1625
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mStateManager:Lcom/zui/gallery/app/StateManager;

    invoke-virtual {v0}, Lcom/zui/gallery/app/StateManager;->getTopStateNotEmpty()Lcom/zui/gallery/app/ActivityState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1626
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mStateManager:Lcom/zui/gallery/app/StateManager;

    invoke-virtual {v0}, Lcom/zui/gallery/app/StateManager;->getTopStateNotEmpty()Lcom/zui/gallery/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/app/ActivityState;->onCustomScrollBarPostionChange(II)V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 5

    .line 902
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 903
    invoke-super {p0}, Lcom/zui/gallery/app/BaseActivity;->onDestroy()V

    .line 905
    iget-object v2, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mGLRootView:Lcom/zui/gallery/ui/GLRootView;

    invoke-virtual {v2}, Lcom/zui/gallery/ui/GLRootView;->lockRenderThread()V

    .line 907
    :try_start_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/app/StateManager;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 909
    iget-object v2, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mGLRootView:Lcom/zui/gallery/ui/GLRootView;

    invoke-virtual {v2}, Lcom/zui/gallery/ui/GLRootView;->unlockRenderThread()V

    .line 911
    invoke-direct {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->doUnbindBatchService()V

    .line 912
    invoke-direct {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->groupSyncUnregister()V

    .line 913
    invoke-static {p0}, Lcom/zui/gallery/util/AvatarUtils;->stop(Landroid/content/Context;)V

    .line 914
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v2}, Lcom/zui/gallery/app/GalleryApp;->closeImageCacheService()V

    .line 915
    invoke-direct {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->destroyWidgetMultiWin()V

    .line 916
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestory spend time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbstractGalleryActivity"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    .line 909
    iget-object v1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mGLRootView:Lcom/zui/gallery/ui/GLRootView;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/GLRootView;->unlockRenderThread()V

    .line 910
    throw v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1723
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->gestureDetector:Lcom/zui/gallery/util/LenovoOneGestureDetector;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1725
    sput-boolean v1, Lcom/zui/gallery/app/AbstractGalleryActivity;->dispatchingGenericMotionEvent:Z

    .line 1726
    invoke-virtual {v0, p1}, Lcom/zui/gallery/util/LenovoOneGestureDetector;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)V

    const/4 v0, 0x0

    .line 1727
    sput-boolean v0, Lcom/zui/gallery/app/AbstractGalleryActivity;->dispatchingGenericMotionEvent:Z

    .line 1730
    :cond_0
    invoke-super {p0, p1}, Lcom/zui/gallery/app/BaseActivity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1694
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->gestureDetector:Lcom/zui/gallery/util/LenovoOneGestureDetector;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v0

    and-int/lit16 v0, v0, 0x101

    if-eqz v0, :cond_1

    .line 1695
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1697
    sput-boolean v0, Lcom/zui/gallery/app/AbstractGalleryActivity;->dispatchingGenericMotionEvent:Z

    .line 1698
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->gestureDetector:Lcom/zui/gallery/util/LenovoOneGestureDetector;

    invoke-virtual {v0, p2}, Lcom/zui/gallery/util/LenovoOneGestureDetector;->dispatchGenericMotionEvent(Landroid/view/KeyEvent;)V

    const/4 v0, 0x0

    .line 1699
    sput-boolean v0, Lcom/zui/gallery/app/AbstractGalleryActivity;->dispatchingGenericMotionEvent:Z

    goto :goto_0

    .line 1701
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->onLeftRightKeyClickListener:Lcom/zui/gallery/util/OnLeftRightKeyClick;

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v0

    and-int/lit16 v0, v0, 0x101

    if-eqz v0, :cond_3

    .line 1702
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_2

    .line 1703
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_3

    .line 1704
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->onLeftRightKeyClickListener:Lcom/zui/gallery/util/OnLeftRightKeyClick;

    invoke-interface {v0, p2}, Lcom/zui/gallery/util/OnLeftRightKeyClick;->onKeyDownLeftRightButton(Landroid/view/KeyEvent;)V

    .line 1710
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/zui/gallery/app/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 2

    .line 241
    invoke-super {p0, p1}, Lcom/zui/gallery/app/BaseActivity;->onMultiWindowModeChanged(Z)V

    .line 242
    iput-boolean p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->isMulitWin:Z

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isMultiWindowMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AbstractGalleryActivity"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mStateManager:Lcom/zui/gallery/app/StateManager;

    iget-boolean v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->isMulitWin:Z

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/StateManager;->onMultiWindowModeChanged(Z)V

    .line 245
    invoke-direct {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setWidgetMultiWin()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 965
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object v0

    .line 966
    invoke-interface {v0}, Lcom/zui/gallery/ui/GLRoot;->lockRenderThread()V

    .line 968
    :try_start_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/zui/gallery/app/StateManager;->itemSelected(Landroid/view/MenuItem;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 970
    invoke-interface {v0}, Lcom/zui/gallery/ui/GLRoot;->unlockRenderThread()V

    return p1

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Lcom/zui/gallery/ui/GLRoot;->unlockRenderThread()V

    .line 971
    throw p1
.end method

.method protected onPause()V
    .locals 5

    .line 852
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 853
    invoke-super {p0}, Lcom/zui/gallery/app/BaseActivity;->onPause()V

    .line 854
    invoke-static {}, Lcom/zui/gallery/util/GalleryBitmapPool;->getInstance()Lcom/zui/gallery/util/GalleryBitmapPool;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/util/GalleryBitmapPool;->clear()V

    .line 855
    invoke-static {}, Lcom/zui/gallery/data/MediaItem;->getBytesBufferPool()Lcom/zui/gallery/data/BytesBufferPool;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/data/BytesBufferPool;->clear()V

    .line 856
    iget-object v2, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mOrientationManager:Lcom/zui/gallery/app/OrientationManager;

    invoke-virtual {v2}, Lcom/zui/gallery/app/OrientationManager;->pause()V

    .line 857
    iget-object v2, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->isActivity:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 858
    invoke-direct {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->groupSyncRegister()V

    .line 866
    invoke-virtual {p0, v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setOnPause(Z)V

    .line 867
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause spend time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbstractGalleryActivity"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPhotoScroll(IIJ)V
    .locals 1

    .line 1613
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mCustomScrollBar:Lcom/zui/gallery/ui/CustomScrollBarView;

    if-eqz v0, :cond_0

    .line 1614
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/zui/gallery/ui/CustomScrollBarView;->caculatePosition(IIJ)V

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 222
    invoke-super {p0, p1}, Lcom/zui/gallery/app/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "mulit_win"

    .line 224
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->isMulitWin:Z

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 812
    invoke-super {p0}, Lcom/zui/gallery/app/BaseActivity;->onResume()V

    const-string v0, "AbstractGalleryActivity"

    const-string v1, "onResume"

    .line 813
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mOrientationManager:Lcom/zui/gallery/app/OrientationManager;

    invoke-virtual {v0}, Lcom/zui/gallery/app/OrientationManager;->resume()V

    .line 826
    invoke-direct {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->groupSyncUnregister()V

    const/4 v0, 0x0

    .line 827
    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setOnPause(Z)V

    .line 828
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 829
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x700

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 834
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setNavigationBarIcon()V

    .line 835
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->footerRootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setBottomMargin(Landroid/view/View;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mGLRootView:Lcom/zui/gallery/ui/GLRootView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/GLRootView;->lockRenderThread()V

    .line 232
    :try_start_0
    invoke-super {p0, p1}, Lcom/zui/gallery/app/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 233
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/app/StateManager;->saveState(Landroid/os/Bundle;)V

    const-string v0, "mulit_win"

    .line 234
    iget-boolean v1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->isMulitWin:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    iget-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mGLRootView:Lcom/zui/gallery/ui/GLRootView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/GLRootView;->unlockRenderThread()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mGLRootView:Lcom/zui/gallery/ui/GLRootView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/GLRootView;->unlockRenderThread()V

    .line 237
    throw p1
.end method

.method protected onStart()V
    .locals 3

    .line 788
    invoke-super {p0}, Lcom/zui/gallery/app/BaseActivity;->onStart()V

    const-string v0, "AbstractGalleryActivity"

    const-string v1, "onStart"

    .line 789
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->isActivity:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 792
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mGLRootView:Lcom/zui/gallery/ui/GLRootView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/GLRootView;->lockRenderThread()V

    .line 794
    iget-boolean v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->noNeedToReload:Z

    if-eqz v0, :cond_0

    return-void

    .line 796
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/app/StateManager;->resume()V

    .line 797
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/data/DataManager;->resume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 799
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mGLRootView:Lcom/zui/gallery/ui/GLRootView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/GLRootView;->unlockRenderThread()V

    .line 801
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mGLRootView:Lcom/zui/gallery/ui/GLRootView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/GLRootView;->onResume()V

    return-void

    :catchall_0
    move-exception v0

    .line 799
    iget-object v1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mGLRootView:Lcom/zui/gallery/ui/GLRootView;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/GLRootView;->unlockRenderThread()V

    .line 800
    throw v0
.end method

.method protected onStop()V
    .locals 5

    .line 872
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 873
    invoke-super {p0}, Lcom/zui/gallery/app/BaseActivity;->onStop()V

    .line 881
    invoke-direct {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->pauseGLThread()V

    const/4 v2, 0x0

    .line 885
    invoke-virtual {p0, v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setOnPause(Z)V

    .line 886
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStop spend time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbstractGalleryActivity"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public printSelectedImage(Landroid/net/Uri;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1067
    :cond_0
    invoke-static {p0, p1}, Lcom/zui/gallery/filtershow/cache/ImageLoader;->getLocalPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1069
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1070
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1072
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 1074
    :goto_0
    new-instance v1, Landroidx/print/PrintHelper;

    invoke-direct {v1, p0}, Landroidx/print/PrintHelper;-><init>(Landroid/content/Context;)V

    .line 1076
    :try_start_0
    invoke-virtual {v1, v0, p1}, Landroidx/print/PrintHelper;->printBitmap(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "AbstractGalleryActivity"

    const-string v1, "Error printing an image"

    .line 1078
    invoke-static {v0, v1, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public declared-synchronized registerConnectGenericMotionEventListener(Lcom/zui/gallery/util/LenovoOneGestureDetector;)V
    .locals 0

    monitor-enter p0

    .line 1735
    :try_start_0
    iput-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->gestureDetector:Lcom/zui/gallery/util/LenovoOneGestureDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1736
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public registerLeftRightKeyListener(Lcom/zui/gallery/util/OnLeftRightKeyClick;)V
    .locals 0

    .line 1714
    iput-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->onLeftRightKeyClickListener:Lcom/zui/gallery/util/OnLeftRightKeyClick;

    return-void
.end method

.method public registerNFCBeamUirCallback(Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;)V
    .locals 1

    .line 1655
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1656
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0, p1, p0}, Landroid/nfc/NfcAdapter;->setBeamPushUrisCallback(Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public resetThirdAppCall()V
    .locals 1

    const/4 v0, 0x0

    .line 1164
    iput-boolean v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->isThirdAppCall:Z

    iput-boolean v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->isCameraCall:Z

    return-void
.end method

.method public setAddToPrivacyIfEnnable(Z)V
    .locals 1

    .line 762
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->addToPrivacyLayout:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 764
    iget-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->addToPrivacyLayout:Landroid/widget/ImageView;

    const v0, 0x7f070068

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 766
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->addToPrivacyLayout:Landroid/widget/ImageView;

    const v0, 0x7f070069

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public setBottomMargin(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 841
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 842
    new-instance v1, Lcom/zui/gallery/app/-$$Lambda$AbstractGalleryActivity$84Czn5RkkMrGhKdzT5IlK3GYOW8;

    invoke-direct {v1, p0, v0, p1}, Lcom/zui/gallery/app/-$$Lambda$AbstractGalleryActivity$84Czn5RkkMrGhKdzT5IlK3GYOW8;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Landroid/widget/RelativeLayout$LayoutParams;Landroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public setBtn_add_to(Landroid/widget/TextView;)V
    .locals 0

    .line 1558
    iput-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->btn_add_to:Landroid/widget/TextView;

    return-void
.end method

.method public setBtn_delete(Landroid/widget/ImageView;)V
    .locals 0

    .line 1574
    iput-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->btn_delete:Landroid/widget/ImageView;

    return-void
.end method

.method public setBtn_img_remove(Landroid/widget/ImageView;)V
    .locals 0

    .line 1590
    iput-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->btn_img_remove:Landroid/widget/ImageView;

    return-void
.end method

.method public setBtn_remove(Landroid/widget/TextView;)V
    .locals 0

    .line 1582
    iput-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->btn_remove:Landroid/widget/TextView;

    return-void
.end method

.method public setBtn_share(Landroid/widget/ImageView;)V
    .locals 0

    .line 1566
    iput-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->btn_share:Landroid/widget/ImageView;

    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0

    .line 1135
    iput-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->className:Ljava/lang/String;

    return-void
.end method

.method public setContentView(I)V
    .locals 2

    .line 359
    invoke-super {p0, p1}, Lcom/zui/gallery/app/BaseActivity;->setContentView(I)V

    .line 361
    invoke-direct {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->initStatusBarForXui()V

    const p1, 0x7f0801bc

    .line 362
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mRootView:Landroid/widget/RelativeLayout;

    const p1, 0x7f0801c1

    .line 363
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/ui/GLRootView;

    iput-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mGLRootView:Lcom/zui/gallery/ui/GLRootView;

    const p1, 0x7f0801d4

    .line 364
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->headerRootView:Landroid/view/View;

    .line 366
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStatusBarHeight()I

    .line 368
    invoke-static {p0}, Lcom/zui/gallery/util/GalleryUtils;->getStatusHeight(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mStatusBarHeight:I

    .line 370
    iget-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->headerRootView:Landroid/view/View;

    new-instance v0, Lcom/zui/gallery/app/AbstractGalleryActivity$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/AbstractGalleryActivity$1;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    const p1, 0x7f080374

    .line 379
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->configTitleBar(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f08036b

    .line 380
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->title_bar:Landroid/view/View;

    const p1, 0x7f08004d

    .line 381
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->editTitleBarContainer:Landroid/view/ViewGroup;

    .line 382
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->configActionMode(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f080048

    .line 383
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->edit_title_bar:Landroid/view/View;

    const p1, 0x7f0800dc

    .line 384
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->cloud_sync_tips_ll:Landroid/view/View;

    .line 386
    new-instance p1, Lcom/zui/gallery/cloud/CloudTipLayoutController;

    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->cloud_sync_tips_ll:Landroid/view/View;

    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/app/GalleryApp;

    invoke-direct {p1, v0, v1}, Lcom/zui/gallery/cloud/CloudTipLayoutController;-><init>(Landroid/view/View;Lcom/zui/gallery/app/GalleryApp;)V

    iput-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->cloudTipLayoutController:Lcom/zui/gallery/cloud/CloudTipLayoutController;

    const p1, 0x7f080228

    .line 388
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->livePhotoView:Landroid/view/View;

    .line 390
    invoke-direct {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setBottomBarOnClickListener()V

    return-void
.end method

.method public setDarkNavigationBarIcon(Z)V
    .locals 2

    .line 523
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 525
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    if-eqz p1, :cond_0

    or-int/lit8 p1, v1, 0x10

    goto :goto_0

    :cond_0
    and-int/lit8 p1, v1, -0x11

    .line 531
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    return-void
.end method

.method public setDarkStatusIcon(Z)V
    .locals 2

    .line 498
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 500
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    if-eqz p1, :cond_0

    or-int/lit16 p1, v1, 0x2000

    goto :goto_0

    :cond_0
    and-int/lit16 p1, v1, -0x2001

    .line 506
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    return-void
.end method

.method protected setGetMaxContent(I)V
    .locals 0

    .line 1122
    iput p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->getMaxContent:I

    return-void
.end method

.method protected setGetMultContent(Z)V
    .locals 0

    .line 1114
    iput-boolean p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->getMultContent:Z

    return-void
.end method

.method setIsViewContent(Z)V
    .locals 0

    .line 1673
    iput-boolean p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->isViewContent:Z

    return-void
.end method

.method public setNavigationBarIcon()V
    .locals 2

    .line 510
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isCameraCall()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 513
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 514
    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setDarkStatusIcon(Z)V

    .line 515
    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setDarkNavigationBarIcon(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 517
    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setDarkStatusIcon(Z)V

    .line 518
    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setDarkNavigationBarIcon(Z)V

    :goto_0
    return-void
.end method

.method public setOnPause(Z)V
    .locals 0

    .line 305
    iput-boolean p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->onPause:Z

    return-void
.end method

.method public setRefreshFolder(Z)V
    .locals 0

    .line 309
    iput-boolean p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->refreshFolder:Z

    return-void
.end method

.method public setTabTitle(Ljava/lang/String;)V
    .locals 1

    .line 1195
    iget-boolean v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->isThirdAppCall:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mTabManager:Lcom/zui/gallery/app/TabManager;

    if-eqz v0, :cond_0

    .line 1196
    invoke-virtual {v0, p1}, Lcom/zui/gallery/app/TabManager;->setTabIndicatorText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setWidget(Z)V
    .locals 0

    .line 1126
    iput-boolean p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->isWidget:Z

    return-void
.end method

.method public showDeleteOrRemove(Z)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1356
    iget-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->btn_delete:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1357
    iget-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->btn_delete:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1358
    iget-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->deleteLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1359
    iget-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->btn_remove:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1360
    iget-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->btn_img_remove:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1362
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->btn_delete:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1363
    iget-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->deleteLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1364
    iget-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->btn_remove:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1365
    iget-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->btn_img_remove:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1366
    iget-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->btn_img_remove:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public showEditBottomBar(Lcom/zui/gallery/ui/SelectionManager;)V
    .locals 6

    const/4 v0, 0x0

    .line 1300
    iput-boolean v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->cancleAnim:Z

    .line 1301
    iget-object v1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mStateManager:Lcom/zui/gallery/app/StateManager;

    invoke-virtual {v1}, Lcom/zui/gallery/app/StateManager;->getTopStateNotEmpty()Lcom/zui/gallery/app/ActivityState;

    move-result-object v1

    .line 1302
    iget-object v2, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->bottom_tab_bar:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1303
    iget-object v2, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->bottom_actionmode_bar:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1304
    iget-object v2, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->txt_delete_albumsetpage:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const v2, 0x7f0800a8

    .line 1305
    invoke-virtual {p0, v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v4, 0x7f0800a9

    .line 1306
    invoke-virtual {p0, v4}, Lcom/zui/gallery/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1307
    instance-of v5, v1, Lcom/zui/gallery/app/AlbumSetPage;

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1308
    iget-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->btn_add:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1309
    iget-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->btn_add_to:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1310
    iget-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->btn_share:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1311
    iget-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->btn_remove:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1312
    iget-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->btn_remove:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1314
    iget-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->btn_delete:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1315
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1316
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1317
    iget-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->txt_delete_albumsetpage:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1318
    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setAddToPrivacyIfEnnable(Z)V

    goto :goto_1

    .line 1326
    :cond_0
    instance-of v2, v1, Lcom/zui/gallery/app/AlbumPage;

    if-nez v2, :cond_1

    instance-of v1, v1, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    if-eqz v1, :cond_3

    :cond_1
    invoke-virtual {p1}, Lcom/zui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1327
    invoke-direct {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->updateFootHeight()V

    .line 1328
    invoke-virtual {p1}, Lcom/zui/gallery/ui/SelectionManager;->isLocalGroupAlbum()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1329
    iget-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->btn_add:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1330
    iget-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->btn_add_to:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1331
    iget-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->btn_add:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1332
    invoke-virtual {p0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setAddToPrivacyIfEnnable(Z)V

    goto :goto_0

    .line 1334
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->btn_add:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1335
    iget-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->btn_add_to:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1336
    iget-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->btn_add_to:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1337
    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setAddToPrivacyIfEnnable(Z)V

    .line 1339
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->btn_share:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1340
    iget-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->btn_share:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1341
    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setAddToPrivacyIfEnnable(Z)V

    .line 1342
    iget-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->btn_remove:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1344
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->btn_add_to:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1345
    iget-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->btn_add_to:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1346
    iget-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->btn_share:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1347
    iget-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->btn_share:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1348
    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setAddToPrivacyIfEnnable(Z)V

    :goto_1
    return-void
.end method

.method public showEditTiletBar()V
    .locals 2

    const-string v0, "AbstractGalleryActivity"

    const-string/jumbo v1, "show EditTitleBar"

    .line 1260
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->edit_title_bar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1262
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->title_bar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showHeader()V
    .locals 2

    .line 1226
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->headerAnimOut:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 1227
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->headerAnimOut:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 1229
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->headerRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1232
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->headerRootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1233
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->headerRootView:Landroid/view/View;

    iget-object v1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->headerAnimIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public showHeaderWithoutAnimation()V
    .locals 2

    .line 1236
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->headerRootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showLivePhotoIconView()V
    .locals 2

    .line 1747
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->livePhotoView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1748
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showScrollBar(Z)V
    .locals 1

    .line 1602
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mCustomScrollBar:Lcom/zui/gallery/ui/CustomScrollBarView;

    if-eqz v0, :cond_1

    .line 1603
    invoke-virtual {v0}, Lcom/zui/gallery/ui/CustomScrollBarView;->cancleAnim()V

    .line 1604
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mCustomScrollBar:Lcom/zui/gallery/ui/CustomScrollBarView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/CustomScrollBarView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public showTab(Z)V
    .locals 1

    .line 1189
    iget-boolean v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->isThirdAppCall:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mTabManager:Lcom/zui/gallery/app/TabManager;

    if-eqz v0, :cond_0

    .line 1190
    invoke-virtual {v0, p1}, Lcom/zui/gallery/app/TabManager;->showTab(Z)V

    :cond_0
    return-void
.end method

.method public stopScroll()V
    .locals 1

    .line 1619
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mStateManager:Lcom/zui/gallery/app/StateManager;

    invoke-virtual {v0}, Lcom/zui/gallery/app/StateManager;->getTopStateNotEmpty()Lcom/zui/gallery/app/ActivityState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1620
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mStateManager:Lcom/zui/gallery/app/StateManager;

    invoke-virtual {v0}, Lcom/zui/gallery/app/StateManager;->getTopStateNotEmpty()Lcom/zui/gallery/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/app/ActivityState;->stopScroll()V

    :cond_0
    return-void
.end method

.method public switchTab(I)V
    .locals 1

    .line 1201
    iget-boolean v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->isThirdAppCall:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mTabManager:Lcom/zui/gallery/app/TabManager;

    if-eqz v0, :cond_0

    .line 1202
    invoke-virtual {v0, p1}, Lcom/zui/gallery/app/TabManager;->switchTab(I)V

    :cond_0
    return-void
.end method

.method public tryConnectCloudService()V
    .locals 0

    return-void
.end method

.method public declared-synchronized unRegisterConnectGenericMotionEventListener()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1738
    :try_start_0
    iput-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->gestureDetector:Lcom/zui/gallery/util/LenovoOneGestureDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1739
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unRegisterLeftRightKeyListener()V
    .locals 1

    const/4 v0, 0x0

    .line 1717
    iput-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->onLeftRightKeyClickListener:Lcom/zui/gallery/util/OnLeftRightKeyClick;

    return-void
.end method

.method public unreisterNFCBeamUriCallBack()V
    .locals 2

    .line 1661
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1662
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/nfc/NfcAdapter;->setBeamPushUrisCallback(Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public updateTabIndex(Lcom/zui/gallery/app/TabManager$TabIndex;)V
    .locals 1

    .line 1177
    iget-boolean v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->isThirdAppCall:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mTabManager:Lcom/zui/gallery/app/TabManager;

    if-eqz v0, :cond_0

    .line 1178
    invoke-virtual {v0, p1}, Lcom/zui/gallery/app/TabManager;->updateTabIndex(Lcom/zui/gallery/app/TabManager$TabIndex;)V

    :cond_0
    return-void
.end method
