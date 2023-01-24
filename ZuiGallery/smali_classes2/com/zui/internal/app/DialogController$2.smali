.class Lcom/zui/internal/app/DialogController$2;
.super Ljava/lang/Object;
.source "DialogController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/internal/app/DialogController;->adjustTextAlignment(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/internal/app/DialogController;

.field final synthetic val$view:Landroid/widget/TextView;

.field final synthetic val$vto:Landroid/view/ViewTreeObserver;


# direct methods
.method constructor <init>(Lcom/zui/internal/app/DialogController;Landroid/view/ViewTreeObserver;Landroid/widget/TextView;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/zui/internal/app/DialogController$2;->this$0:Lcom/zui/internal/app/DialogController;

    iput-object p2, p0, Lcom/zui/internal/app/DialogController$2;->val$vto:Landroid/view/ViewTreeObserver;

    iput-object p3, p0, Lcom/zui/internal/app/DialogController$2;->val$view:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 401
    iget-object v0, p0, Lcom/zui/internal/app/DialogController$2;->val$vto:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/zui/internal/app/DialogController$2;->val$vto:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/zui/internal/app/DialogController$2;->val$view:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 406
    iget-object v0, p0, Lcom/zui/internal/app/DialogController$2;->val$view:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextAlignment()I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-nez v0, :cond_2

    .line 407
    iget-object v0, p0, Lcom/zui/internal/app/DialogController$2;->val$view:Landroid/widget/TextView;

    const v2, 0x800013

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 408
    iget-object v0, p0, Lcom/zui/internal/app/DialogController$2;->val$view:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 409
    iget-object v0, p0, Lcom/zui/internal/app/DialogController$2;->val$view:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 412
    :cond_1
    iget-object v0, p0, Lcom/zui/internal/app/DialogController$2;->val$view:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextAlignment()I

    move-result v0

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-nez v0, :cond_2

    .line 413
    iget-object v0, p0, Lcom/zui/internal/app/DialogController$2;->val$view:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 414
    iget-object v0, p0, Lcom/zui/internal/app/DialogController$2;->val$view:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 415
    iget-object v0, p0, Lcom/zui/internal/app/DialogController$2;->val$view:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method
