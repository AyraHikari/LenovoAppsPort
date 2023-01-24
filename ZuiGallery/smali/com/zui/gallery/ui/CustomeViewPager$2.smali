.class Lcom/zui/gallery/ui/CustomeViewPager$2;
.super Ljava/lang/Object;
.source "CustomeViewPager.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/ui/CustomeViewPager;->snackBack()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/ui/CustomeViewPager;


# direct methods
.method constructor <init>(Lcom/zui/gallery/ui/CustomeViewPager;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/zui/gallery/ui/CustomeViewPager$2;->this$0:Lcom/zui/gallery/ui/CustomeViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 138
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 139
    iget-object v0, p0, Lcom/zui/gallery/ui/CustomeViewPager$2;->this$0:Lcom/zui/gallery/ui/CustomeViewPager;

    invoke-static {v0}, Lcom/zui/gallery/ui/CustomeViewPager;->access$500(Lcom/zui/gallery/ui/CustomeViewPager;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/zui/gallery/ui/CustomeViewPager$2;->this$0:Lcom/zui/gallery/ui/CustomeViewPager;

    invoke-static {v2}, Lcom/zui/gallery/ui/CustomeViewPager;->access$500(Lcom/zui/gallery/ui/CustomeViewPager;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, p1

    iget-object v3, p0, Lcom/zui/gallery/ui/CustomeViewPager$2;->this$0:Lcom/zui/gallery/ui/CustomeViewPager;

    invoke-static {v3}, Lcom/zui/gallery/ui/CustomeViewPager;->access$500(Lcom/zui/gallery/ui/CustomeViewPager;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/zui/gallery/ui/CustomeViewPager;->layout(IIII)V

    return-void
.end method
