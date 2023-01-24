.class public Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;
.super Ljava/lang/Object;
.source "EditorDrawTabletUI.java"


# static fields
.field private static sIconDim:I = 0x78


# instance fields
.field private ids:[I

.field private mBasColors:[I

.field private mBrushIcons:[I

.field private mColorButton:[Landroid/widget/Button;

.field private mColorCompareView:Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;

.field private mDrawSizeValue:Landroid/widget/TextView;

.field private mEditorDraw:Lcom/zui/gallery/filtershow/editors/EditorDraw;

.field private mHueView:Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;

.field private mOpacityView:Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;

.field private mRep:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;

.field private mSatValView:Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;

.field private mSelected:I

.field private mSelectedColorButton:I

.field private mSelectedStyleButton:I

.field private mStyleButton:[Landroid/widget/ImageButton;

.field private mTransparent:I

.field private mdrawSizeSeekBar:Landroid/widget/SeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/filtershow/editors/EditorDraw;Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .locals 7

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 66
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->ids:[I

    .line 90
    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mEditorDraw:Lcom/zui/gallery/filtershow/editors/EditorDraw;

    .line 91
    iget-object v0, p1, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mBasColors:[I

    iput-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mBasColors:[I

    .line 92
    iget-object p1, p1, Lcom/zui/gallery/filtershow/editors/EditorDraw;->brushIcons:[I

    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mBrushIcons:[I

    .line 93
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06017c

    .line 94
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->sIconDim:I

    const v0, 0x7f080220

    .line 95
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f08014b

    .line 97
    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mdrawSizeSeekBar:Landroid/widget/SeekBar;

    const v1, 0x7f08014c

    .line 98
    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mDrawSizeValue:Landroid/widget/TextView;

    const v1, 0x7f0800d7

    .line 100
    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 101
    new-instance v2, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$1;

    invoke-direct {v2, p0}, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$1;-><init>(Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mdrawSizeSeekBar:Landroid/widget/SeekBar;

    new-instance v2, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$2;

    invoke-direct {v2, p0}, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$2;-><init>(Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 129
    new-instance v1, Landroid/app/ActionBar$LayoutParams;

    sget v2, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->sIconDim:I

    invoke-direct {v1, v2, v2}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    .line 130
    iget-object v2, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mBrushIcons:[I

    array-length v2, v2

    new-array v2, v2, [Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mStyleButton:[Landroid/widget/ImageButton;

    const/4 v2, 0x0

    move v3, v2

    .line 131
    :goto_0
    iget-object v4, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mBrushIcons:[I

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 132
    new-instance v4, Landroid/widget/ImageButton;

    invoke-direct {v4, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 133
    iget-object v5, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mStyleButton:[Landroid/widget/ImageButton;

    aput-object v4, v5, v3

    .line 134
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 135
    invoke-virtual {v4, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mBrushIcons:[I

    aget v6, v6, v3

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 137
    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const v5, 0x106000d

    .line 138
    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 139
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 141
    new-instance v5, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$3;

    invoke-direct {v5, p0, v3}, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$3;-><init>(Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;I)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const p2, 0x7f080104

    .line 157
    invoke-virtual {p3, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    const v0, 0x7f0800e3

    .line 158
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f080153

    .line 159
    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 160
    new-instance v3, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$4;

    invoke-direct {v3, p0, p2, v0}, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$4;-><init>(Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0500a7

    .line 170
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mTransparent:I

    const p2, 0x7f0500a6

    .line 171
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mSelected:I

    .line 173
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->ids:[I

    array-length p1, p1

    new-array p1, p1, [Landroid/widget/Button;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mColorButton:[Landroid/widget/Button;

    move p1, v2

    .line 174
    :goto_1
    iget-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->ids:[I

    array-length v0, p2

    const/high16 v1, 0x437f0000    # 255.0f

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-ge p1, v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mColorButton:[Landroid/widget/Button;

    aget p2, p2, p1

    invoke-virtual {p3, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    aput-object p2, v0, p1

    new-array p2, v3, [F

    .line 178
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mBasColors:[I

    aget v0, v0, p1

    invoke-static {v0, p2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 179
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mBasColors:[I

    aget v0, v0, p1

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float/2addr v0, v1

    aput v0, p2, v4

    .line 180
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mColorButton:[Landroid/widget/Button;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 181
    iget-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mColorButton:[Landroid/widget/Button;

    aget-object p2, p2, p1

    invoke-virtual {p2}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/GradientDrawable;

    .line 183
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mBasColors:[I

    aget v0, v0, p1

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    if-nez p1, :cond_1

    .line 184
    iget v0, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mSelected:I

    goto :goto_2

    :cond_1
    iget v0, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mTransparent:I

    :goto_2
    invoke-virtual {p2, v4, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 187
    iget-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mColorButton:[Landroid/widget/Button;

    aget-object p2, p2, p1

    new-instance v0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$5;

    invoke-direct {v0, p0, p1}, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$5;-><init>(Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;I)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    const p1, 0x7f080005

    .line 210
    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mHueView:Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;

    const p1, 0x7f0800e4

    .line 211
    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mSatValView:Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;

    const p1, 0x7f0800e2

    .line 212
    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mOpacityView:Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;

    const p1, 0x7f0800a4

    .line 213
    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mColorCompareView:Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;

    new-array p1, v3, [F

    .line 216
    iget-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mBasColors:[I

    aget p2, p2, v2

    invoke-static {p2, p1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 217
    iget-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mBasColors:[I

    aget p2, p2, v2

    shr-int/lit8 p2, p2, 0x18

    and-int/lit16 p2, p2, 0xff

    int-to-float p2, p2

    div-float/2addr p2, v1

    aput p2, p1, v4

    .line 219
    iget-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mColorCompareView:Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;

    invoke-virtual {p2, p1}, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->setOrigColor([F)V

    new-array p2, v3, [Lcom/zui/gallery/filtershow/colorpicker/ColorListener;

    .line 220
    iget-object p3, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mHueView:Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;

    aput-object p3, p2, v2

    iget-object p3, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mSatValView:Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;

    const/4 v0, 0x1

    aput-object p3, p2, v0

    const/4 p3, 0x2

    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mOpacityView:Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;

    aput-object v0, p2, p3

    iget-object p3, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mColorCompareView:Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;

    aput-object p3, p2, v4

    move p3, v2

    :goto_3
    if-ge p3, v3, :cond_5

    .line 222
    aget-object v0, p2, p3

    invoke-interface {v0, p1}, Lcom/zui/gallery/filtershow/colorpicker/ColorListener;->setColor([F)V

    move v0, v2

    :goto_4
    if-ge v0, v3, :cond_4

    if-ne p3, v0, :cond_3

    goto :goto_5

    .line 228
    :cond_3
    aget-object v1, p2, p3

    aget-object v4, p2, v0

    invoke-interface {v1, v4}, Lcom/zui/gallery/filtershow/colorpicker/ColorListener;->addColorListener(Lcom/zui/gallery/filtershow/colorpicker/ColorListener;)V

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    .line 231
    :cond_5
    new-instance p1, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$6;

    invoke-direct {p1, p0}, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$6;-><init>(Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;)V

    :goto_6
    if-ge v2, v3, :cond_6

    .line 255
    aget-object p3, p2, v2

    invoke-interface {p3, p1}, Lcom/zui/gallery/filtershow/colorpicker/ColorListener;->addColorListener(Lcom/zui/gallery/filtershow/colorpicker/ColorListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_6
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

.method static synthetic access$000(Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;)Lcom/zui/gallery/filtershow/editors/EditorDraw;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mEditorDraw:Lcom/zui/gallery/filtershow/editors/EditorDraw;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;)Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mRep:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;)Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mOpacityView:Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;)Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mColorCompareView:Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;)Landroid/widget/TextView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mDrawSizeValue:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$302(Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mSelectedStyleButton:I

    return p1
.end method

.method static synthetic access$400(Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mSelectedColorButton:I

    return p0
.end method

.method static synthetic access$402(Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mSelectedColorButton:I

    return p1
.end method

.method static synthetic access$500(Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;)[Landroid/widget/Button;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mColorButton:[Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$600(Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->resetBorders()V

    return-void
.end method

.method static synthetic access$700(Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;)[I
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mBasColors:[I

    return-object p0
.end method

.method static synthetic access$800(Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;)Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mHueView:Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;)Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mSatValView:Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;

    return-object p0
.end method

.method private resetBorders()V
    .locals 4

    const/4 v0, 0x0

    .line 270
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->ids:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 271
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mColorButton:[Landroid/widget/Button;

    aget-object v1, v1, v0

    .line 273
    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 274
    iget-object v2, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mBasColors:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v2, 0x3

    .line 275
    iget v3, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mSelectedColorButton:I

    if-ne v3, v0, :cond_0

    iget v3, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mSelected:I

    goto :goto_1

    :cond_0
    iget v3, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mTransparent:I

    :goto_1
    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public resetStyle()V
    .locals 3

    const/4 v0, 0x0

    .line 261
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mStyleButton:[Landroid/widget/ImageButton;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 262
    iget v1, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mSelectedStyleButton:I

    if-ne v0, v1, :cond_0

    const v1, 0x1060012

    goto :goto_1

    :cond_0
    const v1, 0x106000d

    .line 264
    :goto_1
    iget-object v2, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mStyleButton:[Landroid/widget/ImageButton;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setDrawRepresentation(Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;)V
    .locals 3

    .line 75
    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mRep:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;

    const/4 v0, 0x0

    .line 77
    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->getParam(I)Lcom/zui/gallery/filtershow/controller/Parameter;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    .line 78
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mdrawSizeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->getMaximum()I

    move-result v1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->getMinimum()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 79
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mdrawSizeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->getValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 82
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mRep:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->getParam(I)Lcom/zui/gallery/filtershow/controller/Parameter;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/controller/ParameterColor;

    .line 83
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mBasColors:[I

    iget v1, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mSelectedColorButton:I

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/controller/ParameterColor;->setValue(I)V

    .line 85
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mRep:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->getParam(I)Lcom/zui/gallery/filtershow/controller/Parameter;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/controller/BasicParameterStyle;

    .line 86
    iget v0, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->mSelectedStyleButton:I

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/controller/BasicParameterStyle;->setSelected(I)V

    return-void
.end method
