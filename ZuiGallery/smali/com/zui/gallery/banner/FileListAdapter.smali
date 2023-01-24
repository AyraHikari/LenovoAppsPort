.class public Lcom/zui/gallery/banner/FileListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FileListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/banner/FileListAdapter$ItemHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFragment:Lcom/zui/gallery/banner/FileListFragment;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zui/gallery/banner/FileListFragment;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/banner/FileListAdapter;->mList:Ljava/util/ArrayList;

    .line 46
    iput-object p1, p0, Lcom/zui/gallery/banner/FileListAdapter;->mFragment:Lcom/zui/gallery/banner/FileListFragment;

    .line 47
    invoke-virtual {p1}, Lcom/zui/gallery/banner/FileListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/banner/FileListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "/"

    .line 142
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "."

    .line 143
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    .line 145
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 148
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


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$FileListAdapter(Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    .line 131
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 132
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListAdapter;->mContext:Landroid/content/Context;

    const-class v1, Lcom/zui/gallery/banner/FileListDetailsActivity;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 135
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListAdapter;->mList:Ljava/util/ArrayList;

    const-string v1, "fileList"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "filePath"

    .line 136
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    iget-object p1, p0, Lcom/zui/gallery/banner/FileListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public notFyChanged()V
    .locals 0

    .line 158
    invoke-virtual {p0}, Lcom/zui/gallery/banner/FileListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 10

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current thread is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wangcanthread"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, p2, :cond_0

    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 64
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 67
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/zui/gallery/banner/FileListAdapter$ItemHolder;

    iget-object v1, v0, Lcom/zui/gallery/banner/FileListAdapter$ItemHolder;->mFileVideoIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    iget v1, v0, Lcom/zui/gallery/banner/FileListAdapter$ItemHolder;->mItemW:I

    .line 69
    invoke-static {p2}, Lcom/zui/gallery/banner/MediaFile;->isVideoFileType(Ljava/lang/String;)Z

    move-result v1

    .line 70
    invoke-static {p2}, Lcom/zui/gallery/banner/MediaFile;->isGifFileType(Ljava/lang/String;)Z

    const-string v3, "/"

    .line 72
    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 73
    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 101
    invoke-direct {p0, p2}, Lcom/zui/gallery/banner/FileListAdapter;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 102
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "videoCoverPath is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "videovideo"

    invoke-static {v7, v6}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 105
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "videoCoverPath.exists is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance v6, Lcom/zui/gallery/privacygroup/DecryptFile;

    invoke-direct {v6, v5, v4}, Lcom/zui/gallery/privacygroup/DecryptFile;-><init>(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const-string/jumbo v5, "\u6ca1\u6709\u5728cover\u4e2d\u627e\u5230\uff0c\u7ee7\u7eed\u4f7f\u7528videopath"

    .line 108
    invoke-static {v7, v5}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v6, Lcom/zui/gallery/privacygroup/DecryptFile;

    invoke-direct {v6, p2, v1}, Lcom/zui/gallery/privacygroup/DecryptFile;-><init>(Ljava/lang/String;Z)V

    goto :goto_0

    .line 112
    :cond_3
    new-instance v6, Lcom/zui/gallery/privacygroup/DecryptFile;

    invoke-direct {v6, p2, v1}, Lcom/zui/gallery/privacygroup/DecryptFile;-><init>(Ljava/lang/String;Z)V

    .line 114
    :goto_0
    iget-object v5, p0, Lcom/zui/gallery/banner/FileListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v5

    const v6, 0x7f05002b

    .line 115
    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableTypeRequest;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/zui/gallery/banner/FileListAdapter$ItemHolder;->mImg:Landroid/widget/ImageView;

    .line 116
    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    if-eqz v1, :cond_4

    .line 118
    iget-object v1, v0, Lcom/zui/gallery/banner/FileListAdapter$ItemHolder;->mFileVideoIcon:Landroid/widget/ImageView;

    const v2, 0x7f0702c6

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 119
    iget-object v0, v0, Lcom/zui/gallery/banner/FileListAdapter$ItemHolder;->mFileVideoIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 121
    :cond_4
    invoke-static {v3}, Lcom/zui/gallery/util/GalleryUtils;->isMicroVideoNameFormat(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 122
    iget-object v1, v0, Lcom/zui/gallery/banner/FileListAdapter$ItemHolder;->mFileVideoIcon:Landroid/widget/ImageView;

    const v2, 0x7f0702c8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 123
    iget-object v0, v0, Lcom/zui/gallery/banner/FileListAdapter$ItemHolder;->mFileVideoIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 125
    :cond_5
    iget-object v0, v0, Lcom/zui/gallery/banner/FileListAdapter$ItemHolder;->mFileVideoIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    :goto_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/zui/gallery/banner/-$$Lambda$FileListAdapter$xEuT4qVJkLsT5qZjOneZ7G5H3SE;

    invoke-direct {v0, p0, p2}, Lcom/zui/gallery/banner/-$$Lambda$FileListAdapter$xEuT4qVJkLsT5qZjOneZ7G5H3SE;-><init>(Lcom/zui/gallery/banner/FileListAdapter;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 53
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b0043

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 54
    new-instance p2, Lcom/zui/gallery/banner/FileListAdapter$ItemHolder;

    invoke-direct {p2, p1}, Lcom/zui/gallery/banner/FileListAdapter$ItemHolder;-><init>(Landroid/view/View;)V

    return-object p2
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

    .line 152
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 153
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 154
    invoke-virtual {p0}, Lcom/zui/gallery/banner/FileListAdapter;->notifyDataSetChanged()V

    return-void
.end method
