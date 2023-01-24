.class Lcom/zui/gallery/ui/PhotoView$1;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Lcom/zui/gallery/ui/PositionController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/ui/PhotoView;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/ui/SelectionManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/ui/PhotoView;


# direct methods
.method constructor <init>(Lcom/zui/gallery/ui/PhotoView;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lcom/zui/gallery/ui/PhotoView$1;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$1;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/PhotoView;->invalidate()V

    return-void
.end method

.method public isHoldingDelete()Z
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$1;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$100(Lcom/zui/gallery/ui/PhotoView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHoldingDown()Z
    .locals 2

    .line 389
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$1;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$100(Lcom/zui/gallery/ui/PhotoView;)I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onAbsorb(II)V
    .locals 0

    return-void
.end method

.method public onPull(II)V
    .locals 0

    return-void
.end method

.method public onRelease()V
    .locals 0

    return-void
.end method
