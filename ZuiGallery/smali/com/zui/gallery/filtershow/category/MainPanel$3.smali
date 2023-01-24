.class Lcom/zui/gallery/filtershow/category/MainPanel$3;
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

    .line 276
    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/MainPanel$3;->this$0:Lcom/zui/gallery/filtershow/category/MainPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 279
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/MainPanel$3;->this$0:Lcom/zui/gallery/filtershow/category/MainPanel;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/category/MainPanel;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zui/gallery/util/GroupUtils;->setIsFromConfigChange(Landroid/content/Context;Z)V

    .line 280
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/MainPanel$3;->this$0:Lcom/zui/gallery/filtershow/category/MainPanel;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/category/MainPanel;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/zui/gallery/util/GroupUtils;->enterFiltershowCaption(Landroid/content/Context;Z)V

    const-string p1, "bottomTEST"

    const-string v1, "onClick: 222"

    .line 282
    invoke-static {p1, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/MainPanel$3;->this$0:Lcom/zui/gallery/filtershow/category/MainPanel;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/category/MainPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/FilterShowActivity;

    .line 284
    iput-boolean v0, p1, Lcom/zui/gallery/filtershow/FilterShowActivity;->mIsVertical:Z

    const/4 v1, 0x0

    .line 285
    invoke-virtual {p1, v1, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->resetSaveRectfAndCropType(Landroid/graphics/RectF;I)V

    .line 287
    sput-boolean v0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->isMirrorCancel:Z

    .line 289
    iget-object v1, p0, Lcom/zui/gallery/filtershow/category/MainPanel$3;->this$0:Lcom/zui/gallery/filtershow/category/MainPanel;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/zui/gallery/filtershow/category/MainPanel;->showPanel(I)V

    .line 291
    iget-object v1, p1, Lcom/zui/gallery/filtershow/FilterShowActivity;->mEditControl:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 293
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->isModifyPicture()V

    .line 294
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->showDefaultImageView()V

    .line 296
    sget-object p1, Lcom/zui/gallery/util/AvatarUtils$Catagory;->PHOTODETAILPAGE:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    sget-object v1, Lcom/zui/gallery/util/AvatarUtils$Action;->PHOTO_CROP:Lcom/zui/gallery/util/AvatarUtils$Action;

    const-string v2, ""

    invoke-static {p1, v1, v2, v0}, Lcom/zui/gallery/util/AvatarUtils;->trackEvent(Lcom/zui/gallery/util/AvatarUtils$Catagory;Lcom/zui/gallery/util/AvatarUtils$Action;Ljava/lang/String;I)V

    return-void
.end method
