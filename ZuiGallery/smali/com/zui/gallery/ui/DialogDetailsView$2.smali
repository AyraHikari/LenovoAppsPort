.class Lcom/zui/gallery/ui/DialogDetailsView$2;
.super Ljava/lang/Object;
.source "DialogDetailsView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/ui/DialogDetailsView;->setDetails(Lcom/zui/gallery/data/MediaDetails;)V
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

    .line 247
    iput-object p1, p0, Lcom/zui/gallery/ui/DialogDetailsView$2;->this$0:Lcom/zui/gallery/ui/DialogDetailsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 250
    iget-object p1, p0, Lcom/zui/gallery/ui/DialogDetailsView$2;->this$0:Lcom/zui/gallery/ui/DialogDetailsView;

    invoke-static {p1}, Lcom/zui/gallery/ui/DialogDetailsView;->access$100(Lcom/zui/gallery/ui/DialogDetailsView;)Lcom/zui/gallery/ui/DetailsHelper$CloseListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 251
    iget-object p1, p0, Lcom/zui/gallery/ui/DialogDetailsView$2;->this$0:Lcom/zui/gallery/ui/DialogDetailsView;

    invoke-static {p1}, Lcom/zui/gallery/ui/DialogDetailsView;->access$100(Lcom/zui/gallery/ui/DialogDetailsView;)Lcom/zui/gallery/ui/DetailsHelper$CloseListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/zui/gallery/ui/DetailsHelper$CloseListener;->onClose()V

    :cond_0
    return-void
.end method
