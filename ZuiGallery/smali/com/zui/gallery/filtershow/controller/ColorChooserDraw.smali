.class public Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;
.super Ljava/lang/Object;
.source "ColorChooserDraw.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/controller/Control;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/filtershow/controller/ColorChooserDraw$colorTouchListener;
    }
.end annotation


# static fields
.field private static final OPACITY_OFFSET:I = 0x3


# instance fields
.field private final LOGTAG:Ljava/lang/String;

.field private colorLayout:Landroid/widget/LinearLayout;

.field public isBackToSize:Z

.field private mColorBtn:Landroid/widget/ImageView;

.field mColorHueView:Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;

.field private mColorText:Landroid/widget/TextView;

.field mContext:Landroid/content/Context;

.field protected mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

.field protected mLayoutID:I

.field protected mLinearLayout:Landroid/widget/LinearLayout;

.field protected mParameter:Lcom/zui/gallery/filtershow/controller/ParameterColorDraw;

.field private mTopView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "StyleChooser"

    .line 33
    iput-object v0, p0, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;->LOGTAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;->isBackToSize:Z

    const v0, 0x7f0b0050

    .line 43
    iput v0, p0, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;->mLayoutID:I

    return-void
.end method

.method static synthetic access$100(Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;)Landroid/widget/ImageView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;->mColorBtn:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;)Landroid/widget/TextView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;->mColorText:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public RestoreScreenChange()V
    .locals 0

    return-void
.end method

.method public changeSelectedColor([F)V
    .locals 2

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 133
    aput v1, p1, v0

    const/4 v0, 0x2

    .line 134
    aput v1, p1, v0

    const/4 v0, 0x3

    .line 135
    aput v1, p1, v0

    .line 136
    aget v0, p1, v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0, p1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p1

    .line 137
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    iput p1, v0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->hsvos:I

    .line 138
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterColorDraw;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/controller/ParameterColorDraw;->setValue(I)V

    .line 139
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/Editor;->commitLocalRepresentation()V

    return-void
.end method

.method public getColorSet()[I
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterColorDraw;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/controller/ParameterColorDraw;->getColorPalette()[I

    move-result-object v0

    return-object v0
.end method

.method public getTopView()Landroid/view/View;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;->mTopView:Landroid/view/View;

    return-object v0
.end method

.method public selectColor(Landroid/view/View;I)V
    .locals 2

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    .line 105
    iget-object p2, p0, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterColorDraw;

    const/4 v0, 0x3

    aget v0, p1, v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0, p1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/zui/gallery/filtershow/controller/ParameterColorDraw;->setValue(I)V

    .line 106
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/Editor;->commitLocalRepresentation()V

    return-void
.end method

.method public setPrameter(Lcom/zui/gallery/filtershow/controller/Parameter;)V
    .locals 0

    .line 116
    check-cast p1, Lcom/zui/gallery/filtershow/controller/ParameterColorDraw;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterColorDraw;

    .line 117
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;->updateUI()V

    return-void
.end method

.method public setUp(Landroid/view/ViewGroup;Lcom/zui/gallery/filtershow/controller/Parameter;Lcom/zui/gallery/filtershow/editors/Editor;)V
    .locals 2

    .line 49
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 50
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 51
    iput-object p3, p0, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    .line 52
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;->mContext:Landroid/content/Context;

    const p3, 0x7f06017c

    .line 53
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 54
    check-cast p2, Lcom/zui/gallery/filtershow/controller/ParameterColorDraw;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterColorDraw;

    .line 55
    iget-object p2, p0, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 56
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 57
    iget v0, p0, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;->mLayoutID:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;->mTopView:Landroid/view/View;

    const p2, 0x7f0800e5

    .line 59
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;->colorLayout:Landroid/widget/LinearLayout;

    .line 60
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;->mTopView:Landroid/view/View;

    const p2, 0x7f080005

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;->mColorHueView:Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;

    .line 61
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;->mTopView:Landroid/view/View;

    const p2, 0x7f0800eb

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;->mColorBtn:Landroid/widget/ImageView;

    .line 62
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;->mTopView:Landroid/view/View;

    const p2, 0x7f0800ed

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;->mColorText:Landroid/widget/TextView;

    .line 63
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;->mTopView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 64
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;->colorLayout:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw$colorTouchListener;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw$colorTouchListener;-><init>(Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;Lcom/zui/gallery/filtershow/controller/ColorChooserDraw$1;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 65
    new-instance p1, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {p1, p3, p3}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    .line 66
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterColorDraw;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/controller/ParameterColorDraw;->getColorPalette()[I

    .line 67
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;->showColorPicker()V

    return-void
.end method

.method public showColorPicker()V
    .locals 2

    .line 143
    new-instance v0, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw$1;-><init>(Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;)V

    .line 162
    iget-object v1, p0, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;->mColorHueView:Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->addColorListener(Lcom/zui/gallery/filtershow/colorpicker/ColorListener;)V

    return-void
.end method

.method public updateUI()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterColorDraw;

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method
