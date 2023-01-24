.class public Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "TrashPreviewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/trash/TrashPreviewPagerAdapter$CompletionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TrashPreviewPagerAdapter"


# instance fields
.field private isClick:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mBackGroundImage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field mCurrentPhotoView:Landroid/view/View;

.field private mImageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mMeidaFilePathSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/gallery/trash/TrashItem;",
            ">;"
        }
    .end annotation
.end field

.field mTrashDetailFragment:Lcom/zui/gallery/trash/LenovoTrashDetailFragment;

.field private mVideoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/widget/VideoView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/zui/gallery/trash/LenovoTrashDetailFragment;)V
    .locals 2

    .line 66
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->mMeidaFilePathSet:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->mImageMap:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->mVideoMap:Ljava/util/Map;

    .line 58
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->mBackGroundImage:Ljava/util/Map;

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->isClick:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67
    iput-object p1, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->mTrashDetailFragment:Lcom/zui/gallery/trash/LenovoTrashDetailFragment;

    .line 68
    invoke-virtual {p1}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->isClick:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private getURI(Lcom/zui/gallery/trash/TrashItem;)Landroid/net/Uri;
    .locals 3

    .line 165
    sget-object v0, Lcom/zui/gallery/cloud/CloudManager;->CLOUD_TRASH_URI:Landroid/net/Uri;

    .line 167
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 168
    invoke-virtual {p1}, Lcom/zui/gallery/trash/TrashItem;->getId()I

    move-result p1

    int-to-long v1, p1

    .line 165
    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    move-result-object p1

    sget-object v0, Lcom/zui/gallery/cloud/ThumbnailType;->LARGER_THUMBNAIL:Lcom/zui/gallery/cloud/ThumbnailType;

    .line 168
    invoke-virtual {v0}, Lcom/zui/gallery/cloud/ThumbnailType;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "thumbnail_type"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private isImageOrVideo(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 12

    .line 92
    iget-object v0, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->mMeidaFilePathSet:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/trash/TrashItem;

    invoke-virtual {v0}, Lcom/zui/gallery/trash/TrashItem;->isImage()Z

    move-result v0

    .line 93
    iget-object v1, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->mMeidaFilePathSet:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/trash/TrashItem;

    invoke-virtual {v1}, Lcom/zui/gallery/trash/TrashItem;->getOld_full_path()Ljava/lang/String;

    move-result-object v1

    .line 99
    iget-object v2, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->mMeidaFilePathSet:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/trash/TrashItem;

    invoke-virtual {v2}, Lcom/zui/gallery/trash/TrashItem;->isCloudyItem()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 104
    new-instance v3, Lcom/github/chrisbanes/photoview/PhotoView;

    iget-object v4, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->mTrashDetailFragment:Lcom/zui/gallery/trash/LenovoTrashDetailFragment;

    invoke-virtual {v4}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/github/chrisbanes/photoview/PhotoView;-><init>(Landroid/content/Context;)V

    .line 105
    new-instance v4, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-direct {v4, v3}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;)V

    .line 107
    iget-object v5, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->mMeidaFilePathSet:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/gallery/trash/TrashItem;

    invoke-virtual {v5}, Lcom/zui/gallery/trash/TrashItem;->isCloudyItem()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 108
    iget-object v1, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->mMeidaFilePathSet:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/trash/TrashItem;

    invoke-direct {p0, v1}, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->getURI(Lcom/zui/gallery/trash/TrashItem;)Landroid/net/Uri;

    move-result-object v1

    .line 109
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v5

    .line 110
    invoke-virtual {v5, v1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    .line 111
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_0

    .line 116
    :cond_1
    invoke-virtual {p0, v1}, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->isGifImage(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 117
    iget-object v5, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    .line 118
    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v1

    .line 119
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/BitmapTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_0

    .line 121
    :cond_2
    iget-object v5, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    .line 122
    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableTypeRequest;->asGif()Lcom/bumptech/glide/GifTypeRequest;

    move-result-object v1

    sget-object v5, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 123
    invoke-virtual {v1, v5}, Lcom/bumptech/glide/GifTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v1

    .line 124
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/GifRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 128
    :goto_0
    invoke-virtual {v3, p2}, Lcom/github/chrisbanes/photoview/PhotoView;->setId(I)V

    .line 129
    invoke-virtual {v4}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->update()V

    goto/16 :goto_1

    .line 132
    :cond_3
    new-instance v3, Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 133
    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 134
    new-instance v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 135
    new-instance v6, Landroid/widget/VideoView;

    iget-object v7, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 136
    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 137
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 138
    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 139
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v8, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060376

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iget-object v10, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->mContext:Landroid/content/Context;

    .line 140
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 142
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x1

    invoke-direct {v8, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v9, 0xd

    .line 145
    invoke-virtual {v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 146
    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 148
    iget-object v9, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f070391

    invoke-virtual {v9, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 150
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    invoke-virtual {v6, v8}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    iget-object v7, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->mImageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v5, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->mVideoMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v5, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->mBackGroundImage:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v5, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object p2, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p2

    invoke-virtual {p2, v4}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    move-object v11, v3

    move-object v3, v2

    move-object v2, v11

    :goto_1
    if-eqz v0, :cond_4

    move-object p2, v3

    goto :goto_2

    :cond_4
    move-object p2, v2

    .line 159
    :goto_2
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz v0, :cond_5

    move-object v2, v3

    :cond_5
    return-object v2
.end method

.method private videoPlay(ILjava/lang/String;)V
    .locals 10

    .line 190
    iget-object v0, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->mImageMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->mBackGroundImage:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 191
    iget-object v0, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->mImageMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 192
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 193
    iget-object v2, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->mBackGroundImage:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    .line 194
    iget-object v2, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->mVideoMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/VideoView;

    .line 195
    iget-object v3, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->mImageMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/widget/ImageView;

    if-ne v1, p1, :cond_1

    .line 197
    iget-object v2, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->mVideoMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/VideoView;

    .line 198
    new-instance v1, Lcom/zui/gallery/trash/-$$Lambda$TrashPreviewPagerAdapter$zSLVX8N5OlBX7v4Muaqu07kbq_A;

    move-object v3, v1

    move-object v4, p0

    move-object v6, p2

    move-object v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/zui/gallery/trash/-$$Lambda$TrashPreviewPagerAdapter$zSLVX8N5OlBX7v4Muaqu07kbq_A;-><init>(Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;Landroid/widget/VideoView;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    if-eqz v9, :cond_2

    .line 226
    invoke-virtual {v9}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_2
    if-eqz v2, :cond_0

    .line 231
    iget-object v1, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->isClick:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 232
    invoke-virtual {v2}, Landroid/widget/VideoView;->stopPlayback()V

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 257
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 258
    iget-object p1, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->mImageMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-ge p1, p2, :cond_0

    return-void

    .line 261
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->mVideoMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-ge p1, p2, :cond_1

    return-void

    .line 264
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->mBackGroundImage:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-ge p1, p2, :cond_2

    return-void

    .line 267
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->mImageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    iget-object p1, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->mVideoMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object p1, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->mBackGroundImage:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->mMeidaFilePathSet:Ljava/util/List;

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

    .line 314
    iget-object v0, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->mMeidaFilePathSet:Ljava/util/List;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->isImageOrVideo(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method isGifImage(Ljava/lang/String;)Z
    .locals 1

    const-string v0, ".gif"

    .line 277
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".GIF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method isImage(Ljava/lang/String;)Z
    .locals 9

    const-string v0, ".jpg"

    .line 294
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ".jpeg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ".png"

    .line 295
    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ".gif"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ".dng"

    .line 296
    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, ".bmp"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, ".webp"

    .line 297
    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p0, p1}, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->isGifImage(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, ".svg"

    .line 298
    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, ".avif"

    invoke-virtual {p1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 300
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 301
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 302
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 303
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 304
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 305
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 306
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 307
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 73
    check-cast p2, Landroid/view/View;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public synthetic lambda$videoPlay$0$TrashPreviewPagerAdapter(Landroid/widget/VideoView;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 4

    .line 199
    iget-object p5, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->isClick:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p5

    const-string/jumbo v0, "zlq"

    const/4 v1, 0x1

    if-nez p5, :cond_1

    if-eqz p1, :cond_0

    .line 201
    new-instance p5, Ljava/io/File;

    invoke-direct {p5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p5

    invoke-virtual {p1, p5}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 202
    new-instance p5, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter$CompletionListener;

    invoke-direct {p5, p0, p3}, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter$CompletionListener;-><init>(Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;Landroid/widget/ImageView;)V

    invoke-virtual {p1, p5}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 203
    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    .line 204
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p5, "start..."

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    new-instance p1, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter$1;

    invoke-direct {p1, p0, p4}, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter$1;-><init>(Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;Landroid/widget/ImageView;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p4, p1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 212
    invoke-virtual {p3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 213
    iget-object p1, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->isClick:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 216
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p5, "stop..."

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  isPlay  "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " video "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {p1}, Landroid/widget/VideoView;->stopPlayback()V

    .line 219
    :cond_2
    invoke-virtual {p3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 220
    iget-object p1, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->isClick:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    return-void
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

    .line 77
    iget-object v0, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->mMeidaFilePathSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 78
    iget-object v0, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->mMeidaFilePathSet:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 79
    invoke-virtual {p0}, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .line 175
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setPrimaryItem: position:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TrashPreviewPagerAdapter"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object p1, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->mCurrentPhotoView:Landroid/view/View;

    if-eq p1, p3, :cond_0

    .line 177
    check-cast p3, Landroid/view/View;

    iput-object p3, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->mCurrentPhotoView:Landroid/view/View;

    .line 178
    iget-object p1, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->mMeidaFilePathSet:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/trash/TrashItem;

    invoke-virtual {p1}, Lcom/zui/gallery/trash/TrashItem;->getOld_full_path()Ljava/lang/String;

    move-result-object p1

    .line 180
    invoke-direct {p0, p2, p1}, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->videoPlay(ILjava/lang/String;)V

    .line 182
    iget-object p3, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->mTrashDetailFragment:Lcom/zui/gallery/trash/LenovoTrashDetailFragment;

    invoke-virtual {p3, p1}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->setCurrentImagePath(Ljava/lang/String;)V

    .line 183
    iget-object p1, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->mTrashDetailFragment:Lcom/zui/gallery/trash/LenovoTrashDetailFragment;

    iget-object p3, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->mMeidaFilePathSet:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/zui/gallery/trash/TrashItem;

    invoke-virtual {p1, p3}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->setCurrentTrashItem(Lcom/zui/gallery/trash/TrashItem;)V

    .line 184
    iget-object p1, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->mTrashDetailFragment:Lcom/zui/gallery/trash/LenovoTrashDetailFragment;

    invoke-virtual {p1}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->dismissProgressDialog()V

    .line 185
    iget-object p1, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->mTrashDetailFragment:Lcom/zui/gallery/trash/LenovoTrashDetailFragment;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->setCurrentImagePosition(I)V

    :cond_0
    return-void
.end method
