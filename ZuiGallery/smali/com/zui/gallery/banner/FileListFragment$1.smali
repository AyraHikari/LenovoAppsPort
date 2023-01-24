.class Lcom/zui/gallery/banner/FileListFragment$1;
.super Landroid/os/Handler;
.source "FileListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/banner/FileListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/banner/FileListFragment;


# direct methods
.method constructor <init>(Lcom/zui/gallery/banner/FileListFragment;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/zui/gallery/banner/FileListFragment$1;->this$0:Lcom/zui/gallery/banner/FileListFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 111
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 112
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e8

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/banner/FileListFragment$1;->this$0:Lcom/zui/gallery/banner/FileListFragment;

    invoke-static {p1}, Lcom/zui/gallery/banner/FileListFragment;->access$100(Lcom/zui/gallery/banner/FileListFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 120
    iget-object p1, p0, Lcom/zui/gallery/banner/FileListFragment$1;->this$0:Lcom/zui/gallery/banner/FileListFragment;

    invoke-static {p1}, Lcom/zui/gallery/banner/FileListFragment;->access$000(Lcom/zui/gallery/banner/FileListFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 114
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/banner/FileListFragment$1;->this$0:Lcom/zui/gallery/banner/FileListFragment;

    invoke-static {p1}, Lcom/zui/gallery/banner/FileListFragment;->access$000(Lcom/zui/gallery/banner/FileListFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 115
    iget-object p1, p0, Lcom/zui/gallery/banner/FileListFragment$1;->this$0:Lcom/zui/gallery/banner/FileListFragment;

    invoke-static {p1}, Lcom/zui/gallery/banner/FileListFragment;->access$100(Lcom/zui/gallery/banner/FileListFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 116
    iget-object p1, p0, Lcom/zui/gallery/banner/FileListFragment$1;->this$0:Lcom/zui/gallery/banner/FileListFragment;

    invoke-static {p1}, Lcom/zui/gallery/banner/FileListFragment;->access$300(Lcom/zui/gallery/banner/FileListFragment;)Lcom/zui/gallery/banner/FileListAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/gallery/banner/FileListFragment$1;->this$0:Lcom/zui/gallery/banner/FileListFragment;

    invoke-static {v0}, Lcom/zui/gallery/banner/FileListFragment;->access$200(Lcom/zui/gallery/banner/FileListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zui/gallery/banner/FileListAdapter;->setData(Ljava/util/List;)V

    :goto_0
    return-void
.end method
