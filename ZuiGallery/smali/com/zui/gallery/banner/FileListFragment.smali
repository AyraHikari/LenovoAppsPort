.class public Lcom/zui/gallery/banner/FileListFragment;
.super Landroidx/fragment/app/Fragment;
.source "FileListFragment.java"


# static fields
.field private static final LOAD_FIILS_EMPTY:I = 0x3e9

.field private static final LOAD_FIILS_SUCCESS:I = 0x3e8

.field private static final NO_MEDIA_FILENAME:Ljava/lang/String; = ".nomedia"

.field private static final TAG:Ljava/lang/String; = "FileListFragment"

.field private static folderPath:Ljava/lang/String; = "/storage/emulated/0/DCIM/Camera/ZuiGalleryGroup/.MyPrivacy"


# instance fields
.field private isLandScreen:Z

.field private mEmptyLayout:Landroid/widget/LinearLayout;

.field private mFileListActionBar:Landroid/widget/RelativeLayout;

.field private mFileListAdapter:Lcom/zui/gallery/banner/FileListAdapter;

.field private mFileListBack:Landroid/widget/ImageView;

.field private mFileListTitle:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private mPrivacyFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mSelect:Landroid/widget/TextView;

.field private mViewWidth:I

.field private multiChanged:Z

.field private spanCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x4

    .line 55
    iput v0, p0, Lcom/zui/gallery/banner/FileListFragment;->spanCount:I

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/zui/gallery/banner/FileListFragment;->multiChanged:Z

    .line 108
    new-instance v0, Lcom/zui/gallery/banner/FileListFragment$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/banner/FileListFragment$1;-><init>(Lcom/zui/gallery/banner/FileListFragment;)V

    iput-object v0, p0, Lcom/zui/gallery/banner/FileListFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/banner/FileListFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/zui/gallery/banner/FileListFragment;->mEmptyLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zui/gallery/banner/FileListFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/zui/gallery/banner/FileListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/zui/gallery/banner/FileListFragment;)Ljava/util/List;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/zui/gallery/banner/FileListFragment;->mPrivacyFiles:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/zui/gallery/banner/FileListFragment;)Lcom/zui/gallery/banner/FileListAdapter;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/zui/gallery/banner/FileListFragment;->mFileListAdapter:Lcom/zui/gallery/banner/FileListAdapter;

    return-object p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 46
    sget-object v0, Lcom/zui/gallery/banner/FileListFragment;->folderPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zui/gallery/banner/FileListFragment;)Landroid/os/Handler;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/zui/gallery/banner/FileListFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private getPathFile()V
    .locals 2

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/banner/FileListFragment;->mPrivacyFiles:Ljava/util/List;

    .line 128
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zui/gallery/banner/FileListFragment$2;

    invoke-direct {v1, p0}, Lcom/zui/gallery/banner/FileListFragment$2;-><init>(Lcom/zui/gallery/banner/FileListFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 182
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private getWidth()I
    .locals 1

    .line 197
    invoke-virtual {p0}, Lcom/zui/gallery/banner/FileListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 198
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0801a4

    .line 92
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zui/gallery/banner/FileListFragment;->mFileListActionBar:Landroid/widget/RelativeLayout;

    const v0, 0x7f0802c3

    .line 94
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/zui/gallery/banner/FileListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0802b5

    .line 95
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/zui/gallery/banner/FileListFragment;->mEmptyLayout:Landroid/widget/LinearLayout;

    .line 96
    iget-object p1, p0, Lcom/zui/gallery/banner/FileListFragment;->mFileListActionBar:Landroid/widget/RelativeLayout;

    const v0, 0x7f0801a5

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/zui/gallery/banner/FileListFragment;->mFileListBack:Landroid/widget/ImageView;

    .line 97
    iget-object p1, p0, Lcom/zui/gallery/banner/FileListFragment;->mFileListActionBar:Landroid/widget/RelativeLayout;

    const v0, 0x7f0801a9

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zui/gallery/banner/FileListFragment;->mFileListTitle:Landroid/widget/TextView;

    .line 98
    iget-object p1, p0, Lcom/zui/gallery/banner/FileListFragment;->mFileListActionBar:Landroid/widget/RelativeLayout;

    const v0, 0x7f0800d1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zui/gallery/banner/FileListFragment;->mSelect:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic lambda$resetTitleBar$2(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    .line 283
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    return-object p1
.end method

.method static synthetic lambda$updateItemView$1()V
    .locals 0

    return-void
.end method

.method private resetTitleBar()V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListFragment;->mFileListActionBar:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    .line 282
    :cond_0
    sget-object v1, Lcom/zui/gallery/banner/-$$Lambda$FileListFragment$onQUV7JdTkO_4xhMTmIzZC0qh-I;->INSTANCE:Lcom/zui/gallery/banner/-$$Lambda$FileListFragment$onQUV7JdTkO_4xhMTmIzZC0qh-I;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private screenOrientation()V
    .locals 3

    .line 186
    invoke-direct {p0}, Lcom/zui/gallery/banner/FileListFragment;->setTitleHeight()V

    .line 187
    invoke-virtual {p0}, Lcom/zui/gallery/banner/FileListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const v1, 0x7f090022

    .line 189
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/banner/FileListFragment;->spanCount:I

    const/4 v0, 0x1

    .line 190
    iput-boolean v0, p0, Lcom/zui/gallery/banner/FileListFragment;->isLandScreen:Z

    goto :goto_0

    :cond_0
    const v1, 0x7f090023

    .line 192
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/banner/FileListFragment;->spanCount:I

    const/4 v0, 0x0

    .line 193
    iput-boolean v0, p0, Lcom/zui/gallery/banner/FileListFragment;->isLandScreen:Z

    :goto_0
    return-void
.end method

.method private setRecyclerView()V
    .locals 3

    .line 102
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/zui/gallery/banner/FileListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/zui/gallery/banner/FileListFragment;->spanCount:I

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/zui/gallery/banner/FileListFragment;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 103
    iget-object v1, p0, Lcom/zui/gallery/banner/FileListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 104
    new-instance v0, Lcom/zui/gallery/banner/FileListAdapter;

    invoke-direct {v0, p0}, Lcom/zui/gallery/banner/FileListAdapter;-><init>(Lcom/zui/gallery/banner/FileListFragment;)V

    iput-object v0, p0, Lcom/zui/gallery/banner/FileListFragment;->mFileListAdapter:Lcom/zui/gallery/banner/FileListAdapter;

    .line 105
    iget-object v1, p0, Lcom/zui/gallery/banner/FileListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private setTitleHeight()V
    .locals 4

    .line 203
    invoke-virtual {p0}, Lcom/zui/gallery/banner/FileListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/gallery/util/DeviceTypeUtils;->isWorkingMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/banner/FileListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/gallery/util/DisplayPropertyUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    .line 205
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/banner/FileListFragment;->mFileListActionBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 206
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 207
    invoke-virtual {p0}, Lcom/zui/gallery/banner/FileListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0601c1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 208
    invoke-virtual {p0}, Lcom/zui/gallery/banner/FileListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06004f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v2, v0

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 209
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListFragment;->mFileListActionBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateItemView()V
    .locals 4

    .line 250
    invoke-direct {p0}, Lcom/zui/gallery/banner/FileListFragment;->screenOrientation()V

    .line 251
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListFragment;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    iget v1, p0, Lcom/zui/gallery/banner/FileListFragment;->spanCount:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 252
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/zui/gallery/banner/FileListFragment;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 253
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/zui/gallery/banner/FileListFragment;->mFileListAdapter:Lcom/zui/gallery/banner/FileListAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 257
    invoke-direct {p0}, Lcom/zui/gallery/banner/FileListFragment;->getWidth()I

    move-result v0

    .line 258
    iget v1, p0, Lcom/zui/gallery/banner/FileListFragment;->mViewWidth:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/zui/gallery/banner/FileListFragment;->isMultiChanged()Z

    move-result v1

    if-nez v1, :cond_0

    .line 259
    iput v0, p0, Lcom/zui/gallery/banner/FileListFragment;->mViewWidth:I

    .line 260
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListFragment;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/zui/gallery/banner/-$$Lambda$FileListFragment$0b9y-h5Rz9sbK06D-2IoIhzUoFU;->INSTANCE:Lcom/zui/gallery/banner/-$$Lambda$FileListFragment$0b9y-h5Rz9sbK06D-2IoIhzUoFU;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 263
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/banner/FileListFragment;->isMultiChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 264
    invoke-virtual {p0, v0}, Lcom/zui/gallery/banner/FileListFragment;->setMultiChanged(Z)V

    .line 265
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListFragment;->mFileListAdapter:Lcom/zui/gallery/banner/FileListAdapter;

    invoke-virtual {v0}, Lcom/zui/gallery/banner/FileListAdapter;->notFyChanged()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public isLandScreen()Z
    .locals 1

    .line 213
    iget-boolean v0, p0, Lcom/zui/gallery/banner/FileListFragment;->isLandScreen:Z

    return v0
.end method

.method public isMultiChanged()Z
    .locals 1

    .line 242
    iget-boolean v0, p0, Lcom/zui/gallery/banner/FileListFragment;->multiChanged:Z

    return v0
.end method

.method public synthetic lambda$onActivityCreated$0$FileListFragment(Landroid/view/View;)V
    .locals 0

    .line 87
    invoke-virtual {p0}, Lcom/zui/gallery/banner/FileListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 80
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string p1, "FileListFragment"

    const-string v0, "onActivityCreated"

    .line 81
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-direct {p0}, Lcom/zui/gallery/banner/FileListFragment;->screenOrientation()V

    .line 84
    invoke-direct {p0}, Lcom/zui/gallery/banner/FileListFragment;->setRecyclerView()V

    .line 85
    invoke-direct {p0}, Lcom/zui/gallery/banner/FileListFragment;->getPathFile()V

    .line 86
    iget-object p1, p0, Lcom/zui/gallery/banner/FileListFragment;->mFileListBack:Landroid/widget/ImageView;

    new-instance v0, Lcom/zui/gallery/banner/-$$Lambda$FileListFragment$Y2R1UHaE_eStOU0yFHZK0bWtXDE;

    invoke-direct {v0, p0}, Lcom/zui/gallery/banner/-$$Lambda$FileListFragment$Y2R1UHaE_eStOU0yFHZK0bWtXDE;-><init>(Lcom/zui/gallery/banner/FileListFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 230
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 231
    invoke-direct {p0}, Lcom/zui/gallery/banner/FileListFragment;->updateItemView()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "FileListFragment"

    const-string v0, "onCreateView"

    .line 72
    invoke-static {p3, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p3, 0x7f0b0073

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 74
    invoke-direct {p0, p1}, Lcom/zui/gallery/banner/FileListFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 271
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 272
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 273
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    const-string v0, "FileListFragment"

    const-string v1, "onDestroy"

    .line 275
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    .line 236
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onMultiWindowModeChanged(Z)V

    const/4 p1, 0x1

    .line 237
    invoke-virtual {p0, p1}, Lcom/zui/gallery/banner/FileListFragment;->setMultiChanged(Z)V

    .line 238
    invoke-direct {p0}, Lcom/zui/gallery/banner/FileListFragment;->updateItemView()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 218
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const-string v0, "FileListFragment"

    const-string v1, "onResume"

    .line 219
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-direct {p0}, Lcom/zui/gallery/banner/FileListFragment;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/banner/FileListFragment;->mViewWidth:I

    .line 222
    sget-boolean v0, Lcom/zui/gallery/banner/FileListDetailsActivity;->deleteOrModifyFileNotification:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 223
    sput-boolean v0, Lcom/zui/gallery/banner/FileListDetailsActivity;->deleteOrModifyFileNotification:Z

    .line 224
    invoke-direct {p0}, Lcom/zui/gallery/banner/FileListFragment;->getPathFile()V

    :cond_0
    return-void
.end method

.method public setMultiChanged(Z)V
    .locals 0

    .line 246
    iput-boolean p1, p0, Lcom/zui/gallery/banner/FileListFragment;->multiChanged:Z

    return-void
.end method
