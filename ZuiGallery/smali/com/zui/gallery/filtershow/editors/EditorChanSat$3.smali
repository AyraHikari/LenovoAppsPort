.class Lcom/zui/gallery/filtershow/editors/EditorChanSat$3;
.super Ljava/lang/Object;
.source "EditorChanSat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/editors/EditorChanSat;->swapLeft(Landroid/view/MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/editors/EditorChanSat;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/editors/EditorChanSat;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat$3;->this$0:Lcom/zui/gallery/filtershow/editors/EditorChanSat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat$3;->this$0:Lcom/zui/gallery/filtershow/editors/EditorChanSat;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->access$000(Lcom/zui/gallery/filtershow/editors/EditorChanSat;)Lcom/zui/gallery/filtershow/editors/SwapButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/editors/SwapButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 361
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat$3;->this$0:Lcom/zui/gallery/filtershow/editors/EditorChanSat;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->access$000(Lcom/zui/gallery/filtershow/editors/EditorChanSat;)Lcom/zui/gallery/filtershow/editors/SwapButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/editors/SwapButton;->setTranslationX(F)V

    return-void
.end method
