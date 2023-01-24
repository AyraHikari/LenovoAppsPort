.class Lcom/zui/gallery/ui/GestureRecognizer$MyGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "GestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/GestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/ui/GestureRecognizer;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/ui/GestureRecognizer;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/zui/gallery/ui/GestureRecognizer$MyGestureListener;->this$0:Lcom/zui/gallery/ui/GestureRecognizer;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/ui/GestureRecognizer;Lcom/zui/gallery/ui/GestureRecognizer$1;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/GestureRecognizer$MyGestureListener;-><init>(Lcom/zui/gallery/ui/GestureRecognizer;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/zui/gallery/ui/GestureRecognizer$MyGestureListener;->this$0:Lcom/zui/gallery/ui/GestureRecognizer;

    invoke-static {v0}, Lcom/zui/gallery/ui/GestureRecognizer;->access$300(Lcom/zui/gallery/ui/GestureRecognizer;)Lcom/zui/gallery/ui/GestureRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/zui/gallery/ui/GestureRecognizer$Listener;->onDoubleTap(FF)Z

    move-result p1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/zui/gallery/ui/GestureRecognizer$MyGestureListener;->this$0:Lcom/zui/gallery/ui/GestureRecognizer;

    invoke-static {v0}, Lcom/zui/gallery/ui/GestureRecognizer;->access$300(Lcom/zui/gallery/ui/GestureRecognizer;)Lcom/zui/gallery/ui/GestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/zui/gallery/ui/GestureRecognizer$Listener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/zui/gallery/ui/GestureRecognizer$MyGestureListener;->this$0:Lcom/zui/gallery/ui/GestureRecognizer;

    invoke-static {v0}, Lcom/zui/gallery/ui/GestureRecognizer;->access$300(Lcom/zui/gallery/ui/GestureRecognizer;)Lcom/zui/gallery/ui/GestureRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/zui/gallery/ui/GestureRecognizer$Listener;->onLongPress(I)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/zui/gallery/ui/GestureRecognizer$MyGestureListener;->this$0:Lcom/zui/gallery/ui/GestureRecognizer;

    invoke-static {v0}, Lcom/zui/gallery/ui/GestureRecognizer;->access$300(Lcom/zui/gallery/ui/GestureRecognizer;)Lcom/zui/gallery/ui/GestureRecognizer$Listener;

    move-result-object v0

    .line 123
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p2, p1

    .line 122
    invoke-interface {v0, p3, p4, v1, p2}, Lcom/zui/gallery/ui/GestureRecognizer$Listener;->onScroll(FFFF)Z

    move-result p1

    return p1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/zui/gallery/ui/GestureRecognizer$MyGestureListener;->this$0:Lcom/zui/gallery/ui/GestureRecognizer;

    invoke-static {v0}, Lcom/zui/gallery/ui/GestureRecognizer;->access$300(Lcom/zui/gallery/ui/GestureRecognizer;)Lcom/zui/gallery/ui/GestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/gallery/ui/GestureRecognizer$Listener;->onUp()V

    .line 110
    iget-object v0, p0, Lcom/zui/gallery/ui/GestureRecognizer$MyGestureListener;->this$0:Lcom/zui/gallery/ui/GestureRecognizer;

    invoke-static {v0}, Lcom/zui/gallery/ui/GestureRecognizer;->access$300(Lcom/zui/gallery/ui/GestureRecognizer;)Lcom/zui/gallery/ui/GestureRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/zui/gallery/ui/GestureRecognizer$Listener;->onSingleTapUp(FF)Z

    move-result p1

    return p1
.end method
