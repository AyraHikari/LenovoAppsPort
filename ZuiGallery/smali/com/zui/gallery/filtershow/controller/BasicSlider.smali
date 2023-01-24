.class public Lcom/zui/gallery/filtershow/controller/BasicSlider;
.super Ljava/lang/Object;
.source "BasicSlider.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/controller/Control;


# static fields
.field private static CurrentEditorName:Ljava/lang/String; = ""

.field private static LastEditorName:Ljava/lang/String; = ""


# instance fields
.field mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

.field private mHighEditSeekbar:Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;

.field private mParameter:Lcom/zui/gallery/filtershow/controller/ParameterInteger;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekbarListener:Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage$SeekbarListener;

.field private mTextView:Landroid/widget/TextView;

.field seekBarBallsID:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 43
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/controller/BasicSlider;->seekBarBallsID:[I

    return-void

    :array_0
    .array-data 4
        0x7f07013f
        0x7f07013e
    .end array-data
.end method

.method static synthetic access$000(Lcom/zui/gallery/filtershow/controller/BasicSlider;)Lcom/zui/gallery/filtershow/controller/ParameterInteger;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/zui/gallery/filtershow/controller/BasicSlider;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterInteger;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zui/gallery/filtershow/controller/BasicSlider;)Landroid/widget/TextView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/zui/gallery/filtershow/controller/BasicSlider;->mTextView:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public RestoreScreenChange()V
    .locals 0

    return-void
.end method

.method public getTopView()Landroid/view/View;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/BasicSlider;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public setPrameter(Lcom/zui/gallery/filtershow/controller/Parameter;)V
    .locals 0

    .line 129
    check-cast p1, Lcom/zui/gallery/filtershow/controller/ParameterInteger;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/BasicSlider;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterInteger;

    .line 130
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/BasicSlider;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz p1, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/controller/BasicSlider;->updateUI()V

    :cond_0
    return-void
.end method

.method public setUp(Landroid/view/ViewGroup;Lcom/zui/gallery/filtershow/controller/Parameter;Lcom/zui/gallery/filtershow/editors/Editor;)V
    .locals 8

    .line 51
    iput-object p3, p0, Lcom/zui/gallery/filtershow/controller/BasicSlider;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    .line 52
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 53
    check-cast p2, Lcom/zui/gallery/filtershow/controller/ParameterInteger;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/controller/BasicSlider;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterInteger;

    .line 59
    sget-object p2, Lcom/zui/gallery/filtershow/controller/BasicSlider;->CurrentEditorName:Ljava/lang/String;

    sput-object p2, Lcom/zui/gallery/filtershow/controller/BasicSlider;->LastEditorName:Ljava/lang/String;

    .line 60
    invoke-virtual {p3}, Lcom/zui/gallery/filtershow/editors/Editor;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getName()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/zui/gallery/filtershow/controller/BasicSlider;->CurrentEditorName:Ljava/lang/String;

    const/4 p2, 0x0

    .line 62
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    const p2, 0x7f0802f8

    .line 63
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    if-eqz p2, :cond_0

    const p3, 0x7f080251

    .line 66
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/controller/BasicSlider;->mHighEditSeekbar:Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;

    .line 68
    :cond_0
    new-instance p2, Lcom/zui/gallery/filtershow/controller/BasicSlider$1;

    invoke-direct {p2, p0}, Lcom/zui/gallery/filtershow/controller/BasicSlider$1;-><init>(Lcom/zui/gallery/filtershow/controller/BasicSlider;)V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/controller/BasicSlider;->mSeekbarListener:Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage$SeekbarListener;

    .line 87
    iget-object v1, p0, Lcom/zui/gallery/filtershow/controller/BasicSlider;->mHighEditSeekbar:Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;

    if-eqz v1, :cond_1

    const/16 v2, 0xc9

    const/16 v3, 0x64

    .line 91
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0601c0

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/zui/gallery/filtershow/controller/BasicSlider;->seekBarBallsID:[I

    .line 93
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0500ad

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iget-object v7, p0, Lcom/zui/gallery/filtershow/controller/BasicSlider;->mSeekbarListener:Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage$SeekbarListener;

    .line 88
    invoke-virtual/range {v1 .. v7}, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->initializeParams(III[IILcom/zui/gallery/filtershow/controller/HighEditSeekBarImage$SeekbarListener;)V

    :cond_1
    const p2, 0x7f080360

    .line 95
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    if-eqz p1, :cond_2

    const p2, 0x7f080352

    .line 97
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/BasicSlider;->mTextView:Landroid/widget/TextView;

    .line 99
    :cond_2
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/controller/BasicSlider;->updateUI()V

    return-void
.end method

.method public updateUI()V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/BasicSlider;->mHighEditSeekbar:Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/controller/BasicSlider;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterInteger;

    invoke-interface {v1}, Lcom/zui/gallery/filtershow/controller/ParameterInteger;->getValue()I

    move-result v1

    iget-object v2, p0, Lcom/zui/gallery/filtershow/controller/BasicSlider;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterInteger;

    invoke-interface {v2}, Lcom/zui/gallery/filtershow/controller/ParameterInteger;->getMinimum()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->setCurrentIndex(I)V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/BasicSlider;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/zui/gallery/filtershow/controller/BasicSlider;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterInteger;

    invoke-interface {v1}, Lcom/zui/gallery/filtershow/controller/ParameterInteger;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
