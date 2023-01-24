.class public Lcom/zui/gallery/filtershow/category/MainPanel;
.super Landroidx/fragment/app/Fragment;
.source "MainPanel.java"


# static fields
.field public static final BORDERS:I = 0x0

.field public static final CAPTION:I = 0xa

.field public static final DRAW:I = 0x8

.field public static final FILTERS:I = 0x3

.field public static final FILTERS_ADD:I = 0x7

.field private static final FIRST:Ljava/lang/String; = "first"

.field public static final FRAGMENT_TAG:Ljava/lang/String; = "MainPanel"

.field public static final GEOMETRY:I = 0x1

.field public static final GEOMETRY_ADD:I = 0x6

.field private static final LOGTAG:Ljava/lang/String; = "MainPanel"

.field public static final LOOKS:I = 0x2

.field public static final MOSAC:I = 0x5

.field public static final MOSAIC:I = 0x9

.field public static final VERSIONS:I = 0x4


# instance fields
.field private bottomLayout:Landroid/widget/LinearLayout;

.field private filterLayout:Landroid/widget/LinearLayout;

.field private lookLayout:Landroid/widget/LinearLayout;

.field private mAddDraw:Landroid/widget/ImageView;

.field private mAddDrawImage:Landroid/widget/ImageView;

.field private mBorderImage:Landroid/widget/ImageView;

.field private mCaption:Landroid/widget/ImageView;

.field private mCaptionLayout:Landroid/widget/LinearLayout;

.field private mCategoryView:Landroid/widget/FrameLayout;

.field private mCropImage:Landroid/widget/ImageView;

.field private mCurrentSelected:I

.field private mDeleteImage:Landroid/widget/ImageView;

.field private mDrawButton:Landroid/widget/ImageView;

.field private mFiltersButton:Landroid/widget/ImageView;

.field private mGeometryButton:Landroid/widget/ImageView;

.field private mLooksImage:Landroid/widget/ImageView;

.field private mMainView:Landroid/widget/LinearLayout;

.field private mMosacImage:Landroid/widget/ImageView;

.field private mPreviousToggleVersions:I

.field private mRotationImage:Landroid/widget/ImageView;

.field private mSecureCameraCall:Z

.field private mShareImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, -0x1

    .line 98
    iput v0, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCurrentSelected:I

    .line 99
    iput v0, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mPreviousToggleVersions:I

    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCategoryView:Landroid/widget/FrameLayout;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/filtershow/category/MainPanel;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/category/MainPanel;->resetWH()V

    return-void
.end method

.method static synthetic access$100(Lcom/zui/gallery/filtershow/category/MainPanel;)Landroid/widget/FrameLayout;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCategoryView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/zui/gallery/filtershow/category/MainPanel;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCurrentSelected:I

    return p0
.end method

.method static synthetic access$300(Lcom/zui/gallery/filtershow/category/MainPanel;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mPreviousToggleVersions:I

    return p0
.end method

.method static synthetic access$302(Lcom/zui/gallery/filtershow/category/MainPanel;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mPreviousToggleVersions:I

    return p1
.end method

.method private isRightAnimation(I)Z
    .locals 1

    .line 472
    iget v0, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCurrentSelected:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private limitTexture()V
    .locals 4

    .line 155
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/MainPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 156
    instance-of v1, v0, Lcom/zui/gallery/filtershow/FilterShowActivity;

    if-eqz v1, :cond_3

    .line 157
    check-cast v0, Lcom/zui/gallery/filtershow/FilterShowActivity;

    .line 158
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->isGlTextureLimit()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 160
    iget-object v1, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCaption:Landroid/widget/ImageView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 161
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mLooksImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 164
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_1
    const-string v1, "first"

    const-string v2, ""

    .line 166
    invoke-static {v0, v1, v2}, Lcom/zui/gallery/util/GalleryUtils;->getSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 167
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 168
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    const v2, 0x7f100201

    .line 172
    invoke-virtual {v0, v2}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 173
    invoke-static {v0, v1, v1}, Lcom/zui/gallery/util/GalleryUtils;->putSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private resetWH()V
    .locals 3

    .line 460
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/MainPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/gallery/util/DeviceTypeUtils;->isPad(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    sget-boolean v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isLandscape:Z

    if-eqz v0, :cond_1

    .line 462
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCategoryView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/MainPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060228

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 466
    :cond_0
    sget-boolean v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isLandscape:Z

    if-eqz v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCategoryView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/MainPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060227

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_1
    :goto_0
    return-void
.end method

.method private selection(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/MainPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/FilterShowActivity;

    .line 108
    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->setCurrentPanel(I)V

    :cond_0
    if-eqz p1, :cond_8

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5

    const/4 v0, 0x6

    if-eq p1, v0, :cond_4

    const/4 v0, 0x7

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 142
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCaption:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 129
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mDrawButton:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 125
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mFiltersButton:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 121
    :cond_4
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mGeometryButton:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 138
    :cond_5
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mRotationImage:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 112
    :cond_6
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mLooksImage:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 134
    :cond_7
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCropImage:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 117
    :cond_8
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mBorderImage:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    :goto_0
    return-void
.end method

.method private setCategoryFragment(Lcom/zui/gallery/filtershow/category/CategoryPanel;Z)V
    .locals 2

    .line 479
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loadCategoryDrawPanel222: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCurrentSelected:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "mCurrentSelected"

    invoke-static {v0, p2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/MainPanel;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    .line 495
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/MainPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/FilterShowActivity;

    .line 497
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "EditorPanel"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    const v0, 0x7f0800ca

    const-string v1, "CategoryPanel"

    .line 502
    invoke-virtual {p2, v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 503
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 504
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCategoryView:Landroid/widget/FrameLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public loadCategoryAddDrawPanel()V
    .locals 6

    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadCategoryDrawPanel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCurrentSelected:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mCurrentSelected"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iget v0, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCurrentSelected:I

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    return-void

    .line 677
    :cond_0
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->hasTinyPlanet()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 680
    :cond_1
    invoke-direct {p0, v2}, Lcom/zui/gallery/filtershow/category/MainPanel;->isRightAnimation(I)Z

    move-result v0

    .line 681
    iget v3, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCurrentSelected:I

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/zui/gallery/filtershow/category/MainPanel;->selection(IZ)V

    .line 682
    new-instance v3, Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-direct {v3}, Lcom/zui/gallery/filtershow/category/CategoryPanel;-><init>()V

    .line 683
    invoke-virtual {v3, v2}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->setAdapter(I)V

    .line 684
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadCategoryDrawPanel222: ggg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCurrentSelected:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    invoke-direct {p0, v3, v0}, Lcom/zui/gallery/filtershow/category/MainPanel;->setCategoryFragment(Lcom/zui/gallery/filtershow/category/CategoryPanel;Z)V

    .line 686
    iput v2, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCurrentSelected:I

    const/4 v0, 0x1

    .line 687
    invoke-direct {p0, v2, v0}, Lcom/zui/gallery/filtershow/category/MainPanel;->selection(IZ)V

    return-void
.end method

.method public loadCategoryBorderPanel()V
    .locals 5

    .line 573
    iget v0, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCurrentSelected:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 576
    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/category/MainPanel;->isRightAnimation(I)Z

    move-result v1

    .line 577
    iget v2, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCurrentSelected:I

    invoke-direct {p0, v2, v0}, Lcom/zui/gallery/filtershow/category/MainPanel;->selection(IZ)V

    .line 578
    new-instance v2, Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-direct {v2}, Lcom/zui/gallery/filtershow/category/CategoryPanel;-><init>()V

    .line 579
    invoke-virtual {v2, v0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->setAdapter(I)V

    .line 580
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadCategoryDrawPanel222: bbb"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCurrentSelected:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mCurrentSelected"

    invoke-static {v4, v3}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    invoke-direct {p0, v2, v1}, Lcom/zui/gallery/filtershow/category/MainPanel;->setCategoryFragment(Lcom/zui/gallery/filtershow/category/CategoryPanel;Z)V

    .line 582
    iput v0, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCurrentSelected:I

    const/4 v1, 0x1

    .line 583
    invoke-direct {p0, v0, v1}, Lcom/zui/gallery/filtershow/category/MainPanel;->selection(IZ)V

    return-void
.end method

.method public loadCategoryCaptionPanel()V
    .locals 5

    .line 549
    iget v0, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCurrentSelected:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    return-void

    .line 552
    :cond_0
    invoke-direct {p0, v1}, Lcom/zui/gallery/filtershow/category/MainPanel;->isRightAnimation(I)Z

    move-result v0

    .line 553
    iget v2, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCurrentSelected:I

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/zui/gallery/filtershow/category/MainPanel;->selection(IZ)V

    .line 554
    new-instance v2, Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-direct {v2}, Lcom/zui/gallery/filtershow/category/CategoryPanel;-><init>()V

    .line 555
    invoke-virtual {v2, v1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->setAdapter(I)V

    .line 556
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadCategoryDrawPanel222: bbb"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCurrentSelected:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mCurrentSelected"

    invoke-static {v4, v3}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    invoke-direct {p0, v2, v0}, Lcom/zui/gallery/filtershow/category/MainPanel;->setCategoryFragment(Lcom/zui/gallery/filtershow/category/CategoryPanel;Z)V

    .line 558
    iput v1, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCurrentSelected:I

    const/4 v0, 0x1

    .line 559
    invoke-direct {p0, v1, v0}, Lcom/zui/gallery/filtershow/category/MainPanel;->selection(IZ)V

    return-void
.end method

.method public loadCategoryDrawPanel()V
    .locals 5

    .line 656
    iget v0, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCurrentSelected:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    return-void

    .line 659
    :cond_0
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->hasTinyPlanet()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 662
    :cond_1
    invoke-direct {p0, v1}, Lcom/zui/gallery/filtershow/category/MainPanel;->isRightAnimation(I)Z

    move-result v0

    .line 663
    iget v2, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCurrentSelected:I

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/zui/gallery/filtershow/category/MainPanel;->selection(IZ)V

    .line 664
    new-instance v2, Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-direct {v2}, Lcom/zui/gallery/filtershow/category/CategoryPanel;-><init>()V

    .line 665
    invoke-virtual {v2, v1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->setAdapter(I)V

    .line 666
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadCategoryDrawPanel222: fff"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCurrentSelected:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mCurrentSelected"

    invoke-static {v4, v3}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    invoke-direct {p0, v2, v0}, Lcom/zui/gallery/filtershow/category/MainPanel;->setCategoryFragment(Lcom/zui/gallery/filtershow/category/CategoryPanel;Z)V

    .line 668
    iput v1, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCurrentSelected:I

    const/4 v0, 0x1

    .line 669
    invoke-direct {p0, v1, v0}, Lcom/zui/gallery/filtershow/category/MainPanel;->selection(IZ)V

    return-void
.end method

.method public loadCategoryFiltersAddPanel()V
    .locals 6

    .line 622
    iget v0, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCurrentSelected:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x7

    if-ne v0, v3, :cond_3

    .line 623
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/MainPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/FilterShowActivity;

    .line 624
    iget-object v3, v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mEditControl:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-nez v3, :cond_0

    .line 625
    iget-object v3, v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mEditControl:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 628
    :cond_0
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    const-string v5, "EditorPanel"

    invoke-virtual {v3, v5}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    .line 629
    check-cast v3, Lcom/zui/gallery/filtershow/editors/EditorPanel;

    if-eqz v3, :cond_2

    .line 630
    iget-object v5, v3, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mImageCurvesPanel:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    .line 631
    iget-object v3, v3, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mImageCurvesPanel:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 632
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->showDefaultImageView()V

    .line 633
    sget-boolean v3, Lcom/zui/gallery/filtershow/FilterShowActivity;->isLandscape:Z

    const v4, 0x7f060227

    if-eqz v3, :cond_1

    .line 634
    iget-object v0, v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->framelayoutMainpanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/MainPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 636
    :cond_1
    iget-object v0, v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->framelayoutMainpanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/MainPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 639
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCategoryView:Landroid/widget/FrameLayout;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, -0x1

    .line 640
    invoke-direct {p0, v0, v1}, Lcom/zui/gallery/filtershow/category/MainPanel;->selection(IZ)V

    .line 641
    iput v0, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCurrentSelected:I

    .line 642
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mFiltersButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void

    .line 645
    :cond_3
    invoke-direct {p0, v3}, Lcom/zui/gallery/filtershow/category/MainPanel;->isRightAnimation(I)Z

    move-result v0

    .line 646
    iget v4, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCurrentSelected:I

    invoke-direct {p0, v4, v2}, Lcom/zui/gallery/filtershow/category/MainPanel;->selection(IZ)V

    .line 647
    new-instance v2, Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-direct {v2}, Lcom/zui/gallery/filtershow/category/CategoryPanel;-><init>()V

    .line 648
    invoke-virtual {v2, v3}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->setAdapter(I)V

    .line 649
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadCategoryDrawPanel222: eee"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCurrentSelected:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mCurrentSelected"

    invoke-static {v5, v4}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    invoke-direct {p0, v2, v0}, Lcom/zui/gallery/filtershow/category/MainPanel;->setCategoryFragment(Lcom/zui/gallery/filtershow/category/CategoryPanel;Z)V

    .line 651
    iput v3, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCurrentSelected:I

    .line 652
    invoke-direct {p0, v3, v1}, Lcom/zui/gallery/filtershow/category/MainPanel;->selection(IZ)V

    return-void
.end method

.method public loadCategoryFiltersPanel()V
    .locals 5

    .line 692
    iget v0, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCurrentSelected:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    .line 695
    :cond_0
    invoke-direct {p0, v1}, Lcom/zui/gallery/filtershow/category/MainPanel;->isRightAnimation(I)Z

    move-result v0

    .line 696
    iget v2, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCurrentSelected:I

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/zui/gallery/filtershow/category/MainPanel;->selection(IZ)V

    .line 697
    new-instance v2, Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-direct {v2}, Lcom/zui/gallery/filtershow/category/CategoryPanel;-><init>()V

    .line 698
    invoke-virtual {v2, v1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->setAdapter(I)V

    .line 699
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadCategoryDrawPanel222: hhh"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCurrentSelected:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mCurrentSelected"

    invoke-static {v4, v3}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    invoke-direct {p0, v2, v0}, Lcom/zui/gallery/filtershow/category/MainPanel;->setCategoryFragment(Lcom/zui/gallery/filtershow/category/CategoryPanel;Z)V

    .line 701
    iput v1, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCurrentSelected:I

    const/4 v0, 0x1

    .line 702
    invoke-direct {p0, v1, v0}, Lcom/zui/gallery/filtershow/category/MainPanel;->selection(IZ)V

    return-void
.end method

.method public loadCategoryGeometryAddPanel()V
    .locals 5

    .line 605
    iget v0, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCurrentSelected:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    return-void

    .line 608
    :cond_0
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->hasTinyPlanet()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 611
    :cond_1
    invoke-direct {p0, v1}, Lcom/zui/gallery/filtershow/category/MainPanel;->isRightAnimation(I)Z

    move-result v0

    .line 612
    iget v2, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCurrentSelected:I

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/zui/gallery/filtershow/category/MainPanel;->selection(IZ)V

    .line 613
    new-instance v2, Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-direct {v2}, Lcom/zui/gallery/filtershow/category/CategoryPanel;-><init>()V

    .line 614
    invoke-virtual {v2, v1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->setAdapter(I)V

    .line 615
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadCategoryDrawPanel222: ddd"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCurrentSelected:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mCurrentSelected"

    invoke-static {v4, v3}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    invoke-direct {p0, v2, v0}, Lcom/zui/gallery/filtershow/category/MainPanel;->setCategoryFragment(Lcom/zui/gallery/filtershow/category/CategoryPanel;Z)V

    .line 617
    iput v1, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCurrentSelected:I

    const/4 v0, 0x1

    .line 618
    invoke-direct {p0, v1, v0}, Lcom/zui/gallery/filtershow/category/MainPanel;->selection(IZ)V

    return-void
.end method

.method public loadCategoryGeometryPanel()V
    .locals 5

    .line 587
    iget v0, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCurrentSelected:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 590
    :cond_0
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->hasTinyPlanet()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 593
    :cond_1
    invoke-direct {p0, v1}, Lcom/zui/gallery/filtershow/category/MainPanel;->isRightAnimation(I)Z

    move-result v0

    .line 594
    iget v2, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCurrentSelected:I

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/zui/gallery/filtershow/category/MainPanel;->selection(IZ)V

    .line 595
    new-instance v2, Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-direct {v2}, Lcom/zui/gallery/filtershow/category/CategoryPanel;-><init>()V

    .line 596
    invoke-virtual {v2, v1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->setAdapter(I)V

    .line 597
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadCategoryDrawPanel222: ccc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCurrentSelected:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mCurrentSelected"

    invoke-static {v4, v3}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    invoke-direct {p0, v2, v0}, Lcom/zui/gallery/filtershow/category/MainPanel;->setCategoryFragment(Lcom/zui/gallery/filtershow/category/CategoryPanel;Z)V

    .line 599
    iput v1, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCurrentSelected:I

    .line 600
    invoke-direct {p0, v1, v1}, Lcom/zui/gallery/filtershow/category/MainPanel;->selection(IZ)V

    return-void
.end method

.method public loadCategoryLookPanel(Z)V
    .locals 5

    .line 521
    iget v0, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCurrentSelected:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 522
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/MainPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/FilterShowActivity;

    .line 524
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "EditorPanel"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 525
    check-cast v0, Lcom/zui/gallery/filtershow/editors/EditorPanel;

    if-eqz v0, :cond_0

    .line 526
    iget-object v1, v0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mImageCurvesPanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 527
    iget-object v0, v0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mImageCurvesPanel:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez p1, :cond_1

    .line 530
    iget p1, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCurrentSelected:I

    if-ne p1, v2, :cond_1

    const-string p1, "bottomTEST"

    const-string v2, "loadCategoryLookPanel: 222"

    .line 531
    invoke-static {p1, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCategoryView:Landroid/widget/FrameLayout;

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 p1, -0x1

    .line 533
    invoke-direct {p0, p1, v0}, Lcom/zui/gallery/filtershow/category/MainPanel;->selection(IZ)V

    .line 534
    iput p1, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCurrentSelected:I

    .line 535
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mLooksImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void

    .line 538
    :cond_1
    invoke-direct {p0, v2}, Lcom/zui/gallery/filtershow/category/MainPanel;->isRightAnimation(I)Z

    move-result p1

    .line 539
    iget v3, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCurrentSelected:I

    invoke-direct {p0, v3, v1}, Lcom/zui/gallery/filtershow/category/MainPanel;->selection(IZ)V

    .line 540
    new-instance v1, Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-direct {v1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;-><init>()V

    .line 541
    invoke-virtual {v1, v2}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->setAdapter(I)V

    .line 542
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadCategoryDrawPanel222: aaa"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCurrentSelected:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mCurrentSelected"

    invoke-static {v4, v3}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    invoke-direct {p0, v1, p1}, Lcom/zui/gallery/filtershow/category/MainPanel;->setCategoryFragment(Lcom/zui/gallery/filtershow/category/CategoryPanel;Z)V

    .line 544
    iput v2, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCurrentSelected:I

    .line 545
    invoke-direct {p0, v2, v0}, Lcom/zui/gallery/filtershow/category/MainPanel;->selection(IZ)V

    return-void
.end method

.method public loadCategoryMosacPanlel()V
    .locals 4

    .line 514
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/MainPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/FilterShowActivity;

    .line 515
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/zui/gallery/ui/mosaic/MosaicActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 516
    sget-object v2, Lcom/zui/gallery/app/GalleryActivity;->SECURE_CAMERA_EXTRA:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mSecureCameraCall:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x3e8

    .line 517
    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/filtershow/FilterShowActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public loadCategoryVersionsPanel()V
    .locals 5

    .line 706
    iget v0, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCurrentSelected:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    return-void

    .line 709
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/MainPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/FilterShowActivity;

    .line 710
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->updateVersions()V

    .line 711
    invoke-direct {p0, v1}, Lcom/zui/gallery/filtershow/category/MainPanel;->isRightAnimation(I)Z

    move-result v0

    .line 712
    iget v2, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCurrentSelected:I

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/zui/gallery/filtershow/category/MainPanel;->selection(IZ)V

    .line 713
    new-instance v2, Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-direct {v2}, Lcom/zui/gallery/filtershow/category/CategoryPanel;-><init>()V

    .line 714
    invoke-virtual {v2, v1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->setAdapter(I)V

    .line 715
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadCategoryDrawPanel222: vvv"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCurrentSelected:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mCurrentSelected"

    invoke-static {v4, v3}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    invoke-direct {p0, v2, v0}, Lcom/zui/gallery/filtershow/category/MainPanel;->setCategoryFragment(Lcom/zui/gallery/filtershow/category/CategoryPanel;Z)V

    .line 717
    iput v1, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCurrentSelected:I

    const/4 v0, 0x1

    .line 718
    invoke-direct {p0, v1, v0}, Lcom/zui/gallery/filtershow/category/MainPanel;->selection(IZ)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7

    .line 849
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string p1, "mCurrentSelected"

    const-string v0, "loadCategoryDrawPanel: onActivityCreated"

    .line 851
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "bottomTEST"

    const-string v1, "onClick: nenwenwnew"

    .line 852
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/MainPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/FilterShowActivity;

    iget-boolean v0, v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isOnCreate:Z

    if-eqz v0, :cond_3

    .line 855
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/MainPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/FilterShowActivity;

    iget v0, v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mSelectedPanelId:I

    .line 856
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadCategoryDrawPanel222: OKOKOK "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/MainPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/FilterShowActivity;

    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/zui/gallery/filtershow/FilterShowActivity;->isOnCreate:Z

    const/4 p1, -0x1

    if-eq v0, p1, :cond_3

    .line 860
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/MainPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/FilterShowActivity;

    const/4 v3, 0x2

    const/16 v4, 0x8

    if-eq v0, v3, :cond_2

    const/16 v3, 0x1e

    const/high16 v5, 0x42700000    # 60.0f

    const/16 v6, 0xa

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 904
    :pswitch_0
    invoke-virtual {p0, v6}, Lcom/zui/gallery/filtershow/category/MainPanel;->showPanel(I)V

    .line 905
    iget-object p1, v2, Lcom/zui/gallery/filtershow/FilterShowActivity;->mEditControl:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :pswitch_1
    const/16 v0, 0x9

    .line 894
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/category/MainPanel;->showPanel(I)V

    .line 895
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityCreated111: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v1

    iget v1, v1, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->hsvoIndex:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ovwrerrr"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    sput v5, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->colorPos:F

    .line 898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActivityCreated222: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->colorPos:F

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    iget v0, v0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->radKey:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p1

    iget v6, p1, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->radKey:I

    :goto_0
    sput v6, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mIndex:I

    .line 900
    sput v3, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->mIndex:I

    .line 901
    iget-object p1, v2, Lcom/zui/gallery/filtershow/FilterShowActivity;->mEditControl:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 887
    :pswitch_2
    invoke-virtual {p0, v4}, Lcom/zui/gallery/filtershow/category/MainPanel;->showPanel(I)V

    .line 888
    sput v5, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->colorPos:F

    .line 889
    sput v6, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mIndex:I

    .line 890
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    iget v0, v0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->radKey:I

    if-ne v0, p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p1

    iget v3, p1, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->radKey:I

    :goto_1
    sput v3, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->mIndex:I

    .line 891
    iget-object p1, v2, Lcom/zui/gallery/filtershow/FilterShowActivity;->mEditControl:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :pswitch_3
    const/4 p1, 0x7

    .line 870
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/category/MainPanel;->showPanel(I)V

    .line 871
    iget-object p1, v2, Lcom/zui/gallery/filtershow/FilterShowActivity;->mEditControl:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 872
    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/FilterShowActivity;->showDefaultImageView()V

    goto :goto_2

    .line 875
    :pswitch_4
    iput-boolean v1, v2, Lcom/zui/gallery/filtershow/FilterShowActivity;->mIsVertical:Z

    const/4 p1, 0x0

    .line 876
    invoke-virtual {v2, p1, v1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->resetSaveRectfAndCropType(Landroid/graphics/RectF;I)V

    .line 878
    sput-boolean v1, Lcom/zui/gallery/filtershow/editors/EditorPanel;->isMirrorCancel:Z

    const/4 p1, 0x6

    .line 880
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/category/MainPanel;->showPanel(I)V

    .line 882
    iget-object p1, v2, Lcom/zui/gallery/filtershow/FilterShowActivity;->mEditControl:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 883
    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/FilterShowActivity;->isModifyPicture()V

    .line 884
    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/FilterShowActivity;->showDefaultImageView()V

    goto :goto_2

    .line 863
    :cond_2
    invoke-virtual {p0, v3}, Lcom/zui/gallery/filtershow/category/MainPanel;->showPanel(I)V

    .line 864
    iget-object p1, v2, Lcom/zui/gallery/filtershow/FilterShowActivity;->mEditControl:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 865
    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/FilterShowActivity;->showDefaultImageView()V

    .line 866
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/MainPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->resetPanlWidth()V

    .line 867
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/category/MainPanel;->resetWH()V

    :cond_3
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 191
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 193
    check-cast p1, Lcom/zui/gallery/filtershow/FilterShowActivity;

    .line 194
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->isSecureCameraCall()Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mSecureCameraCall:Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    const v1, 0x7f0b005d

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v4, p1

    .line 201
    invoke-virtual {v4, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->mMainView:Landroid/widget/LinearLayout;

    const-string v1, "curEdit"

    const-string v2, "onCreateView: Mainpanel "

    .line 204
    invoke-static {v1, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->mMainView:Landroid/widget/LinearLayout;

    const v2, 0x7f080108

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCropImage:Landroid/widget/ImageView;

    .line 207
    iget-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->mMainView:Landroid/widget/LinearLayout;

    const v2, 0x7f08022d

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->mLooksImage:Landroid/widget/ImageView;

    .line 209
    iget-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->mMainView:Landroid/widget/LinearLayout;

    const v2, 0x7f080091

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->mBorderImage:Landroid/widget/ImageView;

    .line 210
    iget-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->mMainView:Landroid/widget/LinearLayout;

    const v2, 0x7f0801bd

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->mGeometryButton:Landroid/widget/ImageView;

    .line 211
    iget-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->mMainView:Landroid/widget/LinearLayout;

    const v2, 0x7f0801d6

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->mFiltersButton:Landroid/widget/ImageView;

    .line 212
    iget-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->mMainView:Landroid/widget/LinearLayout;

    const v2, 0x7f08014d

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->mDrawButton:Landroid/widget/ImageView;

    .line 213
    iget-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->mMainView:Landroid/widget/LinearLayout;

    const v2, 0x7f0800c9

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCaptionLayout:Landroid/widget/LinearLayout;

    .line 214
    iget-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->mMainView:Landroid/widget/LinearLayout;

    const v2, 0x7f0800c8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCaption:Landroid/widget/ImageView;

    .line 215
    invoke-static {}, Lcom/zui/gallery/util/DeviceTypeUtils;->isM11Device()Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    .line 216
    iget-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCaptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 217
    iget-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCaption:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 219
    :cond_0
    iget-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCaptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 220
    iget-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCaption:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 223
    :goto_0
    iget-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->mMainView:Landroid/widget/LinearLayout;

    const v4, 0x7f0802d1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->mRotationImage:Landroid/widget/ImageView;

    .line 224
    iget-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->mMainView:Landroid/widget/LinearLayout;

    const v4, 0x7f080249

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->mMosacImage:Landroid/widget/ImageView;

    .line 225
    iget-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->mMainView:Landroid/widget/LinearLayout;

    const v4, 0x7f080054

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->mAddDraw:Landroid/widget/ImageView;

    .line 226
    iget-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->mAddDrawImage:Landroid/widget/ImageView;

    .line 227
    iget-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->mMainView:Landroid/widget/LinearLayout;

    const v4, 0x7f080133

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->mDeleteImage:Landroid/widget/ImageView;

    .line 228
    iget-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->mMainView:Landroid/widget/LinearLayout;

    const v4, 0x7f08030a

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->mShareImage:Landroid/widget/ImageView;

    .line 229
    iget-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->mMainView:Landroid/widget/LinearLayout;

    const v4, 0x7f0800ca

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCategoryView:Landroid/widget/FrameLayout;

    .line 231
    iget-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->mMainView:Landroid/widget/LinearLayout;

    const v4, 0x7f08022e

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->lookLayout:Landroid/widget/LinearLayout;

    .line 232
    iget-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->mMainView:Landroid/widget/LinearLayout;

    const v4, 0x7f0801d7

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->filterLayout:Landroid/widget/LinearLayout;

    .line 233
    iget-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->mMainView:Landroid/widget/LinearLayout;

    const v4, 0x7f080096

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->bottomLayout:Landroid/widget/LinearLayout;

    .line 234
    sget-boolean v1, Lcom/zui/gallery/filtershow/FilterShowActivity;->isScreenShotLaunch:Z

    if-eqz v1, :cond_2

    .line 235
    iget-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->lookLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 236
    iget-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->filterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 237
    sget-boolean v1, Lcom/zui/gallery/filtershow/FilterShowActivity;->isLandscape:Z

    if-eqz v1, :cond_1

    .line 238
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/filtershow/category/MainPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    iget-object v5, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->bottomLayout:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    const/16 v7, 0x46

    const/4 v8, 0x0

    const/16 v9, 0x46

    invoke-static/range {v4 .. v9}, Lcom/zui/gallery/util/GalleryUtils;->setViewPadding(Landroid/content/Context;Landroid/view/View;IIII)V

    goto :goto_1

    .line 240
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/filtershow/category/MainPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    iget-object v11, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->bottomLayout:Landroid/widget/LinearLayout;

    const/16 v12, 0x55

    const/4 v13, 0x0

    const/16 v14, 0x55

    const/4 v15, 0x0

    invoke-static/range {v10 .. v15}, Lcom/zui/gallery/util/GalleryUtils;->setViewPadding(Landroid/content/Context;Landroid/view/View;IIII)V

    goto :goto_1

    .line 243
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/filtershow/category/MainPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    iget-object v5, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->bottomLayout:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/zui/gallery/util/GalleryUtils;->setViewPadding(Landroid/content/Context;Landroid/view/View;IIII)V

    .line 246
    :goto_1
    iget-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->mLooksImage:Landroid/widget/ImageView;

    new-instance v4, Lcom/zui/gallery/filtershow/category/MainPanel$1;

    invoke-direct {v4, v0}, Lcom/zui/gallery/filtershow/category/MainPanel$1;-><init>(Lcom/zui/gallery/filtershow/category/MainPanel;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    iget-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->mBorderImage:Landroid/widget/ImageView;

    new-instance v4, Lcom/zui/gallery/filtershow/category/MainPanel$2;

    invoke-direct {v4, v0}, Lcom/zui/gallery/filtershow/category/MainPanel$2;-><init>(Lcom/zui/gallery/filtershow/category/MainPanel;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->mGeometryButton:Landroid/widget/ImageView;

    new-instance v4, Lcom/zui/gallery/filtershow/category/MainPanel$3;

    invoke-direct {v4, v0}, Lcom/zui/gallery/filtershow/category/MainPanel$3;-><init>(Lcom/zui/gallery/filtershow/category/MainPanel;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    iget-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->mFiltersButton:Landroid/widget/ImageView;

    new-instance v4, Lcom/zui/gallery/filtershow/category/MainPanel$4;

    invoke-direct {v4, v0}, Lcom/zui/gallery/filtershow/category/MainPanel$4;-><init>(Lcom/zui/gallery/filtershow/category/MainPanel;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    iget-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->mDrawButton:Landroid/widget/ImageView;

    new-instance v4, Lcom/zui/gallery/filtershow/category/MainPanel$5;

    invoke-direct {v4, v0}, Lcom/zui/gallery/filtershow/category/MainPanel$5;-><init>(Lcom/zui/gallery/filtershow/category/MainPanel;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    iget-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->mAddDraw:Landroid/widget/ImageView;

    new-instance v4, Lcom/zui/gallery/filtershow/category/MainPanel$6;

    invoke-direct {v4, v0}, Lcom/zui/gallery/filtershow/category/MainPanel$6;-><init>(Lcom/zui/gallery/filtershow/category/MainPanel;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    iget-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCaption:Landroid/widget/ImageView;

    new-instance v4, Lcom/zui/gallery/filtershow/category/MainPanel$7;

    invoke-direct {v4, v0}, Lcom/zui/gallery/filtershow/category/MainPanel$7;-><init>(Lcom/zui/gallery/filtershow/category/MainPanel;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    iget-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCropImage:Landroid/widget/ImageView;

    new-instance v4, Lcom/zui/gallery/filtershow/category/MainPanel$8;

    invoke-direct {v4, v0}, Lcom/zui/gallery/filtershow/category/MainPanel$8;-><init>(Lcom/zui/gallery/filtershow/category/MainPanel;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    iget-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->mRotationImage:Landroid/widget/ImageView;

    new-instance v4, Lcom/zui/gallery/filtershow/category/MainPanel$9;

    invoke-direct {v4, v0}, Lcom/zui/gallery/filtershow/category/MainPanel$9;-><init>(Lcom/zui/gallery/filtershow/category/MainPanel;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    iget-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->mMosacImage:Landroid/widget/ImageView;

    new-instance v4, Lcom/zui/gallery/filtershow/category/MainPanel$10;

    invoke-direct {v4, v0}, Lcom/zui/gallery/filtershow/category/MainPanel$10;-><init>(Lcom/zui/gallery/filtershow/category/MainPanel;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/filtershow/category/MainPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/FilterShowActivity;

    .line 430
    sget-boolean v1, Lcom/zui/gallery/filtershow/FilterShowActivity;->isScreenShotLaunch:Z

    if-eqz v1, :cond_3

    .line 431
    iget-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->mDeleteImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 432
    iget-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->mShareImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 434
    :cond_3
    iget-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->mDeleteImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 435
    iget-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->mShareImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 437
    :goto_2
    iget-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->mDeleteImage:Landroid/widget/ImageView;

    new-instance v2, Lcom/zui/gallery/filtershow/category/MainPanel$11;

    invoke-direct {v2, v0}, Lcom/zui/gallery/filtershow/category/MainPanel$11;-><init>(Lcom/zui/gallery/filtershow/category/MainPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 445
    iget-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->mShareImage:Landroid/widget/ImageView;

    new-instance v2, Lcom/zui/gallery/filtershow/category/MainPanel$12;

    invoke-direct {v2, v0}, Lcom/zui/gallery/filtershow/category/MainPanel$12;-><init>(Lcom/zui/gallery/filtershow/category/MainPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    iget-object v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;->mMainView:Landroid/widget/LinearLayout;

    return-object v1
.end method

.method public onDestroyView()V
    .locals 2

    .line 180
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 181
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mMainView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 184
    iget-object v1, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 150
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 151
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/category/MainPanel;->limitTexture()V

    return-void
.end method

.method public refreshCaptionAdapter()V
    .locals 2

    .line 563
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/MainPanel;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "CategoryPanel"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 565
    instance-of v1, v0, Lcom/zui/gallery/filtershow/category/CategoryPanel;

    if-eqz v1, :cond_0

    .line 566
    check-cast v0, Lcom/zui/gallery/filtershow/category/CategoryPanel;

    .line 567
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->refreshAdapter()V

    :cond_0
    return-void
.end method

.method public setToggleVersionsPanelButton(Landroid/widget/ImageButton;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 796
    :cond_0
    new-instance v0, Lcom/zui/gallery/filtershow/category/MainPanel$13;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/category/MainPanel$13;-><init>(Lcom/zui/gallery/filtershow/category/MainPanel;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showCategoryView()V
    .locals 2

    .line 509
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/MainPanel;->mCategoryView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 510
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showPanel(I)V
    .locals 3

    .line 722
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/MainPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zui/gallery/util/GroupUtils;->setConfigurationJustHappend(Landroid/content/Context;Z)V

    .line 723
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/MainPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/FilterShowActivity;

    iput p1, v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mSelectedPanelId:I

    .line 724
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/MainPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/zui/gallery/util/GroupUtils;->enterDragState(Landroid/content/Context;Z)V

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 726
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/MainPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/zui/gallery/util/GroupUtils;->enterFiltershowCaption(Landroid/content/Context;Z)V

    goto :goto_0

    .line 728
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/MainPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/zui/gallery/util/GroupUtils;->enterFiltershowCaption(Landroid/content/Context;Z)V

    .line 730
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/zui/gallery/util/GroupUtils;->enterCaptionState(Landroid/content/Context;Z)V

    .line 732
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->savePreviewCaptionForSaveTask()V

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 786
    :pswitch_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/MainPanel;->loadCategoryCaptionPanel()V

    goto :goto_1

    .line 765
    :pswitch_1
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/MainPanel;->loadCategoryAddDrawPanel()V

    goto :goto_1

    .line 760
    :pswitch_2
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/MainPanel;->loadCategoryDrawPanel()V

    goto :goto_1

    .line 756
    :pswitch_3
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/MainPanel;->loadCategoryFiltersAddPanel()V

    goto :goto_1

    .line 752
    :pswitch_4
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/MainPanel;->loadCategoryGeometryAddPanel()V

    goto :goto_1

    .line 782
    :pswitch_5
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/MainPanel;->loadCategoryMosacPanlel()V

    goto :goto_1

    .line 778
    :pswitch_6
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/MainPanel;->loadCategoryVersionsPanel()V

    goto :goto_1

    .line 774
    :pswitch_7
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/MainPanel;->loadCategoryFiltersPanel()V

    goto :goto_1

    .line 743
    :pswitch_8
    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/category/MainPanel;->loadCategoryLookPanel(Z)V

    goto :goto_1

    .line 770
    :pswitch_9
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/MainPanel;->loadCategoryGeometryPanel()V

    goto :goto_1

    .line 747
    :pswitch_a
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/MainPanel;->loadCategoryBorderPanel()V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
