.class Lcom/zui/gallery/filtershow/category/MainPanel$7;
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

    .line 365
    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/MainPanel$7;->this$0:Lcom/zui/gallery/filtershow/category/MainPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 369
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/MainPanel$7;->this$0:Lcom/zui/gallery/filtershow/category/MainPanel;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/category/MainPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/FilterShowActivity;

    .line 372
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "EditorPanel"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 373
    check-cast v0, Lcom/zui/gallery/filtershow/editors/EditorPanel;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 374
    iget-object v2, v0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mImageCurvesPanel:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 375
    iget-object v0, v0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mImageCurvesPanel:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 378
    :cond_0
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getCurrentPanel()I

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    return-void

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/MainPanel$7;->this$0:Lcom/zui/gallery/filtershow/category/MainPanel;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/category/MainPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/zui/gallery/util/GroupUtils;->setIsFromConfigChange(Landroid/content/Context;Z)V

    .line 380
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/MainPanel$7;->this$0:Lcom/zui/gallery/filtershow/category/MainPanel;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/category/MainPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/zui/gallery/util/GroupUtils;->enterFiltershowCaption(Landroid/content/Context;Z)V

    .line 382
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/MainPanel$7;->this$0:Lcom/zui/gallery/filtershow/category/MainPanel;

    invoke-virtual {v0, v2}, Lcom/zui/gallery/filtershow/category/MainPanel;->showPanel(I)V

    .line 384
    iget-object v0, p1, Lcom/zui/gallery/filtershow/FilterShowActivity;->mEditControl:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 385
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->showDefaultImageView()V

    return-void
.end method
