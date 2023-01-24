.class public Lcom/zui/gallery/filtershow/controller/SliderSaturation;
.super Ljava/lang/Object;
.source "SliderSaturation.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/controller/Control;


# instance fields
.field private mColorOpacityView:Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;

.field private mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

.field private mParameter:Lcom/zui/gallery/filtershow/controller/ParameterSaturation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/filtershow/controller/SliderSaturation;)Lcom/zui/gallery/filtershow/controller/ParameterSaturation;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/zui/gallery/filtershow/controller/SliderSaturation;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterSaturation;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zui/gallery/filtershow/controller/SliderSaturation;)Lcom/zui/gallery/filtershow/editors/Editor;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/zui/gallery/filtershow/controller/SliderSaturation;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    return-object p0
.end method


# virtual methods
.method public RestoreScreenChange()V
    .locals 0

    return-void
.end method

.method public getTopView()Landroid/view/View;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/SliderSaturation;->mColorOpacityView:Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;

    return-object v0
.end method

.method public setPrameter(Lcom/zui/gallery/filtershow/controller/Parameter;)V
    .locals 0

    .line 70
    check-cast p1, Lcom/zui/gallery/filtershow/controller/ParameterSaturation;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/SliderSaturation;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterSaturation;

    .line 71
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SliderSaturation;->mColorOpacityView:Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;

    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/controller/SliderSaturation;->updateUI()V

    :cond_0
    return-void
.end method

.method public setUp(Landroid/view/ViewGroup;Lcom/zui/gallery/filtershow/controller/Parameter;Lcom/zui/gallery/filtershow/editors/Editor;)V
    .locals 1

    .line 40
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 41
    iput-object p3, p0, Lcom/zui/gallery/filtershow/controller/SliderSaturation;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    .line 42
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 43
    check-cast p2, Lcom/zui/gallery/filtershow/controller/ParameterSaturation;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/controller/SliderSaturation;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterSaturation;

    const-string p2, "layout_inflater"

    .line 45
    invoke-virtual {p3, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const p3, 0x7f0b0062

    const/4 v0, 0x1

    .line 46
    invoke-virtual {p2, p3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const p2, 0x7f0802dc

    .line 49
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/SliderSaturation;->mColorOpacityView:Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;

    .line 50
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/controller/SliderSaturation;->updateUI()V

    .line 51
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SliderSaturation;->mColorOpacityView:Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;

    new-instance p2, Lcom/zui/gallery/filtershow/controller/SliderSaturation$1;

    invoke-direct {p2, p0}, Lcom/zui/gallery/filtershow/controller/SliderSaturation$1;-><init>(Lcom/zui/gallery/filtershow/controller/SliderSaturation;)V

    invoke-virtual {p1, p2}, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->addColorListener(Lcom/zui/gallery/filtershow/colorpicker/ColorListener;)V

    return-void
.end method

.method public updateUI()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/SliderSaturation;->mColorOpacityView:Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/controller/SliderSaturation;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterSaturation;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/controller/ParameterSaturation;->getColor()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->setColor([F)V

    return-void
.end method
