.class Lzui/widget/ListViewX$2;
.super Ljava/lang/Object;
.source "ListViewX.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzui/widget/ListViewX;->onEdgeReached(Landroid/widget/AbsListView;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzui/widget/ListViewX;

.field final synthetic val$delta:I


# direct methods
.method constructor <init>(Lzui/widget/ListViewX;I)V
    .locals 0

    .line 1333
    iput-object p1, p0, Lzui/widget/ListViewX$2;->this$0:Lzui/widget/ListViewX;

    iput p2, p0, Lzui/widget/ListViewX$2;->val$delta:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1335
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1336
    iget-object v0, p0, Lzui/widget/ListViewX$2;->this$0:Lzui/widget/ListViewX;

    invoke-static {v0}, Lzui/widget/ListViewX;->access$200(Lzui/widget/ListViewX;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    invoke-static {v0, p1}, Lzui/widget/ListViewX;->access$102(Lzui/widget/ListViewX;I)I

    .line 1337
    iget-object p1, p0, Lzui/widget/ListViewX$2;->this$0:Lzui/widget/ListViewX;

    iget v0, p0, Lzui/widget/ListViewX$2;->val$delta:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lzui/widget/ListViewX;->access$300(Lzui/widget/ListViewX;IZ)V

    return-void
.end method
