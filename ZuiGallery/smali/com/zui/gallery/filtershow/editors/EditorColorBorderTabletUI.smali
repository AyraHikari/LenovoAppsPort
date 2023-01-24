.class public Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;
.super Ljava/lang/Object;
.source "EditorColorBorderTabletUI.java"


# static fields
.field private static sIconDim:I = 0x78


# instance fields
.field private ids:[I

.field private mBasColors:[I

.field private mCBCornerSizeSeekBar:Landroid/widget/SeekBar;

.field mCBCornerSizeValue:Landroid/widget/TextView;

.field private mCBSizeSeekBar:Landroid/widget/SeekBar;

.field mCBSizeValue:Landroid/widget/TextView;

.field private mColorButton:[Landroid/widget/Button;

.field private mColorCompareView:Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;

.field private mEditorDraw:Lcom/zui/gallery/filtershow/editors/EditorColorBorder;

.field private mHueView:Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;

.field private mOpacityView:Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;

.field private mRep:Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;

.field private mSatValView:Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;

.field private mSelected:I

.field private mSelectedColorButton:I

.field private mTransparent:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/filtershow/editors/EditorColorBorder;Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 62
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->ids:[I

    .line 89
    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->mEditorDraw:Lcom/zui/gallery/filtershow/editors/EditorColorBorder;

    .line 90
    iget-object p1, p1, Lcom/zui/gallery/filtershow/editors/EditorColorBorder;->mBasColors:[I

    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->mBasColors:[I

    const-string p1, "layout_inflater"

    .line 92
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 93
    check-cast p3, Landroid/view/ViewGroup;

    const v0, 0x7f0b004b

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 96
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f06017c

    .line 97
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    sput p3, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->sIconDim:I

    const p3, 0x7f080220

    .line 98
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    const p3, 0x7f0800de

    .line 100
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/SeekBar;

    iput-object p3, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->mCBCornerSizeSeekBar:Landroid/widget/SeekBar;

    const p3, 0x7f0800df

    .line 101
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->mCBCornerSizeValue:Landroid/widget/TextView;

    const p3, 0x7f0800e0

    .line 102
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/SeekBar;

    iput-object p3, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->mCBSizeSeekBar:Landroid/widget/SeekBar;

    const p3, 0x7f0800e1

    .line 104
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->mCBSizeValue:Landroid/widget/TextView;

    .line 105
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->setupCBSizeSeekBar(Landroid/widget/LinearLayout;)V

    .line 106
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->setupCBCornerSizeSeekBar(Landroid/widget/LinearLayout;)V

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->setupColor(Landroid/widget/LinearLayout;Landroid/content/res/Resources;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f08014e
        0x7f08014f
        0x7f080150
        0x7f080151
        0x7f080152
    .end array-data
.end method

.method static synthetic access$000(Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;)Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->mRep:Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;)Lcom/zui/gallery/filtershow/editors/EditorColorBorder;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->mEditorDraw:Lcom/zui/gallery/filtershow/editors/EditorColorBorder;

    return-object p0
.end method

.method static synthetic access$200(Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->mSelectedColorButton:I

    return p0
.end method

.method static synthetic access$202(Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->mSelectedColorButton:I

    return p1
.end method

.method static synthetic access$300(Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;)[Landroid/widget/Button;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->mColorButton:[Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$400(Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->resetBorders()V

    return-void
.end method

.method static synthetic access$500(Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;)[I
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->mBasColors:[I

    return-object p0
.end method

.method static synthetic access$600(Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;)Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->mHueView:Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;)Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->mSatValView:Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;)Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->mOpacityView:Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;)Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->mColorCompareView:Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;

    return-object p0
.end method

.method private resetBorders()V
    .locals 4

    const/4 v0, 0x0

    .line 248
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->ids:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 249
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->mColorButton:[Landroid/widget/Button;

    aget-object v1, v1, v0

    .line 250
    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 251
    iget-object v2, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->mBasColors:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v2, 0x3

    .line 252
    iget v3, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->mSelectedColorButton:I

    if-ne v3, v0, :cond_0

    iget v3, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->mSelected:I

    goto :goto_1

    :cond_0
    iget v3, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->mTransparent:I

    :goto_1
    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setupCBCornerSizeSeekBar(Landroid/widget/LinearLayout;)V
    .locals 1

    .line 131
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->mCBCornerSizeSeekBar:Landroid/widget/SeekBar;

    new-instance v0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI$2;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI$2;-><init>(Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method private setupCBSizeSeekBar(Landroid/widget/LinearLayout;)V
    .locals 1

    .line 111
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->mCBSizeSeekBar:Landroid/widget/SeekBar;

    new-instance v0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI$1;-><init>(Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method private setupColor(Landroid/widget/LinearLayout;Landroid/content/res/Resources;)V
    .locals 6

    const v0, 0x7f080104

    .line 151
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0800e3

    .line 152
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f080153

    .line 153
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 154
    new-instance v3, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI$3;-><init>(Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0500a7

    .line 165
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->mTransparent:I

    const v0, 0x7f0500a6

    .line 166
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->mSelected:I

    .line 168
    iget-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->ids:[I

    array-length p2, p2

    new-array p2, p2, [Landroid/widget/Button;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->mColorButton:[Landroid/widget/Button;

    const/4 p2, 0x0

    move v0, p2

    .line 169
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->ids:[I

    array-length v2, v1

    const/high16 v3, 0x437f0000    # 255.0f

    const/4 v4, 0x4

    const/4 v5, 0x3

    if-ge v0, v2, :cond_1

    .line 170
    iget-object v2, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->mColorButton:[Landroid/widget/Button;

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    aput-object v1, v2, v0

    new-array v1, v4, [F

    .line 172
    iget-object v2, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->mBasColors:[I

    aget v2, v2, v0

    invoke-static {v2, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 173
    iget-object v2, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->mBasColors:[I

    aget v2, v2, v0

    shr-int/lit8 v2, v2, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v1, v5

    .line 174
    iget-object v2, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->mColorButton:[Landroid/widget/Button;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 175
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->mColorButton:[Landroid/widget/Button;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 176
    iget-object v2, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->mBasColors:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    if-nez v0, :cond_0

    .line 177
    iget v2, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->mSelected:I

    goto :goto_1

    :cond_0
    iget v2, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->mTransparent:I

    :goto_1
    invoke-virtual {v1, v5, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 179
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->mColorButton:[Landroid/widget/Button;

    aget-object v1, v1, v0

    new-instance v2, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI$4;

    invoke-direct {v2, p0, v0}, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI$4;-><init>(Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const v0, 0x7f080005

    .line 200
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->mHueView:Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;

    const v0, 0x7f0800e4

    .line 201
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->mSatValView:Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;

    const v0, 0x7f0800e2

    .line 202
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->mOpacityView:Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;

    const v0, 0x7f0800a4

    .line 203
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->mColorCompareView:Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;

    new-array p1, v4, [F

    .line 206
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->mBasColors:[I

    aget v0, v0, p2

    invoke-static {v0, p1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 207
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->mBasColors:[I

    aget v0, v0, p2

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float/2addr v0, v3

    aput v0, p1, v5

    .line 208
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->mColorCompareView:Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->setOrigColor([F)V

    new-array v0, v4, [Lcom/zui/gallery/filtershow/colorpicker/ColorListener;

    .line 210
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->mHueView:Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;

    aput-object v1, v0, p2

    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->mSatValView:Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->mOpacityView:Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->mColorCompareView:Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;

    aput-object v1, v0, v5

    move v1, p2

    :goto_2
    if-ge v1, v4, :cond_4

    .line 212
    aget-object v2, v0, v1

    invoke-interface {v2, p1}, Lcom/zui/gallery/filtershow/colorpicker/ColorListener;->setColor([F)V

    move v2, p2

    :goto_3
    if-ge v2, v4, :cond_3

    if-ne v1, v2, :cond_2

    goto :goto_4

    .line 217
    :cond_2
    aget-object v3, v0, v1

    aget-object v5, v0, v2

    invoke-interface {v3, v5}, Lcom/zui/gallery/filtershow/colorpicker/ColorListener;->addColorListener(Lcom/zui/gallery/filtershow/colorpicker/ColorListener;)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 221
    :cond_4
    new-instance p1, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI$5;

    invoke-direct {p1, p0}, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI$5;-><init>(Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;)V

    :goto_5
    if-ge p2, v4, :cond_5

    .line 243
    aget-object v1, v0, p2

    invoke-interface {v1, p1}, Lcom/zui/gallery/filtershow/colorpicker/ColorListener;->addColorListener(Lcom/zui/gallery/filtershow/colorpicker/ColorListener;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method


# virtual methods
.method public setColorBorderRepresentation(Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;)V
    .locals 3

    .line 71
    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->mRep:Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->getParam(I)Lcom/zui/gallery/filtershow/controller/Parameter;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    .line 74
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->mCBSizeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->getMaximum()I

    move-result v1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->getMinimum()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 75
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->mCBSizeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->getValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 78
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->mRep:Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->getParam(I)Lcom/zui/gallery/filtershow/controller/Parameter;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    .line 79
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->mCBCornerSizeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->getMaximum()I

    move-result v1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->getMinimum()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 80
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->mCBCornerSizeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->getValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 83
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->mRep:Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->getParam(I)Lcom/zui/gallery/filtershow/controller/Parameter;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/controller/ParameterColor;

    .line 84
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/controller/ParameterColor;->getColorPalette()[I

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->mBasColors:[I

    .line 85
    iget v1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->mSelectedColorButton:I

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/controller/ParameterColor;->setValue(I)V

    return-void
.end method
