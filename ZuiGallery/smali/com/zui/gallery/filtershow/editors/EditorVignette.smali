.class public Lcom/zui/gallery/filtershow/editors/EditorVignette;
.super Lcom/zui/gallery/filtershow/editors/ParametricEditor;
.source "EditorVignette.java"


# static fields
.field public static final ID:I = 0x7f0803a6

.field private static final LOGTAG:Ljava/lang/String; = "EditorVignettePlanet"


# instance fields
.field private mButton:Lcom/zui/gallery/filtershow/editors/SwapButton;

.field private mContrastBar:Landroid/widget/SeekBar;

.field private mContrastValue:Landroid/widget/TextView;

.field mCurrentlyEditing:Ljava/lang/String;

.field private mExposureBar:Landroid/widget/SeekBar;

.field private mExposureValue:Landroid/widget/TextView;

.field private mFalloffBar:Landroid/widget/SeekBar;

.field private mFalloffValue:Landroid/widget/TextView;

.field private final mHandler:Landroid/os/Handler;

.field mImageVignette:Lcom/zui/gallery/filtershow/imageshow/ImageVignette;

.field mMenuStrings:[I

.field private mSaturationBar:Landroid/widget/SeekBar;

.field private mSaturationValue:Landroid/widget/TextView;

.field private mVignetteBar:Landroid/widget/SeekBar;

.field private mVignetteValue:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    const v0, 0x7f0803a6

    const v1, 0x7f0b006c

    const v2, 0x7f0801ef

    .line 72
    invoke-direct {p0, v0, v1, v2}, Lcom/zui/gallery/filtershow/editors/ParametricEditor;-><init>(III)V

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 60
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mMenuStrings:[I

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mCurrentlyEditing:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f1002be
        0x7f1002bc
        0x7f1002bf
        0x7f1002bb
        0x7f1002bd
    .end array-data
.end method

.method static synthetic access$000(Lcom/zui/gallery/filtershow/editors/EditorVignette;)Lcom/zui/gallery/filtershow/editors/SwapButton;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mButton:Lcom/zui/gallery/filtershow/editors/SwapButton;

    return-object p0
.end method

.method private getVignetteRep()Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;
    .locals 2

    .line 273
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorVignette;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    instance-of v1, v0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;

    if-eqz v1, :cond_0

    .line 276
    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private updateSeekBar(Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;)V
    .locals 0

    .line 258
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mControl:Lcom/zui/gallery/filtershow/controller/Control;

    invoke-interface {p1}, Lcom/zui/gallery/filtershow/controller/Control;->updateUI()V

    return-void
.end method


# virtual methods
.method public calculateUserMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 141
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorVignette;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 142
    instance-of p2, p1, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;

    if-nez p2, :cond_0

    goto :goto_1

    .line 145
    :cond_0
    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;

    .line 146
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->getParameterMode()I

    move-result p2

    .line 149
    iget-object p3, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mMenuStrings:[I

    aget p2, v0, p2

    invoke-virtual {p3, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 151
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->getCurrentParameter()I

    move-result p1

    .line 152
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

.method public createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 77
    invoke-super {p0, p1, p2}, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    .line 78
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    check-cast p1, Lcom/zui/gallery/filtershow/imageshow/ImageVignette;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mImageVignette:Lcom/zui/gallery/filtershow/imageshow/ImageVignette;

    .line 79
    invoke-virtual {p1, p0}, Lcom/zui/gallery/filtershow/imageshow/ImageVignette;->setEditor(Lcom/zui/gallery/filtershow/editors/EditorVignette;)V

    return-void
.end method

.method public detach()V
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mButton:Lcom/zui/gallery/filtershow/editors/SwapButton;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 253
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/editors/SwapButton;->setListener(Lcom/zui/gallery/filtershow/editors/SwapButton$SwapButtonListener;)V

    .line 254
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mButton:Lcom/zui/gallery/filtershow/editors/SwapButton;

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
    const/4 p1, 0x0

    return p1

    :pswitch_2
    const/4 p1, 0x4

    return p1

    :pswitch_3
    const/4 p1, 0x1

    return p1

    :pswitch_4
    const/4 p1, 0x3

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x7f080187
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getParameterToEdit(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Lcom/zui/gallery/filtershow/controller/Parameter;
    .locals 1

    .line 263
    instance-of v0, p1, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;

    if-eqz v0, :cond_0

    .line 264
    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;

    .line 265
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->getParameterMode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->getFilterParameter(I)Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 310
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/editors/EditorVignette;->getVignetteRep()Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;

    move-result-object p3

    .line 313
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result p1

    const-string v0, ""

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const/4 p1, 0x2

    .line 327
    invoke-virtual {p3, p1}, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->setParameterMode(I)V

    .line 328
    invoke-virtual {p3}, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->getParameterMode()I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->getFilterParameter(I)Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    move-result-object p1

    .line 329
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->getMinimum()I

    move-result p1

    add-int/2addr p2, p1

    .line 330
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mSaturationValue:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :sswitch_1
    const/4 p1, 0x0

    .line 315
    invoke-virtual {p3, p1}, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->setParameterMode(I)V

    .line 316
    invoke-virtual {p3}, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->getParameterMode()I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->getFilterParameter(I)Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    move-result-object p1

    .line 317
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->getMinimum()I

    move-result p1

    add-int/2addr p2, p1

    .line 318
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mVignetteValue:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :sswitch_2
    const/4 p1, 0x4

    .line 339
    invoke-virtual {p3, p1}, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->setParameterMode(I)V

    .line 340
    invoke-virtual {p3}, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->getParameterMode()I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->getFilterParameter(I)Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    move-result-object p1

    .line 341
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->getMinimum()I

    move-result p1

    add-int/2addr p2, p1

    .line 342
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mFalloffValue:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :sswitch_3
    const/4 p1, 0x1

    .line 321
    invoke-virtual {p3, p1}, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->setParameterMode(I)V

    .line 322
    invoke-virtual {p3}, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->getParameterMode()I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->getFilterParameter(I)Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    move-result-object p1

    .line 323
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->getMinimum()I

    move-result p1

    add-int/2addr p2, p1

    .line 324
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mExposureValue:Landroid/widget/TextView;

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

    .line 333
    invoke-virtual {p3, p1}, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->setParameterMode(I)V

    .line 334
    invoke-virtual {p3}, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->getParameterMode()I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->getFilterParameter(I)Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    move-result-object p1

    .line 335
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->getMinimum()I

    move-result p1

    add-int/2addr p2, p1

    .line 336
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mContrastValue:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    :goto_0
    invoke-virtual {p3, p2}, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->setCurrentParameter(I)V

    .line 346
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorVignette;->commitLocalRepresentation()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0800f8 -> :sswitch_4
        0x7f08019b -> :sswitch_3
        0x7f08019d -> :sswitch_2
        0x7f080236 -> :sswitch_1
        0x7f0802da -> :sswitch_0
    .end sparse-switch
.end method

.method public openUtilityPanel(Landroid/widget/LinearLayout;)V
    .locals 3

    const v0, 0x7f080060

    .line 157
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/editors/SwapButton;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mButton:Lcom/zui/gallery/filtershow/editors/SwapButton;

    .line 158
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mContext:Landroid/content/Context;

    const v1, 0x7f1002be

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/editors/SwapButton;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/editors/EditorVignette;->useCompact(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 161
    new-instance p1, Landroid/widget/PopupMenu;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getActivity()Lcom/zui/gallery/filtershow/FilterShowActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mButton:Lcom/zui/gallery/filtershow/editors/SwapButton;

    invoke-direct {p1, v0, v1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 163
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0006

    .line 164
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    .line 163
    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 166
    new-instance v0, Lcom/zui/gallery/filtershow/editors/EditorVignette$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/editors/EditorVignette$1;-><init>(Lcom/zui/gallery/filtershow/editors/EditorVignette;)V

    invoke-virtual {p1, v0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 173
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mButton:Lcom/zui/gallery/filtershow/editors/SwapButton;

    new-instance v1, Lcom/zui/gallery/filtershow/editors/EditorVignette$2;

    invoke-direct {v1, p0, p1}, Lcom/zui/gallery/filtershow/editors/EditorVignette$2;-><init>(Lcom/zui/gallery/filtershow/editors/EditorVignette;Landroid/widget/PopupMenu;)V

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/editors/SwapButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mButton:Lcom/zui/gallery/filtershow/editors/SwapButton;

    invoke-virtual {p1, p0}, Lcom/zui/gallery/filtershow/editors/SwapButton;->setListener(Lcom/zui/gallery/filtershow/editors/SwapButton$SwapButtonListener;)V

    .line 182
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/editors/EditorVignette;->getVignetteRep()Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;

    move-result-object p1

    .line 183
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mMenuStrings:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-virtual {p0, p1, v2, v0}, Lcom/zui/gallery/filtershow/editors/EditorVignette;->switchToMode(Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;ILjava/lang/String;)V

    goto :goto_0

    .line 186
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mButton:Lcom/zui/gallery/filtershow/editors/SwapButton;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/editors/SwapButton;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public reflectCurrentFilter()V
    .locals 11

    .line 84
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/editors/EditorVignette;->useCompact(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    invoke-super {p0}, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->reflectCurrentFilter()V

    .line 87
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorVignette;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorVignette;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v1

    instance-of v1, v1, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;

    if-eqz v1, :cond_0

    .line 89
    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;

    .line 90
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mImageVignette:Lcom/zui/gallery/filtershow/imageshow/ImageVignette;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/filtershow/imageshow/ImageVignette;->setRepresentation(Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;)V

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorVignette;->updateText()V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mLocalRepresentation:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 96
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorVignette;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 97
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorVignette;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;

    if-eqz v0, :cond_3

    .line 99
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorVignette;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;

    const/4 v1, 0x5

    new-array v2, v1, [I

    .line 101
    fill-array-data v2, :array_0

    new-array v3, v1, [Landroid/widget/SeekBar;

    .line 108
    iget-object v4, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mVignetteBar:Landroid/widget/SeekBar;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mExposureBar:Landroid/widget/SeekBar;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mSaturationBar:Landroid/widget/SeekBar;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mContrastBar:Landroid/widget/SeekBar;

    const/4 v8, 0x3

    aput-object v4, v3, v8

    iget-object v4, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mFalloffBar:Landroid/widget/SeekBar;

    const/4 v9, 0x4

    aput-object v4, v3, v9

    new-array v4, v1, [Landroid/widget/TextView;

    .line 115
    iget-object v10, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mVignetteValue:Landroid/widget/TextView;

    aput-object v10, v4, v5

    iget-object v10, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mExposureValue:Landroid/widget/TextView;

    aput-object v10, v4, v6

    iget-object v6, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mSaturationValue:Landroid/widget/TextView;

    aput-object v6, v4, v7

    iget-object v6, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mContrastValue:Landroid/widget/TextView;

    aput-object v6, v4, v8

    iget-object v6, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mFalloffValue:Landroid/widget/TextView;

    aput-object v6, v4, v9

    :goto_0
    if-ge v5, v1, :cond_2

    .line 123
    aget v6, v2, v5

    invoke-virtual {v0, v6}, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->getFilterParameter(I)Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    move-result-object v6

    .line 124
    invoke-virtual {v6}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->getValue()I

    move-result v7

    .line 125
    aget-object v8, v3, v5

    invoke-virtual {v6}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->getMaximum()I

    move-result v9

    invoke-virtual {v6}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->getMinimum()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v8, v9}, Landroid/widget/SeekBar;->setMax(I)V

    .line 126
    aget-object v8, v3, v5

    invoke-virtual {v6}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->getMinimum()I

    move-result v6

    sub-int v6, v7, v6

    invoke-virtual {v8, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 127
    aget-object v6, v4, v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 130
    :cond_2
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mImageVignette:Lcom/zui/gallery/filtershow/imageshow/ImageVignette;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/filtershow/imageshow/ImageVignette;->setRepresentation(Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;)V

    .line 131
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->getTextId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mFilterTitle:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 133
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorVignette;->updateText()V

    :cond_3
    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method protected selectMenuItem(Landroid/view/MenuItem;)V
    .locals 2

    .line 283
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorVignette;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorVignette;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorVignette;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;

    .line 288
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/editors/EditorVignette;->getParameterIndex(I)I

    move-result v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/zui/gallery/filtershow/editors/EditorVignette;->switchToMode(Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setUtilityPanelUI(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/editors/EditorVignette;->useCompact(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-super {p0, p1, p2}, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->setUtilityPanelUI(Landroid/view/View;Landroid/view/View;)V

    return-void

    .line 196
    :cond_0
    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mActionButton:Landroid/view/View;

    .line 197
    iput-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mEditControl:Landroid/view/View;

    .line 198
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mEditTitle:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 199
    check-cast p2, Landroid/widget/LinearLayout;

    .line 200
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 201
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v0, 0x7f0b006b

    const/4 v1, 0x0

    .line 202
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 204
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 206
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 208
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const p2, 0x7f080236

    .line 210
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mVignetteBar:Landroid/widget/SeekBar;

    const/16 v0, 0xc8

    .line 211
    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 212
    iget-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mVignetteBar:Landroid/widget/SeekBar;

    invoke-virtual {p2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const p2, 0x7f080237

    .line 213
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mVignetteValue:Landroid/widget/TextView;

    const p2, 0x7f08019b

    .line 214
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mExposureBar:Landroid/widget/SeekBar;

    .line 215
    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 216
    iget-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mExposureBar:Landroid/widget/SeekBar;

    invoke-virtual {p2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const p2, 0x7f08019c

    .line 217
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mExposureValue:Landroid/widget/TextView;

    const p2, 0x7f0802da

    .line 218
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mSaturationBar:Landroid/widget/SeekBar;

    .line 219
    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 220
    iget-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mSaturationBar:Landroid/widget/SeekBar;

    invoke-virtual {p2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const p2, 0x7f0802db

    .line 221
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mSaturationValue:Landroid/widget/TextView;

    const p2, 0x7f0800f8

    .line 222
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mContrastBar:Landroid/widget/SeekBar;

    .line 223
    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 224
    iget-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mContrastBar:Landroid/widget/SeekBar;

    invoke-virtual {p2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const p2, 0x7f0800f9

    .line 225
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mContrastValue:Landroid/widget/TextView;

    const p2, 0x7f08019d

    .line 226
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mFalloffBar:Landroid/widget/SeekBar;

    .line 227
    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 228
    iget-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mFalloffBar:Landroid/widget/SeekBar;

    invoke-virtual {p2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const p2, 0x7f08019e

    .line 229
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mFalloffValue:Landroid/widget/TextView;

    return-void
.end method

.method public swapLeft(Landroid/view/MenuItem;)V
    .locals 4

    .line 351
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->swapLeft(Landroid/view/MenuItem;)V

    .line 352
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mButton:Lcom/zui/gallery/filtershow/editors/SwapButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/editors/SwapButton;->setTranslationX(F)V

    .line 353
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mButton:Lcom/zui/gallery/filtershow/editors/SwapButton;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/editors/SwapButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mButton:Lcom/zui/gallery/filtershow/editors/SwapButton;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/editors/SwapButton;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget v1, Lcom/zui/gallery/filtershow/editors/SwapButton;->ANIM_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 354
    new-instance v0, Lcom/zui/gallery/filtershow/editors/EditorVignette$3;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/editors/EditorVignette$3;-><init>(Lcom/zui/gallery/filtershow/editors/EditorVignette;)V

    .line 361
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mHandler:Landroid/os/Handler;

    sget v2, Lcom/zui/gallery/filtershow/editors/SwapButton;->ANIM_DURATION:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 362
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/editors/EditorVignette;->selectMenuItem(Landroid/view/MenuItem;)V

    return-void
.end method

.method public swapRight(Landroid/view/MenuItem;)V
    .locals 4

    .line 367
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->swapRight(Landroid/view/MenuItem;)V

    .line 368
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mButton:Lcom/zui/gallery/filtershow/editors/SwapButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/editors/SwapButton;->setTranslationX(F)V

    .line 369
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mButton:Lcom/zui/gallery/filtershow/editors/SwapButton;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/editors/SwapButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mButton:Lcom/zui/gallery/filtershow/editors/SwapButton;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/editors/SwapButton;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget v1, Lcom/zui/gallery/filtershow/editors/SwapButton;->ANIM_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 370
    new-instance v0, Lcom/zui/gallery/filtershow/editors/EditorVignette$4;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/editors/EditorVignette$4;-><init>(Lcom/zui/gallery/filtershow/editors/EditorVignette;)V

    .line 377
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mHandler:Landroid/os/Handler;

    sget v2, Lcom/zui/gallery/filtershow/editors/SwapButton;->ANIM_DURATION:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 378
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/editors/EditorVignette;->selectMenuItem(Landroid/view/MenuItem;)V

    return-void
.end method

.method protected switchToMode(Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;ILjava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 296
    :cond_0
    invoke-virtual {p1, p2}, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->setParameterMode(I)V

    .line 297
    iput-object p3, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mCurrentlyEditing:Ljava/lang/String;

    .line 298
    iget-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mButton:Lcom/zui/gallery/filtershow/editors/SwapButton;

    invoke-virtual {p2, p3}, Lcom/zui/gallery/filtershow/editors/SwapButton;->setText(Ljava/lang/CharSequence;)V

    .line 300
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/editors/EditorVignette;->getParameterToEdit(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Lcom/zui/gallery/filtershow/controller/Parameter;

    move-result-object p2

    .line 302
    iget-object p3, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mEditControl:Landroid/view/View;

    invoke-virtual {p0, p2, p3}, Lcom/zui/gallery/filtershow/editors/EditorVignette;->control(Lcom/zui/gallery/filtershow/controller/Parameter;Landroid/view/View;)V

    .line 304
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/editors/EditorVignette;->updateSeekBar(Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;)V

    .line 305
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
