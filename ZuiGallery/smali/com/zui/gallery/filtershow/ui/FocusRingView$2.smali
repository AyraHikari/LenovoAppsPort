.class Lcom/zui/gallery/filtershow/ui/FocusRingView$2;
.super Ljava/lang/Object;
.source "FocusRingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/ui/FocusRingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/ui/FocusRingView;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/ui/FocusRingView;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView$2;->this$0:Lcom/zui/gallery/filtershow/ui/FocusRingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView$2;->this$0:Lcom/zui/gallery/filtershow/ui/FocusRingView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zui/gallery/filtershow/ui/FocusRingView;->access$102(Lcom/zui/gallery/filtershow/ui/FocusRingView;Z)Z

    .line 104
    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView$2;->this$0:Lcom/zui/gallery/filtershow/ui/FocusRingView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zui/gallery/filtershow/ui/FocusRingView;->access$202(Lcom/zui/gallery/filtershow/ui/FocusRingView;F)F

    .line 105
    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView$2;->this$0:Lcom/zui/gallery/filtershow/ui/FocusRingView;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/ui/FocusRingView;->access$300(Lcom/zui/gallery/filtershow/ui/FocusRingView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
