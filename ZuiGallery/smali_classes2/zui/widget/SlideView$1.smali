.class Lzui/widget/SlideView$1;
.super Ljava/lang/Object;
.source "SlideView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/widget/SlideView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzui/widget/SlideView;


# direct methods
.method constructor <init>(Lzui/widget/SlideView;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lzui/widget/SlideView$1;->this$0:Lzui/widget/SlideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 251
    iget-object p1, p0, Lzui/widget/SlideView$1;->this$0:Lzui/widget/SlideView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lzui/widget/SlideView;->access$002(Lzui/widget/SlideView;Z)Z

    .line 252
    iget-object p1, p0, Lzui/widget/SlideView$1;->this$0:Lzui/widget/SlideView;

    invoke-static {p1}, Lzui/widget/SlideView;->access$100(Lzui/widget/SlideView;)I

    move-result p1

    iget-object v0, p0, Lzui/widget/SlideView$1;->this$0:Lzui/widget/SlideView;

    invoke-static {v0}, Lzui/widget/SlideView;->access$200(Lzui/widget/SlideView;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 253
    iget-object p1, p0, Lzui/widget/SlideView$1;->this$0:Lzui/widget/SlideView;

    invoke-static {p1}, Lzui/widget/SlideView;->access$300(Lzui/widget/SlideView;)Landroid/widget/CheckBox;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
