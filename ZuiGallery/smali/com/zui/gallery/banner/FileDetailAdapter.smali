.class public Lcom/zui/gallery/banner/FileDetailAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "FileDetailAdapter.java"


# instance fields
.field private mActivity:Lcom/zui/gallery/banner/FileListDetailsActivity;

.field private mContext:Landroid/content/Context;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zui/gallery/banner/FileListDetailsActivity;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/banner/FileDetailAdapter;->mList:Ljava/util/List;

    .line 39
    iput-object p1, p0, Lcom/zui/gallery/banner/FileDetailAdapter;->mActivity:Lcom/zui/gallery/banner/FileListDetailsActivity;

    .line 40
    iput-object p1, p0, Lcom/zui/gallery/banner/FileDetailAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "/"

    .line 169
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "."

    .line 170
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    .line 172
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/storage/emulated/0/DCIM/Camera/ZuiGalleryGroup/.MyPrivacy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".VideoCover"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".png"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private loadView(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 10

    .line 105
    new-instance v0, Lcom/github/chrisbanes/photoview/PhotoView;

    iget-object v1, p0, Lcom/zui/gallery/banner/FileDetailAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/github/chrisbanes/photoview/PhotoView;-><init>(Landroid/content/Context;)V

    .line 108
    new-instance v1, Lcom/zui/gallery/banner/-$$Lambda$FileDetailAdapter$qCNGqC9NCu-Zok2lBAeIfwIBrcM;

    invoke-direct {v1, p0}, Lcom/zui/gallery/banner/-$$Lambda$FileDetailAdapter$qCNGqC9NCu-Zok2lBAeIfwIBrcM;-><init>(Lcom/zui/gallery/banner/FileDetailAdapter;)V

    invoke-virtual {v0, v1}, Lcom/github/chrisbanes/photoview/PhotoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v1, p0, Lcom/zui/gallery/banner/FileDetailAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 110
    invoke-static {v1}, Lcom/zui/gallery/banner/MediaFile;->isVideoFileType(Ljava/lang/String;)Z

    move-result v2

    .line 111
    invoke-static {v1}, Lcom/zui/gallery/banner/MediaFile;->isGifFileType(Ljava/lang/String;)Z

    move-result v3

    const v4, 0x7f05002b

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    .line 113
    new-instance v3, Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/zui/gallery/banner/FileDetailAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 114
    new-instance v6, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/zui/gallery/banner/FileDetailAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 115
    invoke-virtual {v6, p2}, Landroid/widget/ImageView;->setId(I)V

    .line 116
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 117
    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 119
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v7, p0, Lcom/zui/gallery/banner/FileDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060376

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget-object v9, p0, Lcom/zui/gallery/banner/FileDetailAdapter;->mContext:Landroid/content/Context;

    .line 120
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-direct {p2, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xd

    .line 121
    invoke-virtual {p2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 122
    iget-object v8, p0, Lcom/zui/gallery/banner/FileDetailAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f07021f

    invoke-virtual {v8, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    invoke-virtual {v6, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {p2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 127
    invoke-virtual {p2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 128
    invoke-virtual {v0, p2}, Lcom/github/chrisbanes/photoview/PhotoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    invoke-direct {p0, v1}, Lcom/zui/gallery/banner/FileDetailAdapter;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 133
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "videoCoverPath is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "videovideo"

    invoke-static {v7, v6}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "videoCoverPath.exists is "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v1, Lcom/zui/gallery/privacygroup/DecryptFile;

    invoke-direct {v1, p2, v5}, Lcom/zui/gallery/privacygroup/DecryptFile;-><init>(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const-string/jumbo p2, "\u6ca1\u6709\u5728cover\u4e2d\u627e\u5230\uff0c\u7ee7\u7eed\u4f7f\u7528videopath"

    .line 139
    invoke-static {v7, p2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance p2, Lcom/zui/gallery/privacygroup/DecryptFile;

    const/4 v5, 0x1

    invoke-direct {p2, v1, v5}, Lcom/zui/gallery/privacygroup/DecryptFile;-><init>(Ljava/lang/String;Z)V

    move-object v1, p2

    .line 142
    :goto_0
    iget-object p2, p0, Lcom/zui/gallery/banner/FileDetailAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p2

    .line 143
    invoke-virtual {p2, v4}, Lcom/bumptech/glide/DrawableTypeRequest;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p2

    .line 144
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_2

    :cond_1
    if-eqz v3, :cond_2

    .line 154
    iget-object p2, p0, Lcom/zui/gallery/banner/FileDetailAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    new-instance v3, Lcom/zui/gallery/privacygroup/DecryptFile;

    invoke-direct {v3, v1, v5}, Lcom/zui/gallery/privacygroup/DecryptFile;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p2, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p2

    .line 155
    invoke-virtual {p2}, Lcom/bumptech/glide/DrawableTypeRequest;->asGif()Lcom/bumptech/glide/GifTypeRequest;

    move-result-object p2

    .line 156
    invoke-virtual {p2, v4}, Lcom/bumptech/glide/GifTypeRequest;->placeholder(I)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object p2

    .line 157
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/GifRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_1

    .line 159
    :cond_2
    iget-object p2, p0, Lcom/zui/gallery/banner/FileDetailAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    new-instance v3, Lcom/zui/gallery/privacygroup/DecryptFile;

    invoke-direct {v3, v1, v5}, Lcom/zui/gallery/privacygroup/DecryptFile;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p2, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p2

    .line 160
    invoke-virtual {p2}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object p2

    .line 161
    invoke-virtual {p2, v4}, Lcom/bumptech/glide/BitmapTypeRequest;->placeholder(I)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object p2

    .line 162
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/BitmapRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    :goto_1
    const/4 v3, 0x0

    :goto_2
    if-eqz v2, :cond_3

    move-object p2, v3

    goto :goto_3

    :cond_3
    move-object p2, v0

    .line 164
    :goto_3
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz v2, :cond_4

    move-object v0, v3

    :cond_4
    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 62
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/zui/gallery/banner/FileDetailAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/banner/FileDetailAdapter;->loadView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public synthetic lambda$loadView$1$FileDetailAdapter(Landroid/view/View;)V
    .locals 0

    .line 108
    iget-object p1, p0, Lcom/zui/gallery/banner/FileDetailAdapter;->mActivity:Lcom/zui/gallery/banner/FileListDetailsActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/banner/FileListDetailsActivity;->onPhotoTopListener()V

    return-void
.end method

.method public synthetic lambda$setPrimaryItem$0$FileDetailAdapter(Lcom/github/chrisbanes/photoview/PhotoView;Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    .line 85
    new-instance p3, Lcom/zui/gallery/banner/FileDetailAdapter$1;

    invoke-direct {p3, p0, p1}, Lcom/zui/gallery/banner/FileDetailAdapter$1;-><init>(Lcom/zui/gallery/banner/FileDetailAdapter;Lcom/github/chrisbanes/photoview/PhotoView;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p3, v0, v1}, Lcom/github/chrisbanes/photoview/PhotoView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 91
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo p3, "video"

    .line 92
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    iget-object p2, p0, Lcom/zui/gallery/banner/FileDetailAdapter;->mActivity:Lcom/zui/gallery/banner/FileListDetailsActivity;

    const-class p3, Lcom/zui/gallery/banner/MediaPlayerActivity;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 94
    iget-object p2, p0, Lcom/zui/gallery/banner/FileDetailAdapter;->mActivity:Lcom/zui/gallery/banner/FileListDetailsActivity;

    invoke-virtual {p2, p1}, Lcom/zui/gallery/banner/FileListDetailsActivity;->startActivity(Landroid/content/Intent;)V

    const-string/jumbo p1, "xxxxx"

    const-string p2, "onClick Activity"

    .line 95
    invoke-static {p1, p2}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 44
    iget-object v0, p0, Lcom/zui/gallery/banner/FileDetailAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 45
    iget-object v0, p0, Lcom/zui/gallery/banner/FileDetailAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 46
    invoke-virtual {p0}, Lcom/zui/gallery/banner/FileDetailAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 4

    .line 73
    iget-object v0, p0, Lcom/zui/gallery/banner/FileDetailAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p2, :cond_0

    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/banner/FileDetailAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 77
    invoke-static {v0}, Lcom/zui/gallery/banner/MediaFile;->isVideoFileType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    instance-of v1, p3, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    .line 80
    move-object v1, p3

    check-cast v1, Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    .line 81
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/github/chrisbanes/photoview/PhotoView;

    .line 82
    invoke-virtual {v3, v2}, Lcom/github/chrisbanes/photoview/PhotoView;->setVisibility(I)V

    const/4 v2, 0x1

    .line 83
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 84
    new-instance v2, Lcom/zui/gallery/banner/-$$Lambda$FileDetailAdapter$TkIO0CXVYZjhUytbawryGAB1LX0;

    invoke-direct {v2, p0, v3, v0}, Lcom/zui/gallery/banner/-$$Lambda$FileDetailAdapter$TkIO0CXVYZjhUytbawryGAB1LX0;-><init>(Lcom/zui/gallery/banner/FileDetailAdapter;Lcom/github/chrisbanes/photoview/PhotoView;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/zui/gallery/banner/FileDetailAdapter;->mActivity:Lcom/zui/gallery/banner/FileListDetailsActivity;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->setCurrentFilePath(Ljava/lang/String;)V

    .line 101
    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager/widget/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method
