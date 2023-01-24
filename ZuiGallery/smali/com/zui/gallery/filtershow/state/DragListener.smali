.class Lcom/zui/gallery/filtershow/state/DragListener;
.super Ljava/lang/Object;
.source "DragListener.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "DragListener"

.field private static sSlope:F = 0.2f


# instance fields
.field private mStatePanelTrack:Lcom/zui/gallery/filtershow/state/PanelTrack;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/filtershow/state/PanelTrack;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/zui/gallery/filtershow/state/DragListener;->mStatePanelTrack:Lcom/zui/gallery/filtershow/state/PanelTrack;

    return-void
.end method

.method private setState(Landroid/view/DragEvent;)V
    .locals 5

    .line 35
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/state/DragListener;->mStatePanelTrack:Lcom/zui/gallery/filtershow/state/PanelTrack;

    invoke-interface {v1}, Lcom/zui/gallery/filtershow/state/PanelTrack;->getTouchPoint()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 36
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/zui/gallery/filtershow/state/DragListener;->mStatePanelTrack:Lcom/zui/gallery/filtershow/state/PanelTrack;

    .line 37
    invoke-interface {v2}, Lcom/zui/gallery/filtershow/state/PanelTrack;->getCurrentView()Lcom/zui/gallery/filtershow/state/StateView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/state/StateView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    .line 38
    iget-object v3, p0, Lcom/zui/gallery/filtershow/state/DragListener;->mStatePanelTrack:Lcom/zui/gallery/filtershow/state/PanelTrack;

    invoke-interface {v3}, Lcom/zui/gallery/filtershow/state/PanelTrack;->getOrientation()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 39
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result p1

    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/DragListener;->mStatePanelTrack:Lcom/zui/gallery/filtershow/state/PanelTrack;

    invoke-interface {v0}, Lcom/zui/gallery/filtershow/state/PanelTrack;->getTouchPoint()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 40
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/state/DragListener;->mStatePanelTrack:Lcom/zui/gallery/filtershow/state/PanelTrack;

    .line 41
    invoke-interface {v1}, Lcom/zui/gallery/filtershow/state/PanelTrack;->getCurrentView()Lcom/zui/gallery/filtershow/state/StateView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/state/StateView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    sub-float v1, v2, v0

    .line 42
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/DragListener;->mStatePanelTrack:Lcom/zui/gallery/filtershow/state/PanelTrack;

    invoke-interface {v0}, Lcom/zui/gallery/filtershow/state/PanelTrack;->getCurrentView()Lcom/zui/gallery/filtershow/state/StateView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/state/StateView;->setTranslationX(F)V

    goto :goto_0

    .line 44
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/state/DragListener;->mStatePanelTrack:Lcom/zui/gallery/filtershow/state/PanelTrack;

    invoke-interface {p1}, Lcom/zui/gallery/filtershow/state/PanelTrack;->getCurrentView()Lcom/zui/gallery/filtershow/state/StateView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/state/StateView;->setTranslationY(F)V

    .line 46
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/state/DragListener;->mStatePanelTrack:Lcom/zui/gallery/filtershow/state/PanelTrack;

    invoke-interface {p1}, Lcom/zui/gallery/filtershow/state/PanelTrack;->getCurrentView()Lcom/zui/gallery/filtershow/state/StateView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/zui/gallery/filtershow/state/StateView;->setBackgroundAlpha(F)V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 4

    .line 51
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/4 v3, 0x5

    if-eq p1, v3, :cond_2

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    .line 87
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/state/DragListener;->mStatePanelTrack:Lcom/zui/gallery/filtershow/state/PanelTrack;

    invoke-interface {p1}, Lcom/zui/gallery/filtershow/state/PanelTrack;->getCurrentView()Lcom/zui/gallery/filtershow/state/StateView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 88
    invoke-direct {p0, p2}, Lcom/zui/gallery/filtershow/state/DragListener;->setState(Landroid/view/DragEvent;)V

    .line 89
    iget-object p1, p0, Lcom/zui/gallery/filtershow/state/DragListener;->mStatePanelTrack:Lcom/zui/gallery/filtershow/state/PanelTrack;

    invoke-interface {p1}, Lcom/zui/gallery/filtershow/state/PanelTrack;->getCurrentView()Lcom/zui/gallery/filtershow/state/StateView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/state/StateView;->setVisibility(I)V

    .line 91
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/filtershow/state/DragListener;->mStatePanelTrack:Lcom/zui/gallery/filtershow/state/PanelTrack;

    invoke-interface {p1, v2}, Lcom/zui/gallery/filtershow/state/PanelTrack;->setExited(Z)V

    goto/16 :goto_0

    .line 80
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/filtershow/state/DragListener;->mStatePanelTrack:Lcom/zui/gallery/filtershow/state/PanelTrack;

    invoke-interface {p1, v1}, Lcom/zui/gallery/filtershow/state/PanelTrack;->setExited(Z)V

    .line 81
    iget-object p1, p0, Lcom/zui/gallery/filtershow/state/DragListener;->mStatePanelTrack:Lcom/zui/gallery/filtershow/state/PanelTrack;

    invoke-interface {p1}, Lcom/zui/gallery/filtershow/state/PanelTrack;->getCurrentView()Lcom/zui/gallery/filtershow/state/StateView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 82
    iget-object p1, p0, Lcom/zui/gallery/filtershow/state/DragListener;->mStatePanelTrack:Lcom/zui/gallery/filtershow/state/PanelTrack;

    invoke-interface {p1}, Lcom/zui/gallery/filtershow/state/PanelTrack;->getCurrentView()Lcom/zui/gallery/filtershow/state/StateView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/zui/gallery/filtershow/state/StateView;->setVisibility(I)V

    :cond_3
    return v2

    .line 98
    :cond_4
    iget-object p1, p0, Lcom/zui/gallery/filtershow/state/DragListener;->mStatePanelTrack:Lcom/zui/gallery/filtershow/state/PanelTrack;

    invoke-interface {p1}, Lcom/zui/gallery/filtershow/state/PanelTrack;->getCurrentView()Lcom/zui/gallery/filtershow/state/StateView;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/zui/gallery/filtershow/state/DragListener;->mStatePanelTrack:Lcom/zui/gallery/filtershow/state/PanelTrack;

    .line 99
    invoke-interface {p1}, Lcom/zui/gallery/filtershow/state/PanelTrack;->getCurrentView()Lcom/zui/gallery/filtershow/state/StateView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/state/StateView;->getAlpha()F

    move-result p1

    sget v0, Lcom/zui/gallery/filtershow/state/DragListener;->sSlope:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_5

    .line 100
    invoke-direct {p0, p2}, Lcom/zui/gallery/filtershow/state/DragListener;->setState(Landroid/view/DragEvent;)V

    .line 102
    :cond_5
    iget-object p1, p0, Lcom/zui/gallery/filtershow/state/DragListener;->mStatePanelTrack:Lcom/zui/gallery/filtershow/state/PanelTrack;

    invoke-interface {p1}, Lcom/zui/gallery/filtershow/state/PanelTrack;->checkEndState()V

    goto :goto_0

    .line 56
    :cond_6
    iget-object p1, p0, Lcom/zui/gallery/filtershow/state/DragListener;->mStatePanelTrack:Lcom/zui/gallery/filtershow/state/PanelTrack;

    invoke-interface {p1}, Lcom/zui/gallery/filtershow/state/PanelTrack;->getCurrentView()Lcom/zui/gallery/filtershow/state/StateView;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 57
    invoke-direct {p0, p2}, Lcom/zui/gallery/filtershow/state/DragListener;->setState(Landroid/view/DragEvent;)V

    .line 58
    iget-object p1, p0, Lcom/zui/gallery/filtershow/state/DragListener;->mStatePanelTrack:Lcom/zui/gallery/filtershow/state/PanelTrack;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 59
    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    .line 58
    invoke-interface {p1, v0, p2}, Lcom/zui/gallery/filtershow/state/PanelTrack;->findChildAt(II)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 60
    iget-object p2, p0, Lcom/zui/gallery/filtershow/state/DragListener;->mStatePanelTrack:Lcom/zui/gallery/filtershow/state/PanelTrack;

    invoke-interface {p2}, Lcom/zui/gallery/filtershow/state/PanelTrack;->getCurrentView()Lcom/zui/gallery/filtershow/state/StateView;

    move-result-object p2

    if-eq p1, p2, :cond_7

    .line 61
    move-object p2, p1

    check-cast p2, Lcom/zui/gallery/filtershow/state/StateView;

    .line 62
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/DragListener;->mStatePanelTrack:Lcom/zui/gallery/filtershow/state/PanelTrack;

    invoke-interface {v0}, Lcom/zui/gallery/filtershow/state/PanelTrack;->getCurrentView()Lcom/zui/gallery/filtershow/state/StateView;

    move-result-object v0

    if-eq p2, v0, :cond_7

    .line 63
    iget-object p2, p0, Lcom/zui/gallery/filtershow/state/DragListener;->mStatePanelTrack:Lcom/zui/gallery/filtershow/state/PanelTrack;

    invoke-interface {p2, p1}, Lcom/zui/gallery/filtershow/state/PanelTrack;->findChild(Landroid/view/View;)I

    move-result p1

    .line 64
    iget-object p2, p0, Lcom/zui/gallery/filtershow/state/DragListener;->mStatePanelTrack:Lcom/zui/gallery/filtershow/state/PanelTrack;

    .line 65
    invoke-interface {p2}, Lcom/zui/gallery/filtershow/state/PanelTrack;->getCurrentView()Lcom/zui/gallery/filtershow/state/StateView;

    move-result-object v0

    .line 64
    invoke-interface {p2, v0}, Lcom/zui/gallery/filtershow/state/PanelTrack;->findChild(Landroid/view/View;)I

    move-result p2

    .line 66
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/DragListener;->mStatePanelTrack:Lcom/zui/gallery/filtershow/state/PanelTrack;

    invoke-interface {v0}, Lcom/zui/gallery/filtershow/state/PanelTrack;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    const/4 v3, -0x1

    if-eq p2, v3, :cond_7

    if-eq p1, v3, :cond_7

    .line 68
    invoke-virtual {v0, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/gallery/filtershow/state/State;

    .line 69
    invoke-virtual {v0, p2}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 70
    invoke-virtual {v0, p2, p1}, Landroid/widget/ArrayAdapter;->insert(Ljava/lang/Object;I)V

    .line 71
    iget-object p2, p0, Lcom/zui/gallery/filtershow/state/DragListener;->mStatePanelTrack:Lcom/zui/gallery/filtershow/state/PanelTrack;

    invoke-interface {p2, v1}, Lcom/zui/gallery/filtershow/state/PanelTrack;->fillContent(Z)V

    .line 72
    iget-object p2, p0, Lcom/zui/gallery/filtershow/state/DragListener;->mStatePanelTrack:Lcom/zui/gallery/filtershow/state/PanelTrack;

    invoke-interface {p2, p1}, Lcom/zui/gallery/filtershow/state/PanelTrack;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/zui/gallery/filtershow/state/PanelTrack;->setCurrentView(Landroid/view/View;)V

    :cond_7
    :goto_0
    return v2
.end method
