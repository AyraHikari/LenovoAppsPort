.class public Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;
.super Landroid/app/Fragment;
.source "LenovoTrashContinousListFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Fragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Lcom/zui/gallery/trash/TrashItem;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final INDIA_LANGUAGE:Ljava/lang/String; = "ta"

.field private static final TAG:Ljava/lang/String; = "LenovoTrashContinousListFragment"


# instance fields
.field private bottomToolBar:Lzui/widget/BottomToolBar;

.field private continuousFolderName:Ljava/lang/String;

.field continuousThumbnailSlidingView:Lcom/zui/gallery/trash/ContinuousThumbnailSlidingView;

.field private deleteButton:Lzui/widget/BottomBarItem;

.field handler:Landroid/os/Handler;

.field private mBar:Landroid/app/ActionBar;

.field private mLoader:Landroid/content/Loader;
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

.field private mTitleText:Landroid/widget/TextView;

.field previewPager:Landroidx/viewpager/widget/ViewPager;

.field private recoveryButton:Lzui/widget/BottomBarItem;

.field trashPagerAdapter:Lcom/zui/gallery/trash/TrashContinousPreviewPagerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;)Landroid/content/Loader;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->mLoader:Landroid/content/Loader;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->trueDeletion()V

    return-void
.end method

.method static synthetic access$200(Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->dialogRestore()V

    return-void
.end method

.method static synthetic access$300(Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->trueRestore()V

    return-void
.end method

.method static synthetic access$400(Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;)Lzui/app/ProgressDialogX;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->mProgressDialogX:Lzui/app/ProgressDialogX;

    return-object p0
.end method

.method static synthetic access$500(Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->conformedDeletePhotos()V

    return-void
.end method

.method private conformedDeletePhotos()V
    .locals 6

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->trashPagerAdapter:Lcom/zui/gallery/trash/TrashContinousPreviewPagerAdapter;

    invoke-virtual {v1}, Lcom/zui/gallery/trash/TrashContinousPreviewPagerAdapter;->getData()Ljava/util/List;

    move-result-object v1

    .line 213
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 214
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/trash/TrashItem;

    .line 215
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/zui/gallery/database/GalleryContract$TrashFiles;->TRASH_DIRECTORY_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/zui/gallery/trash/TrashItem;->getContinousFolderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/zui/gallery/trash/TrashItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    sput-boolean v3, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->isDelete:Z

    .line 218
    invoke-virtual {v2}, Lcom/zui/gallery/trash/TrashItem;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 221
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 222
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/zui/gallery/database/GalleryContract$TrashFiles;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "LenovoTrashContinousListFragment"

    const-string v2, "exception occure during deleteing "

    .line 225
    invoke-static {v1, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 228
    :goto_1
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method private deleteOperating()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->bottomToolBar:Lzui/widget/BottomToolBar;

    new-instance v1, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$2;

    invoke-direct {v1, p0}, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$2;-><init>(Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;)V

    invoke-virtual {v0, v1}, Lzui/widget/BottomToolBar;->setOnSelectoinChangeListener(Lzui/widget/BottomTabBar$OnSelectionChangeListener;)V

    return-void
.end method

.method private dialogRestore()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->mProgressDialogX:Lzui/app/ProgressDialogX;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lzui/app/ProgressDialogX;

    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lzui/app/ProgressDialogX;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->mProgressDialogX:Lzui/app/ProgressDialogX;

    const v1, 0x7f10029b

    .line 126
    invoke-virtual {v0, v1}, Lzui/app/ProgressDialogX;->setMessage(I)V

    .line 127
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->mProgressDialogX:Lzui/app/ProgressDialogX;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lzui/app/ProgressDialogX;->setCancelable(Z)V

    .line 128
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->mProgressDialogX:Lzui/app/ProgressDialogX;

    invoke-virtual {v0}, Lzui/app/ProgressDialogX;->show()V

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$3;

    invoke-direct {v1, p0}, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$3;-><init>(Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 135
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
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

    .line 325
    invoke-virtual {p2}, Lcom/zui/gallery/trash/TrashItem;->getId()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    .line 326
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 327
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

.method private initView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0800f3

    .line 89
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->previewPager:Landroidx/viewpager/widget/ViewPager;

    const v0, 0x7f080098

    .line 90
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lzui/widget/BottomToolBar;

    iput-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->bottomToolBar:Lzui/widget/BottomToolBar;

    const v0, 0x7f0802c1

    .line 91
    invoke-virtual {p1, v0}, Lzui/widget/BottomToolBar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lzui/widget/BottomBarItem;

    iput-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->recoveryButton:Lzui/widget/BottomBarItem;

    .line 92
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->bottomToolBar:Lzui/widget/BottomToolBar;

    const v0, 0x7f080134

    invoke-virtual {p1, v0}, Lzui/widget/BottomToolBar;->findItemById(I)Lzui/widget/BottomBarItem;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->deleteButton:Lzui/widget/BottomBarItem;

    return-void
.end method

.method private loadActionBar(I)V
    .locals 7

    .line 307
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    const/4 v1, -0x1

    const/16 v2, 0x11

    invoke-direct {v0, v1, v1, v2}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    .line 311
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f0b00e3

    const/4 v3, 0x0

    .line 312
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0801f1

    .line 313
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 314
    new-instance v3, Lcom/zui/gallery/trash/-$$Lambda$LenovoTrashContinousListFragment$6q-sOvL3mV8w8fayg0waOtk344A;

    invoke-direct {v3, p0}, Lcom/zui/gallery/trash/-$$Lambda$LenovoTrashContinousListFragment$6q-sOvL3mV8w8fayg0waOtk344A;-><init>(Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f080367

    .line 317
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->mTitleText:Landroid/widget/TextView;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x1

    .line 318
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    const p1, 0x7f1000ad

    invoke-virtual {p0, p1, v3}, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->mBar:Landroid/app/ActionBar;

    invoke-virtual {p1, v1, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 320
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->mBar:Landroid/app/ActionBar;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 321
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->mBar:Landroid/app/ActionBar;

    invoke-virtual {p1, v4}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    return-void
.end method

.method private resetNavigationBarMargin()V
    .locals 6

    .line 260
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0802ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const v1, 0x7f080098

    .line 262
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lzui/widget/BottomToolBar;

    if-eqz v1, :cond_2

    .line 264
    invoke-virtual {v1}, Lzui/widget/BottomToolBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 265
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/zui/gallery/util/DisplayPropertyUtils;->isNavigationShowing(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 267
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    if-eq v3, v5, :cond_0

    .line 268
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 269
    invoke-virtual {v1, v4, v4, v4, v4}, Lzui/widget/BottomToolBar;->setPadding(IIII)V

    goto :goto_0

    .line 271
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/zui/gallery/util/DisplayPropertyUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v4, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 277
    :cond_1
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 278
    invoke-virtual {v1, v4, v4, v4, v4}, Lzui/widget/BottomToolBar;->setPadding(IIII)V

    .line 281
    :goto_0
    invoke-virtual {v1, v2}, Lzui/widget/BottomToolBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    :cond_2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method private trueDeletion()V
    .locals 3

    .line 191
    new-instance v0, Lzui/app/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/gallery/util/GalleryUtils;->getCurrentMessageDialogTheme(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lzui/app/MessageDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string/jumbo v1, "\u5220\u9664\u540e\u672c\u5730\u548c\u4e91\u7aef\u6c38\u4e45\u5220\u9664\uff0c\u65e0\u6cd5\u627e\u56de"

    .line 192
    invoke-virtual {v0, v1}, Lzui/app/MessageDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lzui/app/MessageDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 193
    invoke-virtual {v0, v1}, Lzui/app/MessageDialog$Builder;->setMessageDialogType(I)Lzui/app/MessageDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$6;

    invoke-direct {v1, p0}, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$6;-><init>(Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;)V

    const-string/jumbo v2, "\u5220\u9664"

    .line 194
    invoke-virtual {v0, v2, v1}, Lzui/app/MessageDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$5;

    invoke-direct {v1, p0}, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$5;-><init>(Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;)V

    const-string/jumbo v2, "\u53d6\u6d88"

    .line 200
    invoke-virtual {v0, v2, v1}, Lzui/app/MessageDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Lzui/app/MessageDialog$Builder;->create()Lzui/app/MessageDialog;

    move-result-object v0

    invoke-virtual {v0}, Lzui/app/MessageDialog;->show()V

    return-void
.end method

.method private trueRestore()V
    .locals 8

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->trashPagerAdapter:Lcom/zui/gallery/trash/TrashContinousPreviewPagerAdapter;

    invoke-virtual {v1}, Lcom/zui/gallery/trash/TrashContinousPreviewPagerAdapter;->getData()Ljava/util/List;

    move-result-object v1

    .line 142
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 143
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/trash/TrashItem;

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/zui/gallery/database/GalleryContract$TrashFiles;->TRASH_DIRECTORY_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/zui/gallery/trash/TrashItem;->getContinousFolderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/zui/gallery/trash/TrashItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 145
    invoke-virtual {v2}, Lcom/zui/gallery/trash/TrashItem;->getOld_full_path()Ljava/lang/String;

    move-result-object v4

    .line 146
    invoke-virtual {v2}, Lcom/zui/gallery/trash/TrashItem;->getContinousFolderName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 147
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/zui/gallery/database/GalleryContract$TrashFiles;->TRASH_DIRECTORY_PATH:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/zui/gallery/trash/TrashItem;->getContinousFolderName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 149
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 152
    :cond_0
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/.nomedia"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 155
    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :catch_0
    :cond_1
    invoke-static {v3, v4}, Lcom/zui/gallery/util/GalleryUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {v2}, Lcom/zui/gallery/trash/TrashItem;->getOld_full_path()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 165
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 166
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->scanFile([Ljava/lang/String;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public synthetic lambda$loadActionBar$0$LenovoTrashContinousListFragment(Landroid/view/View;)V
    .locals 0

    .line 315
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 97
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 98
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->continuousFolderName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 99
    :cond_0
    new-instance p1, Lcom/zui/gallery/trash/TrashContinousPreviewPagerAdapter;

    invoke-direct {p1, p0}, Lcom/zui/gallery/trash/TrashContinousPreviewPagerAdapter;-><init>(Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;)V

    iput-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->trashPagerAdapter:Lcom/zui/gallery/trash/TrashContinousPreviewPagerAdapter;

    .line 100
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->previewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 101
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->previewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 102
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->deleteOperating()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 254
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 255
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->resetNavigationBarMargin()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "LenovoTrashContinousListFragment"

    const-string v1, "detailfragment oncreate"

    .line 234
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 236
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "trash_continuous_name"

    const-string v1, ""

    .line 237
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->continuousFolderName:Ljava/lang/String;

    .line 238
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->mLoader:Landroid/content/Loader;

    .line 241
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->mBar:Landroid/app/ActionBar;

    const/4 v0, 0x1

    .line 242
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 243
    invoke-virtual {p0, v0}, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->setHasOptionsMenu(Z)V

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

    .line 289
    new-instance p1, Lcom/zui/gallery/trash/TrashContinuousBackGroundTask;

    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->continuousFolderName:Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Lcom/zui/gallery/trash/TrashContinuousBackGroundTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b007b

    const/4 v0, 0x0

    .line 67
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 68
    invoke-direct {p0, p1}, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->initView(Landroid/view/View;)V

    .line 71
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$1;

    invoke-direct {p3, p0}, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$1;-><init>(Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-object p1
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 50
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 1
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

    .line 294
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "data:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LenovoTrashContinousListFragment"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 297
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->loadActionBar(I)V

    .line 298
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->trashPagerAdapter:Lcom/zui/gallery/trash/TrashContinousPreviewPagerAdapter;

    invoke-virtual {p1, p2}, Lcom/zui/gallery/trash/TrashContinousPreviewPagerAdapter;->setData(Ljava/util/List;)V

    :cond_0
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

.method public onResume()V
    .locals 0

    .line 248
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 249
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->resetNavigationBarMargin()V

    return-void
.end method

.method public scanFile([Ljava/lang/String;)V
    .locals 3

    .line 171
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$4;

    invoke-direct {v1, p0}, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$4;-><init>(Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;)V

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    return-void
.end method

.method public setCurrentImagePath(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setCurrentPosition(I)V
    .locals 4

    .line 352
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->mTitleText:Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x1

    add-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v1, v3

    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->trashPagerAdapter:Lcom/zui/gallery/trash/TrashContinousPreviewPagerAdapter;

    invoke-virtual {p1}, Lcom/zui/gallery/trash/TrashContinousPreviewPagerAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const p1, 0x7f1000ad

    invoke-virtual {p0, p1, v1}, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCurrentTrashItem(Lcom/zui/gallery/trash/TrashItem;)V
    .locals 0

    return-void
.end method
