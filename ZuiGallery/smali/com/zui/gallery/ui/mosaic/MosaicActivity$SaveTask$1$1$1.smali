.class Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask$1$1$1;
.super Ljava/lang/Object;
.source "MosaicActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask$1$1;


# direct methods
.method constructor <init>(Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask$1$1;)V
    .locals 0

    .line 729
    iput-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask$1$1$1;->this$3:Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 731
    iget-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask$1$1$1;->this$3:Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask$1$1;

    iget-object v0, v0, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask$1$1;->this$2:Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask$1;

    iget-object v0, v0, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask$1;->this$1:Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask;

    iget-object v0, v0, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask;->this$0:Lcom/zui/gallery/ui/mosaic/MosaicActivity;

    const v1, 0x7f100226

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 733
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
