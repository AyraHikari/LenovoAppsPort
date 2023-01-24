.class public Lcom/zui/gallery/filtershow/editors/EditorCaption;
.super Lcom/zui/gallery/filtershow/editors/BasicEditor;
.source "EditorCaption.java"


# static fields
.field public static final ID:I = 0x7f0800c7


# instance fields
.field private mFrameLayout:Landroid/widget/FrameLayout;

.field mImageCaption:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0800c7

    .line 50
    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/editors/BasicEditor;-><init>(I)V

    return-void
.end method


# virtual methods
.method public createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 65
    iput-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorCaption;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 66
    invoke-super {p0, p1, p2}, Lcom/zui/gallery/filtershow/editors/BasicEditor;->createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    .line 67
    new-instance p2, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-direct {p2, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorCaption;->mImageCaption:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorCaption;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorCaption;->mView:Landroid/view/View;

    .line 68
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorCaption;->mImageCaption:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-virtual {p1, p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->setEditor(Lcom/zui/gallery/filtershow/editors/EditorCaption;)V

    return-void
.end method

.method public reflectCurrentFilter()V
    .locals 5

    .line 73
    invoke-super {p0}, Lcom/zui/gallery/filtershow/editors/BasicEditor;->reflectCurrentFilter()V

    .line 74
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorCaption;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorCaption;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v1

    instance-of v1, v1, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorCaption;->mDrawRect:Lcom/zui/gallery/filtershow/caption/view/DrawRect;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->setVisibility(I)V

    .line 77
    check-cast v0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    .line 78
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorCaption;->mImageCaption:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->copy()Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    move-result-object v0

    iget-object v2, p0, Lcom/zui/gallery/filtershow/editors/EditorCaption;->mDrawRect:Lcom/zui/gallery/filtershow/caption/view/DrawRect;

    iget-object v3, p0, Lcom/zui/gallery/filtershow/editors/EditorCaption;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    iget-object v4, p0, Lcom/zui/gallery/filtershow/editors/EditorCaption;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->setCaptionRepresentation(Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;Lcom/zui/gallery/filtershow/caption/view/DrawRect;Lcom/zui/gallery/filtershow/imageshow/ImageShow;Landroid/widget/FrameLayout;)V

    :cond_0
    return-void
.end method

.method public setUtilityPanelUI(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 84
    invoke-super {p0, p1, p2}, Lcom/zui/gallery/filtershow/editors/BasicEditor;->setUtilityPanelUI(Landroid/view/View;Landroid/view/View;)V

    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mSeekBar is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorCaption;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mmmmmmm"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f0802b0

    .line 86
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorCaption;->mSeekBar:Landroid/widget/SeekBar;

    .line 87
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorCaption;->mSeekBar:Landroid/widget/SeekBar;

    const/16 p2, 0x8

    if-eqz p1, :cond_0

    .line 88
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorCaption;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorCaption;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorCaption;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setVisibility(I)V

    :cond_1
    const/4 p1, 0x1

    .line 91
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/editors/EditorCaption;->setMenuIcon(Z)V

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
