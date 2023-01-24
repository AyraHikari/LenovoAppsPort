.class public Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;
.super Ljava/lang/Object;
.source "SizeChooserDraw.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/controller/Control;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/filtershow/controller/SizeChooserDraw$colorTouchListener;,
        Lcom/zui/gallery/filtershow/controller/SizeChooserDraw$eraserTouchListener;,
        Lcom/zui/gallery/filtershow/controller/SizeChooserDraw$penTouchListener;
    }
.end annotation


# static fields
.field public static isEarsea:Z = false

.field public static mIndex:I = 0xa


# instance fields
.field private colorLayout:Landroid/widget/LinearLayout;

.field private eraserLayout:Landroid/widget/LinearLayout;

.field public isColorClick:Z

.field private mColorButton:Landroid/widget/ImageView;

.field private mColorText:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mDrawSeekbar:Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;

.field mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

.field private mEraserButton:Landroid/widget/ImageView;

.field private mEraserText:Landroid/widget/TextView;

.field private mParameter:Lcom/zui/gallery/filtershow/controller/ParameterIntegerDraw;

.field private mPenButton:Landroid/widget/ImageView;

.field private mPenText:Landroid/widget/TextView;

.field private mSeekbarListener:Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage$SeekbarListener;

.field private mSeekbarText:Landroid/widget/TextView;

.field private penLayout:Landroid/widget/LinearLayout;

.field seekBarBallsID:[I

.field private seekbarLayout:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->isColorClick:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 69
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->seekBarBallsID:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f07013f
        0x7f07013e
    .end array-data
.end method

.method static synthetic access$000(Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;)Lcom/zui/gallery/filtershow/controller/ParameterIntegerDraw;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterIntegerDraw;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;)Landroid/widget/TextView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mSeekbarText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->setFunctionBtnState(I)V

    return-void
.end method

.method private setFunctionBtnState(I)V
    .locals 5

    const v0, 0x7f080191

    const v1, 0x7f0500f8

    const v2, 0x7f0500d8

    const v3, 0x7f0701cc

    if-eq p1, v0, :cond_1

    const v0, 0x7f08024a

    const v4, 0x7f0701c4

    if-eq p1, v0, :cond_0

    .line 234
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mPenButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 235
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mEraserButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 220
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mPenButton:Landroid/widget/ImageView;

    const v0, 0x7f0701d1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 221
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mPenText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 223
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mEraserButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 224
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mEraserText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 227
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mPenButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 228
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mEraserButton:Landroid/widget/ImageView;

    const v0, 0x7f07013c

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 229
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mEraserText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 231
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mPenText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public RestoreScreenChange()V
    .locals 2

    .line 273
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    iget v0, v0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->radValue:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 274
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterIntegerDraw;

    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v1

    iget v1, v1, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->radValue:I

    invoke-interface {v0, v1}, Lcom/zui/gallery/filtershow/controller/ParameterIntegerDraw;->setValue(I)V

    .line 275
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/editors/Editor;->commitLocalRepresentation()V

    .line 283
    :cond_0
    sget-boolean v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isEarseaDraw:Z

    sput-boolean v0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->isEarsea:Z

    if-eqz v0, :cond_1

    const v0, 0x7f080191

    .line 285
    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->setFunctionBtnState(I)V

    :cond_1
    return-void
.end method

.method public getTopView()Landroid/view/View;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mDrawSeekbar:Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;

    return-object v0
.end method

.method public setPrameter(Lcom/zui/gallery/filtershow/controller/Parameter;)V
    .locals 0

    .line 246
    check-cast p1, Lcom/zui/gallery/filtershow/controller/ParameterIntegerDraw;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterIntegerDraw;

    .line 247
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mDrawSeekbar:Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;

    if-eqz p1, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->updateUI()V

    :cond_0
    return-void
.end method

.method public setUp(Landroid/view/ViewGroup;Lcom/zui/gallery/filtershow/controller/Parameter;Lcom/zui/gallery/filtershow/editors/Editor;)V
    .locals 7

    .line 77
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 78
    iput-object p3, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    .line 79
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 80
    iput-object p3, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mContext:Landroid/content/Context;

    .line 81
    check-cast p2, Lcom/zui/gallery/filtershow/controller/ParameterIntegerDraw;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterIntegerDraw;

    const-string p2, "layout_inflater"

    .line 83
    invoke-virtual {p3, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const v0, 0x7f0b0066

    const/4 v1, 0x1

    .line 84
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const p2, 0x7f08028a

    .line 86
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->penLayout:Landroid/widget/LinearLayout;

    const p2, 0x7f08018e

    .line 87
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->eraserLayout:Landroid/widget/LinearLayout;

    const p2, 0x7f0802fa

    .line 88
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->seekbarLayout:Landroid/widget/LinearLayout;

    const p2, 0x7f0800e6

    .line 89
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->colorLayout:Landroid/widget/LinearLayout;

    const p2, 0x7f0802b1

    .line 91
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mDrawSeekbar:Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;

    .line 92
    new-instance p2, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw$1;

    invoke-direct {p2, p0}, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw$1;-><init>(Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;)V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mSeekbarListener:Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage$SeekbarListener;

    .line 124
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mDrawSeekbar:Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;

    .line 127
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f06017b

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->seekBarBallsID:[I

    .line 129
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0500ad

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iget-object v6, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mSeekbarListener:Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage$SeekbarListener;

    const/16 v1, 0x64

    const/16 v2, 0xa

    .line 124
    invoke-virtual/range {v0 .. v6}, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->initializeParams(III[IILcom/zui/gallery/filtershow/controller/DrawSeekBarImage$SeekbarListener;)V

    const p2, 0x7f08024a

    .line 134
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mPenButton:Landroid/widget/ImageView;

    const p3, 0x7f080191

    .line 135
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mEraserButton:Landroid/widget/ImageView;

    const p3, 0x7f0800ec

    .line 136
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mColorButton:Landroid/widget/ImageView;

    const p3, 0x7f08028c

    .line 137
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mPenText:Landroid/widget/TextView;

    const p3, 0x7f080193

    .line 138
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mEraserText:Landroid/widget/TextView;

    const p3, 0x7f0802fc

    .line 139
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mSeekbarText:Landroid/widget/TextView;

    const p3, 0x7f0800ee

    .line 140
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mColorText:Landroid/widget/TextView;

    .line 141
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->seekbarLayout:Landroid/widget/LinearLayout;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 142
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mPenButton:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mEraserButton:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 144
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mColorButton:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 145
    invoke-direct {p0, p2}, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->setFunctionBtnState(I)V

    .line 146
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->penLayout:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw$penTouchListener;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw$penTouchListener;-><init>(Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;Lcom/zui/gallery/filtershow/controller/SizeChooserDraw$1;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 147
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->eraserLayout:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw$eraserTouchListener;

    invoke-direct {p2, p0, v0}, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw$eraserTouchListener;-><init>(Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;Lcom/zui/gallery/filtershow/controller/SizeChooserDraw$1;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 148
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->colorLayout:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw$colorTouchListener;

    invoke-direct {p2, p0, v0}, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw$colorTouchListener;-><init>(Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;Lcom/zui/gallery/filtershow/controller/SizeChooserDraw$1;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 149
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->updateUI()V

    .line 151
    sput-boolean p3, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->isEarsea:Z

    .line 152
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mColorButton:Landroid/widget/ImageView;

    new-instance p2, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw$2;

    invoke-direct {p2, p0}, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw$2;-><init>(Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public updateUI()V
    .locals 3

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onValueChanged33333: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "valueXXX"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mDrawSeekbar:Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;

    sget v1, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mIndex:I

    iget-object v2, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterIntegerDraw;

    invoke-interface {v2}, Lcom/zui/gallery/filtershow/controller/ParameterIntegerDraw;->getMinimum()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->setCurrentIndex(I)V

    .line 262
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mSeekbarText:Landroid/widget/TextView;

    sget v1, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
