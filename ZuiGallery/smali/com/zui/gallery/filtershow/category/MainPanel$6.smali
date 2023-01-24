.class Lcom/zui/gallery/filtershow/category/MainPanel$6;
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

    .line 345
    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/MainPanel$6;->this$0:Lcom/zui/gallery/filtershow/category/MainPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 348
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/MainPanel$6;->this$0:Lcom/zui/gallery/filtershow/category/MainPanel;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/category/MainPanel;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zui/gallery/util/GroupUtils;->setIsFromConfigChange(Landroid/content/Context;Z)V

    .line 349
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/MainPanel$6;->this$0:Lcom/zui/gallery/filtershow/category/MainPanel;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/category/MainPanel;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/zui/gallery/util/GroupUtils;->enterFiltershowCaption(Landroid/content/Context;Z)V

    const-string p1, "finalTEST"

    const-string v1, "onClick: draw"

    .line 351
    invoke-static {p1, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/MainPanel$6;->this$0:Lcom/zui/gallery/filtershow/category/MainPanel;

    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Lcom/zui/gallery/filtershow/category/MainPanel;->showPanel(I)V

    const/high16 p1, 0x42700000    # 60.0f

    .line 353
    sput p1, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->colorPos:F

    const/16 p1, 0xa

    .line 354
    sput p1, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mIndex:I

    const/16 p1, 0x1e

    .line 355
    sput p1, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->mIndex:I

    .line 356
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/MainPanel$6;->this$0:Lcom/zui/gallery/filtershow/category/MainPanel;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/category/MainPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/FilterShowActivity;

    const/4 v1, 0x1

    .line 358
    sput-boolean v1, Lcom/zui/gallery/filtershow/FilterShowActivity;->isclick:Z

    .line 359
    iget-object p1, p1, Lcom/zui/gallery/filtershow/FilterShowActivity;->mEditControl:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 361
    sget-object p1, Lcom/zui/gallery/util/AvatarUtils$Catagory;->PHOTODETAILPAGE:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    sget-object v1, Lcom/zui/gallery/util/AvatarUtils$Action;->PHOTO_BRUSH:Lcom/zui/gallery/util/AvatarUtils$Action;

    const-string v2, ""

    invoke-static {p1, v1, v2, v0}, Lcom/zui/gallery/util/AvatarUtils;->trackEvent(Lcom/zui/gallery/util/AvatarUtils$Catagory;Lcom/zui/gallery/util/AvatarUtils$Action;Ljava/lang/String;I)V

    return-void
.end method
