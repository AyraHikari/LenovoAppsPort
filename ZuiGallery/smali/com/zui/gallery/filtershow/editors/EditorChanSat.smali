.class public Lcom/zui/gallery/filtershow/editors/EditorChanSat;
.super Lcom/zui/gallery/filtershow/editors/ParametricEditor;
.source "EditorChanSat.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/zui/gallery/filtershow/controller/FilterView;


# static fields
.field public static final ID:I = 0x7f080170


# instance fields
.field private final LOGTAG:Ljava/lang/String;

.field private mBlueBar:Landroid/widget/SeekBar;

.field private mBlueValue:Landroid/widget/TextView;

.field private mButton:Lcom/zui/gallery/filtershow/editors/SwapButton;

.field mCurrentlyEditing:Ljava/lang/String;

.field private mCyanBar:Landroid/widget/SeekBar;

.field private mCyanValue:Landroid/widget/TextView;

.field private mGreenBar:Landroid/widget/SeekBar;

.field private mGreenValue:Landroid/widget/TextView;

.field private final mHandler:Landroid/os/Handler;

.field private mMagentaBar:Landroid/widget/SeekBar;

.field private mMagentaValue:Landroid/widget/TextView;

.field private mMainBar:Landroid/widget/SeekBar;

.field private mMainValue:Landroid/widget/TextView;

.field mMenuStrings:[I

.field private mRedBar:Landroid/widget/SeekBar;

.field private mRedValue:Landroid/widget/TextView;

.field private mYellowBar:Landroid/widget/SeekBar;

.field private mYellowValue:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    const v0, 0x7f080170

    const v1, 0x7f0b0053

    const v2, 0x7f080089

    .line 78
    invoke-direct {p0, v0, v1, v2}, Lcom/zui/gallery/filtershow/editors/ParametricEditor;-><init>(III)V

    const-string v0, "EditorGrunge"

    .line 46
    iput-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->LOGTAG:Ljava/lang/String;

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 65
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mMenuStrings:[I

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mCurrentlyEditing:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f100102
        0x7f100103
        0x7f100104
        0x7f100100
        0x7f1000ff
        0x7f1000fe
        0x7f100101
    .end array-data
.end method

.method static synthetic access$000(Lcom/zui/gallery/filtershow/editors/EditorChanSat;)Lcom/zui/gallery/filtershow/editors/SwapButton;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mButton:Lcom/zui/gallery/filtershow/editors/SwapButton;

    return-object p0
.end method

.method private getChanSatRep()Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;
    .locals 2

    .line 267
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 268
    instance-of v1, v0, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;

    if-eqz v1, :cond_0

    .line 270
    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private updateSeekBar(Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;)V
    .locals 0

    .line 250
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mControl:Lcom/zui/gallery/filtershow/controller/Control;

    invoke-interface {p1}, Lcom/zui/gallery/filtershow/controller/Control;->updateUI()V

    return-void
.end method


# virtual methods
.method public calculateUserMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 84
    instance-of p2, p1, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;

    if-nez p2, :cond_0

    goto :goto_1

    .line 87
    :cond_0
    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;

    .line 88
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->getParameterMode()I

    move-result p2

    .line 91
    iget-object p3, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mMenuStrings:[I

    aget p2, v0, p2

    invoke-virtual {p3, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 93
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->getCurrentParameter()I

    move-result p1

    .line 94
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez p1, :cond_1

    const-string p2, " +"

    goto :goto_0

    :cond_1
    const-string p2, " "

    :goto_0
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    const-string p1, ""

    return-object p1
.end method

.method public computeIcon(ILcom/zui/gallery/filtershow/controller/BitmapCaller;)V
    .locals 1

    .line 278
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->getChanSatRep()Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 280
    :cond_0
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->copy()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;

    .line 281
    new-instance v0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;-><init>()V

    .line 282
    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->addFilter(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 283
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 284
    invoke-interface {p2, p1}, Lcom/zui/gallery/filtershow/controller/BitmapCaller;->available(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public detach()V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mButton:Lcom/zui/gallery/filtershow/editors/SwapButton;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 245
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/editors/SwapButton;->setListener(Lcom/zui/gallery/filtershow/editors/SwapButton$SwapButtonListener;)V

    .line 246
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mButton:Lcom/zui/gallery/filtershow/editors/SwapButton;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/editors/SwapButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getParameterIndex(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, -0x1

    return p1

    :pswitch_0
    const/4 p1, 0x2

    return p1

    :pswitch_1
    const/4 p1, 0x1

    return p1

    :pswitch_2
    const/4 p1, 0x0

    return p1

    :pswitch_3
    const/4 p1, 0x6

    return p1

    :pswitch_4
    const/4 p1, 0x3

    return p1

    :pswitch_5
    const/4 p1, 0x4

    return p1

    :pswitch_6
    const/4 p1, 0x5

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x7f08017c
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getParameterToEdit(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Lcom/zui/gallery/filtershow/controller/Parameter;
    .locals 1

    .line 255
    instance-of v0, p1, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;

    if-eqz v0, :cond_1

    .line 256
    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;

    .line 257
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->getParameterMode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->getFilterParameter(I)Lcom/zui/gallery/filtershow/controller/Parameter;

    move-result-object p1

    .line 258
    instance-of v0, p1, Lcom/zui/gallery/filtershow/controller/BasicParameterStyle;

    if-eqz v0, :cond_0

    .line 259
    invoke-interface {p1, p0}, Lcom/zui/gallery/filtershow/controller/Parameter;->setFilterView(Lcom/zui/gallery/filtershow/controller/FilterView;)V

    :cond_0
    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 316
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->getChanSatRep()Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;

    move-result-object p3

    add-int/lit8 p2, p2, -0x64

    .line 318
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result p1

    const-string v0, ""

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const/4 p1, 0x2

    .line 328
    invoke-virtual {p3, p1}, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->setParameterMode(I)V

    .line 329
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mYellowValue:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :sswitch_1
    const/4 p1, 0x1

    .line 324
    invoke-virtual {p3, p1}, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->setParameterMode(I)V

    .line 325
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mRedValue:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :sswitch_2
    const/4 p1, 0x0

    .line 320
    invoke-virtual {p3, p1}, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->setParameterMode(I)V

    .line 321
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mMainValue:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :sswitch_3
    const/4 p1, 0x6

    .line 344
    invoke-virtual {p3, p1}, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->setParameterMode(I)V

    .line 345
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mMagentaValue:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :sswitch_4
    const/4 p1, 0x3

    .line 332
    invoke-virtual {p3, p1}, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->setParameterMode(I)V

    .line 333
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mGreenValue:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :sswitch_5
    const/4 p1, 0x4

    .line 336
    invoke-virtual {p3, p1}, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->setParameterMode(I)V

    .line 337
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mCyanValue:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :sswitch_6
    const/4 p1, 0x5

    .line 340
    invoke-virtual {p3, p1}, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->setParameterMode(I)V

    .line 341
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mBlueValue:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    :goto_0
    invoke-virtual {p3, p2}, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->setCurrentParameter(I)V

    .line 349
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->commitLocalRepresentation()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f08008e -> :sswitch_6
        0x7f08012b -> :sswitch_5
        0x7f0801ce -> :sswitch_4
        0x7f080230 -> :sswitch_3
        0x7f080233 -> :sswitch_2
        0x7f0802c4 -> :sswitch_1
        0x7f0803cc -> :sswitch_0
    .end sparse-switch
.end method

.method public openUtilityPanel(Landroid/widget/LinearLayout;)V
    .locals 3

    const v0, 0x7f080060

    .line 99
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/editors/SwapButton;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mButton:Lcom/zui/gallery/filtershow/editors/SwapButton;

    .line 100
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mContext:Landroid/content/Context;

    const v1, 0x7f100102

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/editors/SwapButton;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->useCompact(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 103
    new-instance p1, Landroid/widget/PopupMenu;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getActivity()Lcom/zui/gallery/filtershow/FilterShowActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mButton:Lcom/zui/gallery/filtershow/editors/SwapButton;

    invoke-direct {p1, v0, v1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 105
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0c0000

    .line 106
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    .line 105
    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 108
    new-instance v0, Lcom/zui/gallery/filtershow/editors/EditorChanSat$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/editors/EditorChanSat$1;-><init>(Lcom/zui/gallery/filtershow/editors/EditorChanSat;)V

    invoke-virtual {p1, v0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mButton:Lcom/zui/gallery/filtershow/editors/SwapButton;

    new-instance v1, Lcom/zui/gallery/filtershow/editors/EditorChanSat$2;

    invoke-direct {v1, p0, p1}, Lcom/zui/gallery/filtershow/editors/EditorChanSat$2;-><init>(Lcom/zui/gallery/filtershow/editors/EditorChanSat;Landroid/widget/PopupMenu;)V

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/editors/SwapButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mButton:Lcom/zui/gallery/filtershow/editors/SwapButton;

    invoke-virtual {p1, p0}, Lcom/zui/gallery/filtershow/editors/SwapButton;->setListener(Lcom/zui/gallery/filtershow/editors/SwapButton$SwapButtonListener;)V

    .line 124
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->getChanSatRep()Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;

    move-result-object p1

    .line 125
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mMenuStrings:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-virtual {p0, p1, v2, v0}, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->switchToMode(Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;ILjava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mButton:Lcom/zui/gallery/filtershow/editors/SwapButton;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mContext:Landroid/content/Context;

    const v1, 0x7f10021c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/editors/SwapButton;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public reflectCurrentFilter()V
    .locals 5

    .line 134
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->useCompact(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-super {p0}, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->reflectCurrentFilter()V

    .line 136
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->updateText()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 139
    iput-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mLocalRepresentation:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 140
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;

    if-eqz v0, :cond_1

    .line 143
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;

    const/4 v1, 0x0

    .line 144
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->getValue(I)I

    move-result v1

    .line 145
    iget-object v2, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mMainBar:Landroid/widget/SeekBar;

    add-int/lit8 v3, v1, 0x64

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 146
    iget-object v2, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mMainValue:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 147
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->getValue(I)I

    move-result v1

    .line 148
    iget-object v2, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mRedBar:Landroid/widget/SeekBar;

    add-int/lit8 v3, v1, 0x64

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 149
    iget-object v2, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mRedValue:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    .line 150
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->getValue(I)I

    move-result v1

    .line 151
    iget-object v2, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mYellowBar:Landroid/widget/SeekBar;

    add-int/lit8 v3, v1, 0x64

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 152
    iget-object v2, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mYellowValue:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x3

    .line 153
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->getValue(I)I

    move-result v1

    .line 154
    iget-object v2, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mGreenBar:Landroid/widget/SeekBar;

    add-int/lit8 v3, v1, 0x64

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 155
    iget-object v2, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mGreenValue:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x4

    .line 156
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->getValue(I)I

    move-result v1

    .line 157
    iget-object v2, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mCyanBar:Landroid/widget/SeekBar;

    add-int/lit8 v3, v1, 0x64

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 158
    iget-object v2, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mCyanValue:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x5

    .line 159
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->getValue(I)I

    move-result v1

    .line 160
    iget-object v2, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mBlueBar:Landroid/widget/SeekBar;

    add-int/lit8 v3, v1, 0x64

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 161
    iget-object v2, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mBlueValue:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x6

    .line 162
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->getValue(I)I

    move-result v1

    .line 163
    iget-object v2, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mMagentaBar:Landroid/widget/SeekBar;

    add-int/lit8 v3, v1, 0x64

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 164
    iget-object v2, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mMagentaValue:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->getTextId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mFilterTitle:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 167
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->updateText()V

    :cond_1
    return-void
.end method

.method protected selectMenuItem(Landroid/view/MenuItem;)V
    .locals 2

    .line 288
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;

    .line 293
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->getParameterIndex(I)I

    move-result v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->switchToMode(Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setUtilityPanelUI(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->useCompact(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-super {p0, p1, p2}, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->setUtilityPanelUI(Landroid/view/View;Landroid/view/View;)V

    return-void

    .line 177
    :cond_0
    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mActionButton:Landroid/view/View;

    .line 178
    iput-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mEditControl:Landroid/view/View;

    .line 179
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mEditTitle:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 180
    check-cast p2, Landroid/widget/LinearLayout;

    .line 181
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 182
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v0, 0x7f0b0063

    const/4 v1, 0x0

    .line 183
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 185
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 187
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 189
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const p2, 0x7f080233

    .line 190
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mMainBar:Landroid/widget/SeekBar;

    const/16 v0, 0xc8

    .line 191
    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 192
    iget-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mMainBar:Landroid/widget/SeekBar;

    invoke-virtual {p2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const p2, 0x7f080234

    .line 193
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mMainValue:Landroid/widget/TextView;

    const p2, 0x7f0802c4

    .line 194
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mRedBar:Landroid/widget/SeekBar;

    .line 195
    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 196
    iget-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mRedBar:Landroid/widget/SeekBar;

    invoke-virtual {p2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const p2, 0x7f0802c5

    .line 197
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mRedValue:Landroid/widget/TextView;

    const p2, 0x7f0803cc

    .line 198
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mYellowBar:Landroid/widget/SeekBar;

    .line 199
    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 200
    iget-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mYellowBar:Landroid/widget/SeekBar;

    invoke-virtual {p2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const p2, 0x7f0803cd

    .line 201
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mYellowValue:Landroid/widget/TextView;

    const p2, 0x7f0801ce

    .line 202
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mGreenBar:Landroid/widget/SeekBar;

    .line 203
    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 204
    iget-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mGreenBar:Landroid/widget/SeekBar;

    invoke-virtual {p2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const p2, 0x7f0801cf

    .line 205
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mGreenValue:Landroid/widget/TextView;

    const p2, 0x7f08012b

    .line 206
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mCyanBar:Landroid/widget/SeekBar;

    .line 207
    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 208
    iget-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mCyanBar:Landroid/widget/SeekBar;

    invoke-virtual {p2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const p2, 0x7f08012c

    .line 209
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mCyanValue:Landroid/widget/TextView;

    const p2, 0x7f08008e

    .line 210
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mBlueBar:Landroid/widget/SeekBar;

    .line 211
    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 212
    iget-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mBlueBar:Landroid/widget/SeekBar;

    invoke-virtual {p2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const p2, 0x7f08008f

    .line 213
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mBlueValue:Landroid/widget/TextView;

    const p2, 0x7f080230

    .line 214
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mMagentaBar:Landroid/widget/SeekBar;

    .line 215
    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 216
    iget-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mMagentaBar:Landroid/widget/SeekBar;

    invoke-virtual {p2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const p2, 0x7f080231

    .line 217
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mMagentaValue:Landroid/widget/TextView;

    return-void
.end method

.method public swapLeft(Landroid/view/MenuItem;)V
    .locals 4

    .line 354
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->swapLeft(Landroid/view/MenuItem;)V

    .line 355
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mButton:Lcom/zui/gallery/filtershow/editors/SwapButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/editors/SwapButton;->setTranslationX(F)V

    .line 356
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mButton:Lcom/zui/gallery/filtershow/editors/SwapButton;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/editors/SwapButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mButton:Lcom/zui/gallery/filtershow/editors/SwapButton;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/editors/SwapButton;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget v1, Lcom/zui/gallery/filtershow/editors/SwapButton;->ANIM_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 357
    new-instance v0, Lcom/zui/gallery/filtershow/editors/EditorChanSat$3;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/editors/EditorChanSat$3;-><init>(Lcom/zui/gallery/filtershow/editors/EditorChanSat;)V

    .line 364
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mHandler:Landroid/os/Handler;

    sget v2, Lcom/zui/gallery/filtershow/editors/SwapButton;->ANIM_DURATION:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 365
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->selectMenuItem(Landroid/view/MenuItem;)V

    return-void
.end method

.method public swapRight(Landroid/view/MenuItem;)V
    .locals 4

    .line 370
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->swapRight(Landroid/view/MenuItem;)V

    .line 371
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mButton:Lcom/zui/gallery/filtershow/editors/SwapButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/editors/SwapButton;->setTranslationX(F)V

    .line 372
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mButton:Lcom/zui/gallery/filtershow/editors/SwapButton;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/editors/SwapButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mButton:Lcom/zui/gallery/filtershow/editors/SwapButton;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/editors/SwapButton;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget v1, Lcom/zui/gallery/filtershow/editors/SwapButton;->ANIM_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 373
    new-instance v0, Lcom/zui/gallery/filtershow/editors/EditorChanSat$4;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/editors/EditorChanSat$4;-><init>(Lcom/zui/gallery/filtershow/editors/EditorChanSat;)V

    .line 380
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mHandler:Landroid/os/Handler;

    sget v2, Lcom/zui/gallery/filtershow/editors/SwapButton;->ANIM_DURATION:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 381
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->selectMenuItem(Landroid/view/MenuItem;)V

    return-void
.end method

.method protected switchToMode(Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;ILjava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 302
    :cond_0
    invoke-virtual {p1, p2}, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->setParameterMode(I)V

    .line 303
    iput-object p3, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mCurrentlyEditing:Ljava/lang/String;

    .line 304
    iget-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mButton:Lcom/zui/gallery/filtershow/editors/SwapButton;

    invoke-virtual {p2, p3}, Lcom/zui/gallery/filtershow/editors/SwapButton;->setText(Ljava/lang/CharSequence;)V

    .line 306
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->getParameterToEdit(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Lcom/zui/gallery/filtershow/controller/Parameter;

    move-result-object p2

    .line 308
    iget-object p3, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mEditControl:Landroid/view/View;

    invoke-virtual {p0, p2, p3}, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->control(Lcom/zui/gallery/filtershow/controller/Parameter;Landroid/view/View;)V

    .line 310
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->updateSeekBar(Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;)V

    .line 311
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
