.class Lcom/zui/gallery/app/SlideshowPage$1;
.super Lcom/zui/gallery/ui/GLView;
.source "SlideshowPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/SlideshowPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/SlideshowPage;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/SlideshowPage;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/zui/gallery/app/SlideshowPage$1;->this$0:Lcom/zui/gallery/app/SlideshowPage;

    invoke-direct {p0}, Lcom/zui/gallery/ui/GLView;-><init>()V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 96
    iget-object p1, p0, Lcom/zui/gallery/app/SlideshowPage$1;->this$0:Lcom/zui/gallery/app/SlideshowPage;

    invoke-static {p1}, Lcom/zui/gallery/app/SlideshowPage;->access$000(Lcom/zui/gallery/app/SlideshowPage;)Lcom/zui/gallery/ui/SlideshowView;

    move-result-object p1

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p4, p5}, Lcom/zui/gallery/ui/SlideshowView;->layout(IIII)V

    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 101
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 102
    iget-object p1, p0, Lcom/zui/gallery/app/SlideshowPage$1;->this$0:Lcom/zui/gallery/app/SlideshowPage;

    invoke-virtual {p1}, Lcom/zui/gallery/app/SlideshowPage;->onBackPressed()V

    :cond_0
    return v0
.end method

.method protected renderBackground(Lcom/zui/gallery/glrenderer/GLCanvas;)V
    .locals 1

    .line 109
    invoke-virtual {p0}, Lcom/zui/gallery/app/SlideshowPage$1;->getBackgroundColor()[F

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/zui/gallery/glrenderer/GLCanvas;->clearBuffer([F)V

    return-void
.end method
