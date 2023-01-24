.class Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask$1;
.super Ljava/lang/Object;
.source "MosaicActivity.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask;


# direct methods
.method constructor <init>(Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask;)V
    .locals 0

    .line 709
    iput-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask$1;->this$1:Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    .line 711
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask$1;->this$1:Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask;

    iget-object p1, p1, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask;->this$0:Lcom/zui/gallery/ui/mosaic/MosaicActivity;

    new-instance v0, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask$1$1;

    invoke-direct {v0, p0, p2}, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask$1$1;-><init>(Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask$1;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
