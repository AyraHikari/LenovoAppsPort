.class Lcom/zui/gallery/filtershow/FilterShowActivity$5;
.super Ljava/lang/Object;
.source "FilterShowActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/FilterShowActivity;->loadXML()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/FilterShowActivity;)V
    .locals 0

    .line 801
    iput-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$5;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 804
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$5;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$200(Lcom/zui/gallery/filtershow/FilterShowActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 805
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$5;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$200(Lcom/zui/gallery/filtershow/FilterShowActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$302(Lcom/zui/gallery/filtershow/FilterShowActivity;F)F

    .line 806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGlobalLayout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$5;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$300(Lcom/zui/gallery/filtershow/FilterShowActivity;)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "controlLayout"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$5;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$400(Lcom/zui/gallery/filtershow/FilterShowActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/gallery/util/DeviceTypeUtils;->isPad(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isLandscape:Z

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$5;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    const/16 v1, 0x28

    invoke-static {v0, v1}, Lcom/zui/gallery/util/GalleryUtils;->dp2px(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 812
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$5;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    const/16 v1, 0x26

    invoke-static {v0, v1}, Lcom/zui/gallery/util/GalleryUtils;->dp2px(Landroid/content/Context;I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 816
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$5;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    iget-object v1, v1, Lcom/zui/gallery/filtershow/FilterShowActivity;->mEditControl:Landroid/view/View;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$5;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v2}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$300(Lcom/zui/gallery/filtershow/FilterShowActivity;)F

    move-result v2

    int-to-float v0, v0

    sub-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 817
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$5;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    iget-object v0, v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mTextArea:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$5;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$500(Lcom/zui/gallery/filtershow/FilterShowActivity;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method
