.class Lcom/zui/gallery/ui/mosaic/MosaicActivity$1;
.super Landroid/content/BroadcastReceiver;
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

    .line 86
    iput-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity$1;->this$0:Lcom/zui/gallery/ui/mosaic/MosaicActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 89
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity$1;->this$0:Lcom/zui/gallery/ui/mosaic/MosaicActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->finish()V

    return-void
.end method
