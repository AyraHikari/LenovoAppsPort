.class Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$3;
.super Ljava/lang/Thread;
.source "LenovoTrashRecyclerListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->setImage(Ljava/util/List;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$subItems:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;Ljava/util/List;Landroid/widget/ImageView;)V
    .locals 0

    .line 560
    iput-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$3;->this$0:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

    iput-object p2, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$3;->val$subItems:Ljava/util/List;

    iput-object p3, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$3;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 563
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 567
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$3;->val$subItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, ""

    const-string v2, "/"

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lt v0, v3, :cond_0

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zui/gallery/database/GalleryContract$TrashFiles;->TRASH_DIRECTORY_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$3;->val$subItems:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/trash/TrashItem;

    invoke-virtual {v1}, Lcom/zui/gallery/trash/TrashItem;->getContinousFolderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$3;->val$subItems:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/trash/TrashItem;

    invoke-virtual {v1}, Lcom/zui/gallery/trash/TrashItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/zui/gallery/database/GalleryContract$TrashFiles;->TRASH_DIRECTORY_PATH:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$3;->val$subItems:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zui/gallery/trash/TrashItem;

    invoke-virtual {v7}, Lcom/zui/gallery/trash/TrashItem;->getContinousFolderName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$3;->val$subItems:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zui/gallery/trash/TrashItem;

    invoke-virtual {v7}, Lcom/zui/gallery/trash/TrashItem;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 570
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/zui/gallery/database/GalleryContract$TrashFiles;->TRASH_DIRECTORY_PATH:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$3;->val$subItems:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/zui/gallery/trash/TrashItem;

    invoke-virtual {v8}, Lcom/zui/gallery/trash/TrashItem;->getContinousFolderName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$3;->val$subItems:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/trash/TrashItem;

    invoke-virtual {v2}, Lcom/zui/gallery/trash/TrashItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$3;->val$subItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zui/gallery/database/GalleryContract$TrashFiles;->TRASH_DIRECTORY_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$3;->val$subItems:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/trash/TrashItem;

    invoke-virtual {v1}, Lcom/zui/gallery/trash/TrashItem;->getContinousFolderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$3;->val$subItems:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/trash/TrashItem;

    invoke-virtual {v1}, Lcom/zui/gallery/trash/TrashItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 576
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$3;->val$subItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zui/gallery/database/GalleryContract$TrashFiles;->TRASH_DIRECTORY_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$3;->val$subItems:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/trash/TrashItem;

    invoke-virtual {v1}, Lcom/zui/gallery/trash/TrashItem;->getContinousFolderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$3;->val$subItems:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/trash/TrashItem;

    invoke-virtual {v1}, Lcom/zui/gallery/trash/TrashItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/zui/gallery/database/GalleryContract$TrashFiles;->TRASH_DIRECTORY_PATH:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$3;->val$subItems:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zui/gallery/trash/TrashItem;

    invoke-virtual {v7}, Lcom/zui/gallery/trash/TrashItem;->getContinousFolderName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$3;->val$subItems:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/trash/TrashItem;

    invoke-virtual {v2}, Lcom/zui/gallery/trash/TrashItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_0
    move-object v0, v1

    :goto_1
    move-object v2, v0

    :goto_2
    const/high16 v7, 0x42b40000    # 90.0f

    .line 582
    iget-object v8, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$3;->this$0:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

    iget-object v8, v8, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-static {v5, v7, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v7, v7

    .line 589
    :try_start_0
    iget-object v8, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$3;->this$0:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

    iget-object v8, v8, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v8

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    new-array v8, v5, [Lcom/bumptech/glide/load/Transformation;

    new-instance v9, Ljp/wasabeef/glide/transformations/CropTransformation;

    iget-object v10, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$3;->this$0:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

    iget-object v10, v10, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->mContext:Landroid/content/Context;

    sget-object v11, Ljp/wasabeef/glide/transformations/CropTransformation$CropType;->CENTER:Ljp/wasabeef/glide/transformations/CropTransformation$CropType;

    invoke-direct {v9, v10, v7, v7, v11}, Ljp/wasabeef/glide/transformations/CropTransformation;-><init>(Landroid/content/Context;IILjp/wasabeef/glide/transformations/CropTransformation$CropType;)V

    aput-object v9, v8, v6

    invoke-virtual {v1, v8}, Lcom/bumptech/glide/DrawableTypeRequest;->bitmapTransform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v7}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(II)Lcom/bumptech/glide/request/FutureTarget;

    move-result-object v1

    invoke-interface {v1}, Lcom/bumptech/glide/request/FutureTarget;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    .line 590
    iget-object v8, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$3;->this$0:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

    iget-object v8, v8, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v8

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    new-array v8, v5, [Lcom/bumptech/glide/load/Transformation;

    new-instance v9, Ljp/wasabeef/glide/transformations/CropTransformation;

    iget-object v10, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$3;->this$0:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

    iget-object v10, v10, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->mContext:Landroid/content/Context;

    sget-object v11, Ljp/wasabeef/glide/transformations/CropTransformation$CropType;->CENTER:Ljp/wasabeef/glide/transformations/CropTransformation$CropType;

    invoke-direct {v9, v10, v7, v7, v11}, Ljp/wasabeef/glide/transformations/CropTransformation;-><init>(Landroid/content/Context;IILjp/wasabeef/glide/transformations/CropTransformation$CropType;)V

    aput-object v9, v8, v6

    invoke-virtual {v0, v8}, Lcom/bumptech/glide/DrawableTypeRequest;->bitmapTransform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v7}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(II)Lcom/bumptech/glide/request/FutureTarget;

    move-result-object v0

    invoke-interface {v0}, Lcom/bumptech/glide/request/FutureTarget;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    .line 591
    iget-object v8, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$3;->this$0:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

    iget-object v8, v8, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v8

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    new-array v8, v5, [Lcom/bumptech/glide/load/Transformation;

    new-instance v9, Ljp/wasabeef/glide/transformations/CropTransformation;

    iget-object v10, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$3;->this$0:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

    iget-object v10, v10, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->mContext:Landroid/content/Context;

    sget-object v11, Ljp/wasabeef/glide/transformations/CropTransformation$CropType;->CENTER:Ljp/wasabeef/glide/transformations/CropTransformation$CropType;

    invoke-direct {v9, v10, v7, v7, v11}, Ljp/wasabeef/glide/transformations/CropTransformation;-><init>(Landroid/content/Context;IILjp/wasabeef/glide/transformations/CropTransformation$CropType;)V

    aput-object v9, v8, v6

    invoke-virtual {v2, v8}, Lcom/bumptech/glide/DrawableTypeRequest;->bitmapTransform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    invoke-virtual {v2, v7, v7}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(II)Lcom/bumptech/glide/request/FutureTarget;

    move-result-object v2

    invoke-interface {v2}, Lcom/bumptech/glide/request/FutureTarget;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    .line 592
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    const/4 v9, -0x1

    .line 593
    invoke-virtual {v8, v9}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 594
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v7, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 595
    invoke-virtual {v10, v9}, Landroid/graphics/Bitmap;->eraseColor(I)V

    const/4 v9, 0x5

    new-array v9, v9, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v9, v6

    .line 599
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v1, v9, v5

    aput-object v0, v9, v4

    .line 601
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v0, v9, v3

    const/4 v0, 0x4

    aput-object v2, v9, v0

    .line 603
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v1, v9}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/16 v2, 0x13

    .line 607
    invoke-virtual {v1, v6, v2}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 608
    invoke-virtual {v1, v4, v2}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 609
    invoke-virtual {v1, v4, v2}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 610
    invoke-virtual {v1, v3, v2}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 611
    invoke-virtual {v1, v0, v3}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 613
    invoke-virtual {v1, v6, v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerWidth(II)V

    add-int/lit8 v2, v7, -0xd

    .line 614
    invoke-virtual {v1, v5, v2}, Landroid/graphics/drawable/LayerDrawable;->setLayerWidth(II)V

    add-int/lit8 v2, v7, -0xf

    .line 615
    invoke-virtual {v1, v4, v2}, Landroid/graphics/drawable/LayerDrawable;->setLayerWidth(II)V

    add-int/lit8 v8, v7, -0x1c

    .line 616
    invoke-virtual {v1, v3, v8}, Landroid/graphics/drawable/LayerDrawable;->setLayerWidth(II)V

    add-int/lit8 v8, v7, -0x1e

    .line 617
    invoke-virtual {v1, v0, v8}, Landroid/graphics/drawable/LayerDrawable;->setLayerWidth(II)V

    .line 619
    invoke-virtual {v1, v6, v8}, Landroid/graphics/drawable/LayerDrawable;->setLayerHeight(II)V

    .line 620
    invoke-virtual {v1, v5, v2}, Landroid/graphics/drawable/LayerDrawable;->setLayerHeight(II)V

    .line 621
    invoke-virtual {v1, v4, v2}, Landroid/graphics/drawable/LayerDrawable;->setLayerHeight(II)V

    .line 622
    invoke-virtual {v1, v3, v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerHeight(II)V

    .line 623
    invoke-virtual {v1, v0, v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerHeight(II)V

    .line 626
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$3;->val$imageView:Landroid/widget/ImageView;

    new-instance v2, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$3$1;

    invoke-direct {v2, p0, v1}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$3$1;-><init>(Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$3;Landroid/graphics/drawable/LayerDrawable;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 637
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception v0

    .line 635
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    return-void

    .line 649
    :goto_4
    throw v0
.end method
