.class Lcom/zui/gallery/ui/GestureRecognizer$MyScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "GestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/GestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/ui/GestureRecognizer;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/ui/GestureRecognizer;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/zui/gallery/ui/GestureRecognizer$MyScaleListener;->this$0:Lcom/zui/gallery/ui/GestureRecognizer;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/ui/GestureRecognizer;Lcom/zui/gallery/ui/GestureRecognizer$1;)V
    .locals 0

    .line 137
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/GestureRecognizer$MyScaleListener;-><init>(Lcom/zui/gallery/ui/GestureRecognizer;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/zui/gallery/ui/GestureRecognizer$MyScaleListener;->this$0:Lcom/zui/gallery/ui/GestureRecognizer;

    invoke-static {v0}, Lcom/zui/gallery/ui/GestureRecognizer;->access$300(Lcom/zui/gallery/ui/GestureRecognizer;)Lcom/zui/gallery/ui/GestureRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    .line 148
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    .line 147
    invoke-interface {v0, v1, v2, p1}, Lcom/zui/gallery/ui/GestureRecognizer$Listener;->onScale(FFF)Z

    move-result p1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/zui/gallery/ui/GestureRecognizer$MyScaleListener;->this$0:Lcom/zui/gallery/ui/GestureRecognizer;

    invoke-static {v0}, Lcom/zui/gallery/ui/GestureRecognizer;->access$300(Lcom/zui/gallery/ui/GestureRecognizer;)Lcom/zui/gallery/ui/GestureRecognizer$Listener;

    move-result-object v0

    .line 142
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    .line 141
    invoke-interface {v0, v1, p1}, Lcom/zui/gallery/ui/GestureRecognizer$Listener;->onScaleBegin(FF)Z

    move-result p1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    .line 153
    iget-object p1, p0, Lcom/zui/gallery/ui/GestureRecognizer$MyScaleListener;->this$0:Lcom/zui/gallery/ui/GestureRecognizer;

    invoke-static {p1}, Lcom/zui/gallery/ui/GestureRecognizer;->access$300(Lcom/zui/gallery/ui/GestureRecognizer;)Lcom/zui/gallery/ui/GestureRecognizer$Listener;

    move-result-object p1

    invoke-interface {p1}, Lcom/zui/gallery/ui/GestureRecognizer$Listener;->onScaleEnd()V

    return-void
.end method
