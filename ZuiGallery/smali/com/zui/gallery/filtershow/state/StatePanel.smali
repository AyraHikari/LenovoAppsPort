.class public Lcom/zui/gallery/filtershow/state/StatePanel;
.super Landroidx/fragment/app/Fragment;
.source "StatePanel.java"


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String; = "StatePanel"

.field private static final LOGTAG:Ljava/lang/String; = "StatePanel"


# instance fields
.field private mMainPanel:Lcom/zui/gallery/filtershow/category/MainPanel;

.field private mMainView:Landroid/widget/LinearLayout;

.field private mToggleVersionsPanel:Landroid/widget/ImageButton;

.field private track:Lcom/zui/gallery/filtershow/state/StatePanelTrack;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p2, 0x7f0b0069

    const/4 p3, 0x0

    .line 48
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/state/StatePanel;->mMainView:Landroid/widget/LinearLayout;

    const p2, 0x7f08021f

    .line 50
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 51
    check-cast p1, Lcom/zui/gallery/filtershow/state/StatePanelTrack;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/state/StatePanel;->track:Lcom/zui/gallery/filtershow/state/StatePanelTrack;

    .line 52
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getState()Lcom/zui/gallery/filtershow/state/StateAdapter;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->setAdapter(Lcom/zui/gallery/filtershow/state/StateAdapter;)V

    .line 53
    iget-object p1, p0, Lcom/zui/gallery/filtershow/state/StatePanel;->mMainView:Landroid/widget/LinearLayout;

    const p2, 0x7f080376

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/state/StatePanel;->mToggleVersionsPanel:Landroid/widget/ImageButton;

    .line 54
    invoke-static {}, Lcom/zui/gallery/util/FilterShowHelper;->shouldUseVersions()Z

    move-result p1

    const/16 p2, 0x8

    if-eqz p1, :cond_3

    .line 55
    iget-object p1, p0, Lcom/zui/gallery/filtershow/state/StatePanel;->mToggleVersionsPanel:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result p1

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lcom/zui/gallery/filtershow/state/StatePanel;->mToggleVersionsPanel:Landroid/widget/ImageButton;

    .line 56
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 57
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/state/StatePanel;->mToggleVersionsPanel:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 58
    iget-object p1, p0, Lcom/zui/gallery/filtershow/state/StatePanel;->mToggleVersionsPanel:Landroid/widget/ImageButton;

    invoke-virtual {p1, p3}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 60
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/filtershow/state/StatePanel;->mMainPanel:Lcom/zui/gallery/filtershow/category/MainPanel;

    if-eqz p1, :cond_2

    .line 61
    iget-object p2, p0, Lcom/zui/gallery/filtershow/state/StatePanel;->mToggleVersionsPanel:Landroid/widget/ImageButton;

    invoke-virtual {p1, p2}, Lcom/zui/gallery/filtershow/category/MainPanel;->setToggleVersionsPanelButton(Landroid/widget/ImageButton;)V

    goto :goto_0

    .line 62
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/filtershow/state/StatePanel;->mToggleVersionsPanel:Landroid/widget/ImageButton;

    if-eqz p1, :cond_4

    .line 63
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 66
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/filtershow/state/StatePanel;->mToggleVersionsPanel:Landroid/widget/ImageButton;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 68
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/state/StatePanel;->mMainView:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method public setMainPanel(Lcom/zui/gallery/filtershow/category/MainPanel;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/zui/gallery/filtershow/state/StatePanel;->mMainPanel:Lcom/zui/gallery/filtershow/category/MainPanel;

    return-void
.end method
