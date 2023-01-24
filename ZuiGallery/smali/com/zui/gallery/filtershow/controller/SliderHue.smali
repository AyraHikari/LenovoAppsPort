.class public Lcom/zui/gallery/filtershow/controller/SliderHue;
.super Ljava/lang/Object;
.source "SliderHue.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/controller/Control;


# static fields
.field public static LOGTAG:Ljava/lang/String; = "SliderHue"


# instance fields
.field private mColorOpacityView:Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;

.field mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

.field private mParameter:Lcom/zui/gallery/filtershow/controller/ParameterHue;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/filtershow/controller/SliderHue;)Lcom/zui/gallery/filtershow/controller/ParameterHue;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/zui/gallery/filtershow/controller/SliderHue;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterHue;

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
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/SliderHue;->mColorOpacityView:Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;

    return-object v0
.end method

.method public setPrameter(Lcom/zui/gallery/filtershow/controller/Parameter;)V
    .locals 0

    .line 68
    check-cast p1, Lcom/zui/gallery/filtershow/controller/ParameterHue;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/SliderHue;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterHue;

    .line 69
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SliderHue;->mColorOpacityView:Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;

    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/controller/SliderHue;->updateUI()V

    :cond_0
    return-void
.end method

.method public setUp(Landroid/view/ViewGroup;Lcom/zui/gallery/filtershow/controller/Parameter;Lcom/zui/gallery/filtershow/editors/Editor;)V
    .locals 1

    .line 38
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 39
    iput-object p3, p0, Lcom/zui/gallery/filtershow/controller/SliderHue;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    .line 40
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 41
    check-cast p2, Lcom/zui/gallery/filtershow/controller/ParameterHue;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/controller/SliderHue;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterHue;

    const-string p2, "layout_inflater"

    .line 43
    invoke-virtual {p3, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const p3, 0x7f0b005a

    const/4 v0, 0x1

    .line 44
    invoke-virtual {p2, p3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const p2, 0x7f0801df

    .line 47
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/SliderHue;->mColorOpacityView:Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;

    .line 48
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/controller/SliderHue;->updateUI()V

    .line 49
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SliderHue;->mColorOpacityView:Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;

    new-instance p2, Lcom/zui/gallery/filtershow/controller/SliderHue$1;

    invoke-direct {p2, p0}, Lcom/zui/gallery/filtershow/controller/SliderHue$1;-><init>(Lcom/zui/gallery/filtershow/controller/SliderHue;)V

    invoke-virtual {p1, p2}, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->addColorListener(Lcom/zui/gallery/filtershow/colorpicker/ColorListener;)V

    return-void
.end method

.method public updateUI()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/SliderHue;->mColorOpacityView:Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/controller/SliderHue;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterHue;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/controller/ParameterHue;->getColor()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->setColor([F)V

    return-void
.end method
