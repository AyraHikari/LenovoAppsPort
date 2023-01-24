.class Lzui/widget/SimpleToolbar$1;
.super Ljava/lang/Object;
.source "SimpleToolbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzui/widget/SimpleToolbar;->ensureCollapseButtonView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzui/widget/SimpleToolbar;


# direct methods
.method constructor <init>(Lzui/widget/SimpleToolbar;)V
    .locals 0

    .line 785
    iput-object p1, p0, Lzui/widget/SimpleToolbar$1;->this$0:Lzui/widget/SimpleToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 788
    iget-object p1, p0, Lzui/widget/SimpleToolbar$1;->this$0:Lzui/widget/SimpleToolbar;

    invoke-static {p1}, Lzui/widget/SimpleToolbar;->access$000(Lzui/widget/SimpleToolbar;)Lzui/widget/SimpleToolbar$MenuPresenter;

    move-result-object p1

    if-nez p1, :cond_0

    .line 789
    iget-object p1, p0, Lzui/widget/SimpleToolbar$1;->this$0:Lzui/widget/SimpleToolbar;

    new-instance v0, Lzui/widget/SimpleToolbar$MenuPresenter;

    iget-object v1, p0, Lzui/widget/SimpleToolbar$1;->this$0:Lzui/widget/SimpleToolbar;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lzui/widget/SimpleToolbar$MenuPresenter;-><init>(Lzui/widget/SimpleToolbar;Lzui/widget/SimpleToolbar$1;)V

    invoke-static {p1, v0}, Lzui/widget/SimpleToolbar;->access$002(Lzui/widget/SimpleToolbar;Lzui/widget/SimpleToolbar$MenuPresenter;)Lzui/widget/SimpleToolbar$MenuPresenter;

    .line 791
    :cond_0
    iget-object p1, p0, Lzui/widget/SimpleToolbar$1;->this$0:Lzui/widget/SimpleToolbar;

    invoke-static {p1}, Lzui/widget/SimpleToolbar;->access$000(Lzui/widget/SimpleToolbar;)Lzui/widget/SimpleToolbar$MenuPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lzui/widget/SimpleToolbar$MenuPresenter;->handleClick()V

    return-void
.end method
