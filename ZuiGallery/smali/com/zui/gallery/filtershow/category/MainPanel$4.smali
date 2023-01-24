.class Lcom/zui/gallery/filtershow/category/MainPanel$4;
.super Ljava/lang/Object;
.source "MainPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/category/MainPanel;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/category/MainPanel;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/category/MainPanel;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/MainPanel$4;->this$0:Lcom/zui/gallery/filtershow/category/MainPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 302
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/MainPanel$4;->this$0:Lcom/zui/gallery/filtershow/category/MainPanel;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/category/MainPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zui/gallery/util/GroupUtils;->setIsFromConfigChange(Landroid/content/Context;Z)V

    .line 303
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/MainPanel$4;->this$0:Lcom/zui/gallery/filtershow/category/MainPanel;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/category/MainPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/zui/gallery/util/GroupUtils;->enterFiltershowCaption(Landroid/content/Context;Z)V

    .line 304
    sget-boolean v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isLandscape:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/gallery/util/DeviceTypeUtils;->isPad(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 306
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/MainPanel$4;->this$0:Lcom/zui/gallery/filtershow/category/MainPanel;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/category/MainPanel;->access$100(Lcom/zui/gallery/filtershow/category/MainPanel;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, -0x2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    const-string p1, "bottomTEST"

    const-string v0, "onClick: 333"

    .line 308
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/MainPanel$4;->this$0:Lcom/zui/gallery/filtershow/category/MainPanel;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/category/MainPanel;->showPanel(I)V

    .line 310
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/MainPanel$4;->this$0:Lcom/zui/gallery/filtershow/category/MainPanel;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/category/MainPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/FilterShowActivity;

    .line 311
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->resetPanlWidth()V

    .line 312
    iget-object v0, p1, Lcom/zui/gallery/filtershow/FilterShowActivity;->mEditControl:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 313
    sget-boolean v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isLandscape:Z

    const v2, 0x7f060227

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p1, Lcom/zui/gallery/filtershow/FilterShowActivity;->framelayoutMainpanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v3, p0, Lcom/zui/gallery/filtershow/category/MainPanel$4;->this$0:Lcom/zui/gallery/filtershow/category/MainPanel;

    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/category/MainPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 316
    :cond_1
    iget-object v0, p1, Lcom/zui/gallery/filtershow/FilterShowActivity;->framelayoutMainpanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v3, p0, Lcom/zui/gallery/filtershow/category/MainPanel$4;->this$0:Lcom/zui/gallery/filtershow/category/MainPanel;

    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/category/MainPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 318
    :goto_0
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->showDefaultImageView()V

    .line 320
    sget-object p1, Lcom/zui/gallery/util/AvatarUtils$Catagory;->PHOTODETAILPAGE:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    sget-object v0, Lcom/zui/gallery/util/AvatarUtils$Action;->PHOTO_ADJUST:Lcom/zui/gallery/util/AvatarUtils$Action;

    const-string v2, ""

    invoke-static {p1, v0, v2, v1}, Lcom/zui/gallery/util/AvatarUtils;->trackEvent(Lcom/zui/gallery/util/AvatarUtils$Catagory;Lcom/zui/gallery/util/AvatarUtils$Action;Ljava/lang/String;I)V

    return-void
.end method
