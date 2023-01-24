.class Lcom/zui/gallery/app/PhotoPageBottomControls$1;
.super Ljava/lang/Object;
.source "PhotoPageBottomControls.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/PhotoPageBottomControls;->animDelete(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/PhotoPageBottomControls;

.field final synthetic val$bStart:Z


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/PhotoPageBottomControls;Z)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/zui/gallery/app/PhotoPageBottomControls$1;->this$0:Lcom/zui/gallery/app/PhotoPageBottomControls;

    iput-boolean p2, p0, Lcom/zui/gallery/app/PhotoPageBottomControls$1;->val$bStart:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 355
    iget-boolean p1, p0, Lcom/zui/gallery/app/PhotoPageBottomControls$1;->val$bStart:Z

    if-nez p1, :cond_0

    .line 356
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPageBottomControls$1;->this$0:Lcom/zui/gallery/app/PhotoPageBottomControls;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPageBottomControls;->access$000(Lcom/zui/gallery/app/PhotoPageBottomControls;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 357
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPageBottomControls$1;->this$0:Lcom/zui/gallery/app/PhotoPageBottomControls;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPageBottomControls;->access$100(Lcom/zui/gallery/app/PhotoPageBottomControls;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
