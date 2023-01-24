.class Lcom/zui/gallery/banner/FileListDetailsActivity$4;
.super Ljava/lang/Object;
.source "FileListDetailsActivity.java"

# interfaces
.implements Lcom/zui/gallery/privacygroup/KeyStoreUtil$onRemoveListner;


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

    .line 633
    iput-object p1, p0, Lcom/zui/gallery/banner/FileListDetailsActivity$4;->this$0:Lcom/zui/gallery/banner/FileListDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoved(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 637
    iget-object p1, p0, Lcom/zui/gallery/banner/FileListDetailsActivity$4;->this$0:Lcom/zui/gallery/banner/FileListDetailsActivity;

    new-instance v0, Lcom/zui/gallery/banner/FileListDetailsActivity$4$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/banner/FileListDetailsActivity$4$1;-><init>(Lcom/zui/gallery/banner/FileListDetailsActivity$4;)V

    invoke-virtual {p1, v0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
