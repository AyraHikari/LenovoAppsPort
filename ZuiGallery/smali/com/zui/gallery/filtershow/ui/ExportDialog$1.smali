.class Lcom/zui/gallery/filtershow/ui/ExportDialog$1;
.super Ljava/lang/Object;
.source "ExportDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/ui/ExportDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/ui/ExportDialog;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/ui/ExportDialog;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog$1;->this$0:Lcom/zui/gallery/filtershow/ui/ExportDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog$1;->this$0:Lcom/zui/gallery/filtershow/ui/ExportDialog;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/ui/ExportDialog;->updateCompressionFactor()V

    .line 68
    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog$1;->this$0:Lcom/zui/gallery/filtershow/ui/ExportDialog;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/ui/ExportDialog;->updateSize()V

    return-void
.end method
