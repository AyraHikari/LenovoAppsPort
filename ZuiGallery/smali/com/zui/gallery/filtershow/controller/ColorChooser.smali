.class public Lcom/zui/gallery/filtershow/controller/ColorChooser;
.super Ljava/lang/Object;
.source "ColorChooser.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/controller/Control;


# static fields
.field private static final OPACITY_OFFSET:I = 0x3


# instance fields
.field private final LOGTAG:Ljava/lang/String;

.field private mButton:[Landroid/widget/Button;

.field private mButtonsID:[I

.field mContext:Landroid/content/Context;

.field protected mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

.field private mIconButton:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field protected mLayoutID:I

.field protected mLinearLayout:Landroid/widget/LinearLayout;

.field protected mParameter:Lcom/zui/gallery/filtershow/controller/ParameterColor;

.field private mSelected:I

.field mSelectedButton:I

.field private mTopView:Landroid/view/View;

.field private mTransparent:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "StyleChooser"

    .line 23
    iput-object v0, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser;->LOGTAG:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser;->mIconButton:Ljava/util/Vector;

    const v0, 0x7f0b004f

    .line 29
    iput v0, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser;->mLayoutID:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 34
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser;->mButtonsID:[I

    .line 41
    array-length v0, v0

    new-array v0, v0, [Landroid/widget/Button;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser;->mButton:[Landroid/widget/Button;

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser;->mSelectedButton:I

    return-void

    :array_0
    .array-data 4
        0x7f08014e
        0x7f08014f
        0x7f080150
        0x7f080151
        0x7f080152
    .end array-data
.end method

.method private resetBorders()V
    .locals 5

    .line 118
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterColor;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/controller/ParameterColor;->getColorPalette()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 119
    :goto_0
    iget-object v2, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser;->mButtonsID:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 120
    iget-object v2, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser;->mButton:[Landroid/widget/Button;

    aget-object v2, v2, v1

    .line 121
    invoke-virtual {v2}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    .line 122
    aget v3, v0, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v3, 0x3

    .line 123
    iget v4, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser;->mSelectedButton:I

    if-ne v4, v1, :cond_0

    iget v4, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser;->mSelected:I

    goto :goto_1

    :cond_0
    iget v4, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser;->mTransparent:I

    :goto_1
    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public RestoreScreenChange()V
    .locals 0

    return-void
.end method

.method public changeSelectedColor([F)V
    .locals 6

    .line 159
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterColor;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/controller/ParameterColor;->getColorPalette()[I

    move-result-object v0

    const/4 v1, 0x3

    .line 160
    aget v2, p1, v1

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2, p1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v2

    .line 161
    iget-object v4, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser;->mButton:[Landroid/widget/Button;

    iget v5, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser;->mSelectedButton:I

    aget-object v4, v4, v5

    .line 162
    invoke-virtual {v4}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/GradientDrawable;

    .line 163
    invoke-virtual {v5, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 164
    iget v5, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser;->mSelectedButton:I

    aput v2, v0, v5

    .line 165
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterColor;

    aget v1, p1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {v1, p1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/controller/ParameterColor;->setValue(I)V

    .line 166
    invoke-virtual {v4, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 167
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/Editor;->commitLocalRepresentation()V

    .line 168
    invoke-virtual {v4}, Landroid/widget/Button;->invalidate()V

    return-void
.end method

.method public getColorSet()[I
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterColor;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/controller/ParameterColor;->getColorPalette()[I

    move-result-object v0

    return-object v0
.end method

.method public getTopView()Landroid/view/View;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser;->mTopView:Landroid/view/View;

    return-object v0
.end method

.method public selectColor(Landroid/view/View;I)V
    .locals 2

    .line 128
    iput p2, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser;->mSelectedButton:I

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    .line 130
    iget-object p2, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterColor;

    const/4 v0, 0x3

    aget v0, p1, v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0, p1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/zui/gallery/filtershow/controller/ParameterColor;->setValue(I)V

    .line 131
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/controller/ColorChooser;->resetBorders()V

    .line 132
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/Editor;->commitLocalRepresentation()V

    return-void
.end method

.method public setColorSet([I)V
    .locals 6

    .line 100
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterColor;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/controller/ParameterColor;->getColorPalette()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 101
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 102
    aget v2, p1, v1

    aput v2, v0, v1

    const/4 v2, 0x4

    new-array v2, v2, [F

    .line 104
    aget v3, v0, v1

    invoke-static {v3, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v3, 0x3

    .line 105
    aget v4, v0, v1

    shr-int/lit8 v4, v4, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v4, v5

    aput v4, v2, v3

    .line 106
    iget-object v3, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser;->mButton:[Landroid/widget/Button;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 107
    iget-object v2, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser;->mButton:[Landroid/widget/Button;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    .line 108
    aget v3, v0, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPrameter(Lcom/zui/gallery/filtershow/controller/Parameter;)V
    .locals 0

    .line 142
    check-cast p1, Lcom/zui/gallery/filtershow/controller/ParameterColor;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterColor;

    .line 143
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/controller/ColorChooser;->updateUI()V

    return-void
.end method

.method public setUp(Landroid/view/ViewGroup;Lcom/zui/gallery/filtershow/controller/Parameter;Lcom/zui/gallery/filtershow/editors/Editor;)V
    .locals 4

    .line 47
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 48
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500a7

    .line 49
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser;->mTransparent:I

    const v1, 0x7f0500a6

    .line 50
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser;->mSelected:I

    .line 51
    iput-object p3, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    .line 52
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser;->mContext:Landroid/content/Context;

    const p3, 0x7f06017c

    .line 53
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 54
    check-cast p2, Lcom/zui/gallery/filtershow/controller/ParameterColor;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterColor;

    .line 55
    iget-object p2, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 56
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 57
    iget v0, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser;->mLayoutID:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser;->mTopView:Landroid/view/View;

    const p2, 0x7f080220

    .line 58
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 59
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser;->mTopView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 61
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser;->mIconButton:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->clear()V

    .line 62
    new-instance p1, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {p1, p3, p3}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    .line 63
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterColor;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/controller/ParameterColor;->getColorPalette()[I

    move-result-object p1

    .line 64
    :goto_0
    iget-object p3, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser;->mButtonsID:[I

    array-length v0, p3

    if-ge p2, v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser;->mTopView:Landroid/view/View;

    aget p3, p3, p2

    invoke-virtual {v0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    .line 66
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser;->mButton:[Landroid/widget/Button;

    aput-object p3, v0, p2

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 68
    aget v1, p1, p2

    invoke-static {v1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 69
    aget v1, p1, p2

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    const/4 v3, 0x3

    aput v1, v0, v3

    .line 70
    invoke-virtual {p3, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 71
    invoke-virtual {p3}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 72
    aget v1, p1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 73
    iget v1, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser;->mSelectedButton:I

    if-ne v1, p2, :cond_0

    iget v1, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser;->mSelected:I

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser;->mTransparent:I

    :goto_1
    invoke-virtual {v0, v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 75
    iget v0, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser;->mSelectedButton:I

    if-ne v0, p2, :cond_1

    .line 76
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser;->mButton:[Landroid/widget/Button;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 77
    iget-object v1, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterColor;

    aget v3, v0, v3

    mul-float/2addr v3, v2

    float-to-int v2, v3

    invoke-static {v2, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/zui/gallery/filtershow/controller/ParameterColor;->setValue(I)V

    .line 81
    :cond_1
    new-instance v0, Lcom/zui/gallery/filtershow/controller/ColorChooser$1;

    invoke-direct {v0, p0, p2}, Lcom/zui/gallery/filtershow/controller/ColorChooser$1;-><init>(Lcom/zui/gallery/filtershow/controller/ColorChooser;I)V

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 88
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser;->mTopView:Landroid/view/View;

    const p2, 0x7f080153

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 90
    new-instance p2, Lcom/zui/gallery/filtershow/controller/ColorChooser$2;

    invoke-direct {p2, p0}, Lcom/zui/gallery/filtershow/controller/ColorChooser$2;-><init>(Lcom/zui/gallery/filtershow/controller/ColorChooser;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showColorPicker()V
    .locals 4

    .line 172
    new-instance v0, Lcom/zui/gallery/filtershow/controller/ColorChooser$3;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/controller/ColorChooser$3;-><init>(Lcom/zui/gallery/filtershow/controller/ColorChooser;)V

    .line 181
    new-instance v1, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;-><init>(Landroid/content/Context;Lcom/zui/gallery/filtershow/colorpicker/ColorListener;)V

    .line 182
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser;->mButton:[Landroid/widget/Button;

    iget v2, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser;->mSelectedButton:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    const/4 v2, 0x4

    .line 183
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;->setColor([F)V

    .line 184
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;->setOrigColor([F)V

    .line 185
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;->show()V

    return-void
.end method

.method public updateUI()V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterColor;

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method
