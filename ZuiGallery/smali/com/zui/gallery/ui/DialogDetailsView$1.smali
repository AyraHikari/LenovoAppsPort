.class Lcom/zui/gallery/ui/DialogDetailsView$1;
.super Ljava/lang/Object;
.source "DialogDetailsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/ui/DialogDetailsView;->onLayoutChange(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/ui/DialogDetailsView;


# direct methods
.method constructor <init>(Lcom/zui/gallery/ui/DialogDetailsView;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/zui/gallery/ui/DialogDetailsView$1;->this$0:Lcom/zui/gallery/ui/DialogDetailsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/zui/gallery/ui/DialogDetailsView$1;->this$0:Lcom/zui/gallery/ui/DialogDetailsView;

    invoke-static {v0}, Lcom/zui/gallery/ui/DialogDetailsView;->access$000(Lcom/zui/gallery/ui/DialogDetailsView;)Lzui/app/MessageDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/zui/gallery/ui/DialogDetailsView$1;->this$0:Lcom/zui/gallery/ui/DialogDetailsView;

    invoke-static {v0}, Lcom/zui/gallery/ui/DialogDetailsView;->access$000(Lcom/zui/gallery/ui/DialogDetailsView;)Lzui/app/MessageDialog;

    move-result-object v0

    invoke-virtual {v0}, Lzui/app/MessageDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    :cond_0
    return-void
.end method
