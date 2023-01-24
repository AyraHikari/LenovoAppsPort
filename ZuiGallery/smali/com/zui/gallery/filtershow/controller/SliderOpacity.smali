.class public Lcom/zui/gallery/filtershow/controller/SliderOpacity;
.super Ljava/lang/Object;
.source "SliderOpacity.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/controller/Control;


# instance fields
.field private mColorOpacityView:Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;

.field private mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

.field private mParameter:Lcom/zui/gallery/filtershow/controller/ParameterOpacity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/filtershow/controller/SliderOpacity;)Lcom/zui/gallery/filtershow/controller/ParameterOpacity;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/zui/gallery/filtershow/controller/SliderOpacity;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterOpacity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zui/gallery/filtershow/controller/SliderOpacity;)Lcom/zui/gallery/filtershow/editors/Editor;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/zui/gallery/filtershow/controller/SliderOpacity;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    return-object p0
.end method


# virtual methods
.method public RestoreScreenChange()V
    .locals 0

    return-void
.end method

.method public getTopView()Landroid/view/View;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/SliderOpacity;->mColorOpacityView:Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;

    return-object v0
.end method

.method public setPrameter(Lcom/zui/gallery/filtershow/controller/Parameter;)V
    .locals 0

    .line 69
    check-cast p1, Lcom/zui/gallery/filtershow/controller/ParameterOpacity;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/SliderOpacity;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterOpacity;

    .line 70
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SliderOpacity;->mColorOpacityView:Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;

    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/controller/SliderOpacity;->updateUI()V

    :cond_0
    return-void
.end method

.method public setUp(Landroid/view/ViewGroup;Lcom/zui/gallery/filtershow/controller/Parameter;Lcom/zui/gallery/filtershow/editors/Editor;)V
    .locals 1

    .line 39
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 40
    iput-object p3, p0, Lcom/zui/gallery/filtershow/controller/SliderOpacity;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    .line 41
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 42
    check-cast p2, Lcom/zui/gallery/filtershow/controller/ParameterOpacity;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/controller/SliderOpacity;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterOpacity;

    const-string p2, "layout_inflater"

    .line 44
    invoke-virtual {p3, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const p3, 0x7f0b005e

    const/4 v0, 0x1

    .line 45
    invoke-virtual {p2, p3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const p2, 0x7f080277

    .line 48
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/SliderOpacity;->mColorOpacityView:Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;

    .line 49
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/controller/SliderOpacity;->updateUI()V

    .line 50
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SliderOpacity;->mColorOpacityView:Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;

    new-instance p2, Lcom/zui/gallery/filtershow/controller/SliderOpacity$1;

    invoke-direct {p2, p0}, Lcom/zui/gallery/filtershow/controller/SliderOpacity$1;-><init>(Lcom/zui/gallery/filtershow/controller/SliderOpacity;)V

    invoke-virtual {p1, p2}, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->addColorListener(Lcom/zui/gallery/filtershow/colorpicker/ColorListener;)V

    return-void
.end method

.method public updateUI()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/SliderOpacity;->mColorOpacityView:Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/controller/SliderOpacity;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterOpacity;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/controller/ParameterOpacity;->getColor()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->setColor([F)V

    return-void
.end method
