.class public Lcom/zui/gallery/filtershow/controller/SliderBrightness;
.super Ljava/lang/Object;
.source "SliderBrightness.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/controller/Control;


# instance fields
.field private mColorOpacityView:Lcom/zui/gallery/filtershow/colorpicker/ColorBrightnessView;

.field mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

.field private mParameter:Lcom/zui/gallery/filtershow/controller/ParameterBrightness;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/filtershow/controller/SliderBrightness;)Lcom/zui/gallery/filtershow/controller/ParameterBrightness;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/zui/gallery/filtershow/controller/SliderBrightness;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterBrightness;

    return-object p0
.end method


# virtual methods
.method public RestoreScreenChange()V
    .locals 0

    return-void
.end method

.method public getTopView()Landroid/view/View;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/SliderBrightness;->mColorOpacityView:Lcom/zui/gallery/filtershow/colorpicker/ColorBrightnessView;

    return-object v0
.end method

.method public setPrameter(Lcom/zui/gallery/filtershow/controller/Parameter;)V
    .locals 0

    .line 68
    check-cast p1, Lcom/zui/gallery/filtershow/controller/ParameterBrightness;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/SliderBrightness;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterBrightness;

    .line 69
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SliderBrightness;->mColorOpacityView:Lcom/zui/gallery/filtershow/colorpicker/ColorBrightnessView;

    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/controller/SliderBrightness;->updateUI()V

    :cond_0
    return-void
.end method

.method public setUp(Landroid/view/ViewGroup;Lcom/zui/gallery/filtershow/controller/Parameter;Lcom/zui/gallery/filtershow/editors/Editor;)V
    .locals 1

    .line 38
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 39
    iput-object p3, p0, Lcom/zui/gallery/filtershow/controller/SliderBrightness;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    .line 40
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 41
    check-cast p2, Lcom/zui/gallery/filtershow/controller/ParameterBrightness;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/controller/SliderBrightness;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterBrightness;

    const-string p2, "layout_inflater"

    .line 43
    invoke-virtual {p3, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const p3, 0x7f0b0049

    const/4 v0, 0x1

    .line 44
    invoke-virtual {p2, p3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const p2, 0x7f0800a2

    .line 47
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/colorpicker/ColorBrightnessView;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/SliderBrightness;->mColorOpacityView:Lcom/zui/gallery/filtershow/colorpicker/ColorBrightnessView;

    .line 48
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/controller/SliderBrightness;->updateUI()V

    .line 49
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SliderBrightness;->mColorOpacityView:Lcom/zui/gallery/filtershow/colorpicker/ColorBrightnessView;

    new-instance p2, Lcom/zui/gallery/filtershow/controller/SliderBrightness$1;

    invoke-direct {p2, p0}, Lcom/zui/gallery/filtershow/controller/SliderBrightness$1;-><init>(Lcom/zui/gallery/filtershow/controller/SliderBrightness;)V

    invoke-virtual {p1, p2}, Lcom/zui/gallery/filtershow/colorpicker/ColorBrightnessView;->addColorListener(Lcom/zui/gallery/filtershow/colorpicker/ColorListener;)V

    return-void
.end method

.method public updateUI()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/SliderBrightness;->mColorOpacityView:Lcom/zui/gallery/filtershow/colorpicker/ColorBrightnessView;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/controller/SliderBrightness;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterBrightness;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/controller/ParameterBrightness;->getColor()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/colorpicker/ColorBrightnessView;->setColor([F)V

    return-void
.end method
