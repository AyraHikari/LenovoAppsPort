.class Lcom/zui/gallery/filtershow/ui/FocusRingView$1;
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

    .line 92
    iput-object p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView$1;->this$0:Lcom/zui/gallery/filtershow/ui/FocusRingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView$1;->this$0:Lcom/zui/gallery/filtershow/ui/FocusRingView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zui/gallery/filtershow/ui/FocusRingView;->access$002(Lcom/zui/gallery/filtershow/ui/FocusRingView;Z)Z

    .line 96
    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView$1;->this$0:Lcom/zui/gallery/filtershow/ui/FocusRingView;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/ui/FocusRingView;->invalidate()V

    return-void
.end method
