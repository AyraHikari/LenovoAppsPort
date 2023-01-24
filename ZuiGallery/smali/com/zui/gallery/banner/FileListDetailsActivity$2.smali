.class Lcom/zui/gallery/banner/FileListDetailsActivity$2;
.super Landroid/os/Handler;
.source "FileListDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/banner/FileListDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/banner/FileListDetailsActivity;


# direct methods
.method constructor <init>(Lcom/zui/gallery/banner/FileListDetailsActivity;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/zui/gallery/banner/FileListDetailsActivity$2;->this$0:Lcom/zui/gallery/banner/FileListDetailsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 195
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 196
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/banner/FileListDetailsActivity$2;->this$0:Lcom/zui/gallery/banner/FileListDetailsActivity;

    invoke-static {p1}, Lcom/zui/gallery/banner/FileListDetailsActivity;->access$300(Lcom/zui/gallery/banner/FileListDetailsActivity;)V

    .line 199
    iget-object p1, p0, Lcom/zui/gallery/banner/FileListDetailsActivity$2;->this$0:Lcom/zui/gallery/banner/FileListDetailsActivity;

    invoke-static {p1}, Lcom/zui/gallery/banner/FileListDetailsActivity;->access$400(Lcom/zui/gallery/banner/FileListDetailsActivity;)V

    :goto_0
    return-void
.end method
