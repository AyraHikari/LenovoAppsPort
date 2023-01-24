.class Lcom/zui/gallery/ui/GestureRecognizer$MyDownUpListener;
.super Ljava/lang/Object;
.source "GestureRecognizer.java"

# interfaces
.implements Lcom/zui/gallery/ui/DownUpDetector$DownUpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/GestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDownUpListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/ui/GestureRecognizer;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/ui/GestureRecognizer;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/zui/gallery/ui/GestureRecognizer$MyDownUpListener;->this$0:Lcom/zui/gallery/ui/GestureRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/ui/GestureRecognizer;Lcom/zui/gallery/ui/GestureRecognizer$1;)V
    .locals 0

    .line 157
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/GestureRecognizer$MyDownUpListener;-><init>(Lcom/zui/gallery/ui/GestureRecognizer;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/zui/gallery/ui/GestureRecognizer$MyDownUpListener;->this$0:Lcom/zui/gallery/ui/GestureRecognizer;

    invoke-static {v0}, Lcom/zui/gallery/ui/GestureRecognizer;->access$300(Lcom/zui/gallery/ui/GestureRecognizer;)Lcom/zui/gallery/ui/GestureRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/zui/gallery/ui/GestureRecognizer$Listener;->onDown(FF)V

    return-void
.end method

.method public onUp(Landroid/view/MotionEvent;)V
    .locals 0

    .line 165
    iget-object p1, p0, Lcom/zui/gallery/ui/GestureRecognizer$MyDownUpListener;->this$0:Lcom/zui/gallery/ui/GestureRecognizer;

    invoke-static {p1}, Lcom/zui/gallery/ui/GestureRecognizer;->access$300(Lcom/zui/gallery/ui/GestureRecognizer;)Lcom/zui/gallery/ui/GestureRecognizer$Listener;

    move-result-object p1

    invoke-interface {p1}, Lcom/zui/gallery/ui/GestureRecognizer$Listener;->onUp()V

    return-void
.end method
