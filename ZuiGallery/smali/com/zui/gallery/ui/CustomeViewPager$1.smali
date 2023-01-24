.class Lcom/zui/gallery/ui/CustomeViewPager$1;
.super Ljava/lang/Object;
.source "CustomeViewPager.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/ui/CustomeViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private left:Z

.field private right:Z

.field final synthetic this$0:Lcom/zui/gallery/ui/CustomeViewPager;


# direct methods
.method constructor <init>(Lcom/zui/gallery/ui/CustomeViewPager;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/zui/gallery/ui/CustomeViewPager$1;->this$0:Lcom/zui/gallery/ui/CustomeViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lcom/zui/gallery/ui/CustomeViewPager$1;->right:Z

    .line 59
    iput-boolean p1, p0, Lcom/zui/gallery/ui/CustomeViewPager$1;->left:Z

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/zui/gallery/ui/CustomeViewPager$1;->this$0:Lcom/zui/gallery/ui/CustomeViewPager;

    invoke-static {v0}, Lcom/zui/gallery/ui/CustomeViewPager;->access$400(Lcom/zui/gallery/ui/CustomeViewPager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    .line 69
    iget-object p3, p0, Lcom/zui/gallery/ui/CustomeViewPager$1;->this$0:Lcom/zui/gallery/ui/CustomeViewPager;

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    invoke-static {p3}, Lcom/zui/gallery/ui/CustomeViewPager;->access$200(Lcom/zui/gallery/ui/CustomeViewPager;)I

    move-result v0

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-static {p3, v1}, Lcom/zui/gallery/ui/CustomeViewPager;->access$102(Lcom/zui/gallery/ui/CustomeViewPager;Z)Z

    .line 76
    iget-object p3, p0, Lcom/zui/gallery/ui/CustomeViewPager$1;->this$0:Lcom/zui/gallery/ui/CustomeViewPager;

    invoke-static {p3, p2}, Lcom/zui/gallery/ui/CustomeViewPager;->access$302(Lcom/zui/gallery/ui/CustomeViewPager;F)F

    .line 77
    iget-object p3, p0, Lcom/zui/gallery/ui/CustomeViewPager$1;->this$0:Lcom/zui/gallery/ui/CustomeViewPager;

    invoke-static {p3}, Lcom/zui/gallery/ui/CustomeViewPager;->access$000(Lcom/zui/gallery/ui/CustomeViewPager;)Lcom/zui/gallery/ui/IndicatorView;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/zui/gallery/ui/IndicatorView;->onScroll(IF)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/zui/gallery/ui/CustomeViewPager$1;->this$0:Lcom/zui/gallery/ui/CustomeViewPager;

    invoke-static {v0}, Lcom/zui/gallery/ui/CustomeViewPager;->access$000(Lcom/zui/gallery/ui/CustomeViewPager;)Lcom/zui/gallery/ui/IndicatorView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/IndicatorView;->onPageChange(I)V

    return-void
.end method
