.class public Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;
.super Ljava/lang/Object;
.source "SizeChooserMosaic.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/controller/Control;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic$eraserTouchListener;,
        Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic$penTouchListener;
    }
.end annotation


# static fields
.field public static mIndex:I = 0x1e


# instance fields
.field private eraserLayout:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mDrawSeekbar:Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;

.field mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

.field private mEraserButton:Landroid/widget/ImageView;

.field private mEraserText:Landroid/widget/TextView;

.field private mParameter:Lcom/zui/gallery/filtershow/controller/ParameterIntegerMosaic;

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

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 54
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->seekBarBallsID:[I

    return-void

    :array_0
    .array-data 4
        0x7f07013f
        0x7f07013e
    .end array-data
.end method

.method static synthetic access$000(Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;)Lcom/zui/gallery/filtershow/controller/ParameterIntegerMosaic;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterIntegerMosaic;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;)Landroid/widget/TextView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->mSeekbarText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->setFunctionBtnState(I)V

    return-void
.end method

.method private setFunctionBtnState(I)V
    .locals 5

    const v0, 0x7f080192

    const v1, 0x7f0500f8

    const v2, 0x7f0500d8

    const v3, 0x7f0701cc

    if-eq p1, v0, :cond_1

    const v0, 0x7f08024a

    const v4, 0x7f0701c4

    if-eq p1, v0, :cond_0

    .line 189
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->mPenButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 190
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->mEraserButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 175
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->mPenButton:Landroid/widget/ImageView;

    const v0, 0x7f0701d1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 176
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->mPenText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 178
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->mEraserButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 179
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->mEraserText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 182
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->mPenButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 183
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->mEraserButton:Landroid/widget/ImageView;

    const v0, 0x7f07013c

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 184
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->mEraserText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 186
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->mPenText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->mContext:Landroid/content/Context;

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
    .locals 3

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RestoreScreenChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v1

    iget v1, v1, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->radValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "longEditor"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    iget v0, v0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->radValue:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const-string v0, "RestoreScreenChange:aaaa "

    .line 223
    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterIntegerMosaic;

    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v1

    iget v1, v1, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->radValue:I

    invoke-interface {v0, v1}, Lcom/zui/gallery/filtershow/controller/ParameterIntegerMosaic;->setValue(I)V

    .line 225
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/editors/Editor;->commitLocalRepresentation()V

    .line 232
    :cond_0
    sget-boolean v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isEarseaMosaic:Z

    sput-boolean v0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->isEarsea:Z

    .line 233
    sget-boolean v0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->isEarsea:Z

    if-eqz v0, :cond_1

    const v0, 0x7f080192

    .line 234
    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->setFunctionBtnState(I)V

    :cond_1
    return-void
.end method

.method public getTopView()Landroid/view/View;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->mDrawSeekbar:Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;

    return-object v0
.end method

.method public setPrameter(Lcom/zui/gallery/filtershow/controller/Parameter;)V
    .locals 0

    .line 201
    check-cast p1, Lcom/zui/gallery/filtershow/controller/ParameterIntegerMosaic;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterIntegerMosaic;

    .line 202
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->mDrawSeekbar:Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;

    if-eqz p1, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->updateUI()V

    :cond_0
    return-void
.end method

.method public setUp(Landroid/view/ViewGroup;Lcom/zui/gallery/filtershow/controller/Parameter;Lcom/zui/gallery/filtershow/editors/Editor;)V
    .locals 7

    .line 61
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 62
    iput-object p3, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    .line 63
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 64
    iput-object p3, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->mContext:Landroid/content/Context;

    .line 65
    check-cast p2, Lcom/zui/gallery/filtershow/controller/ParameterIntegerMosaic;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterIntegerMosaic;

    const-string p2, "layout_inflater"

    .line 67
    invoke-virtual {p3, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const v0, 0x7f0b0067

    const/4 v1, 0x1

    .line 68
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const p2, 0x7f08028b

    .line 70
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->penLayout:Landroid/widget/LinearLayout;

    const p2, 0x7f08018f

    .line 71
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->eraserLayout:Landroid/widget/LinearLayout;

    const p2, 0x7f0802fb

    .line 72
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->seekbarLayout:Landroid/widget/LinearLayout;

    const p2, 0x7f0802b3

    .line 73
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->mDrawSeekbar:Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;

    .line 74
    new-instance p2, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic$1;

    invoke-direct {p2, p0}, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic$1;-><init>(Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;)V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->mSeekbarListener:Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage$SeekbarListener;

    .line 96
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->mDrawSeekbar:Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;

    .line 99
    sget-boolean p2, Lcom/zui/gallery/filtershow/FilterShowActivity;->isLandscape:Z

    const v1, 0x7f06017b

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06024d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr p2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    :goto_0
    move v3, p2

    iget-object v4, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->seekBarBallsID:[I

    .line 101
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0500ad

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iget-object v6, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->mSeekbarListener:Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage$SeekbarListener;

    const/16 v1, 0x64

    const/16 v2, 0x1e

    .line 96
    invoke-virtual/range {v0 .. v6}, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->initializeParams(III[IILcom/zui/gallery/filtershow/controller/DrawSeekBarImage$SeekbarListener;)V

    const p2, 0x7f08024a

    .line 103
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->mPenButton:Landroid/widget/ImageView;

    const p3, 0x7f080192

    .line 104
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->mEraserButton:Landroid/widget/ImageView;

    const p3, 0x7f08028d

    .line 105
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->mPenText:Landroid/widget/TextView;

    const p3, 0x7f080194

    .line 106
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->mEraserText:Landroid/widget/TextView;

    const p3, 0x7f0802fd

    .line 107
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->mSeekbarText:Landroid/widget/TextView;

    .line 108
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->seekbarLayout:Landroid/widget/LinearLayout;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 109
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->mPenButton:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->mEraserButton:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    invoke-direct {p0, p2}, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->setFunctionBtnState(I)V

    .line 112
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->penLayout:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic$penTouchListener;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic$penTouchListener;-><init>(Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic$1;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 113
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->eraserLayout:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic$eraserTouchListener;

    invoke-direct {p2, p0, v0}, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic$eraserTouchListener;-><init>(Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic$1;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 114
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->updateUI()V

    .line 115
    sput-boolean p3, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->isEarsea:Z

    return-void
.end method

.method public updateUI()V
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->mDrawSeekbar:Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;

    sget v1, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->mIndex:I

    iget-object v2, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterIntegerMosaic;

    invoke-interface {v2}, Lcom/zui/gallery/filtershow/controller/ParameterIntegerMosaic;->getMinimum()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->setCurrentIndex(I)V

    .line 215
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->mSeekbarText:Landroid/widget/TextView;

    sget v1, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->mIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
