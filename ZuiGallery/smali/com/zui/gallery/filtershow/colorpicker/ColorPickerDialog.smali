.class public Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;
.super Landroid/app/Dialog;
.source "ColorPickerDialog.java"


# instance fields
.field mColorCompareView:Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;

.field mColorHueView:Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;

.field mColorOpacityView:Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;

.field mColorSVRectView:Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;

.field mHSVO:[F

.field mSelectedButton:Landroid/widget/ToggleButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/zui/gallery/filtershow/colorpicker/ColorListener;)V
    .locals 7

    .line 42
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x4

    new-array v1, v0, [F

    .line 39
    iput-object v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;->mHSVO:[F

    .line 43
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v2, "window"

    .line 44
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 45
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 46
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v2, v2, 0x8

    div-int/lit8 v2, v2, 0xa

    .line 47
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v1, v1, 0x8

    div-int/lit8 v1, v1, 0xa

    .line 48
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/Window;->setLayout(II)V

    const/4 v1, 0x1

    .line 49
    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;->requestWindowFeature(I)Z

    const v2, 0x7f0b004d

    .line 50
    invoke-virtual {p0, v2}, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;->setContentView(I)V

    const v2, 0x7f080005

    .line 51
    invoke-virtual {p0, v2}, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;

    iput-object v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;->mColorHueView:Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;

    const v2, 0x7f0800e4

    .line 52
    invoke-virtual {p0, v2}, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;

    iput-object v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;->mColorSVRectView:Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;

    const v2, 0x7f0800e2

    .line 53
    invoke-virtual {p0, v2}, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;

    iput-object v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;->mColorOpacityView:Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;

    const v2, 0x7f0800a4

    .line 54
    invoke-virtual {p0, v2}, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;

    iput-object v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;->mColorCompareView:Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;

    new-array v2, v0, [F

    .line 56
    fill-array-data v2, :array_0

    const v3, 0x7f08005f

    .line 59
    invoke-virtual {p0, v3}, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    const v4, 0x7f0800c4

    .line 60
    invoke-virtual {p0, v4}, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    .line 62
    new-instance v5, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog$1;

    invoke-direct {v5, p0, p2}, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog$1;-><init>(Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;Lcom/zui/gallery/filtershow/colorpicker/ColorListener;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    new-instance p2, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog$2;

    invoke-direct {p2, p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog$2;-><init>(Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;)V

    invoke-virtual {v4, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-array p2, v0, [Lcom/zui/gallery/filtershow/colorpicker/ColorListener;

    .line 75
    iget-object v3, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;->mColorCompareView:Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;

    const/4 v4, 0x0

    aput-object v3, p2, v4

    iget-object v3, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;->mColorSVRectView:Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;

    aput-object v3, p2, v1

    iget-object v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;->mColorOpacityView:Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;

    const/4 v3, 0x2

    aput-object v1, p2, v3

    iget-object v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;->mColorHueView:Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;

    const/4 v3, 0x3

    aput-object v1, p2, v3

    move v1, v4

    :goto_0
    if-ge v1, v0, :cond_2

    .line 77
    aget-object v3, p2, v1

    invoke-interface {v3, v2}, Lcom/zui/gallery/filtershow/colorpicker/ColorListener;->setColor([F)V

    move v3, v4

    :goto_1
    if-ge v3, v0, :cond_1

    if-ne v1, v3, :cond_0

    goto :goto_2

    .line 82
    :cond_0
    aget-object v5, p2, v1

    aget-object v6, p2, v3

    invoke-interface {v5, v6}, Lcom/zui/gallery/filtershow/colorpicker/ColorListener;->addColorListener(Lcom/zui/gallery/filtershow/colorpicker/ColorListener;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    :cond_2
    new-instance v1, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog$3;

    invoke-direct {v1, p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog$3;-><init>(Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;)V

    :goto_3
    if-ge v4, v0, :cond_3

    .line 100
    aget-object v2, p2, v4

    invoke-interface {v2, v1}, Lcom/zui/gallery/filtershow/colorpicker/ColorListener;->addColorListener(Lcom/zui/gallery/filtershow/colorpicker/ColorListener;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 102
    :cond_3
    check-cast p1, Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 103
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x42f60000    # 123.0f
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;Landroid/widget/ToggleButton;[F)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;->setButtonColor(Landroid/widget/ToggleButton;[F)V

    return-void
.end method

.method private setButtonColor(Landroid/widget/ToggleButton;[F)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 145
    :cond_0
    invoke-static {p2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    .line 146
    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setBackgroundColor(I)V

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 147
    aget v2, p2, v1

    const/high16 v3, 0x43340000    # 180.0f

    add-float/2addr v2, v3

    const/high16 v3, 0x43b40000    # 360.0f

    rem-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    aget v2, p2, v1

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 150
    aget v2, p2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    const v2, 0x3dcccccd    # 0.1f

    goto :goto_0

    :cond_1
    const v2, 0x3f666666    # 0.9f

    :goto_0
    aput v2, v0, v1

    .line 152
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setTextColor(I)V

    .line 153
    invoke-virtual {p1, p2}, Landroid/widget/ToggleButton;->setTag(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public setColor([F)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;->mColorOpacityView:Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->setColor([F)V

    .line 136
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;->mColorHueView:Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->setColor([F)V

    .line 137
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;->mColorSVRectView:Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->setColor([F)V

    .line 138
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;->mColorCompareView:Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->setColor([F)V

    return-void
.end method

.method public setOrigColor([F)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;->mColorCompareView:Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->setOrigColor([F)V

    return-void
.end method

.method toggleClick(Landroid/widget/ToggleButton;[IZ)V
    .locals 3

    .line 107
    invoke-virtual {p1}, Landroid/widget/ToggleButton;->getId()I

    move-result v0

    if-nez p3, :cond_0

    const/4 p1, 0x0

    .line 109
    iput-object p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;->mSelectedButton:Landroid/widget/ToggleButton;

    return-void

    :cond_0
    const/4 p3, 0x0

    move v1, p3

    .line 112
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_2

    .line 113
    aget v2, p2, v1

    if-eq v0, v2, :cond_1

    .line 114
    aget v2, p2, v1

    invoke-virtual {p0, v2}, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    .line 115
    invoke-virtual {v2, p3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    :cond_2
    iput-object p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;->mSelectedButton:Landroid/widget/ToggleButton;

    .line 120
    invoke-virtual {p1}, Landroid/widget/ToggleButton;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    const p2, 0x7f080005

    .line 122
    invoke-virtual {p0, p2}, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;

    const p3, 0x7f0800e4

    .line 123
    invoke-virtual {p0, p3}, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;

    const v0, 0x7f0800e2

    .line 124
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;

    .line 125
    invoke-virtual {p3, p1}, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->setColor([F)V

    .line 126
    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->setColor([F)V

    .line 127
    invoke-virtual {p2, p1}, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->setColor([F)V

    return-void
.end method
