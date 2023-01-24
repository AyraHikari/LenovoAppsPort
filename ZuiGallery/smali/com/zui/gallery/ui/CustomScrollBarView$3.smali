.class Lcom/zui/gallery/ui/CustomScrollBarView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CustomScrollBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/ui/CustomScrollBarView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/ui/CustomScrollBarView;


# direct methods
.method constructor <init>(Lcom/zui/gallery/ui/CustomScrollBarView;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/zui/gallery/ui/CustomScrollBarView$3;->this$0:Lcom/zui/gallery/ui/CustomScrollBarView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 229
    iget-object p1, p0, Lcom/zui/gallery/ui/CustomScrollBarView$3;->this$0:Lcom/zui/gallery/ui/CustomScrollBarView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zui/gallery/ui/CustomScrollBarView;->access$500(Lcom/zui/gallery/ui/CustomScrollBarView;Z)V

    return-void
.end method
