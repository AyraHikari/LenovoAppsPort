.class Lcom/zui/gallery/banner/FileListDetailsActivity$8;
.super Ljava/lang/Object;
.source "FileListDetailsActivity.java"

# interfaces
.implements Lcom/zui/gallery/ui/DetailsHelper$CloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/banner/FileListDetailsActivity;->showDetails()V
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

    .line 750
    iput-object p1, p0, Lcom/zui/gallery/banner/FileListDetailsActivity$8;->this$0:Lcom/zui/gallery/banner/FileListDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 1

    .line 754
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity$8;->this$0:Lcom/zui/gallery/banner/FileListDetailsActivity;

    invoke-static {v0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->access$1000(Lcom/zui/gallery/banner/FileListDetailsActivity;)V

    return-void
.end method
