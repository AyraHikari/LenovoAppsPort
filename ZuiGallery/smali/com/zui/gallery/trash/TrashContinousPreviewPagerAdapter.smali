.class public Lcom/zui/gallery/trash/TrashContinousPreviewPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "TrashContinousPreviewPagerAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TrashContinousPreviewPagerAdapter"


# instance fields
.field mCurrentPhotoView:Landroid/view/View;

.field mMeidaFilePathSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/gallery/trash/TrashItem;",
            ">;"
        }
    .end annotation
.end field

.field mTrashContinuousListFragment:Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;


# direct methods
.method constructor <init>(Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/trash/TrashContinousPreviewPagerAdapter;->mMeidaFilePathSet:Ljava/util/List;

    .line 37
    iput-object p1, p0, Lcom/zui/gallery/trash/TrashContinousPreviewPagerAdapter;->mTrashContinuousListFragment:Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 83
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/zui/gallery/trash/TrashContinousPreviewPagerAdapter;->mMeidaFilePathSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zui/gallery/trash/TrashItem;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/zui/gallery/trash/TrashContinousPreviewPagerAdapter;->mMeidaFilePathSet:Ljava/util/List;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4

    .line 57
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/zui/gallery/trash/TrashContinousPreviewPagerAdapter;->mTrashContinuousListFragment:Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;

    invoke-virtual {v1}, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/zui/gallery/database/GalleryContract$TrashFiles;->TRASH_DIRECTORY_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/trash/TrashContinousPreviewPagerAdapter;->mMeidaFilePathSet:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/trash/TrashItem;

    invoke-virtual {v2}, Lcom/zui/gallery/trash/TrashItem;->getContinousFolderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/trash/TrashContinousPreviewPagerAdapter;->mMeidaFilePathSet:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/trash/TrashItem;

    invoke-virtual {v2}, Lcom/zui/gallery/trash/TrashItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    iget-object v2, p0, Lcom/zui/gallery/trash/TrashContinousPreviewPagerAdapter;->mTrashContinuousListFragment:Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;

    invoke-virtual {v2}, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 61
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setId(I)V

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 42
    check-cast p2, Landroid/view/View;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/gallery/trash/TrashItem;",
            ">;)V"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/zui/gallery/trash/TrashContinousPreviewPagerAdapter;->mMeidaFilePathSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 47
    iget-object v0, p0, Lcom/zui/gallery/trash/TrashContinousPreviewPagerAdapter;->mMeidaFilePathSet:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 48
    invoke-virtual {p0}, Lcom/zui/gallery/trash/TrashContinousPreviewPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .line 69
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setPrimaryItem: position:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TrashContinousPreviewPagerAdapter"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object p1, p0, Lcom/zui/gallery/trash/TrashContinousPreviewPagerAdapter;->mCurrentPhotoView:Landroid/view/View;

    if-eq p1, p3, :cond_0

    .line 71
    check-cast p3, Landroid/view/View;

    iput-object p3, p0, Lcom/zui/gallery/trash/TrashContinousPreviewPagerAdapter;->mCurrentPhotoView:Landroid/view/View;

    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Lcom/zui/gallery/database/GalleryContract$TrashFiles;->TRASH_DIRECTORY_PATH:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/zui/gallery/trash/TrashContinousPreviewPagerAdapter;->mMeidaFilePathSet:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/zui/gallery/trash/TrashItem;

    invoke-virtual {p3}, Lcom/zui/gallery/trash/TrashItem;->getContinousFolderName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/zui/gallery/trash/TrashContinousPreviewPagerAdapter;->mMeidaFilePathSet:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/zui/gallery/trash/TrashItem;

    invoke-virtual {p3}, Lcom/zui/gallery/trash/TrashItem;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 74
    iget-object p3, p0, Lcom/zui/gallery/trash/TrashContinousPreviewPagerAdapter;->mTrashContinuousListFragment:Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;

    invoke-virtual {p3, p1}, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->setCurrentImagePath(Ljava/lang/String;)V

    .line 75
    iget-object p1, p0, Lcom/zui/gallery/trash/TrashContinousPreviewPagerAdapter;->mTrashContinuousListFragment:Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;

    iget-object p3, p0, Lcom/zui/gallery/trash/TrashContinousPreviewPagerAdapter;->mMeidaFilePathSet:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/zui/gallery/trash/TrashItem;

    invoke-virtual {p1, p3}, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->setCurrentTrashItem(Lcom/zui/gallery/trash/TrashItem;)V

    .line 76
    iget-object p1, p0, Lcom/zui/gallery/trash/TrashContinousPreviewPagerAdapter;->mTrashContinuousListFragment:Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;

    invoke-virtual {p1, p2}, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->setCurrentPosition(I)V

    :cond_0
    return-void
.end method
