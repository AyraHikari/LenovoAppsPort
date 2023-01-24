.class Lcom/zui/gallery/filtershow/imageshow/ImageShow$1;
.super Landroid/os/Handler;
.source "ImageShow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/imageshow/ImageShow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/imageshow/ImageShow;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/imageshow/ImageShow;)V
    .locals 0

    .line 687
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 690
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 691
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->access$002(Lcom/zui/gallery/filtershow/imageshow/ImageShow;Z)Z

    .line 692
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->invalidate()V

    return-void
.end method
