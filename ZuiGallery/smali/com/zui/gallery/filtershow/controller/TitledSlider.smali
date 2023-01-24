.class public Lcom/zui/gallery/filtershow/controller/TitledSlider;
.super Ljava/lang/Object;
.source "TitledSlider.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/controller/Control;


# instance fields
.field private final LOGTAG:Ljava/lang/String;

.field private mControlName:Landroid/widget/TextView;

.field private mControlValue:Landroid/widget/TextView;

.field mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

.field protected mLayoutID:I

.field protected mParameter:Lcom/zui/gallery/filtershow/controller/ParameterInteger;

.field private mSeekBar:Landroid/widget/SeekBar;

.field mTopView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ParametricEditor"

    .line 33
    iput-object v0, p0, Lcom/zui/gallery/filtershow/controller/TitledSlider;->LOGTAG:Ljava/lang/String;

    const v0, 0x7f0b0052

    .line 40
    iput v0, p0, Lcom/zui/gallery/filtershow/controller/TitledSlider;->mLayoutID:I

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/filtershow/controller/TitledSlider;)Landroid/widget/TextView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/zui/gallery/filtershow/controller/TitledSlider;->mControlName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zui/gallery/filtershow/controller/TitledSlider;)Landroid/widget/TextView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/zui/gallery/filtershow/controller/TitledSlider;->mControlValue:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public RestoreScreenChange()V
    .locals 0

    return-void
.end method

.method public getTopView()Landroid/view/View;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/TitledSlider;->mTopView:Landroid/view/View;

    return-object v0
.end method

.method public setPrameter(Lcom/zui/gallery/filtershow/controller/Parameter;)V
    .locals 0

    .line 84
    check-cast p1, Lcom/zui/gallery/filtershow/controller/ParameterInteger;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/TitledSlider;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterInteger;

    .line 85
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/TitledSlider;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/controller/TitledSlider;->updateUI()V

    :cond_0
    return-void
.end method

.method public setUp(Landroid/view/ViewGroup;Lcom/zui/gallery/filtershow/controller/Parameter;Lcom/zui/gallery/filtershow/editors/Editor;)V
    .locals 1

    .line 44
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 45
    iput-object p3, p0, Lcom/zui/gallery/filtershow/controller/TitledSlider;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    .line 46
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 47
    check-cast p2, Lcom/zui/gallery/filtershow/controller/ParameterInteger;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/controller/TitledSlider;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterInteger;

    const-string p2, "layout_inflater"

    .line 49
    invoke-virtual {p3, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 50
    iget p3, p0, Lcom/zui/gallery/filtershow/controller/TitledSlider;->mLayoutID:I

    const/4 v0, 0x1

    invoke-virtual {p2, p3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/TitledSlider;->mTopView:Landroid/view/View;

    const/4 p2, 0x0

    .line 51
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 52
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/TitledSlider;->mTopView:Landroid/view/View;

    const p2, 0x7f080100

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/TitledSlider;->mSeekBar:Landroid/widget/SeekBar;

    .line 53
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/TitledSlider;->mTopView:Landroid/view/View;

    const p2, 0x7f0800fb

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/TitledSlider;->mControlName:Landroid/widget/TextView;

    .line 54
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/TitledSlider;->mTopView:Landroid/view/View;

    const p2, 0x7f0800ff

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/TitledSlider;->mControlValue:Landroid/widget/TextView;

    .line 55
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/controller/TitledSlider;->updateUI()V

    .line 56
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/TitledSlider;->mSeekBar:Landroid/widget/SeekBar;

    new-instance p2, Lcom/zui/gallery/filtershow/controller/TitledSlider$1;

    invoke-direct {p2, p0}, Lcom/zui/gallery/filtershow/controller/TitledSlider$1;-><init>(Lcom/zui/gallery/filtershow/controller/TitledSlider;)V

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public updateUI()V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/TitledSlider;->mControlName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/TitledSlider;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterInteger;

    invoke-interface {v0}, Lcom/zui/gallery/filtershow/controller/ParameterInteger;->getParameterName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/TitledSlider;->mControlName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/controller/TitledSlider;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterInteger;

    invoke-interface {v1}, Lcom/zui/gallery/filtershow/controller/ParameterInteger;->getParameterName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/TitledSlider;->mControlValue:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 95
    iget-object v1, p0, Lcom/zui/gallery/filtershow/controller/TitledSlider;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterInteger;

    .line 96
    invoke-interface {v1}, Lcom/zui/gallery/filtershow/controller/ParameterInteger;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/TitledSlider;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/controller/TitledSlider;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterInteger;

    invoke-interface {v1}, Lcom/zui/gallery/filtershow/controller/ParameterInteger;->getMaximum()I

    move-result v1

    iget-object v2, p0, Lcom/zui/gallery/filtershow/controller/TitledSlider;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterInteger;

    invoke-interface {v2}, Lcom/zui/gallery/filtershow/controller/ParameterInteger;->getMinimum()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 99
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/TitledSlider;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/controller/TitledSlider;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterInteger;

    invoke-interface {v1}, Lcom/zui/gallery/filtershow/controller/ParameterInteger;->getValue()I

    move-result v1

    iget-object v2, p0, Lcom/zui/gallery/filtershow/controller/TitledSlider;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterInteger;

    invoke-interface {v2}, Lcom/zui/gallery/filtershow/controller/ParameterInteger;->getMinimum()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 100
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/TitledSlider;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/editors/Editor;->commitLocalRepresentation()V

    return-void
.end method
