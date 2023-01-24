.class public Lcom/zui/gallery/filtershow/controller/ActionSlider;
.super Lcom/zui/gallery/filtershow/controller/TitledSlider;
.source "ActionSlider.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "ActionSlider"


# instance fields
.field mLeftButton:Landroid/widget/ImageButton;

.field mRightButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/controller/TitledSlider;-><init>()V

    const v0, 0x7f0b004e

    .line 34
    iput v0, p0, Lcom/zui/gallery/filtershow/controller/ActionSlider;->mLayoutID:I

    return-void
.end method


# virtual methods
.method public setUp(Landroid/view/ViewGroup;Lcom/zui/gallery/filtershow/controller/Parameter;Lcom/zui/gallery/filtershow/editors/Editor;)V
    .locals 0

    .line 39
    invoke-super {p0, p1, p2, p3}, Lcom/zui/gallery/filtershow/controller/TitledSlider;->setUp(Landroid/view/ViewGroup;Lcom/zui/gallery/filtershow/controller/Parameter;Lcom/zui/gallery/filtershow/editors/Editor;)V

    .line 40
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/ActionSlider;->mTopView:Landroid/view/View;

    const p2, 0x7f080212

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/ActionSlider;->mLeftButton:Landroid/widget/ImageButton;

    .line 41
    new-instance p2, Lcom/zui/gallery/filtershow/controller/ActionSlider$1;

    invoke-direct {p2, p0}, Lcom/zui/gallery/filtershow/controller/ActionSlider$1;-><init>(Lcom/zui/gallery/filtershow/controller/ActionSlider;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/ActionSlider;->mTopView:Landroid/view/View;

    const p2, 0x7f0802c8

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/ActionSlider;->mRightButton:Landroid/widget/ImageButton;

    .line 50
    new-instance p2, Lcom/zui/gallery/filtershow/controller/ActionSlider$2;

    invoke-direct {p2, p0}, Lcom/zui/gallery/filtershow/controller/ActionSlider$2;-><init>(Lcom/zui/gallery/filtershow/controller/ActionSlider;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/controller/ActionSlider;->updateUI()V

    return-void
.end method

.method public updateUI()V
    .locals 2

    .line 62
    invoke-super {p0}, Lcom/zui/gallery/filtershow/controller/TitledSlider;->updateUI()V

    .line 63
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/ActionSlider;->mLeftButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/ActionSlider;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterInteger;

    check-cast v0, Lcom/zui/gallery/filtershow/controller/ParameterActionAndInt;

    invoke-interface {v0}, Lcom/zui/gallery/filtershow/controller/ParameterActionAndInt;->getLeftIcon()I

    move-result v0

    .line 65
    iget-object v1, p0, Lcom/zui/gallery/filtershow/controller/ActionSlider;->mLeftButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/ActionSlider;->mRightButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/ActionSlider;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterInteger;

    check-cast v0, Lcom/zui/gallery/filtershow/controller/ParameterActionAndInt;

    invoke-interface {v0}, Lcom/zui/gallery/filtershow/controller/ParameterActionAndInt;->getRightIcon()I

    move-result v0

    .line 69
    iget-object v1, p0, Lcom/zui/gallery/filtershow/controller/ActionSlider;->mRightButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_1
    return-void
.end method
