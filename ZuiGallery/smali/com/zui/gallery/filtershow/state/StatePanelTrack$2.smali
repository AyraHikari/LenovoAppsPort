.class Lcom/zui/gallery/filtershow/state/StatePanelTrack$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "StatePanelTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/state/StatePanelTrack;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/state/StatePanelTrack;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/state/StatePanelTrack;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack$2;->this$0:Lcom/zui/gallery/filtershow/state/StatePanelTrack;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack$2;->this$0:Lcom/zui/gallery/filtershow/state/StatePanelTrack;

    invoke-static {v0, p1}, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->access$100(Lcom/zui/gallery/filtershow/state/StatePanelTrack;Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack$2;->this$0:Lcom/zui/gallery/filtershow/state/StatePanelTrack;

    invoke-static {v0, p1}, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->access$000(Lcom/zui/gallery/filtershow/state/StatePanelTrack;Landroid/view/MotionEvent;)V

    return-void
.end method
