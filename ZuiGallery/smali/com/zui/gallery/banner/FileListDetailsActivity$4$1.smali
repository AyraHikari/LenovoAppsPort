.class Lcom/zui/gallery/banner/FileListDetailsActivity$4$1;
.super Ljava/lang/Object;
.source "FileListDetailsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/banner/FileListDetailsActivity$4;->onRemoved(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zui/gallery/banner/FileListDetailsActivity$4;


# direct methods
.method constructor <init>(Lcom/zui/gallery/banner/FileListDetailsActivity$4;)V
    .locals 0

    .line 637
    iput-object p1, p0, Lcom/zui/gallery/banner/FileListDetailsActivity$4$1;->this$1:Lcom/zui/gallery/banner/FileListDetailsActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 640
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity$4$1;->this$1:Lcom/zui/gallery/banner/FileListDetailsActivity$4;

    iget-object v0, v0, Lcom/zui/gallery/banner/FileListDetailsActivity$4;->this$0:Lcom/zui/gallery/banner/FileListDetailsActivity;

    iget-object v0, v0, Lcom/zui/gallery/banner/FileListDetailsActivity;->mActivity:Lcom/zui/gallery/banner/BaseActivity;

    const-string/jumbo v1, "\u79fb\u51fa\u6210\u529f"

    invoke-virtual {v0, v1}, Lcom/zui/gallery/banner/BaseActivity;->showToast(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 641
    sput-boolean v0, Lcom/zui/gallery/banner/FileListDetailsActivity;->deleteOrModifyFileNotification:Z

    .line 642
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity$4$1;->this$1:Lcom/zui/gallery/banner/FileListDetailsActivity$4;

    iget-object v0, v0, Lcom/zui/gallery/banner/FileListDetailsActivity$4;->this$0:Lcom/zui/gallery/banner/FileListDetailsActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->dismissLoadingDialog()V

    .line 643
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity$4$1;->this$1:Lcom/zui/gallery/banner/FileListDetailsActivity$4;

    iget-object v0, v0, Lcom/zui/gallery/banner/FileListDetailsActivity$4;->this$0:Lcom/zui/gallery/banner/FileListDetailsActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->finish()V

    return-void
.end method
