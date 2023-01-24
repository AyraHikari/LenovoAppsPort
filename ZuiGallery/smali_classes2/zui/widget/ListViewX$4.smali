.class Lzui/widget/ListViewX$4;
.super Ljava/lang/Object;
.source "ListViewX.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/widget/ListViewX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzui/widget/ListViewX;


# direct methods
.method constructor <init>(Lzui/widget/ListViewX;)V
    .locals 0

    .line 2751
    iput-object p1, p0, Lzui/widget/ListViewX$4;->this$0:Lzui/widget/ListViewX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2754
    iget-object v0, p0, Lzui/widget/ListViewX$4;->this$0:Lzui/widget/ListViewX;

    invoke-static {v0}, Lzui/widget/ListViewX;->access$3000(Lzui/widget/ListViewX;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2755
    iget-object v0, p0, Lzui/widget/ListViewX$4;->this$0:Lzui/widget/ListViewX;

    invoke-static {v0}, Lzui/widget/ListViewX;->access$3000(Lzui/widget/ListViewX;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 2756
    iget-object v0, p0, Lzui/widget/ListViewX$4;->this$0:Lzui/widget/ListViewX;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lzui/widget/ListViewX;->access$3002(Lzui/widget/ListViewX;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 2759
    :cond_0
    iget-object v0, p0, Lzui/widget/ListViewX$4;->this$0:Lzui/widget/ListViewX;

    invoke-static {v0}, Lzui/widget/ListViewX;->access$3100(Lzui/widget/ListViewX;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzui/widget/ListViewX$4;->this$0:Lzui/widget/ListViewX;

    invoke-static {v0}, Lzui/widget/ListViewX;->access$1500(Lzui/widget/ListViewX;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 2760
    iget-object v0, p0, Lzui/widget/ListViewX$4;->this$0:Lzui/widget/ListViewX;

    invoke-static {v0}, Lzui/widget/ListViewX;->access$3200(Lzui/widget/ListViewX;)V

    .line 2763
    :cond_1
    iget-object v0, p0, Lzui/widget/ListViewX$4;->this$0:Lzui/widget/ListViewX;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lzui/widget/ListViewX;->access$102(Lzui/widget/ListViewX;I)I

    .line 2764
    iget-object v0, p0, Lzui/widget/ListViewX$4;->this$0:Lzui/widget/ListViewX;

    invoke-virtual {v0}, Lzui/widget/ListViewX;->bounceAnimation()V

    return-void
.end method
