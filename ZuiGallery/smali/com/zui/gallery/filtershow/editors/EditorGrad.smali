.class public Lcom/zui/gallery/filtershow/editors/EditorGrad;
.super Lcom/zui/gallery/filtershow/editors/ParametricEditor;
.source "EditorGrad.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/zui/gallery/filtershow/controller/ParameterActionAndInt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/filtershow/editors/EditorGrad$ParamAdapter;
    }
.end annotation


# static fields
.field private static final ADD_ICON:I = 0x7f070224

.field private static final DEL_ICON:I = 0x7f070225

.field public static final ID:I = 0x7f080176

.field private static final LOGTAG:Ljava/lang/String; = "EditorGrad"

.field private static final MODE_BRIGHTNESS:I = 0x0

.field private static final MODE_CONTRAST:I = 0x2

.field private static final MODE_SATURATION:I = 0x1


# instance fields
.field mAdapters:[Lcom/zui/gallery/filtershow/editors/EditorGrad$ParamAdapter;

.field mAddModeButton:Landroid/widget/ToggleButton;

.field mEffectName:Ljava/lang/String;

.field mImageGrad:Lcom/zui/gallery/filtershow/imageshow/ImageGrad;

.field mPopupMenu:Landroid/widget/PopupMenu;

.field private mSliderMode:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const v0, 0x7f080176

    const v1, 0x7f0b0058

    const v2, 0x7f0801c9

    .line 60
    invoke-direct {p0, v0, v1, v2}, Lcom/zui/gallery/filtershow/editors/ParametricEditor;-><init>(III)V

    const-string v0, ""

    .line 50
    iput-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad;->mEffectName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad;->mSliderMode:I

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/zui/gallery/filtershow/editors/EditorGrad$ParamAdapter;

    .line 58
    iput-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad;->mAdapters:[Lcom/zui/gallery/filtershow/editors/EditorGrad$ParamAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/filtershow/editors/EditorGrad;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/editors/EditorGrad;->showPopupMenu(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method static synthetic access$100(Lcom/zui/gallery/filtershow/editors/EditorGrad;)Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/editors/EditorGrad;->getGradRepresentation()Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/zui/gallery/filtershow/editors/EditorGrad;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad;->mSliderMode:I

    return p0
.end method

.method static synthetic access$202(Lcom/zui/gallery/filtershow/editors/EditorGrad;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad;->mSliderMode:I

    return p1
.end method

.method static synthetic access$300(Lcom/zui/gallery/filtershow/editors/EditorGrad;Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/editors/EditorGrad;->updateMenuItems(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;)V

    return-void
.end method

.method private getGradRepresentation()Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;
    .locals 2

    .line 318
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorGrad;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    .line 319
    instance-of v1, v0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    if-eqz v1, :cond_0

    .line 320
    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private setUpPopupMenu(Landroid/widget/Button;)V
    .locals 2

    .line 262
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getActivity()Lcom/zui/gallery/filtershow/FilterShowActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 263
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 264
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f0c0005

    invoke-virtual {p1, v1, v0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 265
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorGrad;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    if-nez p1, :cond_0

    return-void

    .line 269
    :cond_0
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/editors/EditorGrad;->updateMenuItems(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;)V

    .line 270
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/gallery/filtershow/editors/EditorGrad;->hackFixStrings(Landroid/view/Menu;)V

    .line 271
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorGrad;->setEffectName()V

    .line 272
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorGrad;->updateText()V

    .line 274
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad;->mPopupMenu:Landroid/widget/PopupMenu;

    new-instance v0, Lcom/zui/gallery/filtershow/editors/EditorGrad$4;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/editors/EditorGrad$4;-><init>(Lcom/zui/gallery/filtershow/editors/EditorGrad;)V

    invoke-virtual {p1, v0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    return-void
.end method

.method private showPopupMenu(Landroid/widget/LinearLayout;)V
    .locals 1

    const v0, 0x7f080060

    .line 249
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-nez p1, :cond_0

    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad;->mPopupMenu:Landroid/widget/PopupMenu;

    if-nez v0, :cond_1

    .line 255
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/editors/EditorGrad;->setUpPopupMenu(Landroid/widget/Button;)V

    .line 257
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->show()V

    .line 258
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/zui/gallery/filtershow/FilterShowActivity;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->onShowMenu(Landroid/widget/PopupMenu;)V

    return-void
.end method

.method private updateMenuItems(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;)V
    .locals 0

    .line 132
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->getNumberOfBands()I

    return-void
.end method


# virtual methods
.method public calculateUserMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 309
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/editors/EditorGrad;->getGradRepresentation()Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    move-result-object p1

    if-nez p1, :cond_0

    .line 311
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad;->mEffectName:Ljava/lang/String;

    return-object p1

    .line 313
    :cond_0
    iget p2, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad;->mSliderMode:I

    invoke-virtual {p1, p2}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->getParameter(I)I

    move-result p1

    .line 314
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad;->mEffectName:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez p1, :cond_1

    const-string p3, " +"

    goto :goto_0

    :cond_1
    const-string p3, " "

    :goto_0
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public clearAddMode()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad;->mAddModeButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 73
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorGrad;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    .line 74
    instance-of v1, v0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    if-eqz v1, :cond_0

    .line 75
    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/editors/EditorGrad;->updateMenuItems(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;)V

    :cond_0
    return-void
.end method

.method public copyFrom(Lcom/zui/gallery/filtershow/controller/Parameter;)V
    .locals 0

    return-void
.end method

.method public createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 65
    invoke-super {p0, p1, p2}, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    .line 66
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    check-cast p1, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad;->mImageGrad:Lcom/zui/gallery/filtershow/imageshow/ImageGrad;

    .line 67
    invoke-virtual {p1, p0}, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->setEditor(Lcom/zui/gallery/filtershow/editors/EditorGrad;)V

    return-void
.end method

.method public fireLeftAction()V
    .locals 2

    .line 388
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/editors/EditorGrad;->getGradRepresentation()Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 392
    :cond_0
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->addBand(Landroid/graphics/Rect;)I

    .line 393
    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/editors/EditorGrad;->updateMenuItems(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;)V

    .line 394
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/editors/EditorGrad;->updateSeekBar(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;)V

    .line 396
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorGrad;->commitLocalRepresentation()V

    .line 397
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public fireRightAction()V
    .locals 1

    .line 407
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/editors/EditorGrad;->getGradRepresentation()Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 411
    :cond_0
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->deleteCurrentBand()V

    .line 413
    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/editors/EditorGrad;->updateMenuItems(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;)V

    .line 414
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/editors/EditorGrad;->updateSeekBar(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;)V

    .line 415
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorGrad;->commitLocalRepresentation()V

    .line 416
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public getDefaultValue()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLeftIcon()I
    .locals 1

    const v0, 0x7f070224

    return v0
.end method

.method public getMaximum()I
    .locals 2

    .line 327
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/editors/EditorGrad;->getGradRepresentation()Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 331
    :cond_0
    iget v1, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad;->mSliderMode:I

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->getParameterMax(I)I

    move-result v0

    return v0
.end method

.method public getMinimum()I
    .locals 2

    .line 336
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/editors/EditorGrad;->getGradRepresentation()Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 340
    :cond_0
    iget v1, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad;->mSliderMode:I

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->getParameterMin(I)I

    move-result v0

    return v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad;->mEffectName:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterType()Ljava/lang/String;
    .locals 1

    const-string v0, "ParameterActionAndInt"

    return-object v0
.end method

.method public getRightIcon()I
    .locals 1

    const v0, 0x7f070225

    return v0
.end method

.method public getValue()I
    .locals 2

    .line 350
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/editors/EditorGrad;->getGradRepresentation()Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 354
    :cond_0
    iget v1, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad;->mSliderMode:I

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->getParameter(I)I

    move-result v0

    return v0
.end method

.method public getValueString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 101
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorGrad;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p1

    .line 102
    instance-of p3, p1, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    if-eqz p3, :cond_0

    .line 103
    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    .line 104
    iget p3, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad;->mSliderMode:I

    invoke-virtual {p1, p3}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->getParameterMin(I)I

    move-result p3

    add-int/2addr p2, p3

    .line 106
    iget p3, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad;->mSliderMode:I

    invoke-virtual {p1, p3, p2}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->setParameter(II)V

    .line 107
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 108
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorGrad;->commitLocalRepresentation()V

    :cond_0
    return-void
.end method

.method public openUtilityPanel(Landroid/widget/LinearLayout;)V
    .locals 3

    const v0, 0x7f080060

    .line 114
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 115
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zui/gallery/filtershow/editors/EditorGrad;->useCompact(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad;->mContext:Landroid/content/Context;

    const v2, 0x7f100105

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 117
    new-instance v1, Lcom/zui/gallery/filtershow/editors/EditorGrad$1;

    invoke-direct {v1, p0, p1}, Lcom/zui/gallery/filtershow/editors/EditorGrad$1;-><init>(Lcom/zui/gallery/filtershow/editors/EditorGrad;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/editors/EditorGrad;->setUpPopupMenu(Landroid/widget/Button;)V

    .line 125
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorGrad;->setEffectName()V

    goto :goto_0

    .line 127
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad;->mContext:Landroid/content/Context;

    const v1, 0x7f100165

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public reflectCurrentFilter()V
    .locals 2

    .line 81
    invoke-super {p0}, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->reflectCurrentFilter()V

    .line 82
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorGrad;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    .line 83
    instance-of v1, v0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    if-eqz v1, :cond_0

    .line 84
    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    .line 85
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->showParameterValue()Z

    .line 87
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad;->mImageGrad:Lcom/zui/gallery/filtershow/imageshow/ImageGrad;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->setRepresentation(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;)V

    :cond_0
    return-void
.end method

.method public setController(Lcom/zui/gallery/filtershow/controller/Control;)V
    .locals 0

    return-void
.end method

.method public setEffectName()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f080183

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 138
    invoke-interface {v0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad;->mEffectName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setFilterView(Lcom/zui/gallery/filtershow/controller/FilterView;)V
    .locals 0

    return-void
.end method

.method public setUtilityPanelUI(Landroid/view/View;Landroid/view/View;)V
    .locals 9

    .line 144
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->useCompact(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-super {p0, p1, p2}, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->setUtilityPanelUI(Landroid/view/View;Landroid/view/View;)V

    return-void

    :cond_0
    const p1, 0x7f0802b0

    .line 148
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad;->mSeekBar:Landroid/widget/SeekBar;

    .line 149
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz p1, :cond_1

    .line 150
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 152
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 153
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v0, 0x7f0b0059

    .line 154
    check-cast p2, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 157
    iget-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad;->mAdapters:[Lcom/zui/gallery/filtershow/editors/EditorGrad$ParamAdapter;

    new-instance v0, Lcom/zui/gallery/filtershow/editors/EditorGrad$ParamAdapter;

    const v4, 0x7f0801c6

    const v5, 0x7f0801c7

    const/4 v7, 0x2

    move-object v2, v0

    move-object v3, p0

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/zui/gallery/filtershow/editors/EditorGrad$ParamAdapter;-><init>(Lcom/zui/gallery/filtershow/editors/EditorGrad;IILandroid/widget/LinearLayout;I)V

    const/4 v8, 0x0

    aput-object v0, p2, v8

    .line 159
    iget-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad;->mAdapters:[Lcom/zui/gallery/filtershow/editors/EditorGrad$ParamAdapter;

    new-instance v0, Lcom/zui/gallery/filtershow/editors/EditorGrad$ParamAdapter;

    const v4, 0x7f0801c4

    const v5, 0x7f0801c5

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/zui/gallery/filtershow/editors/EditorGrad$ParamAdapter;-><init>(Lcom/zui/gallery/filtershow/editors/EditorGrad;IILandroid/widget/LinearLayout;I)V

    aput-object v0, p2, v1

    .line 161
    iget-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad;->mAdapters:[Lcom/zui/gallery/filtershow/editors/EditorGrad$ParamAdapter;

    const/4 v0, 0x2

    new-instance v1, Lcom/zui/gallery/filtershow/editors/EditorGrad$ParamAdapter;

    const v4, 0x7f0801ca

    const v5, 0x7f0801cb

    const/4 v7, 0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/zui/gallery/filtershow/editors/EditorGrad$ParamAdapter;-><init>(Lcom/zui/gallery/filtershow/editors/EditorGrad;IILandroid/widget/LinearLayout;I)V

    aput-object v1, p2, v0

    const p2, 0x7f0801c3

    .line 163
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/zui/gallery/filtershow/editors/EditorGrad$2;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/editors/EditorGrad$2;-><init>(Lcom/zui/gallery/filtershow/editors/EditorGrad;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0801c8

    .line 169
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/zui/gallery/filtershow/editors/EditorGrad$3;

    invoke-direct {p2, p0}, Lcom/zui/gallery/filtershow/editors/EditorGrad$3;-><init>(Lcom/zui/gallery/filtershow/editors/EditorGrad;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    invoke-virtual {p0, v8}, Lcom/zui/gallery/filtershow/editors/EditorGrad;->setMenuIcon(Z)V

    return-void
.end method

.method public setValue(I)V
    .locals 2

    .line 364
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/editors/EditorGrad;->getGradRepresentation()Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 368
    :cond_0
    iget v1, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad;->mSliderMode:I

    invoke-virtual {v0, v1, p1}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->setParameter(II)V

    return-void
.end method

.method public updateParameters()V
    .locals 4

    .line 179
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/editors/EditorGrad;->getGradRepresentation()Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    move-result-object v0

    const/4 v1, 0x0

    .line 180
    :goto_0
    iget-object v2, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad;->mAdapters:[Lcom/zui/gallery/filtershow/editors/EditorGrad$ParamAdapter;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 181
    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Lcom/zui/gallery/filtershow/editors/EditorGrad$ParamAdapter;->updateValues(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateSeekBar(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;)V
    .locals 0

    .line 92
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->useCompact(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 93
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad;->mControl:Lcom/zui/gallery/filtershow/controller/Control;

    invoke-interface {p1}, Lcom/zui/gallery/filtershow/controller/Control;->updateUI()V

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorGrad;->updateParameters()V

    :goto_0
    return-void
.end method
