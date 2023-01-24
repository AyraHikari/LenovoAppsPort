.class Lcom/zui/gallery/banner/FileListDetailsActivity$5;
.super Ljava/lang/Object;
.source "FileListDetailsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/banner/FileListDetailsActivity;->processFiles(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/banner/FileListDetailsActivity;

.field final synthetic val$fileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zui/gallery/banner/FileListDetailsActivity;Ljava/lang/String;)V
    .locals 0

    .line 681
    iput-object p1, p0, Lcom/zui/gallery/banner/FileListDetailsActivity$5;->this$0:Lcom/zui/gallery/banner/FileListDetailsActivity;

    iput-object p2, p0, Lcom/zui/gallery/banner/FileListDetailsActivity$5;->val$fileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 684
    invoke-static {}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->get()Lcom/zui/gallery/privacygroup/KeyStoreUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/banner/FileListDetailsActivity$5;->val$fileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/zui/gallery/banner/FileListDetailsActivity$5;->this$0:Lcom/zui/gallery/banner/FileListDetailsActivity;

    invoke-static {v2}, Lcom/zui/gallery/banner/FileListDetailsActivity;->access$700(Lcom/zui/gallery/banner/FileListDetailsActivity;)Lcom/zui/gallery/privacygroup/KeyStoreUtil$onRemoveListner;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->removeFromPrivacy(Ljava/lang/String;Lcom/zui/gallery/privacygroup/KeyStoreUtil$onRemoveListner;)V

    return-void
.end method
