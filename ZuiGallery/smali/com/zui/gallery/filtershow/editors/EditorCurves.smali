.class public Lcom/zui/gallery/filtershow/editors/EditorCurves;
.super Lcom/zui/gallery/filtershow/editors/Editor;
.source "EditorCurves.java"


# static fields
.field public static final ID:I = 0x7f0801e7


# instance fields
.field mImageCurves:Lcom/zui/gallery/filtershow/imageshow/ImageCurves;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0801e7

    .line 33
    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/editors/Editor;-><init>(I)V

    return-void
.end method


# virtual methods
.method public createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 49
    invoke-super {p0, p1, p2}, Lcom/zui/gallery/filtershow/editors/Editor;->createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    .line 50
    new-instance p2, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;

    invoke-direct {p2, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorCurves;->mImageCurves:Lcom/zui/gallery/filtershow/imageshow/ImageCurves;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorCurves;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorCurves;->mView:Landroid/view/View;

    .line 51
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorCurves;->mImageCurves:Lcom/zui/gallery/filtershow/imageshow/ImageCurves;

    invoke-virtual {p1, p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->setEditor(Lcom/zui/gallery/filtershow/editors/EditorCurves;)V

    return-void
.end method

.method public reflectCurrentFilter()V
    .locals 2

    .line 56
    invoke-super {p0}, Lcom/zui/gallery/filtershow/editors/Editor;->reflectCurrentFilter()V

    .line 57
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorCurves;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorCurves;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v1

    instance-of v1, v1, Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;

    if-eqz v1, :cond_0

    .line 59
    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;

    .line 60
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorCurves;->mImageCurves:Lcom/zui/gallery/filtershow/imageshow/ImageCurves;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->setFilterDrawRepresentation(Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;)V

    :cond_0
    return-void
.end method

.method public setUtilityPanelUI(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 65
    invoke-super {p0, p1, p2}, Lcom/zui/gallery/filtershow/editors/Editor;->setUtilityPanelUI(Landroid/view/View;Landroid/view/View;)V

    const/4 p1, 0x1

    .line 66
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/editors/EditorCurves;->setMenuIcon(Z)V

    return-void
.end method

.method public showsPopupIndicator()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public showsSeekBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected updateText()V
    .locals 0

    return-void
.end method
