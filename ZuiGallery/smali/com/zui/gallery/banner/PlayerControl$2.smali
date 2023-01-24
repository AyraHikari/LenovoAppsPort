.class Lcom/zui/gallery/banner/PlayerControl$2;
.super Ljava/lang/Object;
.source "PlayerControl.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/banner/PlayerControl;->startShowOrHideAnimation(Landroid/view/View;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/banner/PlayerControl;

.field final synthetic val$isIn:Z


# direct methods
.method constructor <init>(Lcom/zui/gallery/banner/PlayerControl;Z)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/zui/gallery/banner/PlayerControl$2;->this$0:Lcom/zui/gallery/banner/PlayerControl;

    iput-boolean p2, p0, Lcom/zui/gallery/banner/PlayerControl$2;->val$isIn:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 240
    iget-object p1, p0, Lcom/zui/gallery/banner/PlayerControl$2;->this$0:Lcom/zui/gallery/banner/PlayerControl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zui/gallery/banner/PlayerControl;->access$302(Lcom/zui/gallery/banner/PlayerControl;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 232
    iget-object p1, p0, Lcom/zui/gallery/banner/PlayerControl$2;->this$0:Lcom/zui/gallery/banner/PlayerControl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zui/gallery/banner/PlayerControl;->access$302(Lcom/zui/gallery/banner/PlayerControl;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 223
    iget-object p1, p0, Lcom/zui/gallery/banner/PlayerControl$2;->this$0:Lcom/zui/gallery/banner/PlayerControl;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/zui/gallery/banner/PlayerControl;->access$302(Lcom/zui/gallery/banner/PlayerControl;Z)Z

    return-void
.end method
