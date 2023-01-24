.class Lcom/zui/gallery/ui/mosaic/MosaicActivity$2;
.super Landroid/os/Handler;
.source "MosaicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/mosaic/MosaicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/ui/mosaic/MosaicActivity;


# direct methods
.method constructor <init>(Lcom/zui/gallery/ui/mosaic/MosaicActivity;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity$2;->this$0:Lcom/zui/gallery/ui/mosaic/MosaicActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 412
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity$2;->this$0:Lcom/zui/gallery/ui/mosaic/MosaicActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100221

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 414
    iget-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity$2;->this$0:Lcom/zui/gallery/ui/mosaic/MosaicActivity;

    invoke-static {v0}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->access$100(Lcom/zui/gallery/ui/mosaic/MosaicActivity;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 416
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
